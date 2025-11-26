Return-Path: <devicetree+bounces-242389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958AC89D09
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62E13B2D74
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2229432938A;
	Wed, 26 Nov 2025 12:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DG1oegXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E60328B66
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160991; cv=none; b=foDc476fjaT1w78z0avjlU/8loMLG4nV9Zty/UA8nmZXXFwPdihuKiJWDtg8l2hTplFKTkXAOi8yYvfqu+3wSBof4UjNutaPX+j0jIcit6DV9P7SP/sVJfW1IxAIxTb0bO/T9UjRbKzM4cCrZ12HxwgZnHJC8YHMQ0HY6NljFac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160991; c=relaxed/simple;
	bh=/R8DB6PS5O6Vu0rqhYBkNBWOV2WuuSjtOHLfrZBLXnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i+RJHTcjl+yHhyga65k/pKRtnMLSUyteQ45bbdCCCNJc6eNwo1JE3dmkSS+hEmySZMqN6vx+sd/HnpVdzdrk/bPclVp0ukFI5mwSj8Wfsk7m3H7GRubh26mNEbSvh35DnE5L8/ZyS1EYyb6f7k5+cSaO4KckL/o2mlZ7Y6qpAKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DG1oegXx; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64074f01a6eso11732520a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160986; x=1764765786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEUrAaAcrC3D3wCSVpJgszh6h9a2J9Zuh9+Hw2rSnjA=;
        b=DG1oegXx2WDLMDVF8IiJbWLvxvlfm/Do+DjHf3uMnRHHrBK7AqGL8CtJr5sqFLKKuH
         jlY/4zyFHNeIfR5pCzB4hCNJxVsM7WczU1xeLzefe0DivynN6Hw4BdRw0Xu0+YyR9hrb
         +kKuvCxv95b9DmKIfVd6ayahs/gYGybm38GgPhAbR1HYxEyHRNya1guPVBJXABaG0Ot3
         qhEYEsA3DZlMR9i0QEKV/V8ExIsePB76XPkVRW6laqGUUxFVCqjifOHcQQTeNPiV6y3h
         BOvQbzv6HzemI+3t+vOW/VD01y8HFcNC7yncZWL1DgHBFatK1dTUqFC2NC2WH291HGgv
         ib9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160986; x=1764765786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QEUrAaAcrC3D3wCSVpJgszh6h9a2J9Zuh9+Hw2rSnjA=;
        b=qwE3XnQWf++D2RPkVwbBGte4YftShbf1DQ2FehQ+N86abP6dELwJy18RHT3qxb+Hon
         79tLxvXZ47k1OOTZ7Rseli1n2d3irWj1gJ4PXV3MC7DE2rYc0MXCtCibuxG/uyLu2lRx
         /4gW7EcyL4jgB7w1W1AZDRnyEyhfHvL444JcxhQXxk1tU9/l1ZxC4q6+GqjLCDGb1ych
         XELmtXB0A8G8EBNJmtVR/DmSO++IVJffrdJvgEo+TPl0ukRqXtuKoEPZuikX8ijosrFV
         5XnS3v5GYohMgQjebs5SPpf88ok/S42V2/LXbM0BNbr47BHYMvK9OKtLo/qlytqSdBxF
         4xZQ==
X-Gm-Message-State: AOJu0YyGTP69TSL66oapuFOgBPjmBYsPK2bP4OoMrLy9f8mp4kKh0ixZ
	WJocqdeSISGNdn2lQzY+OngmnQjNANqeyRiUEkQ1C1oa9JiHe3W1ow4t
X-Gm-Gg: ASbGncumYakJc8tBcZsBgzwd6kdJ2/JUbfnvpqK0VnyRXUvtAko1f5cYNEoU/JBUCx/
	bNiCfWFRWCRXbPUjphJNGQbF4wqlibq+Le1LlOp6jfQ4N+miSfoZzhHW+Ju0yNWeMnpYVMyFCfP
	pHdDbwcU26UkEFxyFMTe26RSO+CGJuo22wyEkBwAOgKMFZYgTPIOlURo5l/XI6160SW6jkKa74D
	RtFmOPp5aasNWiYA6jd2epeajC7pyAwlfD7Egs+r4BpORPanD8jD4hyQBS8fXfAmo4iL0GRh6qk
	N++EMev2MFroryiX7TiKKvbtJ4thShSlbL69smJAAesc8Pa7SIyLnTYt7ocFeCBNZ7AVOi7PBzl
	NayekgaEdIUoszUFb+KrdN/Yil5mt14S6otvirg76i/9Eg9OZipIEPlv4ZM+lLoTTy+ceMd6pKX
	TLkMz8WPE3PaLMXpyMaa9rFkuBYzNO17Ky/yZq
X-Google-Smtp-Source: AGHT+IGKLPw8td8LrQ0ou6eIh/AvAY0vkGQJXd4hWo3MO0W0vfngL8sRsTQuh8232uCr75jYDD5EoQ==
X-Received: by 2002:a05:6402:510a:b0:639:d9f4:165e with SMTP id 4fb4d7f45d1cf-64555d057e6mr16359675a12.29.1764160986331;
        Wed, 26 Nov 2025 04:43:06 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:43:06 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v6 3/5] reset: imx8mp-audiomix: Extend the driver usage
Date: Wed, 26 Nov 2025 04:42:16 -0800
Message-ID: <20251126124218.803-4-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
References: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Switch to per-device reset map to allow reusing the driver for other NXP
block control IPs.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index f6152c0cc5ff..00eee528a2d2 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -24,7 +24,12 @@ struct imx8mp_reset_map {
 	bool active_low;
 };
 
-static const struct imx8mp_reset_map reset_map[] = {
+struct imx8mp_reset_info {
+	const struct imx8mp_reset_map *map;
+	int num_lines;
+};
+
+static const struct imx8mp_reset_map imx8mp_reset_map[] = {
 	[IMX8MP_AUDIOMIX_EARC_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
 		.mask = BIT(0),
@@ -42,9 +47,15 @@ static const struct imx8mp_reset_map reset_map[] = {
 	},
 };
 
+static const struct imx8mp_reset_info imx8mp_reset_info = {
+	.map = imx8mp_reset_map,
+	.num_lines = ARRAY_SIZE(imx8mp_reset_map),
+};
+
 struct imx8mp_audiomix_reset {
 	struct reset_controller_dev rcdev;
 	struct regmap *regmap;
+	const struct imx8mp_reset_map *map;
 };
 
 static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
@@ -56,6 +67,7 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
 				  unsigned long id, bool assert)
 {
 	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
+	const struct imx8mp_reset_map *reset_map = priv->map;
 	unsigned int mask, offset, active_low, val;
 
 	mask = reset_map[id].mask;
@@ -132,16 +144,20 @@ static int imx8mp_audiomix_reset_get_regmap(struct imx8mp_audiomix_reset *priv)
 static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 				       const struct auxiliary_device_id *id)
 {
+	const struct imx8mp_reset_info *rinfo;
 	struct imx8mp_audiomix_reset *priv;
 	struct device *dev = &adev->dev;
 	int ret;
 
+	rinfo = (void *)id->driver_data;
+
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
 	priv->rcdev.owner     = THIS_MODULE;
-	priv->rcdev.nr_resets = ARRAY_SIZE(reset_map);
+	priv->map             = rinfo->map;
+	priv->rcdev.nr_resets = rinfo->num_lines;
 	priv->rcdev.ops       = &imx8mp_audiomix_reset_ops;
 	priv->rcdev.of_node   = dev->parent->of_node;
 	priv->rcdev.dev	      = dev;
@@ -164,6 +180,7 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
 	{
 		.name = "clk_imx8mp_audiomix.reset",
+		.driver_data = (kernel_ulong_t)&imx8mp_reset_info,
 	},
 	{ }
 };
-- 
2.43.0


