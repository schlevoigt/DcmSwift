
//
//  Dcm.swift
//  DcmSwift
//
//  Created by Rafael Warnault, OPALE on 21/03/2019.
//  Copyright © 2019 OPALE. All rights reserved.
//

import Foundation


/**
 * This struct declares a few constants related to the DICOM protocol
 */
public struct DicomConstants {
    /**
     The standard bytes offset used at start of DICOM files (not all).
     The `DICM` magic word used to identify the file type starts at offset 132.
     */
    public static let dicomBytesOffset              = 132
    
    /**
     Network related constants
     */
    public static let dicomDefaultPort:Int          = 11112
    public static let dicomTimeOut:Int              = 480
    public static let maxPDULength:Int              = 16384
    
    
    /**
     The DICOM magic word.
     */
    public static let dicomMagicWord                = "DICM"
    public static let dicomPreamble                 = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004449434D"
    
    /**
     Meta-data group identifier
     */
    public static let metaInformationGroup          = "0002"
    
    /**
     Group Length identifier (0000)
     */
    public static let lengthGroup                   = "0000"
    
    
    
    /**
     Standard DICOM Application Context Name.
     */
    public static let applicationContextName        = "1.2.840.10008.3.1.1.1"
    public static var implementationUID             = "1.2.276.0.808080.8080.1.2.3"
    public static var implementationVersion         = "DCMSWIFT 1.0"
    
    /**
     Verification SOP Class
     */
    public static let verificationSOP               = "1.2.840.10008.1.1"    
    
    
    
    /**
     C-FIND/GET/MOVE Root Level
     */
    public static let PatientRootQueryRetrieveInformationModelFIND  = "1.2.840.10008.5.1.4.1.2.1.1"
    public static let PatientRootQueryRetrieveInformationModelMOVE  = "1.2.840.10008.5.1.4.1.2.1.2"
    public static let PatientRootQueryRetrieveInformationModelGET   = "1.2.840.10008.5.1.4.1.2.1.3"
    // Abstract Syntax: [UID: 1.2.840.10008.5.1.4.31] [Name: Modality Worklist Information Model - FIND] RoleNegotiation not supported
    //public static let StudyRootQueryRetrieveInformationModelFIND    = "1.2.840.10008.5.1.4.31"
    public static let StudyRootQueryRetrieveInformationModelFIND    = "1.2.840.10008.5.1.4.1.2.2.1"
    public static let StudyRootQueryRetrieveInformationModelMOVE    = "1.2.840.10008.5.1.4.1.2.2.2"
    public static let StudyRootQueryRetrieveInformationModelGET     = "1.2.840.10008.5.1.4.1.2.2.3"
    
    /**
     Storage SOP Classes
     */
    public static let ComputedRadiographyImageStorage = "1.2.840.10008.5.1.4.1.1.1"
    public static let DigitalXRayImageStorageForPresentation = "1.2.840.10008.5.1.4.1.1.1.1"
    public static let DigitalXRayImageStorageForProcessing = "1.2.840.10008.5.1.4.1.1.1.1.1"
    public static let DigitalMammographyXRayImageStorageForPresentation = "1.2.840.10008.5.1.4.1.1.1.2"
    public static let DigitalMammographyXRayImageStorageForProcessing = "1.2.840.10008.5.1.4.1.1.1.2.1"
    public static let DigitalIntraOralXRayImageStorageForPresentation = "1.2.840.10008.5.1.4.1.1.1.3"
    public static let DigitalIntraOralXRayImageStorageForProcessing = "1.2.840.10008.5.1.4.1.1.1.3.1"
    public static let CTImageStorage = "1.2.840.10008.5.1.4.1.1.2"
    public static let EnhancedCTImageStorage = "1.2.840.10008.5.1.4.1.1.2.1"
    public static let LegacyConvertedEnhancedCTImageStorage = "1.2.840.10008.5.1.4.1.1.2.2"
    public static let UltrasoundMultiframeImageStorage = "1.2.840.10008.5.1.4.1.1.3.1"
    public static let MRImageStorage = "1.2.840.10008.5.1.4.1.1.4"
    public static let EnhancedMRImageStorage = "1.2.840.10008.5.1.4.1.1.4.1"
    public static let MRSpectroscopyStorage = "1.2.840.10008.5.1.4.1.1.4.2"
    public static let EnhancedMRColorImageStorage = "1.2.840.10008.5.1.4.1.1.4.3"
    public static let LegacyConvertedEnhancedMRImageStorage = "1.2.840.10008.5.1.4.1.1.4.4"
    public static let UltrasoundImageStorage = "1.2.840.10008.5.1.4.1.1.6.1"
    public static let EnhancedUSVolumeStorage = "1.2.840.10008.5.1.4.1.1.6.2"
    public static let SecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7"
    public static let MultiframeSingleBitSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.1"
    public static let MultiframeGrayscaleByteSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.2"
    public static let MultiframeGrayscaleWordSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.3"
    public static let MultiframeTrueColorSecondaryCaptureImageStorage = "1.2.840.10008.5.1.4.1.1.7.4"
    public static let TwelveleadECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.1"
    public static let GeneralECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.2"
    public static let AmbulatoryECGWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.1.3"
    public static let HemodynamicWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.2.1"
    public static let CardiacElectrophysiologyWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.3.1"
    public static let BasicVoiceAudioWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.4.1"
    public static let GeneralAudioWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.4.2"
    public static let ArterialPulseWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.5.1"
    public static let RespiratoryWaveformStorage = "1.2.840.10008.5.1.4.1.1.9.6.1"
    public static let GrayscaleSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.1"
    public static let ColorSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.2"
    public static let PseudoColorSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.3"
    public static let BlendingSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.4"
    public static let XAXRFGrayscaleSoftcopyPresentationStateStorage = "1.2.840.10008.5.1.4.1.1.11.5"
    public static let XRayAngiographicImageStorage = "1.2.840.10008.5.1.4.1.1.12.1"
    public static let EnhancedXAImageStorage = "1.2.840.10008.5.1.4.1.1.12.1.1"
    public static let XRayRadiofluoroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.12.2"
    public static let EnhancedXRFImageStorage = "1.2.840.10008.5.1.4.1.1.12.2.1"
    public static let XRay3DAngiographicImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.1"
    public static let XRay3DCraniofacialImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.2"
    public static let BreastTomosynthesisImageStorage = "1.2.840.10008.5.1.4.1.1.13.1.3"
    public static let IntravascularOpticalCoherenceTomographyImageStorageForPresentation = "1.2.840.10008.5.1.4.1.1.14.1"
    public static let IntravascularOpticalCoherenceTomographyImageStorageForProcessing = "1.2.840.10008.5.1.4.1.1.14.2"
    public static let NuclearMedicineImageStorage = "1.2.840.10008.5.1.4.1.1.20"
    public static let RawDataStorage = "1.2.840.10008.5.1.4.1.1.66"
    public static let SpatialRegistrationStorage = "1.2.840.10008.5.1.4.1.1.66.1"
    public static let SpatialFiducialsStorage = "1.2.840.10008.5.1.4.1.1.66.2"
    public static let DeformableSpatialRegistrationStorage = "1.2.840.10008.5.1.4.1.1.66.3"
    public static let SegmentationStorage = "1.2.840.10008.5.1.4.1.1.66.4"
    public static let SurfaceSegmentationStorage = "1.2.840.10008.5.1.4.1.1.66.5"
    public static let RealWorldValueMappingStorage = "1.2.840.10008.5.1.4.1.1.67"
    public static let SurfaceScanMeshStorage = "1.2.840.10008.5.1.4.1.1.68.1"
    public static let SurfaceScanPointCloudStorage = "1.2.840.10008.5.1.4.1.1.68.2"
    public static let VLEndoscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.1"
    public static let VideoEndoscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.1.1"
    public static let VLMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.2"
    public static let VideoMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.2.1"
    public static let VLSlideCoordinatesMicroscopicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.3"
    public static let VLPhotographicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.4"
    public static let VideoPhotographicImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.4.1"
    public static let OphthalmicPhotography8BitImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.1"
    public static let OphthalmicPhotography16BitImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.2"
    public static let StereometricRelationshipStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.3"
    public static let OphthalmicTomographyImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.5.4"
    public static let VLWholeSlideMicroscopyImageStorage = "1.2.840.10008.5.1.4.1.1.77.1.6"
    public static let LensometryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.1"
    public static let AutorefractionMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.2"
    public static let KeratometryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.3"
    public static let SubjectiveRefractionMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.4"
    public static let VisualAcuityStorageMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.5"
    public static let SpectaclePrescriptionReportStorage = "1.2.840.10008.5.1.4.1.1.78.6"
    public static let OphthalmicAxialMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.78.7"
    public static let IntraocularLensCalculationsStorage = "1.2.840.10008.5.1.4.1.1.78.8"
    public static let MacularGridThicknessandVolumeReport = "1.2.840.10008.5.1.4.1.1.79.1"
    public static let OphthalmicVisualFieldStaticPerimetryMeasurementsStorage = "1.2.840.10008.5.1.4.1.1.80.1"
    public static let OphthalmicThicknessMapStorage = "1.2.840.10008.5.1.4.1.1.81.1"
    public static let CornealTopographyMapStorage = "1.2.840.10008.5.1.4.1.1.82.1"
    public static let BasicTextSR = "1.2.840.10008.5.1.4.1.1.88.11"
    public static let EnhancedSR = "1.2.840.10008.5.1.4.1.1.88.22"
    public static let ComprehensiveSR = "1.2.840.10008.5.1.4.1.1.88.33"
    public static let Comprehensive3DSR = "1.2.840.10008.5.1.4.1.1.88.34"
    public static let ProcedureLog = "1.2.840.10008.5.1.4.1.1.88.40"
    public static let MammographyCADSR = "1.2.840.10008.5.1.4.1.1.88.50"
    public static let KeyObjectSelectionDocument = "1.2.840.10008.5.1.4.1.1.88.59"
    public static let ChestCADSR = "1.2.840.10008.5.1.4.1.1.88.65"
    public static let XRayRadiationDoseSR = "1.2.840.10008.5.1.4.1.1.88.67"
    public static let ColonCADSR = "1.2.840.10008.5.1.4.1.1.88.69"
    public static let ImplantationPlanSRDocumentStorage = "1.2.840.10008.5.1.4.1.1.88.70"
    public static let EncapsulatedPDFStorage = "1.2.840.10008.5.1.4.1.1.104.1"
    public static let EncapsulatedCDAStorage = "1.2.840.10008.5.1.4.1.1.104.2"
    public static let PositronEmissionTomographyImageStorage = "1.2.840.10008.5.1.4.1.1.128"
    public static let EnhancedPETImageStorage = "1.2.840.10008.5.1.4.1.1.130"
    public static let LegacyConvertedEnhancedPETImageStorage = "1.2.840.10008.5.1.4.1.1.128.1"
    public static let BasicStructuredDisplayStorage = "1.2.840.10008.5.1.4.1.1.131"
    public static let RTImageStorage = "1.2.840.10008.5.1.4.1.1.481.1"
    public static let RTDoseStorage = "1.2.840.10008.5.1.4.1.1.481.2"
    public static let RTStructureSetStorage = "1.2.840.10008.5.1.4.1.1.481.3"
    public static let RTBeamsTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.4"
    public static let RTPlanStorage = "1.2.840.10008.5.1.4.1.1.481.5"
    public static let RTBrachyTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.6"
    public static let RTTreatmentSummaryRecordStorage = "1.2.840.10008.5.1.4.1.1.481.7"
    public static let RTIonPlanStorage = "1.2.840.10008.5.1.4.1.1.481.8"
    public static let RTIonBeamsTreatmentRecordStorage = "1.2.840.10008.5.1.4.1.1.481.9"
    public static let RTBeamsDeliveryInstructionStorage = "1.2.840.10008.5.1.4.34.7"
    public static let HangingProtocolStorage = "1.2.840.10008.5.1.4.38.1"
    public static let ColorPaletteStorage = "1.2.840.10008.5.1.4.39.1"
    public static let GenericImplantTemplateStorage = "1.2.840.10008.5.1.4.43.1"
    public static let ImplantAssemblyTemplateStorage = "1.2.840.10008.5.1.4.44.1"
    public static let ImplantTemplateGroupStorage = "1.2.840.10008.5.1.4.45.1"
    

    
    /**
     List of supported Abstract Syntaxes for Storage SOP Classes
     */
    public static let storageSOPClasses:[String] = [
        DicomConstants.ComputedRadiographyImageStorage,
        DicomConstants.DigitalXRayImageStorageForPresentation,
        DicomConstants.DigitalXRayImageStorageForProcessing,
        DicomConstants.DigitalMammographyXRayImageStorageForPresentation,
        DicomConstants.DigitalMammographyXRayImageStorageForProcessing,
        DicomConstants.DigitalIntraOralXRayImageStorageForPresentation,
        DicomConstants.DigitalIntraOralXRayImageStorageForProcessing,
        DicomConstants.CTImageStorage,
        DicomConstants.EnhancedCTImageStorage,
        DicomConstants.LegacyConvertedEnhancedCTImageStorage,
        DicomConstants.UltrasoundMultiframeImageStorage,
        DicomConstants.MRImageStorage,
        DicomConstants.EnhancedMRImageStorage,
        DicomConstants.MRSpectroscopyStorage,
        DicomConstants.EnhancedMRColorImageStorage,
        DicomConstants.LegacyConvertedEnhancedMRImageStorage,
        DicomConstants.UltrasoundImageStorage,
        DicomConstants.EnhancedUSVolumeStorage,
        DicomConstants.SecondaryCaptureImageStorage,
        DicomConstants.MultiframeSingleBitSecondaryCaptureImageStorage,
        DicomConstants.MultiframeGrayscaleByteSecondaryCaptureImageStorage,
        DicomConstants.MultiframeGrayscaleWordSecondaryCaptureImageStorage,
        DicomConstants.MultiframeTrueColorSecondaryCaptureImageStorage,
        DicomConstants.TwelveleadECGWaveformStorage,
        DicomConstants.GeneralECGWaveformStorage,
        DicomConstants.AmbulatoryECGWaveformStorage,
        DicomConstants.HemodynamicWaveformStorage,
        DicomConstants.CardiacElectrophysiologyWaveformStorage,
        DicomConstants.BasicVoiceAudioWaveformStorage,
        DicomConstants.GeneralAudioWaveformStorage,
        DicomConstants.ArterialPulseWaveformStorage,
        DicomConstants.RespiratoryWaveformStorage,
        DicomConstants.GrayscaleSoftcopyPresentationStateStorage,
        DicomConstants.ColorSoftcopyPresentationStateStorage,
        DicomConstants.PseudoColorSoftcopyPresentationStateStorage,
        DicomConstants.BlendingSoftcopyPresentationStateStorage,
        DicomConstants.XAXRFGrayscaleSoftcopyPresentationStateStorage,
        DicomConstants.XRayAngiographicImageStorage,
        DicomConstants.EnhancedXAImageStorage,
        DicomConstants.XRayRadiofluoroscopicImageStorage,
        DicomConstants.EnhancedXRFImageStorage,
        DicomConstants.XRay3DAngiographicImageStorage,
        DicomConstants.XRay3DCraniofacialImageStorage,
        DicomConstants.BreastTomosynthesisImageStorage,
        DicomConstants.IntravascularOpticalCoherenceTomographyImageStorageForPresentation,
        DicomConstants.IntravascularOpticalCoherenceTomographyImageStorageForProcessing,
        DicomConstants.NuclearMedicineImageStorage,
        DicomConstants.RawDataStorage,
        DicomConstants.SpatialRegistrationStorage,
        DicomConstants.SpatialFiducialsStorage,
        DicomConstants.DeformableSpatialRegistrationStorage,
        DicomConstants.SegmentationStorage,
        DicomConstants.SurfaceSegmentationStorage,
        DicomConstants.RealWorldValueMappingStorage,
        DicomConstants.SurfaceScanMeshStorage,
        DicomConstants.SurfaceScanPointCloudStorage,
        DicomConstants.VLEndoscopicImageStorage,
        DicomConstants.VideoEndoscopicImageStorage,
        DicomConstants.VLMicroscopicImageStorage,
        DicomConstants.VideoMicroscopicImageStorage,
        DicomConstants.VLSlideCoordinatesMicroscopicImageStorage,
        DicomConstants.VLPhotographicImageStorage,
        DicomConstants.VideoPhotographicImageStorage,
        DicomConstants.OphthalmicPhotography8BitImageStorage,
        DicomConstants.OphthalmicPhotography16BitImageStorage,
        DicomConstants.StereometricRelationshipStorage,
        DicomConstants.OphthalmicTomographyImageStorage,
        DicomConstants.VLWholeSlideMicroscopyImageStorage,
        DicomConstants.LensometryMeasurementsStorage,
        DicomConstants.AutorefractionMeasurementsStorage,
        DicomConstants.KeratometryMeasurementsStorage,
        DicomConstants.SubjectiveRefractionMeasurementsStorage,
        DicomConstants.VisualAcuityStorageMeasurementsStorage,
        DicomConstants.SpectaclePrescriptionReportStorage,
        DicomConstants.OphthalmicAxialMeasurementsStorage,
        DicomConstants.IntraocularLensCalculationsStorage,
        DicomConstants.MacularGridThicknessandVolumeReport,
        DicomConstants.OphthalmicVisualFieldStaticPerimetryMeasurementsStorage,
        DicomConstants.OphthalmicThicknessMapStorage,
        DicomConstants.CornealTopographyMapStorage,
        DicomConstants.BasicTextSR,
        DicomConstants.EnhancedSR,
        DicomConstants.ComprehensiveSR,
        DicomConstants.Comprehensive3DSR,
        DicomConstants.ProcedureLog,
        DicomConstants.MammographyCADSR,
        DicomConstants.KeyObjectSelectionDocument,
        DicomConstants.ChestCADSR,
        DicomConstants.XRayRadiationDoseSR,
        DicomConstants.ColonCADSR,
        DicomConstants.ImplantationPlanSRDocumentStorage,
        DicomConstants.EncapsulatedPDFStorage,
        DicomConstants.EncapsulatedCDAStorage,
        DicomConstants.PositronEmissionTomographyImageStorage,
        DicomConstants.EnhancedPETImageStorage,
        DicomConstants.LegacyConvertedEnhancedPETImageStorage,
        DicomConstants.BasicStructuredDisplayStorage,
        DicomConstants.RTImageStorage,
        DicomConstants.RTDoseStorage,
        DicomConstants.RTStructureSetStorage,
        DicomConstants.RTBeamsTreatmentRecordStorage,
        DicomConstants.RTPlanStorage,
        DicomConstants.RTBrachyTreatmentRecordStorage,
        DicomConstants.RTTreatmentSummaryRecordStorage,
        DicomConstants.RTIonPlanStorage,
        DicomConstants.RTIonBeamsTreatmentRecordStorage,
        DicomConstants.RTBeamsDeliveryInstructionStorage,
        DicomConstants.HangingProtocolStorage,
        DicomConstants.ColorPaletteStorage,
        DicomConstants.GenericImplantTemplateStorage,
        DicomConstants.ImplantAssemblyTemplateStorage,
        DicomConstants.ImplantTemplateGroupStorage
    ]
}


