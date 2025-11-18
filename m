Return-Path: <devicetree+bounces-239825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA3C69C57
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ED2783815CE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC64361DC8;
	Tue, 18 Nov 2025 13:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVkDV6lu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA2E35E55C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474185; cv=none; b=nY6zAWrKxRcQoOo1lvREcm4+VrE+chhNpCyoPlwYqyyUM1ZI3YtZo3suUlSZA0wzxef2bY1iOM324slwHjV2lPlh+Y90HgDKUD0PmD2QAGoIOhTrU15b1pCtcsfGO1AyblUHCS3Sv2rBJ/67srp9Z5qEc0q9MDhcdn8xR7tKOb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474185; c=relaxed/simple;
	bh=AYey41JluNvIXnVAMYRQRudvFDMHByFQlXtTmWlf5rA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Aa/RjeNhoBjBYJ82e/tUrixlJRAjwfPaePPOj8r5fT455Mtc0W4gNfMzMHyYFhiH3Nxn7a5u/UqDMT1d88fNTKJXeVc2aJgI4C3P6Y7rGoOskL9mQWmqsoYCYdHVJCjA8OCtCrZjMeSDegGx/QftcnrHxRP6zk4Ym/SPdx1m4gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EVkDV6lu; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b38de7940so3134848f8f.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474180; x=1764078980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mGSZdccmXWk8F5qnJeoPtGkKc8FpBWygh4CtyjO0Ar4=;
        b=EVkDV6luUWBcOPU+pXGUG01wxqRMSbPZQF9P0X9GWC5icPHQqaoQE+woPEx7O6+vdF
         UdX08d2RWtkGertFxWzbcAokaufgbpKb1LECFW4F9TTUnSICPphy79O4SYv96AVAROjQ
         b7sYWiBYbard1ot5ptdcuHoSmHkabarbSDNPFzt/4DZa1u7Vl3c8olDRdYYHJokX75Hn
         j8Vf86Dv/GRgso3zmT8PtfsO9VLC7ULVtG933LtePkuc5mOAuaZyKj/Yu9Bpy5HJoozS
         5XJLHLT8IgCEKkOhVgs8xWotHAzZ3uTI6IadGmchtPY2PZBOg3MDWwAjG2O6NOZjAQRm
         SvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474180; x=1764078980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mGSZdccmXWk8F5qnJeoPtGkKc8FpBWygh4CtyjO0Ar4=;
        b=NR2PeTSY2I/01nC6nBeKIBlYmwogRVhjOQsqtSrSum++59pbewisAaGnSTSUwP0zb0
         mEMqWYpK47Do1fgst+czFyImqT+ez3ToUQQPL2jX0V1ulZrh/q2By4m9+zQSh8zFSjku
         xU4gh3EfMkGsAcDTWo7svZsfAz95hkQ1cngKcfCkEFGgTvcTQY+Ax5fdsRQgL7mfwUsB
         B7W2UTj4ETe9sv7bobdUnnFa9DWo2GeduzUuZUFriQ0fCn2g1eLpgmR5tSzmUIK729md
         gOvGnOis/dZEzirI44eQ+n3Trv9j70TKIzwjIvcvJ5atyOLYC58BxuOZBgsQQSpgmT7I
         7Vmw==
X-Forwarded-Encrypted: i=1; AJvYcCVjFgNhZESvxutbG3UNtD+2zkCDcULBIGoPqC3euOJ2h8xidCrvpmO1ANMDsQZVzYvIwpjIkmCiDxHK@vger.kernel.org
X-Gm-Message-State: AOJu0YyjtP6G2YqQl4ZzeVoVkh+0cXRkv4vQkuo0JGcmWzUwvpGoEjsv
	nxhFWt1trE34T41//G2OJ6cz6fduBCBVvHwBvAYMcKu4o1jo1Xo2Ya1F28iSKBOrOCI=
X-Gm-Gg: ASbGnctwL3GJFSXtDq3twoFs4znKb/7lWMmToRDmLuEnbHLD7zEcH6HDFF49WApVBkN
	jA+BB84XeS0aTNWR3WPqybSz+nVvovmxaOgtr1FRjiPBsllb9PJrBJMuHxgLDwMCmBHAj7QrYq5
	TNhhyi7V4CT/lc5l1d6UGjI7qDWYB0OKbmTyIG3O+UZsXpyMz9cgPVsTPcPQOu/gHy2qL1zHrMX
	wGLePVFzmghM2hodHCMpHhSsCejfFfVgmE56nv2zGNIcYepUD5zmTcQhTrfsx07x2sCJ4juZ5V+
	FmRH6Z8qehhpvhcmLyssiGpRdo3eF2ga0wcvTXqqiU4B3KRqhmxXgjLGHl9IRKRljbzaNStsrvN
	zblnae+dZZNZLhqWQYdtATBCwbgC4H/tkOgXebMinITT2e4/oKdI0DLy1GiahpJCRBtCir4/8sv
	Rv5o8JiKHHqxrBa04P270jJvgvB+SlX4IeHm201mvTl+Mtia4vZ4lztv7qws5NJ9vI2mtCU4f/s
	/qXpQ==
X-Google-Smtp-Source: AGHT+IGJOqGPGMa/xpFl50AjeI6gLPwIWReT5xV4tI/TQp6aNhxWJYaCSsA7r2uIJZrDLJkG2ExunA==
X-Received: by 2002:a05:6000:2509:b0:42b:4803:75e8 with SMTP id ffacd0b85a97d-42b5937335fmr16390114f8f.43.1763474180302;
        Tue, 18 Nov 2025 05:56:20 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:19 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 18 Nov 2025 13:56:10 +0000
Subject: [PATCH v2 3/7] soc: samsung: exynos-chipid: use devm action to
 unregister soc device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-gs101-chipid-v2-3-e9f1e7460e35@linaro.org>
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
In-Reply-To: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=2261;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=AYey41JluNvIXnVAMYRQRudvFDMHByFQlXtTmWlf5rA=;
 b=/BoUySuXF+LzGbF8Xi0BjukaCLCcgm542pIxGyPIv9c71vz9fpN2QT6L/bYOX6wdCuHw/i8BZ
 CmaqZLVmv3sDkYpUE5IuVIAml7k3WYlIgKtBidL/6Exyw7Ub0FBh/46
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Simplify the unwinding of the soc device by using a devm action.
Add the action before the exynos_asv_init() to avoid an explicit call
to soc_device_unregister().

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 8904ffdaf9a6f6d069cc6af18a24dd00a2780892..db73dfad4e1b4fb001cb653bc8caf8aa08d85f2d 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -145,6 +145,11 @@ static struct regmap *exynos_chipid_get_efuse_regmap(struct platform_device *pde
 	return devm_regmap_init_mmio(&pdev->dev, base, &reg_config);
 }
 
+static void exynos_chipid_unregister_soc(void *data)
+{
+	soc_device_unregister(data);
+}
+
 static int exynos_chipid_probe(struct platform_device *pdev)
 {
 	const struct exynos_chipid_variant *drv_data;
@@ -207,28 +212,19 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (IS_ERR(soc_dev))
 		return PTR_ERR(soc_dev);
 
-	ret = exynos_asv_init(dev, regmap);
+	ret = devm_add_action_or_reset(dev, exynos_chipid_unregister_soc,
+				       soc_dev);
 	if (ret)
-		goto err;
+		return dev_err_probe(dev, ret, "failed to add devm action\n");
 
-	platform_set_drvdata(pdev, soc_dev);
+	ret = exynos_asv_init(dev, regmap);
+	if (ret)
+		return ret;
 
 	dev_info(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
 		 soc_dev_attr->soc_id, soc_info.product_id, soc_info.revision);
 
 	return 0;
-
-err:
-	soc_device_unregister(soc_dev);
-
-	return ret;
-}
-
-static void exynos_chipid_remove(struct platform_device *pdev)
-{
-	struct soc_device *soc_dev = platform_get_drvdata(pdev);
-
-	soc_device_unregister(soc_dev);
 }
 
 static const struct exynos_chipid_variant exynos4210_chipid_drv_data = {
@@ -270,7 +266,6 @@ static struct platform_driver exynos_chipid_driver = {
 		.of_match_table = exynos_chipid_of_device_ids,
 	},
 	.probe = exynos_chipid_probe,
-	.remove = exynos_chipid_remove,
 };
 module_platform_driver(exynos_chipid_driver);
 

-- 
2.52.0.rc1.455.g30608eb744-goog


