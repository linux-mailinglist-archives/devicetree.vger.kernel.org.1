Return-Path: <devicetree+bounces-149463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE39A3F8D4
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10F5F861ECD
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D04621D00B;
	Fri, 21 Feb 2025 15:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zpWTd3Zm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A97221DBD
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151535; cv=none; b=TH09vVg9YVWz9qk8Xbovo7jcPaLT+ZcFrGJXu6bYwzIqpUZ2YiwvRA/xsRa7Ad2JkZq8j+pouNapDyC0VZBTv6tCRjxmVms2wf2xkP+MuL0LV4/RtDvSvtnh0Ge1+SnGchOBwP/x2Wa0cnzg2OrqE/eXG2+vyWTPIgVUo2ai0Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151535; c=relaxed/simple;
	bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qLaScYPt/bqxr+MjNKlcHF96RI9CDaBKMBE4ZIrzgkt18BLbJsBn4/wLoTX/Lr8PjzymY4A+J6XKw0jlwI0QGJHkXwjRAfZl3NXWn/HLgH86TaffEQauNQBwZcnsUy19FfPRxVfY3/nJPBON5WZa1OI5VJA8MN94GOPMf+SJTSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zpWTd3Zm; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dc191ca8baso450533a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151531; x=1740756331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=zpWTd3ZmD90wd13bHUc/lIP9VhBtInONBAKajJCMMyMPQvMXnGoxD9fY4ye0CT9xAU
         IE5RJO3N1S+8zbshE4QIe/te30AVIBL6rPodSy+QaXQYIBuqa/Nhm2hCPqgvFxVWTlxE
         Y6M7haz7pPylalVejX6LwyinBiC0i7E0erNjSup7U37jRSjpAr/vvKXtXvTRtA1dUsml
         Nznt3jab8ZDFK15KnU8hVJobLpEqPNvUKphSxTIeC8TNZIg7+GRBs4kkSuZfksMAuPef
         9mdWW80lOojheAg3K2N4yBcJ/qX4mrTvzwXGKqZdumOs/EVx6r863OpU+JqNdJCV4hiR
         Of1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151531; x=1740756331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3bwniejdI/OPbevpLj33tIqt0/bau3qVCvVDzBOjOY=;
        b=vNgUX2/vv+M3uuGL8yTKWPDiXEWS9OvD2zNoX3qjq4d/y//ybJo8zwXkKRkFUCtvtH
         iSk39U/XnwIZH2axFYIETT1VpZK5TYySSQWOSYXpzAbVoHNDaooB/xFLsVMOf88vpAqD
         ffl/OlMJYXPfGSLUtncWXdfK4c5HshJ2wRkcK4HFrRKFZZsA7fDBvAvII/mJcyNfm6NL
         4ahgiBda+SgYUPSo9ZJbCrTQ3xsmod8uNQW987VtAFyAxexXdmvoXmVmqO9MfynMQcey
         ln7nXdG61vNXKOMT4qaoDm2SHQlMVMK0xm0RrX4CoNILcVlSdXKVm1d5JJJXjwklgb0+
         MtBA==
X-Forwarded-Encrypted: i=1; AJvYcCU6zGsbRXVEQb3iz1con0QQWHhj7ISLPGjVWc0opnApZKPpohh4H/gV+P823qTwElF7lrlQdvUi0cjQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3hoQwWLjcvFDBJlzkVcFZWH9beZmima7Uw+KodR3vEpoW1qiD
	MN1NeEHAWNBXPC3UdIR1GWlWBOYPftQ9QXjYvhRQBcvx+nEI6lLj/sn6IIxyL1A=
X-Gm-Gg: ASbGncvHM0V4DmGNzZyzaal9uLuXyKrnoVApCsofW39aEtJNI85WrJbKKaTkKY4349r
	FxzNbHk0qYLyot3bJEqFk+8q2cDzN/hPTpQQiAwriin7Nwuk1ZhI++zSe4vu+lQKfTmoS7vwpc1
	Az0fS6/09OO5hCgGe32+QoBoUMKuTAk3svUQhxr7iPn54j0tpoU/6+V83YbjD3OSUGcV8U1LXsf
	y1toVmF9VX7WnAVv9cOs4a0dpJ9vbNcpieAVM1VTeG8c9zGMw1UMc91GGuxgxoMEGxtqL3laA5K
	GBak/C6pnLs0SIFt2WQtQFiwanaUOppXZBydsrZ2XlOev/Wa+Qiw5n1v6OqkgESYTmHhltfWA+3
	g
X-Google-Smtp-Source: AGHT+IG6Alr+e5u5uJxjL/bold2dU0K4L3hDTsgqPGJ/U2s/DiVnDUFaMiTdmBFp0wEmMkaMFodGpA==
X-Received: by 2002:a17:907:74a:b0:abb:e5ac:28b2 with SMTP id a640c23a62f3a-abc09c24732mr106927866b.13.1740151531277;
        Fri, 21 Feb 2025 07:25:31 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:31 +0100
Subject: [PATCH v3 21/21] drm/msm/mdss: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-21-3ea95b1630ea@linaro.org>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
In-Reply-To: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
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
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3191;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=npT/AUk70cBHCRbn81WnGX4UoVxSXbDYwaGyJuk3VME=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJq/ctXpMZ8Jnwnml7qBOIiMMaNsLSOfnFQtu
 E+RAw9e9LeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iavwAKCRDBN2bmhouD
 17mXD/94+XDsJfLydNAyZTQ+/RWjpP+M005+GCV3TKtBNDit1ewBvJdQko5LBfWZJlSMI0nTmKJ
 z/z7fgHHOeeW58wIwdsjtLf3k3SR7XqaonuobTJHEP+gdpvcUvFRKfBzwpsAjFbtVRiZ9SZM0pB
 814FttaFuZO0WF9rYaRk1bdtoAoAeZJ3zli7f53GyQ6mbAye5P0vrhMnVUSpK3C9vp8pSyOQ0Eb
 0fkMQxzYCMmSaCaIpffD9XH7GFEGgjhO43h+yHZp+qELOfCDizLV+BzbIixYLvAH5u7D8cl2Woq
 D6L2M/qrSHWSV6STwB26EPFDr/40lcVL6RDglOv44lNTVwvwnGhh/HUmume8slOYwK4PtlB9Aen
 U6o3772Tsho6oqXQ5rIUYfYiyiHp0yP39Wrh+G8HMYk78tCSaXuEEGl4XnXuB8HyKDYWdUrnYZA
 +zE/9srdqNj1bqsup1ouiljIQSyUjh7uGff9MUrh9p+57CVMWHkFTgiFJdmmjlc6y9n+u1OX4dW
 tj9prAwgFZBlqyPZ76kH/F3pn6Sgr+gSVqB7tvQ6C+iaSaJkHP9+G+nMRp5HQ1aga0WU9nEi5yr
 8E0Im/f16dGTMtSNUM1Fm7mT4PwXWLXaZlLJdQYJviLwCP6YkJSi35ZIo2qhJzlNvZsmjxcqQAB
 Zcg9tFWD5yU7oJw==
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


