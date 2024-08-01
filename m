Return-Path: <devicetree+bounces-90088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8EF9440B4
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 04:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37656B30205
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 02:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E581C3F37;
	Thu,  1 Aug 2024 01:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lhXdfXNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195371A4884;
	Thu,  1 Aug 2024 01:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722475132; cv=none; b=nZ8/Eh/5MuY1tcjZRD1NQpeAE/ZPnTsAhd0PFyYYVNGkeRQRM82eWXGgWlxmDgDTClT4P9yz3SGQmQE4ZBfiLmpbAw2aa/f3SCw3AMKjoM63gtqBhsrHETxHaFBbgFXCgTwgVEdAXQNWW4eNNGsFZCOKdhzcf6fQyn+DRhj2h6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722475132; c=relaxed/simple;
	bh=/Qw0rqadBSCxPtesngE5c+maomW/YprHyFOhU8BWfkc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jJXRRLA74nPSkpTTY0a9JSZPO3D/LPR8pQ46AKYNyIgsJ4qTzlQr47edp4NritKWgyDmomesNKzXM7SbifBknQv6hAdnEwxH3A2ib+Xzp9Xa4GW3zCtVWJcDT1RWjcCHY/+j0wes+ndyKAoMIogLO1zqoNpKYIoPGMaqV2pUDzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=lhXdfXNZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4710RWma029481;
	Thu, 1 Aug 2024 01:17:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	qcppdkim1; bh=ELFb9OwMbkb9M3u0p/EjdlDWtCcI/xGrrpBl8Hv4/5I=; b=lh
	XdfXNZUoDFnxusCfCRw7xOSk45FMk/fClZb97Asqhoh5f/BBpNPEQXjYwOB/DsCj
	rm4n/Jd5sua8lckebZvTP5FeAXCWRVBe70ZNHZRN+qEJ/EUs5My7/qd6U8vH3+jA
	hDrMrGn8SxEArVPLK+Unb0x+7LU2lGQMXk8LZKkTawg70oiz2cIzN88bdPNv0Txm
	MVSQHgbMU4CICR9pu2zbB9nkGHvq8z2e7G6jffhWdMX5N/LZzkdDjHXhkOxHFckC
	VnQRhiA7rT/S4wAk7T4v7rimo5h+MBAZ2WMpQHOjK1u3NdIkN5Wayu8TTcrfYBW6
	hNh2x3yf5fBgaMRC+Evg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40pw446eg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Aug 2024 01:17:42 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 4711HfG0026859
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 1 Aug 2024 01:17:41 GMT
Received: from hu-wcheng-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 31 Jul 2024 18:17:41 -0700
From: Wesley Cheng <quic_wcheng@quicinc.com>
To: <srinivas.kandagatla@linaro.org>, <mathias.nyman@intel.com>,
        <perex@perex.cz>, <conor+dt@kernel.org>, <corbet@lwn.net>,
        <broonie@kernel.org>, <lgirdwood@gmail.com>, <krzk+dt@kernel.org>,
        <Thinh.Nguyen@synopsys.com>, <bgoswami@quicinc.com>, <tiwai@suse.com>,
        <gregkh@linuxfoundation.org>, <robh@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-sound@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Subject: [PATCH v24 00/34] Introduce QC USB SND audio offloading support
Date: Wed, 31 Jul 2024 18:16:56 -0700
Message-ID: <20240801011730.4797-1-quic_wcheng@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 5519V7hREpvl_iE7dtDy3b94ZZkg6tcn
X-Proofpoint-ORIG-GUID: 5519V7hREpvl_iE7dtDy3b94ZZkg6tcn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-31_11,2024-07-31_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 priorityscore=1501 adultscore=0 mlxlogscore=999 clxscore=1015
 impostorscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408010005

Requesting to see if we can get some Acked-By tags, and merge on usb-next.

Several Qualcomm based chipsets can support USB audio offloading to a
dedicated audio DSP, which can take over issuing transfers to the USB
host controller.  The intention is to reduce the load on the main
processors in the SoC, and allow them to be placed into lower power modes.
There are several parts to this design:
  1. Adding ASoC binding layer
  2. Create a USB backend for Q6DSP
  3. Introduce XHCI interrupter support
  4. Create vendor ops for the USB SND driver

      USB                          |            ASoC
--------------------------------------------------------------------
                                   |  _________________________
                                   | |sm8250 platform card     |
                                   | |_________________________|
                                   |         |           |
                                   |      ___V____   ____V____
                                   |     |Q6USB   | |Q6AFE    |  
                                   |     |"codec" | |"cpu"    |
                                   |     |________| |_________|
                                   |         ^  ^        ^
                                   |         |  |________|
                                   |      ___V____    |
                                   |     |SOC-USB |   |
   ________       ________               |        |   |
  |USB SND |<--->|QC offld|<------------>|________|   |
  |(card.c)|     |        |<----------                |
  |________|     |________|___     | |                |
      ^               ^       |    | |    ____________V_________
      |               |       |    | |   |APR/GLINK             |
   __ V_______________V_____  |    | |   |______________________|
  |USB SND (endpoint.c)     | |    | |              ^
  |_________________________| |    | |              |
              ^               |    | |   ___________V___________
              |               |    | |->|audio DSP              |
   ___________V_____________  |    |    |_______________________|
  |XHCI HCD                 |<-    |
  |_________________________|      |


Adding ASoC binding layer
=========================
soc-usb: Intention is to treat a USB port similar to a headphone jack.
The port is always present on the device, but cable/pin status can be
enabled/disabled.  Expose mechanisms for USB backend ASoC drivers to
communicate with USB SND.

Create a USB backend for Q6DSP
==============================
q6usb: Basic backend driver that will be responsible for maintaining the
resources needed to initiate a playback stream using the Q6DSP.  Will
be the entity that checks to make sure the connected USB audio device
supports the requested PCM format.  If it does not, the PCM open call will
fail, and userpsace ALSA can take action accordingly.

Introduce XHCI interrupter support
==================================
XHCI HCD supports multiple interrupters, which allows for events to be routed
to different event rings.  This is determined by "Interrupter Target" field
specified in Section "6.4.1.1 Normal TRB" of the XHCI specification.

Events in the offloading case will be routed to an event ring that is assigned
to the audio DSP.

Create vendor ops for the USB SND driver
========================================
qc_audio_offload: This particular driver has several components associated
with it:
- QMI stream request handler
- XHCI interrupter and resource management
- audio DSP memory management

When the audio DSP wants to enable a playback stream, the request is first
received by the ASoC platform sound card.  Depending on the selected route,
ASoC will bring up the individual DAIs in the path.  The Q6USB backend DAI
will send an AFE port start command (with enabling the USB playback path), and
the audio DSP will handle the request accordingly.

Part of the AFE USB port start handling will have an exchange of control
messages using the QMI protocol.  The qc_audio_offload driver will populate the
buffer information:
- Event ring base address
- EP transfer ring base address

and pass it along to the audio DSP.  All endpoint management will now be handed
over to the DSP, and the main processor is not involved in transfers.

Overall, implementing this feature will still expose separate sound card and PCM
devices for both the platorm card and USB audio device:
 0 [SM8250MTPWCD938]: sm8250 - SM8250-MTP-WCD9380-WSA8810-VA-D
                      SM8250-MTP-WCD9380-WSA8810-VA-DMIC
 1 [Audio          ]: USB-Audio - USB Audio
                      Generic USB Audio at usb-xhci-hcd.1.auto-1.4, high speed

This is to ensure that userspace ALSA entities can decide which route to take
when executing the audio playback.  In the above, if card#1 is selected, then
USB audio data will take the legacy path over the USB PCM drivers, etc...

The current limitation is that the latest USB audio device that is identified
will be automatically selected by the Q6USB BE DAI for offloading.  Future
patches can be added to possibly add for more flexibility, but until the userpace
applications can be better defined, having these mechanisms will complicate the
overall implementation.

USB offload Kcontrols
=====================
Part of the vendor offload package will have a mixer driver associated with it
(mixer_usb_offload.c).  This entity will be responsible for coordinating with
SOC USB and the Q6USB backend DAI to fetch information about the sound card
and PCM device indices associated with the offload path.  The logic is done
based on the current implementation of how paths are controlled within the QC
ASoC implementation.

QC ASoC Q6Routing
-----------------
Within the Q6 ASOC design, the registered ASoC platform card will expose a set
of kcontrols for enabling the BE DAI links to the FE DAI link.  For example:

tinymix -D 0 contents
Number of controls: 1033
ctl     type    num     name                                    value
...
1025    BOOL    1       USB Mixer MultiMedia1                   Off
1026    BOOL    1       USB Mixer MultiMedia2                   Off
1027    BOOL    1       USB Mixer MultiMedia3                   Off
1028    BOOL    1       USB Mixer MultiMedia4                   Off
1029    BOOL    1       USB Mixer MultiMedia5                   Off
1030    BOOL    1       USB Mixer MultiMedia6                   Off
1031    BOOL    1       USB Mixer MultiMedia7                   Off
1032    BOOL    1       USB Mixer MultiMedia8                   Off

Each of these kcontrols will enable the USB BE DAI link (q6usb) to be connected
to a FE DAI link (q6asm).  Since each of these controls are DAPM widgets, when
it is enabled, the DAPM widget's "connect" flag is updated accordingly.

USB Offload Mapping
-------------------
Based on the Q6routing, the USB BE DAI link can determine which sound card and
PCM device is enabled for offloading.  Fetching the ASoC platform sound card's
information is fairly straightforward, and the bulk of the work goes to finding
the corresponding PCM device index.  As mentioned above, the USB BE DAI can
traverse the DAPM widgets to find the DAPM path that is related to the control
for the "USB Mixer."  Based on which "USB Mixer" is enabled, it can find the
corresponding DAPM widget associated w/ the FE DAI link (Multimedia*).  From there
it can find the PCM device created for the Multimedia* stream.

Only one BE DAI link can be enabled per FE DAI.  For example, if the HDMI path is
enabled for Multimedia1, the USB Mixer will be disabled and switched over.

Examples of kcontrol
--------------------
tinymix -D 0 contents
Number of controls: 1033
ctl     type    num     name 
...
1025    BOOL    1       USB Mixer MultiMedia1                   Off
1026    BOOL    1       USB Mixer MultiMedia2                   On
1027    BOOL    1       USB Mixer MultiMedia3                   Off
1028    BOOL    1       USB Mixer MultiMedia4                   Off
1029    BOOL    1       USB Mixer MultiMedia5                   Off
1030    BOOL    1       USB Mixer MultiMedia6                   Off
1031    BOOL    1       USB Mixer MultiMedia7                   Off
1032    BOOL    1       USB Mixer MultiMedia8                   Off

tinymix -D 2 contents
Number of controls: 7
ctl     type    num     name                                    value
0       INT     2       Playback Channel Map                    0, 0 (range 0->36)
1       BOOL    2       MDR-1ADAC  Playback Switch              On, On
2       BOOL    1       MDR-1ADAC  Playback Switch              On
3       INT     2       MDR-1ADAC  Playback Volume              127, 127 (range 0->127)
4       INT     1       MDR-1ADAC  Playback Volume              127 (range 0->127)
5       BOOL    1       Sony Internal Clock Validity            On
6       INT     2       USB Offload Playback Route PCM#0        0, 1 (range -1->255)

The example highlights that the userspace/application can utilize the offload path
for the USB device on card#0 PCM device#1.

When dealing with multiple USB audio devices, only the latest USB device identified
is going to be selected for offload capable.

tinymix -D 1 contents
Number of controls: 9
ctl     type    num     name                                    value
0       INT     2       Capture Channel Map                     0, 0 (range 0->36)
1       INT     2       Playback Channel Map                    0, 0 (range 0->36)
2       BOOL    1       Headset Capture Switch                  On
3       INT     1       Headset Capture Volume                  1 (range 0->4)
4       BOOL    1       Sidetone Playback Switch                On
5       INT     1       Sidetone Playback Volume                4096 (range 0->8192)
6       BOOL    1       Headset Playback Switch                 On
7       INT     2       Headset Playback Volume                 20, 20 (range 0->24)
8       INT     2       USB Offload Playback Route PCM#0        -1, -1 (range -1->255)

"-1, -1" shows that this device has no route to the offload path.

This feature was validated using:
- tinymix: set/enable the multimedia path to route to USB backend
- tinyplay: issue playback on platform card

Changelog
--------------------------------------------
Changes in v24:
- Simplified the kcontrols involved in determining how to utilize the offload
path.
    - There is one kcontrol registered to each USB audio device that will
      output which card/pcm device it is mapped to for the offload route.
    - Removed kcontrols to track offload status and device selection.
    - Default to last USB audio device plugged in as offload capable.
    - kcontrol will reside on USB SND device.
- Reworked the tracking of connected USB devices from the Q6USB BE DAI link.
Previously, it was convoluted by doing it over an array, but moved to using
a list made it much simpler.  Logic is still unchanged in that the last USB
headset plugged in will be selected for offloading.
- Updated the USB SOC RST documentation accordingly with new kcontrol updates.
- Added logic to fetch mapped ASoC card and pcm device index that the offload
path is mapped to for the USB SND kcontrol (for offload route).
- Re-ordered series to hopefully make reviews more readable by combining
patches based on the layer modified (ie QC ASoC, ASoC, USB sound, and USB XHCI).

Changes in v23:
- Added MODULE_DESCRIPTION() fields to drivers that needed it.

Changes in v22:
- Removed components tag for the ASoC platform card, as the USB SND kcontrol for
notifying userspace of offload capable card achieves similar results.
- Due to the above, had to remove the review-by tag for the RST documentation,
as changes were made to remove the components tag section.
- Took in feedback to make the SOC USB add/remove ports void.
- Fixed an issue w/ the USB SND kcontrol management for devices that have multi
UAC interfaces. (would attempt to create the kcontrol more than once)
- Modified SOC USB card and PCM index select to be based off the num_supported
streams that is specified by the USB BE DAI.
- Modified comments on selecting the latest USB headset for offloading.

Changes in v21:
- Added an offload jack disable path from the ASoC platform driver and SOC USB.
- Refactored some of the existing SOC USB context look up APIs and created some
new helpers to search for the USB context.
- Renamed snd_soc_usb_find_format to snd_soc_usb_find_supported_format
- Removed some XHCI sideband calls that would allow clients to actually enable
the IRQ line associated w/ the secondary interrupter.  This is removed because
there are other dependencies that are required for that to happen, which are not
covered as part of this series, and to avoid confusion.
- Due to the above, removed the need to export IMOD setting, and enable/disable
interrupter APIs.

Changes in v20:
- Fixed up some formatting changes pointed out in the usb.rst
- Added SB null check during XHCI sideband unregister in case caller passes
improper argument (xhci_sideband_unregister())

Changes in v19:
- Rebased to usb-next to account for some new changes in dependent drivers.

Changes in v18:
- Rebased to usb-next, which merged in part of the series.  Removed these patches.
- Reworked Kconfigs for the ASoC USB related components from QCOM Q6DSP drivers
  to keep dependencies in place for SoC USB and USB SND.
- Removed the repurposing of the stop ep sync API into existing XHCI operations.
  This will be solely used by the XHCI sideband for now.

Changes in v17:
- Fixed an issue where one patch was squashed into another.
- Re-added some kconfig checks for helpers exposed in USB SND for the soc usb
  driver, after running different kconfigs.

Changes in v16:
- Modified some code layer dependencies so that soc usb can be split as a separate
  module.
  - Split the kcontrols from ASoC QCOM common layer into a separate driver
- Reworked SOC USB kcontrols for controlling card + pcm offload routing and status
  so that there are individual controls for card and pcm devices.
- Added a kcontrol remove API in SOC USB to remove the controls on the fly.  This
  required to add some kcontrol management to SOC USB.
- Removed the disconnect work and workqueue for the QC USB offload as it is not
  required, since QMI interface driver ensures events are handled in its own WQ.

Changes in v15:
- Removed some already merged XHCI changes
- Separated SOC USB driver from being always compiled into SOC core.  Now
  configurable from kconfig.
- Fixed up ASoC kcontrol naming to fit guidelines.
- Removed some unnecessary dummy ifdefs.
- Moved usb snd offload capable kcontrol to be initialized by the platform offloading
  driver.

Changes in v14:
- Cleaned up some USB SND related feedback:
  - Renamed SNDUSB OFFLD playback available --> USB offload capable card
  - Fixed locking while checking if stream is in use
  - Replaced some mutex pairs with guard(mutex)

Changes in v13:
- Pulled in secondary/primary interrupter rework from Mathias from:
  https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git/log/drivers/usb/host?h=fix_eventhandling
  - Did some cleanup and commit message updates, and tested on current code base.
- Added mutex locking to xhci sideband to help prevent any race conditions, esp. for when accessing shared
  references.
- Addresed concerns from Hillf about gfp_flags and locking used in qc_usb_audio_offload.
- Rebased onto usb-next

Changes in v12:
- Updated copyright year to 2024.  Happy new years!
- Fixed newline format on mixer offload driver.

Changes in v11:
- Modified QMI format structures to be const

Changes in v10:
- Added new mixer for exposing kcontrol for sound card created by USB SND.  This
allows for applications to know which platform sound card has offload support.
Will return the card number.
- Broke down and cleaned up some functions/APIs within qc_audio_offload driver.
- Exported xhci_initialize_ring_info(), and modified XHCI makefile to allow for
the XHCI sideband to exist as a module.
- Reworked the jack registration and moved it to the QCOM platform card driver,
ie sm8250.
- Added an SOC USB API to fetch a standard component tag that can be appended to
the platform sound card.  Added this tag to sm8250 if any USB path exists within
the DT node.
- Moved kcontrols that existed in the Q6USB driver, and made it a bit more generic,
so that naming can be standardized across solutions.  SOC USB is now responsible
for creation of these kcontrols.
- Added a SOC USB RST document explaining some code flows and implementation details
so that other vendors can utilize the framework.
- Addressed a case where USB device connection events are lost if usb offload driver
(qc_audio_offload) is not probed when everything else has been initialized, ie 
USB SND, SOC USB and ASoC sound card.  Add a rediscover device call during module
init, to ensure that connection events will be propagated.
- Rebased to usb-next.

Changes in v9:
- Fixed the dt binding check issue with regards to num-hc-interrupters.

Changes in v8:
- Cleaned up snd_soc_usb_find_priv_data() based on Mark's feedback.  Removed some of
the duplicate looping code that was present on previous patches.  Also renamed the API.
- Integrated Mathias' suggestions on his new sideband changes:
https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git/log/?h=feature_interrupters
- Addressed some of Mathias' fixme tags, such as:
 - Resetting transfer ring dequeue/enqueue pointers
 - Issuing stop endpoint command during ep removal
 - Reset ERDP properly to first segment ring during interrupter removal. (this is currently
   just being cleared to 0, but should be pointing to a valid segment if controller is still
   running.

Changes in v7:
- Fixed dt check error for q6usb bindings
- Updated q6usb property from qcom,usb-audio-intr-num --> qcom,usb-audio-intr-idx
- Removed separate DWC3 HC interrupters num property, and place limits to XHCI one.
- Modified xhci_ring_to_sgtable() to use assigned IOVA/DMA address to fetch pages, as
it is not ensured event ring allocated is always done in the vmalloc range.

Changes in v6:
- Fixed limits and description on several DT bindings (XHCI and Q6USB)
- Fixed patch subjects to follow other ALSA/ASoC notations.

USB SND
- Addressed devices which expose multiple audio (UAC) interfaces.  These devices will
create a single USB sound card with multiple audio streams, and receive multiple
interface probe routines.  QC offload was not properly considering cases with multiple
probe calls.
- Renamed offload module name and kconfig to fit within the SND domain.
- Renamed attach/detach endpoint API to keep the hw_params notation.

Changes in v5:
- Removed some unnescessary files that were included
- Fixed some typos mentioned
- Addressed dt-binding issues and added hc-interrupters definition to usb-xhci.yaml

XHCI:
- Moved secondary skip events API to xhci-ring and updated implementation
   - Utilized existing XHCI APIs, such as inc_deq and xhci_update_erst_dequeue()

USB SND
- Renamed and reworked the APIs in "sound: usb: Export USB SND APIs for modules" patch to
include suggestions to utilize snd_usb_hw_params/free and to avoid generic naming.
- Added a resume_cb() op for completion sake.
- Addressed some locking concerns with regards to when registering for platform hooks.
- Added routine to disconnect all offloaded devices during module unbind.

ASoC
- Replaced individual PCM parameter arguments in snd_soc_usb_connect() with new
snd_soc_usb_device structure to pass along PCM info.
- Modified snd_jack set report to notify HEADPHONE event, as we do not support record path.

Changes in v4:
- Rebased to xhci/for-usb-next
- Addressed some dt-bindings comments

XHCI:
- Pulled in latest changes from Mathias' feature_interrupters branch:
https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git/log/?h=feature_interrupters

- Fixed commit text and signage for the XHCI sideband/interrupter related changes
- Added some logic to address the FIXME tags mentioned throughout the commits, such
as handling multi segment rings and building the SGT, locking concerns, and ep
cleanup operations.
- Removed some fixme tags for conditions that may not be needed/addressed.
- Repurposed the new endpoint stop sync API to be utilized in other places.
- Fixed potential compile issue if XHCI sideband config is not defined.

ASoC:
- Added sound jack control into the Q6USB driver.  Allows for userpsace to know when
an offload capable device is connected.

USB SND:
- Avoided exporting _snd_pcm_hw_param_set based on Takashi's recommendation.
- Split USB QMI packet header definitions into a separate commit.  This is used to
properly allow the QMI interface driver to parse and route QMI packets accordingly
- Added a "depends on" entry when enabling QC audio offload to avoid compile time
issues.

Changes in v3:
- Changed prefix from RFC to PATCH
- Rebased entire series to usb-next
- Updated copyright years

XHCI:
- Rebased changes on top of XHCI changes merged into usb-next, and only added
changes that were still under discussion.
- Added change to read in the "num-hc-interrupters" device property.

ASoC:
- qusb6 USB backend
  - Incorporated suggestions to fetch iommu information with existing APIs
  - Added two new sound kcontrols to fetch offload status and offload device
    selection.
    - offload status - will return the card and pcm device in use
        tinymix -D 0 get 1 --> 1, 0 (offload in progress on card#1 pcm#0)

    - device selection - set the card and pcm device to enable offload on. Ex.:
        tinymix -D 0 set 1 2 0  --> sets offload on card#2 pcm#0
                                    (this should be the USB card)

USB SND:
- Fixed up some locking related concerns for registering platform ops.
   - Moved callbacks under the register_mutex, so that 
- Modified APIs to properly pass more information about the USB SND device, so
that the Q6USB backend can build a device list/map, in order to monitor offload
status and device selection.

Changes in v2:

XHCI:
- Replaced XHCI and HCD changes with Mathias' XHCI interrupter changes
in his tree:
https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git/log/?h=feature_interrupters

Adjustments made to Mathias' changes:
  - Created xhci-intr.h to export/expose interrupter APIs versus exposing xhci.h.
    Moved dependent structures to this file as well. (so clients can parse out
    information from "struct xhci_interrupter")
  - Added some basic locking when requesting interrupters.
  - Fixed up some sanity checks.
  - Removed clearing of the ERSTBA during freeing of the interrupter. (pending
    issue where SMMU fault occurs if DMA addr returned is 64b - TODO)

- Clean up pending events in the XHCI secondary interrupter.  While testing USB
bus suspend, it was seen that on bus resume, the xHCI HC would run into a command
timeout.
- Added offloading APIs to xHCI to fetch transfer and event ring information.

ASoC:
- Modified soc-usb to allow for multiple USB port additions.  For this to work,
the USB offload driver has to have a reference to the USB backend by adding
a "usb-soc-be" DT entry to the device saved into XHCI sysdev.
- Created separate dt-bindings for defining USB_RX port.
- Increased APR timeout to accommodate the situation where the AFE port start
command could be delayed due to having to issue a USB bus resume while
handling the QMI stream start command.

Mathias Nyman (2):
  xhci: add helper to stop endpoint and wait for completion
  xhci: sideband: add initial api to register a sideband entity

Wesley Cheng (32):
  usb: host: xhci: Repurpose event handler for skipping interrupter
    events
  usb: xhci: Allow for secondary interrupter to set IMOD
  usb: host: xhci-mem: Cleanup pending secondary event ring events
  usb: host: xhci-mem: Allow for interrupter clients to choose specific
    index
  usb: host: xhci-plat: Set XHCI max interrupters if property is present
  usb: dwc3: Specify maximum number of XHCI interrupters
  ASoC: Add SOC USB APIs for adding an USB backend
  ASoC: usb: Create SOC USB SND jack kcontrol
  ASoC: usb: Fetch ASoC card and pcm device information
  ASoC: doc: Add documentation for SOC USB
  ASoC: dt-bindings: Update example for enabling USB offload on SM8250
  ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add USB_RX port
  ASoC: qcom: qdsp6: Introduce USB AFE port to q6dsp
  ASoC: qcom: qdsp6: q6afe: Increase APR timeout
  ASoC: qcom: qdsp6: Add USB backend ASoC driver for Q6
  ASoC: qcom: qdsp6: Add headphone jack for offload connection status
  ASoC: qcom: qdsp6: Fetch USB offload mapped card and PCM device
  ALSA: usb-audio: Introduce USB SND platform op callbacks
  ALSA: usb-audio: Export USB SND APIs for modules
  ALSA: usb-audio: Save UAC sample size information
  ALSA: usb-audio: Prevent starting of audio stream if in use
  ALSA: usb-audio: qcom: Add USB QMI definitions
  ALSA: usb-audio: qcom: Introduce QC USB SND offloading support
  ALSA: usb-audio: qcom: Don't allow USB offload path if PCM device is
    in use
  ALSA: usb-audio: qcom: Use card and PCM index from QMI request
  ALSA: usb-audio: qcom: Populate PCM and USB chip information
  ALSA: usb-audio: qcom: Add USB offload route kcontrol
  ALSA: usb-audio: Allow for rediscovery of connected USB SND devices
  ASoC: usb: Rediscover USB SND devices on USB port add
  ALSA: usb-audio: Check for support for requested audio format
  ASoC: usb: Add PCM format check API for USB backend
  ASoC: qcom: qdsp6: Ensure PCM format is supported by USB audio device

 .../bindings/sound/qcom,sm8250.yaml           |   15 +
 Documentation/sound/soc/index.rst             |    1 +
 Documentation/sound/soc/usb.rst               |  435 ++++
 drivers/usb/dwc3/core.c                       |   12 +
 drivers/usb/dwc3/core.h                       |    2 +
 drivers/usb/dwc3/host.c                       |    3 +
 drivers/usb/host/Kconfig                      |    9 +
 drivers/usb/host/Makefile                     |    2 +
 drivers/usb/host/xhci-mem.c                   |   36 +-
 drivers/usb/host/xhci-plat.c                  |    2 +
 drivers/usb/host/xhci-ring.c                  |   50 +-
 drivers/usb/host/xhci-sideband.c              |  419 ++++
 drivers/usb/host/xhci.c                       |   43 +-
 drivers/usb/host/xhci.h                       |   18 +-
 .../sound/qcom,q6dsp-lpass-ports.h            |    1 +
 include/linux/usb/xhci-sideband.h             |   68 +
 include/sound/q6usboffload.h                  |   20 +
 include/sound/soc-usb.h                       |  135 ++
 sound/soc/Kconfig                             |   10 +
 sound/soc/Makefile                            |    2 +
 sound/soc/qcom/Kconfig                        |   15 +
 sound/soc/qcom/Makefile                       |    2 +
 sound/soc/qcom/qdsp6/Makefile                 |    1 +
 sound/soc/qcom/qdsp6/q6afe-dai.c              |   60 +
 sound/soc/qcom/qdsp6/q6afe.c                  |  193 +-
 sound/soc/qcom/qdsp6/q6afe.h                  |   36 +-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |   23 +
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h      |    1 +
 sound/soc/qcom/qdsp6/q6routing.c              |    9 +
 sound/soc/qcom/qdsp6/q6usb.c                  |  372 ++++
 sound/soc/qcom/sm8250.c                       |   23 +-
 sound/soc/qcom/usb_offload_utils.c            |   56 +
 sound/soc/qcom/usb_offload_utils.h            |   29 +
 sound/soc/soc-usb.c                           |  331 +++
 sound/usb/Kconfig                             |   25 +
 sound/usb/Makefile                            |    2 +-
 sound/usb/card.c                              |  109 +
 sound/usb/card.h                              |   15 +
 sound/usb/endpoint.c                          |    1 +
 sound/usb/format.c                            |    1 +
 sound/usb/helper.c                            |    1 +
 sound/usb/pcm.c                               |  104 +-
 sound/usb/pcm.h                               |   11 +
 sound/usb/qcom/Makefile                       |    6 +
 sound/usb/qcom/mixer_usb_offload.c            |  101 +
 sound/usb/qcom/mixer_usb_offload.h            |   17 +
 sound/usb/qcom/qc_audio_offload.c             | 1937 +++++++++++++++++
 sound/usb/qcom/usb_audio_qmi_v01.c            |  892 ++++++++
 sound/usb/qcom/usb_audio_qmi_v01.h            |  162 ++
 49 files changed, 5768 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/sound/soc/usb.rst
 create mode 100644 drivers/usb/host/xhci-sideband.c
 create mode 100644 include/linux/usb/xhci-sideband.h
 create mode 100644 include/sound/q6usboffload.h
 create mode 100644 include/sound/soc-usb.h
 create mode 100644 sound/soc/qcom/qdsp6/q6usb.c
 create mode 100644 sound/soc/qcom/usb_offload_utils.c
 create mode 100644 sound/soc/qcom/usb_offload_utils.h
 create mode 100644 sound/soc/soc-usb.c
 create mode 100644 sound/usb/qcom/Makefile
 create mode 100644 sound/usb/qcom/mixer_usb_offload.c
 create mode 100644 sound/usb/qcom/mixer_usb_offload.h
 create mode 100644 sound/usb/qcom/qc_audio_offload.c
 create mode 100644 sound/usb/qcom/usb_audio_qmi_v01.c
 create mode 100644 sound/usb/qcom/usb_audio_qmi_v01.h


