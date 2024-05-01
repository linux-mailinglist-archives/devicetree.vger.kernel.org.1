Return-Path: <devicetree+bounces-64278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D35C28B8C4F
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 887B62836ED
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0926A130A49;
	Wed,  1 May 2024 14:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Z5a/zJlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6479B12FF9B
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575360; cv=none; b=lRdQkxOsYXmhlERbr9/WZZ+9d9dicbaFQK2GQSs1RlV6aaFsdhLk0UiwL0dCgCYG2yNJRizvyDiGWpJFiKBDA0nviDT6wxAeXQuk2scotKBNFWRLN0cQdsTz74Ip7Vj/CRwTDN7OEiBWK7QtFnJmbtWo5s0x3OKVZw8C9K/7Lr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575360; c=relaxed/simple;
	bh=VQ4RPFjraeg9QG+WtxUK0LxObNrAlrRgeIFZywlwUq0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bQ/nUSuSsxs8NT6NaEjxl1oQcc2xL1sAZ+xpTg9oZddtI+Rv+Dfin/ASh++uSStnOO0IoSXI4xZVa1kTM1rXeAdAA7jQZYO1HyKARKaFPNJiDG/GBhhN/xcr/JPhYilyXzzunhLiWsK5Ye0N168IPyMlF3ZGUAGyvIV2Ay97DOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Z5a/zJlt; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41adf3580dbso4925295e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714575357; x=1715180157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7kVmMiAww/1MNzSxxAk2mzn+IJ9yIpCfeirFaQBWWao=;
        b=Z5a/zJltr1B/SgV2vz/KZYVsn526i3YYhIjB6xlRCKu2SdmzFSGSwuuCRv0Hb1aPO4
         kX7xjjCnzrtmezVJ7Dg8vkSV0Aqo9lbTpIGMVitVJq0DnKJjV3YB6s3oKp7ZSJPlVyvJ
         MxSJsuXYdWjSFmhof7eD///F6dR0CKPwH1n/74O1oQey0w9zAOuLwF8xHdNKuWxqF9eA
         2eqMRRCqGYBuwwwO7r9J4bjPZEs5rI4mDKgtNMQA9Wu0nZ/Jz+bIUHOdCourH6A/udKo
         oLj6NQhC9kZySaDsz7UFeXpzX1+SN4z+pXt+DqJskGT4x62dCMWrnwPHIc3Ni05DyU3k
         Htzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575357; x=1715180157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kVmMiAww/1MNzSxxAk2mzn+IJ9yIpCfeirFaQBWWao=;
        b=t9369xGjsn+/4/94lh1kxser3AWeL412JgCniR7Y9yCghC5uE31IrOCRGouj7qSb4G
         rZx1CIVhsMk8QhsYUJetulkr5xgz+bHediXH7kGvIOMgWArOMpO3a54V1N/LdQmOUxBj
         d+FRQqT1lYJb7xG9zUQyNkMVRbYLqOf0m+hQX75tHOdNwbh3e89fhjtM/LG1FIB4EJzl
         c/mJV9nlljul0MAFMR9l2/EssndiQjaQFk52yAPS1nho/x1EpK/vzBkYQq46sRA3dTZC
         ilKIquBGhk6UKLl/+smkdB4EvCOUTB4ofOD9nze8PyrMqSCT7phTpSkJ7qR8Wn8kbIhO
         +XHw==
X-Forwarded-Encrypted: i=1; AJvYcCWToZn1402e6MNPWcNzjD56mjGPOoEZjtIFEm7M5/GwLUkXeG2hEM72rKwUrlJw0oohsQeF6OGsXBrB/MIY0HGlsch+kjTQg9+ZdA==
X-Gm-Message-State: AOJu0YzJoh7m8PmN4c67kbbkk9FcVWzVUm4NEOuom3PQSWvnYS0NtArQ
	K8tPWNE2dAljCvsuxjmoc/AR2/bM3L5N50x8y2iAkxrmXCBROI6n3Vnw1ub/Eb0=
X-Google-Smtp-Source: AGHT+IEANloY5ykx9Y8v3SvYudon/zDa72AUor3FRJRdAs2hAmb12iii9rrqR7zhQBrbVBg7l3dLXg==
X-Received: by 2002:a05:600c:3b10:b0:419:c9e1:70b8 with SMTP id m16-20020a05600c3b1000b00419c9e170b8mr2540608wms.13.1714575356686;
        Wed, 01 May 2024 07:55:56 -0700 (PDT)
Received: from [192.168.1.61] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b00418a386c17bsm2422999wms.12.2024.05.01.07.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:55:55 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 01 May 2024 16:55:39 +0200
Subject: [PATCH RFC v6 06/10] dt-bindings: iio: adc: ad7380: add support
 for ad738x-4 4 channels variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-adding-new-ad738x-driver-v6-6-3c0741154728@baylibre.com>
References: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
In-Reply-To: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0

Add compatible support for ad7380/1/3/4-4 parts which are 4 channels
variants from ad7380/1/3/4

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index de3d28a021ae..899b777017ce 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -15,6 +15,10 @@ description: |
   * https://www.analog.com/en/products/ad7381.html
   * https://www.analog.com/en/products/ad7383.html
   * https://www.analog.com/en/products/ad7384.html
+  * https://www.analog.com/en/products/ad7380-4.html
+  * https://www.analog.com/en/products/ad7381-4.html
+  * https://www.analog.com/en/products/ad7383-4.html
+  * https://www.analog.com/en/products/ad7384-4.html
 
 $ref: /schemas/spi/spi-peripheral-props.yaml#
 
@@ -25,6 +29,10 @@ properties:
       - adi,ad7381
       - adi,ad7383
       - adi,ad7384
+      - adi,ad7380-4
+      - adi,ad7381-4
+      - adi,ad7383-4
+      - adi,ad7384-4
 
   reg:
     maxItems: 1
@@ -56,6 +64,16 @@ properties:
       The common mode voltage supply for the AINB- pin on pseudo-differential
       chips.
 
+  ainc-supply:
+    description:
+      The common mode voltage supply for the AINC- pin on pseudo-differential
+      chips.
+
+  aind-supply:
+    description:
+      The common mode voltage supply for the AIND- pin on pseudo-differential
+      chips.
+
   interrupts:
     description:
       When the device is using 1-wire mode, this property is used to optionally
@@ -79,6 +97,8 @@ allOf:
           enum:
             - adi,ad7383
             - adi,ad7384
+            - adi,ad7383-4
+            - adi,ad7384-4
     then:
       required:
         - aina-supply
@@ -87,6 +107,20 @@ allOf:
       properties:
         aina-supply: false
         ainb-supply: false
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7383-4
+            - adi,ad7384-4
+    then:
+      required:
+        - ainc-supply
+        - aind-supply
+    else:
+      properties:
+        ainc-supply: false
+        aind-supply: false
 
 examples:
   - |

-- 
2.44.0


