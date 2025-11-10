Return-Path: <devicetree+bounces-236897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1944C49144
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E05443A20C5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FD333B6DE;
	Mon, 10 Nov 2025 19:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="itFrFogV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7AE3358CF
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802952; cv=none; b=UBTgTC+hHZUTinAqYTdU9UmkmdLjF0yf8rSfAvXyfxFukNIp04kQe3yYLt+/9hqPdvAK2eG5X1tGudQD0bqtkd46eApbQ3GDQ7elKNwm0zUsHabD/SnnAJij64OcDrFwTZvimjYDVo/uUKbYHUh4YoN+qv+IanLgttoGrg5OcKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802952; c=relaxed/simple;
	bh=yoWFkHZtj46uF0EW4nm1cAv2iisUO6p8mkGLUTNAWgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GT8WBKvqDRwGkO2wEJh7JYrDjpCTM8mjbx9Qi8GOnr6NfNnezfjYMsB0z6maqpSBFABf4f18sf7yr8bBhANuI9xuwHnOCtqYoOQ1RNNjXQf2ILz8I0vk10AW5Ql/PsPnRqrg5YUnqjw2Z2pFaxt76puqNdJqiCluT1kMUzjfHAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=itFrFogV; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b4736e043f9so471594666b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802944; x=1763407744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QeUUtxVE/l6U3rYNomhig7G5mdbpyNRzMIJHR6C88h0=;
        b=itFrFogV/KrC/in+avJirWHOwVJ+Q5l3iUoUyFof7/SfYtLzSplG4s/BFB/X4nxpuD
         hyLzMjRt1/Z/yyxWwk4kjdsRcCEZQFCC6na3bNaM6kfagFMh7Y64kEVs6h0NeV9VlHuq
         y/cjje4pn+yrTBZCAU4L3/Xx4poJvJZIfSr3bd4yzwrQ48wzv4kWKaSZ3J4/zJnvWfsE
         8rruJejsT/3yrCu9ztIxDdWaireLL9yUcTFOLgcPGzimVZcJ0K2t/2yCpAziOPj9WNST
         b0EJPpSyTm58nw9N3QuEY0TunEFAOHoutGb0XupnpNrx/q7X0XWoJW5ZoqULvXL8sM0K
         YyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802945; x=1763407745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QeUUtxVE/l6U3rYNomhig7G5mdbpyNRzMIJHR6C88h0=;
        b=eMPr0FTiZPB2yusKbIG8bm+DBvx74lWpBn/7Du1tQWEXwrJEsmnOaR/Pc9oCduBseT
         ljruRhUTovRQWg0OSRRsA9RsJXY9XBWzxgkGHjlF28L0eucu9KxkhCpaAdqC3OmP15ir
         yt34dnTwFtyQWi/a+IMMhKjzphmkywKj2AzB9XfVYx+WEUp0mKxnfikvWbd8w7EPG3Ri
         P6N9NxWpuWGm4ny0WOZZiLUIeXzv0vx5tvhfEFza7eOo/35pcoIZcQbLPZsjWKTIPJRB
         45dD2ZTqXJR187Ed4Yc/JIhva7S4ynSptVkaRJCSScSfg1lq2iYLnvHKjhkaY3qLVWdQ
         sEqA==
X-Forwarded-Encrypted: i=1; AJvYcCUkY6/7sH8vwKedH6MA4MhkOvAsuorF9BySz1ob7lZ4nvQPu+FWEaAG7CuH1yTUzNIvCfbfwnb4andx@vger.kernel.org
X-Gm-Message-State: AOJu0YzXWKtfEtA2E8hoGvGsfDXbi7+3odyZ5bMYnVWce3BTdpdUpx+y
	SborNkDa45/rykU3vNQQBFybhs3sIrc7AycyT/+/DHhDwx/jM/DjScrgQgE4p/rN9XM=
X-Gm-Gg: ASbGnctu5uP2qoYRZi0M1xX2oJjQxRKOxVkc+nJL2hvwDmtyUH4DYkDgKyZoIZQUso7
	sdkU8mssGUywU9Ubh+3zSBxQM2Q9PWVwJKSaeWtp1VEoIjYZHGTNblL5m3nNA4WwwQtLEwy+OT1
	9V7CaNQxsjkzsiNgvdiLqBz01E5mIZpMIhTVYsNoVK1KGW7cQePDEACvZHLxrHKintGgR5dgBLJ
	sT5acr3ulxzl+v9ePVN9ibR1TS+CJB6j0SGFA6cxY10xinpaHFcqY7pyrhySb/FKnqX7Rvf5szQ
	a1EsQuavyQojr33qJkeYSDix01/yq/9eOp3owZro+3lMJw2HCUtzthgMV/hfswvBbkwxwbY5INB
	+/G0g59AUJkREvwZdxPBZEEKiFUsSXoh7iJ6/0TUS+pRGtWGIhxCXZnKRIJD0MuPTItjgnNBBgK
	sbnpf3WlJdKrG6C5fWfzsszZhPxg9M6LZaZlYQEd3eXac9PfE1Zh1gPCeQwH0XWhrZTc5x1M8=
X-Google-Smtp-Source: AGHT+IFCwxqLkhOuR1fLThDVMMelLXW67BZ82zG7gRYpU2TMEHXfkTI5mn6Zu6XtzFQ4QrsAm2NbOA==
X-Received: by 2002:a17:907:96a6:b0:b72:614a:ab42 with SMTP id a640c23a62f3a-b72e0015fc2mr739140266b.0.1762802944631;
        Mon, 10 Nov 2025 11:29:04 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:04 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:28:53 +0000
Subject: [PATCH v4 10/20] regulator: add REGULATOR_LINEAR_VRANGE macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-10-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
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

REGULATOR_LINEAR_VRANGE is similar to REGULATOR_LINEAR_RANGE, but
allows a more natural declaration of a voltage range for a regulator,
in that it expects the minimum and maximum values as voltages rather
than as selectors.

Using voltages arguably makes this macro easier to use by drivers and
code using it can become easier to read compared to
REGULATOR_LINEAR_RANGE.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
While this commit doesn't introduce any users, the upcoming s2mpg10 and
s2mpg11 drivers are using it.

v3:
- new patch
---
 include/linux/regulator/driver.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/regulator/driver.h b/include/linux/regulator/driver.h
index 978cf593b6624228fe1fd9c2a3e186b53ef172f8..977755db64c6dfaea7246067eab0d9a2971caa01 100644
--- a/include/linux/regulator/driver.h
+++ b/include/linux/regulator/driver.h
@@ -53,6 +53,11 @@ enum regulator_detection_severity {
 #define REGULATOR_LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)	\
 	LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)
 
+/* Initialize struct linear_range using voltages, not selectors */
+#define REGULATOR_LINEAR_VRANGE(_offs_uV, _min_uV, _max_uV, _step_uV)	\
+	LINEAR_RANGE(_min_uV, ((_min_uV) - (_offs_uV)) / (_step_uV),	\
+		     ((_max_uV) - (_offs_uV)) / (_step_uV), _step_uV)
+
 /**
  * struct regulator_ops - regulator operations.
  *

-- 
2.51.2.1041.gc1ab5b90ca-goog


