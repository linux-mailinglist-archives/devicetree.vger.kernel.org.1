Return-Path: <devicetree+bounces-184325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96850AD3AAD
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:10:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C591B3A5CE0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778BE2E338E;
	Tue, 10 Jun 2025 14:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RftT+IgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686962DFA5D
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564409; cv=none; b=GLUz+qYJb8TIK+VuNY7nGJXl2DlhMP6TsGVeM+YpseEZoLFF5b5XMqcc7XFWtISlYlfcKCw6geVtb1KjRW9UrXtGiRkfZq8TdI+u+DSdN8RmBa99apd8m1bZL1E5lwSzpYfRejD6Gqit1bLmT1O2wrF0ngE7tqgi2fNeyAZZ7hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564409; c=relaxed/simple;
	bh=nJt4ADbxIA14pqN4XsVTOJSsLTO3c7LveRnmHeFCRAk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RoEAvpF5eEaNjZs4WgxoaSZhYDXJg0VmXAZZAYIsOyYEHWvRWNq3cWKK4Mx28B6j0btBnKRUaqQUqxbwvlpIeM8Rl+PECEK21i5kKwiTZ8dCZwj/bmm9JTRBEnOJez3kuY/G9baSQByHZr/qR/BwY1sKR1c0YM79f6LX3n+h5Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RftT+IgS; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a4eb4acf29so681037f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564406; x=1750169206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlA118QQRrQcU4/5ozkHrMeNhT8icrM9d6BUqE0LJLY=;
        b=RftT+IgSl5mNW2d1kS+b2viEnsIaUSqOag3iDX3bkTMjXbw5XQlHTlEm6BNgEOl4cZ
         0mD0dngwkY/5Awp+1WN8UAQ2wTp9MdPmquVZxjMfh8VWJrgMzNbFL+bFctRR9uKt+YaB
         Y7H9h8LpbYoMjR2OUoxz3C8d/eXK7DuymcAcLGoREJWBXKzL8YJ/E51/YXHwFgSTXm9P
         Q4vqUrlWWsKYpgaaYILuutw+FW7yf+80aXvMsQNcE2c/5Gxtrsc9/FjAUhQweAUZkdEo
         MnZlqxxfboSLIsvdOQ3OqD5qzrmjjbR+VOnk926DPIAbL3iL9ILRBlCFVoEnF8IKj9CC
         TJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564406; x=1750169206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qlA118QQRrQcU4/5ozkHrMeNhT8icrM9d6BUqE0LJLY=;
        b=lZqZdKO6IURtQbo5WYTXKzXqbej73FdEvZbIW/LvrkJILhjUfCL2SlCKisVMzY7+N8
         Rcg1XBPlI0XNbs/gytiP5DKx9aVbTECvqUe4xcxZFIkS6FVgyoZCDBpFIV2WanS+C/pG
         8ffNkDRzvTjLqaEm5YP4bkAPlozveZLh9CWsgG5ZR2stjJesCGCNA55wie0cQZ+S9Y0F
         ikwzvSxJDLmzebH+ZykmF4WbHg7PI5+DEGZTl6i0DNnRfXPrkr46x1NlFUCg16h3MbHa
         8mRu22URw8Cxuh2wjVSNPoFfJwUgE4FG/AGd9vAqiHi4duxwo0eBvUjQdtBJ+UUce6jP
         FpTg==
X-Forwarded-Encrypted: i=1; AJvYcCVnNmzY72/uhnJRzr24Wifs6S2uxPvcOdRxFGw08GHZJT5WrmvMwwELIv8QXjDbmGbBfiK3cZm5RiZi@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn+qic3RIZxl3NHvMqrbOixZ57ov3CaiwwsTrzDUifZ3lhMkrn
	9DsIdxpfiuVIWsUQxYFunxb/UiGoWmPVih+CEfRbzJ/vKqHgEuvJY1AclZDumodwaKg=
X-Gm-Gg: ASbGncspNhX5xDNupCBXvPjcv+g3PpRlKkBo1rYUXjMci1GU8bwUXAoUpiBZywX7kGi
	CfSZTelIyz8zYjRJ76Kd1Nf/Bon1dGwucrtaJSYl5MsWSQZm1T2TjXGsrNeGEO6D+E1ROu4KKlr
	icHHA9RSryHWECA+IlWb0h4kwpwpwgchQxqxOHNvzguHRtfLbvaO1z0ZLtPHpJM+DG2+KZg2oWx
	ZRaJy4F88dhe0FAj9MC6cLeKqkYx7IjvIlEnYUZ8eiwkpINC3izmAJFK2e2D7jBGtsycyk+2P6k
	dNi23bOluYtn/v30SC8y4QigYrvwYZqlwmyeey1sHzV91pcplfQ5bw/MNHEOrmZCyYE9bH/UYwS
	3smm/Ww==
X-Google-Smtp-Source: AGHT+IGZufr1wfq+dLRw6f57n5SqOmq2e/nG1YhjXmidlB/YolNYy0WUiexT/5w6foFwU+TjOpZmVg==
X-Received: by 2002:a05:6000:4025:b0:3a4:eed9:755b with SMTP id ffacd0b85a97d-3a53315704amr4817877f8f.4.1749564405478;
        Tue, 10 Jun 2025 07:06:45 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:55 +0200
Subject: [PATCH v6 17/17] drm/msm/mdss: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-17-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3191;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nJt4ADbxIA14pqN4XsVTOJSsLTO3c7LveRnmHeFCRAk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDvOS1VuxS+qjJR9cY8w+d68w2FoCLMiuaNbl
 Acm4SL6luOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7zgAKCRDBN2bmhouD
 12VFD/9b4y4SPbBdpJWKma1Ib+xxUjq/d53O3/XX7Zg9z9Q9ZASk2PUqdH4+xyEVg2VvgoI/+kQ
 OGsv/K6u2k0Gs3Ds+3wY3cLt4H9UMtg1w7YXwmrAHQ1OPcV26IVI4ElYdQ4ndTE+L/orPArl6tf
 u9KG9SYyFymRkL56lkp5xCcEAyXW8UMqukmErlYoQmYZTuB0d1iEr9flR3cEajYx7Lq44vHlpy8
 NdRNpMp9Woo6YbVM1/6nUybbGg9+xJHj397RbhyiSBHQwEHEr0Z0MNZisHK1keT0y5vSFRq6G4W
 Qv95WQYzV9GPA6SDPI3ZejcDEEeNiKfD1uCsJ8NghZX1Yg0L4BBkps0pCH/sNMLawYL1c6ocfMN
 xSMsySC3UtQCNUVrjtWaFTJ9ITDsO9QjLtW5dS13faVv0FpLmNAj8jlRkTRaWGhCNNGAXywVMnc
 thjOIpRnaZ9u04+LP+XQoDDtyo1AN8gJC8uDDuGGTbgmSJBDQKkOmQiik2n8esKuLUv4zPQmbRp
 o4mCDNGOOjR7QPO1ZDv6QEzPvOLSJrH9IMnsnypxcwuPk1sLp7iAqvNHehlW/y19sAeHyCGpJGA
 ULlLUL2LR/tOc3jUBQ84mxTYbBWJA8YqYoZO0juqHwhLzpDORNrz99V4RHwSrDkVE91vQ3hj5Ej
 uifo1hwE+1rhi+w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add support for the Qualcomm SM8750 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 33 +++++++++++++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_mdss.h |  1 +
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 709979fcfab6062c0f316f7655823e888638bfea..422da5ebf802676afbfc5f242a5a84e6d488dda1 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -222,6 +222,24 @@ static void msm_mdss_setup_ubwc_dec_40(struct msm_mdss *msm_mdss)
 	}
 }
 
+static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
+{
+	const struct msm_mdss_data *data = msm_mdss->mdss_data;
+	u32 value = MDSS_UBWC_STATIC_UBWC_SWIZZLE(data->ubwc_swizzle) |
+		    MDSS_UBWC_STATIC_HIGHEST_BANK_BIT(data->highest_bank_bit);
+
+	if (data->ubwc_bank_spread)
+		value |= MDSS_UBWC_STATIC_UBWC_BANK_SPREAD;
+
+	if (data->macrotile_mode)
+		value |= MDSS_UBWC_STATIC_MACROTILE_MODE;
+
+	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
+
+	writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
+}
+
 #define MDSS_HW_MAJ_MIN		\
 	(MDSS_HW_VERSION_MAJOR__MASK | MDSS_HW_VERSION_MINOR__MASK)
 
@@ -339,6 +357,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 	case UBWC_4_3:
 		msm_mdss_setup_ubwc_dec_40(msm_mdss);
 		break;
+	case UBWC_5_0:
+		msm_mdss_setup_ubwc_dec_50(msm_mdss);
+		break;
 	default:
 		dev_err(msm_mdss->dev, "Unsupported UBWC decoder version %x\n",
 			msm_mdss->mdss_data->ubwc_dec_version);
@@ -732,6 +753,17 @@ static const struct msm_mdss_data sm8550_data = {
 	.reg_bus_bw = 57000,
 };
 
+static const struct msm_mdss_data sm8750_data = {
+	.ubwc_enc_version = UBWC_5_0,
+	.ubwc_dec_version = UBWC_5_0,
+	.ubwc_swizzle = 6,
+	.ubwc_bank_spread = true,
+	/* TODO: highest_bank_bit = 2 for LP_DDR4 */
+	.highest_bank_bit = 3,
+	.macrotile_mode = true,
+	.reg_bus_bw = 57000,
+};
+
 static const struct msm_mdss_data x1e80100_data = {
 	.ubwc_enc_version = UBWC_4_0,
 	.ubwc_dec_version = UBWC_4_3,
@@ -767,6 +799,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sm8450-mdss", .data = &sm8350_data },
 	{ .compatible = "qcom,sm8550-mdss", .data = &sm8550_data },
 	{ .compatible = "qcom,sm8650-mdss", .data = &sm8550_data},
+	{ .compatible = "qcom,sm8750-mdss", .data = &sm8750_data},
 	{ .compatible = "qcom,x1e80100-mdss", .data = &x1e80100_data},
 	{}
 };
diff --git a/drivers/gpu/drm/msm/msm_mdss.h b/drivers/gpu/drm/msm/msm_mdss.h
index 14dc53704314558841ee1fe08d93309fd2233812..dd0160c6ba1a297cea5b87cd8b03895b2aa08213 100644
--- a/drivers/gpu/drm/msm/msm_mdss.h
+++ b/drivers/gpu/drm/msm/msm_mdss.h
@@ -22,6 +22,7 @@ struct msm_mdss_data {
 #define UBWC_3_0 0x30000000
 #define UBWC_4_0 0x40000000
 #define UBWC_4_3 0x40030000
+#define UBWC_5_0 0x50000000
 
 const struct msm_mdss_data *msm_mdss_get_mdss_data(struct device *dev);
 

-- 
2.45.2


