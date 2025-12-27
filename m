Return-Path: <devicetree+bounces-249839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C54D9CDFAB9
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:27:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E492303198E
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50B332ED28;
	Sat, 27 Dec 2025 12:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WKW5uqxf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEB2330320
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838281; cv=none; b=kwvckqM+L5CdeIECccl1VzBJJh4BBwVZoXEbSTecJX/tiqVuIEe2PxNXHbu0TimVguoTQ7kOugwYny0GjvC2gITp4r3yY/cFgCxOw3VZ+5XnJhBaIysqVzitSO04w4wMpNNqRLxs2ypwMcVK2sHlH7IjiNAn+4KUJ/dffQw2nO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838281; c=relaxed/simple;
	bh=6XxroTSX6ceg285T/QjRgJPmV5ju4e9igmyPsFQygJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qm/00tySsfH96zlcUX2KS55EFVgHR4/CjNURlZjXZeWhUf7skPWMeDqN/DI0CbEBNThWWQZqXZGFxgbjANZWDNE9naoSBMRuVX0S5kKC1A3VLJ8pl5Is0emmggVNq2Dl21YL8VASu0AcjEsGyeOD/SDv1BNYpPgXawmhAxeDFBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WKW5uqxf; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-64b5ed53d0aso11233009a12.3
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838274; x=1767443074; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10d9MioQ6PzKJr2vkHmOG0REtU2UfuxyvJCr4xa57iE=;
        b=WKW5uqxfAOHdjS47fUJahRY6oBRnl6oCH6WDe2Joob5HexBYd8+jzLtVn0dIyVS/LE
         3xjeoeibbEWe4enf8XFK4/bBQuZjL6FRLFkjKlQgXpEH0SkEM/KGzzQsynRi4odLCtxX
         fStYkmCL9fsPGfh2apnelE073KVs1pL0UggD+/7gsTj0oeKcHHX0w4bCfIama1cR1hsi
         jo8JbamkGgILyOlW3lWs8jOzu0IWHxWVVoS03DE91W4uF0s08S8t+0fOp2I81R/tPKLx
         iS7MFhQVZmCRIXbjEy4RQyoVjppKXeZOULYJhdWik5DIX2hErfAS3ThqR4DGxTQ1B0Bj
         CbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838274; x=1767443074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=10d9MioQ6PzKJr2vkHmOG0REtU2UfuxyvJCr4xa57iE=;
        b=Yw4pI2MQPaLneDPatM89F6fHZgtJGsx0rHhAkD8myXJgAyPzSmykErEr8DsVgHUzMP
         pnsC+Zuy4hckBD63W2/L9InqMGB/fa6m57Nx5/qq4PQV7iWNXKB4WncOQGpPqzJXmbAl
         GZoOc8oV5eENh5r273XzckdBPaYDLNoXkdysPqpJu1VjuICHDtaw+m2muI9L4KyLzmNU
         D7XXE9jhnQc4FXw5PVCQyqg7KC3awJ6WaGwpXM/ECXM1ZGdIQ7rAHqLbk3dMCACm9r6E
         bAMk7/rRmYEuNW7rDuW68M7zVq5bIzOsMAPeoYIv58/kt8e2dneDcWOg2zYsWqCJSSt+
         r5Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXUoug4Gpvwjac9u2KbncZiTwxPkl6cQHgkR3cKjk3/znjs5uDzdbotDAfNcwj1DuPP5ZDcP8OKuMOM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw5tzv/7MMUL5YJ+jm1GlVx5g+RvWDrEAv6glDMzzgZU3k6CM3
	m1Hq1ygSxEzXF/oJKSmTeQLZOEbHO2JGi3EidbxKtGcZwJi3G8ay6GGhoXYLjCPwJ6A=
X-Gm-Gg: AY/fxX5ZchC92J5wqYOmv2ztgriI/g6Rv+mB6o68TJOhaJQOJWKdSM6qHdSGJCFEBSR
	/3Lr19oYk/6GQ8rRKiJFzVf8bddrIwELToQHyRKDTlTnp/vQPOuOLIodwQOVj+DBSxPsLUCAkqG
	SbAV89VxXQW01NDtyPM15dd1dc1EOGIN0jl4dRXbzN6pCe4HfvGJta3Wipu8532bkRjMyXLA4bs
	Obb0uwjPWJ0o/leg18IvzhZuADtAx9b+Vmypff1tQ9cq2mjWKTNwlbQSaldt0EXD8mmVwRP+kKS
	TbGwrDs0DkXNt86U8dXPvg4ZB+HRbmjYL1qI4wqva363pNRH5SI7nEzUKugrW+u7dtc3TJxqp5k
	DTnIXu/Us57CSvJ+fB8yrz6/NKNiDACmEyNLLqD1t6vxY/R/wTBhVF2xksImde1HfdozcsQmOwD
	oDEcW3C1expTKrJ5SNX4NF2CUBA3wdV68swi2DaWbxMG2QEdt+S0Br+EFkR6Oro1jR+4mjQwGQy
	r0trQ==
X-Google-Smtp-Source: AGHT+IG6Z9bYMcuGRg69WSp8yaR92k8YtvKMhYw/xt3cg0I4I04maY0SK1m8WoeJjsZm7hG2dL35Jg==
X-Received: by 2002:a05:6402:27d3:b0:64c:fc09:c972 with SMTP id 4fb4d7f45d1cf-64cfc09cb6cmr23518296a12.17.1766838273894;
        Sat, 27 Dec 2025 04:24:33 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:33 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:33 +0000
Subject: [PATCH v5 11/21] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-11-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

The initialisations being removed are needless, as both variables are
being assigned values unconditionally further down. Additionally, doing
this eager init here might lead to preventing the compiler from issuing
a warning if a future code change actually forgets to assign a useful
value in some code path.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.52.0.351.gbe84eed79e-goog


