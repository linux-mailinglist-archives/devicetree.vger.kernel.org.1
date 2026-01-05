Return-Path: <devicetree+bounces-251398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D15CF29D9
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBE24302D289
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962CD32C312;
	Mon,  5 Jan 2026 09:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dfpL1WuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830B232BF44
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603720; cv=none; b=qf4QgJiYoJ5srxvpmqxpqFLS4LbgeyrvimB1VAbE6U7uNp1lQ9s9JAnNcJPxrDxMtkhpjBK9e1Jidq+0g5P9zwptpessbjneL6uSQiSAoXhE9L27UurBgnPhKUyrV6B78NRudqJ+FgluTMKPVYxPbrdt4WuqePGEenZxnv+5Nq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603720; c=relaxed/simple;
	bh=gdA0sZvZ0YzUA5VbllhyP/LA1RBGbn5sCuJW2ofmkv8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HG1uMJbUsKbLorU97D+8ZDqKnuL8s7quZ1oF0EwMbB39M3ooblCd5zJhaMLoy1OhRVFS1NP6zJEL2H3QjUARJkjUrHt8Gb+2wWo7Mag+canrgYTgDw5cGL9+hmq5Q8wGzRbepSM97BallhZcuc3N5lOpAynx88xZRbcuMNYnFxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dfpL1WuY; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64b8b5410a1so16012369a12.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603712; x=1768208512; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bdm4unydgK85s5YLaStWETQ4AILRmGjAlJ/lhyhIAds=;
        b=dfpL1WuY0jAcr/AfgQScMKsRnyEZvVotB4yzFf1kMJrEcoliiu6bpT4MYXcz9u1XHO
         VssTyQKnI3vJefNQI9P3KIaIyM7FfrCejcuNBfGmuOLYZ39Cb8r1Skml+55IrOlpTs/c
         0K93viX0pjYkp0JO+2eTdDc96NZ/cVLYf8RCKTML8YE19ag2mVH+IzvG+Mjre66YV7NT
         7F8f43ttC9ETjO9uhJx3c98/+n0UONOutbmuS0dwnogX7FiLBx4wbWdKmQfyAw9KdtMu
         RO/ktw2oTr8SZoJx6GCpSbjIp4kaPH6MelY8NRqwcFeSuVJIFElk5wXH4bSvbZbTubdl
         adGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603712; x=1768208512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bdm4unydgK85s5YLaStWETQ4AILRmGjAlJ/lhyhIAds=;
        b=V2x4dT8fKHeDmjYUvl89fmkfuwZNmfKD2b9KXQxLeixNEKA6FBBIlZBNdHqEpxQ1ov
         +N6ptvho7CXhmeoRB9Zy5aWUQJCP0O2HDWYp9e6RcIurik4aGfw8wxigxnB59CAZj5/o
         hODKIcMS53MfwqXy9/YACK8bvR0pnfoxdV5MfSDikI4IGoO79UQjWIqd3FeITXFPsCFv
         61NQiN3LQEETjg/NkBBNEDhjO++U33y6iYMwdgjbGtp+I8PRudlsGGaRc6IvNHC9gD2F
         STcVrQTUL1xcmbEMGYcAMxq9j/TW4Dv4vA7qLA/KsVVgLrFPMnb+bi3eIppBKcvwM8sl
         UkEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMhYTH7zrhvpJf4X9ozbebhSb3VO0W6ox+Q6npv3F65VAlVbdiPYQjwgSVtAbJjlQsZ1IEE8bS6Z0j@vger.kernel.org
X-Gm-Message-State: AOJu0YyXm22tEc4qz2fmLtQu6Aks5ui5kC2vYl+AMETA3T9S8D5fJ7vc
	X3t9jRpP44pnFBU9Jyuw7nci7pMqL73c+v5F6eHUPPtHO4xBhXN4X4C9x2waO0rBOKSgviiyJF6
	eZd9aS4g=
X-Gm-Gg: AY/fxX49X12TfA8nr41ORqFzE50JpKXgwTaaVKHJeRryoYhEcJsE6Eu44D2gwuoX9Pi
	5zciMlgAtjPxOsZSCSwKHlx1rGKi7fBC34Avc5YZJmpgxcbMYgowBtVrtupOjP0uZdBhIbzsoeX
	7B7MwDnVkC6zQGXKIFMpz8C1fxQxbBnOZYD2/VQ/gCaQrso/3EUVQyQvRokF2gfaTpja7EouS7J
	S8eemG0PanoDvwRo6vczZkTVWS0j7ylkVPYgMELvBrnnbxE4rulYbsU8lKkakg/UcF3Dzb833xz
	HhsFLOm/miUsGfHvxgZtu3pu1MaP85a4LRWSKYJiRusNjmSW6MY1ZH6TrHW5gjkZnBFmncwa9Xg
	RIMAUnhp+gdn9zr4cPCN2b11dBtghL1sWJx8fmwLxb73tcj06kaTWfyguzAna90/GXEm0OmyqGN
	e2eDyD5Y7KtdrDgCXJm8H7r9mIXP2RVcEf0neQDagIi/UMOFNxa/iFjnyNPIEchBBZ8w9WEeEG9
	Xo3cg==
X-Google-Smtp-Source: AGHT+IGpEAwTdgiIFqYVLwZr5Dshta5wUiaNkwk7GiDRbOtmpc5D7uh2c6qY0I7WpfIMYQ7/WqMhpQ==
X-Received: by 2002:a17:907:847:b0:b83:c81a:197e with SMTP id a640c23a62f3a-b83c81a199fmr1121260466b.24.1767603711921;
        Mon, 05 Jan 2026 01:01:51 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:51 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:56 +0000
Subject: [PATCH v6 20/20] regulator: s2mps11: more descriptive gpio
 consumer name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-20-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Currently, GPIOs claimed by this driver for external rail control
all show up with "s2mps11-regulator" as consumer, which is not
very informative.

Switch to using the regulator name via desc->name instead, using the
device name as fallback.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 4a9d70947f17cb7520e0e820d3d1b9eb370ff600..2d5510acd0780ab6f9296c48ddcde5efe15ff488 100644
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


