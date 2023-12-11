Return-Path: <devicetree+bounces-24095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F480DE7E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 23:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D24CB218C7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 22:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86BA855C1B;
	Mon, 11 Dec 2023 22:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EarDXLst"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B25E2EB
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:46:21 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54f4b31494fso7374976a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702334780; x=1702939580; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fw7haHGimjEHgw0rrVRE1d9svl1eoYvEUnWpKtozIL0=;
        b=EarDXLstR18t3pcd20WdqIZEHnko/h9AW/DbOMQ/+40JbgTyAo3QlpP0kFg/6LL5/B
         u6frrjaXOuVQBHpiQadRg/1RPN156iS07QSRHzIfyCIjX39VOt8a57+ne2auurn17KFD
         6C2dO8KK++ksF0b/Dl8mwhAY7B0h01X0UCuJG6tKsBQPC0vU1GkTf0pvhFPlZ1Twuhp9
         Qg5VHCHyRUGIiSmrqQZRGz/jE/kutlmjPdDei+KgrJEvO3X2x6A5PaYP7V7ZKE+H7a9S
         ZJN6EU0pwLZ6WiUcPa0oZbquSiXG0Z5nHuJ1EMYlC8wncXSODFj4io6Xc0chLocv0rN2
         Jk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702334780; x=1702939580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fw7haHGimjEHgw0rrVRE1d9svl1eoYvEUnWpKtozIL0=;
        b=GpXfVAfCDenZPkKhUjCh2j2LQYSnp2JD6hjpPBlDRU/NvBIrV33t90K/ESCXZLw+Cc
         H4Y8fikq5oJwDTgDLTk1Nnh0Q5vCPuJgqGM6x9rrQ2QULeNM+brd5Q+ZVfVCosZj4oWN
         qc0ezKT0eyoCwNWOSaf668S5EeuTgKpJnOP3wvqW5Rcyjx5Ajb6Xx1Pnirqa63dabJGz
         2kSm7hcQML+wksNEKoAN9xdv5qWvA5iWrtvD1SdOPhmlei638AgTxbaRL1h4SI6UhWj4
         +O+CQHfmLX4k7LGePfw7WBgFmIj/ZCFlmKyzhzx7vEQkXbsmsuF+xSJYUJxPSa5rGNuU
         g+bQ==
X-Gm-Message-State: AOJu0Yw6ekCsEkpt9Er421vAtLAc5ozHvDYkG+Pz9dRdOyUigWr/rmmk
	URjWOEt9k0PcjIzw/Wjsh5UcIA==
X-Google-Smtp-Source: AGHT+IHERGlMOrVsdi2Bqph5+ZNDSalyeDH8M+tAa3H6Lw9J/mSCMckYWQ2Ogy8+Zw46pLwcWoi4Dg==
X-Received: by 2002:a05:6402:5143:b0:545:52ff:edef with SMTP id n3-20020a056402514300b0054552ffedefmr5436029edd.20.1702334779887;
        Mon, 11 Dec 2023 14:46:19 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id if3-20020a0564025d8300b0054afcab0af2sm4091789edb.59.2023.12.11.14.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 14:46:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 12 Dec 2023 00:45:46 +0200
Subject: [PATCH 06/10] clk: qcom: clk-alpha-pll: Add support for zonda ole
 pll configure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231212-x1e80100-clock-controllers-v1-6-0de1af44dcb3@linaro.org>
References: <20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org>
In-Reply-To: <20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3693; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=NPH9ACLBVbpSLjTIel6nZCgfiNyOqzUuJtB4WZ+o/cg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBld5EriTjXT1ZVl/3vMpE9WkLBtiIAvIrttcOtX
 GHX80y3+ZOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXeRKwAKCRAbX0TJAJUV
 Vm+EEADG8G/3L7ztFtb7WlCaI1zXBDuTxl8EEaLSvHYF1ErpSwa3/TQpOp/wZOVN4Xxns5QIfi5
 qQRESqGtHuw68yujgEyM7j+o8/qvfwbG1f8qB9aqPqr3LGS3+3zRfcT/OcSHFtlwsyArk6M1Uw4
 Dqv4azzjK/dXrBZibHvpr84TjASHbnJlpcKCOYvulTLnemSqKp7mvRH0tqHD0GPH8Sb6Ytil5Zm
 HkEs9xRQpOhjnJwtSr/v7DsGFBETTHCuUliDru3nfKzksfcpsLpes+1g01/gvOyzJq16FOQYekz
 8NOACfOpjZwTemIS5EN201QSBvn+OIJ50fBHk4Jx7eVnuFOEPlAKGPcsFZxdFlZYdAZcbJM3BAv
 owsD/JUUNvratOK61BT+Ys4NSxGdguubH17h9NBrvM6KUuVfc69M+mWEFrDJhy34H2gQdWGK1Db
 vO/35dy+USP1wNPDK6g/fGzI3Fog5tHJYwOl5wUGX36/ON6L6INuOLkE0GMylZdHNJm6eIYFhnF
 mZ/VqPMI9rPzNa54r4YSTcYXw1I3CJfsxCAyFtP7p+sBX2FozeqHmHJCJEnn6XkOOB633gN4jEo
 Izru2+5MfMeGOqPoBUdte9sdf7eWbHYG4LbJd8NfFY9zyclxanOJalKTdUGnJOZLF3xXfNQyCEL
 DI/CF36j1Lz+UvA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Rajendra Nayak <quic_rjendra@quicinc.com>

Zonda ole pll has as extra PLL_OFF_CONFIG_CTL_U2 register, hence add
support for it.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
---
 drivers/clk/qcom/clk-alpha-pll.c | 26 ++++++++++++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.h |  4 ++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index 05898d2a8b22..e1919b57fb65 100644
--- a/drivers/clk/qcom/clk-alpha-pll.c
+++ b/drivers/clk/qcom/clk-alpha-pll.c
@@ -52,6 +52,7 @@
 #define PLL_CONFIG_CTL(p)	((p)->offset + (p)->regs[PLL_OFF_CONFIG_CTL])
 #define PLL_CONFIG_CTL_U(p)	((p)->offset + (p)->regs[PLL_OFF_CONFIG_CTL_U])
 #define PLL_CONFIG_CTL_U1(p)	((p)->offset + (p)->regs[PLL_OFF_CONFIG_CTL_U1])
+#define PLL_CONFIG_CTL_U2(p)	((p)->offset + (p)->regs[PLL_OFF_CONFIG_CTL_U2])
 #define PLL_TEST_CTL(p)		((p)->offset + (p)->regs[PLL_OFF_TEST_CTL])
 #define PLL_TEST_CTL_U(p)	((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U])
 #define PLL_TEST_CTL_U1(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U1])
@@ -228,6 +229,21 @@ const u8 clk_alpha_pll_regs[][PLL_OFF_MAX_REGS] = {
 		[PLL_OFF_ALPHA_VAL] = 0x24,
 		[PLL_OFF_ALPHA_VAL_U] = 0x28,
 	},
+	[CLK_ALPHA_PLL_TYPE_ZONDA_OLE] =  {
+		[PLL_OFF_L_VAL] = 0x04,
+		[PLL_OFF_ALPHA_VAL] = 0x08,
+		[PLL_OFF_USER_CTL] = 0x0C,
+		[PLL_OFF_USER_CTL_U] = 0x10,
+		[PLL_OFF_CONFIG_CTL] = 0x14,
+		[PLL_OFF_CONFIG_CTL_U] = 0x18,
+		[PLL_OFF_CONFIG_CTL_U1] = 0x1C,
+		[PLL_OFF_CONFIG_CTL_U2] = 0x20,
+		[PLL_OFF_TEST_CTL] = 0x24,
+		[PLL_OFF_TEST_CTL_U] = 0x28,
+		[PLL_OFF_TEST_CTL_U1] = 0x2C,
+		[PLL_OFF_OPMODE] = 0x30,
+		[PLL_OFF_STATUS] = 0x3C,
+	},
 };
 EXPORT_SYMBOL_GPL(clk_alpha_pll_regs);
 
@@ -2093,6 +2109,16 @@ const struct clk_ops clk_alpha_pll_zonda_ops = {
 };
 EXPORT_SYMBOL_GPL(clk_alpha_pll_zonda_ops);
 
+const struct clk_ops clk_alpha_pll_zonda_ole_ops = {
+	.enable = clk_zonda_pll_enable,
+	.disable = clk_zonda_pll_disable,
+	.is_enabled = clk_trion_pll_is_enabled,
+	.recalc_rate = clk_trion_pll_recalc_rate,
+	.round_rate = clk_alpha_pll_round_rate,
+	.set_rate = clk_zonda_pll_set_rate,
+};
+EXPORT_SYMBOL(clk_alpha_pll_zonda_ole_ops);
+
 void clk_lucid_evo_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 				 const struct alpha_pll_config *config)
 {
diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index a1a75bb12fe8..99a3db9de4a1 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -21,6 +21,7 @@ enum {
 	CLK_ALPHA_PLL_TYPE_LUCID = CLK_ALPHA_PLL_TYPE_TRION,
 	CLK_ALPHA_PLL_TYPE_AGERA,
 	CLK_ALPHA_PLL_TYPE_ZONDA,
+	CLK_ALPHA_PLL_TYPE_ZONDA_OLE,
 	CLK_ALPHA_PLL_TYPE_LUCID_EVO,
 	CLK_ALPHA_PLL_TYPE_LUCID_OLE,
 	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
@@ -42,6 +43,7 @@ enum {
 	PLL_OFF_CONFIG_CTL,
 	PLL_OFF_CONFIG_CTL_U,
 	PLL_OFF_CONFIG_CTL_U1,
+	PLL_OFF_CONFIG_CTL_U2,
 	PLL_OFF_TEST_CTL,
 	PLL_OFF_TEST_CTL_U,
 	PLL_OFF_TEST_CTL_U1,
@@ -119,6 +121,7 @@ struct alpha_pll_config {
 	u32 config_ctl_val;
 	u32 config_ctl_hi_val;
 	u32 config_ctl_hi1_val;
+	u32 config_ctl_hi2_val;
 	u32 user_ctl_val;
 	u32 user_ctl_hi_val;
 	u32 user_ctl_hi1_val;
@@ -173,6 +176,7 @@ extern const struct clk_ops clk_alpha_pll_postdiv_lucid_5lpe_ops;
 
 extern const struct clk_ops clk_alpha_pll_zonda_ops;
 #define clk_alpha_pll_postdiv_zonda_ops clk_alpha_pll_postdiv_fabia_ops
+extern const struct clk_ops clk_alpha_pll_zonda_ole_ops;
 
 extern const struct clk_ops clk_alpha_pll_lucid_evo_ops;
 extern const struct clk_ops clk_alpha_pll_reset_lucid_evo_ops;

-- 
2.34.1


