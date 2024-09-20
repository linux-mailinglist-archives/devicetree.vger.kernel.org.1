Return-Path: <devicetree+bounces-104202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B9E97D932
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 19:34:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BD4C1F2196A
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 17:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D15181B82;
	Fri, 20 Sep 2024 17:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V/Y9T08c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B183185B4F
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 17:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853618; cv=none; b=FLOSqYlhJcDq9WW3XA5WikzJw0JdVsY9vDfBWRYrZV8hX3IUwme9AD8jdDfzFsd0VMD2w3fhcJH0BllzKbyTTYLowWap9k4X8bbMv4CGOyCUoDIKu/ysfPfd9TmEhqIM8qVrhoPG9GcGWaFKjrdbk3374kPKMyii/1pcrxSwrkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853618; c=relaxed/simple;
	bh=/nFr02cbGV/HLOGxoDoh9Czsnmb68Qnp31k+zurckyM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ScbnI2HuJIqRl0GuIcP4MSR8wsOFSpmn01UPbqMgED2IbPytsrkpxB+kAUBvDr1odtOzr1Ve4HU4OZoFixuCUBIrZrHsM9+QsYBKP4DCkHEjCVn0FZoyw6SvAcqZEowjAX1aoo91xQ6UM62HwBGvx7zoNFoIke8rTTANiCIuxLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=V/Y9T08c; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42cba8340beso20882485e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 10:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726853613; x=1727458413; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iSBDfGgGhj+08Owjp2Odr5TMI3MgMjV/fjeXUka0zuE=;
        b=V/Y9T08cPMhc00DoLn/dKVageTNNl5YUn6nn/5E3QnAwt1rhp6KF9S4Y+Gz2wt5C4J
         TJG1/4mvb6mYrlVSW+PImgsglqoW8n8D3Wz9U96gm3wVAfuI2G9gCGi8Pym7ZYwp4GCf
         qKbZ8x4zMANbpYaxqFp2epn4fX1a9KZer5qDSvKhzf4TDAmvQNI+2Ho23MtGtKAjECUN
         bKYy/JL69W0EDrYttLMoyV8/oXubs+j8AQg9wh20hfCZmDwldlFFmxjvLOTUzeV8e2AT
         3TkGxXxT08JzWemxFr6wNUSpJCtLn48iFCjVHHxbBwh5LOlUzZNpj0dvhfgdK0Sl5CU6
         Uq3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726853613; x=1727458413;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSBDfGgGhj+08Owjp2Odr5TMI3MgMjV/fjeXUka0zuE=;
        b=wJmvY2hFILQf0d5nfCIaIxjRFY2XlugxVaqG8Tid1GsCpvV902FT5unKUR6V6ggQeH
         FmXSDkMcExAk8rUjSyETWhz3mjVO46FR2qwEvdVN1gFXZvi7pjrQe9G0+d/1DTJlR3OT
         PVQi0yIcAIjkO0bIxJ/bzuL0GZdu7rzolXPviqLF8UynGIGSuUJWAP+kSRK4xno3iGCJ
         ZVbXJAztIH8Gc6hNCF91N+d2qM/4udkKUbRv/OLWxzztyOPS52Enb4VccCwa65RvUkff
         JMMJOn96fGscn7ULfRexceRA3cnnZ0WKNTFNAsUq3KuWstlf+3coLM+bbIwS5pb208ys
         zs6g==
X-Forwarded-Encrypted: i=1; AJvYcCX3sbwZUxc7uOvE2GWshUHb5e4reuKSFuYplz1EqCbElPjC2FW7Q97nuFTOEJKfTThZEmGbwIghIwx5@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw8Xzq5ev8UkAhGuElR7FmhY5RatQ4A3KdA3zFXo33H0W61+wz
	eL415R3fe0yjuxY9IGO3rLaTzGNbLcNcyGebHJvl8CZWb31EzogzXNs7G8tAIdU=
X-Google-Smtp-Source: AGHT+IEWJF7FaPV8re36im0SAhtG4KrdMIbPZb2C+YE25bNWaplfwW1nUF4CAWxtbaKW1RxFFftQEQ==
X-Received: by 2002:a5d:6b47:0:b0:374:c157:a84a with SMTP id ffacd0b85a97d-37a414f4899mr2358317f8f.16.1726853613391;
        Fri, 20 Sep 2024 10:33:33 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e780e029sm18111177f8f.116.2024.09.20.10.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 10:33:32 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 20 Sep 2024 17:33:28 +0000
Subject: [PATCH v2 08/10] iio: adc: ad7606: Fix typo in the driver name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-ad7606_add_iio_backend_support-v2-8-0e78782ae7d0@baylibre.com>
References: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
In-Reply-To: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Michal Marek <mmarek@suse.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 aardelean@baylibre.com, dlechner@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1726853604; l=850;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=/nFr02cbGV/HLOGxoDoh9Czsnmb68Qnp31k+zurckyM=;
 b=pNTsUJlZfFEP/HO0ji9WkgAo+v4qOc4w20bUCtoLmxrAZu6+aGumyRnqR5haGad0FgtIzazpL
 3Kis6U4Z6eJBUUizWeNa3B/95tWRh354UGbF1pqBN+QQ7zvLmdoRwDV
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The parallel driver's name is ad7606_par and not ad7606_parallel.

Fixes: 0046a46a8f93 ("staging/ad7606: Actually build the interface modules")

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index 97ece1a4b7e3..4ab1a3092d88 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -229,7 +229,7 @@ config AD7606_IFACE_PARALLEL
 	  ad7605-4, ad7606, ad7606-6, ad7606-4 analog to digital converters (ADC).
 
 	  To compile this driver as a module, choose M here: the
-	  module will be called ad7606_parallel.
+	  module will be called ad7606_par.
 
 config AD7606_IFACE_SPI
 	tristate "Analog Devices AD7606 ADC driver with spi interface support"

-- 
2.34.1


