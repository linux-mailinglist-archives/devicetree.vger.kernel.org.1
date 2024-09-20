Return-Path: <devicetree+bounces-104197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 485AA97D919
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 19:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BC2C28277F
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 17:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4829183CD8;
	Fri, 20 Sep 2024 17:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Nr0UHTpA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486B338396
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 17:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853611; cv=none; b=pRl8/960JXFNaohwtdDKzqTgOp6m6NzBnBkCXArlCmVX2DGw9sjiZxdRRqtnK+deq0Q/Gj2X4ZYIpo0kXhqvC+86wvbTtbY6U8xAIbohDtN4CD/qhPQ8ozez+RxlvMROe5eEaqKKc6GEhavIaxN6gAZNlpHvS8FPnNh2AetZ6D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853611; c=relaxed/simple;
	bh=uENmI3rs41AFbgjmBszj8S7B3YSrnm8W4+Uer1rxq3M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LEXo4UbIUjtFRhuyarQLg6+PMIKrJ4bRKEW5kldeoi6yhChjlx7mFQJJ+FAPMQLGTspunfphwdyX/HqHLZp9ts41/9wg/BO7iwrI3wqCGJVxNqrXAf6elzZL4Oc6QQHB+CCeug69cKPgz0v/V0cNJfR4PNK2Qyxk+Shy59Ac13Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Nr0UHTpA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42ca4e0299eso18661775e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 10:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726853607; x=1727458407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KaeYhh6u+zeh5CpgGR2cTRLoU46SO0lTgqgPd61KwS4=;
        b=Nr0UHTpAtJ5bSANSx37zaMcKBSddfjpZZBIp7EAG1kKR+wGu5Bne+mLFAS7+sQv8Cr
         KfC/NE9Ad4FESs/RGzOWw35rXWxNeeFC6+oxGhQUz/SVXzet/08TpHSR6f9HLtqAED57
         t155HqNRUIb/GZKgj44QGv/FoSSJ7Tf/RaCjA6lQmmcceU9h/ksOpYGhlkAuK2quIDis
         su3LSeNjfA9epaFiGu3JQMhwAuP6HyqEx7NNFqaOBfNBI7ebhotdKT5v/fgYhoKRsJoq
         /2iU9dyFRNJUjVSWWsxsTmzjqbzFDdcf8llOboauJqcwN2PC5L0+yR4qxrycgw4vpj+4
         DwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726853607; x=1727458407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KaeYhh6u+zeh5CpgGR2cTRLoU46SO0lTgqgPd61KwS4=;
        b=hwIQqs/rxOg5hO4sfXOBrlCFDI14ovAjYjyK6EWEWBUaM6InJD0pWNVD5FeXy6ncJ6
         miVhKPofPi7Zj/sMXaNrJDH9Cg0nwa8B+gIX3SRyCXOxGMDvb/Suw41k25FQCXECU+YB
         y2yIqjHwM6awceUnq2ns5QdpkpdwDBaZ6vm4d3lh5dcsIAxRCseq87FQ7qZIP9X4xDQR
         z16z5QmQf2fbOIw3d1icCSLG+UddA+K4frUp+HPCrbGmArvQqAgYwdcziwXecV5qMKFx
         DDYWUEXCNU8OoLTrCorsco7LFwG3/aBNXt75/Jl446aAT/CwHYxmZfeJb0GuZ37f2Du2
         0+fQ==
X-Forwarded-Encrypted: i=1; AJvYcCVun/qpMOJj02QMmSH17WSBoLjQQIlfrFqDWKC+c0UCOXhpGSk+n5MjRooE2dRva0jIBdUbWtGnhYMi@vger.kernel.org
X-Gm-Message-State: AOJu0YxZsIEPfoqMUJiMMtPJ8376a6kKaB8bHsGv/nZHNU0ZTWjj4LhM
	Op1eDH9NtISYdl4LBcrsdcYk88qT7YGfSWlJDu+2uaurYv6hkOIej0TqrdQtkKU=
X-Google-Smtp-Source: AGHT+IFW509txbfbC5Xcl53nwM8AriAQT7P/f87/0vNg7fO3VGBfVMfZNirIXfK6CQ/U3Zs86VBiqw==
X-Received: by 2002:a05:600c:4f07:b0:42c:a6da:a149 with SMTP id 5b1f17b1804b1-42e7c194a73mr25050905e9.25.1726853606388;
        Fri, 20 Sep 2024 10:33:26 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e780e029sm18111177f8f.116.2024.09.20.10.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 10:33:25 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 20 Sep 2024 17:33:21 +0000
Subject: [PATCH v2 01/10] dt-bindings: iio: adc: ad7606: Set the correct
 polarity
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-ad7606_add_iio_backend_support-v2-1-0e78782ae7d0@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1726853604; l=1589;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=uENmI3rs41AFbgjmBszj8S7B3YSrnm8W4+Uer1rxq3M=;
 b=ug+14LFXj6CWSaVkJuf+L5f8lS/xq25/LJaZBpFEqNbdM4jOGg5GZaKDYL/bnhPFGtSTJGmaH
 bMa9L6gp56sBruZTu8Ridfm0IlZo/ORFm/MwwuUtmb4ueBxBuiCwzYN
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

According to the datasheet, "Data is clocked in from SDI on the falling
edge of SCLK, while data is clocked out on DOUTA on the rising edge of
SCLK".
Also, even if not stated textually in the datasheet, it is made clear on
the diagrams that sclk idles at high.

So the documentation is erroneously stating that spi-cpha is required, and
the example is erroneously setting both spi-cpol and spi-cpha.

Fixes: 416f882c3b40 ("dt-bindings: iio: adc: Migrate AD7606 documentation to yaml")
Fixes: 6e33a125df66 ("dt-bindings: iio: adc: Add docs for AD7606 ADC")

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..75334a033539 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -29,8 +29,6 @@ properties:
   reg:
     maxItems: 1
 
-  spi-cpha: true
-
   spi-cpol: true
 
   avcc-supply: true
@@ -117,7 +115,7 @@ properties:
 required:
   - compatible
   - reg
-  - spi-cpha
+  - spi-cpol
   - avcc-supply
   - vdrive-supply
   - interrupts
@@ -185,7 +183,6 @@ examples:
             reg = <0>;
             spi-max-frequency = <1000000>;
             spi-cpol;
-            spi-cpha;
 
             avcc-supply = <&adc_vref>;
             vdrive-supply = <&vdd_supply>;

-- 
2.34.1


