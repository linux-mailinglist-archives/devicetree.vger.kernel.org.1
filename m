Return-Path: <devicetree+bounces-159963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA7A6D1FB
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5CBBC7A4D18
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71CD1F1305;
	Sun, 23 Mar 2025 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KHbphFSY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216EE1EDA33
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769591; cv=none; b=rc4IexPdclJS1HjphANzTyqSVBzzO4x8+eSll5O3opdmkvMkYQ6bnTWRRQ0OtilCa1nR1vOhgu+6ONBmerSZZhg3wsIFKfauBYZO05Y+EJ0347ZSADk3pHu9tVo9XH/nuoQJm0IW7J4qyoixB8LWcjhH6lQZ4jGk/OyWqndd/fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769591; c=relaxed/simple;
	bh=6qUMnnrlHHUbgLCde/zD0N2oNsEsgjH7lEf2K9i3EHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LsSvGPkSTsyxYl/kr3O6vfe1RZRovtGH39ymg2fjfTlKdexevkudmHRE1lx/jOiCS4H+RreeCKZtGQ2/GjXFw5QC088C3g8duOo7ofbgmY4wUpvSSPx7PH3KO3BC5PDxckvdQiXDXkcpPm3mNPMfMRZpYvbMRClArbzjPNiFypM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KHbphFSY; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2a089fbbdso689706266b.1
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769579; x=1743374379; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DHaTbCMsBXEPy+wffmMjNGPy/wKjQsHouvVH+3/pTJ8=;
        b=KHbphFSYz2QnhFS2dmIqOpu+K5CNichuxCqtiNn6yUUuNlTOlfkUmuag1+FWiGgf83
         jrfmeBlM7IGsZBEEx0n3r68Kco+iUvayvCZLPznhRebIelrrBk6Kuh1ExlFXJ4gupnVf
         tIVaee/3Tzsizl7n7kd9j+bW6bFkZ4s7AKpb6R09opWwGO4s6lGUUVB43NF4tcpAIwV3
         /2vRKbc2PIh6FsOBs6eHyaqeZi4GwjBT7yKdyh2b/EQVFAdJjOvIXi3Z5RdmPd4Rb2Wy
         BxZZTVWEHOdTWmQAys6XzyjM5HOzheakCF3MrVvj7nSuL4K7pLwdfUV2tWnVZLida5CA
         08Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769579; x=1743374379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DHaTbCMsBXEPy+wffmMjNGPy/wKjQsHouvVH+3/pTJ8=;
        b=k442D4LU2ledIPY07WMlU/DeOvkaE7gYGGvO+BomZr+3oKlM1lc3CxEFssQnzh52O5
         UiliLwDYqgRi2GPOSsM48ARy9hWW9YjSiifnkLlbiYW2XzD+4h5QHgmtQ7lyEvDaSJnv
         PGXvU3W4WKxieO/nRPC83TBN0nv0UJg/qscWHy0EGz8cAnO+cVHPIT9LQG8Zm7MaAdSt
         zwibnoNq32ZED11CKFnrDKmyi32GQjw+FrRKc9GmL/BvGkdPHMJwiZe8nF2PRrLjx+EH
         i61H4U+M+7cHya1PLK596fVtzcS8B+Nv2LICgnB3yHdgu+SZJ/fUcAjc7NA9I5P/FJlq
         780w==
X-Forwarded-Encrypted: i=1; AJvYcCX51mFII1GkiXsCJYV1DLhoeBeI+2WOsVnwqbP8SY9R21Rlxjkx+RNDX/iZTRjAGepB952eMmpS+EmD@vger.kernel.org
X-Gm-Message-State: AOJu0YwcVwsGg4z1TB1FbyMpLe9xXiyD92iTdDeVEaNEDCQL8mVaN9DX
	9S4eY2ZI+4clZH0zit43WERJosossHau2N01+1UfzbcGbDdy6M2yXCj0TPuL3yo=
X-Gm-Gg: ASbGnct64Vm+k9dA2jVdFM8u34JCEtSIBufLgpIInrEfTtkrO70V1PWUTKSZbWHVfUE
	IBFhMNefWh0G2TOy2Hod620rcJGTRpipHBt/rY6z4Z2Qn8djcI63oNjWJe7a/YlPZvZ8xKbzhGc
	jtFoxH0E6m6rnrujQFePS8qLc+XdeeYEmIzun1vuzUTohYSA3OtT4Huqy0XnThLfy5tt7BQxj5w
	OeRwoTkA3y8nhD0HF+job9+ishGEmC9RWGHNyhSNkQqweYiAlOfBo9Xs93pzEBsc+dgT2Fwz7mV
	ZI0R9xQD30ZFaVUb7v19sN+GyRsHoWhyfW8Tc2L6AgctupD4aZuspyet39jhM4Qrsmlnnzkh9Sr
	enQBEKg7eAmoyTrUuz/nFWw7A+leV
X-Google-Smtp-Source: AGHT+IE8DhyAI41xwJ1273XUXoV37Lt8dbT+04E2oAAFhJgLPXY5M4zmkgkE92YY51ZbbO2cYsb3Mg==
X-Received: by 2002:a17:907:d84d:b0:ac1:e18d:a738 with SMTP id a640c23a62f3a-ac3f00af8famr1143082266b.3.1742769579059;
        Sun, 23 Mar 2025 15:39:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:42 +0000
Subject: [PATCH 26/34] clk: s2mps11: add support for S2MPG10 PMIC clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-26-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for Samsung's S2MPG10 PMIC clock, which is similar to the
existing PMIC clocks supported by this driver.

S2MPG10 has three clock outputs @ 32kHz: AP, peri1 and peri2.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/clk/clk-s2mps11.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk-s2mps11.c b/drivers/clk/clk-s2mps11.c
index 014db6386624071e173b5b940466301d2596400a..e86a762f80ccd7485a9f2a6f567b81bafe119874 100644
--- a/drivers/clk/clk-s2mps11.c
+++ b/drivers/clk/clk-s2mps11.c
@@ -11,6 +11,7 @@
 #include <linux/regmap.h>
 #include <linux/clk-provider.h>
 #include <linux/platform_device.h>
+#include <linux/mfd/samsung/s2mpg10.h>
 #include <linux/mfd/samsung/s2mps11.h>
 #include <linux/mfd/samsung/s2mps13.h>
 #include <linux/mfd/samsung/s2mps14.h>
@@ -138,6 +139,9 @@ static int s2mps11_clk_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	switch (hwid) {
+	case S2MPG10:
+		s2mps11_reg = S2MPG10_PMIC_RTCBUF;
+		break;
 	case S2MPS11X:
 		s2mps11_reg = S2MPS11_REG_RTC_CTRL;
 		break;
@@ -220,6 +224,7 @@ static void s2mps11_clk_remove(struct platform_device *pdev)
 }
 
 static const struct platform_device_id s2mps11_clk_id[] = {
+	{ "s2mpg10-clk", S2MPG10},
 	{ "s2mps11-clk", S2MPS11X},
 	{ "s2mps13-clk", S2MPS13X},
 	{ "s2mps14-clk", S2MPS14X},
@@ -240,6 +245,9 @@ MODULE_DEVICE_TABLE(platform, s2mps11_clk_id);
  */
 static const struct of_device_id s2mps11_dt_match[] __used = {
 	{
+		.compatible = "samsung,s2mpg10-clk",
+		.data = (void *)S2MPG10,
+	}, {
 		.compatible = "samsung,s2mps11-clk",
 		.data = (void *)S2MPS11X,
 	}, {

-- 
2.49.0.395.g12beb8f557-goog


