Return-Path: <devicetree+bounces-11111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FAF7D446E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 03:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21FC21C20A23
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 01:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2430F15AC;
	Tue, 24 Oct 2023 01:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZxQaMYk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081984C81
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF3AC433C8;
	Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698109442;
	bh=ZfPl6t59R5Ac+1BPcyB7uDtR1zx5eWUVL7UjAPeXsdc=;
	h=From:To:Cc:Subject:Date:From;
	b=kZxQaMYk0knUAkNwR6rQa2TX+jDYR9tP10iiMOXXkE1xNvuSpyA7wwa1E/oi+PKZ5
	 biIpjYew17CALK8u414fhlFf7I/7YeMwgpQZI1mebSWd6/vlffYW1H1ozPMqcLHGZy
	 K/vFHRwcpftJWC0N+tA8T9W7Hxb8IMVLbHdsScNnbGHsy6XRT4ASf+wjTKMOWr5fhn
	 8t2T3K63Kq2AHZBWYTwq4NxxLwJ2jIMNcIrunOyoKkAbtD1koQmbu0BWy8bCFD0zMR
	 9rAUBCuHkhoMTZO/bu5EenaOeAU/fVcaZouLIg1hZoQhHtF3FHHp+sUvCrCdzntwSX
	 9FBT2MhQVsuDQ==
Received: by mercury (Postfix, from userid 1000)
	id A76C2106052D; Tue, 24 Oct 2023 03:03:59 +0200 (CEST)
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
Subject: [PATCH v2 0/4] GC0308 Camera Sensor
Date: Tue, 24 Oct 2023 02:59:49 +0200
Message-ID: <20231024010355.1877523-1-sre@kernel.org>
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

[0] https://embedded-recipes.org/2023/schedule/running-foss-thermal-camera/

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
 drivers/media/i2c/Kconfig                     |   14 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/gc0308.c                    | 1418 +++++++++++++++++
 6 files changed, 1551 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml
 create mode 100644 drivers/media/i2c/gc0308.c

-- 
2.42.0


