Return-Path: <devicetree+bounces-225386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC34BCCFC0
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7ED94FCB76
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06172F548A;
	Fri, 10 Oct 2025 12:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c916d7s0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96A32F2617
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760100414; cv=none; b=uEnU+RffSs32aFAXYtUjqrAIzFb2JnYWodo29LOeRP8Ttm+GcRDogXdSkTP2RVsnFRUjRdHHBhl94yvUrW518DL89T/eMkEKHIQ3UDilIR0xDxMl/cFpsMlLYttZoNx06TNcd8zmwcA52Gt5cDIiTsGyKX4NLXjR2KD0teiO02k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760100414; c=relaxed/simple;
	bh=t1lPRTLbJh3Ia3iHDBwP0Q/txEDKq77Cj8s7vCWLHB4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fkaDi1YKtyK2hVwl81geCZh2D4Sts4L7LHlEcTh787qXMXZunxMekL8aefAZPh5/QmYqPVO3uN8g4rm/6yS3qHWukxfq1UijBZpDmA3ljrrk1qqmXu6oHF3ILvzCJopU4N6uhzWHRPyYzKC6ntD8+fOh0jXYmXTjwrXdGETeOTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c916d7s0; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3f99ac9acc4so1713801f8f.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760100407; x=1760705207; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6iPGUbK9frPbiRIF66lkOW8PKDoG2AW/288srP+02V0=;
        b=c916d7s06IG11NJ4RQXBFaCRGsnOG4rxBnsPRggVLBhIxXhjv5hDUkXcjwX2UgEdkz
         jhJPfk1S9n44DZZ91WKYVH2z+4KtJFNyiLtxEcjhKED+pj2U0ehPnRP6yOGzB4ZntcvD
         sw/k3iZbdV0H+izGzBRxe1AxV7hpiwk+QtyEvkJcqqoZSf6lDPGdfh4rmePe+Y95dcrU
         Dt76oYpYB3zdJ8aD/EnIdQbSZaL35CnH6K6owgaci+hHlpezsO87Ek5nlcHKTr4yXr/F
         DuyNjSsqz5Shjfk3w4VTcytgSlla2ge7sLifbPwDzqKcvPhNJXHoeJXDHOyjlEJXlZgJ
         eycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760100407; x=1760705207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6iPGUbK9frPbiRIF66lkOW8PKDoG2AW/288srP+02V0=;
        b=hk1c/HIXIJx9kuGivEfwfPYwJmzXJx0927o1Xa4fYsAztgzAkrhRcQ6i1Qq83ddlg2
         dDz9nBMggMMfaaOb21jSS1nHgQtzn3gnCmaYAyRghVSqjZ7YFe+GQxFjikPojVjZAbeg
         G00v/gM+IueSMWxB56YHPo0HuOMbW+XJQ9aD7ZTYRtnr80Yq9yIOlzyolelEmddrFg/0
         9Jx0LzJEh1gd41DQCSWbAhEv1ZaN2o/R9p5mxTn+IZDIszyTFsM7GxLX6LJttQUwKrSl
         b09Cb5p5rKtRb2Vbzm1Wl3Bb4OpKEvgoJ9pX3Fw2aO7v+9uzNgVCNOzMSDu/GIEdVU2I
         N05A==
X-Forwarded-Encrypted: i=1; AJvYcCVD6lk/4DUizU6EdpjFb9s01WVoTKK/qcnwOKx2rYS7cQMmTirXxXk37qu5iL1jqAmylBssowyt0hJ7@vger.kernel.org
X-Gm-Message-State: AOJu0YyHzWwq/INTNouYMff1/z0cvprJ5+RZNrcxIdI1qtZlbOrMulOZ
	ohRLRZRDRPRtJJH2u5ZGk02lABCM4jd71Kyx+LKYBtBZ5qsnuVPANYdk8zz9P+eunSM=
X-Gm-Gg: ASbGncu/jUQV2E5Wu9P4x9zdBMWqZ6PD1ydeyHZ0ENkOf9TtK3FHf91c9MBXzzroVTu
	66PeDw9KaeTY4Ir4t0dyfOOysY+q3xjl8ImbbSt7s/vdc+CTAEeziLQaAuimRfg82xGBXuRJkJP
	csDsIfgYzkWX7K81ErkI+e9rzgak0CGi5WjZJMN8AOcYHUHYR1d8rbpOd2QQcNpy5IyMnPq2O72
	W30WEu0PLTmA68Pm8PS8TyXiyQMdZsWqKYPiutMBLDl/fuyX7pIx6od2WYZy7mNfhwVIJGwMVNl
	OsVz0A2RK6almBy+vV40zfpSlaROetWPwoK5aJFZuKaG1lgxlPwLYUwBlEgJLSpsFFpJ0yWhnxu
	yP2Ar1Xrlh2P+pBEcJkduc8GWWCdysWBoA2ymafagqdmZb7miM2l0FOJcuMn94AwLjJRd3v/b4c
	NDM4GmB7RqdojEFlnRFg3PGA==
X-Google-Smtp-Source: AGHT+IGDLF3Dn6ww4MqMyl8hynsTWVMXq6aUH6TJOkzwSsp0EMXTDsmcy1Rr53t1iniI2RiP834aMQ==
X-Received: by 2002:a05:6000:288c:b0:3e4:d981:e312 with SMTP id ffacd0b85a97d-4266e8e51f2mr6813063f8f.62.1760100406667;
        Fri, 10 Oct 2025 05:46:46 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb484d056sm46376895e9.9.2025.10.10.05.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:46:46 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 10 Oct 2025 12:46:33 +0000
Subject: [PATCH v6 3/6] firmware: exynos-acpm: register ACPM clocks pdev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251010-acpm-clk-v6-3-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
In-Reply-To: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760100401; l=2732;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=t1lPRTLbJh3Ia3iHDBwP0Q/txEDKq77Cj8s7vCWLHB4=;
 b=qk3U65kSz815bNfHe5stxRu4BJ0qvWZNQmQfMvtFvJGNAjNj9MvxWPW5Jp4sLvaf2hRaK3Jlg
 J1pvueABQIEBkgK0U/NX3fwYmXMxSALpy5zS1E7Te84RmsjTueCqo4C
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Register by hand a platform device for the ACPM clocks.
The ACPM clocks are not modeled as a DT child of ACPM because:
1/ they don't have their own resources.
2/ they are not a block that can be reused. The clock identifying
   data is reduced (clock ID, clock name and mailbox channel ID)
   and may differ from a SoC to another.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
---
 drivers/firmware/samsung/exynos-acpm.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/samsung/exynos-acpm.c
index 9fa0335ccf5db32892fdf09e8d4b0a885a8f8fb5..0cb269c7046015d4c5fe5731ba0d61d48dcaeee1 100644
--- a/drivers/firmware/samsung/exynos-acpm.c
+++ b/drivers/firmware/samsung/exynos-acpm.c
@@ -177,9 +177,11 @@ struct acpm_info {
 /**
  * struct acpm_match_data - of_device_id data.
  * @initdata_base:	offset in SRAM where the channels configuration resides.
+ * @acpm_clk_dev_name:	base name for the ACPM clocks device that we're registering.
  */
 struct acpm_match_data {
 	loff_t initdata_base;
+	const char *acpm_clk_dev_name;
 };
 
 #define client_to_acpm_chan(c) container_of(c, struct acpm_chan, cl)
@@ -604,9 +606,15 @@ static void acpm_setup_ops(struct acpm_info *acpm)
 	pmic_ops->update_reg = acpm_pmic_update_reg;
 }
 
+static void acpm_clk_pdev_unregister(void *data)
+{
+	platform_device_unregister(data);
+}
+
 static int acpm_probe(struct platform_device *pdev)
 {
 	const struct acpm_match_data *match_data;
+	struct platform_device *acpm_clk_pdev;
 	struct device *dev = &pdev->dev;
 	struct device_node *shmem;
 	struct acpm_info *acpm;
@@ -647,6 +655,18 @@ static int acpm_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, acpm);
 
+	acpm_clk_pdev = platform_device_register_data(dev,
+						match_data->acpm_clk_dev_name,
+						PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(acpm_clk_pdev))
+		return dev_err_probe(dev, PTR_ERR(acpm_clk_pdev),
+				     "Failed to register ACPM clocks device.\n");
+
+	ret = devm_add_action_or_reset(dev, acpm_clk_pdev_unregister,
+				       acpm_clk_pdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add devm action.\n");
+
 	return devm_of_platform_populate(dev);
 }
 
@@ -746,6 +766,7 @@ EXPORT_SYMBOL_GPL(devm_acpm_get_by_node);
 
 static const struct acpm_match_data acpm_gs101 = {
 	.initdata_base = ACPM_GS101_INITDATA_BASE,
+	.acpm_clk_dev_name = "gs101-acpm-clk",
 };
 
 static const struct of_device_id acpm_match[] = {

-- 
2.51.0.740.g6adb054d12-goog


