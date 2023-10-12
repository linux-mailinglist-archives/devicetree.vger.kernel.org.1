Return-Path: <devicetree+bounces-7996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 186727C668C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49B451C20AC3
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81CF8101C8;
	Thu, 12 Oct 2023 07:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="DFFu+kfm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7FCDF6E
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:40:44 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B635BB8;
	Thu, 12 Oct 2023 00:40:42 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 939D31BF213;
	Thu, 12 Oct 2023 07:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697096441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=heuK9wS/h1/ViEMBxRuLhXkO1DWVAWnfvQ+18TvSWvU=;
	b=DFFu+kfmRACXK4mcSTUWdCR7dGinlz6lcaC8WodAR0tD9NKtS2iXvKT1Q215rD7xb/fDV4
	1bFbVbFcOgHnxxY2vBRz5r6L7vAH898733+QMOTSadBZ2kNud0z01azXLs2zZHvN5xmBZF
	3oavn2NHYi+bcpq8G0CGbP0nvt7OJgQNQiV0VXkqYYeAASZwLQMT34oLPuAz2Qj4tbT6Y2
	9HJyvnVfsEIR+g1p2Qe/p2LkYjwyoevVUe0G6vkVTJfv+vKYg3H5yR5VfHpH4o7Gyx4iDv
	iUBCiIdY10PhmKrXfoYm20dkotoqkX5Bb4k7Z3xG7oT7fU/ro2EEnlzcKD771g==
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	mark.satterthwaite@touchnetix.com,
	bartp@baasheep.co.uk,
	hannah.rossiter@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com,
	Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH v3 0/3] Input: Add TouchNetix axiom touchscreen driver 
Date: Thu, 12 Oct 2023 09:40:31 +0200
Message-Id: <20231012074034.1090436-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: kamel.bouhara@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a new driver for the TouchNetix's axiom family of
touchscreen controller. This driver only support i2c
and can be later adapted for SPI and USB support.

---
Changes in v2:
 - Add device tree binding documentation
 - Move core functions in axiom_i2c as we only care about i2c support now
 - Use static function when required
 - Use syntax dev_err_probe()
 - Add an hardware based reset

Changes in v3:
 - Remove irq-gpios property in dt-binding
 - Use a generic node name
 - Fix issues reported in https://lore.kernel.org/oe-kbuild-all/202310100300.oAC2M62R-lkp@intel.com/

Kamel Bouhara (3):
  dt-bindings: vendor-prefixes: Add TouchNetix AS
  dt-bindings: input: Add TouchNetix axiom touchscreen
  Input: Add TouchNetix axiom i2c touchscreen driver

 .../touchscreen/touchnetix,axiom-ax54a.yaml   |  47 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/input/touchscreen/Kconfig             |  13 +
 drivers/input/touchscreen/Makefile            |   1 +
 .../input/touchscreen/touchnetix_axiom_i2c.c  | 740 ++++++++++++++++++
 6 files changed, 810 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml
 create mode 100644 drivers/input/touchscreen/touchnetix_axiom_i2c.c

-- 
2.25.1


