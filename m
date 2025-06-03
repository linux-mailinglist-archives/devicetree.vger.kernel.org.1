Return-Path: <devicetree+bounces-182503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7C7ACC953
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE7E13A8692
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8481823C8C7;
	Tue,  3 Jun 2025 14:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Xxwo/I0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6E723C4E2
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961482; cv=none; b=A/6yU2B1exjJX4ljOrAgjXiyvHU2KIV1ywx0i06REG5/pL84yU2Bgb345ZmxA5RcOuccsoiiwCtmE+v4+YOsGWHXAssGZK0Pidl7tsLFBhVVkEWf4mKBKz8kQiGZkFtvEMk8vuT8z/nncPCXsqWgzq2KEosIZPnNRkzYHK0fLx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961482; c=relaxed/simple;
	bh=NtotUFQE861trIH/6KVUMJlh1RHFkSekY2PpGsDNTzs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tu6QycVcQ0Vc3PXexwV8BKvboIt065aKluUCS7gOnmydwyKocPi2RL9V5sEPp0QvJGu4Z/Fl/P+yep3L7eNlbt33CjEYi4xrg4WGp4u5awu6clkmg2+m90i7m1NODMgRpfuiSOL9D4jVt+0gh+ppf4zm2wmNm94Q94HiWLKCx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Xxwo/I0a; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so43110465e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748961478; x=1749566278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=Xxwo/I0al5C88RlybEB/YPWsaflUQDk7jl1n3RmfMrpvE+KMYsIU6+ruMEAJ7kiPM4
         HznLkJRP75jZymqi/fgdAHBttGeh5FHqPX3oMZ1uIcSD+IjJkt+x0Y1K6E9VFCNRSOLx
         gI9YY1I2ufn06dxocj3y47V+nPc/YbHZyONKnj8gFzRSoRHgXA/tHUY7oNUkpi/78/Ao
         CNi31ghrhpAr/3nOQtHEfiu7t5StD1vgQpkh52S3oPW6tXibzuVeWCXSqpDwxG46N3Sg
         p2hzJ0SzH+m32699Uz6DM7eraZ2TzjVFO/pwP8a/mRSma3SLXAUfdoyjxjxlaDdouMll
         f/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748961478; x=1749566278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SSPYC82OHD2BI/YU/tjmuoLa3AQcRKZBypSGl/10x2A=;
        b=CdOePSsofk31Nq4A3AmyhJIkVIZ7B03v9EB/nI1/rEwVJV9rug6oextFhoSAsRfKGq
         JJEZsVYsK7kVhbDvBEiDy30AsyeWuxXZpf5FJUA9YsVLOu2Ki3DYFHIjNMCMhXQUq5ao
         +w7t9ypny3AXmq8edTPhID4gIY379XgkKWYedBjNaJeu4A7BPmIzUEk0KuHB4qGWnMvr
         8CIsBexX7HzMvfQCm9/zOni82di/abk36Q2Mh2lZSFAUMX4TrORm0O3Dl3FXli3rbvGH
         s+JUqhLskfbv/CSdcpg94p1IMF98iIizzfkkhBmrCwpv7OXrjg4gprIcoSDBr7S0kmuZ
         Mb5g==
X-Forwarded-Encrypted: i=1; AJvYcCUrobb0CnvkoGrN9QdosY/Hx3qfWkK/DVsX6Ro+KbCCY4hHG5cD08qzSRsXI1idg0uU6O9zifyLkzcl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbpm1fBAS629D2YfXeVbGUQ+sgZ9pFyNSGpYpv62fDlyQY+d42
	blunepKFKclM8NY3VZtcsbgzhHOetDjr0zcLNrm003XJBm8tijoVBj/7wdNj7gWWevIhzkurrG8
	7lBKZ
X-Gm-Gg: ASbGnct1wBIrSQC9qJYNmGvYjLxxLtDqEeDYM36l0Zo71x3Kv+9LoemdVrpmeaYHSv5
	HPjqBw/6U9MmdIEmdFnoIZs4tQ9/yWI4tsu0uvOJ+LGk+2nFrayFSohCMO3GbHAqrWdoLybX3vn
	ywehODpY8MkfRjTNNJQxZqntMRtVZBPEwc1zjBiMceD1FWQnpUT+i5CT/mp3ieuIqfiIFlZ0Bnw
	THcPvheFFGaN0QfSxHnlL7XiMpIAPvVoh5D6TcJ7jwmRqZ2LhKD2uRuwZenLaozBtWsZjcSYLB2
	9yfYFsDfIn+tK4rIkS6NN0vcJaAlTvN4eF+6ftwGc1IlewOfKeLOwwHVgAAg4ZOjpBI4RUnWeZL
	rGcHCtbgxzmlhQDEq2CpHo/GC3hKaiO4gMI0=
X-Google-Smtp-Source: AGHT+IE0ay3TaXzLDWAP/dNwd5fQ89r4ju7gAMCQZHoJLFzN5B7l/vO0UtTerMKUawT9fSdC1vHEFg==
X-Received: by 2002:a05:600c:1553:b0:442:f482:c42d with SMTP id 5b1f17b1804b1-450d884316fmr166379835e9.9.1748961478419;
        Tue, 03 Jun 2025 07:37:58 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.pool80116.interbusiness.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f1afebsm164430945e9.0.2025.06.03.07.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 07:37:58 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 03 Jun 2025 16:36:26 +0200
Subject: [PATCH v8 4/6] dt-bindings: iio: adc: adi,ad7606: add gain
 calibration support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250603-wip-bl-ad7606-calibration-v8-4-2371e7108f32@baylibre.com>
References: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
In-Reply-To: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
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
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiw56iwuL953qYdS3pm+n8y2ZR1oUZrgUK0r/GGPk8eh
 T1xsvxtHaUsDGJcDLJiiix1iREmobdDpZQXMM6GmcPKBDKEgYtTACYSGMvIsGSO+43EvYfSDwvb
 GopVfJmuv7TabHXM5f4pzpOlpeMuOjL8zz2rNDtAY9WeFb8zc+4ES1U4rv2S/yQpPIY9x0aYYRo
 7BwA=
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


