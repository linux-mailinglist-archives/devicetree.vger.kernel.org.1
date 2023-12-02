Return-Path: <devicetree+bounces-20909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7998A8018F4
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAB2C1C20BB5
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F03A717C4;
	Sat,  2 Dec 2023 00:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="COIF/psD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8736196
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:39:31 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id C5AB1379436
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 00:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzeWyN__Tp4n for <devicetree@vger.kernel.org>;
	Sat,  2 Dec 2023 01:41:05 +0100 (CET)
Received: from werkpc.lan (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id 2C9933793AD;
	Sat,  2 Dec 2023 01:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701477663; bh=T2n5Yga6fp/F8NOEQXklDzdB4xuhtPcanW7RG3hWVgs=;
	h=From:To:Subject:Date;
	b=COIF/psDnLVtevD34uRVgATP3f1e5WZ0RVgn8VBSD5fJtddPXwgGy/+sRFSImFs83
	 gSdkak0FOPdCjKr/Z3jiYrdmFyw+jS8U3cslxdOUoRqEMqNbBVA7mxU1WEL7i5cn6K
	 OGqOdUjTse4Fb6MWDIMAokF3uZwQ40TrjT6FoOAQ=
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
Subject: [PATCH v3 0/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
Date: Sat,  2 Dec 2023 01:38:43 +0100
Message-ID: <20231202003908.3635695-1-renze@rnplus.nl>
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

Changes since v2:
  - Renamed leds to led-0 and led-1 to match Documentation/devicetree/bindings/leds/leds-gpio.yaml
  - Added aliasses and labels for the i2c-mux on i2c bus 4
  - Added the missing blank line between the ehci1 and uhci nodes

Greetings,
Renze Nicolai

Renze Nicolai (2):
  dt-bindings: arm: aspeed: add Asrock X570D4U board
  ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 377 ++++++++++++++++++
 3 files changed, 379 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts

-- 
2.43.0


