Return-Path: <devicetree+bounces-19783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2D67FCAC7
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 00:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 847AC1C20BBB
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 23:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C435C5733E;
	Tue, 28 Nov 2023 23:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="EgnkeBuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC3E19A4
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 15:25:10 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id C960737943A
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 23:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYi00Q6P2XXJ for <devicetree@vger.kernel.org>;
	Wed, 29 Nov 2023 00:26:42 +0100 (CET)
Received: from werkpc.lan (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id B3145379289;
	Wed, 29 Nov 2023 00:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701214001; bh=G3JB671WawIpbUjjbrLf8COupnjT/0gEiSIXdRR+XLM=;
	h=From:To:Subject:Date;
	b=EgnkeBuDR0Tw+njhvtrf3miCyHthsJ+NqYbR0NY4u/ES2+I9u44o4HPuAnsWbKH6R
	 TXXczAkAJPjKYWTTj0ZRXZtTpf3xuCqp4DRDuFkQmAAE8//ZbDj3OZH7WtiLxqpfQn
	 SbhAerfJ9/PGdj0FGxfdM3c+jbd3uanlNieu7szY=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au,
	renze@rnplus.nl
Subject: [PATCH v2 0/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
Date: Wed, 29 Nov 2023 00:23:15 +0100
Message-ID: <20231128232456.2932350-1-renze@rnplus.nl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

These patches add a device-tree (and a bindings update) for the
Aspeed BMC on the ASRock X570D4U, so that it can be added as a
supported OpenBMC platform.

Changes since v1:
  - Fixed indentation
  - Added "aspeed,ast2500" compatible
  - Switched to lower case hex values
  - Added function and color attributes to the LEDs
  - Renamed LEDs to led0 and led1
  - Removed hogging of output-bmc-ready GPIO (should be set from userland instead)
  - Get MAC addresses of the ethernet interfaces from the FRU EEPROM
  - Add descriptions to the busses exposed by the I2C switch (i2c-1@70)
  - Add blank lines between nodes in fan section
  - Drop bootargs from chosen section

Greetings,
Renze Nicolai

Renze Nicolai (2):
  dt-bindings: arm: aspeed: add Asrock X570D4U board
  ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 359 ++++++++++++++++++
 3 files changed, 361 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts

-- 
2.43.0


