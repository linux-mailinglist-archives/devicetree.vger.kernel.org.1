Return-Path: <devicetree+bounces-77239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF7B90DC88
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 21:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67F4E282232
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B05516D4DF;
	Tue, 18 Jun 2024 19:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="D7W/iZ4k"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE9B16CD22;
	Tue, 18 Jun 2024 19:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718739428; cv=none; b=leW3Z559pgXZ9i6b/QLYZ0LGzTYUrfImvRJibYJPLAo/ke6fTEq2tvFufLWOO9TbHz95YopNe5EUiQOvF+OGC+yPcRBG2at2j2JsmxmXe77eC8lUFQrjEqT3ILyoeA4JkZSYnpk8dbGCv+m8E52jpO/byIcmKR/Fd+Ptp7IArww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718739428; c=relaxed/simple;
	bh=EK1/8RlOoi0KfJJZUrDmtGmzrcGU0n3sGE26R9Pi6Pg=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gktEXy0i6GCnx+cyJfF3ONorbk/n1WPPcsoitx6x8LXm8OKCODBPBQ3Zr1kLoM/v1qQR9JtdZ7thzKuzh+HRM5cr7HB+OwFrXbA7+AkxlhmUEyWItP0grPgpFXUZ2wU6Nt9jbG6K9SqMjD4uy+f1eURq8IMbHeDTHuV0vGJOCHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=D7W/iZ4k; arc=none smtp.client-ip=198.47.23.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45IJaqXB121201;
	Tue, 18 Jun 2024 14:36:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1718739412;
	bh=/gxkLSL12SRTwVa0mkJlz6jVgeyioK2Hk8CyG3uw/B8=;
	h=From:To:CC:Subject:Date;
	b=D7W/iZ4kQ0wAi1xzpMcbbsG6knVPWIbSa4kD3LAIdia1ufzW1lrxxu0GAG/+btkB5
	 vxXxREarOVdmdfueJ+UlaybSI4H1WkpBH2My7/NICv3LTcNoLe+z6Vf4KK3Rb2eMpi
	 TZ4TbBq7qOahiagLsAMnBF7o+cTQuLmK9gDXdtCQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45IJaquH111398
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Jun 2024 14:36:52 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 18
 Jun 2024 14:36:52 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 18 Jun 2024 14:36:52 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45IJapBd118623;
	Tue, 18 Jun 2024 14:36:52 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <mchehab@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <hverkuil-cisco@xs4all.nl>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <benjamin.gaignard@collabora.com>, <sebastian.fricke@collabora.com>
CC: <laurent.pinchart@ideasonboard.com>, <praneeth@ti.com>, <nm@ti.com>,
        <vigneshr@ti.com>, <a-bhatia1@ti.com>, <j-luthra@ti.com>,
        <b-brnich@ti.com>, <detheridge@ti.com>, <p-mantena@ti.com>,
        <vijayp@ti.com>, <devarsht@ti.com>, <andrzej.p@collabora.com>,
        <nicolas@ndufresne.ca>, <afd@ti.com>
Subject: [PATCH v14 0/6] Add V4L2 M2M Driver for E5010 JPEG Encoder
Date: Wed, 19 Jun 2024 01:06:45 +0530
Message-ID: <20240618193651.2771478-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This adds support for V4L2 M2M based driver for E5010 JPEG Encoder
which is a stateful JPEG encoder from Imagination technologies
and is present in TI AM62A SoC.

While adding support for it, following additional framework changes were
made:
 - Moved reference quantization and huffman tables provided in
   ITU-T-REC-T.81 to v4l2-jpeg.c as suggested in mailing list [1].
 - Updated imagination and hantro jpeg drivers to utilize aforementioned
   exported jpeg tables instead of using locally declared ones.

v4l2-compliance test :
Link: https://gist.github.com/devarsht/1f039c631ca953a57f405cfce1b69e49

E5010 JPEG Encoder Manual tests :

Performance:
Link: https://gist.github.com/devarsht/c40672944fd71c9a53ab55adbfd9e28b

Functionality:
Link: https://gist.github.com/devarsht/8e88fcaabff016bb2bac83d89c9d23ce

Compression Quality:
Link: https://gist.github.com/devarsht/cbcc7cd97e8c48ba1486caa2b7884655

Multi Instance:
Link: https://gist.github.com/devarsht/22c2fca08cd3441fb40f2c7a4cebc95a

Crop support:
Link: https://gist.github.com/devarsht/de6f5142f678bb1a5338abfd9f814abd

Runtime PM:
Link: https://gist.github.com/devarsht/70cd95d4440ddc678489d93885ddd4dd

[1]: 
https://lore.kernel.org/all/de46aefe-36da-4e1a-b4fa-b375b2749181@xs4all.nl/

Changelog:
V14:
 - Directly export jpeg tables from v4l2-jpeg instead of using wrapper
   helper functions
 - Split math.h related changes to separate series

V13:
 - Fix smatch/sparse related warnings

V12:
 - Fix documentation and enable kernel-doc rendering for math.h and jpeg helpers
 - Add Reviewed-by and Acked-by tags
  
V10->V11:
 - Fix commenting for math.h, include headers per IWYU principle in
   math_kunit, update title for math.h kernel-doc

V9->V10:
 - Update commenting style in math.h and add notes for new jpeg header
   macros
 - Add KUnit dependency for math_kunit

V8->V9:
 - Remove kernel.h header file
 - Remove stale filler data on jpeg header in E5010 jpeg driver

V7->V8:
 - Add KUnit tests for math functions
 - Add roundclosest() for supporting rounding for non-multiple of 2
 - Update commit message as suggested
 - Add Reviewed-by and Acked-by tags to patches as received

V6->V7:
 - Fix cropping support
 - Move reference huffman and quantization tables to v4l2-jpeg.c
 - Fix suspend/resume use-case
 - Add Reviewed-by

V5->V6:
 - Fix sparse warnings

V4->V5:
 - Sort the #includes in driver file alphabetically
 - Rename huffman and quantization tables to not use '_'
 - Add Reviewed-by tag

V3->V4:
- Use ti-specific compatible ti,am62a-jpeg-enc as secondary one in
  dt-binding
- Remove clock-names as only single clock in dt-binding
- Fix issue with default params setting
- Correct v4l2 error prints
- Simplify register write functions with single statement return values
- Remove unrequired error checks from get_queue()
- Drop explicit device_caps setting as it is already taken care by v4l2
  core
- Remove unrequired multiplanar checks and memset from s_fmt, g_fmt
  callback functions
- Fix try_fmt callback to not update the queues
- Remove unrequired contiguous format attribute from queue_init
- Use dynamic allocation for video_device and remove unrequired
  assignments in probe()
- Remove unrequired checks from queue_setup function
- Return queued buffers back if start_streaming fails
- Use ARRAY_SIZE in place of hard-coding
- Use huffman and quantization tables from reference header file

V2->V3:
- Add DONOTMERGE patches for dts and defconfig
- Update driver with below changes :
  - Correct license headers
  - Use more generic name core instead of jasper for base registers
  - Add Comment for forward declarations
  - Simplify quantization table calculations
  - Use v4l2_apply_frmsize_constraints for updating framesize and remove
    unrequired functions
  - Place TODO at top of file and in commit message too
  - Use dev_err_probe helper in probe function
  - Fix return value checking for failure scenarios in probe function
  - Use v4l2_err/info/warn helpers instead of dev_err/info/warn helpers
  - Fix unexpected indentation
  - Correct commit message
- Update dt-bindings with below changes :
  - Add vendor specific compatible 
  - Fix commit title and message
  - Update reg names
  - Update clocks to 1
  - Fix dts example with proper naming

V1->V2:
 - Send dt-bindings and driver together

Patch-Diff between the series :
V13->V14 Range diff :
https://gist.github.com/devarsht/15f5cac304c5d01186dd4e7d4215414e

V12->V13 Range diff :
https://gist.github.com/devarsht/0bd2e90b7352ed4831252a7962fff65d

V11->V12 Range diff :
https://gist.github.com/devarsht/18455f1744b6b6b8f33dd505a4ca2651

V10->V11 Range diff :
https://gist.github.com/devarsht/cd76372bff7c125f75d06ba009264b75

V9->V10 Range diff :
https://gist.github.com/devarsht/b446acee460b8c65fb577d06b7bbc1da

V8->V9 Range diff :
https://gist.github.com/devarsht/3fd6c4e8031ab114248f93d01c8dfc74

V6->V7 Range diff :
https://gist.github.com/devarsht/1db185b1e187eaf397e9e4c37066777e

V5->V6 Range diff :
https://gist.github.com/devarsht/c89180ac2b0d2814614f2b59d0705c19

V4->V5 Range diff :
https://gist.github.com/devarsht/298790af819f299a0a05fec89371097b

V3->V4 Range diff :
https://gist.github.com/devarsht/22a744d999080de6e813bcfb5a596272

Previous patch series:
V13: https://lore.kernel.org/all/20240607131900.3535250-1-devarsht@ti.com/ 
V12: https://lore.kernel.org/all/20240604104001.2235082-1-devarsht@ti.com/
V11: https://lore.kernel.org/all/20240531170229.1270828-1-devarsht@ti.com/
V10: https://lore.kernel.org/all/20240530165925.2715837-1-devarsht@ti.com/
V9: https://lore.kernel.org/all/20240526175655.1093707-1-devarsht@ti.com/
V8: https://lore.kernel.org/all/20240517171532.748684-1-devarsht@ti.com/
V7: https://lore.kernel.org/all/20240510082603.1263256-1-devarsht@ti.com/
V6: https://lore.kernel.org/all/20240228141140.3530612-1-devarsht@ti.com/
V5: https://lore.kernel.org/all/20240215134641.3381478-1-devarsht@ti.com/
V4: https://lore.kernel.org/all/20240205114239.924697-1-devarsht@ti.com/
V3: https://lore.kernel.org/all/20230816152210.4080779-1-devarsht@ti.com/
V2: https://lore.kernel.org/all/20230727112546.2201995-1-devarsht@ti.com/

Devarsh Thakkar (6):
  media: dt-bindings: Add Imagination E5010 JPEG Encoder
  media: imagination: Add E5010 JPEG Encoder driver
  media: v4l2-jpeg: Export reference quantization and huffman tables
  media: Documentation: Document v4l2-jpeg helper functions
  media: imagination: Use exported tables from v4l2-jpeg core
  media: verisilicon : Use exported tables from v4l2-jpeg for hantro
    codec

 .../bindings/media/img,e5010-jpeg-enc.yaml    |   75 +
 Documentation/driver-api/media/v4l2-core.rst  |    1 +
 Documentation/driver-api/media/v4l2-jpeg.rst  |   10 +
 MAINTAINERS                                   |    7 +
 drivers/media/platform/Kconfig                |    1 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/imagination/Kconfig    |   13 +
 drivers/media/platform/imagination/Makefile   |    3 +
 .../platform/imagination/e5010-core-regs.h    |  585 ++++++
 .../platform/imagination/e5010-jpeg-enc-hw.c  |  267 +++
 .../platform/imagination/e5010-jpeg-enc-hw.h  |   42 +
 .../platform/imagination/e5010-jpeg-enc.c     | 1632 +++++++++++++++++
 .../platform/imagination/e5010-jpeg-enc.h     |  168 ++
 .../platform/imagination/e5010-mmu-regs.h     |  311 ++++
 drivers/media/platform/verisilicon/Kconfig    |    1 +
 .../media/platform/verisilicon/hantro_jpeg.c  |  129 +-
 drivers/media/v4l2-core/v4l2-jpeg.c           |  116 ++
 include/media/v4l2-jpeg.h                     |   32 +
 18 files changed, 3278 insertions(+), 116 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/img,e5010-jpeg-enc.yaml
 create mode 100644 Documentation/driver-api/media/v4l2-jpeg.rst
 create mode 100644 drivers/media/platform/imagination/Kconfig
 create mode 100644 drivers/media/platform/imagination/Makefile
 create mode 100644 drivers/media/platform/imagination/e5010-core-regs.h
 create mode 100644 drivers/media/platform/imagination/e5010-jpeg-enc-hw.c
 create mode 100644 drivers/media/platform/imagination/e5010-jpeg-enc-hw.h
 create mode 100644 drivers/media/platform/imagination/e5010-jpeg-enc.c
 create mode 100644 drivers/media/platform/imagination/e5010-jpeg-enc.h
 create mode 100644 drivers/media/platform/imagination/e5010-mmu-regs.h

-- 
2.39.1


