Return-Path: <devicetree+bounces-240028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A3CC6C626
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 5CEBF29632
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC57825A340;
	Wed, 19 Nov 2025 02:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ffe7qiNK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5CB217705
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763519421; cv=none; b=sMhqgaOpaBj1KcjxRFOn02DODwYxqieOSm4fVFpyY+dzIf9GyDVNzbmW4qu7D9cR7xGOmSNcLipUXnANfMKnQVut82ofIPV0W0BVXmu2AUfEq4X7G0x0gBj3iqoEItIzYhNknaf3LnILg42CNiBrj2aYdbG+AGQq0eGLDZBtnRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763519421; c=relaxed/simple;
	bh=gxnoIS1YUWSbg6L9HKTQ9iY5F7GsbV7NeqoguP9aqVU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f0qZ6JcL/YM0ymieHqvrX2OhepwoMIV+ntqYFKW9dQ9/2lSIiMkOv7LtkKmoekDZq9trjbcJxtsCirJvVLnkoUlZiGVSvBXmGZddNt6w58Y2hwvnPLru8e/4zqWW8hEFfGZxLfAJ7XR0Ve15Pex1r4dPU2zuMHLIlX8xDhnbLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ffe7qiNK; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3438231df5fso7330416a91.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763519419; x=1764124219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=76T2SjmDIqZyZD3OqG0HjQASUCl7IRYbYAxLx4z4J70=;
        b=Ffe7qiNKoFKD7oGy6yRmOamZ8KGZLO/evoMTDPIzJ5bonSBj3a6VQxFhUExXaDYI7h
         sXT4cD1FeCcmjw2nb7pJdjYKR7m+t32nh3IsoTkEJf4Shpmjy6tlLA5N4RnhBCZYK+iQ
         MXa2QpXujfNVbCv4LKDCmF6cOvs59Yq69XbVFe9IaxT9AZo/JASBdkagQw3i1lGcezK2
         ssEqfZPnMScyUNmjMmTOQ9JU219B8ri07sfPq2Udcwyr5UC1wYBezXCiyGkErbZ8LB+f
         5ggOzL75Ex1VdDhTpI82HffUJEz80DLexHQGvRXsSCKSFLQguxhCSN1x9sSUybsC7kae
         bdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763519419; x=1764124219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=76T2SjmDIqZyZD3OqG0HjQASUCl7IRYbYAxLx4z4J70=;
        b=JxRVv355k2u/Ty6+7xr5efRBryenBUj06Imlnaarv0hgJN5J6gHgFKpui7KLuluE11
         S377L2/PUDMj5nFZhIhC19N9gr5u/IyctDL94e0jH+79ToLsWEvBpXAhZzbVrq6hdxt8
         nAfIZIFVdMGyZ8B38n2FGRsNjWob3bYQsFBvhdbuxMacm7yOGqUvj/WIIK85HX3zh9Og
         g7mOyTwdduajb9f4jX8y+Nm0YZBAgB212a1hSQRDPf6L1/ieR/EuvFN64OuRRnSLIaXH
         hQeJZs9xlP63HbQD4OUCXfC8VTa1RDmiYVAzwqD5zSfDaoOqabDf+Ya6b5J8AsPNqTEk
         IHsA==
X-Forwarded-Encrypted: i=1; AJvYcCVobE7fEwwN5o53U2xMQPRmQy2JKtmO6uG0CCr3HBdOan2ljJPNjxZHGPftlpf1Qp11XOLzz5P5X3Zl@vger.kernel.org
X-Gm-Message-State: AOJu0YxaecMbei1pS74Or0FR7vDhTPpOSPVwrZrlsJ+VeScGamFNhbUA
	6nA0ZgUiQHUPCxlwdNpht+jsla9DFOE65OQkDD6xqpRzyIXmWzLgD3GY
X-Gm-Gg: ASbGncsP0ndmit6JPO+Ft1tBdErXBQt1s4ZDbdEFGDaZcS7tjzgvfqCkQ2BkIhPALNw
	uuYf05/s5/tCXZcWcY6q/AUeAEVYJZrhkKXQ0v3b2jJcTLzjsg+ZkNYLKBhuIvBALhLA+1FP1q+
	QwBUYayEUnqgrtcrRWFu1blLveg0wE1E8q59c9uSh7e02N+4TZst6ehgO+nijO38cSL49m+FG6F
	EAWvvPWZAw3S5N8U0zHA6cGRX2TXBTrYIUKbenKfzt5lGKFhEgo4Vma0lZJgUXOD1D58ifR/eEh
	49VLkJxTYgPjaYfrIr8FSbFLTGc5LTvIroJnSVeMGjqi4NCOTl8tJNbSoOKMHuskNeqNAy9FYsp
	Q2MZFg9r83tqi/B+ZCeVQH/dDx2uS+mozITZyFWlCI9fUPuuEnwV+S4jgs1+ujlPZm0B4/p7v6F
	Z/8liC3ReJI/VMIry7qZFTmUJ8
X-Google-Smtp-Source: AGHT+IFWZ5/K4rKe/g3YbwS6+fpTcdZCtTl6icmOpbHtBhpTsB7wajSZbBxQF3fAXwGOOtNoN85Uqg==
X-Received: by 2002:a05:7022:ef04:b0:119:e56b:c749 with SMTP id a92af1059eb24-11b40f92c5emr8189781c88.14.1763519418927;
        Tue, 18 Nov 2025 18:30:18 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8863:100d:2a2a:9a74])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885e3sm65842955c88.0.2025.11.18.18.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 18:30:18 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	Frank.li@nxp.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 2/2] drm/bridge: fsl-ldb: Allow the termination resistor to be enabled
Date: Tue, 18 Nov 2025 23:29:46 -0300
Message-Id: <20251119022946.268748-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251119022946.268748-1-festevam@gmail.com>
References: <20251119022946.268748-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that allows
the 100 Ohm termination resistor in the chip to be enabled.

Add support to setting the HS_EN bit when the optional property
"nxp,enable-termination-resistor" is present.

The motivation for introducing this property was a custom i.MX8MP board
that was showing visual artifacts. After enabling the 100 Ohm termination
resistor the LVDS signal quality improved causing the artifacts to
disappear.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Change the property name to nxp,enable-termination-resistor (Frank).

 drivers/gpu/drm/bridge/fsl-ldb.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fsl-ldb.c
index 5c3cf37200bc..b4b9130de32c 100644
--- a/drivers/gpu/drm/bridge/fsl-ldb.c
+++ b/drivers/gpu/drm/bridge/fsl-ldb.c
@@ -92,6 +92,7 @@ struct fsl_ldb {
 	const struct fsl_ldb_devdata *devdata;
 	bool ch0_enabled;
 	bool ch1_enabled;
+	bool termination_resistor;
 };
 
 static bool fsl_ldb_is_dual(const struct fsl_ldb *fsl_ldb)
@@ -212,6 +213,10 @@ static void fsl_ldb_atomic_enable(struct drm_bridge *bridge,
 	/* Program LVDS_CTRL */
 	reg = LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
 	      LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
+
+	reg &= ~LVDS_CTRL_HS_EN;
+	if (fsl_ldb->termination_resistor)
+		reg |= LVDS_CTRL_HS_EN;
 	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);
 
 	/* Wait for VBG to stabilize. */
@@ -292,6 +297,7 @@ static const struct drm_bridge_funcs funcs = {
 static int fsl_ldb_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	struct device_node *panel_node;
 	struct device_node *remote1, *remote2;
 	struct drm_panel *panel;
@@ -340,6 +346,9 @@ static int fsl_ldb_probe(struct platform_device *pdev)
 	if (IS_ERR(panel))
 		return PTR_ERR(panel);
 
+	if (of_property_present(np, "nxp,enable-termination-resistor"))
+		fsl_ldb->termination_resistor = true;
+
 	fsl_ldb->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
 	if (IS_ERR(fsl_ldb->panel_bridge))
 		return PTR_ERR(fsl_ldb->panel_bridge);
-- 
2.34.1


