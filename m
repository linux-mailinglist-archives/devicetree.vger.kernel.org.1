Return-Path: <devicetree+bounces-34500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FF3839FF0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 04:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E66C51C290A3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 03:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F5717562;
	Wed, 24 Jan 2024 03:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NNNMf8+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f98.google.com (mail-oa1-f98.google.com [209.85.160.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80317546
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706065550; cv=none; b=To+tF2MzDVmBW7fWpHIHXxIEWNoFaAgI4+rgypUlZuCvi7HevIjQhb3VOSUiq3Wh8Z/oq9o2AP0gEtlECylRj0s2dAJYCfArmzTXil+eK/vCyD8tIi0eyU4Ppw25NGGb2xpKg/rroz6WExsg5/A3Pxxc+ol2vJ7B8DTTfFDlv+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706065550; c=relaxed/simple;
	bh=OSS8fz0R/URNmGIQV9ECEcXaS+l2j4CeGiDfsdomdEk=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eSqWlOpwk4V85c0jS25uMerfeiC3i6mgyyY+LueP9DccJnAZs/xHlsYfkQ5xQg4ZaQwsz9lzUnh7tA1eloNMAuuJ6gOJA2WT8meQ8vT6ciOWabIbWWI++gHELwax2k3BggnSNWgj/HFfEFa8KeGvqRMwdgxmyXlnlgPZp968Q6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NNNMf8+z; arc=none smtp.client-ip=209.85.160.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f98.google.com with SMTP id 586e51a60fabf-21433afcc53so1877206fac.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706065547; x=1706670347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EWrjbDqCG/a53iknaUN5XiQX6sRbzWT8kV4u/Nqcod0=;
        b=NNNMf8+zkru3b2zWt0l9SPmsl0egRVmhcd6r5T9l8ZnNpEcnvCjvJGo6Kh46qVPNwI
         taiGy1aZU2FbfKuLE7V6UoUks5IO9AZB7NJqxG77jxQmcefprUgToYFMCzjpFNM964dF
         rhhuCjhGiiG5xaFl1XZkwVIjp/qJioqS88sq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706065547; x=1706670347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWrjbDqCG/a53iknaUN5XiQX6sRbzWT8kV4u/Nqcod0=;
        b=bPRjCr/VJR412OExDzTfyftOhpjPg4KIbxRKpe0y/MC62y9E4MEfukctGKDBVyMO0c
         tbOkDY+cKzcFzLw9+tqUCW5Fkn+wpfGQlIWiNwJ0gbKdKxPWNbRsmqkHCGpckCxy4iyf
         KnJwC9hf2DOSlNfkFEuyX/2E17jrko2bLiZu4qDF2xw/L5Sy3Vj6CfNBgoWeEvEMNhSR
         cHLZ0Qru+iv5KfJESxhqrA9dugHBNs1ZHx+DAFljDmXKfZ7gQUSoTbD2YxONWTNpcm8e
         PWcNie7yvdU+9oBM5YA5XdO5EfjHfSgmbR+qvCaBtoZuHyTHfORiJ7K3p4NeTZbDSaP5
         AJ2A==
X-Gm-Message-State: AOJu0YyOQucJb5HcSMsCauHmiESjhIcPMRfiJRxqE2Rt/hap+M9OuaNV
	UGpNLj8tJ9DD8xkn46nWPjrypXGioDMHdTk+y3P/wYwp0o/DMSJIA8nHyylB+OrFb3a76fr6Lvf
	RB2kOI5LRlw/z/hwViWgth9GvVzGMnw==
X-Google-Smtp-Source: AGHT+IE2vHfCyYBih52W5M0f3AGmJiw1Z9U9eEUslAe6KVnFMwBp5+AcLPHZaEhOIqYfPDx3p0JRjIIhi8Zi
X-Received: by 2002:a05:6871:2887:b0:210:9047:1e47 with SMTP id bq7-20020a056871288700b0021090471e47mr2612080oac.60.1706065547131;
        Tue, 23 Jan 2024 19:05:47 -0800 (PST)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp-relay.gmail.com with ESMTPS id c22-20020a056830349600b006dc7502beabsm455320otu.3.2024.01.23.19.05.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 19:05:47 -0800 (PST)
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
Subject: [PATCH v3 10/10] mtd: rawnand: brcmnand: allow for on-die ecc
Date: Tue, 23 Jan 2024 19:04:58 -0800
Message-Id: <20240124030458.98408-11-dregan@broadcom.com>
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

Allow settings for on-die ecc such that if on-die ECC is selected
don't error out but require ECC strap setting of zero

Signed-off-by: David Regan <dregan@broadcom.com>
Reviewed-by: William Zhang <william.zhang@broadcom.com>
---
Changes in v3: None
---
Changes in v2:
- Added to patch series
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index a4e311b6798c..42526f3250c9 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2727,9 +2727,11 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 	cfg->blk_adr_bytes = get_blk_adr_bytes(mtd->size, mtd->writesize);
 
 	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST) {
-		dev_err(ctrl->dev, "only HW ECC supported; selected: %d\n",
-			chip->ecc.engine_type);
-		return -EINVAL;
+		if (chip->ecc.strength) {
+			dev_err(ctrl->dev, "ERROR!!! HW ECC must be set to zero for non-hardware ECC; selected: %d\n",
+				chip->ecc.strength);
+			return -EINVAL;
+		}
 	}
 
 	if (chip->ecc.algo == NAND_ECC_ALGO_UNKNOWN) {
@@ -2797,7 +2799,11 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 	if (ret)
 		return ret;
 
-	brcmnand_set_ecc_enabled(host, 1);
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE) {
+		dev_dbg(ctrl->dev, "Disable HW ECC for on-die ECC\n");
+		brcmnand_set_ecc_enabled(host, 0);
+	} else
+		brcmnand_set_ecc_enabled(host, 1);
 
 	brcmnand_print_cfg(host, msg, cfg);
 	dev_info(ctrl->dev, "detected %s\n", msg);
-- 
2.37.3


