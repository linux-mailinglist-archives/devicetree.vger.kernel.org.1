Return-Path: <devicetree+bounces-105208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 505C9985681
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3C371F2507E
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DCFB189BAD;
	Wed, 25 Sep 2024 09:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="glgZyHQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8BF1898FF
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727257105; cv=none; b=l2oAFGCx5296bFPYZ/es4klEGYbmFecpBnzw/q9NUgxkHtWBLiYHJ7Bi/V4sN4u2IV2KaY76lBdMuVeq3OQcUgrYRNfXHZGbPF77CMCukkyLAlUIFYn8ibxu0igwQ46ExoBr53fNvvICPqarJfZlOgUBf7FZcDbyYHUI2+B22uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727257105; c=relaxed/simple;
	bh=WhI5h6+Oaya6VO4wDUKB3EPlqBbBw4m7Ij0TCkx1zLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QX/6XarL7pP3sbmnHAH48nEt09QqJwbhz238B++dLpE+7jhIxWUCjYdFFTULhGks5iDQeBi2PoYlK394L+gnXAJwYZF7q84AssxsBB1we4Ay0D1Jnz0f8yz5RMQ6ni0L9M8QVxCKV/yRKM141egI0Mh5prz5U7C8br3VTK7JaWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=glgZyHQM; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7179802b8fcso4608694b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 02:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727257103; x=1727861903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C76lYKqOaKFf1LWgw9jI+3gYXvFZ5Li6KGDavd2GlFk=;
        b=glgZyHQM06bdqPe8yc5wkAgYbELyBXO2l3ZJFsiIBX6155LevNXE9g/DUoRIsUmyif
         OipLRlXlwF3ZCNlQbUMp6cpH1ccrmEbjxupKUGS29WbQzRWvrJQIgYnFfseQsCpTGt0m
         imAm++SpUqKxFobHqJqT0w64lWV3zm3SSrilc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727257103; x=1727861903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C76lYKqOaKFf1LWgw9jI+3gYXvFZ5Li6KGDavd2GlFk=;
        b=ag7hOx2Rv0BLlsmBYV54fDToax+5Ng6YOMVvGeReT4xeEvDGIYLao8Ih35bTi2KXAx
         kWEYwuW/THd11eEToIuYThAEbV2t42GLeJOlE9NpmuLlpPxPPApuygIrkLsvaDpHKS6W
         g+HCg0VEDsqoW3+O5mMOYPzkM+Pky5aqO9ky+X/BX3HDES9OJNolpv6qyC/tU+9ZMjA1
         GjZghe3e5+tD6Rp7yqHKhGtq2nQs/ZiLeBJJI2XF/49Hl7cTIP4zh3Eq8RIJYIqPaMMh
         Jz9XDaX2embHXJRppe7BcBIOK134f51xOLnZy/sm6xIx5dyfWFvEvosCmb4PWMBpNMVl
         ZqlA==
X-Forwarded-Encrypted: i=1; AJvYcCWYPDHOVK7nlU79fxivOqtrCMQFEOZAE2RfV5092uqtgy/FQtwX5Quz4gq9gRLGUI7BYdAA3CzCh6T1@vger.kernel.org
X-Gm-Message-State: AOJu0YyqHR71/TqvSuP52Ej3KpnRNfHNwlvPOn7mnWzlxFW3V8ZXlrFK
	1k3ipH3nel/JH/pifaX0rDzj9bxrCq0Kwww1tgmvyXHULq3fJEUgkqYGx3xNWw==
X-Google-Smtp-Source: AGHT+IEIT60mHW/rWrUCbyRDTdBe2V8pmg+iP0bif2d5gdv8qwR5RMS+9ty2CUG5H+qVfEQgUwNthA==
X-Received: by 2002:a05:6a00:14c6:b0:718:ddd7:dc3b with SMTP id d2e1a72fcca58-71b0ac5aad9mr3130147b3a.21.1727257103023;
        Wed, 25 Sep 2024 02:38:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2480:2c96:2b64:cdcb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71afc8347fesm2432789b3a.35.2024.09.25.02.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 02:38:22 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v8 3/3] pmdomain: mediatek: Use OF-specific regulator API to get power domain supply
Date: Wed, 25 Sep 2024 17:38:06 +0800
Message-ID: <20240925093807.1026949-4-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240925093807.1026949-1-wenst@chromium.org>
References: <20240925093807.1026949-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MediaTek power domain driver contains a hack that assigns the device
node of the power domain to the struct device of the power domain
controller in order to use the devres regulator API.

Now that there is a proper OF-specific regulator API, and even a devres
version, replace the hack with proper code.

This change is incompatible with incomplete device trees. Instead of
assigning the dummy regulator in cases where the power domain requires
a supply but the device tree does not provide one, the driver will just
error out. This will be seen on the MT8390 EVK, which is missing
supplies for the IMG_VCORE and CAM_VCORE domains. And likely all the
MediaTek EVBs, which have no power domain supplies specified. This is
however the correct behavior. If the power domain's supply is missing,
then it should not work. Relying on other parts of the system to keep
the unattached regulator enabled is likely to break in ways less easier
to understand.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v7:
- New patch

The other option is to follow what Rockchip will be doing: getting the
regulator supply upon first use / enable [1]. This will result in less
breakage: only the power domain that is missing its supplies will fail
to be attached.

[1] https://lore.kernel.org/all/20240919091834.83572-6-sebastian.reichel@collabora.com/
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index 88406e9ac63c..3580913f25d3 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -353,7 +353,6 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 {
 	const struct scpsys_domain_data *domain_data;
 	struct scpsys_domain *pd;
-	struct device_node *root_node = scpsys->dev->of_node;
 	struct device_node *smi_node;
 	struct property *prop;
 	const char *clk_name;
@@ -388,16 +387,7 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 	pd->scpsys = scpsys;
 
 	if (MTK_SCPD_CAPS(pd, MTK_SCPD_DOMAIN_SUPPLY)) {
-		/*
-		 * Find regulator in current power domain node.
-		 * devm_regulator_get() finds regulator in a node and its child
-		 * node, so set of_node to current power domain node then change
-		 * back to original node after regulator is found for current
-		 * power domain node.
-		 */
-		scpsys->dev->of_node = node;
-		pd->supply = devm_regulator_get(scpsys->dev, "domain");
-		scpsys->dev->of_node = root_node;
+		pd->supply = devm_of_regulator_get_optional(scpsys->dev, node, "domain");
 		if (IS_ERR(pd->supply))
 			return dev_err_cast_probe(scpsys->dev, pd->supply,
 				      "%pOF: failed to get power supply.\n",
-- 
2.46.0.792.g87dc391469-goog


