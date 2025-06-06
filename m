Return-Path: <devicetree+bounces-183386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6681AD049A
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:05:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 002DC7A7B68
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFFD28A406;
	Fri,  6 Jun 2025 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o9ePEAzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF87289E34
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222202; cv=none; b=RoVozGbVR6sbdUOwGp/MwaG/ewGMl9dTW+9CRPgvIh9J/cgGy42jwvYixpQ6a1L7tXwonxBGfSHWGLivkVNcivHS6re2AA/jlFmJalIVWwaqHFx3bbp8OCd8abT7K+rzS3CjcpNROxVRmZRvk6ap/IOVjBf/bDk0afiytiLCdts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222202; c=relaxed/simple;
	bh=8YhlHBum+GMkpxcfSNF6Fsr5CtES7Gq7MKq60ULoi6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XwCyMiVNZ0mwFl6sLvgnLndU/b8OxW/OXTrKai+5J2bJj9TM+8+T1AWQQiHZLrkY/eEfVgIXx1lFL/grsQIdOAvBWRc/VqorqDd8V1rdrmjeU0NO9ck12+5vludwnclS1dgCyLqqwyEqQAg9coZgroWnl1n2xFWIFgYPTJ5NtPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o9ePEAzT; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ad891bb0957so354248366b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222197; x=1749826997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=86/sdIvo6lqhOQlCC6J1qPyFFkh630x60KJMH3jfrKw=;
        b=o9ePEAzT7/z1ZCjcl4w44NvBa55hiT0AUGH78eEXeygoTZaBbbb+ziG5EmJh+2GP/3
         0vhe+3pMmVcaX11kozQLRhBQhHyntljs1yPwHYGXjmWcDxdVgYbNiaS3LjE8bEmQkNp5
         TZH2jjANbcJSJ9dQt++o1kGo0CXHvJhPLG+wVh1bKgw/hkfnfcl4UKQZUijAK2sHwS4C
         PkdAfMytoRKD8SfdwVtTm75/Vzg38GQnnILxMsxpOjZHvFbSSAmQkU8Swkb/zEqNr5Rt
         4v+yxMdbg4k1O06XpiN+Mec8mxhwGu+02Et7BDtWOSqYw0wRwIVYSKedmgFoHLdXCb7T
         ku6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222197; x=1749826997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=86/sdIvo6lqhOQlCC6J1qPyFFkh630x60KJMH3jfrKw=;
        b=GfKAFmiQ1DdnaIIRQDU2FC4eViFVDB5Jx/7Rlh3D8ChrfCAKLB/HqbE+TqXUSE9tdC
         RXvu/fUnQp5OES7/W1/3fTuv3zOGrc5TlryPdwLl8ulwh26ZWlddX0if0FVe/kKd1/3M
         yF7ToZ4J7INsD8OTSh2fyfmaoUzLAY1Dit/Yxm6gDusxErdPAt9klCsT5idgTmIaVAnD
         enzSrRwHYgwSSCsb92KcsQRv5QSX4mRXnMoVc1FQI/onKElLocXlkvpl35SxJTED52xq
         /iUWEz/++xIDP3x0oH6ak2Mbwp1oSMgOnt2c7reiBmokkjoH4Ie4ox3gIGzSdsAagZMl
         ApJw==
X-Forwarded-Encrypted: i=1; AJvYcCWLaepI4Nh9RiZealoqa4+K/oil3/6N3NHJFJSab2RxoqJIpw0x+6ds3NArrdKU4242cR4yv+2SR0kg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7cHhIqxZKa9C7H2SxsOuSqf7zjntV6zStf71xmMFKhmZdNX3n
	IuedHwdC02BwzmdJhPveoiEek3gPhqPScwwNmosDT2FEoKLwuGinOxNWIQyEfjRKoO8=
X-Gm-Gg: ASbGnctGMGWQfa2hcukeOOAOVeAW0xopzDLSdyYCwwZ79FvY6K8Wp/0vD2ZZ/XnWLzt
	r/IY0th2+kyYxTFWC3ld3g/rwKRkjfsMIN+kXDpsPOeuDO/WMlKgB8GasRL2/1HgkZMnL7FdeWX
	AuRTjlAULm8WsKgdy8StGpE8L32OQxyjUEPUnrk0366WX5FgYjq0n3PjKqija8b+0wtvc0QxXBY
	5rXWpEE+EjcR2v491lVxgNyh7NoylhPb7UT/wV3AeUjT8FcjYjsCL6jUsgZM7Kq2u4ZzlNMWUxe
	xd443kftQXxtLFuptAOkHSaJE4outcQMREESoCzMhYqtVui59ORy5MZHh0eyCDHFWh4JXtNvuaO
	yG5xrPrJD8uifJ0kwrueC8hEp38WR5W2mB0g=
X-Google-Smtp-Source: AGHT+IFqXf9+Um6DWXqgz7nJCFTyJ4x+s9ENYnuEsI/OTxzyyQL/fitGdfmm5vxFgTyc5juu03zvqw==
X-Received: by 2002:a17:907:94c8:b0:ad8:8a46:f156 with SMTP id a640c23a62f3a-ade1a9c825emr352106266b.6.1749222196713;
        Fri, 06 Jun 2025 08:03:16 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:16 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:03:05 +0100
Subject: [PATCH v2 09/17] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-9-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
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
2.50.0.rc0.604.gd4ff7b7c86-goog


