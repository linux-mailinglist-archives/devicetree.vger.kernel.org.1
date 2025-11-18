Return-Path: <devicetree+bounces-239818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBCBC69964
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 50B2D2B2F8
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A1134F259;
	Tue, 18 Nov 2025 13:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NzImhdyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0247F34EEE7
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472264; cv=none; b=nIE530j+HV5YVNbl2wcKOCx2XKCAAo9esfnOpSTB6PDucXZ0puR06dJPEGH5K5LSFDW1EiMuZs6nyxPUA7V9QCtj4iZOGY/CWwbWJQahCaFV6vG1G+3Ppe1cgaX9NCEyBxlq0W2Ccnlgl/uuicCTLNxvmgTumZU6sZK3Oc2UrSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472264; c=relaxed/simple;
	bh=nrVvKVPMDys7+pn51iht7pFwzCmFfYNRJnrvmozCIhA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=giFjcahvWWKCVpJRTuG5iZdx+tC6VFuLOVxw9/4bUHQe3vf/nivXt/OikvMWhPZ9Gz56FNBqrCNNw2awY6bfGVp0paYistrJIdQx2Xi3kG1S5BGTB9TqDJbQV3NtDi19E9odnfz0xsBS/j1RkzVFwOodk4dgMnRNXIGr5H6Og8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NzImhdyE; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-ba2450aba80so3179704a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763472262; x=1764077062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hXSbnHm6t1xwsrf3rAhpWlksErvS9cqFGgpRmks8TA=;
        b=NzImhdyE4CtScwfpTbo7q2NACNp3vcs9HbloIofJhsSz9shulw59PFpbvCBzHxuqZP
         R0HRjdUVwQMC6uiqP3jjvPumVvD/dnQxpLmHqrAJ0bq7yQxYGH7iNZoAZvqYCi6kjCma
         xHZ+G41yfZOJP3q9v95DS/9wUe6bCWx6LlBnCOw6FdudfBd5Rtog0sAWWEGAfnjwdwpH
         MW652Wp9D3liM9xpl2CSgWneLJe05wQaYbtdbEe8GQaqXlk6EGLUpj2yXcbzqV9hVogy
         oeUvRjbnWLe8XnCoiIqQFo0sClfoZAP7IgCVV5ajEeBM/CEKWdgxvrkuavjCbt0hasCH
         7GfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763472262; x=1764077062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6hXSbnHm6t1xwsrf3rAhpWlksErvS9cqFGgpRmks8TA=;
        b=H/8tD8o4GoLhWpUqEsnZ0SW8ZnRBh3LWkOXNQ7lgPuzMtNrKQz72B/5UAiGp9fyDxd
         psEEB273l/ADdPk/GoG6vEzxgnCLPi4jgxED6/t/OnkkxfzLOSsN6rFzSp0thanN1qXS
         PqENEWt2/IHczuEAJXTjn49sTdhxg8hlcNs09brFl6IERwE3yHIgNW8gtw73oL7N/Lf3
         iptyTU8ZZGu+oxozytoFWo8eoWjfPz8/JJ2nlXa1HCE7xuawG5H8i1hr2R6uNMGLtMFU
         nC8y9HtljWsOQf0GF8S6z9b2zL3qKtBvwf1Xbjpdk2bOXVgfekZ1r1WacB9brxnYIvnS
         8eLA==
X-Forwarded-Encrypted: i=1; AJvYcCUZbBSojxEmYkKX/WQfcXi2o+bvazycjJC8zQw5jmjX8kghuh0xpFI6F9Hv7Lz4d7uFT8JLk1csfmio@vger.kernel.org
X-Gm-Message-State: AOJu0YwP1CjNhlqcX3tRxCHmRTKcMKyrG2esIINjjowocHKHAkangldm
	FS08pEfsUpBagirBbLVIFuFo3efhoN9Oi153+BKhOKJOxr13oBR7yIlJ
X-Gm-Gg: ASbGncvGLqdIS3lZ0XF03qOAvD8quwf9gg9WduH4yIgH5qDu5803ZYEYosa5bwBwcLS
	TCQowAIxkOR39KYu/2Hlxh/Ve5HAQoVVHb32qlAFpV5d0RWCjIGyKsAWU1w3jyMoGmMJE6X72s4
	RqKVmIJoFqtEXEUcO2Gjjs5i3kdxjDnNEHQE7O3y3FJ0DsSn999F9RQuXuHx/Am0vnsVuNohKfN
	plFRwO2LHr+VK8guGpq9kVtd4YREzbYKdMGefmUyUuGkKSdZisLZArJoMc94Sjl+LfAqLhpQZ9C
	NDhin3lcVWbWrml4tPdY/a3iK9Bp6L9TlrCHIEmahdB85Jnm7zD9Z/gqIhVG33LUVNEwdE3RqTh
	pklv7caa3oSUfYIKT/hBzfpo6M/1nX4e7/pWXtAFKbZASYgkuzSuNI4m1dHphHQud78HG5axVBu
	xivPye6LUGasmBqhl+2rU8zjn7
X-Google-Smtp-Source: AGHT+IFhUJLNI6WkwxrwX6i+ajwcFC2UIUOOt+osC0yXDq0Qu22iYDG4x3pZGm/s+SlIjd1xxE4mmA==
X-Received: by 2002:a05:7022:221:b0:119:e56b:98ac with SMTP id a92af1059eb24-11b411ff181mr5715909c88.19.1763472262203;
        Tue, 18 Nov 2025 05:24:22 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8863:100d:2a2a:9a74])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885d8sm66885134c88.2.2025.11.18.05.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:24:21 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] drm/bridge: fsl-ldb: Allow the termination resistor to be enabled
Date: Tue, 18 Nov 2025 10:22:08 -0300
Message-Id: <20251118132208.143315-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251118132208.143315-1-festevam@gmail.com>
References: <20251118132208.143315-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that allows
the 100 Ohm termination resistor in the chip to be enabled.

Add support to setting the HS_EN bit when the "nxp,termination-resistor"
optional property is present.

The motivation for introducing this property was a custom i.MX8MP board
that was showing visual artifacts. After enabling the 100 Ohm termination
resistor the LVDS signal quality improved causing the artifacts to
disappear.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
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
 
+	if (of_property_present(np, "nxp,termination-resistor"))
+		fsl_ldb->termination_resistor = true;
+
 	fsl_ldb->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
 	if (IS_ERR(fsl_ldb->panel_bridge))
 		return PTR_ERR(fsl_ldb->panel_bridge);
-- 
2.34.1


