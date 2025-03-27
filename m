Return-Path: <devicetree+bounces-161201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8325A72D67
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 440A47A4A10
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82102101BD;
	Thu, 27 Mar 2025 10:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RWBVyzsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBED720FA81
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070010; cv=none; b=TWu9L1y446al+3YW+FFdaTDB3naMjkLJ0refVPffWZHpKXsMFrCS8DITBWY1fBI/kloVqnC3/7rFHWen7Y6v1mZXO0WdxjSV0e0H0mgW8jDgTht1rdYMn24+NibEQLgzCgwoPH4UEdEn5N+BC5Oxu7cO2rqYbvvBExF2ZIskVDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070010; c=relaxed/simple;
	bh=SaEurHg9my0SgGDfooWj4uP1HnHehhMQjbSphU85xtU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kvAtmDDJY18vHCcmZApym5gU69MdZ7G2eZq77HxJ4eiz+zmcdJ7vJ30Re9rcS9TwMcVFIqwysqNDRy81jAFCgnR0iC0Cq98Vd+Iy2ad4BBsyv9M39rI+Jx0KRf/pxZ2VT2q5MiNi+lyFBdjwjDfxczAAv2JVRRbq5lpTEKImceg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RWBVyzsp; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so3994345e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070007; x=1743674807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZ6QvHirUebkLT0cLpo0Lkee0nQc81mUaPIyQl+HrrA=;
        b=RWBVyzspIITBF/LjZQR+Ys1DXVagbLEMWe1WSqXfw+PjeeLjzB0V1iYx9024fzEmPu
         GHnGSnBh0P+wq4bHZsiRqdXi6puKwbbQB4tFB0VMfZmgWrMIsYl8uyK7QiVsr21OVD77
         2MUyzL0R/LTuN9GdRKChM7x1mkqw8PSm0HghOhmRoLXpyUn5Dh5BJT4y7w/nrnn54oQB
         o/pYDl0VNO1cubYikwqdI4Nw+3Ci9JLb3rlKzzuIJCE2MoltToKkZ3jvCqjrAJTmsJ03
         CBbnYIVNiqpQuoXvH9pYXy0KOHehBGZKhBmzLgBoXOqPFheC8Qy6G+D9Gs1nBL4vgju8
         6pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070007; x=1743674807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GZ6QvHirUebkLT0cLpo0Lkee0nQc81mUaPIyQl+HrrA=;
        b=C0HvimdtuIqk58f8SQ3xF0PuKqZshfSGEWp3D3toIOuwllpV5S5SEq8ZdfOEl++NP4
         uHHg/A03doXBoKjv3uCrbAentiOTO21mYoj5YcvxhuwZuIId3jB3XY+ickccwEz0+X3I
         TW2Iet6bh/ksNY1q64tP25HKNSch8zeWqdkiokNlJh0u8Em3VDibMm3qXtl71w80klD/
         8UFO43PmNpxSPrBk+CwH/a4rp3FBuHRIHtrYWFi/IHfYkOibZE4jY2Ce/ZsJqfivJwa0
         wy33izz/qAlJXA0Urp0+maA8jXgvViNc4k+Qj/78BHtFxc8dFT/Ef8W9C1pV3V2LeaOX
         yOQg==
X-Forwarded-Encrypted: i=1; AJvYcCU57N8muQShEzTOr7MVuEW/4e9iKFP42yobWZu/aGxa0S4GPPD76iG2tL18YcI2X61qpM5QRiSg7UDd@vger.kernel.org
X-Gm-Message-State: AOJu0YxqVMXaA0hx5Xy2oQ8zbhPgNxhHnHBoYUsUwM7q5NJti/IUrLoF
	xg+8dSjV65iUyi07K9hiUL4k8GZdl/7Na/nO0eWI38P2qrrglLQJfudlGUZWdow=
X-Gm-Gg: ASbGncuBVsgp12SfDXyw4MvFkhZRX8mNrMuIH0aeW0AonXBsnpAR8EzFWT0hxGXLwRm
	lMfLRDljMIHAf9K6IrQVMjW2qQFhYxEjpfjniD7oyYkvepC+tpYWOwTP9nK1Pt2intw1WkxmaEM
	UwGuX7TEq4tWJr27iLhbvKWtA+AytlTKkHRs+q+fsDP7/pGz/X1mOf4u73oo4MT7kRrPYMVRfcB
	TYDCAZuxvShn0sTX+boGmhqHz6OnF8U9nS9hveE5Sh+DEu57QYwomiIBlEDM79CMx6sCmBdxv15
	FEhX4dfpP0wNGJeH4vx648SAAzKD/0KlmRHXPCpoyyRxNXg5wuwLtkrILAFgXQmkrz7oY6rui2t
	nOSqa
X-Google-Smtp-Source: AGHT+IHjrGVJ6opjaRJWbDSpA1taDVutESVaqvXu4Xk53ocP4KRa0hpwUBXOt4Nk9M3e5Zr5W844zw==
X-Received: by 2002:a05:600c:4e05:b0:43d:26e3:f2f6 with SMTP id 5b1f17b1804b1-43d84f5e5bcmr31621435e9.5.1743070007164;
        Thu, 27 Mar 2025 03:06:47 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac3ce3dd1sm10843204f8f.88.2025.03.27.03.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:06:45 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 4/6] ASoC: dt-bindings: wcd93xx: add bindings for audio mux controlling hp
Date: Thu, 27 Mar 2025 10:06:31 +0000
Message-Id: <20250327100633.11530-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi mux is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable.

Move to using mux-controls so that both the gpio and regulators can be
driven correctly, rather than adding regulator handing in the codec.

This patch adds required bindings to add such mux controls.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
index 10531350c336..ab1c6285dbf8 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
@@ -23,9 +23,15 @@ properties:
       - qcom,wcd9380-codec
       - qcom,wcd9385-codec
 
+  mux-controls:
+    description: A reference to the audio mux switch for
+      switching CTIA/OMTP Headset types
+    maxItems: 1
+
   us-euro-gpios:
     description: GPIO spec for swapping gnd and mic segments
     maxItems: 1
+    deprecated: true
 
 required:
   - compatible
-- 
2.39.5


