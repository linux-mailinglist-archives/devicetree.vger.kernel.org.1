Return-Path: <devicetree+bounces-103165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC448979C7D
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 191AFB23DDD
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECCE147C86;
	Mon, 16 Sep 2024 08:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SpjbpH91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B79C145336
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726474130; cv=none; b=ZvEhhP82zm0XMwi8uxT+pAa91942A67qKXiwEWkEMduHgzooftI63gC3U1bw2WTOscEbCnFdLLKuqK80ENEeg9PSmV0YEOY9Q/m/Vy+52X3UIuYcXIHmLhfDMWiIweDjUqYx1kDlZYfMU2flEyTeO7w0Sl2HMYYs0J2pLfjQP10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726474130; c=relaxed/simple;
	bh=8p3c1zZNDRbhKzvcuIsd6kgB+jwe+Y0GqEbwHzRBQrE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p97Hd5OGrTFjF0u9nU8nyDlDUa3Mj69Sih0xqJ3WiZmeDzCOGuUTm4uhmTaN7XVeoZKzeDCZPzCih3EtxzKiMcglXm3lQU3YytDc+tWHo1vORoC4gnNRau3ATLYdXggaKRQcxNkUR6xPnUbOxxZn2+jzzFzsAaHkHHgOk7x9IGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SpjbpH91; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-374bd0da617so2773609f8f.3
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726474127; x=1727078927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+vaiPNxR0XK5pyaLYruFri0myinzPIOp6a/MWsTIxgE=;
        b=SpjbpH91ZlAVMMc8nY1KxQcHr8/WyLPj4qpW6xnzbTqAWVuhHvM73UHM5DSEWKlzNN
         qExHFc+X5dnZG8sVeZpewW8suJ5Yku3Q70H2ig1NHggoxlZcF/FkqPrK11QL+/Fm5JhR
         RmN5afR+bIy1NWtcL4feDsHKUdEybzTQyhsF/h3mwTUAFld57uM/WcAIgFbTZLF88TFL
         w5ClwsgnStg2mliCoqpCBRGlowTdtvjEH4a5bQxV1c9loJqYs6Y4y5wg4v1jKV0P1FoV
         Dyq998PSfl4N7XzXKugIWM9pLjELxJiVoIOEZyBjjx/aPGOXq1KRzqYjcYT5fdkFIBVC
         bbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726474127; x=1727078927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+vaiPNxR0XK5pyaLYruFri0myinzPIOp6a/MWsTIxgE=;
        b=mFuMRJnshnA6A/bP1XNePdqcfTkxBG7k7W4aiw/qE4rj6sF3u996BtBnVNy1WvWmw/
         0QKPP0nGGj+B31HW0I42OlFjA2l54W79ct8eg7byQawsxYDlwi2UeKcJSKqGY7bJl6MX
         rfvtgkCSKZrX7VdTDseipA/Yj8l9+malFzahGs/mcYbr7BGDJtiyH4T7zavaVimEKjwg
         0UvlnqK534kvOM7P1tyi0/xszTuBQIXfRFAaf08U8HZXSzYwwMYMkM1hNWnZowRGpxI/
         xPcqUh20AgqphZ4kUdoId1SFgn2iIT95kCCmm03tpv15Xp2VAw01kGbo/9Bllb/4ikMz
         ZaLQ==
X-Gm-Message-State: AOJu0YwRAeqcpj7+ICLDqrFIxTj/eCZrM9wjD5fCECOIEfQhZwNaIGXt
	azia5HE0OPfMF9JpsmjbZVT6nvvLkQZ7Qm4AIXa0do/5U/RML+4QcjtGemsComg=
X-Google-Smtp-Source: AGHT+IGv0irCuAoicG7Lr0phnSGT+x0/Od23S5rTo8T4LkFhJ/RpG6g88rArjDFrUmZWYhQGrbZc+g==
X-Received: by 2002:a5d:668a:0:b0:371:86b2:a7e4 with SMTP id ffacd0b85a97d-378c2d4c778mr6386044f8f.37.1726474127254;
        Mon, 16 Sep 2024 01:08:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42da22b900esm69309465e9.1.2024.09.16.01.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:08:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Sep 2024 10:08:34 +0200
Subject: [PATCH v2 05/11] ARM: dts: amlogic: meson8b-odroidc1: fix invalid
 reset-gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-5-0b20ed4f0571@linaro.org>
References: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
In-Reply-To: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=933;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8p3c1zZNDRbhKzvcuIsd6kgB+jwe+Y0GqEbwHzRBQrE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm5+eGm1pVORxrl+M5mCZxk5fW+Gyb0Cp6ELp24eHI
 38eFHjCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZufnhgAKCRB33NvayMhJ0ZvbD/
 93XUZPLCDvn6BGaj64fuJVuQX0HkBQ4AdU2nXTy+IF1EmRm1RSU7jeTj4Bn6sw4Ar1y5UtCvVpe1js
 kfL1a8IKJkw4O7iZIpHFPd6j52Lr2X44uhnQ6LF0VCkDxitLca/2vDZq2AYZc3dmLBVzWSYiRQnrBZ
 A8kfa+7U9TPVkOYV73yJtlHPJ4RPMMCI01yKgLx8QcaI/T/FEXzjSOD3liyWJd3M/Rifp4in6dV3s0
 9cYgmeP0z+Ats7rfeCtV6LQcV9uFuraoz86vZ+XIMcchVM4wR8BOnNy9sNdbtJAoG1Tu2Op6+QGymd
 2GthO5nTJdP6MpYJVIerZ3u044n5MXqtFEBJltyvvpv06XfDuaNCkYLN+yFD2eqf8eFaOzNld74R7w
 PH3sBb/GvfgD98cG/c9snlx6J224Rtie51acbdoc6IeQzX3pJfwWDQB/7Cm2MpMfFPDOXcytz7YvpN
 futN2u9IWNtzlUH6LehqZC8sr++By/fPTGFa46HHlII9GsvP2eNcxHfGnv1DzDrGyvufTevAzZD5Lr
 a07uLW4ScwZI0puFgZYnmjuth9rQ/AVcMO6OdMOr7drAg8uQdLelFpKsXl8clCyVrNPvsC+1p6vADT
 t2NPYDN9u3ipUuPCQEyC+8eZ2Cjmj1KGV1NQgkOqNbIcDvnwxo+K0MJm28kw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use the proper "-gpios" property name, fixing:
hub@1: 'reset-gpio' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/usb/genesys,gl850g.yaml#

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
index 941682844faf..962bbe3337db 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
@@ -378,6 +378,6 @@ hub@1 {
 		compatible = "usb5e3,610";
 		reg = <1>;
 		vdd-supply = <&p5v0>;
-		reset-gpio = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
 	};
 };

-- 
2.34.1


