Return-Path: <devicetree+bounces-77056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDB590D6AE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C242BB25B56
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE451168491;
	Tue, 18 Jun 2024 14:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vypcjnui"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D7416DC39
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719359; cv=none; b=Y3fJAFeEMqCGU2bXjwr1tGZSDU2FT3HYiB6mxHz1cWiGLeF4k52Y7kQ30uv5A8WllQtR255B4f3K4M9Yj73PlsSllT57dYoyMb2f8mIAgXWirx2AFJxxIyB5dJsnaqrjFpzXtQ2Pmh+U4iZWx1qQ6dmnZKw3UVMoxUcTebfn1Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719359; c=relaxed/simple;
	bh=PLtj7bSe++tHU1muE0ellbCUBsOVwaNLui/U8TXTses=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WrLv0HIR1+xb731nZV0MmTH0hRwOxZ2osDkuOwN5PSmrXyRu2KfE3qM5ymANFmy1O3m6T8DwN1GY7Znd6KkDK3vGJBabmGG4571uiv40prHw1g8z/kG2ZJB6+CFHHV/QgrjuZxhwGPz71/M3EF/D95/DDc8CtrqLw0W9439A6D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vypcjnui; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-35f27eed98aso4452827f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718719355; x=1719324155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJg4U+PW9Snx8tG5VLs4l5kg/oNVaqq+3EVHHkcbQfc=;
        b=vypcjnuiJke07aPcLopSP2JneN2mnNHmsXw7xgLzXa8jq9pBV2NnxEs9W+AMySMcgx
         FPkt95Cny9Mdqq2ai6lF+rlm1p1WW9eVGUSCXhQT3AM3GENw2atiJQXAW2GK+o4WOtZZ
         Q7oJWFTF6MilkHHPKrpD90AS2Dvl/4qG9RHqvCkun8W36XnGuCK2WEz0fL7QFdPUXWp0
         rkKohkFRmS5HFQbKZsS7dFJI7iM5uv5J9+Nw5F/qasNfFHJS/vDk5zMpZE6cO0FT1m58
         Z27OzAdR0/8QGEE+zIwpmy8iGhrz982wj7bLXgayPypcH9dCwNfb+z42JC1jhOQwIYFw
         IM2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718719355; x=1719324155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uJg4U+PW9Snx8tG5VLs4l5kg/oNVaqq+3EVHHkcbQfc=;
        b=wiLMcsngpsbHcIS8iFkTS3yTb8WeCqnWZ+8mHI0THVrPaqmmHiFNovfoWDe8smU+zq
         c9cK5JK91M9lJhL+Al28g+lkz7wY1NQZSIjtYDTnEp5N+g9Ay/GMxZm6qTwRt3aTptqK
         KU4miT8ek+0gPdsdhdCTSyh3UO1AIxlXEQrAO08OqqjuRdy5q4xRkwK9heD/J0r5QG/2
         nTgRgV2ysFjXwC/licVtOAOYG2UfUTK0rE84bHEFFbIM9mNRN3Q2UsL3XMuWiNNPaRMZ
         3d9M5+6One7k7uHmIkcNRUdK8Zq1u6i7S0xNWsSG9fTgeraYtZ9V3J4pBCyHWbCtaZB6
         TspQ==
X-Forwarded-Encrypted: i=1; AJvYcCUquzSTzAeSMqXgn54cdPl+faptRBGRQG4vbYOGw49gLq+FxaXHDUsccDB0Js18/oEzGqvicFszzfkd3xxfLC1EtwkaNie9ffQkPQ==
X-Gm-Message-State: AOJu0YyfFBP3t97ZYtwDwj+eHx3zWrv+ITsIaM2/z4EUdFbeYxNpQuAz
	AW+S9RzYwaoft84U7c80Mr6q276xeQHwNPaaejehjNFqqHkiCxWIYPt79Lof9cBUFbFaxqZaNSz
	uOvw=
X-Google-Smtp-Source: AGHT+IEpUUcK2t2NT0uyE9LsIkX7F9ePlZPM6Wgs49S7h0PwgLnOw5XdUvtGqV7G0aa932wJUiWaZg==
X-Received: by 2002:a5d:5607:0:b0:362:ea80:db0d with SMTP id ffacd0b85a97d-362ea80dc64mr155775f8f.11.1718719354954;
        Tue, 18 Jun 2024 07:02:34 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750f22absm14412546f8f.79.2024.06.18.07.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 07:02:34 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 18 Jun 2024 14:02:33 +0000
Subject: [PATCH 1/9] dt-bindings: iio: adc: adi,ad7606: add missing
 datasheet link
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240618-cleanup-ad7606-v1-1-f1854d5c779d@baylibre.com>
References: <20240618-cleanup-ad7606-v1-0-f1854d5c779d@baylibre.com>
In-Reply-To: <20240618-cleanup-ad7606-v1-0-f1854d5c779d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beniamin Bia <beniamin.bia@analog.com>, 
 Stefan Popa <stefan.popa@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com
X-Mailer: b4 0.14.0

Add AD7606-5 datasheet link.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 7fa46df1f4fb..d55c58400df5 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -11,6 +11,7 @@ maintainers:
 
 description: |
   Analog Devices AD7606 Simultaneous Sampling ADC
+  https://www.analog.com/media/en/technical-documentation/data-sheets/AD7605-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf

-- 
2.34.1


