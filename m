Return-Path: <devicetree+bounces-139964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8FFA17A38
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE0D716A1FC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3051BF7E8;
	Tue, 21 Jan 2025 09:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="FA7E1pcz"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A098D1B041B;
	Tue, 21 Jan 2025 09:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737452030; cv=none; b=BznfoT7JO5J+JedQTBJmDvB2kJC34AiEk/zU5OtkbwDLTxLuJN+Gy4pxecM4TpoPJvQ5Nse0XzUmJ/vLct3FjM+F197aAFtvIU819++ITAlwVo0t7IeLwua5D7G0vUT0S+rrT8G6Xd8PaVUgwtTfFl+GWcqGAokgZLaiUAZBuBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737452030; c=relaxed/simple;
	bh=Yrr6+sL4PDvZqpAhOqmq92ZkNW+ncfmsb3ojTV7Ynno=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UjUJigeX3/W33osiRukFv5EoMWE/MtokB/m4RvfsOeEXFQl4Derpdz/IH7qE104b2TYjYo2meUDhes1JwvNKZaYgF1SGSJXncfowGR6fCin8NwPDuJAVz6gkR+3O+ibT5CPrpJJ5Sa4P32ebi3hrjrVFv08SeBw1jCdyqmulQss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=FA7E1pcz; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A7A9B1C0006;
	Tue, 21 Jan 2025 09:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737452019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8UNMkmjwCpd6qZ4CJI0+xRiZ0ilYmNbqYa4oKXCUIlI=;
	b=FA7E1pczT9u6XmIxUxNYNpIQ1RkhJ5DeINCqUVr6iwwEE6+K3ia5q6igxakhazBM6+uzWC
	2QtbQroIULXiY1n23A6R8O0w48t/18rCIOyQYirMddc7w9c2xQ5naicrQNzG5wyiWk6/+B
	ac0ptiCxFJY+/S+qJ5o8CZ+TxYg3y3brCiuSOX9dz0PSf3a+xPDxP1KkK/oxJ/cD7mwEVa
	cr6vn4UhU9Gw0e2NE7+kbNVOceLG4rm4/sb13omueWPcrdjV0i9hL4oV6anqpNPfajdcGO
	AGL5c0vK2MFbpAXddgyUOlHV1bEwEmik0jwKPapAeSuY5S8T4FID72slmUHMLA==
From: Antonin Godard <antonin.godard@bootlin.com>
Subject: [PATCH 0/3] Add Variscite i.MX6UL SoM and Concerto board support
Date: Tue, 21 Jan 2025 10:33:26 +0100
Message-Id: <20250121-varsom6ul-concerto-dts-v1-0-eb349acf0ac6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOZpj2cC/x3MwQqDMAyA4VeRnA20gcnmq4iHtkYXmK0kKgPx3
 Vd2/A7/f4GxChv0zQXKp5iUXOHbBtI75IVRpmogRw/nyeEZ1MraHR9MJSfWveC0Gwb3jEyhI/+
 KUONNeZbvfzyM9/0DWaBevWgAAAA=
X-Change-ID: 20250120-varsom6ul-concerto-dts-a08be2a6219b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1196;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=Yrr6+sL4PDvZqpAhOqmq92ZkNW+ncfmsb3ojTV7Ynno=;
 b=kA0DAAgB0YBBQCmjqDYByyZiAGePafLI5kXIzUixcZ2/mO6PcFxRFi49bBVzfhtUNeiu9ofvT
 okCMwQAAQgAHRYhBIZIclGI3UAbuaDT/9GAQUApo6g2BQJnj2nyAAoJENGAQUApo6g2T/oP/2/s
 hRdTgAD8oO423tEY9PNlCv1U2cQAECgmXWNaqhM3kImMwot0Ng0rQgepqCR9sE4ZQ90uB/+yDq3
 PtpiLkJm8SxSPx2jT2/MezEgQNuHCjZiXBaYklKxKU4oAAb3NqDLhrGQzOstkPPCPhod7yY+CkN
 QupzZeI9ezCCX061W5N75uoyjP44+StBE/WshJDxOboe9S1tSN4rQWDAuLDib7oSFbxssvTNxxt
 sf2cB842TPd5j4mdP+Q9/9sxbAzUX1kG6N6Q819Z7GcpAoJupu4dntvG33aGkBIjk79gP2qTc2p
 x2Tn3IseLfAXzp/og3gYDdRWE9VEvV7db1G7o24DII9/PlEM3j3zNmtw6zSrImlCCo8DbEc7jER
 Y/GKzeouluZ8RVP/rOEQa22lKttzJsBc8aMbSSIw3qYX0ft4NxQagK1OzvinZMPi7TRniHd2Qlp
 ClfLXiXKvsZQzc3xX13aMlx2qn9CigCpDcUsjpuD81IN1es6Hk2r6EtQZVmQcTFXvBbcKbzKRl+
 x1LrBS8O7Yr5+L2A+BZr/foswK0QiS/1/+Qj7Uq7byOqsxog4Xcnn9RQNBVnXv91yH8tiKvByYX
 u02BofUAbLRsbV5B0U1pIL7VxDtcxKfmD+PLCHF04jZvt+U7N9SxG1vP3FEgXEfnzeeKd46X89w
 PF1gJ
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-GND-Sasl: antonin.godard@bootlin.com

This patch series adds support for the i.MX6UL Variscite SoM
(VAR-SOM-6UL) and the Variscite Concerto Carrier Board.

I tested this with a VAR-SOM-6UL_G2_700C_512R_8N_IT_REV1.3A (one variant
of this SoM), meaning I couldn't test all of the possible options of the
SoM - so this device tree includes partial support for it.

These are based on the 5.15 Variscite kernel fork but adapted for
mainline.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
Antonin Godard (3):
      dt-bindings: arm: fsl: Add VAR-SOM-MX6UL SoM and Concerto board
      ARM: dts: imx6ul: Add Variscite VAR-SOM-MX6UL SoM support
      ARM: dts: imx6ul: Add Variscite Concerto board support

 Documentation/devicetree/bindings/arm/fsl.yaml     |   6 +
 arch/arm/boot/dts/nxp/imx/Makefile                 |   1 +
 .../boot/dts/nxp/imx/imx6ul-var-som-concerto.dts   | 331 +++++++++++++++++++++
 arch/arm/boot/dts/nxp/imx/imx6ul-var-som.dtsi      | 232 +++++++++++++++
 4 files changed, 570 insertions(+)
---
base-commit: ffd294d346d185b70e28b1a28abe367bbfe53c04
change-id: 20250120-varsom6ul-concerto-dts-a08be2a6219b

Best regards,
-- 
Antonin Godard <antonin.godard@bootlin.com>


