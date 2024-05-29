Return-Path: <devicetree+bounces-70359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B95098D3292
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 11:10:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E28B21C22ABA
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C53D169361;
	Wed, 29 May 2024 09:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="pCxvvALy"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971A71E888;
	Wed, 29 May 2024 09:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716973818; cv=none; b=PMyRyMRxDyldmXkWZegZIHmTfyaL0oQqC5a9D/1neXiQeDIm2HqZsYoiFljHAaw8w+1Y/yYCD57LvyA9P7c4VKXZFqVrYK6fIX2xmObLanHRMFWHFWN29KGme75X12kgJUNl0Xfk5iofF0pKldcMIOTyHsE8CLPdI292ru/VGsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716973818; c=relaxed/simple;
	bh=oj35fZS++nGjpBQodDa0RGowfzsy/9rbzIdvYykTMBA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RhLYZNaZlXJJmMTq73vpLtO8NKLMTc3h5FaOibJsH4646Zukd4bHAaDbvGcmi0jDDa+BemtplqTIQlDz1/96vuvL6x0CufXMrw7l9Ns8Iq+FRYsJ+/B8vgdAFEGgmkvntJeyB2mQEiWPDHNyomFwFjoDatLfPRrEo888b/um41U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=pCxvvALy; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3B11F1BF20A;
	Wed, 29 May 2024 09:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716973808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BVUPxl5Y+vyJHQzQhbaguYrNryrh64Xv21qOWbUxLiM=;
	b=pCxvvALyzwypce5PV/cc7EpaojTJp/bOWzelDLsARaa3y07eP9ZC4oDESuYaZPcFvBupMh
	lsscTpnrzQeoij8kE98EAbGv5vLeD6Ocf50jbdywzFjcY6zvi7wkL6CYZUfiw/LhUeKEKU
	rIKY1A9yvtAaI2dn7+ZcXIWQGpKFcAxPBtq78/KbknSitMk885XXuLKglIc5GGQ1+ds+6b
	DLfRMlROxCw7w7LProF82BcEOJ2HwNrn16Lv5eBLVtU0sAe61clmDTKY2HxcAnWIQFb+iP
	eNZntYraPPLOugxmQwWVVVIqZs7PpswBFbO575Os0HCteWeHY6RnKcIr90MpUQ==
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Jeff LaBundy <jeff@labundy.com>
Cc: catalin.popescu@leica-geosystems.com,
	mark.satterthwaite@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com,
	Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH v12 0/3] Input: Add TouchNetix axiom touchscreen driver
Date: Wed, 29 May 2024 11:10:00 +0200
Message-ID: <20240529091004.107256-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: kamel.bouhara@bootlin.com

Add a new driver for the TouchNetix's axiom family of touchscreen
controller. This driver only support i2c and can be later adapted for
SPI and USB support.

--
Changes in v12:
 - Fix REGMAP_I2C not selected
 - Rebase on v6.10-rc10

Changes in v11:
 - Fix regulators name to match dt-binding
 - Enable regulators before reset is asserted

Changes in v10:
 - Set regulators as required
 - Enable power supply before reset
 - Fix ref count due to regulator requested twice
 - Rebase on v6.9-rc4

Changes in v9:
 - Fix issue reported in https://lore.kernel.org/oe-kbuild-all/202402201157.BKo97uWl-lkp@intel.com/
 - Rebase on v6.8-rc2

Changes in v8:
 - Fix missing call to input_report_slot_state()
 - Fix issue reported in https://lore.kernel.org/oe-kbuild-all/202402020623.8T1Ah513-lkp@intel.com/

Changes in v7:
 - Remove startup time from dt-binding
 - Fix usage table not correctly populated

Changes in v6:
 - Fix missing unevaluatedProperties.in dt-binding
 - Use __le16 to correctly deal with device endianness
 - Use standart kernel types s/char/u8/
 - Use regmap api as driver might support spi later
 - Use get_unaligned_le16() for the sake of clarity
 - Use devm_regulator_enable_optional()

Changes in v5:
 - Fix wrong message constructed in axiom_i2c_read
 - Delay required between i2c reads is >= 250us
 - Do not split report reading in two phases as we'll
   have to wait 500us
 - Use lower-case in properties names
 - Make regulators properties are required in dt-binding
 - Fix bug report: https://lore.kernel.org/lkml/202312051457.y3N1q3sZ-lkp@intel.com/
 - Fix bug report: https://lore.kernel.org/lkml/6f8e3b64-5b21-4a50-8680-063ef7a93bdb@suswa.mountain/

Changes in v4:
 - Cleanup unused headers and macros
 - Use standard kernel type
 - Namespace structures and functions
 - Use packed struct when possible to avoid bitfield operators
 - Fix missing break when address is found in axiom_populate_target_address()
 - Split reads in two steps for the reports, first length then report
   itself so we only read required bytes
 - Get poll-interval from devicetree
 - Add VDDI/VDDA regulators
 - Add a startup delay of 110 ms required after VDDA/VDDI is applied
 - Remove axiom_i2c_write() as it is no more used

Changes in v3:
 - Remove irq-gpios property in dt-binding
 - Use a generic node name
 - Fix issues reported in https://lore.kernel.org/oe-kbuild-all/202310100300.oAC2M62R-lkp@intel.com/

Changes in v2:
 - Add device tree binding documentation
 - Move core functions in axiom_i2c as we only care about i2c support now
 - Use static function when required
 - Use syntax dev_err_probe()
 - Add an hardware based reset


Kamel Bouhara (3):
  dt-bindings: vendor-prefixes: Add TouchNetix AS
  dt-bindings: input: Add TouchNetix axiom touchscreen
  Input: Add TouchNetix axiom i2c touchscreen driver

 .../input/touchscreen/touchnetix,ax54a.yaml   |  62 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   8 +
 drivers/input/touchscreen/Kconfig             |  13 +
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/touchnetix_axiom.c  | 657 ++++++++++++++++++
 6 files changed, 743 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchnetix,ax54a.yaml
 create mode 100644 drivers/input/touchscreen/touchnetix_axiom.c

--
2.25.1


