Return-Path: <devicetree+bounces-238703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9DDC5D69B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C9E7C358C48
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6A55320A3B;
	Fri, 14 Nov 2025 13:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mNe/xE4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C272E31D727
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127511; cv=none; b=j9bFeROzJtX7aMookNTAY1vpwrfO0As1rt0fFiJtqjKqCD6hZmWPg6dey6zmIRecIAh8j/j4pJID6X58XJLiUAY0cECSl7wxiuhBJM5HLn4LJqxOml5CH+HLMyxzLsX9bonYAOedq/SRI9WsT6yzgRwjxAFwVba/izuUYqfemDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127511; c=relaxed/simple;
	bh=WDONt8lsWsVHQ3PYPlqLEoaUzwOTi24id4NOGYRQRbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WCmACB/ZSuKRIwG+B0tHFJJHRS6QYiScWOMfI/ahMlW9Jnu5Z//i/m//OcHP5rRGxKWAVkvThhrdB4lDumehUY9aUt96oWLcJjBb6rYGFRuF0TIATe3o4gryEwUp9YyIDWYtEvIZ+dsQxJyI396Gh8Bhi1hCX/Bn2ir6yOnBvzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mNe/xE4V; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b73669bdcd2so173919666b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127508; x=1763732308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjEK4P3dbzSXwnv9p+7adMjs6IATWQpdCincKxuWQP4=;
        b=mNe/xE4VwfKd9F435UInjkt3wDuiWnzIjR6OeANY8tiic1uzlkxHqQkWvBPvyjVBo1
         ri9g0LSgiFn3l2JRmL07wu3fiAcAin0kPYMd4UIliuVgIb04Bz/dGVTvSqruSIP7U4zj
         fpj+NjnMatzO8fPrJyV0kqZFg++la2E0lrICXyH/einacQ9vJVUnijHdKp495vFzXTkX
         /iC5gvov18JPDWXbytf+AM3pOPaS4U9Sh74DYpa9A+nu+cV/jXz62UI4+oaYcnqyc0U3
         llPNyK1PAg03l5RJ6jTlYYepBtVhVOsbijMU0sduyDVLiayimNDK9Nd5nowXXra05+G2
         VpqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127508; x=1763732308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wjEK4P3dbzSXwnv9p+7adMjs6IATWQpdCincKxuWQP4=;
        b=ueVeFT1wvZOtXpVNt7tbr9YCMg9XZa5tZvL8eABhDjAhsK3NgyqApdfxLeoOouR3s7
         89je3gsF15tA5tfERwcw63juMtGq4BgnG1ffSweWV6am1Aostv7S6s3c4leoappH2o4u
         kMvffGQMcqHw9ern/Tw1whQ0JEJhCuO1Z9UvKqbsHBM0XX3hEx35VhBBpGXfCPmfqXoj
         TpRxzyA2HH7WZhrkDTLz6dIpyFLwmmGxaFD/Bo2iGMITuWfWothae0cfzvxHVpTVSgxN
         XuiSY2W6UooC6ATpWKyucNI0rxeOEkyTmLWN7a3dLTXH7v1trWuqIjwJEgR1B4cmvpIj
         WwxQ==
X-Gm-Message-State: AOJu0YwPdngLa2NpEWS51T+fh6WqIiwI54yvBTWWAGo0JSdGwOXBdXhY
	NJbxjXrLuglrFFStaWDruwcdmpuPA4q1QFRWEiebvY5FqMRwgcoOA4eC
X-Gm-Gg: ASbGncvg0vIasGIR1rxEv6uyMM0DcbPl+b18qBCkTT2ZdfYkHIzPe670s6Zdt6m+TZw
	2RhdPDLHPK9Jn4oku2FU2e33x+LeGN+h05XzD19GIeXSkoUd6EBVm7f0CljJv/vvxMeJ9K1+oti
	jrk8+ONCpfEClC39NAs9zeiFK2st9c8j71N/kELJfd+5e4QPAdisVBszA7ayKtX+RZ+OgVJTesz
	TZSwmLhgbv3QqMhe8ZNHbBV+NhAyipTTFmn8NTapKlYabryhhuhvjzxVQ75unJM7EpMKy+xbDWV
	KLuJCG1HElD+jOOwbZu/4VnKWRZ8/XbwA7XXwYqwnbtqeOh51YAma/UTbU+4vr/VL2OBROQ4D8R
	tYsOFaos3UXeQaPEcM6dnM3i1SRx6DLwGdgh5UTB4NW5rDExcEHrg1XjUNnn37WI5uQjnCR1/Gp
	VhIkpxl4L1TtK52zt+ucqD3hzZh5YQPO7+EgLUZQ==
X-Google-Smtp-Source: AGHT+IG/Eta9H7LYA39y2DTXjRpl0eAQHOhH3wq89aCFtUYEwpNsngjLk7o4A0zETlY/YY2uNySFTg==
X-Received: by 2002:a17:907:a0b:b0:b72:5e2c:9e97 with SMTP id a640c23a62f3a-b7367b8b6bfmr226704866b.36.1763127507961;
        Fri, 14 Nov 2025 05:38:27 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:27 -0800 (PST)
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
Subject: [PATCH v5 5/6] reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
Date: Fri, 14 Nov 2025 05:37:37 -0800
Message-ID: <20251114133738.1762-6-laurentiumihalcea111@gmail.com>
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

Support i.MX8ULP's SIM LPAV by adding its reset map definition.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index d3396f37d1ff..83fc8bcf80ab 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -3,6 +3,7 @@
  * Copyright 2024 NXP
  */
 
+#include <dt-bindings/reset/fsl,imx8ulp-sim-lpav.h>
 #include <dt-bindings/reset/imx8mp-reset-audiomix.h>
 
 #include <linux/auxiliary_bus.h>
@@ -18,6 +19,8 @@
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
 
+#define IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET	0x8
+
 struct imx8mp_reset_map {
 	unsigned int offset;
 	unsigned int bit;
@@ -52,6 +55,44 @@ static const struct imx8mp_reset_info imx8mp_reset_info = {
 	.num_lines = ARRAY_SIZE(imx8mp_reset_map),
 };
 
+static const struct imx8mp_reset_map imx8ulp_reset_map[] = {
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_DBG_RST] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 25,
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_RST] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 16,
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_STALL] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 13,
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_BYTE_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 5,
+		.active_low = true,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_ESC_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 4,
+		.active_low = true,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_DPI_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.bit = 3,
+		.active_low = true,
+	},
+};
+
+static const struct imx8mp_reset_info imx8ulp_reset_info = {
+	.map = imx8ulp_reset_map,
+	.num_lines = ARRAY_SIZE(imx8ulp_reset_map),
+};
+
 struct imx8mp_audiomix_reset {
 	struct reset_controller_dev rcdev;
 	struct regmap *regmap;
@@ -179,6 +220,10 @@ static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
 		.name = "clk_imx8mp_audiomix.reset",
 		.driver_data = (kernel_ulong_t)&imx8mp_reset_info,
 	},
+	{
+		.name = "clk_imx8ulp_sim_lpav.reset",
+		.driver_data = (kernel_ulong_t)&imx8ulp_reset_info,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(auxiliary, imx8mp_audiomix_reset_ids);
-- 
2.43.0


