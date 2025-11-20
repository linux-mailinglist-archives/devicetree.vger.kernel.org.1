Return-Path: <devicetree+bounces-240643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E12C9C73C1A
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 18B423453FB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA72B32E13F;
	Thu, 20 Nov 2025 11:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V0NHX+wb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86862E6CB2
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763638182; cv=none; b=jvITQEMURn7fCIXjRNkINIVqMaHt/DMIHDRwACgmll0HQzVHgZ+UNxjbk0JS5S4oYEeaXvy75pQw2O76Y8yVzydxgYDHQPWPyPp983Q4StaE5pU1JUUNQyHccD/4PIEAKRWpuwlLEWFzlQlazwMeY6sMZRNokilfq90LrFNWIXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763638182; c=relaxed/simple;
	bh=q4SLhBlNs3t93tDVbeMVgBT6CvDIqD2qRVhlhlaXWaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IimFdpYbgzE0oSVG8cit5sfDVcUrqCmCYvbcMQs8iOS2aXOq7kDXxZ+IlsHL4FafWraGkBlPbVKUGbeczwuFLOkNHKim2KYosz/A2+z+oK38MydvdJk4wgOKOGaJd4V0ArsvpQu2Hh5IudktosOymP6smi3EEf+EMT/Nj5+RCM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V0NHX+wb; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42bb288c219so696417f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 03:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763638179; x=1764242979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PuKrcuoBI7d5g4q4orKG9nRm+eFjAB5tnSDzYO6y5WQ=;
        b=V0NHX+wbWwNwM2r8DpiOMQQ1egjGv6JSAI6A76ss9M9w4FQqACSfqeTQFpfjZnjez7
         9sdtOH7ZC3yaZAPtNcVu9pg9Q3S80sy+eX3KszWhzKbLjqR02ecqfNi3Al9f6OkhZrPo
         vYCmVBdBC4G7y7vNMTyv3ZIyj4+ufoHKETeSWDi7fh3mI4aKpgSpz4u6+xlNvHXKEA+X
         XPG+scsE9ywKsaKUv6jFXxKGbqR2gjLPWX8L7RPbz8ZG5+cDG+6/f398Ow+wgs8B1l43
         i7rPPLqO6zoX9nQ/pMoKLdxyGbvJE54I2+D8cDiJaHBuKlqG+nhhZIJ2P7VQjZFFk4mJ
         V2QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763638179; x=1764242979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PuKrcuoBI7d5g4q4orKG9nRm+eFjAB5tnSDzYO6y5WQ=;
        b=FqoGnCjsck7HY4J07VRHN573Rzn6Z3iEYbf746gJXqphBn/oHrb96IO5rmLTPYavvN
         qiKEsq3n0bUXPbFdQyf1Z/xZeoh+bo5Y+I+Gbk42Q4WjVheiWIILRHrvpNkaEkW5XjiS
         eaHahBUl02u5sdnt4mThJCSwYRyi5SgtbA2hK5ly5muXBQ5us/Siw3Sp/aPsPkUQhrIC
         cBeaWFMwPLSBCs9ZTmCLnJOLRurt69XG/xbTMRNC0zI8Ds7NnDxvaMwuIQZmx/qL/WTD
         CxzYHsboOiXh83GsYMrn20POvXT/uTdV0s//AYY48W9khyUn72GzmNvOFKYJkEvOuLUC
         UKwA==
X-Forwarded-Encrypted: i=1; AJvYcCUSoTlpROQO6H4Py/TknCuCriUrGD642DFqf4fnTb7JPOkG2Wkh1LiFnO0lWip9Bl5Vzb5asS7D9XP7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz15xXot1JK5SWm6HM9pzKY+O2w+EiSlilwbtiL/d8MB26DXjCt
	IROs4SOEurDHSaWea5cMgexH1993C5TPqJtCZglz8KyoZrHkMJGr9s6asVpLAUpYuI+60yipqbo
	DFSPlL30=
X-Gm-Gg: ASbGncucNaHH7TtI1+5XwCrAlf1uoC/PbEAh8i3HEleBUpPp5bl00Koxq4vXiNoSnqj
	Gj2L8fx6ZUqP+TtFJif0b3kBLvSQKT/Ih1SiGdWgiCX8MefX0c8Sc4M720HLm5DBjKnvaESVPQS
	sHMDkRx3bllmRb2rGtKj7qsvPj7XD6eh9N6mTcWN42S+s0/fHF6u/vNoOY0kCRw4uRDk8iiRQAy
	ep3aTHmqaM71ty25x/EE+gJIDl1fGubLbWGJM9il9DeWne7dLzZmmYo9+oSj+B8qlXktjGL6kdu
	sO7NSpOj4AKJ+v3TpsZ4nQ0ScFqaePjza4Z6/jEnXtL/camA8BRwLfrYLWthvJfAV/wckWerLcY
	5CCK2elyIl6+wkMtsTOWJiENbY8hRZDQ3es3KMVIuNr76qq8WnprlEtWJS1MBarEIbHCYV9t7Rn
	4GZljoyLik917woGK0HUWyLYd5RU7IDDb5BXOIUPuh5LejbTtiCDfODTJLp5u/Rh0wLgY=
X-Google-Smtp-Source: AGHT+IEvA1MyH031OEvH24ynuE0LyStn/WEmFOJ9u6ZU8yrQYuFsjPCmysl8RrhQB/MEu5VH/0+U8A==
X-Received: by 2002:a05:6000:2388:b0:42b:3366:6330 with SMTP id ffacd0b85a97d-42cb9a65915mr2696231f8f.57.1763638178815;
        Thu, 20 Nov 2025 03:29:38 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34fd1sm4961040f8f.11.2025.11.20.03.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 03:29:38 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 20 Nov 2025 11:29:35 +0000
Subject: [PATCH v3 1/6] soc: samsung: exynos-chipid: use devm action to
 unregister soc device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-gs101-chipid-v3-1-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
In-Reply-To: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763638176; l=2398;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=q4SLhBlNs3t93tDVbeMVgBT6CvDIqD2qRVhlhlaXWaw=;
 b=nK061O76WMFoYj9rMWr/tOtXFH2+xEeqZerjwnB7A5ZG9eGCMLEYmueI7BG1LxSjTJ8CCK8ZB
 sgwYqPwxkbQD0CIyqIOcBPEiT2aDWcKRx3u/B8eAEUDo0B4tH3RLzZu
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Simplify the unwinding of the soc device by using a devm action.
Add the action before the exynos_asv_init() to avoid an explicit call
to soc_device_unregister().

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index d3b4b5508e0c808ee9f7b0039073ef57915d60fc..49cb113d99f314ed94730cec2b98f48a1a7b87f2 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -14,6 +14,7 @@
 
 #include <linux/array_size.h>
 #include <linux/device.h>
+#include <linux/device/devres.h>
 #include <linux/errno.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
@@ -104,6 +105,11 @@ static int exynos_chipid_get_chipid_info(struct regmap *regmap,
 	return 0;
 }
 
+static void exynos_chipid_unregister_soc(void *data)
+{
+	soc_device_unregister(data);
+}
+
 static int exynos_chipid_probe(struct platform_device *pdev)
 {
 	const struct exynos_chipid_variant *drv_data;
@@ -152,28 +158,19 @@ static int exynos_chipid_probe(struct platform_device *pdev)
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
@@ -206,7 +203,6 @@ static struct platform_driver exynos_chipid_driver = {
 		.of_match_table = exynos_chipid_of_device_ids,
 	},
 	.probe = exynos_chipid_probe,
-	.remove = exynos_chipid_remove,
 };
 module_platform_driver(exynos_chipid_driver);
 

-- 
2.52.0.rc1.455.g30608eb744-goog


