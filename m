Return-Path: <devicetree+bounces-116067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A85F9B1BCA
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 02:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4952728135A
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 01:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7895B15383D;
	Sun, 27 Oct 2024 01:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cwuOSruj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF3515098F
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 01:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729992313; cv=none; b=T35i0xIOgPQebJwOu4ze4KCJjL0l7ynKW8lPgGfItS6opVOUP5rpWH8iZJlu1OHSoXhQ4HUyBUYVLJnNsXfy3O2qutjTOyvA2WZNU29bKVBtVgENLit/JuTXgBli8ur+HELLBDHfNe13hqP6JxvfA8cbOQOZhlu+Xqnyqf0anBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729992313; c=relaxed/simple;
	bh=J01aZfvomEsVQEi/Nl/mHvq41KMRorLHAPm15NwwtBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tzCz4fPPLi3bYn5gxGP118uozUR5ulBta+hxq1udg2cBNygzZOpM/Swtt2nceW03fXHkFvIPI2BPbNlmzSoT7ErlXRLj1wfBJpiI72fV8RudcYZfcy3BqdmpVItCB/HJ6YRVIlL8ASeTqMKNQcbwFriQ0yk8d+/l0eEXiFbz6Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cwuOSruj; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so3378053e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 18:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729992307; x=1730597107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6AxpS4d6FLuJHatjryaGw2iYlZcDdEsHoMG8xCl8x8=;
        b=cwuOSrujxgRxH+Auh0SjDB6EhkeHsEhD16hP8suU74xFu59z2CyXFFw4kFHq8N3V/V
         xJub0Al3m5g1H4hQ8YF6QelsPNBhbweDipXHzEVZehWUqFiNX90CfDuTbehP2gyW2rqe
         FXp7B8fVTuXV6NJM7BoWn48vWjwIdh1ZBvI+MLgvpIEskWBUr+8PikU01uPoQe+1SgLh
         cknFU9PYgD93YMf1rh63OGodMlCdA/mnhcPWe/zcauN6qQvV4erJLVXFT/kB2alDfKXv
         IO43t5twgrW/sZh5eQAZ2/ecPuDDTVSVsh7TX61JKO0WFrZzGMYBuU2Yw6/qZj0BRDyR
         YvVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729992307; x=1730597107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V6AxpS4d6FLuJHatjryaGw2iYlZcDdEsHoMG8xCl8x8=;
        b=Z6+5Mg8CR2t+QP9Gf235XqjGvKopzRzHUdR7DFbhUT1PAEZWC94oYChdEy4/6EySpx
         OGpi0Iv6EzRpTJexRsWUacJddTVKJq7taCWzvi96eO7qydK9AuP+CGPiYILTqnL2zSGA
         POGHG/gKyS0PgVDuGyxRn4mecc9wp4830CcOEObkoVzVPxBMXR55zsK8X0D9HVOZ0i5W
         jebZpNMc/Jubl+VzMQw8dvvy6fnH5HhnYNlRAnPh1dwovmalztDYFo1izhDBNt7US0dD
         RQYXx2tqmtw71R8pdA+i1dqPzXi1me28tsFFvJDNNIvepvbwc2M0hO5jcIfc0Czwtwlb
         91HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBIMa629k0KhpLQ0MycZVy9YDu1Ta2y5wA7owClQLN/oaZyznq8WpA8r1oItp5XwMJsVdzseA3P1ww@vger.kernel.org
X-Gm-Message-State: AOJu0YxLH2YmIfzZQLy4r7dyvldhVCKngW/KQU09PkSTDaz5az2w6mfp
	Y5+sINPKO0mGWSLRKNdbrk6ivLCk6YzNY+WuTYINbdfXRrB8OA27fLUTqcbRtP8=
X-Google-Smtp-Source: AGHT+IEd+dqma3RL5aXu4AzcArNcNZnZ0SeEHd3lozPEw5mXracHCdtFMAc0tuN/P4VLDmEaSHySIA==
X-Received: by 2002:a05:6512:12c5:b0:539:e88f:23a1 with SMTP id 2adb3069b0e04-53b3491c80emr1233026e87.44.1729992307146;
        Sat, 26 Oct 2024 18:25:07 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1c901esm642356e87.219.2024.10.26.18.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 18:25:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 27 Oct 2024 03:24:48 +0200
Subject: [PATCH v5 09/11] clk: qcom: tcsrcc-sm8550: add SAR2130P support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241027-sar2130p-clocks-v5-9-ecad2a1432ba@linaro.org>
References: <20241027-sar2130p-clocks-v5-0-ecad2a1432ba@linaro.org>
In-Reply-To: <20241027-sar2130p-clocks-v5-0-ecad2a1432ba@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2386;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=J01aZfvomEsVQEi/Nl/mHvq41KMRorLHAPm15NwwtBA=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHZZisfbXZLOXg78S3sjIC7QNVHzfgBdu7wd8m
 QU4vZ5oqoyJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx2WYgAKCRAU23LtvoBl
 uIx0D/wOpl9ftdfXZRoFor+5fHeRGD3FvlsCf1u5T1NeAuTyle5QcQubTlqqZZJGkJ0WyE5hbf0
 l0qcZ45qipB2W5oviniT9XgxqUw1qimQt+UTh9OLB64wDbfeZCcPLErgNcbmQzK3K6l8crS2Gyh
 suh97VUbHWl6t3NzFiZS86/KQWyPLyxKqU31IC3CEKtblLbqcevY0uBw1N4imNcivjQVLAFErJL
 SBkGEM7UqZOn0uRrfQt7egPYS7NPazs0b2he3IUj42N+AjVXjNp23giRm0h8BBV06fo4m6sAjeI
 TwWyYspCU/kBHVnuzEL3R3LmwenJkvpT5CG13g1B3tiiv7oZZoES/AipdyPuJIVAPiiEB2w0e5L
 itTIwHy7WiiozoRG9MOlLfOQ9rlCB56FYQrqK45AjveetWr5DxEb8V4bJqcK8y0UNyKNM7o/fru
 vCs7jXkdpgSZdAm/JLKEd6TGPk7pKbclFf1S1hXpyNkzXQmDcT94CWO/DftHvbDNZuTSzyA7n4u
 KD2kp8Zc9BMOxD5V9HYBPN7krx6nDenFcCVWx9Uu+d1Mt3TP3vNsDJtv1fYE9Bg+MurBt9uR8x1
 69b88hWtgKTum9iUqvW9J2ZNzjGzqLFa4c5hul8ZWEGSlp+e/DHvTkbCFXYFYoyBJ9w/KL/mYYD
 xhm7/EZuPhXXU6w==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAR2130P platform has the same TCSR Clock Controller as the SM8550,
except for the lack of the UFS clocks. Extend the SM8550 TCSRCC driver
to support SAR2130P.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/tcsrcc-sm8550.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/tcsrcc-sm8550.c b/drivers/clk/qcom/tcsrcc-sm8550.c
index e5e8f2e82b949dae592ec3dda585138bf89cab37..41d73f92a000ab924560a0c2c9d8e85a9aaeb1b0 100644
--- a/drivers/clk/qcom/tcsrcc-sm8550.c
+++ b/drivers/clk/qcom/tcsrcc-sm8550.c
@@ -129,6 +129,13 @@ static struct clk_branch tcsr_usb3_clkref_en = {
 	},
 };
 
+static struct clk_regmap *tcsr_cc_sar2130p_clocks[] = {
+	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
+	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
+	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
+	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
+};
+
 static struct clk_regmap *tcsr_cc_sm8550_clocks[] = {
 	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
 	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
@@ -146,6 +153,12 @@ static const struct regmap_config tcsr_cc_sm8550_regmap_config = {
 	.fast_io = true,
 };
 
+static const struct qcom_cc_desc tcsr_cc_sar2130p_desc = {
+	.config = &tcsr_cc_sm8550_regmap_config,
+	.clks = tcsr_cc_sar2130p_clocks,
+	.num_clks = ARRAY_SIZE(tcsr_cc_sar2130p_clocks),
+};
+
 static const struct qcom_cc_desc tcsr_cc_sm8550_desc = {
 	.config = &tcsr_cc_sm8550_regmap_config,
 	.clks = tcsr_cc_sm8550_clocks,
@@ -153,7 +166,8 @@ static const struct qcom_cc_desc tcsr_cc_sm8550_desc = {
 };
 
 static const struct of_device_id tcsr_cc_sm8550_match_table[] = {
-	{ .compatible = "qcom,sm8550-tcsr" },
+	{ .compatible = "qcom,sar2130p-tcsr", .data = &tcsr_cc_sar2130p_desc },
+	{ .compatible = "qcom,sm8550-tcsr", .data = &tcsr_cc_sm8550_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tcsr_cc_sm8550_match_table);
@@ -162,7 +176,7 @@ static int tcsr_cc_sm8550_probe(struct platform_device *pdev)
 {
 	struct regmap *regmap;
 
-	regmap = qcom_cc_map(pdev, &tcsr_cc_sm8550_desc);
+	regmap = qcom_cc_map(pdev, of_device_get_match_data(&pdev->dev));
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 

-- 
2.39.5


