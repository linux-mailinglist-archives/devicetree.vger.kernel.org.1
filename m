Return-Path: <devicetree+bounces-224077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B20BC0B56
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DC1A3B9DFB
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426F02DF123;
	Tue,  7 Oct 2025 08:33:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1632D5A0C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759825994; cv=none; b=irZx8Q//sbIxhuU9JBGw3J4QDZKHxRHG5KTx/0PSrygv0Oy3W9LKZAg5wgt5p0xnYpMuyjP6+fbs/tPhJDRC1Oap8kfqGEw05MsmPChcFbQsz5lwghZ57ucGzkYcZFpzTZdR8MWc0G40HWiIamaZB9Z+wlAF3OYcjCptTPVrNmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759825994; c=relaxed/simple;
	bh=vuBdnzuaH7X5m646CgvtenVd8ZAWVRzO2D8qxSRPKXQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CHz8LnUJ86IK3YvUbc/tI9S1pF2nXY6Sxa+kDlw1kooh1fOzRfUOkMJAeKTaCtfsIJFRxnL76bEOmBqKThsm/mLR7nqRGivak8PvKy7FVpl8wfEInc7VlNkSjyZZIeHQF7efjUBO6VMuNXLV+E3bl6yl2/rsCanpKi8vsY8mBIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637o-0002Hb-2P; Tue, 07 Oct 2025 10:32:48 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Subject: [PATCH 00/16] media: platform: rga: Add RGA3 support
Date: Tue, 07 Oct 2025 10:31:53 +0200
Message-Id: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPnP5GgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwND3eKCUt2i9ERjXYtEA4NUA0OLJEMjAyWg8oKi1LTMCrBR0bG1tQA
 JWi1/WgAAAA==
X-Change-ID: 20251001-spu-rga3-8a00e018b120
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Raster Graphic Acceleration 3 (RGA3)
peripheral, which is included in the RK3588 SoC. Unlike the RGA2 it
can use the existing rockchip-iommu-v2 driver to handle iommu mappings.
Also the RK3588 contains two independent RGA3 cores.

Only scaling and format conversions between common 8bit RGB/YUV formats
are implemented. Also the color space conversion is fixed to BT601F.
This already allows a practical usage of the RGA3.

This was tested on a Radxa Rock 5T. With the increased clock speeds in
the devicetree around 160 fps were measured when scaling and converting
from RGBA 480x360 to NV12 3840x2160. Without the clock speed scaling a
default clock division factor of 2 is used and only around 80 fps are
reached with one core. The v4l2-compliance tests only complain about
the already failing colorspace propagation:

  v4l2-compliance 1.28.1, 64 bits, 64-bit time_t
  ...
  		fail: v4l2-test-formats.cpp(923): fmt_cap.g_colorspace() != col
  	test VIDIOC_S_FMT: FAIL
  ...
  Total for rockchip-rga device /dev/video0: 47, Succeeded: 46, Failed: 1, Warnings: 0

  v4l2-compliance 1.28.1, 64 bits, 64-bit time_t
  ...
  		fail: v4l2-test-formats.cpp(923): fmt_cap.g_colorspace() != col
  	test VIDIOC_S_FMT: FAIL
  ...
  Total for rockchip-rga device /dev/video1: 47, Succeeded: 46, Failed: 1, Warnings: 0

  v4l2-compliance 1.28.1, 64 bits, 64-bit time_t
  ...
  		fail: v4l2-test-formats.cpp(923): fmt_cap.g_colorspace() != col
  	test VIDIOC_S_FMT: FAIL
  ...
  Total for rockchip-rga device /dev/video2: 47, Succeeded: 46, Failed: 1, Warnings: 0

Each RGA core is a separate /dev/video device. To distinguish the RGA2
core from the RGA3 cores the Card type is set accordingly. Combining all
cores into a single device and scheduling tasks to the best core might
be a future improvement, if it is desired by upstream to handle the
scheduling and selection in kernel space.

Patch 1-2 are general cleanups
Patch 3-12 prepare the rga driver for the RGA3
Patch 13 documments the RGA3 compatible value
Patch 14 adds the RGA3 cores to the rk3588 dtsi
Patch 15 increases the RGA3 core clock speeds
Patch 16 adds RGA3 support to the rga driver

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
Sven Püschel (16):
      media: rockchip: rga: use clk_bulk api
      media: rockchip: rga: use stride for offset calculation
      media: rockchip: rga: align stride to 16 bytes
      media: rockchip: rga: move hw specific parts to a dedicated struct
      media: rockchip: rga: use card type to specify rga type
      media: rockchip: rga: change offset to dma_addresses
      media: rockchip: rga: support external iommus
      media: rockchip: rga: remove size from rga_frame
      media: rockchip: rga: remove stride from rga_frame
      media: rockchip: rga: move rga_fmt to rga-hw.h
      media: rockchip: rga: add iommu restore function
      media: rockchip: rga: handle error interrupt
      media: dt-bindings: media: rockchip-rga: add rockchip,rk3588-rga3
      arm64: dts: rockchip: add rga3 dt nodes
      arm64: dts: rockchip: increase rga3 clock speed
      media: rockchip: rga: add rga3 support

 .../devicetree/bindings/media/rockchip-rga.yaml    |   1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  50 +++
 drivers/media/platform/rockchip/rga/Makefile       |   2 +-
 drivers/media/platform/rockchip/rga/rga-buf.c      |  78 ++--
 drivers/media/platform/rockchip/rga/rga-hw.c       | 356 ++++++++++++---
 drivers/media/platform/rockchip/rga/rga-hw.h       |  15 +-
 drivers/media/platform/rockchip/rga/rga.c          | 404 ++++++-----------
 drivers/media/platform/rockchip/rga/rga.h          |  74 ++--
 drivers/media/platform/rockchip/rga/rga3-hw.c      | 490 +++++++++++++++++++++
 drivers/media/platform/rockchip/rga/rga3-hw.h      | 186 ++++++++
 10 files changed, 1246 insertions(+), 410 deletions(-)
---
base-commit: afb100a5ea7a13d7e6937dcd3b36b19dc6cc9328
change-id: 20251001-spu-rga3-8a00e018b120

Best regards,
-- 
Sven Püschel <s.pueschel@pengutronix.de>


