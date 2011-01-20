/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include <Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include <Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include <Handle_TFunction_Driver.hxx>
#include <Handle_TFunction_DriverTable.hxx>
#include <Handle_TFunction_Function.hxx>
#include <Handle_TFunction_GraphNode.hxx>
#include <Handle_TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include <Handle_TFunction_Scope.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Atomic.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_IStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_Macro.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_SStream.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Transient_proto.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_ctype.hxx>
#include <Standard_math.hxx>
#include <TFunction_Array1OfDataMapOfGUIDDriver.hxx>
#include <TFunction_DataMapIteratorOfDataMapOfGUIDDriver.hxx>
#include <TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel.hxx>
#include <TFunction_DataMapNodeOfDataMapOfGUIDDriver.hxx>
#include <TFunction_DataMapNodeOfDataMapOfLabelListOfLabel.hxx>
#include <TFunction_DataMapOfGUIDDriver.hxx>
#include <TFunction_DataMapOfLabelListOfLabel.hxx>
#include <TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel.hxx>
#include <TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel.hxx>
#include <TFunction_DoubleMapOfIntegerLabel.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_DriverTable.hxx>
#include <TFunction_ExecutionStatus.hxx>
#include <TFunction_Function.hxx>
#include <TFunction_GraphNode.hxx>
#include <TFunction_HArray1OfDataMapOfGUIDDriver.hxx>
#include <TFunction_IFunction.hxx>
#include <TFunction_Iterator.hxx>
#include <TFunction_Logbook.hxx>
#include <TFunction_Scope.hxx>
#include <TopAbs_Orientation.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_State.hxx>
#include <GEOMAlgo_Algo.hxx>
#include <GEOMAlgo_Builder.hxx>
#include <GEOMAlgo_BuilderArea.hxx>
#include <GEOMAlgo_BuilderFace.hxx>
#include <GEOMAlgo_BuilderShape.hxx>
#include <GEOMAlgo_BuilderSolid.hxx>
#include <GEOMAlgo_BuilderTools.hxx>
#include <GEOMAlgo_Clsf.hxx>
#include <GEOMAlgo_ClsfBox.hxx>
#include <GEOMAlgo_ClsfSolid.hxx>
#include <GEOMAlgo_ClsfSurf.hxx>
#include <GEOMAlgo_CoupleOfShapes.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx>
#include <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#include <GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#include <GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#include <GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#include <GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx>
#include <GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include <GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>
#include <GEOMAlgo_DataMapOfRealListOfShape.hxx>
#include <GEOMAlgo_DataMapOfShapeReal.hxx>
#include <GEOMAlgo_DataMapOfShapeShapeSet.hxx>
#include <GEOMAlgo_FinderShapeOn.hxx>
#include <GEOMAlgo_FinderShapeOn1.hxx>
#include <GEOMAlgo_FinderShapeOn2.hxx>
#include <GEOMAlgo_FinderShapeOnQuad.hxx>
#include <GEOMAlgo_GlueAnalyser.hxx>
#include <GEOMAlgo_Gluer.hxx>
#include <GEOMAlgo_Gluer1.hxx>
#include <GEOMAlgo_HAlgo.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx>
#include <GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx>
#include <GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyListOfShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#include <GEOMAlgo_IndexedDataMapOfShapeShapeInfo.hxx>
#include <GEOMAlgo_IndexedDataMapOfShapeState.hxx>
#include <GEOMAlgo_KindOfBounds.hxx>
#include <GEOMAlgo_KindOfClosed.hxx>
#include <GEOMAlgo_KindOfName.hxx>
#include <GEOMAlgo_KindOfShape.hxx>
#include <GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#include <GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#include <GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#include <GEOMAlgo_ListNodeOfListOfPnt.hxx>
#include <GEOMAlgo_ListOfCoupleOfShapes.hxx>
#include <GEOMAlgo_ListOfPnt.hxx>
#include <GEOMAlgo_PWireEdgeSet.hxx>
#include <GEOMAlgo_PassKey.hxx>
#include <GEOMAlgo_PassKeyMapHasher.hxx>
#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_PassKeyShapeMapHasher.hxx>
#include <GEOMAlgo_ShapeAlgo.hxx>
#include <GEOMAlgo_ShapeInfo.hxx>
#include <GEOMAlgo_ShapeInfoFiller.hxx>
#include <GEOMAlgo_ShapeSet.hxx>
#include <GEOMAlgo_ShapeSolid.hxx>
#include <GEOMAlgo_ShellSolid.hxx>
#include <GEOMAlgo_SolidSolid.hxx>
#include <GEOMAlgo_Splitter.hxx>
#include <GEOMAlgo_State.hxx>
#include <GEOMAlgo_StateCollector.hxx>
#include <GEOMAlgo_SurfaceTools.hxx>
#include <GEOMAlgo_Tools.hxx>
#include <GEOMAlgo_Tools3D.hxx>
#include <GEOMAlgo_VertexSolid.hxx>
#include <GEOMAlgo_WESCorrector.hxx>
#include <GEOMAlgo_WireEdgeSet.hxx>
#include <GEOMAlgo_WireSolid.hxx>
#include <GEOMAlgo_WireSplitter.hxx>
#include <Handle_GEOMAlgo_Clsf.hxx>
#include <Handle_GEOMAlgo_ClsfBox.hxx>
#include <Handle_GEOMAlgo_ClsfSolid.hxx>
#include <Handle_GEOMAlgo_ClsfSurf.hxx>
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx>
#include <Handle_GEOMAlgo_HAlgo.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx>
#include <Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx>
#include <Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#include <Handle_GEOMAlgo_ListNodeOfListOfPnt.hxx>
#include <Handle_SGEOM_Application.hxx>
#include <Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#include <SGEOM_Application.hxx>
#include <SGEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx>
#include <SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#include <SGEOM_DataMapOfAsciiStringTransient.hxx>
#include <SGEOM_Engine.hxx>
#include <SGEOM_Function.hxx>
#include <SGEOM_IOperations.hxx>
#include <SGEOM_ISubShape.hxx>
#include <SGEOM_Object.hxx>
#include <SGEOM_Parameter.hxx>
#include <SGEOM_PythonDump.hxx>
#include <SGEOM_Solver.hxx>
#include <SGEOM_SubShapeDriver.hxx>
%};

%import TFunction.i
%import Standard.i
%import SGEOM.i
%import GEOMAlgo.i
%import TopAbs.i
