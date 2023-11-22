Return-Path: <devicetree+bounces-17739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 215097F3F01
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADB4C1F20ECB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 07:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014F01CAAA;
	Wed, 22 Nov 2023 07:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="vIyCbVpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7C4B2;
	Tue, 21 Nov 2023 23:40:31 -0800 (PST)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AM6Z3Ni017952;
	Wed, 22 Nov 2023 08:39:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=AIy5g2p
	TqSwndhUEy4X/vr2mokavnxP8eKiEHWp7CNg=; b=vIyCbVpJN5m4F/hBP2r3IhG
	tPC5eIqxYX1LMqeBeKEwST48O3xBuOsRtiyDHa85E4jWgqxk3W0cj+yck5wzAXn1
	bOW9GP3DvscyrClxTw2XZStE9sLmS8BYmbVk6EuK6+qYH2Qm3F+nRdsdSCywEDim
	pBG2+8UczwBX+AWsq6X3A1zGP+H2gai+NblGOMNPxGdXkl4A2DapVWSRq8ZjC8gM
	KpisKI0r3TOgXevetfSqycID7wqaGvobG+kMCjl/TG/y7FcYr7Z9yN6qmXq2KtXR
	gZObwF3ZkgtaSgk8l2ve22LkKHxzSo8jCtShKTkkB3xSA0GXidlxHEY4aqA1TSg=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uek9a18p9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Nov 2023 08:39:55 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 265DB10002A;
	Wed, 22 Nov 2023 08:39:53 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 15D7F2122FD;
	Wed, 22 Nov 2023 08:39:53 +0100 (CET)
Received: from localhost (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 22 Nov
 2023 08:39:52 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Alain Volmat
	<alain.volmat@foss.st.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Russell King <linux@armlinux.org.uk>,
        Philipp
 Zabel <p.zabel@pengutronix.de>
CC: Sakari Ailus <sakari.ailus@linux.intel.com>,
        Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>,
        Dan Scally
	<dan.scally@ideasonboard.com>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 0/5] Add support for DCMIPP camera interface of STMicroelectronics STM32 SoC series
Date: Wed, 22 Nov 2023 08:39:14 +0100
Message-ID: <20231122073927.788810-1-alain.volmat@foss.st.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-22_06,2023-11-21_01,2023-05-22_02

This patchset introduces support for Digital Camera Memory Interface
Pixel Processor (DCMIPP) of STMicroelectronics STM32 SoC series.

This initial support implements a single capture pipe
allowing RGB565, YUV, Y, RAW8 and JPEG capture with
frame skipping, prescaling and cropping.

DCMIPP is exposed through 3 subdevices:
- dcmipp_dump_parallel: parallel interface handling
- dcmipp_dump_postproc: frame skipping, prescaling and cropping control
- dcmipp_dump_capture: video device capture node

v8:
  - serie rebased on top of master branch of tree sailus/media_tree.git
    in order to use v4l2_subdev_state_* functions

v7:
  - correct byteproc set_fmt handling and compose/crop/fmt handling
  - replace few v4l2_subdev_get_try_* into v4l2_subdev_get_pad_*
  - correct ordering within dcmipp_remove

v6:
  - correct copyright year in all files
  - correct Kconfig (removal of OF addition of select
    VIDEO_V4L2_SUBDEV_API/MEDIA_CONTROLLER
  - add missing mutex_destroy in error handling
  - rely on fwnode_graph_get_endpoint_by_id instead of fwnode_graph_get_next_endpoint
  - rely on device_get_match_data instead of of_device_get_match_data
  - use local variable for pads_flag initialization

v5:
  - removal of dcmipp_frame_size & dcmipp_frame_stride and use
    v4l2_fill_pixfmt
  - correct typos & avoid check of available buffer at start_streaming
    time since this is done by vb2 framework
  - avoid set of pad format in dcmipp_par_ent_init and
    dcmipp_byteproc_ent_init since done via init_cfg
  - reorder bound functions
  - use v4l2_subdev_get_fmt in parallel and byteproc subdevs
  - correct struct dcmipp_ent_device comments
  - removal of dcmipp_hdw_pixel_alignment in bytecap subdev since not
    applicable in this byte mode pipeline

v4:
  - rework of mutex / spinlock handling
  - addition of dma mask setting
  - removal of __maybe_unused, use pm_ptr and new declaration macros
  - driver now only generate a single stm32-dcmipp.ko module instead of
    several as before
  - removal of the component framework usage
  - various small fixes (function names, lowercase values, indentation,
    print formats)
  - register name removal in register access function, only dev_dbg with
    address & values are kept
  - removal of VB2_READ and CAP_READWRITE
  - usage of subdev active state mechanism and removal of locally stored
    format/compose/crop
  - addition of port { } within the stm32mp135.dtsi

v3:
  - Have same To & Cc in all patches emails of the serie so that everybody
    has coherent view of the serie
  - bindings: correct wording, clock-names & label removal
  - driver: replace of_graph call with fwnode_graph
  - driver: use defined bus-type when calling v4l2_fwnode_endpoint_parse
  - driver: remove clock name
  - dtsi: remove clock-names property

v2:
  - removal of pclk-max-frequency from yaml example dts
  - codying-style fixes
  - correction in enum functions (format, mbus, frame_size ...) handling
  - drop of v4l2_pipeline_pm_ calls, and specific open/close handler of
    vdev
  - video dev s_stream handling updated to call s_stream of remote subdev
    instead of loop until sensor subdev
  - code update following media_pipeline & v4l2_async_ api changes since v1
  - removal of IP reset call upon error
  - removal of link_validate handlers
  - addition of V4L2_CAP_IO_MC device_caps
  - removal of the frame skip control for the time being, will be added
    back in another commit once control method will be agreed
  - change byteproc entity type to MEDIA_ENT_F_PROC_VIDEO_SCALER
  - various fixes from Dan & Sakari remarks

Alain Volmat (2):
  dt-bindings: media: add bindings for stm32 dcmipp
  media: MAINTAINERS: add entry for STM32 DCMIPP driver

Hugues Fruchet (3):
  media: stm32-dcmipp: STM32 DCMIPP camera interface driver
  ARM: dts: stm32: add dcmipp support to stm32mp135
  ARM: multi_v7_defconfig: enable STM32 DCMIPP media support

 .../bindings/media/st,stm32-dcmipp.yaml       |  89 ++
 MAINTAINERS                                   |   5 +-
 arch/arm/boot/dts/st/stm32mp135.dtsi          |  11 +
 arch/arm/configs/multi_v7_defconfig           |   1 +
 drivers/media/platform/st/stm32/Kconfig       |  16 +
 drivers/media/platform/st/stm32/Makefile      |   1 +
 .../platform/st/stm32/stm32-dcmipp/Makefile   |   4 +
 .../st/stm32/stm32-dcmipp/dcmipp-bytecap.c    | 914 ++++++++++++++++++
 .../st/stm32/stm32-dcmipp/dcmipp-byteproc.c   | 565 +++++++++++
 .../st/stm32/stm32-dcmipp/dcmipp-common.c     | 106 ++
 .../st/stm32/stm32-dcmipp/dcmipp-common.h     | 216 +++++
 .../st/stm32/stm32-dcmipp/dcmipp-core.c       | 604 ++++++++++++
 .../st/stm32/stm32-dcmipp/dcmipp-parallel.c   | 440 +++++++++
 13 files changed, 2971 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmipp.yaml
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
 create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c

-- 
2.25.1


