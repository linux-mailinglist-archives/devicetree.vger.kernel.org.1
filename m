Return-Path: <devicetree+bounces-238701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB03C5D635
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:40:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7AD8F4E7F08
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025E231DDBB;
	Fri, 14 Nov 2025 13:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XTa5YeJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFBF318149
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127509; cv=none; b=ppPTUdtHSkP3AUXWSNL8AlkqgGhDw5bgK/+6xA70OjcB+sqjdT9w5JV0sYxdZk6QG7BTetZfuh+T/lYlWbwT6pmZ19xoy0G6VXBz7eUa6CncoM3xwNFmBMcBdTSpsmqiF4mori9sm0HI98p1RKlgIXpI1tI/Dt1LtULBHkr/JJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127509; c=relaxed/simple;
	bh=A0S5kP4AYnuMNEvsPn5dOXTGuDZ7ZyT/JuCLEXl0ePs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dY5GUDqd8XL2+vH5uSwNVGUCUylFj9Q1E6gCbJeOjXMbMBEi+Fhw9l7Pv4HMzxEo5kIKsVSMqu+E8OkUJ1WYBv6slGq9q/RCbP0Mcp6LOEkuZd43QecyclkwXt0LFv7xLfSM15FVtKDlJeEVPmEcFVR5sL8EMURY+yYJvjTXu1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XTa5YeJF; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso3213437a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127506; x=1763732306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdYV/UUUzK+g0y1e4n+KXhL1vj4mnn1p47TPyDwiegM=;
        b=XTa5YeJFXX1aHj+6xvJ7naUlTk1aSfOBHL+uKYxF3EhvpfwqIe4RodQTv6OrG3niGu
         gkWtrm11DQPranJrovC05DKWZVh0dSmOa2yJ0cntAXEwqpVF3LvVMmjAs7OVBQpryWLb
         1zVU9XzBdgUd4qu6L5kuCF8VovX4PVm0evmky26FiengXAh9xqzfpElXybEFlPm6klq/
         AhYchfFil1JfJz4Va4Y1hR9o6aMyK/XMCHez0bsnyKChxrwCl9fPLGkE+PxMMl2jCg/4
         QLOQLZIRoAplx7Kr/7stMRYFaHrDENT/lBcgum5eB4xD0VMB800GRO8oYFxorzOwNLs+
         dbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127506; x=1763732306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hdYV/UUUzK+g0y1e4n+KXhL1vj4mnn1p47TPyDwiegM=;
        b=SSpgtl2uBuPYeg6SVaWFCGsHKZ/QvdZdWozug/OoKX6SQatRxXR8TWSaModXNYJPe1
         WLdncgTV9nI6wpZSkHuwPnmDJOSu7jpxk1+OVaFV4aUOsfkCfV6Y38cfdgeBmPcAvI+F
         ObSl7VugWMEnLKsDM+Kjd5aqIl6T1nH6BSzzygBmoVCOe/U1BaV8Y3rwW/X3gUiAKr71
         jZCE9w3+McR+LyaqCB2Y0Z/EcrwHhGnCwYeYYy8drP2N0KiVg1joAeuYfU/idxRm2TFs
         ManLTf4A53J1VTkGaAKPp7RSNOLVzME3P1XUvxCBSCEc73vZRDUgupT5c+TKY+SLNkdh
         JjFw==
X-Gm-Message-State: AOJu0YznJ9LNPUtGDG/r/yyHq0KXjtYG91t6fun9O7eXSUPivoZJenuk
	ZepfiLZR2Pm6CCTKZ04M4pJSmFUUHfBE8qi/hHD0r0sikQwlLPVwu9xU
X-Gm-Gg: ASbGncvRsQ0kVu+o8sBagOC94Z0K+HPXF3HqPhTy4p8nNLeUW6SUB7dTeekpvNQeyIt
	6VAZX6qStxUKFlqdxgdkdn6SE5JUgaUyhQRDs3X0f7+t6FZERX9J8ojDS5A727zRSIC3w5kHzAc
	fXWhPysyhBttzCNrF0A8Eao6ajFid401B8YeedDj07sNO9yPLpyLwN3mT1S8KRuTYRqTWcvW7tA
	0wrhrWwUpjMa6+3zPuaZkw8iLI/gAbYJQCV8Zk4nhJhkHH6Jam5sODYZLBoSk4+rc9NF4ENqQkw
	zWq5JyZZaN46PcoKWiECHu7MfVfZSdTIYBT6ezm6mEJihCFyHaV5kqr0SUAN+oiw/DUwSZ/INWi
	2Mn4ZINwtFRE9YwalNfejWfN8b4CsUGbaONKBI4jTd9FObLCg26NJE2FkTkTmQuf3AZ59esBELB
	Ihx3on55AU3goe9DaeFMc56kx2EohaTjazepxoCw==
X-Google-Smtp-Source: AGHT+IG+QplD5QTjYb8S9SqW056mSz7f0h/qlDXbebG1yGANMyx/wdTBv6PJc0hq4+iNYLCBHhHJcA==
X-Received: by 2002:a17:907:86a2:b0:b73:56a7:a36e with SMTP id a640c23a62f3a-b7367949692mr311064866b.50.1763127506289;
        Fri, 14 Nov 2025 05:38:26 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:25 -0800 (PST)
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
Subject: [PATCH v5 4/6] reset: imx8mp-audiomix: Extend the driver usage
Date: Fri, 14 Nov 2025 05:37:36 -0800
Message-ID: <20251114133738.1762-5-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
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
 drivers/reset/reset-imx8mp-audiomix.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index 35df9bd5f71a..d3396f37d1ff 100644
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
 		.bit = 0,
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
+	const struct imx8mp_reset_info *rinfo;
 };
 
 static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
@@ -56,6 +67,7 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
 				  unsigned long id, bool assert)
 {
 	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
+	const struct imx8mp_reset_map *reset_map = priv->rinfo->map;
 	unsigned int mask, offset, active_low, val;
 
 	mask = BIT(reset_map[id].bit);
@@ -141,7 +153,8 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 		return -ENOMEM;
 
 	priv->rcdev.owner     = THIS_MODULE;
-	priv->rcdev.nr_resets = ARRAY_SIZE(reset_map);
+	priv->rinfo           = (void *)id->driver_data;
+	priv->rcdev.nr_resets = priv->rinfo->num_lines;
 	priv->rcdev.ops       = &imx8mp_audiomix_reset_ops;
 	priv->rcdev.of_node   = dev->parent->of_node;
 	priv->rcdev.dev	      = dev;
@@ -164,6 +177,7 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
 	{
 		.name = "clk_imx8mp_audiomix.reset",
+		.driver_data = (kernel_ulong_t)&imx8mp_reset_info,
 	},
 	{ }
 };
-- 
2.43.0


