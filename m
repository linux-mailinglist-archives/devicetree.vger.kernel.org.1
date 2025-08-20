Return-Path: <devicetree+bounces-206820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AA9B2DA6E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48588726C46
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3177A2E2F05;
	Wed, 20 Aug 2025 10:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e5/k6jLb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8185E1C3F0C
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755687591; cv=none; b=MZwD93RDD60igJ2EFb4jCyL324umLHgHEU1w/XrgWK5kl9/EQhVRnZBLQwGBcBG4GxO1vW2dwpPb53y1ZNLa77LSE++p/wDK9DlDQKeZI7VgUY9wVwgC4zTknoLXv0yGimjXCH40/Q0UqpQOyfx0Fz0oAjGwyJdC3oCMWfm+UGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755687591; c=relaxed/simple;
	bh=Ib7t5klRtgHB3ZYRe1ZirJLWs0aaLJHFieyN7+mIhW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CrqCUHl/O47vQo1T8iz5MXz3I5EUugAFcKvnrgFBH7yMeLkd/cXcSSyia/XgpOy3md3fw8SkyVrVlLsRXWLlv8hpsAV36ciqk+IFCFQNpbpklmTxUcl4SWWIRPlbIdFq9tvpZ5QnNl/VzT9bJhiz8WZF+OVVQGe/8MuF4By3YS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e5/k6jLb; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55ce5097493so6179245e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755687587; x=1756292387; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GgbTaAe7Y0YTx4PtTTkUJOJzGwftEO3yR0ZZhonG/yk=;
        b=e5/k6jLbsvxEfe7khLqSCzQI7e01xayVC8mrZJSpvyF2SAfF1npsTMH8SojC87/EtU
         bojGPQQtca5bAhJdh3+5BAeq/P2Dpylv6XIjuBuu1qvU+8C8cxaqPGYHW6thOSNiwVio
         Bn3mNBIBGIB4nlOVBnFFXxBQF2NWzPZstJ6qr162CRjCAb4zI9+vT39rtpxcO1F1xlbF
         S2zdf81hO4Lh4Y1ddMsunOjn2RlAiIbL5lRQyfXxl6FyaQhSwwzFXnps8HAK8c/A5DRc
         ZGdGK5Bu3gzQpJ3BV+ljc0FEcSpaikt0g4K0gNEyu4f5nYrfe9YWb0ucHyCD/g21OP9s
         UEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755687587; x=1756292387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgbTaAe7Y0YTx4PtTTkUJOJzGwftEO3yR0ZZhonG/yk=;
        b=sHCR/pgh6WcHiDk2pmTg+l+/0RxT9Z0GX+vLHvARHGKZ8sQMQs7T6To7eH8X+hV+a2
         4mje2Rc4JvQoEwj6fGCbHBziCOkYOiU52/yB9LjsZXb332yfpPnVVVfxoYrrBycuwg3P
         5MT+/oBO5KwwtJJQUx4tNhWwpYd7/ruRELmuhLqynIL5PhUtJ1qmZoNcHyzoOuMOaIXC
         qFfU2cHLmgDQGg62wcYpxVX9DsObF2IaYc0UyxK4Bw6re8/9Vd/CMI1qk7Rzz/yfbLNU
         wuzfDdtyK2zSe/2kQEkiVHyJymh39KqfLg8NECItJIJgha6bGn7jJdBDi0WTLyplUKvJ
         Nypg==
X-Forwarded-Encrypted: i=1; AJvYcCXMuOjp40VfJrm6ZL1qed5x6l93gpnsZDt+09ZXZ6XkmPD4YWLwSzjH0blfxnFN44vS8UYixe8zrPpv@vger.kernel.org
X-Gm-Message-State: AOJu0YxIW5I0/1px2kzRu4ND2HtUx6VArclfdMevr7JZRZN8eYDe509p
	swninh0W7SwGzwTtQXzXPRThAfM8kqdIRzB6lKCi66w6NHgC9MoLSa84KBe1CyFbIGr2UEac2WI
	EIUqxI8w=
X-Gm-Gg: ASbGncv2KhdIRnmqUI6yOow8pG5F8U16k9Awl+2s+KoNkdOWeVX3igXdjZlAUZSNMDc
	/ndGxwNwJKWdI9WrcmB4TeOLBMbAp825jYR3PmgHfFu8dR+EVll+ffM/pzMW1VVRxd7+dCfOYwt
	IezWQL0G3gZJw3I7FvSVvF/iDr8QMFr6NyJlDwJpOpInUJT8zGS3YgwJamtfJWnAJC/u6tt2Gd2
	RZJKQ0EcV6ZmIdbWHKxPx/bsHt+vcQI452sFXuNyW5AJuS2G42uP7IEFkSFklhxLKNT0Lojpv1N
	l2CCRSTzs29+LV9Az6piV4mTL+yHjrRHaANvzt1e5kPpuhnYePW9AyMgn+VLYsTJuHrq8LvknJn
	iuJaprqZKzzRy4KxLVZNiJl95kYPX5BnmLFuzvowple0=
X-Google-Smtp-Source: AGHT+IEjnZ6C6MCkE6TABYTLxIn7sIyRt3jNbrneikrpMO/3NJ3nqC3yLlALgEhUp7JTIC2qBOYNeA==
X-Received: by 2002:a05:6512:607:20b0:55b:8285:1eda with SMTP id 2adb3069b0e04-55e06bb5dccmr510517e87.33.1755687587413;
        Wed, 20 Aug 2025 03:59:47 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369843sm2518285e87.60.2025.08.20.03.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:59:46 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Aug 2025 12:59:44 +0200
Subject: [PATCH 2/4] dt-bindings: Add bank width to Intel IXP4xx memory
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-ixp4xx-eb-mmio-gpio-v1-2-0e167398c8ac@linaro.org>
References: <20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org>
In-Reply-To: <20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This bank width is necessary to set up the memory controller
properly unless the peripheral is using native bank width.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
index d1479a7b9c8df4dbefc24a4706b1fecdda37bc6a..e306344373c5cd5c1bc6f4001d1252d8d0485f60 100644
--- a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
@@ -15,6 +15,11 @@ maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
 
 properties:
+  bank-width:
+    description: Width (in bytes) of the device on the chip select bank.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 1, 2, 4 ]
+
   intel,ixp4xx-eb-t1:
     description: Address timing, extend address phase with n cycles.
     $ref: /schemas/types.yaml#/definitions/uint32

-- 
2.50.1


