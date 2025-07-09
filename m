Return-Path: <devicetree+bounces-194479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA9FAFE570
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 12:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5206E4E0FF6
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 10:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2000D28C2A0;
	Wed,  9 Jul 2025 10:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TWg55c0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770DD28BA98
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055796; cv=none; b=HlqtP+M/kv9IBTHHot721imWrhKOL24lpVz8zpEZcN4kXw44qIfhaXtlW2aFuf292zFlNFGtBinpa5pl0qAhOcqixqQrlurimuzbvvCcTJWWO/1esrht6umnSW8IkZ0YeLgIkji/edG5P+F+jzidkTDOvnFjlfcQWMFREZtvhAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055796; c=relaxed/simple;
	bh=oHtxKLb95kWtO1ABeXnwkyA2GtGWv8G/qQ04XDDzKoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C2IfFHYLMu1KX4UrLXSPQtoKHZGbjBEdA/4neSWrlnBKPa/Nlqmqd4Zw4TxgttVPIsY9hfGMYGitGbSTPFaO4zDciIY5zfFuNg7NzYrpFsR+PTfl+yvrhhDal7yhLenaVkSSdEYTtT+K8y3s4AotfuTT5xr9ZMhviF93uMToeCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TWg55c0C; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a54700a463so473762f8f.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 03:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752055793; x=1752660593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6HxvD09F6nT+66ixpsjcoirCJ37IebWgFlBepGL5ug8=;
        b=TWg55c0Ce6UX+XBe4R+NVyUUzcZglTFolRq9nhSSuxSyHHGlbsI5LMdEmF5+r2G2Ee
         mW0UwkzcsA0if2hMAXRfRe48+jUd2i+b9AGh7YZtusQ0px5bwhWPNjVeUuyA/uTGRGjc
         cJE4EZ72MTm7QiSwP3jzAcvRBTLy/6MOS/vsR3MGhK3U8nJXQVpvezdheRG7qhF8ulL8
         ZTFhipAIPZ+sNWCRpRVz/S4UVZSyOU+elNzq1KwEQ/DU7qSfvMW/bQKELsWryEB+WPgi
         Y9T2emXolOMAw1w/zetrR+XcocR1OfPv16K7ZL9L7ger7P0L/3SkndHiX2RLx8vqf9Zl
         644w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752055793; x=1752660593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6HxvD09F6nT+66ixpsjcoirCJ37IebWgFlBepGL5ug8=;
        b=X6+Ef4f2YPvjqEkcRLPGLBIeRIH9klgNceUpnSMTtzVkReoXvI+DadWw4lryJe1hyR
         zmDZiTJKWSy7BJCiFmXelVxBsEKR+5ph/O/1Ayu3/gxlEzSXeSoL03PZ2hwRudPsTA49
         i9A6GXgoprTpdro9c3t72WwhVgt/mU3JW1uhJFeD9lsW1CuSp4hvvGFtajxZKQl3EAdC
         /DPgJB/Zdvav+jStRYJhz+Nph/BpUpvLG1MixsY9YcH1c/+0ETB3GrADyEhTP8tsoVTA
         t9yOPrA1BP5EeGW9E0c7kDSKxq79EOzuuQldvrXzHfW//rNhXQKWTKS6ctSul6EuBfO4
         n8Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWJjL2bHeh6qLKSyiIghsuQ8ZnZeUk57mR29bUlhpwiixKExGHNXBnUnn76CXhuuyjsqDnPxUvFsScK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy61QbHk10rzDR8BJDpIBmB7g52ebrIBeOQlrl+rhdV7kxA54F9
	OSyBy/D15Uj5VirnQMMkdCQiCl98gSSYsoniKNaNR/FMbT9x6k7uKATDqGndsQLRloU=
X-Gm-Gg: ASbGncsvuv9GiGTq1xKfGKYKrNBEbelxoj4HfSU0ZYvP+uX/bWzfTXjkMM8sfP21vkJ
	GXQfJNJOrcvyAlJ1PDTrKEaO5WLzDmenXN2Rwrs/QbzZv68WJaGfLe1lM+f6SOZ4S38GORHpaYh
	YZhWcX7gQgAjVuAh2jxIl2LQn5I1YR8g6qGntjK9vlHf8+HyKKY3/rU+e3LY9kET1qEsj18w5II
	ZZhn+CBmMDsMlwFGWLoE5qMRdG9RzKYJkxu1IIIuUTNBDNPYY9UK2fQr2oDZcE1P0wSq4JXttvJ
	MSNCav9/MPoSjvnyh9iHx4bj+CYI6/kB6h8OMmJY7bFF7kT7lDjpSFqebV0Js0ODGLo7WsDD0De
	oXQ==
X-Google-Smtp-Source: AGHT+IGePVRa5c41YQYZ/2B1kylc5GX/RflEeqWBX0hcc0fLez3e7u4p1eY6s1aZVrZhJaHTwFshVQ==
X-Received: by 2002:a5d:5f8d:0:b0:3a4:d9d3:b7cc with SMTP id ffacd0b85a97d-3b5de03575cmr4975600f8f.28.1752055792512;
        Wed, 09 Jul 2025 03:09:52 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:d3be:a88a:dbb9:f905])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5032997sm18342105e9.7.2025.07.09.03.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 03:09:52 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 09 Jul 2025 12:08:55 +0200
Subject: [PATCH v2 3/6] clk: qcom: videocc-sm8550: Add separate frequency
 tables for X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-x1e-videocc-v2-3-ad1acf5674b4@linaro.org>
References: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
In-Reply-To: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

X1E80100 videocc is identical to the one in SM8550, aside from slightly
different recommended PLL frequencies. Add the separate frequency tables
for that and apply them if the qcom,x1e80100-videocc compatible is used.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 drivers/clk/qcom/Kconfig          |  2 +-
 drivers/clk/qcom/videocc-sm8550.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 26752bd79f508612347ce79fd3693359d4dd656d..53bbdbe0725bd1b37ecd4c6b15b0d31676d9f548 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1394,7 +1394,7 @@ config SM_VIDEOCC_8550
 	select QCOM_GDSC
 	help
 	  Support for the video clock controller on Qualcomm Technologies, Inc.
-	  SM8550 or SM8650 devices.
+	  SM8550 or SM8650 or X1E80100 devices.
 	  Say Y if you want to support video devices and functionality such as
 	  video encode/decode.
 
diff --git a/drivers/clk/qcom/videocc-sm8550.c b/drivers/clk/qcom/videocc-sm8550.c
index 3e5891b43ee404edc6c99bbf8f2583cb44df9e37..32a6505abe265472de4059c4a048f731fdbf1dfe 100644
--- a/drivers/clk/qcom/videocc-sm8550.c
+++ b/drivers/clk/qcom/videocc-sm8550.c
@@ -145,6 +145,16 @@ static const struct freq_tbl ftbl_video_cc_mvs0_clk_src_sm8650[] = {
 	{ }
 };
 
+static const struct freq_tbl ftbl_video_cc_mvs0_clk_src_x1e80100[] = {
+	F(576000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	F(720000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	F(1014000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	F(1098000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	F(1332000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	F(1443000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
+	{ }
+};
+
 static struct clk_rcg2 video_cc_mvs0_clk_src = {
 	.cmd_rcgr = 0x8000,
 	.mnd_width = 0,
@@ -177,6 +187,15 @@ static const struct freq_tbl ftbl_video_cc_mvs1_clk_src_sm8650[] = {
 	{ }
 };
 
+static const struct freq_tbl ftbl_video_cc_mvs1_clk_src_x1e80100[] = {
+	F(840000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
+	F(1050000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
+	F(1350000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
+	F(1500000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
+	F(1650000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
+	{ }
+};
+
 static struct clk_rcg2 video_cc_mvs1_clk_src = {
 	.cmd_rcgr = 0x8018,
 	.mnd_width = 0,
@@ -559,12 +578,22 @@ static const struct qcom_cc_desc video_cc_sm8550_desc = {
 static const struct of_device_id video_cc_sm8550_match_table[] = {
 	{ .compatible = "qcom,sm8550-videocc" },
 	{ .compatible = "qcom,sm8650-videocc" },
+	{ .compatible = "qcom,x1e80100-videocc" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, video_cc_sm8550_match_table);
 
 static int video_cc_sm8550_probe(struct platform_device *pdev)
 {
+	if (of_device_is_compatible(pdev->dev.of_node, "qcom,x1e80100-videocc")) {
+		video_cc_pll0_config.l = 0x1e;
+		video_cc_pll0_config.alpha = 0x0000;
+		video_cc_pll1_config.l = 0x2b;
+		video_cc_pll1_config.alpha = 0xc000;
+		video_cc_mvs0_clk_src.freq_tbl = ftbl_video_cc_mvs0_clk_src_x1e80100;
+		video_cc_mvs1_clk_src.freq_tbl = ftbl_video_cc_mvs1_clk_src_x1e80100;
+	}
+
 	if (of_device_is_compatible(pdev->dev.of_node, "qcom,sm8650-videocc")) {
 		video_cc_pll0_config.l = 0x1e;
 		video_cc_pll0_config.alpha = 0xa000;

-- 
2.49.0


