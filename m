Return-Path: <devicetree+bounces-179565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B0FAC0CD0
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 561E8189DD71
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 13:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76DBA28C5D7;
	Thu, 22 May 2025 13:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gRgmfTrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7336728C5B6
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747920606; cv=none; b=j+v1/pvDlFnMV8yzJ6htWKBBhwxVuyiuNC/qeVD5BmojVqPxZDGJ9QeXi+CvWSGi0jfgpSLP/keaeeBO8FyLdau7b5IaMXt8nBv8uMJWvDaa64wepLGI1+ZwnDnu49AL6/vX6MtVFeo0dtVTeetyemhuNEzLM8R5MMqL3773BKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747920606; c=relaxed/simple;
	bh=NtotUFQE861trIH/6KVUMJlh1RHFkSekY2PpGsDNTzs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=adjC+hOPorFujNwk6iWMTzYDDLsqyd4rIjt/x05eqFAF/s8jrXS35dvMnUwbuERzTFyhPbdgvtWdIafNQYOUTv0lh0EGtPrW/VSnKyQkBIW+bzNd0ipBVINnsOfiH/vrHyye3iNfUFRzQYqxmXrvZw4xqQuJ/CQh8hcBK08jLgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gRgmfTrI; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so61576675e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 06:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747920603; x=1748525403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=gRgmfTrIuGwPrK7Fs/pGDE+VezigRH6CBrZSbLo4N2e7GyFseQOz+sjcIF0KJBB8S/
         SlMTodoaiB/MsXpFC1tjZgHKEPFxnGXtdwPdc9kM3C3M+6TqRG5wQHmdnJEjWJahw6RU
         Nil5eEzR72+3vDVgQ9+7jplZRacDBpjbufeXFVHTpb9Mt1vCVROa9M0NyCfzswRqOL9X
         iDNVHG61woAiRH1jxQPo2BL1sk24HrUmn4ntnaeNZNC7Ww9hcVGdqWwQBUKbpOKxMEKa
         nhh/Ii4FRdKrjcn+uhTpd212rDpUI6Meyemm1w0q/pgFmWk7McXNqRlny8UHHHjZgpyk
         YU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920603; x=1748525403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=G9AzgsQE+ZuGyBj1Iass1Txdfzr2hb1Vwl/SZGyWfimkQLVehP0Vz9hTl97fVMwxhF
         HQRYJtHuMVN9jz27a9095WJhU2M+iE+1cQLgKqnbfMWS/DnvTV34dnwSwvkb4mita6mi
         J0APqrpFVLn4urropMfP0xrpM4Sjb5jqJohRCvvpUBoXq+ywIRQaRGRkF7tCD504N7rc
         1S2ru056k20sfMWxH4BsYW62oVZcDs1DThZoTG7kTtWF+s5r9s1fSCNt/vn1HuKOiV4e
         6GdgVe9yyIBTrQI0OpOBSGxsUGw0YBoRFrOT9KlniqvRqaw24qQ5Ptgp/gBBkEhKzlMp
         mrwg==
X-Forwarded-Encrypted: i=1; AJvYcCUmkxeRkbC/FJApOmpEfQ0jJjknaK/uB7BkKQw+OAhrz81iXb4qhtfXnnhDFbJc6lFDPTCJPWSXTlUL@vger.kernel.org
X-Gm-Message-State: AOJu0YxlvRIwWHr2na4JKSKvmi/uX4y69w5E7mQPQstkjPQLIdgYZSoA
	r3ZYBxbal/wSLQRnPyZV0Zz73OlIiwI8Sh5dodFKG03857UzMLPQUQyJaoUP9cXpgYk=
X-Gm-Gg: ASbGncs9eVjluHARP02zZW+VAfKENtxnuDnaxbPXQGv7ziGcAQZU7Q5ivX+9TjOHYaJ
	l1lFWBEVk1RYGlwC3X1gg8S4M1SK3RgXVBTzzYNiBBo9iUoMy4Imsc9Xl32Oz4DmlHU9u55ttYQ
	8CRYcJx6Y8NAz8txliRJjUNsugmVoDo5iZ4lajs0b6uadWsomTY9e2KCKteemdN2Ly8ZjwLRfob
	e2yVhRGv79nidFJOPE3n7/Aq937FMqb2R+5ycBDa8PcY0loMr/6OWuRPZZlM6zSfhxXmzP63IvL
	X8OGR5HhcwFfjD25PymAOba6aM+UsyAIRHvhnsQuEO0Xky1+CB9B1wdt7zDM0iiFAiqWqmVPK+R
	egwsS3Lg4hCrAX1qRDy1wQsuquzelfAg=
X-Google-Smtp-Source: AGHT+IH9QGz0PDISBiKrFha2AAGWzCcQvew7kYeN4H3AJCARsk7unlU57nvYDBkppGj+7OkhB2hf6Q==
X-Received: by 2002:a05:600c:4506:b0:43d:fa5f:7d30 with SMTP id 5b1f17b1804b1-442fd9a2be1mr224033195e9.16.1747920602769;
        Thu, 22 May 2025 06:30:02 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0b20sm109837585e9.14.2025.05.22.06.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 06:30:02 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 22 May 2025 15:27:05 +0200
Subject: [PATCH v6 4/6] dt-bindings: iio: adc: adi,ad7606: add gain
 calibration support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-wip-bl-ad7606-calibration-v6-4-487b90433da0@baylibre.com>
References: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
In-Reply-To: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2030;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=mK1GoQiX2hS20/yC/1czrPjfc5t1uAwSltJDkMx72Mc=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQV0uc4H8k57KT1P9PiW5Hz1v4cRXrzJY8Ity1+9Pi0
 My5chztHaUsDGJcDLJiiix1iREmobdDpZQXMM6GmcPKBDKEgYtTACZyq47hf5HbtLVnmRxPVr1j
 v79x5hZz+zvfLPiO7joasmpCd1pGiyEjw502u+Zy4TeuLZHpOXVNCz4ETlOrN5bb0GDFt75X1f4
 aCwA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add gain calibration support by a per-channel resistor value.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 29f12d650442b8ff2eb455306ce59a0e87867ddd..6926f5f090ad6bbbe7bfd9327dc5ae17dafcd1fd 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -204,6 +204,15 @@ patternProperties:
           considered a bipolar differential channel. Otherwise it is bipolar
           single-ended.
 
+      adi,rfilter-ohms:
+        description:
+          For ADCs that supports gain calibration, this property must be set to
+          the value of the external RFilter resistor. Proper gain error
+          correction is applied based on this value.
+        default: 0
+        minimum: 0
+        maximum: 64512
+
     required:
       - reg
       - bipolar
@@ -256,6 +265,25 @@ allOf:
       properties:
         adi,oversampling-ratio-gpios: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - adi,ad7605-4
+              - adi,ad7606-4
+              - adi,ad7606-6
+              - adi,ad7606-8
+              - adi,ad7607
+              - adi,ad7608
+              - adi,ad7609
+              - adi,ad7616
+    then:
+      patternProperties:
+        "^channel@[0-9a-f]+$":
+          properties:
+            adi,rfilter-ohms: false
+
   - if:
       properties:
         compatible:
@@ -398,6 +426,7 @@ examples:
                 reg = <8>;
                 diff-channels = <8 8>;
                 bipolar;
+                adi,rfilter-ohms = <2048>;
             };
 
         };

-- 
2.49.0


