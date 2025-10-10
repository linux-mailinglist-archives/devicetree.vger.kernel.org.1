Return-Path: <devicetree+bounces-225279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C8BCC2C7
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6CF019E3742
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11399267B07;
	Fri, 10 Oct 2025 08:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dA7qSXPr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F12264A83
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760085694; cv=none; b=VxOQs+D52Gqp0UZGaDipFZZ7PyUKkF9H+jwP6hNscX45mTMO3g+ywKxw+EfwdfzUDkR5jH6dzPtjU2O6TeNlX5td+aPjJ3YjvJn0PLDU7/iNBYCrTGatRolYWRohM2YHULtger8adDL3b9GYAfSraKl6MGkIG5AajpQel6JvwRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760085694; c=relaxed/simple;
	bh=bQmXdISAbQ46rKv2iVyeALnxGy/0LVQ6ve958EU5XJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c9vKbkOvwe24JH+Wg66AWZTzfp2nNyfck6gCEBdD9svQsijAhvf/F/KYepXUEPnZTnHSa2c/a5k/2QvMfp42r095euYxkibhJ22JXY/SVCg490/1Vp+kR3Htg7XPfxdTp5lpdLM1gdQw4zyY31yjCkH/sEEB9w9TxPNI/Lunl2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dA7qSXPr; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A5AB3C08CC4;
	Fri, 10 Oct 2025 08:41:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4F4FB60667;
	Fri, 10 Oct 2025 08:41:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 755F7102F2209;
	Fri, 10 Oct 2025 10:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760085689; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Tz6sO687jYJvFjSGzi40jW5mXg89go39qIQP/ZY/9eU=;
	b=dA7qSXPr3VO1LBX9C4BFa+KRCB0w28b3tqz76DVgpL4xMVKUsiUcNDf/zvSCnw+FL3jZB4
	pJSx6IqqOv/kQ2FeVbTwxZalDWG1tX5gjTC2+XeoDmTMkFTgb4q1RgpVdcIZWAKXh3dPD/
	Sz6QsvviyN2nglOQiAmih0EDLg+oQd7xke0187o7QuU3RBYqpfCF9zaP552Xk0oZWdO1DF
	eK10tV1NqVeAPD3cXz7wr/xanU5WelK5m1GiWHCIYeecCvhLCkXitomLDWJ2nUjycaIKd5
	LKF4KbV+biW8BWgfHVCTRcQ8Tmwtip/G5NI47+9nZxpqTRFpSa6LaIdBzO9H5g==
From: Richard Genoud <richard.genoud@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH 01/15] mtd: rawnand: sunxi: Remove superfluous register readings
Date: Fri, 10 Oct 2025 10:40:28 +0200
Message-ID: <20251010084042.341224-2-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010084042.341224-1-richard.genoud@bootlin.com>
References: <20251010084042.341224-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The register NFC_REG_ECC_CTL was read twice and the result was not used,
then a third time with a mask applied.
Removing those calls didn't change the behavior.

Tested on H616 SoC, scrambling enabled.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 162cd5f4f234..10a48e0d361f 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -623,13 +623,12 @@ static void sunxi_nfc_randomizer_config(struct nand_chip *nand, int page,
 					bool ecc)
 {
 	struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
-	u32 ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
+	u32 ecc_ctl;
 	u16 state;
 
 	if (!(nand->options & NAND_NEED_SCRAMBLING))
 		return;
 
-	ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
 	state = sunxi_nfc_randomizer_state(nand, page, ecc);
 	ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL) & ~NFC_RANDOM_SEED_MSK;
 	writel(ecc_ctl | NFC_RANDOM_SEED(state), nfc->regs + NFC_REG_ECC_CTL);
-- 
2.47.3


