Return-Path: <devicetree+bounces-210738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F057CB3CA7B
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A15303B2746
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09A424679C;
	Sat, 30 Aug 2025 11:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aI1QjPud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D8217A300
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552626; cv=none; b=A6haPN4sKszqg0C5cG62WDNfbFYp5th/UgcC8YfMTgwGr0lJoSUnmnDwD8FrY2mk2lSMCm3qJdNiMWBE0pQ2/HVLwzQzTQcovnA7LfBu6vk3tIoI58oJh73Vpd3m3PQ6/oLWvYzOYfUraTAlkHzVI8Oq6gk0LXd3OQRGYHlZtUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552626; c=relaxed/simple;
	bh=E0gq6DxSh3Mfd2fh/IwMmACtaozlVHjrWxf6F/SWbtI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dlDQgds3fgpa2guZkkTVjAo/PS0m0eQL2fQaUzObJ8SBtsVW5HNT2C8KtPESlC1GvuKZFogSTU7wX+hZ9fei41hlkn+RwV26bM2WXPhECUHHA+JW7b1dZlL8dFUIOi28BBVADUfMQkHYjCA7HxKfm3aHE4n+OTYEYjQx/sArLKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aI1QjPud; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afe86ff3e83so41007166b.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756552623; x=1757157423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HrtE3Q82QK6+GBZEOdbY1kXklQMDVX/x3b7hwZm2YeA=;
        b=aI1QjPudCyTq/xp8gEd7LybOkLQdjMZLCtxKRkFu9OdIrvN3HPg6YuapnlTkY/JFcl
         b2gdu48tNSSSoc9vnKEfnGla+Xw3c2R75c+XV3q5oAK9WFP8gzb6u5aoZ0h9wxP99XVj
         Z5v9mARDEe9aNdV9wk7tg7Kwu3O1sE0A5QE/kz82IIB6WmNxmyotCtIj9075zK3k7o8F
         iI1XveOLoMjeoGvDFSi1jVnnNyZPVhCMFL9lkShc5rsUtZC/0zPvws+rGBw5N2DEO4k8
         GwJ0WRWOtf1koZB0WXvpDERsDdD23E/JHvoakWhnzMUUS4gqOMJ+gQ7EEXddNmEjp1ZD
         Wn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552623; x=1757157423;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrtE3Q82QK6+GBZEOdbY1kXklQMDVX/x3b7hwZm2YeA=;
        b=FM2+bp8v0GAh0r+HrMvF0WNQbqeWtMjLSjY7SU81I28nxGEKWSMx2Yff132chebGqk
         ulah/7OMElkZ7dlNP584VRXPKaznC/tf+fUM67Osjhmmysc8EwZfWBTzOvy2GSnA7sSX
         /p6pg6fOUrAvwKTCKh/eILB2SB8zFIXEV4WuXQm+hKEuHmABIMQawvO9dT4P0fa53zQl
         bia9mbSl3VWDQqOvuOuuFpATE+FfBUCr5KofxsY5LX9v0hgC2fFZ74FaCOMHGgM169FV
         xgdhvI9wHPAdbD+s1t1X/Q/nHToNbTKlrvdXkoQz7ZkBeEKHzuHhL7/ygi96YhuM/ImI
         OCww==
X-Forwarded-Encrypted: i=1; AJvYcCXWNYWJYj/U/qZRZiyQfsqgQH3Q9G9vrIMJSdaQD0zHFJC5mX8spXQWRDUTfUBEDW6ogvkO/T8Pxlzm@vger.kernel.org
X-Gm-Message-State: AOJu0YyrtReX5SjcwOGa7p/+29OI1/iTTNzfD3SfFvK2R9XdRUuwuSez
	TeeFx5ir6MRfeyAwxuzoLnXhO4eDMRTquWQW4Nd5s+7sovUrE6oqpNHDMdH8nduLO+QmG2wMJZ2
	Blq9Q
X-Gm-Gg: ASbGncurYZKA96c4Vul2loW+rm4LZL5NO+apG/LJMYWJTYbgswYyt0Q1+VCzwDCrcFB
	ZOePgoxY28pJrSQ625V88wVHIipOqmKuuBp43TllHEgvq0AIyGk6CVax40VSGXD+0++lhQfIa6I
	03vADjBW16HvydpQxce4FIIsB6hiSFUN2dp6zXcU2707rf2nc3U5ywN4aWQHHUOC+Eagp7G977B
	MsMNBQQ+ToyioXIRzUhF/HbIytafQHtlBguX6pCLKDh4lg8SOrYODa6mgm69xymYvGAWWeGKzvx
	ldB2kaCYAV+t+wQQgnceWq9Lo/pZxaCUgw4FdXatLrC3uLOg9vLawPut6cufRSPpVQnxghgvaW5
	9yo8bmFnAUgA5DPoQDxoBGQmDAcj9WrHHBut6r6fikCn41FeBUJlTaf4=
X-Google-Smtp-Source: AGHT+IFmornV4ZdIWfTm9SgoE8/HBXaeK1TDUM0EwCR7nq5XRu9/CMvRo+RGrgPCIIEx2ABNZ1/nTQ==
X-Received: by 2002:a17:907:60d4:b0:ae4:1093:d41d with SMTP id a640c23a62f3a-aff0377c96emr287174666b.0.1756552623239;
        Sat, 30 Aug 2025 04:17:03 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0236d310casm117780166b.44.2025.08.30.04.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:17:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] pinctrl: samsung: Drop unused S3C24xx driver data
Date: Sat, 30 Aug 2025 13:16:58 +0200
Message-ID: <20250830111657.126190-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1320; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=E0gq6DxSh3Mfd2fh/IwMmACtaozlVHjrWxf6F/SWbtI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBost2pee9d1wG5IpSYQufkayn0uDTUfoHK4Aojm
 OXjHWzf67CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLdqQAKCRDBN2bmhouD
 17DuD/sHmEpQOmJ+f3J11DHtrw0RH+Din6o+TGdXSZkDpyWNmfyR3Xbulz29+2OQ9GyJ5fnIEGH
 OLRyAgwoUVLWTc07Fjl+bEhfalWAR2p8AhxQF0SRmS3m2ufITSQ5KdAwimM/8W6Bw5PGfLvrhL2
 KC4E83y8qrf7Krj6osG0+HAEW8S1TqGswumOelaNzFH/sWoBWgovhA3ypaBGd867OQy9UnrCtkG
 8pTI4zK8UteCTyGOw7Gfgdtr4jGfMQEMoaXg8GDKHwvtJNgRd4EyLrW6vTtHi5gbTY5/5fsOH2A
 wUUAFzC5Ao8fwf62Rkk2NDtC/DObwKKj0hWv0LIfjNx6dgoJ2hvW4Y9puHX20m4FMHiLI8tU/AT
 6V5/uEJ6ZNJKoU0IG2kh0AU+rjLyxKGrJZr0YQEFdr61FXzNau5KyvXFyrfjPn3Z9YxEg1hrpq4
 9nHiBgQknrqncCa9akOgrJtcvM74QO5ypeMcZY2vw5YFmbsBjHPTk1TLEk1cnsM1UHziIBaH9O8
 scmcmclkkmZGx9YwJqpsq7HDUGXYxBXnyiDrRQUh/oa6QMOkCSdjOYyRUQHKWg23Zwtxzyww0Oo
 KOnEucRZFZvUrDPek+tDpT5WPFVH6xlgcf4RC6f2XkkGTQK9v7N7OsY/IyEBYjtGbt+utUqtSnO owzZc9hxRnRPe3A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Drop unused declarations after S3C24xx SoC family removal in the commit
61b7f8920b17 ("ARM: s3c: remove all s3c24xx support").

Fixes: 1ea35b355722 ("ARM: s3c: remove s3c24xx specific hacks")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pinctrl/samsung/pinctrl-samsung.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.h b/drivers/pinctrl/samsung/pinctrl-samsung.h
index 1cabcbe1401a..a51aee8c5f89 100644
--- a/drivers/pinctrl/samsung/pinctrl-samsung.h
+++ b/drivers/pinctrl/samsung/pinctrl-samsung.h
@@ -402,10 +402,6 @@ extern const struct samsung_pinctrl_of_match_data exynosautov920_of_data;
 extern const struct samsung_pinctrl_of_match_data fsd_of_data;
 extern const struct samsung_pinctrl_of_match_data gs101_of_data;
 extern const struct samsung_pinctrl_of_match_data s3c64xx_of_data;
-extern const struct samsung_pinctrl_of_match_data s3c2412_of_data;
-extern const struct samsung_pinctrl_of_match_data s3c2416_of_data;
-extern const struct samsung_pinctrl_of_match_data s3c2440_of_data;
-extern const struct samsung_pinctrl_of_match_data s3c2450_of_data;
 extern const struct samsung_pinctrl_of_match_data s5pv210_of_data;
 
 #endif /* __PINCTRL_SAMSUNG_H */
-- 
2.48.1


