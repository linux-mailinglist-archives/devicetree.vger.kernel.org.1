Return-Path: <devicetree+bounces-33081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC68832008
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 20:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A8428AC34
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 19:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0748532C63;
	Thu, 18 Jan 2024 19:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SYBN3+/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813E834189
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 19:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705607677; cv=none; b=KWBR10e/Bx3MEXCSl88KObKupyhY+p5eT76YXhXnS/UhcD2k9Z7Iyrj46kk5RrrVdZ3wB6gC/QAQRBga6JDSitvvl5xRhed/HiWK9Q8HecewWMMFKBt7NX5Ih1i/5hXCHZaIB1aZAM5lEWv2hj4++07YISF1nOqOkJy1tkA9Ms4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705607677; c=relaxed/simple;
	bh=2/VBr1dPPbVpD0tbtzj+3gKJddRUtZKiY5Pdq6zeFIA=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sP95EVSQuzT81MMhZ1kNl4eBadqI08hIjoe2ze3e9ZWuf0CsJyTWBkk7CiB+zbhcCKdh0HHBNnEBv8ItdmY1C8NobUbfrZkQzrlJMX/yJIr3af1r6WOSGXivVMcW/NoOZVp0RgZbq6tPM4oduJ+2OXHbTQZId27IuilvXMl1+G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SYBN3+/T; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2903b069de3so78484a91.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 11:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705607676; x=1706212476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vQ0KMT7YinNWTDLRkt/ik0/tsSQLLOEO8iME5kKq+rI=;
        b=SYBN3+/TRpQ3mivZx12UGSEDqF0GWCifE5iEg/orRF8BOqLsWl5SWVbhz5dfeEy8vy
         X9Mv/gUMCWvbI8VsfL+OgynLHQNL8Qgmq8sHf1Mx+XsamjjXik46tzwFFDmAfpLWVp5q
         XYPq8lTqfoHqnDpEQOrKTqtOznl0Jbt91ME94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705607676; x=1706212476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQ0KMT7YinNWTDLRkt/ik0/tsSQLLOEO8iME5kKq+rI=;
        b=uzXNU3BWZ/4IBR9Vp5FY9K17CBXIDfkz2LrzRDVQdI6DlnGoVnBNY9ijCesoKLsdWZ
         OTTxB2PY2Ivj9iGmXEu/BMqGzkUf77bzVWBluan2sEym+cDSG+m7pbBf+ECQDDO7XXlH
         4FbPS7wxbv6k9KzDZ4ishhbg54dvVWa2xaAJ+n+ZkPTIGQ9jWlAs4VVNs7BUYGQsy7yr
         2ehKEVkB2Qh2J8jU3TiqVbDB3uIa0t3foR3mXQ0JpD6hNPQPujRTyzAT2Mar+jCMTvlN
         xSahdHYzosSShVHBFezDegr0UN7LREAdClHIgSLHyf7lMJ/X9g8YJgBrAmgLZd7yL3s1
         ln0w==
X-Gm-Message-State: AOJu0YwruIZuHL99ga3y3wEYvteV3Qp/wcMlAwf3hoMlQlrd0BClMmT7
	W+/xJPDHa1WCy9lpxVAaSjYXu5DKhjX+mqyz2hrB5hLamqCf+MS+XiYAzL98Fg==
X-Google-Smtp-Source: AGHT+IGJ5PSS/zL5LeT8Z2TjlL7IRE7vXLwG16dkY25ybhY9hLXWwD/0TI/ZkCDk1mnTsOWnNsSZLw==
X-Received: by 2002:a17:90a:740f:b0:290:4168:e0f3 with SMTP id a15-20020a17090a740f00b002904168e0f3mr415735pjg.99.1705607675755;
        Thu, 18 Jan 2024 11:54:35 -0800 (PST)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id rr12-20020a17090b2b4c00b0028d9b5d41edsm2263805pjb.38.2024.01.18.11.54.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jan 2024 11:54:35 -0800 (PST)
From: dregan@broadcom.com
To: dregan@broadcom.com,
	dregan@mail.com,
	miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	computersforpeace@gmail.com,
	kdasu.kdev@gmail.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	joel.peshkin@broadcom.com,
	tomer.yacoby@broadcom.com,
	dan.beygelman@broadcom.com,
	william.zhang@broadcom.com,
	anand.gore@broadcom.com,
	kursad.oney@broadcom.com,
	florian.fainelli@broadcom.com,
	rafal@milecki.pl,
	bcm-kernel-feedback-list@broadcom.com,
	andre.przywara@arm.com,
	baruch@tkos.co.il,
	linux-arm-kernel@lists.infradead.org,
	dan.carpenter@linaro.org
Subject: [PATCH v2 08/10] mtd: rawnand: brcmnand: exec_op helper functions return type fixes
Date: Thu, 18 Jan 2024 11:53:54 -0800
Message-Id: <20240118195356.133391-9-dregan@broadcom.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240118195356.133391-1-dregan@broadcom.com>
References: <20240118195356.133391-1-dregan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: David Regan <dregan@broadcom.com>

fix return type for exec_op reset and status detect helper functions

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: http://lists.infradead.org/pipermail/linux-mtd/2023-December/102423.html
Fixes: 3cc4718fa644 ("mtd: rawnand: brcmnand: exec_op implementation")
Signed-off-by: David Regan <dregan@broadcom.com>
Reviewed-by: William Zhang <william.zhang@broadcom.com>
---
Changes in v2:
- Added to patch series
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 9a904c7c6dad..6b5d76eff0ec 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -625,7 +625,7 @@ enum {
 /* Only for v7.2 */
 #define	ACC_CONTROL_ECC_EXT_SHIFT		13
 
-static u8 brcmnand_status(struct brcmnand_host *host);
+static int brcmnand_status(struct brcmnand_host *host);
 
 static inline bool brcmnand_non_mmio_ops(struct brcmnand_controller *ctrl)
 {
@@ -1749,7 +1749,7 @@ static int brcmnand_waitfunc(struct nand_chip *chip)
 				 INTFC_FLASH_STATUS;
 }
 
-static u8 brcmnand_status(struct brcmnand_host *host)
+static int brcmnand_status(struct brcmnand_host *host)
 {
 	struct nand_chip *chip = &host->chip;
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -1760,7 +1760,7 @@ static u8 brcmnand_status(struct brcmnand_host *host)
 	return brcmnand_waitfunc(chip);
 }
 
-static u8 brcmnand_reset(struct brcmnand_host *host)
+static int brcmnand_reset(struct brcmnand_host *host)
 {
 	struct nand_chip *chip = &host->chip;
 
@@ -2492,11 +2492,14 @@ static int brcmnand_exec_op(struct nand_chip *chip,
 
 	if (brcmnand_op_is_status(op)) {
 		status = op->instrs[1].ctx.data.buf.in;
-		*status = brcmnand_status(host);
+		ret = brcmnand_status(host);
+		if (ret < 0)
+			return ret;
+
+		*status = ret & 0xFF;
 
 		return 0;
-	}
-	else if (brcmnand_op_is_reset(op)) {
+	} else if (brcmnand_op_is_reset(op)) {
 		ret = brcmnand_reset(host);
 		if (ret < 0)
 			return ret;
-- 
2.37.3


