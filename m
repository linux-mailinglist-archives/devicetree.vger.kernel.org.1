Return-Path: <devicetree+bounces-242390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 86593C89D12
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D39D23464D2
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1896329C75;
	Wed, 26 Nov 2025 12:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mj8skAr4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FD732861F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160991; cv=none; b=XUBI/WuEa4PVz1RvKzrArZKkEoEH4jg0bvVSumJdxwZMfojezviSJgJEiyb65j9YGbili9HvWqgmn3k+WmlCZqbVy1GDTlxaUOFv3NhHQTpXx3IrC4iZjGghT8HgXKCNkJnR70znH2547zv4GNPsg/dshDBNWLyvHM9YsmnynoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160991; c=relaxed/simple;
	bh=P4KbKmbPhXi4RmHw2WF/7i/9QfzpSSQ4syTVF74JXOc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fli4OAyN7DCSXqGt3THPb8aTzQcelF5ruYIHOSHVF2Ko/E9fkH+wKBXOe+muqjoS2LhOZlbMEdY6uHfCSkmRCEizN1vWIBLA6wTIRpivXteDo1uZs/AnrFhJhjbWKhXweePYaWd55AM354+OKxJdf4edHWL7cwMDRtjXwCJ4ruY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mj8skAr4; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso11893772a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160988; x=1764765788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MS47VPO6RNZssHSPn4CeLg1VobQSQVVSULTdfhTMk9Y=;
        b=mj8skAr4MaNb8ysjuKlaXsO1CHFTXakxbV6w35obdHLXB3lvM8NjdIAAbvumyb7Cbh
         ZyGZz+vbtxzfadDqilLsS7NXAWgvFv+sWfHn0nAAN7NnBcRezqIRc4uYBv/W8EXSMaAr
         iIe2GWNGBMtiPMM8rIoQ2EVNSZm9LEBM6ZsxEbX6PtLa0nib8HAskaqfC93vCSTOVKGn
         gO2j0AGL+CXJORrQ5OWZiPW0j+wHSluWVwqvbToJgXi0LmWSBmh6xhbZlCzB9+emaT8e
         2PAHf8Iq9gTJPYMGggsRri1Bj3ZLfEvIRdel5yvQYxfJFxzTlaF9x6Tkle9RZyQY5YG7
         DPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160988; x=1764765788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MS47VPO6RNZssHSPn4CeLg1VobQSQVVSULTdfhTMk9Y=;
        b=cn/4Jqpch8y2qvzm2HH/7Ua0K80xB443Yh/4B5B1rBYyoJihpo0SNfTEnyHDq/K5SX
         0o7Hr8cUZhx6++CoigElTuFsd2NbsTWAQiNNmiuzBEm03lhbNMVCSCusuUjS4TUBqrpm
         1ESLJjKPdrJHyueic2/dDN6ya0X/7scbLzSMeYpMuXKEaOra/p8/7YxmQJezsK+x5hra
         35DhTNnXdNPRftD8+QY/8HhU8krbgKyNLAoWPCXpHEh2wnQ0z7/B9RvC0zTmklDDcPya
         R9UyjmFkBcdyh4piGHTrdziBnAkPa3WryFtEAoodC+5xqukIkq3h7UkeFUu5HsBK1gWf
         /KEw==
X-Gm-Message-State: AOJu0Yw0e3Phl8PZ2usNnwXEX/MNR7qr3LFaZQ7ad41/xd+FDaZyFkAp
	mtpTvpZ/NMWh3b9peXE0G276cr6e/sAIFO4HQZZz6cDFBovEDWpeckdP
X-Gm-Gg: ASbGncuRaykv5neivw2rLupvlVJbv6/a3csBgIEkyMO6hhmYEK7soFeRXodSzXAdlLn
	Dw7N9zsnfAyOhPkfbVq8SYvP3SqwxdtoOpUibcrP65oRyvn9kQ1YE9Sk4z86+c8ZD/rXVv9wIjZ
	SlxLoIWUdjPXcoRM3y7WWPO5kf4WcaJOH7YZEDB/PqPrAS66cuAiFrSIo5rTyW1uTTHwmv+9lXi
	ZqDRo2H5Oa/VHoAERiU+XtAGSt7M4mjwxYx7MiacP/ERPKkAew5FPj2nSX6XP4+HMkmTNwPZ0mk
	GXv0FfRxpsdtsYU2NpR6RzjdAh60ReFw4L7lGlWhWaftMbkKHDOJ5UTWg48+9ohNolZxgXou2Ex
	OgdrI7V3uf3WhDMAeIkb0AbbQJADCV0DdFbVTFoGpyh/Nys2jdd6w6UQEDy5JhjoBIbiRiv6l3u
	OpkRNiBfTktcsBfxfWBmJ312Hz8HaXVJ3IjDPH
X-Google-Smtp-Source: AGHT+IGKniOPsuMqLGWG0SkLA1Zky3npjxWYZzJjefGtqxfKracate5d7l4F20Qx0HfNwyP4Of2daA==
X-Received: by 2002:a05:6402:26d2:b0:640:b808:75f8 with SMTP id 4fb4d7f45d1cf-64554339a47mr16014476a12.7.1764160988003;
        Wed, 26 Nov 2025 04:43:08 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:43:07 -0800 (PST)
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
Subject: [PATCH v6 4/5] reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
Date: Wed, 26 Nov 2025 04:42:17 -0800
Message-ID: <20251126124218.803-5-laurentiumihalcea111@gmail.com>
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

Support i.MX8ULP's SIM LPAV by adding its reset map definition.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index 00eee528a2d2..b7fa3110f282 100644
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
 	unsigned int mask;
@@ -52,6 +55,44 @@ static const struct imx8mp_reset_info imx8mp_reset_info = {
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
@@ -182,6 +223,10 @@ static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
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


