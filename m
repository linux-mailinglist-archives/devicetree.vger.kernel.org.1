Return-Path: <devicetree+bounces-144289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DE0A2DB22
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD8E13A726F
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EBD198E81;
	Sun,  9 Feb 2025 05:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jayohbsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED161925BF
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077635; cv=none; b=RPdUkcI8xHLKJqVl18CoY0yuJ646nE5tUH2FkIQ2tTTcjVh7qNf+VEkbyNjKws5anFX0Gzvm8s3VIXBUJKBvsy80eeCdMIPx8TB7ovRhYrEv+Orxsh0QAFkgC8gEBeKXPoJksxUE2Fjzt050KUWnNMx9VnG2u5AbFBVPqFCB2kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077635; c=relaxed/simple;
	bh=+WpYll0ay0xnF4O7o5nyBXY9cEIfu8gX+WDGXWRK1Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MF0CXJhi4GFlMZ8/G/67FAojxMuQybJcwb8PnFMaiuvY7t3YAefr3VDAV5PPYXMmcGGKqhYYcHCk0lI9IaEGg18TodMnpw+vLAQsQl4KgVN5o9YLjdGNjHy4/huyXgbxaPmr7ciPNG+iTo0lJh058FRithWLgtXefjkjxbIy9as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jayohbsV; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54504bf07cdso1072664e87.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077632; x=1739682432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rImDBJcwLqN/bA8K9yZBJSkxES6sl/gp3TQ1UcsOkUQ=;
        b=jayohbsVHQCL1OJoTXhTc7Ji7N3Iw3f0Vq1mKaEXtqHbC5B1R2DwfQzJ4KzaI4pII1
         TGoEuwqfyBIpWsO36jInLM1OwfgMZl3Vk00f2CSNXLoUfndIbgQ0TTiH50/i2sUGp5ex
         XZTLJpHUv0KsmpjHjKDcfu2J6W1xsl9+lQdkyt7kix4VTc/cm69E+WIlqRJNHijAdZog
         FrpOOsu/jolP6kjFp6mGqgcQxZ6Cmo97w10pkOMWGMDFf9aXAlZwT+KG9eIG/mhj7WpG
         w9Q/xt6mE86+wQ0aWT9nr3tDzdjblrZ+bdIboA35e1vA/eFKDAaH7juL7+UCHPItUa+V
         C1Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077632; x=1739682432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rImDBJcwLqN/bA8K9yZBJSkxES6sl/gp3TQ1UcsOkUQ=;
        b=Q+TX6zXhDi0El3P171SFIfrcdF3jS0uG4bE407w25a6Gvh1Q9hSiOeIzSHYDeffm/1
         wJM4GpzrH6UhZ7p6T9hYjjs2iEO4eiw8Q5ZRToTvcSAsZtIRR4sw28KhE5sayIQMoKt3
         4mG4TrjQF6z9dR0chr5TFlrGFVn9t4puzzswdinRosiSlAA98Z4LS328iif1TuoAtc0x
         EddVa2sCyx37TRn2YCsPcOorGl//s+0yjdZ5Ian9Nf+hkd4B3GiVVbGxPnmMqU9NHSAP
         XuwAhjlK1RN2QPdrEmwQosraLVlwLptbFgaNUp8AkKj2RYJCe/1CjL+m0bkHyHEsl5Sa
         Cipg==
X-Forwarded-Encrypted: i=1; AJvYcCX4oeM47VT4+XNHqhInxx8TqXcmNyhMgd+xUFsAI+SJqmMjMqkh7kvjXo02p2EVvmOLZLWQQpQbffb5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5GvEkgVR84ABmQnuBW7lWHiOGDuTsJspRDcgvDn+S4RrFgAet
	2OM8RoRqQEd9hsLm8pBur0E5fuIk9inOn+ZFHMzlGp69bozN1hRaNOEOz5xayhs=
X-Gm-Gg: ASbGncujrKjU2cck+dTWUK+e2BoO+LfaSPDF1XYct0/c3uWFdB4SDcJ0j7tPtJCXdK5
	dpNoU98HCIWxL5DwO/UdXHiSEgpd2LpOpPYNHI37nu2LAYWUwa2ej7tv0UpJEhDJ7/j2pKy2WLg
	c4HTRFth/8i+P4trc4aGFaXIaJDwkzU0BQKb37sT3WAXvIb5BFgpuctfHy0mQsSXitfkkdANvDJ
	aGjY4bHHpJzI+93DItpTju4VZMG4sbIMhuFp6dvmluGZ277gPLz3MUDe9oP29lXg2YxYeirWwXA
	fhIlFu0BFPOEKc0ZLpUAPq0=
X-Google-Smtp-Source: AGHT+IE2QJZGzfLvREQjZ2Yj5CakhCNV2ut93H8ain0VcaXqhSAifxC/qDGCZKxvSJtMnQOIOHh9hQ==
X-Received: by 2002:a19:8c55:0:b0:545:441:52d4 with SMTP id 2adb3069b0e04-5450441553dmr1026473e87.26.1739077631945;
        Sat, 08 Feb 2025 21:07:11 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:07:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:04:55 +0200
Subject: [PATCH v4 11/16] drm/msm/hdmi: rename hpd_clks to pwr_clks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-11-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4084;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=+WpYll0ay0xnF4O7o5nyBXY9cEIfu8gX+WDGXWRK1Mc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfjf8OBc8uSGwCTBq4PbhEA1GDOaqya+TI2F
 VrQN8it+xKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g34wAKCRCLPIo+Aiko
 1WmrCACsjaJLkXpv4v5MNIIXG7ds98d+aS/Ra33MbEb/9rTGuEBP8CIdMTldJfwvQfHRoNnJCMI
 A/j+3tq2UuhxUrLtxzo9NC2I0hI2BTZ55dOQPgn1ou3bqJiXzwaJ37XA9+vu4hAkpZ6L33xB6DE
 A119TuMSildDZgGfpg6fmxNmZHOIEa6cg1COY+UcpNKOp/QlQU01BMCzifnmBW441EgV+yPufpL
 AMB2jTVSlke2qeSPU1QkNyhgnOG5X9RIMGQXfOiXhJ/CKUNiUXFLUITYNiVMdjYof8nnLs5xhOf
 4P/QTx1Hq89+lFKvj0L9A3arcHDUkAmQQrlf5dcdJSnr+LWB
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

As these clocks are now used in the runtime PM callbacks, they have no
connection to 'HPD'. Rename corresponding fields to follow clocks
purpose, to power up the HDMI controller.

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 26 +++++++++++++-------------
 drivers/gpu/drm/msm/hdmi/hdmi.h |  6 +++---
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index ded20176aa805db98b0599e617eb6ea9bce122d8..8e6e3e6a04bd2d86bcbd23c110f3533f56c17887 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -226,19 +226,19 @@ int msm_hdmi_modeset_init(struct hdmi *hdmi,
 	.item ## _cnt   = ARRAY_SIZE(item ## _names_ ## entry)
 
 static const char * const pwr_reg_names_8960[] = {"core-vdda"};
-static const char * const hpd_clk_names_8960[] = {"core", "master_iface", "slave_iface"};
+static const char * const pwr_clk_names_8960[] = {"core", "master_iface", "slave_iface"};
 
 static const struct hdmi_platform_config hdmi_tx_8960_config = {
 		HDMI_CFG(pwr_reg, 8960),
-		HDMI_CFG(hpd_clk, 8960),
+		HDMI_CFG(pwr_clk, 8960),
 };
 
 static const char * const pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char * const hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
+static const char * const pwr_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(hpd_clk, 8x74),
+		HDMI_CFG(pwr_clk, 8x74),
 };
 
 static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
@@ -333,17 +333,17 @@ static int msm_hdmi_dev_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get pwr regulators\n");
 
-	hdmi->hpd_clks = devm_kcalloc(&pdev->dev,
-				      config->hpd_clk_cnt,
-				      sizeof(hdmi->hpd_clks[0]),
+	hdmi->pwr_clks = devm_kcalloc(&pdev->dev,
+				      config->pwr_clk_cnt,
+				      sizeof(hdmi->pwr_clks[0]),
 				      GFP_KERNEL);
-	if (!hdmi->hpd_clks)
+	if (!hdmi->pwr_clks)
 		return -ENOMEM;
 
-	for (i = 0; i < config->hpd_clk_cnt; i++)
-		hdmi->hpd_clks[i].id = config->hpd_clk_names[i];
+	for (i = 0; i < config->pwr_clk_cnt; i++)
+		hdmi->pwr_clks[i].id = config->pwr_clk_names[i];
 
-	ret = devm_clk_bulk_get(&pdev->dev, config->hpd_clk_cnt, hdmi->hpd_clks);
+	ret = devm_clk_bulk_get(&pdev->dev, config->pwr_clk_cnt, hdmi->pwr_clks);
 	if (ret)
 		return ret;
 
@@ -401,7 +401,7 @@ static int msm_hdmi_runtime_suspend(struct device *dev)
 	struct hdmi *hdmi = dev_get_drvdata(dev);
 	const struct hdmi_platform_config *config = hdmi->config;
 
-	clk_bulk_disable_unprepare(config->hpd_clk_cnt, hdmi->hpd_clks);
+	clk_bulk_disable_unprepare(config->pwr_clk_cnt, hdmi->pwr_clks);
 
 	pinctrl_pm_select_sleep_state(dev);
 
@@ -424,7 +424,7 @@ static int msm_hdmi_runtime_resume(struct device *dev)
 	if (ret)
 		goto fail;
 
-	ret = clk_bulk_prepare_enable(config->hpd_clk_cnt, hdmi->hpd_clks);
+	ret = clk_bulk_prepare_enable(config->pwr_clk_cnt, hdmi->pwr_clks);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 7e3c035cf913d713ed63379a843897fad96b23ab..a28437beb1574553c1dc00a0c693b390389353e0 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -48,7 +48,7 @@ struct hdmi {
 	phys_addr_t mmio_phy_addr;
 
 	struct regulator_bulk_data *pwr_regs;
-	struct clk_bulk_data *hpd_clks;
+	struct clk_bulk_data *pwr_clks;
 	struct clk *extp_clk;
 
 	struct gpio_desc *hpd_gpiod;
@@ -87,8 +87,8 @@ struct hdmi_platform_config {
 	int pwr_reg_cnt;
 
 	/* clks that need to be on for hpd: */
-	const char * const *hpd_clk_names;
-	int hpd_clk_cnt;
+	const char * const *pwr_clk_names;
+	int pwr_clk_cnt;
 };
 
 struct hdmi_bridge {

-- 
2.39.5


