Return-Path: <devicetree+bounces-20145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E27FDFCD
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 19:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1519A2830E4
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 18:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713815DF06;
	Wed, 29 Nov 2023 18:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yukDFy8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C0E10E4
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:32 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-54b450bd014so170813a12.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701284370; x=1701889170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RU7MUmhjYUqguRdxkKjOpWr8dfD4OnfjrqVOGeQS8T4=;
        b=yukDFy8gHo1iZ9cxpdhPA7773P1RwpvlP0dV6+y4X+fl3qdWfXfStYu+3Hqy86ulqj
         FPDQB1ZId/UyKDM9nfDwDrYMv77BqSNjljgy0CRyw+u+qRtWmSwLSbJt3Y0cnfEWgLqB
         wwjOwFPfYXDgLCBrcF5BSNEElSG2Qe7hvmg3HAPPE9Wufmzbi/DH/3yygxZ+y6MpRlPG
         AqcUHDzfrKmDaOpj9SiTVTV7wf3oO2IWAu3Ma2Df9mngzsOc5QBYhksrpwEAXsjXkLpl
         BS8D7H2qt9YuSpD6y3IFKGLHMdsgSGCDyFllignkHuscfcr///orL657c6mqPIgXO3VE
         v3cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701284370; x=1701889170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RU7MUmhjYUqguRdxkKjOpWr8dfD4OnfjrqVOGeQS8T4=;
        b=bvusM38X3KYhtsV+68IHUa67UQ0+UaigsK4wQTh/4NYSFjJewkPEO05O+C0+8t25gb
         bj9ofDbZEfITWA8byKQY/OLAEkD52ZyFYojHxEO/ssq9k8HOvWVUJcX4hPCWTKaeWw6K
         KUN7+vxXLpLvTDqLOhdG0vPrDCA9xOClDtf0D3TchrpiUnX2esef/QqrpW5wiySwa6MX
         HwurSyayZ+xNunldIqyaIcXSAcEmPQShUaOUNqVGQNFzvUwV8qC+XoNaUVttqUJJIIxN
         alD2PJ909sDD/ngXfuwLzRyS7oLeS8MbwLjQnV/uBUSAU7bJSZULfXOaUEsPtVvdYhsF
         /Qiw==
X-Gm-Message-State: AOJu0YyYRXqodBtErKZkglXObstN0vQfZjpLtQ2SRESb3xDf/3IR6nXH
	ELcYTomLUgE6U7cru4El8ikfqw==
X-Google-Smtp-Source: AGHT+IFhw+QOGcoQvVjtkEatZdtdwTeNUbGoo72giGNd6dke7jM2a4dOQhrd6B9+2Np3yKwGLJWzEg==
X-Received: by 2002:a17:906:b299:b0:a03:ad29:a00b with SMTP id q25-20020a170906b29900b00a03ad29a00bmr16330131ejz.36.1701284370581;
        Wed, 29 Nov 2023 10:59:30 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id o11-20020a1709061d4b00b009faca59cf38sm8160232ejh.182.2023.11.29.10.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 10:59:30 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 19:59:20 +0100
Subject: [PATCH v2 01/15] clk: qcom: branch: Add a helper for setting the
 enable bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v2-1-2a583460ef26@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701284367; l=1349;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=e6Fwd/o/2qWMn5DgIB1LfGYNT4yrpvovsVT/9DIkQR4=;
 b=+eEk+TghBsnLCZCKRQBNiCy3J6n0y4kWQbmKrrzMtwEQaCMfUHZIhn/PXAAtWGh1WSlPcpZLZ
 AYyrU1b4m2KAB/2TLILjlEznLF0x+to14cnRrP7UPF/6jqVKtktGyiV
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

We hardcode some clocks to be always-on, as they're essential to the
functioning of the SoC / some peripherals. Add a helper to do so
to make the writes less magic.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/clk-branch.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/qcom/clk-branch.h b/drivers/clk/qcom/clk-branch.h
index 0cf800b9d08d..155818cc8d49 100644
--- a/drivers/clk/qcom/clk-branch.h
+++ b/drivers/clk/qcom/clk-branch.h
@@ -47,6 +47,7 @@ struct clk_branch {
 #define CBCR_FORCE_MEM_PERIPH_OFF	BIT(12)
 #define CBCR_WAKEUP			GENMASK(11, 8)
 #define CBCR_SLEEP			GENMASK(7, 4)
+#define CBCR_CLOCK_ENABLE		BIT(0)
 
 static inline void qcom_branch_set_force_mem_core(struct regmap *regmap,
 						  struct clk_branch clk, bool on)
@@ -81,6 +82,12 @@ static inline void qcom_branch_set_sleep(struct regmap *regmap, struct clk_branc
 			   FIELD_PREP(CBCR_SLEEP, val));
 }
 
+static inline void qcom_branch_set_clk_en(struct regmap *regmap, u32 cbcr)
+{
+	regmap_update_bits(regmap, cbcr, CBCR_CLOCK_ENABLE,
+			   CBCR_CLOCK_ENABLE);
+}
+
 extern const struct clk_ops clk_branch_ops;
 extern const struct clk_ops clk_branch2_ops;
 extern const struct clk_ops clk_branch_simple_ops;

-- 
2.43.0


