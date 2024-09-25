Return-Path: <devicetree+bounces-105353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F8C986729
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 21:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D1DF284458
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 19:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534A6146A63;
	Wed, 25 Sep 2024 19:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grVfBDWT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435E7483
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 19:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727293769; cv=none; b=KLg6GeJ8wOX95groLvoGEIWqMMRHVdhpkkDCt/cPIc/ta+sCtkkeDznqAZWdsoESuQX8Zo5CdRE+6CFVqhTu0ieS5P6BcDBzakktifWlaqW7Yx1Ud/Ad+IUrNnbtrWd1cW42+BfdE7f/g8fwAx7PNudAqII5bqPNUdn/re3HWYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727293769; c=relaxed/simple;
	bh=wHlt1UDNUW4EyY1KSNP5pOfctY2UPWgFJlLnpzAPVic=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=X5Jg2H4xyvEz4y6EKXGVfbuU5op319gIs+QD571UE176TBfYL/5Bswhe/8hsB+Fzx/McjWgIce6tiEqYA5SV2N7oSXdaL9ESF0VhePQdfLcuCtUyhLGGoegdP7+O1oPuBg7p/2IAAgVx/iiCAnKpBuj3QzMc5Qs9k4Urb22Xlt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=grVfBDWT; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42cb3c6c353so240185e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 12:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727293764; x=1727898564; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5oZ8xiwz/Qw/3jSJKzIG7b4TVIP0JKJXyRmrBm+owVg=;
        b=grVfBDWTvg+0ZccImOzuO3SpkJtcD2xwY/UeVorcSEwUr4ZGVzPUQDnhApb1LUAKsU
         Qks7mFrAj7OlE/gy7MCPc4asSFRu8Oep3Rg7rrXtpH4ZolrJaTH0/GOTWhFXAtCZ90Ct
         dVQLbg5LDf5fKoM07RirFqrBjuh5PN+CNV3JauhHq5ObIY96EKYPIPhc6ZD6pJpelpe+
         rGGkiosq6uCvkDi/F+F926sQSaJGVQgxZwMUPM1UO5gJddIysECSjVGzRk/RRLV4C7k6
         HRRcdTuqjuTvXepkfvAtKsmZ7V9dO2Ac7YJjT0qCuhw/OUep2Iecq9RBy46k6GWL+X4j
         bA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727293764; x=1727898564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5oZ8xiwz/Qw/3jSJKzIG7b4TVIP0JKJXyRmrBm+owVg=;
        b=LNzR724gMzt4nLFDYSqIQqrref12Cm3AVSUa3zVOtvRzOT/tPvZD45AEu7pze8RZ9T
         tX+cB9HSMYK/9nZT8XcBKHvty4p+K1eo/k6vcMFlAsLYlFNcORrQMBBeS2rPIaXDz390
         9mGJGnKeizlJiIdIxSf15BYohhgh4GzK56I6ir/oPPNLMGNSvtoEaSDMhcXTF43FiKxw
         uyLJesiv38yhrMWJgjlUDtjw+jKm4xbILUHk+HAykgWP1eGSCxSOYtZqK/Cy5Z9kB7UL
         z8fM9BIxREf1xji45peIPmDqzGh2XXkqYS8tG5n+jEi9cjYJdfDcXkjvZjYU7c0i4oQ+
         MmtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYG4EBc70+PoyD+0UeIVD62C7XyE4VSzLnIf2x6x60KoU0i6OwjoETzKFEpXDOcNUQBGC4ETDIoUxD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Rqq7BJogifv2DyOwx1B+9L1gFohKUyr1k8TZAiL3FBoy5oeo
	wXPvc+DbpA4E4ix9CP7ZrJh6MzyBJCuXX8VGf2be3RO1fiNGrT715jEXxKzZSwg=
X-Google-Smtp-Source: AGHT+IFYrMPT2ZaVL6xIu/354c9a0twdXDBSySfzuoKJtCPGg1FhbJnjlrx7JBdLQuBd2QTVnVH3aA==
X-Received: by 2002:a5d:5888:0:b0:378:9560:330 with SMTP id ffacd0b85a97d-37cc24d0103mr1210030f8f.13.1727293764382;
        Wed, 25 Sep 2024 12:49:24 -0700 (PDT)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9392f50078sm252268766b.59.2024.09.25.12.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 12:49:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <bentiss@kernel.org>,
	Charles Wang <charles.goodix@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] HID: hid-goodix: drop unsupported and undocumented DT part
Date: Wed, 25 Sep 2024 21:49:20 +0200
Message-ID: <20240925194921.18933-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop support for Devicetree from, because the binding is being reverted
(on basis of duplicating existing binding) and property was not added to
the original binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/hid/hid-goodix-spi.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/hid/hid-goodix-spi.c b/drivers/hid/hid-goodix-spi.c
index de655f745d3f..0e59663814dd 100644
--- a/drivers/hid/hid-goodix-spi.c
+++ b/drivers/hid/hid-goodix-spi.c
@@ -786,14 +786,6 @@ static const struct acpi_device_id goodix_spi_acpi_match[] = {
 MODULE_DEVICE_TABLE(acpi, goodix_spi_acpi_match);
 #endif
 
-#ifdef CONFIG_OF
-static const struct of_device_id goodix_spi_of_match[] = {
-	{ .compatible = "goodix,gt7986u", },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, goodix_spi_of_match);
-#endif
-
 static const struct spi_device_id goodix_spi_ids[] = {
 	{ "gt7986u" },
 	{ },
@@ -804,7 +796,6 @@ static struct spi_driver goodix_spi_driver = {
 	.driver = {
 		.name = "goodix-spi-hid",
 		.acpi_match_table = ACPI_PTR(goodix_spi_acpi_match),
-		.of_match_table = of_match_ptr(goodix_spi_of_match),
 		.pm = pm_sleep_ptr(&goodix_spi_pm_ops),
 	},
 	.probe =	goodix_spi_probe,
-- 
2.43.0


