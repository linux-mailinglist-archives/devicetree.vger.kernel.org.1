Return-Path: <devicetree+bounces-12291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C237D8CBA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 03:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5973B2138A
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 01:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BC71857;
	Fri, 27 Oct 2023 01:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+3GG61v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF3417EF
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40FAC433CA;
	Fri, 27 Oct 2023 01:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698369261;
	bh=jyK9XMtPWsaT4FQrOBuiO6PcqdC1YHVnaagZqHZXO2k=;
	h=From:To:Cc:Subject:Date:From;
	b=q+3GG61vCp+3gEbDSZ/PtoSW04hHLXz8BGqdVw9WBlxIINoxt+hTD5QuD8i2cLKTg
	 NaUFonXvSB601rNQVlL2U0b62EszxG51y1KTXdKxxRrVKc/euenF3yHgJap6b2npGz
	 fp4UlobLjNYJkmBkMIw/9e6F2g42tC4oyBe6Py1tYeIysz9wWmQELEJfNDiGGLLuzS
	 tgK9wmApfmxnrW27zjfJGOcgsBjwiEGeq/gw/mNsJV5k5kp1tgYRiaYPSnw/9PJZyf
	 7W/5QEiwFjIO4Fu4RAryYHcuv1R9b4+JaoeA1xcOOQNz22WLgIxWYTc9sLJl+/YYYo
	 74KIfhMvSQypA==
Received: by mercury (Postfix, from userid 1000)
	id 3F8E6106057B; Fri, 27 Oct 2023 03:14:18 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] GC0308 Camera Sensor
Date: Fri, 27 Oct 2023 03:12:00 +0200
Message-ID: <20231027011417.2174658-1-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

I did the following tests done by me on an i.MX6ULL based system [0]:

 * v4l2-compliance -u /dev/v4l-subdev1
   - v4l2-compliance 1.24.1, 32 bits, 32-bit time_t
     (from Debian testing)
   - Total for device /dev/v4l-subdev1: 44, Succeeded: 44
 * Using gstreamer + v4l2-ctl
   - Tried 640x480, 320x240, 160x120 YUYV8_2X8 formats
   - Tested effect of all exposed user controls
 * checkpatch does not report any driver issues
 * dt_binding_check does not report anything

Note, that there is another patchset adding GC2145, which
adds the same vendor prefix. I just included it for completeness,
since it's needed to avoid checkpatch and dt_binding_check
warnings.

[0] https://embedded-recipes.org/2023/schedule/running-foss-thermal-camera/

Changes since PATCHv2:
 * https://lore.kernel.org/all/20231024010355.1877523-1-sre@kernel.org/
 * Simplify Kconfig dependencies
 * Do not store code/resolution; which is available from subdev state
 * Store register values for mode settings to avoid second lookup in
   s_stream
 * Reduce power_on sleep times
 * remove debug dev_err() print, that I accidently added in v2
 * add missing format check in gc0308_enum_frame_size()
 * do not PM resume in gc0308_s_ctrl()
 * enable and use runtime PM autosuspend
 * add .init_cfg() PAD op
 * use CCI helper instead of raw regmap
 * cluster both flip controls
   (that's not just a performance optimization, but fixes an issue,
   that register update is slow, so fast sequential setting of VFLIP/HFLIP
   override each other without this)
 * simplify gc0308_set_power_line_freq
 * free control handler on probe error
 * use first format by default
 * expose V4L2_CID_HBLANK, V4L2_CID_VBLANK, V4L2_CID_PIXEL_RATE
 * remove incorrect support for framerate and instead add a comment

Changes since PATCHv1:
 * https://lore.kernel.org/all/20231023002547.1754190-1-sre@kernel.org/
 * Update binding: i2c0 -> i2c
 * Update binding: make GC0309 use GC0308 as fallback compatible
 * Add regulator handling in power_on/power_off
 * Fix alignment of regmap_multi_reg_write arguments
 * Fix useless extra return
 * Do not check for pad in gc0308_enum_frame_size()
 * Drop get_mbus_config implementation
 * Use V4L2_CID_AUTO_EXPOSURE_BIAS instead of V4L2_CID_EXPOSURE
 * Drop gc0308_get_format in favour of v4l2_subdev_get_fmt
 * Replace open-coded v4l2_find_nearest_size() logic
 * check clock rate instead of setting it
 * use fwnode_graph_get_endpoint_by_id()
 * power off device when probe errors out after power on
 * replace mutex with sub-device state
 * add Galaxycore to generic camera sensors section in MAINTAINERS
 * add GC0308 entry in MAINTAINERS

Greetings,

-- Sebastian

Sebastian Reichel (4):
  dt-bindings: vendor-prefixes: add GalaxyCore
  media: dt-bindings: gc0308: add binding
  media: MAINTAINERS: Add GalaxyCore in camera sensor section
  media: i2c: gc0308: new driver

 .../bindings/media/i2c/galaxycore,gc0308.yaml |  108 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    8 +
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/gc0308.c                    | 1437 +++++++++++++++++
 6 files changed, 1566 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml
 create mode 100644 drivers/media/i2c/gc0308.c

-- 
2.42.0


