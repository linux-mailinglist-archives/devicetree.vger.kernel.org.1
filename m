Return-Path: <devicetree+bounces-83434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E994D9285E1
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 11:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86B4B1F21F77
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB0F155A25;
	Fri,  5 Jul 2024 09:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSUz/9Ge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F361527A9
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 09:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173137; cv=none; b=t6n0v1A4V3n5uJG2az+YHHNu7WSqNdAEi35TQK9LXzayM9JgNzkIEHLCPsx/1vK8z7+T56Xe1bemL0gNs8CG/m15iaMZ1DkNPthStnpKsRaUUFma1nGCGBbf3Y370lGXMwuAyS33SeAOXLrBZIadnV3MKJeHBSmWWgaHLRrCeZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173137; c=relaxed/simple;
	bh=a/lRhuB7v/RH3R5hhGbQWTk2cMSnvHEqh4aApez49W0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bbH2vB5tL6PadWPinPkNNDEY0U5g+poKqN3YBm93XaH2HUjdidhPd0Npu8FXXGPHh6p3RVOwv7kRLU1rIMthg5gPBcDwpUCvIUXUAJumycpsITCXV5Z6fLDb5wDgk0z2btyLhZTiizOMmF62Ce2JZyokF0Su8zMM+vQA+fWoCBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSUz/9Ge; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-424ad289949so9819345e9.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 02:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173134; x=1720777934; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SNLCghh0Yz7i7p/GLk3+VVI6b/6S91C5eV8NUz+ePr4=;
        b=GSUz/9GePihPKfZRE3dnpikaqXZ31V1jfMm1P+YKR/51M/tL0oh/cdSTyiSj0UEkJ5
         gbKmEKKGaydWFHR1y+LPlalO/jLSoDbrJY8xTGCdiXx5B3Oplgr3FsrO4d6mNCm8gk/b
         ouCtYvKeoXi8cN+G5TxH0Oa0uRLl2dhdJU+52PhIJVKAB32xlD8jB3LLcv4Q1f9GkWCU
         xh+k91zdg2T0K3OoPIN8mX+/c6b5SRy71u6xnXQL3XjZXLcvUjGAmrtcC5sVKS/kGAFa
         a8GpOpY/a4TgxQQR0+RySY1PLBC8gbGuB6Dl6+6yUkYkoxKsSjEcmOUX/Nepf7w4i0nX
         EyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173134; x=1720777934;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNLCghh0Yz7i7p/GLk3+VVI6b/6S91C5eV8NUz+ePr4=;
        b=ICYt3pDw1YkGRgXw0KNWIw/Vzuo6yo+kGbzYs49Q1GSLApwhPOBtPIkZwwxpcAEJB8
         4o/9Yoq/1VNuX1Tf7+25An2YQ3ZMeXB9JospncfayuywPVqLdSjRVA41TYQwMjx6VU1d
         TsABzgshtJ7geHQU6p3AugXC5ty/25jSb2ENa67kSZy46azivSd15nXWzqMG65uzEKxW
         6Ca5FtgpqEk7UlYpihNbl8XOI/01zOrEcd4fVrwCmn808QWl6nOD5iP0DaC5LQzWsf1a
         KFbRFP5gf03gnKDpAylhjsNIj4vgk9CjxjHRKLFXvCVemGR8sv0j1iMJ5zWc/A+SikPW
         zMpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLypqjmlNjJU3DFbX20vj3LkiEcGWiBlTlRGoIPwU76kW1QNiujabRH3xDAs+FXjRuBBlH+T/ORbcRVO8gzRcYWpD1NEaWF9sDtg==
X-Gm-Message-State: AOJu0YwloxpDoO7orSHbLU1CBk3mcBpQ/9Fo+E0zaxl0vg/eJEVLRkyI
	tS31i7a/E4lMTa37VJNeyytfhg7ZFw8keF984xnSdGp9BokQVOXH6YX9ZzAHECw=
X-Google-Smtp-Source: AGHT+IFYfb3KFQclQvKrC0bxRkYL5QT+2rGoFThcisJv2vbGuFeFm7mkup3MxH/OKF2jKfIZ5LbeHA==
X-Received: by 2002:a05:600c:1c98:b0:422:4fcd:d4b3 with SMTP id 5b1f17b1804b1-4264a45f9b6mr29668465e9.37.1720173134425;
        Fri, 05 Jul 2024 02:52:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:30 +0200
Subject: [PATCH RESEND 11/22] dt-bindings: thermal: qcom-tsens: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-dt-bindings-thermal-allof-v1-11-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1473;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=a/lRhuB7v/RH3R5hhGbQWTk2cMSnvHEqh4aApez49W0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8ItUHW8uis0xqBnpaivnedFAv03y9sHCQoyi
 PU5+qzAltKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCLQAKCRDBN2bmhouD
 18AfD/9FP2sbB58gVOPvih1LQKxHYPR0Hs/4bGCOQweiMftG+QKq9EOPHzRIXTtK7kgNYMmiIPJ
 ESDVzDFpQtdPNScJKmQrrzckoPdulbnhSf/C+HvC+AOXeNQ3Y5rXnqVJyaVIzCATsGwB2G30OaX
 bwOopuCQR4XRMwuV1SSTvnm6iBuKVCpRBeIx1xF6whanxk5+b3/QcZ4sDwYhMkd8xYnhWtBaDOI
 LK+cxkel64DvnNqsQQIT12u1VVfMEgsLvlq+pBTxskUJ57J9xq2ZCpbbC0TJxa7haCFUdI8DXOZ
 ert0DERpvbg3lNVt2S9d6CdgftWlo9jIaMEqWl1k466LDEfu7skl8Bim3Muevr+0PTV39uJG2Vw
 Eu0o7uNkutPJRXAMgv+ikwQnff624dT9I5OsObJOX1sDCAn8vPv0eSCPw+7lFtRmfdJXGKOt4XN
 33+A2HmS+If/cDDdBuNDc9oob72OJWXKk2I/1SRHVwTCxPAfWMIyXdGcqpo/g3qdnFe12hr0lwY
 EmfN9bd0R0r3sVz17OiSSyA9ooIkguFI8MpmZ3GynWf+OdUcpsi7IMHMcXwqfXkaUME59Qk7rhQ
 vMYrJqv9zEwcvxGkvh88o+St8318dVAOhwM82L/kj3iot6Tiw5uoXXZt1UOwj0JtT3PkO0y4caT
 +jSo368RDDbbF7Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Amit Kucheria <amitk@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 99d9c526c0b6..cce6624228c7 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -217,18 +217,16 @@ properties:
 
   "#thermal-sensor-cells":
     const: 1
-    description:
-      Number of cells required to uniquely identify the thermal sensors. Since
-      we have multiple sensors this is set to 1
 
 required:
   - compatible
   - interrupts
   - interrupt-names
-  - "#thermal-sensor-cells"
   - "#qcom,sensors"
 
 allOf:
+  - $ref: thermal-sensor.yaml#
+
   - if:
       properties:
         compatible:
@@ -292,7 +290,7 @@ allOf:
       required:
         - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


