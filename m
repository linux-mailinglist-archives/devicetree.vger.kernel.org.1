Return-Path: <devicetree+bounces-7231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C507BFD0D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 210F5281F29
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E5141ABA;
	Tue, 10 Oct 2023 13:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="TDTcfbPR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8D13D3A6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:15:16 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE738C4;
	Tue, 10 Oct 2023 06:15:12 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3411F60008;
	Tue, 10 Oct 2023 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696943711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=92wkF1+OZ59KpGfmZnu+Vkwq3nyi9bpMP5C9cBgIJ40=;
	b=TDTcfbPRYcq2ABod+88AfBi7oWWhg5p1YVGQOEvORwmGW9xQrDB2jd9hwGqnSKOIuEbaKU
	xF9wFfCh5taO3Pln75Zb1vkAwMMUoEYjdflG60yoPNSj4MUsFvmBWsZP7IIDs3pOip1D5C
	CawgeuZKa9GL8mEtGB2qSLrimhfhLEJ17m9wvAox3aB7gtZp6Hqq6fyZM0DdDov8uOlKbK
	iH2z6ymK7/Q2m9HFckMTITx1DMxnWCbL4WaXsZE4/w/IFzk63SngqGKrUYCNBKlREvCFwP
	lOBGZcCir6K/u06MqP/dvAw/fGeQxHUHi4PTJbHpv8JhIFBICrc3ct8f5ZcHfg==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com,
	paul.kocialkowski@bootlin.com,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH v7 0/3] media: rockchip: Add a driver for Rockchip's camera interface
Date: Tue, 10 Oct 2023 15:15:03 +0200
Message-ID: <cover.1696943295.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_OTHER_BAD_TLD,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED,URI_HEX
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello everyone,

V7 for basic support of the Video Input Processor found on the Rockchip PX30 SoC

The v6 is based on the fifth iteration of the series introducing the
driver: sent 29 Dec 2020 [1]

Most of this driver was written following the BSP driver from rockchip,
removing the parts that either didn't fit correctly the guidelines, or
that couldn't be tested.

In the BSP, this driver is known as the "cif" driver, but this was
renamed to "vip" to better fit the controller denomination in the
datasheet.

This version of the driver supports ONLY the parallel interface BT656
and was tested/implemented using an SDTV video decoder

media_tree, base-commit: 2c1bae27df787c9535e48cc27bbd11c3c3e0a235

V6 => V7:
vip/capture.c vip/dev.c vip/dev.h
- renamed all struct rk_vip_dev dev => struct rk_vip_dev vip_dev
- added some error when rk_vip_get_buffer() returns NULL
- removed a WARN_ON
- made the irq NOT shared
- dropped of_match_ptr
- added the rk_vip_get_resource() function

rockchip,px30-vip.yaml:
- changed filename to match the compatible
- dropped the mention of the other rockchip SoC in the dt-binding
  description and added a more detailed description of VIP
- removed unused labels in the example


V5 [1] => V6:
vip/capture.c vip/dev.c vip/dev.h
- added a video g_input_status subdev call, V4L2_IN_CAP_STD and the
  supported stds in rk_vip_enum_input callback
- added rk_vip_g_std, rk_vip_s_std and rk_vip_querystd callbacks
- added the supported video_device->tvnorms
- s_std will now update the format as this depends on the standard
  NTSC/PAL (as suggested by Hans in [1])
- removed STD_ATSC
- moved the colorimetry information to come from the subdev
- removed the core s_power subdev calls
- dropped cropping in rk_vip_stream struct

rockchip-vip.yaml:
- fixed a mistake in the name of third clock plckin -> plck
- changed the reg maxItems 2 -> 1

[1] https://lore.kernel.org/linux-media/20201229161724.511102-1-maxime.chevallier@bootlin.com/

I used v4l-utils with HEAD: commit 1ee258e5bb91a12df378e19eb255c5219d6bc36b

# v4l2-compliance 
v4l2-compliance 1.25.0, 64 bits, 64-bit time_t

Compliance test for rk_vip device /dev/video0:

Driver Info:
        Driver name      : rk_vip
        Card type        : rk_vip
        Bus info         : platform:ff490000.vip
        Driver version   : 6.6.0
        Capabilities     : 0x84201000
                Video Capture Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04201000
                Video Capture Multiplanar
                Streaming
                Extended Pix Format
Media Driver Info:
        Driver name      : rk_vip
        Model            : rk_vip
        Serial           : 
        Bus info         : platform:ff490000.vip
        Media version    : 6.6.0
        Hardware revision: 0x00000000 (0)
        Driver version   : 6.6.0
Interface Info:
        ID               : 0x03000002
        Type             : V4L Video
Entity Info:
        ID               : 0x00000001 (1)
        Name             : video_rkvip
        Function         : V4L2 I/O
        Pad 0x01000004   : 0: Sink
          Link 0x02000009: from remote pad 0x1000006 of entity 'tw9900 2-0044' (Digital Video Decoder): Data, Enabled

Required ioctls:
        test MC information (see 'Media Driver Info' above): OK
        test VIDIOC_QUERYCAP: OK
        test invalid ioctls: OK

Allow for multiple opens:
        test second /dev/video0 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 1 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls (Input 0):
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK (Not Supported)
        test VIDIOC_QUERYCTRL: OK (Not Supported)
        test VIDIOC_G/S_CTRL: OK (Not Supported)
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK (Not Supported)
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 0 Private Controls: 0

Format ioctls (Input 0):
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK (Not Supported)
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK (Not Supported)
        test Composing: OK (Not Supported)
        test Scaling: OK (Not Supported)

Codec ioctls (Input 0):
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for rk_vip device /dev/video0: 46, Succeeded: 46, Failed: 0, Warnings: 0

Mehdi Djait (3):
  media: dt-bindings: media: add bindings for Rockchip VIP
  media: rockchip: Add a driver for Rockhip's camera interface
  arm64: dts: rockchip: Add the camera interface

 .../bindings/media/rockchip,px30-vip.yaml     |   93 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
 drivers/media/platform/rockchip/Kconfig       |    1 +
 drivers/media/platform/rockchip/Makefile      |    1 +
 drivers/media/platform/rockchip/vip/Kconfig   |   14 +
 drivers/media/platform/rockchip/vip/Makefile  |    3 +
 drivers/media/platform/rockchip/vip/capture.c | 1211 +++++++++++++++++
 drivers/media/platform/rockchip/vip/dev.c     |  346 +++++
 drivers/media/platform/rockchip/vip/dev.h     |  163 +++
 drivers/media/platform/rockchip/vip/regs.h    |  260 ++++
 10 files changed, 2104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
 create mode 100644 drivers/media/platform/rockchip/vip/Kconfig
 create mode 100644 drivers/media/platform/rockchip/vip/Makefile
 create mode 100644 drivers/media/platform/rockchip/vip/capture.c
 create mode 100644 drivers/media/platform/rockchip/vip/dev.c
 create mode 100644 drivers/media/platform/rockchip/vip/dev.h
 create mode 100644 drivers/media/platform/rockchip/vip/regs.h

-- 
2.41.0


