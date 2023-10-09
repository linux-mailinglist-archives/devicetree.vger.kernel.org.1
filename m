Return-Path: <devicetree+bounces-6955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AFE7BE0DD
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:44:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B64D41C208E8
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E96D339BF;
	Mon,  9 Oct 2023 13:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="DSPt4iLu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A923F339B0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:44:44 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FCF0A3;
	Mon,  9 Oct 2023 06:44:41 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4B42CC000B;
	Mon,  9 Oct 2023 13:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696859079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3jhpCvsya+E2eGbigp8XihjymSXHP4xEBq7kko3/DmU=;
	b=DSPt4iLu/HcnjbvtPQ0AC4c9yuKUKXmxAcXyFXorCIuFf/TOdT3pW/iINXnFcpfvDwdYkX
	gKyBn5e0Uwe2WOdSMUDjO/gQ9n1g2p3rAo7WADpPnKNEQZp+pAV3YQ7Wfy/SMCrgN1fUBG
	ntb5ZxB6XHHezFFDO8BK90ZorMjx0F8YOQQWtyARooSOZOnBgxxugSjwcsBDKyBdVdoRAx
	mFgbo4YtPYqQ+gTqTQAMMXKC6ovhHBhw4o1krOpCClqR5b6m9v442fLRla+TQ34zrGIhXX
	u29FH1S7LkgwpROCjGcBbj4qHGwNLo9z53MNGqsPeQWJ4XfwHEoKMWSn1iscbg==
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	mark.satterthwaite@touchnetix.com,
	pedro.torruella@touchnetix.com,
	bartp@baasheep.co.uk,
	hannah.rossiter@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com,
	Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH v2 0/3] Input: Add TouchNetix aXiom touchscreen driver 
Date: Mon,  9 Oct 2023 15:44:32 +0200
Message-Id: <20231009134435.36311-1-kamel.bouhara@bootlin.com>
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
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a new driver for the TouchNetix's aXiom family of
touchscreen controller. This driver only support i2c
and can be later adapted for SPI and USB support.

---
Changes in v2:
 - Add device tree binding documentation
 - Move core functions in axiom_i2c as we only care about i2c support now
 - Use static function when required
 - Use syntax dev_err_probe()
 - Add an hardware based reset

Kamel Bouhara (3):
  dt-bindings: vendor-prefixes: Add TouchNetix AS
  dt-bindings: input: Add bindings for TouchNetix axiom touchscreen
  Input: Add TouchNetix aXiom i2c touchscreen driver

 .../touchscreen/touchnetix,axiom_ax54a.yaml   |  52 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/input/touchscreen/Kconfig             |  13 +
 drivers/input/touchscreen/Makefile            |   1 +
 .../input/touchscreen/touchnetix_axiom_i2c.c  | 751 ++++++++++++++++++
 6 files changed, 825 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom_ax54a.yaml
 create mode 100644 drivers/input/touchscreen/touchnetix_axiom_i2c.c

-- 
2.25.1


