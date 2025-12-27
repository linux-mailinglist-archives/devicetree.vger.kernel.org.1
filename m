Return-Path: <devicetree+bounces-249847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4F6CDFB13
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1205304E550
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D4E3321D0;
	Sat, 27 Dec 2025 12:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xwLpD/5q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E33330B25
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838292; cv=none; b=OKQEPpjyYTPIaiiXUr7aVjEF+Nr9hQDvRobMd1kI9QmcJ736wdZHn0Bsx0TOkBFnLErrhG/iE+wZj5U1SUs+/48PcFHuhyOPd3U9IYwe2Kn5rf6LWXb9d1BvXgo3UU7jf++VXDMr+kpH+QGeM3iZX8mSbwepqc1HzBubiLZrScg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838292; c=relaxed/simple;
	bh=zY4HDzqBb7/UAvPLwmWGSo1BI//NAtywMvqMn/JOYCQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QF/ZA7SH8qxmmbvn0YwqNVsbN3mIwgzGnW4gCvkccGMzcz1LUIVBJ1NZu/p4M/tc89LsZQ6o/+XscSxBRQBR1LDDFFTWmL9LGMQmEkqyWyQ28v+aXuBVNbTRMTXal7JnNuyRPMwTHqTn7nt8QyPBTR9SDZK+Kbi6B1Gsbxa59iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xwLpD/5q; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b7355f6ef12so1507821166b.3
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838281; x=1767443081; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ERvEdThlWsJXRM1ZMwEPHPXp21IS92Dke7PuPKQGFoY=;
        b=xwLpD/5qgkDKyLQpDuUWqEBnsrnBa5zvvw40CZ2JEnWBcs35b4+5E5yrfj3lftMRwR
         lKYMUY3iL+ygfZoxV9071Uuaw+BYFXnQk4zMSrYuZ/syAk7ymGNbCD1bUwIUYOAbymTb
         OjTJLkUF9YkNge9LtmNmLSM4Jq2SNWcF/z8IGs9m+7GDlTgiQd3glHB47QAaCY4mwzV3
         lRFu8hRbvMGRO+Q9qWlUfjNbKZ4LbwStwlk/ONOalhTlQVAuTe8Hxi89NK5rBgVtoyAl
         GtpBMvT5faDWNtAxpI4OrB8vvC8xa8lQFZxEyodZKkRHSe45sJB4wtDU3gz10E28aIUF
         IMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838281; x=1767443081;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ERvEdThlWsJXRM1ZMwEPHPXp21IS92Dke7PuPKQGFoY=;
        b=QRexEhbvBQ5MM9zrLUDunrM/exAXE7ciVNsFg2TcKVpgruJHh88YUC4OxhtrJl9zJB
         PY63Lz+QsHZlOJpJc8aLqe9RpZQpMQnylxEsJTPf+fa9Arj3NYHKIvGP7gq0/+N3SWPh
         8BkeRBZ1hk0jwWO71tC9WZT7P5EMG0O/wNKBheXblmNMfWxadec0a/8DDYpM1dmL8YMb
         LiWywKB+Ejk10nY/Y1Cz/7ugBZUTq3kGNcgHC1EWJnHdb9QHqLOsg5rHvpdD+KiEsHo3
         BmwXtpD6UrGUdRreJ9y12ahQOZ+KgTun21ATFxpupPw6vMpc8cUxh7SsVCvlYed7Vx20
         VieA==
X-Forwarded-Encrypted: i=1; AJvYcCVcXsszFZGV/Px4c9eq7vYjpoohrknu99i3PR8Kp9EUUIXdg8apdX8KpPeJsmjmrKKoH9KNIB9ygIt6@vger.kernel.org
X-Gm-Message-State: AOJu0YyaA+z0rzGFl4dPvE5srLvxBf2iTmbkmfnFihMln3i2pKJZf364
	wdfPvy8VOa8EwtMIRvOBKiyxumjD5co14k44ns/np7U+jLn213oKxO+6nFF4snzdgEQ=
X-Gm-Gg: AY/fxX5xU5Txv+X8hm7vgNA/qEz+28e7+FMeayIoFDTOsAZumQGKSdgeSa11Rgt12Sn
	sjx7sdddew/PwlpplMFsb2CEP1XawrkEUc/NKbLfrYbf6LbJEPQCls91fFPXnU2Sjk1uqhuSamh
	2ZvHJDva/fIN8jt7PSOtc+SbCR/b729NFHTDqZ4jpZOBQLpJOWnSKH2G6QAoYVv37BjsorVBrJv
	LLviWNxB7OZWM+a5FrRw553DG/pdbtjD7hpObx9DHdK4Nuu36n9gdzIKwWNFlLhJJni+nkZeKDt
	bTrr/YBGCqtuJ+BKtPFB60ynQJ4/QAbjbxw/8nco0JWpeF+HhrcrhuEp6LyPa259fbHzGwM0AW9
	RzAXTv5mNhn52I29D8GQRRoFkv0hXV436rzdfp+5j6iPvlgjnD3p/0EMeFPEzDKUcCu6Vww9CsS
	E5wGJkf1x/Ssucf1vWa7DRaU2fTNGjx0sT7FmOwLnCgwqGf6VRaJX9AgdjwZxwr62K206TRBMGe
	4M8MA==
X-Google-Smtp-Source: AGHT+IHycmOXztf3tQPqUFMR3ZDzjnCJajLUop6kueKe0OALY79Qu3QaZ0E1mu52XExCIbSh/groQw==
X-Received: by 2002:a17:907:7eaa:b0:b76:d89d:3710 with SMTP id a640c23a62f3a-b8036ebbe32mr2775195166b.8.1766838280740;
        Sat, 27 Dec 2025 04:24:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:42 +0000
Subject: [PATCH v5 20/21] regulator: s2mps11: more descriptive gpio
 consumer name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-20-0c04b360b4c9@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Currently, GPIOs claimed by this driver for external rail control
all show up with "s2mps11-regulator" as consumer, which is not
very informative.

Switch to using the regulator name via desc->name instead, using the
device name as fallback.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index f068b795ab51845bddac84eca08be0efdcf4f164..178a032c0dc192874118906aee45441a1bbd8515 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -362,7 +362,8 @@ static int s2mps11_of_parse_gpiod(struct device_node *np,
 	ena_gpiod = fwnode_gpiod_get_index(of_fwnode_handle(np), con_id, 0,
 					   GPIOD_OUT_HIGH |
 					   GPIOD_FLAGS_BIT_NONEXCLUSIVE,
-					   "s2mps11-regulator");
+					   desc->name
+					   ? : dev_name(config->dev));
 	if (IS_ERR(ena_gpiod)) {
 		ret = PTR_ERR(ena_gpiod);
 

-- 
2.52.0.351.gbe84eed79e-goog


