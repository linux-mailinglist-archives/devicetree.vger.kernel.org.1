Return-Path: <devicetree+bounces-234497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE79C2DD60
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9B55634BEC5
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA02E325482;
	Mon,  3 Nov 2025 19:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VRFun7YI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4849720C001
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197295; cv=none; b=bpfWBgyZ/ba83mbIdCZ2UOhnJZrl2pFallSuiZGgwB8sxwwNPcfClwJpZ72nDZ4uibM3YVEBr4WJzUpyInyIFE5fVyfbuTuudR9X92V8LUP5gh/O7bzsU2N2XdyUhbGK49Kw/uUpKB8oKp2S6Q/pJmgEEl/6ZGyJLtHE/K2LvTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197295; c=relaxed/simple;
	bh=cLBJsaXRCjW8ED7+56uxdLLlUd8ALRghlBAhPAVov44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oOShw/accH6LU8E6S7brRwEzShmpuDwcJxJgYTReY1P8oI+Bn6wW6ius/eSbnTlaYayGIzI3pFoV7A++mC96NuzZa6rmesUTjMSgfetjRSAbYvg3qTZnFKP+TUin5tEtFNRHNz1iG/+Rd4qeRtfba0R3UCQpb5n9KA856Cp+i1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VRFun7YI; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b715064bed6so111984966b.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197289; x=1762802089; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=icN5yYkXgcEYignZ+Xa1ClAR+0DBwP6iwKaUoFu4GLY=;
        b=VRFun7YIS2I3ggIfibtlAWO0MT2KlFGqgYEhDHxunMlGdyoxV7oQSeTsWu7qVumpvS
         2QAdSdKwOnGAsrwjvwzy/4LfVt2txV9ixmqRbjSeFB54XQiVEbSvWpg4fwCv2Ru4EAiY
         SgxLTX2OOmDF3nAbH61XIck+kixvQRNOeg4YdCdO4cKfqbaLIqCEiNl4dNdWcjNMRWoP
         yLXlZfbmeDwTVpNw0r7P/aAD8tYssHRUvGFtpZfnuiJwLZXgcuDwp3L4sUMAuAgcikAa
         7St9LvgDBiuv294fEvdkx1by0I10nCEX15MY0tAtbaf6idY20WSfOYkkbTzF2t1fEa6n
         KZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197289; x=1762802089;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=icN5yYkXgcEYignZ+Xa1ClAR+0DBwP6iwKaUoFu4GLY=;
        b=C22ksSLJGFyNVS1fyv1xxFOkPJtO0klvZzzclryxoGSNv4IhWV1wy/hdILpzilhS/k
         a7xtlUyJPRc68Go4hb6VQwB8EQlqrgQv3/KJTGoBLoGVsX79YH7eJd1PYvcVf8LlebGV
         fyrbzTcI7M2O2J7o80oCTUjOQj6UyH03ZKOw8Xp5aDgNIZYRT/zYkDOpxidybv1ms7aX
         /6hMdoq1FNxHhiG53/XRiwjSfoYmQpsYSSkROWacoiKsznaGDo7OR9Qc+1Td5eBCUXnP
         vlaGk/MwZIFnu5GGDZhW+dM1kgXcMETzd9nlvCLCuLDgxYVMz0NyCpat6Nw8q+9L+O8x
         tivQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC0/f8piNBrdfajkwtNZ1l0GQGIHRlK6MzBDWxeRFvjIbyto353FjEVu6rnggYwPCCE7QbSNnW+HCL@vger.kernel.org
X-Gm-Message-State: AOJu0YytxCu4Zo0GpX8bdHvQCzQCX5drV4rQOV15fBnO/2YJ389Sn+2e
	+FNq8ECFYv1HGxcU+yEuLAavy926i3Pz3h2t8GKftZCixekfwsGReS5twe7nrKqpKQ4=
X-Gm-Gg: ASbGnctaa0ruxHJGUFtNuf/+7TXpKi9uu4v2XQnwv+tXIxr54oAFfUvTJeCQVNlJEQl
	F88LVKjubYa/W9k+O4vzCVBt9203Ljn3MaDDU8/P/HZKqxtmjfkt/rGxCsyCRBLZbSlFDl+I1OK
	0R1cH+6A/2rR2hptTgXCAOpzzTbp2IFoXVtpePm0/vbQRcqCI5Q691bEzVXMAknQKJlRSAC85DN
	nPW8Nt9Lhxf9eka7Dcfl30z1M8dMPlk6MzEv7JpETSyjq1l0gZZBHgkFn7TTzjYbiqG5WUsR/nS
	5pl10NPsVhsoY2X/BPIEnUtn+phv56gjCcproP4zjl98cu4zm0gAktM+WVlEILEDYafHdb3Gmn3
	skoZPSBhJPbDCP6jdGwvn3V+mf2LpoDWK27fLYnwa7AukKewklaic/XyFAeG0FF2JkoGzvfmkx5
	T+FF+GXvV767KqbZ8MHJfsYXqe0hEBMMyaMgFlXpv+JJHxvSpu8BnafXTD3RtwnJFK4LpDntI=
X-Google-Smtp-Source: AGHT+IG5Udj3lRW+AqeTrbpalAuPKgShqrf7tFTaxqWNlY3DqKR8V5lRcyVUxOq5iUJ4O0Pi32zz9A==
X-Received: by 2002:a17:906:6984:b0:b6d:c44a:b698 with SMTP id a640c23a62f3a-b70704c5a0amr981892566b.40.1762197288829;
        Mon, 03 Nov 2025 11:14:48 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:48 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:50 +0000
Subject: [PATCH v3 11/20] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-11-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The initialisations being removed are needless, as both variables are
being assigned values unconditionally further down. Additionally, doing
this eager init here might lead to preventing the compiler from issuing
a warning if a future code change actually forgets to assign a useful
value in some code path.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 04ae9c6150bd5ae9dba47b9b3cfcfb62e4698b6d..1f51fbc6c7b6e158f9707c04d9f030b9eee5e842 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1207,8 +1207,8 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 	struct regulator_config config = { };
 	struct s2mps11_info *s2mps11;
-	unsigned int rdev_num = 0;
-	int i, ret = 0;
+	unsigned int rdev_num;
+	int i, ret;
 	const struct regulator_desc *regulators;
 
 	s2mps11 = devm_kzalloc(&pdev->dev, sizeof(struct s2mps11_info),

-- 
2.51.2.997.g839fc31de9-goog


