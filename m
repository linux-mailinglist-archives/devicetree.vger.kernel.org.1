Return-Path: <devicetree+bounces-156668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C200BA5CEE5
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 20:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 640A6189F0B7
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E861F267B16;
	Tue, 11 Mar 2025 19:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q78WTc06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB25264A7F
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 19:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741719802; cv=none; b=n2WaMudZSPtm/4QDaLTlQfAlWiL2wjMbZ6Rl+E8FRundCZHmLGGeF1d/Xy4pkZIRb+J2w6MQlLYS9NLxMNYumirwWVP9GZAnt2jCpr6sD2k958idagGKJ8sYwAC4pyWcOVGgpQF4SHqM8T1FMVn1f53aQC9aiWRWhzN8/V3kSrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741719802; c=relaxed/simple;
	bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SgVLWMsoIUe4nfb22Xl1zWMl2YDvRF4Q7FxytkrPBDFujj4Erk3hkbjKDHYZTi47zlR99K4VduhrtekcWgUsqX8vN0kwiv50mMyAJF8ayWLsjAedmoDOhmgLhM9PbpzoQZj6p4aV1OCzuwJxyJTCB1zkjqQ50caUzC6LD5YXCXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q78WTc06; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ba8bbeae2so7240845e9.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 12:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741719797; x=1742324597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=Q78WTc06BtDIRJBIrz56TFInQutAr8sOxmfngBXKRnY4o1JucE48YOZwN67GhdWc4w
         wmtPCYJeMRmtqL5/f3U9KGNINU5xc/LFQ0L/UvcKgzoOfefZZuL9q/mqUp7Ht47+60M9
         YboUd6XxR0ewdm5Jl3YTbDFn7UJO3yqMdnmJlJ0LImbNXqYbcZ0a/5jB45/6BPJb9Srx
         uyxBa98ZRc0H2b5g03XdTQ0+Gmc7tViiaBJ342bTHC2T6z6yyy4eiua7n9xrHO8NsZZO
         6Owt6VlTNoM6dqvWDBKITZGBG/DsCzrw3Emmhn2x8aAPJKbwIjmhGpr5qPNkJ+y7kJO6
         BGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741719797; x=1742324597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=YAJKRI2DXbSsPSWS3goZmJgAnN3kegyEf0CjDqcNddw47URGHKFcxdylgC0tev1irs
         CtPoam61jb4MLOTFRouJLWs0L5IFBo+T0liTcN6GVLw5VsScgWTywqf4KC4JDuOfcI3q
         Gtl+V7Fu7SLC1/BnM26TTmlquRklre0EWMYGeDR0DwgCw/LXVdAYj5SZwoHLmqKmGklj
         K0XWFNYyvz2PmS/GvfwBHKMGccwncoC5Ghg5lnmMEOIupLYqu4CY01b23ffIaPUXei+R
         PZpgqdeReLByv5f9k1Sen/rHQN98lEeQkOuDXaJYN7xBbJqY3x/pxdmXlerShGZdOFHc
         TJQg==
X-Forwarded-Encrypted: i=1; AJvYcCWp6XHLOOzn62a2IWkc9nPPQmBQknhmXxwYl/qNQuR1C24JHjDULgg8PF+eKZh+dPVRFv2BG0pwfQir@vger.kernel.org
X-Gm-Message-State: AOJu0YzCTV2H8ESr8CVzgnJ43aXaMmKxfEMNB5UMvTZ1debVXLt9saec
	8L3tdX5vkFeCXmpxSNKFIw+RgHmJlvvPBPD/ppjcT9f9+ESM6rHZI8keOzlk37c=
X-Gm-Gg: ASbGncvOp6vbPj/8oSTpnf5L6AnBsPYKlZtBhp8wqnr0JqcMgeElhl+6x2lTCDEom5e
	8L4x/RQwk1FU+KsW8lYe1eC93AwfNv9cbnXR2W7P3PM0oJvHaXE8DEfOfr0mqentmFcNxJavq3O
	KMdj3aFf1y5k9qKHBNA1KJfJESoFR8I67gdedJ9yzYER0kqpGKaVFuYDJiSi76fjHhmPbUjavYs
	lBwUsykVl3Cnp/plXwiRk0lOCrFXyD0IvHs/DTIzKKZw4JVJF59rMnBeVAEdwxmEs7StEam5wGk
	CczGOt1HsWlgDjR4E1dkbcYFZw4AZ01BOg5zjjzsox5ByeHhN1aQWzWKDZM=
X-Google-Smtp-Source: AGHT+IHF8uLli3Mscw7Wz7pzlQgN98nmS03vxbjY+FMS38uVER5+D4/KmiqUOx0hRsjBec9IPhX0ew==
X-Received: by 2002:a05:600c:1c9a:b0:43b:c228:1ee0 with SMTP id 5b1f17b1804b1-43d01c2abc9mr25985105e9.7.1741719797380;
        Tue, 11 Mar 2025 12:03:17 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ce70d13b4sm127681155e9.38.2025.03.11.12.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 12:03:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 11 Mar 2025 20:02:09 +0100
Subject: [PATCH v4 19/19] drm/msm/mdss: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-b4-sm8750-display-v4-19-da6b3e959c76@linaro.org>
References: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
In-Reply-To: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
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
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3191;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0Ii1yuO48mmFAfjVI5TUjpkb33aMMB6mobfjo
 UUveOoKZZCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9CItQAKCRDBN2bmhouD
 17owD/9LjgAfcE9wntXboxUQq1wq53OyBXwxPik3FSCXq00B/qklbILV0ge/Szdeo9zTuS8y3DG
 knhGywWnB9nHdRoi+TPbAZBJs8cuw7tnj4TNMi3FYQd9cQySHGKHAE7ioVFYfYHEMGctY+Jt2nr
 5lJrIhhz8dUXHl/FUI7jfDdrcg/L6pWAoEI+YideSmhj/cj7gs04qCP0jVZwnNEle8pUv/YPQeg
 KI72byD5UP8v7iIM1/PurcrImftuR4WoV+eNVAJwh7SaeCem6YbZIW8rZK2vfiNbtHEu+2G2Qc0
 rD8nmha0MhFUXguzZfTaaqFP0Bup6J84yfAoondQpmxp9zMu780/O5Q1/8rrl2boTiIVZw5rSwg
 bmHjqCnfBMtHi1PfdJhQagiDmbQwLR7fOgBaHvc2IPG2AqgLmB5lFQC2NeiWDhv9NY0HQKKOxLE
 PeGtM37TtdWZYYHppyE8o/vKWNFXJl622/lZPmfLlqBDeqSe0FDrb4sARfnpXdv1STDLqHXtYFb
 mAD80MXlqqvpo5/gO4ySYdZUluuS6zkd+/cq7EXE/h6W9H3oRVVV4abUnquCLbPfZMQITgvWlii
 alysPpRr0FTtk14vawx9/5uirQdtKn8irnP7UvKc6S/k0YG84FMg+E/ieo3N6NGBDiQ21fVOsiS
 bWBVJLuy1zrqZWw==
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


