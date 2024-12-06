Return-Path: <devicetree+bounces-127965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCD59E6D10
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259C81883EB0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEA3C205AC7;
	Fri,  6 Dec 2024 11:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Uij/YJ5F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DE4202F85
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483660; cv=none; b=DeDap2ztTBLcxSVBmcsMdWUSPZMYKcx437GI1UnEvJLpg+G/mYxBQLvg6jzAewrf2Bh1HJWSItYK0HDNq/r32TSdwHxAPLDm0n83YeFlJLXT+AvS2kw14c59wYr6aPFZPAYFLE5VpxLCMexti0JCQs6xVyAZJl1rY24od+OECrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483660; c=relaxed/simple;
	bh=AEerx4UEMe9vIhaiw+MKD2CwprNuT0vrrMjdV50wgJI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N6bSDaZhDdv87YVEtSXxZMTiIAJKgYkVgoK8VGNi28N67vPyb+YA6eQWjh6pJV5T0zSdtT7ZftnoRr4lZAX5mjkfjCyaKLwC7BPFmZ/MJNi6YUNWTnrqZQmpmnhjoPTY8Uy1lHT39fXPp+SzxS0SFqmKrcuvOhC4FgsVeebOknc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Uij/YJ5F; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a9e44654ae3so308827766b.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483657; x=1734088457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdtjY2iaQx3u/dvLLJlYTlL/H3kwsjb4tDYv6XZS7Mg=;
        b=Uij/YJ5FlUJeSIKZgyhvhtE/kAQPY8WhbGf3al6DEjnFnoIhxVhwxXKdAmrwU0/h1R
         Y0YisScqH8uL9r5CvCM/+Sz7o6oKJ2COQoHMuati3vl5r08u+cE9b29liNUfLK49mPDK
         +e4RlLssnZc1tPD0xI1RfZAb0CpbFUg2ieEhmCiM+lzeY++UzAvlP1GZysxdxxcFMEC9
         7j2xATmNQ1sepEY8SwKkJ+jSTJf3cq4/9WZHMIKeNYa5mXo9+8RFEtXcJM0rP5rPSZnh
         dK1OXNdYEfz+jELr4i9Iyswg6ubzuPk9ljz8yn7g0Zs2pY4g7+87s1Gf9heCm5lje/bJ
         cxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483657; x=1734088457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdtjY2iaQx3u/dvLLJlYTlL/H3kwsjb4tDYv6XZS7Mg=;
        b=aQiOysWtBHQo8Ow8klWCsZzCg7CnBrfZD4+YGKDdQGg2Jz3lEbAnpqFK6Av4NR6d0t
         Ky4t5jV1cu4Ln31sjjX1pxgqCkCxuXnPl6W8CiD+uZysnwq2H1OFSs1BlC58Tev5v1p0
         xb4n72hIq77xRXpJ8juYkr/kOE3IuUbQgkBXL9zpNGp2SmNc5MrVhQlnt+4zFv0x6iw2
         QH9hW/Orj1kK2zXuvdqVILUUkPriPPwYaprixCeppo/edVrMvHUP1xney7mIaro0tIw5
         f79QWv9K37VGAxykG43dHOfz/ZMptbWcFGL7l1EXEfFw0574L53kRxHzpX+/Kw5liikg
         GnOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8z3TTbXLtsGBCbGIEJaF6rTgx2V4CtzY79V149SJ9AublT+7T+Vfgwl37pd19C6KXRm6os9Gek1qV@vger.kernel.org
X-Gm-Message-State: AOJu0YwGxQofDBT+Z6LifkYfgKsgcgmtWmLn9CS0sXIINw3XdFK//ZZP
	1AxVT7xtBRs72UWcD5l1wGiE1Jq8wmb9xlVuQd2tG/RS8H8YZalj2K/JUoQxsCU=
X-Gm-Gg: ASbGncsWOfv1PAXpvU9g7abl3XPPrigW9s9mv/GzOvvhnPXsqx+3tpgIlS3Ny66DblD
	qfESGB91iBKRjTS5PbBBpzZVrf+c2jn10glnt7ePX9IV4usFZnrJuro4IrKzPBwIbRjG2kkodWj
	INqQebGYJZu7jscC1w9qgnZCHCVAgmt3VJou5FgjeJKSlU3w18OtH1pvLmh+CmwTnszVvffI4Gh
	5sT9v+9nq+E8tqxulDB6jpijcuJ9Uqi+/EhXzCuOoofhJKkHRVKycSDJ7dw3cqczfiGDH0AFd2W
	zaYI
X-Google-Smtp-Source: AGHT+IFGxVio+DmpGkWuPu8PJaQl2GCwf7E3UtKIMeAaIPe+lrYbE/WDjuxxOhcCyvi/hyZufziQrw==
X-Received: by 2002:a17:907:770d:b0:aa6:23ba:d8c4 with SMTP id a640c23a62f3a-aa639fb1a24mr215496566b.4.1733483657113;
        Fri, 06 Dec 2024 03:14:17 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:16 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 13/15] iio: adc: rzg2l_adc: Add support for Renesas RZ/G3S
Date: Fri,  6 Dec 2024 13:13:35 +0200
Message-Id: <20241206111337.726244-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add ADC support for the Renesas RZ/G3S SoC. The key features of this IP
include:
- 9 channels, with one dedicated to reading the temperature reported by the
  Thermal Sensor Unit (TSU)
- A different default ADCMP value, which is written to the ADM3 register.
- Different default sampling rates
- ADM3.ADSMP field is 8 bits wide
- ADINT.INTEN field is 11 bits wide

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 drivers/iio/adc/rzg2l_adc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 2a911269a358..81904e2c4075 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -502,7 +502,16 @@ static const struct rzg2l_adc_hw_params rzg2l_hw_params = {
 	.adivc = true
 };
 
+static const struct rzg2l_adc_hw_params rzg3s_hw_params = {
+	.num_channels = 9,
+	.default_adcmp = 0x1d,
+	.default_adsmp = { 0x7f, 0xff },
+	.adsmp_mask = GENMASK(7, 0),
+	.adint_inten_mask = GENMASK(11, 0),
+};
+
 static const struct of_device_id rzg2l_adc_match[] = {
+	{ .compatible = "renesas,r9a08g045-adc", .data = &rzg3s_hw_params },
 	{ .compatible = "renesas,rzg2l-adc", .data = &rzg2l_hw_params },
 	{ /* sentinel */ }
 };
-- 
2.39.2


