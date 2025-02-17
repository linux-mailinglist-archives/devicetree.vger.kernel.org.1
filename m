Return-Path: <devicetree+bounces-147574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDA7A389F6
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FE3816095C
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C39922A4EE;
	Mon, 17 Feb 2025 16:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vgv06a6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86922A1EC
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810541; cv=none; b=upMQNiun1/K5wmhfjxw4YhXGtraf50555c3E3dmTLBNc8ss4PoDSy8BuIHPokqBTaX37XkKf9x+lXg3czTmYIX+v8PPm/Kv/etz/AINCWvo5iowNntBMFfRLY4D7Bj0es46JEB9x3HI6mqny9Bgg/Uza0oc+4FEWSABbhORbqyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810541; c=relaxed/simple;
	bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R1o+AZTXWddtTe8yHYx9qbzSJrCst6XRoX39lX4nP5ofXTT2nbkkJocJK/D44tSzU3FwHIEL1dXQxo9N/7hdsA1LgJx9/dEU76IUwl0rE1jhDqeEAYHpv77djQ7LD/z5+zMAPcwpQy32rgoetoCQ0UrPmU/cNDb6p+qvszW+K+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vgv06a6C; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ab7098af6fdso64049666b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810537; x=1740415337; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=Vgv06a6CemgZ/j8GsoTKX8FMDtria0VXNve53gO1Dkt1KvC5azJ62y1MKJBNeJXhsw
         5OlPFa3OmugVNgXa0MfGna9C4lV9Es6wGpJUbg7hfEwagPIOoo0cofhlizTa+MZUj5kL
         A/0ggTmCGJseyo7WIpGJaLeijIqI9tGAAPgAEpNG2Aynds2mW7WjWQrNq8alkd0Rysjm
         Xr4iJgZB2UW+ht0IgprCPhRj4kMr6gXl5vAmh/68EzeJdKzCgM5HdRnad+UZt2mFW5WI
         wzeZxp0mCECuiu5khw7nhlqC/rFi5AoM6uHuAHhJZgtaS5bDMvH5FnAwyinX48RJwxZp
         b0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810537; x=1740415337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=pOtuoJ2HEOjsHxfbuB/Pbd2F+OOVakUrKWxtml0e+USzvTnFTpD3xgdLoBQPNUN+8y
         bQ1n5XBFj5l7EaFcUJ0Um8omDUywqcOm3eIC69szoyuIY6+h2KsqavViHtSKJPj4itAw
         lIIMCOT7XLyO9L3v7yjM5cfQsjHn5XMBqxa170KL7M0ojYImKEZOrN5wwXYnAC+GUSyq
         iqdZfrn6KtnU3b56hTaRbPa0bcGJh+RLoE9FJ/QrwlNKajIykZser73jAhV8mMBkxjrZ
         2wDWhMRwY+aGaHWOXQuQ7bijrPS1idc+og2NEO7iYY0a93bCcv8hX1ELMvQgrHjtbJjx
         X8Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXQhdrTztE617maoGH2eF2BtaJ7CwGrSYWBkRJWpDK3ufYShBZmIvxrPrCXUJvNfPJ3o3TSrUTtZpUi@vger.kernel.org
X-Gm-Message-State: AOJu0YwRnyiZVhKWox7XeASl3dMtcPyJaxPRUv0ZzLp1YVr63nu/bWiN
	R2Tct6gULHO5kAShxrw/+YAMstggH3QAeAiXNYXaW0tMvzjex2XnZwGMsYDjI0U=
X-Gm-Gg: ASbGncvgeofuNptl/kXC6H7dprUhLxvgvJyR+4ICcWohF85+/cgyYHI5Yl1zG1Ftaem
	QXdpN+3fSEP1h1dkDYiLbuoheGnbKy+OC4BJr8U57oLjjCKiJd2KEAWP+PpOtdRN8XEaloccTqN
	OgxoHGPTMBk9lDbaJu206UcQiksG8gpUlZCKrf0g8jod8QkKJ4VS7fWF97fkOw5XOiRvjuAW9CA
	eiwPa3vx66wW+XDq2Mwf2NBrJPuCxRax+zCn89OBp5plIiBasUD5wX5B/ao6QDNtHBz5Vs4Gkml
	vkjmy1xsOANx8COtK76sDTbezQJvN6M=
X-Google-Smtp-Source: AGHT+IFYF0nsGqkCnhvNcX42NuzRrOaSu5qMxI91MpfvgKlb990wc6+bQ0tjBdLkitfFsrwJbfj/Uw==
X-Received: by 2002:a17:906:7310:b0:abb:6f35:f514 with SMTP id a640c23a62f3a-abb70df3426mr352695766b.13.1739810537368;
        Mon, 17 Feb 2025 08:42:17 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac781b78sm82647966b.60.2025.02.17.08.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:42:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 17 Feb 2025 17:41:37 +0100
Subject: [PATCH v2 16/16] drm/msm/mdss: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-b4-sm8750-display-v2-16-d201dcdda6a4@linaro.org>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
In-Reply-To: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3191;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBns2bFZ2hu1MzBH0BCrv5flO9CVwu0Y6SnKx404
 uBGg2GNXWWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7NmxQAKCRDBN2bmhouD
 10PMD/0TpbFaxlve+q6sBLe+kZnWI2gpgxVajSa1kKSerRKqRlJChd49nL352VlDKP/tMekaOEs
 Hb+KkarBrXjIt1LRA2FYHygGYffOZZlJMYLt9K6DJP+qi9ZE0PmomB1e6ts3j/67P8jPEWgxlkn
 Tfgp4kdXfC3LVggeXPlZwbo3ZQ6y8KV9H4yVmLD1/PM28bB2n+0e+w5Beakfc/tL4OkJEhdIKdb
 duCjqZlQ55c6i4V+4Nan08qanQM/h5pF5aL7rZDU8lNetrF5mmf/GmoYLbyN7I5UuDpZLN448bq
 QDjQF6UY3z/i5PmmQPvLrKjwqWrx3gs5sIXcF7247NEhs5WEJdAfQQuys7WKxupcs4+jSWxoL8v
 2FcnAiaC6f3wSJMj64CoKlzNWp2nMFo+dnjnNNvu1L4vchGFXJV62dskce116r3MrL4M0tGNbd1
 mrx66nqmfy4dJRI1d8Xv1zTHqyY/tMTtX0QlKt6vhH2hVBC+sGHaHN9OUSaE622SNF42CMHxDDM
 /I2VKh72af99OKFHIczKQBOg6W4n8EGdOipZXaOk1UInIOKm5gfifVhem5dvShouRRGzPODRZrU
 zWLuLnb9ywEZbVSysnWrgIUQvGSLy+trxx4CIH6m5QhIZDWZBAnyN5JwE8bLrMw1ZUJbJobSZ5A
 nTciEaLHS497GBQ==
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
index dcb49fd30402b80edd2cb5971f95a78eaad6081f..3f00eb6de3a9d2bee7637c6f516efff78b7d872b 100644
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
@@ -722,6 +743,17 @@ static const struct msm_mdss_data sm8550_data = {
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
@@ -756,6 +788,7 @@ static const struct of_device_id mdss_dt_match[] = {
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
2.43.0


