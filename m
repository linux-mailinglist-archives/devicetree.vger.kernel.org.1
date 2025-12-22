Return-Path: <devicetree+bounces-248916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B03CD6A9D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A440C3003B0E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FED3321DC;
	Mon, 22 Dec 2025 16:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wW5oDdjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4733314A0
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421038; cv=none; b=cvIimIgYrVWf6ms/k16EdR2TdR7fEJH0UQgGnpmjGiN29ggisOeGmg1LodDtpBnbPHgWIM8KVCXgwXNAgDFy0fAGma68Qr+NMTrcvsg0yoXUOh8b3spFVhPS/z6EcpoQF6wcFolcqj5jjmOPVHXHE+9SEc81hjV1n8kNgv0uvyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421038; c=relaxed/simple;
	bh=mA3bEVEGzR9311lzIXbM9ZlcwGq5dWk+rNJx03paffE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YUUXWiteJo6CdzG3HI78OqKmp59qxdiLvRyAYRjyB4GbwkL97NK4Nj8W/jY6GLzzFqqziYkzf8t6OEEEXQe9K2h/rBC1d4oNFJrSBTfnk5wyWeEAX/GFQZF0a9FIk9mrY16v1hpt/hfIv5/h3Mj9l673NkFXLKlkjbh/4J+eqZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wW5oDdjj; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso27653815e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766421034; x=1767025834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQLcAW3D2Pl+HMLn2UT+UCDz/+sYmn/YWfptB8decEw=;
        b=wW5oDdjjiBylmeGuFMOQWgCs9OsIAXvlQjCcbEk54cfbD1ejSw8mT7liIWW9fwdtyC
         EiG83LekU0aPUIqZ46Ds5ivcoSBF5D6HqUwbms6k963LLn99HZzEO1m0hbQfeJIs1JJ2
         Gp8qcRCdfUsaFN50rNEbpl+m8QLRZQjY7Ua3pQYUxhu4NHcgdVuRHyU7piXra9EDJwuO
         gPoVvz2Mmi6G9Yelu034HhFD3XIoNCs5MSdyVykQebKxZ8F2ZinZF9OzftoVn8i2gP65
         lBFOz/zowXcjH9ym7zlpccEwA5xv2FSpl4iTup2Cbq98SNvswt2LJeFrwWCBjDguYok9
         babg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766421034; x=1767025834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UQLcAW3D2Pl+HMLn2UT+UCDz/+sYmn/YWfptB8decEw=;
        b=aDutWnS3PvcRsxVYcHRlpXWpjGzmjbPzqWWVDWLAUtHlK9pA8TU/Qv2gAco07HD+Pz
         HTeKdIfAWQnesTPGX1AD0zr0WDlHm01iMMj+HvhAIoyujU4PmoPgzkFrwChDnXhLHGWg
         /zW63zwr4N2HG44EOBkiVZGEC3KOY7ZAPH5zALjcOQjoDoT/u/f/GjLMfH52UoUAYg2W
         gLBfawhd1M8VwbQq0OCCBguZPqM0HkocOmGurp6egDKEW/pY/7jwRTtcXYZ6pVt4a2vw
         aRwxXuTX7yWViBbx99Buevv37Yu/e+LsYYHjXyJMxQaGLc8JFf+nr7R/JnoWL+rx0HxK
         21IA==
X-Forwarded-Encrypted: i=1; AJvYcCW+/Tlmxnd9l67ABKKvRhbHgmZlLj34Ha0FxmK9ysXlK/5J9uww/1fAZN/zhbu7dl+b5b+Ol8bDzmzT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0u0kzR3lAQSaqKDMizVSTqbixPnFtpi30JifEHaj+l+yZcnjs
	SoOcI9rokoaIAjGSSTGFHNMa9C3bG51JMyIocq9GJjg6oUWMq42ken0v8GgMrKIupEl8s2+XFtE
	9dAmVyjMcjQ==
X-Gm-Gg: AY/fxX6AwSu1DjDrK0GQDbyaJNEvF3pln3CG0N0homCjs3dBDM+AJbw2v4WFev1AnIX
	0jjLhGGesdF5XrmCO/llvcHj/Qq5/Rs3YLmrkh1/SJFAr+1Jxrp5M9r/Ew7PurWwGx0uEMyUuPz
	ewMKrb8L+NmXdipEJuWivf4L/oiFf1npnQKdpsRoSzgZDRerpGaHjLs+KNetDwqOlkEV4as7lWT
	1GjgNzvuIs+Zz6K8pfOpW4OoxSFG3iv/EIBuW2NKP7CI/Gm3Fj2LBSkMUoB/fFno7v7KKLQ7n1H
	AqDPZYv5ISnq72HBQou2j0vdkXLgJiBf4PcVajtv8EOKp2DiYDh+9wnJ5wxBOJiTkUP7qNY+uRx
	LgbfnIZzCHwSIvAxVJWatshTvt2io//7Q+L09oqYMAOfILeNFAwePsUKQFjKeFr71/qqlss3xhH
	xSrUQ2TCOOh5YZOXHDefRqtNYCcVkypizuJvp88WLIeiUOaOPd70uPcPdcq61aYwvq
X-Google-Smtp-Source: AGHT+IEeeGdexdjgsFvULlja6N3RSPsn/5O1yANNDtE7dG770/+tSXgL411WaHfHcQRCeiljSozLIg==
X-Received: by 2002:a05:600c:470e:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-47d1954778dmr112796935e9.14.1766421034505;
        Mon, 22 Dec 2025 08:30:34 -0800 (PST)
Received: from ta2.c.googlers.com (62.221.76.34.bc.googleusercontent.com. [34.76.221.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa4749sm23071258f8f.37.2025.12.22.08.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:30:34 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Mon, 22 Dec 2025 16:30:06 +0000
Subject: [PATCH v4 2/5] soc: samsung: exynos-chipid: rename method
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-gs101-chipid-v4-2-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
In-Reply-To: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766421032; l=1400;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=mA3bEVEGzR9311lzIXbM9ZlcwGq5dWk+rNJx03paffE=;
 b=9DT1m4KO0p/kJ7bAFDLOVuYZey7dZtu3ttSsg9WmvxKqB5+1VqyH7CXF1OZsCc5WVsy9YXSg+
 lE5k87cyBMtBcWb4gu82Iviz/x2SUYjJYd6U7VlrSSayjOIbJxIERUF
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

s/product_id_to_soc_id/exynos_product_id_to_name.
Prepend exynos_ to avoid name space pollution. The method translates the
product id to a name, rename the method to make that clear. While
touching the code where it is called, add a blank line for readability
purposes.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index b9a30452ad21c326af35c06a341b28491cee6979..88d264ef1b8835e15f774ff5a31f5b3de20f74ea 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -71,7 +71,7 @@ static const struct exynos_soc_id {
 	{ "EXYNOSAUTOV920", 0x0A920000 },
 };
 
-static const char *product_id_to_soc_id(unsigned int product_id)
+static const char *exynos_product_id_to_name(unsigned int product_id)
 {
 	int i;
 
@@ -150,7 +150,8 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 						soc_info.revision);
 	if (!soc_dev_attr->revision)
 		return -ENOMEM;
-	soc_dev_attr->soc_id = product_id_to_soc_id(soc_info.product_id);
+
+	soc_dev_attr->soc_id = exynos_product_id_to_name(soc_info.product_id);
 	if (!soc_dev_attr->soc_id)
 		return dev_err_probe(dev, -ENODEV, "Unknown SoC\n");
 

-- 
2.52.0.322.g1dd061c0dc-goog


