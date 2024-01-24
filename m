Return-Path: <devicetree+bounces-34497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07660839FEA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 04:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AFB61F2BD79
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 03:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828EC16428;
	Wed, 24 Jan 2024 03:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="hSlbnvx1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f100.google.com (mail-ot1-f100.google.com [209.85.210.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6675DDD6
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706065544; cv=none; b=LsgVZB+ug6tFwrJk6CBriSAyGRGsFWxqQhnPm8Dq9YbyLV59FHeFyVAXEQLrpVV6A1nTfolttD2dBzJ+auFL8EoeRnwiYy3jSYgNs1Do8KjJHOzNoRolJb1pGc6U5JcCmteH/3hq5zn5Ta/RD3Uxsb4iyPLAOEmdy0FUT3lwH2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706065544; c=relaxed/simple;
	bh=TX91Mzuk9qZQGswZAthzVUugJ/C9pE18baUJzbQpYeE=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xa6SxQ8m0ZROjAlTjOpQknftlEdUNWZe1HBoNDapPzISs6CxcQpHcBmeDEtQGuWfWO5Fd4ZX9PoZANpCZfn3fH65fTNQKhN1eH5l1y5KCXcdVnQrAtCOHNhOb8PF+JRPaQTD+PTCHFUIF+AugdiA5h7W34VcEUpX8LFQN6hgOwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=hSlbnvx1; arc=none smtp.client-ip=209.85.210.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f100.google.com with SMTP id 46e09a7af769-6ddf26eba3cso3240561a34.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706065542; x=1706670342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T27qW4zzYD2KNCPRIh3CSpIvD6wIUQ7nz6JSAMgdquY=;
        b=hSlbnvx12nooniGky0BTeb9H5ZMb3LO+akCE9VWHNsZnotYvJKJKscRg4JDcu69P3e
         qRoB6vcHOorckaLUx8wMvDl0HqVyfiL+9zz+O6vQ5/LdVn0AJxzO7YJFlOfJWmJB6gd3
         ogxVlep1bPNgrdgPHNOolZSVXT2ZfywCqsQtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706065542; x=1706670342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T27qW4zzYD2KNCPRIh3CSpIvD6wIUQ7nz6JSAMgdquY=;
        b=nhfEC26GazRwGNlZ717ti4lYDgT84fZr64K5EPyB5Q52u+sSwcqP2KmPcGlFEC5DdT
         31X+n7fOLFCAGLfc0EpLpj8tLGnnzoWfKnPNEXvzmo5Cdpj2YWoe2FWa+m/zXEGjArgt
         zcCI0j7QgbPG6533iWpKrwb4QcvVhJrzAmr+R380twQp0tNSd0UjCvKv45Qi9SogBsVB
         xVGEPCQwoeKet07ycKlY1jThRUlkxM49XJBa9DkujLD93FssnhwVXd0Ga9+9j2WxnWF+
         ln+AKatJWdJpOoGbaeN2kUQE52V7b459ZHoEkUJ8slLKxlRXKtcCQN/9jNkVrAJX8c3h
         qj1Q==
X-Gm-Message-State: AOJu0YwU+GkV4YOc2VFyvte57+GuULu2Q2Ihuzly5nIwe1n0Dshs8+nE
	HwHdOpG9Uxl/oQpLeuLaZXp0zSMkAhLj7dQS51DlXX4lIGjHTFj1yfyd3CzXqM44PBtiCyEjB8L
	+vVxCiMhuMCYLyM+CLwM+MsubKnmncA==
X-Google-Smtp-Source: AGHT+IGIA6CSGHXai6wCUvWT+JTuolGf8dL4LUaj4MqP2aGMcA51O74ZV5BcrivqiVpljg8gEORZQAU1vCtL
X-Received: by 2002:a9d:6ad5:0:b0:6dd:ef0b:4f62 with SMTP id m21-20020a9d6ad5000000b006ddef0b4f62mr879830otq.77.1706065542092;
        Tue, 23 Jan 2024 19:05:42 -0800 (PST)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp-relay.gmail.com with ESMTPS id c22-20020a056830349600b006dc7502beabsm455320otu.3.2024.01.23.19.05.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 19:05:42 -0800 (PST)
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
Subject: [PATCH v3 07/10] mtd: rawnand: brcmnand: Support write protection setting from dts
Date: Tue, 23 Jan 2024 19:04:55 -0800
Message-Id: <20240124030458.98408-8-dregan@broadcom.com>
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

From: William Zhang <william.zhang@broadcom.com>

The write protection feature is controlled by the module parameter wp_on
with default set to enabled. But not all the board use this feature
especially in BCMBCA broadband board. And module parameter is not
sufficient as different board can have different option.  Add a device
tree property and allow this feature to be configured through the board
dts on per board basis.

Signed-off-by: William Zhang <william.zhang@broadcom.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Reviewed-by: Kamal Dasu <kamal.dasu@broadcom.com>
Reviewed-by: David Regan <dregan@broadcom.com>
---
Changes in v3: None
---
Changes in v2: None
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 869ea64e9189..9a904c7c6dad 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -3081,7 +3081,7 @@ int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 	struct brcmnand_controller *ctrl;
 	struct brcmnand_host *host;
 	struct resource *res;
-	int ret;
+	int ret, wp_dt;
 
 	if (dn && !of_match_node(brcmnand_of_match, dn))
 		return -ENODEV;
@@ -3218,6 +3218,12 @@ int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 	/* Disable XOR addressing */
 	brcmnand_rmw_reg(ctrl, BRCMNAND_CS_XOR, 0xff, 0, 0);
 
+	/* Not all boards support write protect (WP), check DT property */
+	if (of_property_read_u32(dn, "brcm,nand-use-wp", &wp_dt) == 0) {
+		if (wp_dt >= 0 && wp_dt <= 2)
+			wp_on = wp_dt;
+	}
+
 	if (ctrl->features & BRCMNAND_HAS_WP) {
 		/* Permanently disable write protection */
 		if (wp_on == 2)
-- 
2.37.3


