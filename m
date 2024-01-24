Return-Path: <devicetree+bounces-34498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AB3839FED
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 04:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84E671F2C1E7
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 03:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC6C168CE;
	Wed, 24 Jan 2024 03:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="BdM+I+jF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f97.google.com (mail-ot1-f97.google.com [209.85.210.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBB616431
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706065547; cv=none; b=BnERBco9UzGj4HNKPXcTmOL/Xrg8BvI8zqeq4VYrPL0V9xQgAuXx5F094bf1mhI/ug2jw85bEBnYvz6T8oNRgbT+G2U3EbsPxe46HqomCVLzehlh8t2BVMUbufapsqKrumE2FAHsOTw6Oxwpqo2wosnWMOAr2xv6hxLeTR3l+qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706065547; c=relaxed/simple;
	bh=b96KHiREw74fMJzr8TANv0oixW52LFoZ3Qwcx7HFK/s=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pUrOdeqSpb61RZX4mLDxlUR89FXPP/Bipkc7eZnnI4OTVBZiA+dK2wzyT+KUphfR59nM3s7DO4OzmY4W9/1guqp5LzEkote04QcxHanoMxWQ1a+DDT1A6jGpQVNIJfcQFhM4ZshmFZxuY9HPJWnGvjgVLwsmpP2vsrEdJBVjL6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=BdM+I+jF; arc=none smtp.client-ip=209.85.210.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f97.google.com with SMTP id 46e09a7af769-6dde1f23060so3183710a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706065543; x=1706670343; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A1sI7nRj6Sb3+vzY3tBFzwAr+P5ADn9TFjJ984wNlHs=;
        b=BdM+I+jFJEq8+8qel0EoYBm2QVm0uXFjBy3PlLuZVVNF7wiCps9yRG0xEPmjpLUXJT
         y4f8VMnbmt+8Yz1+5feSKUjcZHxbTJlcMX2ZMZmGwM5UL5qwgLnLRi2JU0+5AUGqTWmx
         mCSIr6Q6Sc2eJNJRoa7i1QLI2U2PhME81N7r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706065543; x=1706670343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A1sI7nRj6Sb3+vzY3tBFzwAr+P5ADn9TFjJ984wNlHs=;
        b=IquHwvwJF7kLzmKaPoMB9NQ+LCJel+6ZZmMYFYbOeSFIo43O4hI1aDUOTc69gyIV1G
         CulTo79so9xFOpW6ID0fX2HsUNC7gpooLz8oXlruf8wFv+zqNwScYnDODS1Ikdjk04fh
         le1BgRCB1yATnA8KvsCoYP2RqVPopcEeVjBZsLUwfZVIQxGrFEqEssphsZRJYCoPOV+c
         VGT/C98Q+3leka10QGUGUSwP59cCNTVQez8r/F0RjSpaZ/1ho5u0humbsVkULh6jP1xN
         6Dc0Ts+4XMKi4lOlTF9jBkTLjOeb2xSVc8Yz5dgR7Zp8dcpQkMztqIv2qDh+8H2zkKqc
         8D9w==
X-Gm-Message-State: AOJu0YxGQg9XLaYFe1Ywzhx8AxaxknR4HkTAU05kaIH0vBceh80NMkXI
	6+SET0icyFDC7l5SyeKlzArSKTaViQa2H5NpoyHV/1LsrpCcCyxlAPVJgJg3JDYuYnSciyjTd6y
	DxTRlo/TCu0VuRU8vLpr1fvWAuIE0uQ==
X-Google-Smtp-Source: AGHT+IE6/QlqXprWei1rIePUFWUKuwHJE0/o+ALcxQ84BQGJO6Em+rTO6MQXs78sdkGu/UVrkZ0YG02crven
X-Received: by 2002:a05:6830:94:b0:6dd:e9ee:2568 with SMTP id a20-20020a056830009400b006dde9ee2568mr811597oto.22.1706065543726;
        Tue, 23 Jan 2024 19:05:43 -0800 (PST)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp-relay.gmail.com with ESMTPS id c22-20020a056830349600b006dc7502beabsm455320otu.3.2024.01.23.19.05.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 19:05:43 -0800 (PST)
X-Relaying-Domain: broadcom.com
From: David Regan <dregan@broadcom.com>
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
Subject: [PATCH v3 08/10] mtd: rawnand: brcmnand: exec_op helper functions return type fixes
Date: Tue, 23 Jan 2024 19:04:56 -0800
Message-Id: <20240124030458.98408-9-dregan@broadcom.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240124030458.98408-1-dregan@broadcom.com>
References: <20240124030458.98408-1-dregan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix return type for exec_op reset and status detect helper functions

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: http://lists.infradead.org/pipermail/linux-mtd/2023-December/102423.html
Fixes: 3cc4718fa644 ("mtd: rawnand: brcmnand: exec_op implementation")
Signed-off-by: David Regan <dregan@broadcom.com>
Reviewed-by: William Zhang <william.zhang@broadcom.com>
---
Changes in v3: None
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


