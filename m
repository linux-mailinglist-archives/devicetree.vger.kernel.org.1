Return-Path: <devicetree+bounces-77054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5E90D4CC
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A21C01F2234F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FBA716E88E;
	Tue, 18 Jun 2024 14:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d/AcZIk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A616DEB1
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719359; cv=none; b=kW25nso/jueQLnefLRSlWeQpJymEk4ZulCDE+bPESs2xG3useh6cKfl9T34oXLFQIWEYoAv6E325TWdtJ2Gd+KPQHKSLGWLQojHsLd4x52WZV5MttYz6MzcTJLxQoLXM6XpHtumpxAxCf/WtVqNWotD5AKTL9Lq30GjA9k+Bf7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719359; c=relaxed/simple;
	bh=fMDqf1KM7W/RA77rezMz3nE602KNHtmJiEMO09XyypI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mutdELBoTBpmmvvjX7TYuhuRVJye9muGUs8q3Birl1dLHkPb6XV18rs7a8ykG5L7ZRgQheI7hiBHDDQId0wgwMHvd6+3Ky9Ao8FIsHmd7u/h+5ruUEW7FDJVvjG/EeVCtA3zLIAxLEWcrVuTy4pWDo5jzkiMigZxzMBDTwtQJRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d/AcZIk2; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4217990f8baso48996035e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718719355; x=1719324155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6PSO/1gMPYozHX3dfKEvclJiI5tF+MksrCbjn3VycYQ=;
        b=d/AcZIk2YDa3WRl/UOV0NtQC1qvlNk/wSJ34sT7HxPqQ6sXVSTyEHoYUf5jEaH8YDZ
         +Fe5FZs6ukS+12f9wYiXAejs2Jj5ESgMLYnGNvo8VjgeAMSNub4AQNh22cWafWxWlFq7
         u2jHnoQi4OwtvBVVRcPVEgB5IQWNEjL0kHb5oojRfyFf06hKgBsN5jOZ7q0lb+U268iv
         dqLPP7tFBGI8kZSvDR/Z5qLNsg5yw/uo5dkraEHIrXOtIAlj95ry4zgTiyLCA7yHkYOO
         Bq0Fu/o1Ao9ux4Ugwaaf3obZJt0Lnys70HoVqgNLkNjusTe1UZnu/rD2qb6A38beUKoH
         5STg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718719355; x=1719324155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6PSO/1gMPYozHX3dfKEvclJiI5tF+MksrCbjn3VycYQ=;
        b=qoqibrqKQQykIi4r97gUVHy+PXyJEA53u7nPGQN6A7Dm8BszyP5fy9fdfTu+JrfLZS
         b2RagBS2yFcBa8CFsmCBf2AKscqmrsY+jtNMJamtQoksAdPo7AA/CYTDTbybX8bUcL58
         fG+eMxr44yOqz7d5hhgriExbfBDN7lBQoci7ErjZDFvxyZFl/yykELqu5OP6WRJfHTUO
         GavVGKUb4XN7zitkcWG68qQymPYKsSRJhcSXLLJ7BiuEH8s2VVm40xvzlZnPPFHxqXdu
         A/9hA8Y7FGFwiosXTb4NVTkh61CMTe38JPWFriahQSYLbLl4Zs9iGPWpOC1hzfMQbih7
         qLxA==
X-Forwarded-Encrypted: i=1; AJvYcCVwYC2MnBP+OkK2lD7coqEFsLQOx2OkVP+lLzeaNuWfiEnAP7nddlpNv7v5Ynq1uF/sAObz75w6mvf59eqgOvGjqYuHp+ZcrLIr3g==
X-Gm-Message-State: AOJu0YyntinlA8uk+oXnXO6dzLDZFGg/k2gdH/gRLT7vfDVtueDSsUTw
	QWFfVbCS1sDLIgCgsFfPbnZWAEzZ8PMfmOCH8peum85JUs6jnK3qi/Ocl2Y0uRMFeVNc1943V52
	b9Jo=
X-Google-Smtp-Source: AGHT+IFhaLPzqepPaG30Gpc5wKJD8gFH+IxtsauFUs+mCd/Kver+eAIQm2Ywl7oZ1ItrgT/c7vP4Wg==
X-Received: by 2002:a5d:6192:0:b0:362:6e61:a342 with SMTP id ffacd0b85a97d-3626e61a39bmr1041071f8f.36.1718719355495;
        Tue, 18 Jun 2024 07:02:35 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750f22absm14412546f8f.79.2024.06.18.07.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 07:02:35 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 18 Jun 2024 14:02:34 +0000
Subject: [PATCH 2/9] dt-bindings: iio: adc: adi,ad7606: comment and sort
 the compatible names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240618-cleanup-ad7606-v1-2-f1854d5c779d@baylibre.com>
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

AD7606-8 is referred to as AD7606 by Analog Devices. This comment aims
to avoid confusion. Also the compatible names were not sorted by
alphabetical order.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index d55c58400df5..00fdaed11cbd 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -20,9 +20,9 @@ properties:
   compatible:
     enum:
       - adi,ad7605-4
-      - adi,ad7606-8
-      - adi,ad7606-6
       - adi,ad7606-4
+      - adi,ad7606-6
+      - adi,ad7606-8  # Referred to as AD7606 (without -8) in the datasheet
       - adi,ad7606b
       - adi,ad7616
 

-- 
2.34.1


