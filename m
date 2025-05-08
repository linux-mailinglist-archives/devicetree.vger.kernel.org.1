Return-Path: <devicetree+bounces-174983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B08E9AAF77D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 711AD9E009F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3BF2222B8;
	Thu,  8 May 2025 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zlIIc3n2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329A22173D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746698853; cv=none; b=Sl4ErqgGFUXmfiz1VVgex37ViskfPC69z/uWBZLOVAczh2gdmr/nazyjRaaipLDtF1fUv2G3PHp9L9xL4QOLv8VhzEs0OTU7qxD+PfjfQ7EDP+wd1nFngIkCGAa/aKd0o/2UsjNUF9sXtGLyGoDzrMd5PqQYIqsiyGsnO8jjjEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746698853; c=relaxed/simple;
	bh=NtotUFQE861trIH/6KVUMJlh1RHFkSekY2PpGsDNTzs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SqxDSN6HwXsQR5PgkL+9+zvMygnXWB9TDaVrEIuHQS8wZ1BSzi8pRcpjwjBUTQTdLCRhKyxfk5mFwuAc7Q2d33HM5xdJ45lf946w1mXLGAcJSRaRAXth5i5/enbkzV7Md4u86iHPdxZ9eke612wL0Y3es+Pxp8gGtgzKW/26dhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zlIIc3n2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-440685d6afcso9119195e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 03:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746698849; x=1747303649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=zlIIc3n23bJg3eu8yMN5fJTMRh0ow+Js/vIlhe2XbP2rQRUc8vbObC2DCEVGr7DlNW
         Wd5Y8CN6/8WdKBpPAOv4W1w6XhrTdNUn0AbWO5Y9kQvnUZb862UQmx/X5CK+IYXzXcoZ
         zhgQ8gNXigpOObY25scRLf+6faQZsHsslxwtWR6k3Rk/tt7QLezhr2He6Gz+qbZv8Z95
         Imfr9MG4a3fNV8Khq+Sda7rZ1fnthYE1hBcvy/hFRgNNAn+dM3Qwl/WUIXjUsDW0hKXW
         vJAYICadmH8h4ORtO3IVgxpDjjR7BI6J/W/J2BMzxiCpsjtfo+ONfIuZlWUUFeafJYSV
         fiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746698849; x=1747303649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=YJm6OuhbsGBMjnrXvNQEaW/7z3B6ZTqvxsvzp/Rc4CVicVky19yLRULqzQXjot0bzQ
         f6VXKdI4ny2JEtj9B8yVh9bhr05YjR+9tMnNul0H0DprvMfHQ26i/OHRp8mj34w7anVB
         Yio3r9DRozgRlnzR7NJjZAWU4XAu/J9JKUDDWfQTKFYDscjDJlzWSx8R/PtHfjXRFaNj
         AGnQgpcWNcTliDHcpX2W0eG0oOQ1Bq7FFSelyDra4EUfFBvq89aTEctDuJbqlaWEXM6I
         zv8j/jYv9u0T2hsXaXYbiuHHX2HSjPJZXSgV7l3n2GqJLOavlBmCq0Ox0Le3KcumQDb0
         f+eg==
X-Forwarded-Encrypted: i=1; AJvYcCWihWHD50iOOYfq/4UpeCwtNKwCF39BNsBUYpmVM17t+SghfKt4/zi2Moge8/LmuX6IRDa08nIB1fVy@vger.kernel.org
X-Gm-Message-State: AOJu0YxV12Q43b9odB0c4azm2WwYnE/fVQm4U4Cdt5hkICrfVfxVVM/G
	hc8u/O+1JoOTUrTSrEgp4yYuKGO09fDr1/nA6qeIONBs5YCkSzPj7ZGkOxR8e9Q=
X-Gm-Gg: ASbGncsjNVZpB18hxmZCNSDS76yW9IwxJJGqvA20KFUifG3tuc/tSMpZniu4dBp4AQS
	t9m6MUkhF7wzxEASAXWQqkKp0OF/aUWhhkdIWKps/AUypk8XE9mSTiguKyXRa5KDGtjMeNlnzwO
	iDaARY/9Qt6WJ2fBbgQ3giAXh1GPUsn7bk0AZMxa3hyLc5CKvKLGqiFCXEKf25wE0caC6JcEoH7
	Eli9hz9/GN8nZN8K5jXm+qLjqAu46vvld5MM0YniWbne7SB5UOqzARLZ3do/61ZWI0TI7eenIp/
	kuGxGvT78M8dva1zL+11zHuMcM8rwJUuFmLlYy73rZPYQDemcacZ/AxjH/oGzsCjb28zVjPm+FR
	84wveHCMHva6u
X-Google-Smtp-Source: AGHT+IGpDbCqxpxY735RLxLLHAIg+lMhMz0zWLomF7rSFCaox77DmoVETCv4H/UZDLyD9MPEbRiFtQ==
X-Received: by 2002:a05:6000:310d:b0:39e:cbde:8889 with SMTP id ffacd0b85a97d-3a0b4a05ddbmr5637369f8f.6.1746698849462;
        Thu, 08 May 2025 03:07:29 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd363940sm31699665e9.25.2025.05.08.03.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 03:07:27 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 08 May 2025 12:06:08 +0200
Subject: [PATCH v4 4/5] dt-bindings: iio: adc: adi,ad7606: add gain
 calibration support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250508-wip-bl-ad7606-calibration-v4-4-91a3f2837e6b@baylibre.com>
References: <20250508-wip-bl-ad7606-calibration-v4-0-91a3f2837e6b@baylibre.com>
In-Reply-To: <20250508-wip-bl-ad7606-calibration-v4-0-91a3f2837e6b@baylibre.com>
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
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiQaeLn/HnBYqH6+X9lTv882Ez2PTadkePx7Bbbj5ytp
 7VW3RBP7yhlYRDjYpAVU2SpS4wwCb0dKqW8gHE2zBxWJpAhDFycAjARWR2G/8UtIUePNRSzbeba
 /dvxwOpY3qXGAUL3Dvzu8ZcKuOx8SIDhv+d0LeGkEn9ly/qiNy1x6y2Cu4MNSwqTk3e9b8y+fra
 KFwA=
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


