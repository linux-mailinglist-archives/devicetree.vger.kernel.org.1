Return-Path: <devicetree+bounces-234800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B35C30E2F
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01F904612A5
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ACAC2F6192;
	Tue,  4 Nov 2025 12:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gynOdpPo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD98E2EDD58
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257854; cv=none; b=HhQHzyjMZc+KV5NZg367sPBUiufQz+EviomZRipNI0vV5LR7Gzsul6AsTB4TujV5U9XMcSzeZGTVNnf/8lWT0mssgKYuEse0DUvZCkVb67eefZOgiRdKVsgXTbIhUFpnYt7pnD4/nukyFwGW1K+FoK9VdOYF3mh6SR7qLcNSYpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257854; c=relaxed/simple;
	bh=jfUNe2KhyNhQkqz/RyX9v7SWqUEpKz/Cnc+k9Uq1/I8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M1oWuXbFMK+5rxleKx9sv7XHHWNHo2L3pyjyWCScKdH6fb1hFbYLiD4pdun7/IpfJ3irdxJwLFNdT6h2ya8pvqBOo9ud+n4XELy5lR73+ntpdPAUW1M27E47dBN2dXWn9iZvMvj2j2BHIsaraT9z7+D0flstT4QJA5pOR9oDwvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gynOdpPo; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b6d345d7ff7so1177779266b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257851; x=1762862651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCzqKD3xSHfSBn+d7Ai/gvl8AIDeYTTV+y/cpT/4lgg=;
        b=gynOdpPowwwAXbxSGWNeQNQbLOBclp/ZYWjuGLZlUCWV/d7fo3nrxw2V1/7TeDQNGb
         +rUNtF8ZVk0gjKsrOZTze3ApPRVvi6jduTNUTAlcKHW13uT74+ygIHPoyfnIuVjE3dRA
         b6mTtBr2/GHo9/ZlIpvDFhLLccxJKxjJcNhLCeN3feourza0zpKoJCjO9a8fQVHx+XhG
         R+zHNVe6hDouB0bRIRz7nmvDUtb9HAw1wTCd0Pn3YvwIKNovT8D9eXGDc5aIT0FGmCr5
         2OM0N9OshLD1VaxdzqqJGonU1Eii6BWQgJF6ISjX6Xc12tN2qbXdln1SQWxcyfBATFGE
         0DpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257851; x=1762862651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCzqKD3xSHfSBn+d7Ai/gvl8AIDeYTTV+y/cpT/4lgg=;
        b=jILtir7p4r60ASzJQAc1QfMDRrocJpxp0fL7au5zu9nQuwd/WWKVATjq7WqS9K/m7O
         Ryb2TpIlr/Ak1RamJdq9e4Ffe7qyRXB31bl3x57Adv2b/BDiZxDyCofo1KppHiO/LIPL
         +HD5o2nBpr9T4OAa+x+fDmwLVFAemRtetqgLW0v4FqRH9MfoA7ak73oRLL2ASkXahUl6
         0wfpc+Uto41bQdnWWCPGGF+XjmkpKe6WU+0qiKeiTEJ30f+T6FCmGGEBQDR3e1coxcTR
         PHrjlUYh2JcthYS/6AQol6KOYiY9Q9Vgt6mDb995xnENgZ6YrSAg/TlT+KtBEAoca/Xg
         oXXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVwjYbYNh8tYEAJg+ZzFSGh1kh/9BibRyXAEFxbU+3ZEHNrVXSh3M/Wu/9lbNYGnvgBxoxqWNutIBm@vger.kernel.org
X-Gm-Message-State: AOJu0YwzPuB2I3utAgd3tXskfr7crczaNzNfpdkEif17LHnQnyzyzvJy
	PRbJ6xXQnQL5Y/gPNhGMe+ig94qUEeQ4EQhWHiP6giDfJBAUMnABNNE+
X-Gm-Gg: ASbGncsMdxGYFc9mmY6NWFYUj5EmbR1SY4Qy3MtnqYYZFCoEi8kApUn06RgCjK8qVaV
	y8qU+u+yzwOKOm/8PsbM7UA181RI9EqrdYGMXIlkXQ3eSUoAQXwPm1XPKHiTSeehC9/WJj+LdyW
	EarlSIUCxtfC4m3xfLh1F2kVmuJQ9Z+anrBRNhtpIqelyUip9BAO4TEUr0Oe+FPl6ZM1MkV4wW1
	7eBDG+XxKZ7aOBdA+xIc1k7PwBd3P8lNjKeDQHvLqes1QqD1v42oexksZlK7/UTBG0xDdpDoEDB
	nSVzyRPDlLzHAw0v9EbORZOdZPmHcQII1K1Xj8CbtXXUPcDhL5rDkdqst9bBtPZa2KaqPZa6TKW
	QGwIf6qg+/ao0QpuZYRuupxJN8jI05pJRQkyRU3c49iSL/y1FRxNKyZQHMVoA7hSyPLMYkt8XNF
	EspmYgDP/3rDGfSHcBSkYIoBuF8w==
X-Google-Smtp-Source: AGHT+IE2RvpbkP9lMyxDB9hrGIqiXzETjyBqy83rux3b/+zJ7/joFNzbydou1+hhLeq8yhwIAz+fmQ==
X-Received: by 2002:a17:907:26c5:b0:b6d:5dbb:a1e1 with SMTP id a640c23a62f3a-b72159d5c65mr316758166b.5.1762257850774;
        Tue, 04 Nov 2025 04:04:10 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:04:10 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 7/8] reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
Date: Tue,  4 Nov 2025 04:03:00 -0800
Message-ID: <20251104120301.913-8-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
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
index 745b7e22b954..af8d585d6c18 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -3,6 +3,7 @@
  * Copyright 2024 NXP
  */
 
+#include <dt-bindings/reset/fsl,imx8ulp-sim-lpav.h>
 #include <dt-bindings/reset/imx8mp-reset-audiomix.h>
 
 #include <linux/auxiliary_bus.h>
@@ -17,6 +18,8 @@
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
 
+#define IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET	0x8
+
 struct imx8mp_reset_map {
 	unsigned int offset;
 	unsigned int mask;
@@ -51,6 +54,44 @@ static const struct imx8mp_reset_info imx8mp_reset_info = {
 	.num_lines = ARRAY_SIZE(imx8mp_reset_map),
 };
 
+static const struct imx8mp_reset_map imx8ulp_reset_map[] = {
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_DBG_RST] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(25),
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_RST] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(16),
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_HIFI4_DSP_STALL] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(13),
+		.active_low = false,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_BYTE_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(5),
+		.active_low = true,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_ESC_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(4),
+		.active_low = true,
+	},
+	[IMX8ULP_SIM_LPAV_DSI_RST_DPI_N] = {
+		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
+		.mask = BIT(3),
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


