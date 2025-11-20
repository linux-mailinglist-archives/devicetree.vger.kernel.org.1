Return-Path: <devicetree+bounces-240477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8573AC71A19
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 01:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 994FE4E332C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 00:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2291023816C;
	Thu, 20 Nov 2025 00:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cycdMQnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D72222B8A6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763600337; cv=none; b=u/pi0C0hXmyQxdM01d4OpG7eMHrGfFE7Q0xVOP/GU2OY/0/dmHOhoIIr+LPAhB8cApbbeWTeu0dhf+30I0M++MMRpyA2Y+dKwS1nYns8xWNZPoVWTN60L0jTFcGk7/A+1fbcrhSiI4YMvgH82nwltBLY6irPoVSiSnBdZ0Qdc4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763600337; c=relaxed/simple;
	bh=Vg3Dfytm6mN+l/mw3VTkFpkman7sIJ6vOYXNpDQ8C3o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EQ2QCiie9iLo5+Fka5rMuyWsS4ewdaLxNVtDFr6bXlMdvbenIXJDKic4B2oqNGWs1q3G1cuytZzNKLHdW+xW4FeQX7yvFH6pL7lmXyuEBvtzRaQO2N0+c4HaIMdhAQKkNdFdvp3yVuJZ6GsNgIYf7zq+R2xesEi3mOpeXjlwFnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cycdMQnu; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7bab7c997eeso363212b3a.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763600332; x=1764205132; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C25VKTJE18FQAubUn6mHIqbat2AO33yDk5BUZb+r0Gg=;
        b=cycdMQnuqXLp7OcO3n38iOJ1HWiJenAChx4FirSOFHwcQ8UjVfffXyFddwIWaNXFSh
         5PFoPzgPdvkufbUfh+OFH5gdoR570uUsQMCloK0xdHrSEYvgBVrwCdwwvmCsbXLgLK3x
         M625Fwa52O5HhHaE1Dce/SyYUNVHI3IQ3G3mc44tKNg48FuebnXpb5HPMgssgJGxuI9l
         5BdiwR6ciplx5d5jKa1fd8Np3E33zLZ5rD5xno1LqTFBkfkUwPQwmBFp80dAVcNEhURR
         i05XMRK3y/jhJU1iftt4fkoK8+4rVnqTOlJt08cC/zv0ZKgh8nra5z+DE5S5Uz+ve1B9
         xq/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763600332; x=1764205132;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C25VKTJE18FQAubUn6mHIqbat2AO33yDk5BUZb+r0Gg=;
        b=HaWfLR5V0zAbHxK0CwReo8R/ZENgGbUKOAvOqgNI4h1wkL6Ba1/JdUdMKpSU/ArW+e
         k7oQEcX/B+RmyMjGoKaC6OupUmxDEpxrTkJFuHxZcLPwvpmRkzm3x4FB3XA+1+upnBUk
         C83hMrkGSrgblJxWJeput8l0xJd5UBJcG1/YmQD0lN1XgnX279P9ER68bAqHHAQCB5Uw
         cHM3nwRnWwYSH0hLrZHITKVbVBT79lLJTb82xpC/NUitGM3JsZhAUd+hPAUwhQqOz1qb
         hoE5eUSWXjnlxsbsOyXydLNCfNk98ATzk1S/33BNBbEIJ9SxbdKqVtbfOPYy5AiPa9YA
         l8oQ==
X-Gm-Message-State: AOJu0Yw2ij/QRfzZFf4iTxQo9CAR5lEjSqQ2rCZuLTf3T1VjDArjpFr1
	ycRL+RJ4cEelkTPM83F4lcgB2/AEsuq5GNtvP22AeLqOXe+bowTYurXBlrDWs8erFCE=
X-Gm-Gg: ASbGnctwTZ8BWdbsiwEHCuJcgmlHViARf5hTBhgRFp1brdW2uA08DXbOeYY8ZNz5LNJ
	hhLjrxRFmJNKIeKVjIhd25m4/aez6W2uXS8z0zGhDg/pu5hd3KeUbq0XGrsTHqShmKmVNbw9JAo
	2H5wKLEzDZOw6YgB/mkKL4R1i/P5sI8F/r9DsuggbiaLDiGRyUHub34VJS++3YGAV36zVNBpwmJ
	FqXUKzQs3VuJmYAB73HSYUmJFyc6DcMqMBPKqBoft1GAiVH3jEcvwpx89He80+GRmI0IIOnYnl7
	IrhiFWnxLbwJYh8j0ZgHxH4CiAN6glmNTmNODm4Ls3KfHPTpG/e2U00S7XcVTHKK2tXsL0ytdjf
	8e/stcKCDk3GYau2+HxmC9KyMdxX0X4t2GxbiomvMzu8xoE9/9HCx3N6WvTLBl3hwruESmvXP3h
	IVvUtlu+64XvqUyMCiLZM=
X-Google-Smtp-Source: AGHT+IEfWWSQGWwmjXnP90NBRRB0lSXrJG9QyqOu7cpnIYxGj58Rbgq/RWXv0OrwC6cJbeE0wdFOKw==
X-Received: by 2002:a05:6a20:6a22:b0:35e:a390:ca13 with SMTP id adf61e73a8af0-3613b65daecmr1855088637.57.1763600332065;
        Wed, 19 Nov 2025 16:58:52 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f175275asm599838b3a.69.2025.11.19.16.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 16:58:51 -0800 (PST)
From: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Date: Wed, 19 Nov 2025 16:58:46 -0800
Subject: [PATCH RFC v4 2/2] pmdomain: arm_scmi: add support for domain
 hierarchies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-pmdomain-hierarchy-onecell-v4-2-f25a1d5022f8@baylibre.com>
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
In-Reply-To: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1331; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=Vg3Dfytm6mN+l/mw3VTkFpkman7sIJ6vOYXNpDQ8C3o=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpHmfIsKO+ghFTA0HB5/6MyL42Tp8Dx9FXfmNlN
 1nYj0rWKzeJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaR5nyAAKCRBZNxia0/vG
 ZXT1D/0aoT1Orf3HteVwC7ayj1eXa1OftaReuZGWtJTJvdLFH1T6oJB0J13aq6K2vzGm+wW7N/B
 F0Rmik29QJ9OHYADQmmO11FI85Ktp/U0vC4K/vs8M+0sdKSNK+54Vh32rtrfKr25WHfU6CSPeSN
 nmrwcSw3JbhtfJe7DDwTfyZVOSN0+GiVD6CnOahcDL7HTgCBkDTjok+Lpf9k913a0WXFZlJCFO6
 Dtd7i4l6vIFvKagWXhCwUm2yjDk/1Hki6tUOcTMKaE+DTnSWwe+F3KXoe+kfax9Y12vXIQh7ETS
 0LGKLCpA9zCl6D2iou877L4+C8PGYfxUN5nc+2WaI90GZXfiEAzPNTCqTL54REMsJzuiUGEupve
 z+peqQAEuzqzYY1g3960oGfmHRtsSFtSfbTzq1KgrF44miGgFtMPNMT9aLvnPs1kZ908hES3kDX
 UTAuJfdoDS5daGnwNR/umM6CvHCub4PKpjbnAFIxmcwEJ+cdXr4bj4ODDKXuExvw3dRzxF7CsAS
 wMmcm4BGZTyNJYaS/f1rpj6TPZl/xfRXBQhgvHr+zbzmPqctKbM3yBTzjKSilHvhP8mexu93uUj
 9JOpmy3hlH3kUHGp/I8v5TdJNqBm6IRSiGx1meTyljsKZPLLNTv74ym1RpH7SS/sPrDLKXPXj8Q
 mfO9tUNgypDMB0g==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

After primary SCMI pmdomain is created, use new of_genpd helper to
check subdomain mappings, and create domain hierarchy.

Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
---
 drivers/pmdomain/arm/scmi_pm_domain.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/arm/scmi_pm_domain.c b/drivers/pmdomain/arm/scmi_pm_domain.c
index 8fe1c0a501c9..a36bb50c7cf6 100644
--- a/drivers/pmdomain/arm/scmi_pm_domain.c
+++ b/drivers/pmdomain/arm/scmi_pm_domain.c
@@ -41,7 +41,7 @@ static int scmi_pd_power_off(struct generic_pm_domain *domain)
 
 static int scmi_pm_domain_probe(struct scmi_device *sdev)
 {
-	int num_domains, i;
+	int num_domains, i, ret;
 	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 	struct scmi_pm_domain *scmi_pd;
@@ -110,7 +110,14 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
 
 	dev_set_drvdata(dev, scmi_pd_data);
 
-	return of_genpd_add_provider_onecell(np, scmi_pd_data);
+	ret = of_genpd_add_provider_onecell(np, scmi_pd_data);
+	if (ret)
+		return ret;
+
+	/* check for (optional) subdomain mapping with power-domain-map */
+	of_genpd_add_subdomain_map(np, scmi_pd_data);
+
+	return ret;
 }
 
 static void scmi_pm_domain_remove(struct scmi_device *sdev)

-- 
2.51.0


