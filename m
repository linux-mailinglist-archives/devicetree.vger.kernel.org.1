Return-Path: <devicetree+bounces-247794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F55CCB8F6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8667B310DFF9
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF52B315790;
	Thu, 18 Dec 2025 11:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CyjYpVak"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A43315D2B
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766056003; cv=none; b=EHx8EwT2TbXtvrmMzhJkyVOwn3UBhv8G5qBkIgUw5GdlqVXgIxH1JjLxZ2tJjsUlMZNzbFuuNmjFInJCARAIKPBpZ/mAQcfBbx9RBposcwAC78JGzK2xGYVC+az5jBP9cgeDgvXtk1ivuMEqftbXNrCfVCt4FMGXkRfnc4kBjjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766056003; c=relaxed/simple;
	bh=gxnoIS1YUWSbg6L9HKTQ9iY5F7GsbV7NeqoguP9aqVU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hy4oFBFZ1OkYww67UAKkVO9bxJey7IVqAT9i4Lkk7frXP29Fqv+/3bqeHlqJ9EddYAdSi4Wc9xrEabOnUJRsTDXR4IZ5rTX/scTa3KDL+BHD0N/JsbG60nSL+mZhtvKb0aqJgP36BiERhJi8USzjLpZjOz4biT8IEYQSGc3gPU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CyjYpVak; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b9387df58cso893395b3a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 03:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766056001; x=1766660801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=76T2SjmDIqZyZD3OqG0HjQASUCl7IRYbYAxLx4z4J70=;
        b=CyjYpVakP2wMs9V2BUMqWSVh7EVAtjRnr1An0NgEMe4t5aIyZiX14DoVl9L80Vd/6u
         zGZ6YXSBTkRKF8/mw1MbvqqE/pN3ceAnzOX3Ikl2+G35czoCfr69XiWTmPXJrznsDW0+
         wvXriKHuWXSD3jrBWd51tgGz+ZiNoIexQ7CQC/3RM/zY603QBqmL9uQ2hIfIHoskwBy4
         iC5PGRoFnuSAr3rZwo9E+tc+0oA2J8j/bIqoxi15S5Nj0meWKqqYtL29H/MS3iymjpo6
         aADIfLBGTM7OsQAZHwTK0nP/TpvG9nSjGTS81F3GKJmfqm26w+Umx5yMLLdQ05sXc4yN
         YFIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766056001; x=1766660801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=76T2SjmDIqZyZD3OqG0HjQASUCl7IRYbYAxLx4z4J70=;
        b=RxKjfOc7R0bCliKsbrt5nzyz0NN0Mhr8iQqtZd37BC5BBl+ln9qGvRlYRKtGSlm/lp
         a4ttTUAncV9FTXdmMERVylQL7sC5pkKmkCosGt6bb4roappkuRSc8q23w16mw3Ux6uXA
         Z9BPDTJhF6kbr2qYPG7RX2P0avV/938FYJD9MJfLei3sVCzIjJE3OdGGIC8HBHeb879h
         HHAYKAFo0+ufLSbVqiIkne9eFPCKg9dOU1So20qN/pWpGgzUfYyAYYk3Cqnge7QD6siu
         mg/Iuxt/vf5Ycg5chRluYwP7DvokbJqWjGrjcYcrtSbs52kn8HwAhpgxsbXIS4/paxpH
         0AKA==
X-Forwarded-Encrypted: i=1; AJvYcCWfpNJB/hArfkKfmlTHsARQ3autr67ksghlc5o4ZeXC2ULwiw/C/8f84xuUAs0/23MSD7l+WKIBWfVs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt9VQ962MsLd5GVytjXA2ksmVutRnFPlAdX0l7VIUOcSYqDbpi
	CetgdxJtWGspuI1iVaso1kdHR1IkzW6ecHRPf7s+Ytbj7eH7cHRKKfs4
X-Gm-Gg: AY/fxX4wgnXgJEC/PcNdcI1d4pcgbnIvgN6LfPT+bdFLhB97XFI8hJVEkwGe2jiWEWJ
	Fa1JwZHS/hzXEkahxLC09/Gm5N/cxhFWDRd7R324xPbEfgUd2820A5Wj3+0uUmpcC54Nur4Elab
	UmCiPUoSKooD8ohtWBxYEPGD69GTHJ208XVnLAkParxbdDE6g6F61RJuKzG3Oi0uLrppi/sL1Lt
	dPibOck8PDHlpB0Lp+/EPrJOjBhWLhxlgy7AYvHnoSoZzuwKj6h+05OgR6LLy/UgKPYzQJKCOUZ
	Espcwc/uk73NC/8A2qtmcmJIheXpd4wOwedP32nHYjrnkM9iQnIQhvrZhopu2A0VAApmG6MbdA9
	HT+6Zoj/G+6261cZuROyLgSYmPuax3b8FDZoJuN4rfNBMHoMFITidOU5RoAL8QppHv59uZm7JnZ
	dREjD2v63gUlmjkk2kirjpmWH/
X-Google-Smtp-Source: AGHT+IG3ph1IvSh4XGZD1On2HARUs44QBwXvbTKA0eqE3qKLwVQGAvZjsH5QN7Zc+P654QlMWsTQcw==
X-Received: by 2002:a05:7022:5f06:b0:11d:f44c:afbc with SMTP id a92af1059eb24-11f34c436f1mr11885266c88.37.1766056001412;
        Thu, 18 Dec 2025 03:06:41 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cbeb:945e:cfcc:849a])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12061f473ebsm6896718c88.1.2025.12.18.03.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 03:06:41 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marek.vasut@mailbox.org,
	neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH RESEND v2 2/2] drm/bridge: fsl-ldb: Allow the termination resistor to be enabled
Date: Thu, 18 Dec 2025 08:06:26 -0300
Message-Id: <20251218110626.605558-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251218110626.605558-1-festevam@gmail.com>
References: <20251218110626.605558-1-festevam@gmail.com>
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


