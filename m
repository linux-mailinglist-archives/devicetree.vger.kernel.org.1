Return-Path: <devicetree+bounces-108606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 198099931C4
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFB71283F6B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 15:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE83F1D9694;
	Mon,  7 Oct 2024 15:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OgI6OA5u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD20B1D95B3
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 15:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728315948; cv=none; b=Pjj3K2RwhY/tk6Q4rO+0bVv3RwOXv3jfYQY29oQfZ7YEY6W0ZL327hjUK/19qDfYq+xNFmQWakPM/m7mGxCvRtUcu522DMzVRbEQ02ONtyjGIsqb7oB6gpzpmGi0bC2U121ERKEVHy8OV7FfM9jMDMLIKKNyV5w0aCAK04GxTq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728315948; c=relaxed/simple;
	bh=rg89aYnjskRblLkaWHAx7yUxNX2UOdUO/BrbnwFj+/s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HwdqsCJtn7+bYADrzrl2bLZc1LtklqkmdHvYODNlEtCybsolrHYgxTPqLhPzrHYo2isyTdC/PT/WDUCtTX5EZBtpZ8z4cYlyzBq5Yvz7ZYb1Ya5pK7OCylK/gIyUico1yJCOO2vTaNa2LTQW7fv0/H5cvvSWDkEn2Q9y+TYtxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OgI6OA5u; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42cafda818aso47690995e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 08:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728315945; x=1728920745; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmGBhvpiUt0ysoyCWioVypN2QdKwvc+Q4vGDC3NYxco=;
        b=OgI6OA5uk4JacegvrhmegUeRw/5nhINtZmRSE3QjWA5KaduJKtwAs/dLKLex0R7oOp
         qldDI6K5E9N/BQm52AHLRsY6L7IP33L+f4Wjbjl33U/BwbOCFT69iXoTx7nAZplS1/Om
         5vb5V/VC64lvifE15oP2KwP5uzp48k5HRme/qwFVBRIsW08pCd9/kr7BL38yxCEN+r1S
         zCmyIfEtlIEqUENdxpFbDDhYIqSPV5bjzJb8cAgp/cf8yK2ZyiWV5lJDVtK6uf1UI5FI
         hn4msotgr0y4PYCEklDLYPkCUzZQe52YwjX+bRYX4U2MwadfB8gQxxEPOTIDMk94gJVJ
         hjpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728315945; x=1728920745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MmGBhvpiUt0ysoyCWioVypN2QdKwvc+Q4vGDC3NYxco=;
        b=UGKaXwPsrE4A5Sgepn6dOOENER/k1svjfSn34Xsb4rY+W9ogM8FuoH8RrBa1UbASpH
         4VfTZIoof2Iv5zLjhatNqb5IngRT098xJN3BoZdT0LODmt+UO8mgvtxTEKZClkKaB+Ja
         bmRny5j4sWE7vWpmu5n4bL9JRGmqafhXTMgH0bZpDc9iy59m/75frlK5OU+SYUAGq2S1
         pJc9J+R+zv1eO5JM+NeLvppogH1ojTR1qO1oq6iePmRDWQ6QKBWObePAjcyub2eLAuJ8
         W6/g0P5p6fnU1Zni9gj5eOa5IL5b0lzWxrLRpkH5fTjIWq1yjM/vjh5tZxEbiDmr6pZM
         me5g==
X-Forwarded-Encrypted: i=1; AJvYcCXD53eb5tyOJ0iZPeD+kySwdCX8eUphYayUytC0kXoGqr/HLvxdAe5nQmw816afLDHxizSuGBJHpTZk@vger.kernel.org
X-Gm-Message-State: AOJu0YxsCvbjaguDZVtkw4facMJlV1Y7W78umYgWpe1Ero5mc5N0V4TX
	dpaKl+sS/m3sir/xHdt/cjZRmYoyWNxrA0+5xStEMJ9kcOQd1aEWqxKxVaJRzBNVnkyoD2k0Prm
	nDGM=
X-Google-Smtp-Source: AGHT+IEpbrR/lL3jrtHbnvPjM/a+YxVcE22pFcjH4V0hGT0JBxqNv/8vtmxPzywnVZWvQ1VZDd5VLA==
X-Received: by 2002:a05:600c:4f02:b0:42c:ba1f:5482 with SMTP id 5b1f17b1804b1-42f85aef888mr75203235e9.35.1728315945049;
        Mon, 07 Oct 2024 08:45:45 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f9384f648sm17645555e9.20.2024.10.07.08.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 08:45:44 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 07 Oct 2024 17:45:44 +0200
Subject: [PATCH 1/6] dt-bindings: iio: adc: ad7380: remove voltage
 reference for supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-ad7380-fix-supplies-v1-1-badcf813c9b9@baylibre.com>
References: <20241007-ad7380-fix-supplies-v1-0-badcf813c9b9@baylibre.com>
In-Reply-To: <20241007-ad7380-fix-supplies-v1-0-badcf813c9b9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.1

Voltages may not bo valid for future compatible parts, so remove them and
remove useless description

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index bd19abb867d9..72c51b3de97b 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -55,17 +55,9 @@ properties:
   spi-cpol: true
   spi-cpha: true
 
-  vcc-supply:
-    description: A 3V to 3.6V supply that powers the chip.
-
-  vlogic-supply:
-    description:
-      A 1.65V to 3.6V supply for the logic pins.
-
-  refio-supply:
-    description:
-      A 2.5V to 3.3V supply for the external reference voltage. When omitted,
-      the internal 2.5V reference is used.
+  vcc-supply: true
+  vlogic-supply: true
+  refio-supply: true
 
   aina-supply:
     description:

-- 
2.46.0


