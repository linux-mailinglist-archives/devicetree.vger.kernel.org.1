Return-Path: <devicetree+bounces-240860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6F4C76952
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 516712B6C7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE0230C353;
	Thu, 20 Nov 2025 23:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPS7EjBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D127B3081D6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680278; cv=none; b=BCbwTY0aegwc0q0KCPev33P+yZDQjhOBVIR97kkNI4TBTdezz3L32AEmnfPpWjVvrRrXUXjrjnLXBg9QHgkfjKOo3wm5K3alXK9poqgeEpDRg2SrtNqkp4Zh+4xChgNCGlVdTp9WU571438cIJe9kJ6nJeqabvFbg9snia6kwjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680278; c=relaxed/simple;
	bh=RWbkz0FLNAqiFbTIDMPZWfStC9RZXbov6DV0vU/FWDI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dl7fv8nfseuyBcVrGH6YNQrcfPV8BFjf4hJ0nAF7l9zbCwjTYcGkYW7HjwR/9jGkQG7MwIhLBpFXSai9suMJF0sjGR03lnzxwb6WibLoMXJNXMpbhhg91a1Q9v5U1DXjFzwVxfNLKsgFI9BsyAoT8x/1dE3gf32G3K0L8J7DvEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPS7EjBc; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7866aca9ff4so14705827b3.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763680275; x=1764285075; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ByHN86RKXbbjzL7Ln3obHD3GU9SMY5OMdZPiBZnxHUA=;
        b=TPS7EjBcboNVZe72bKawkMHSU3gQUHQ0ip1aX8M5+UqLIst3R42q1gKHE+KIBWzxVt
         ECOmJQ4M20+ZdO+knkAIRki92tFMGXt4dPVbW4QSCs1q04qAFgBEAmAxeR9TQ9SfTdJe
         xYBok/kataXs8QeJ+f3XaLd9986+nQgz/IZykPCA7m18XD4fH1wS7NiCMomgj1dEN3TM
         rrHlwgM8dpSmKMblBZQu04gTNd9Tq/gdis7Rccv3lvd2LtWpe/ujPA6rnQhrhNnxmteX
         TSr1L/yrIIL039jY/Rod7n4GxnTTPBnkZKF1NZX9zMqhmwUWkspao1AoGXxnfv1mdY6k
         wL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763680275; x=1764285075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ByHN86RKXbbjzL7Ln3obHD3GU9SMY5OMdZPiBZnxHUA=;
        b=K+9YyrthIAHmHcfQHPVHGepXu5Sm8tRNqJtHERODvUoKfodPjrpQKQLNm3mS7yqt88
         N7oDRD2x1Oa3Gqb+i6Bdu25lyiSqpenooQp3BdY8JAt1gsI8+le/a+m3zE8sXOpxR3HU
         ymDd3swokuHkfdQR7wzpt9lP+nvjeTXURW5rDGbzsGC72zJ2uXtlb7vYCQ0AsIJa8w/+
         C8H4EwGglfwVP3vcKsI2a89E3wYju59faw7AoQnN07rcDFxz9aXCyAQwDqE0TStvTJtT
         U9tPyinb/wh3EBNydjwx0ZAk6Gfi9FuyrqiBPSB4wpsOtdQ0TEY0knacvNgTrm8njnZp
         MMPg==
X-Forwarded-Encrypted: i=1; AJvYcCURoGvwUBIF1H9fBDDuBjFvKS0PFHKjC2zg2YUise3o8LeqIhCsItj+eMmR5sMEjGIq3+O4A2PjyL0T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7aVZULhFgJ+Yuvp5bUJMhqNxl4PE6tsi5ogoPgI9JOxrFOq2k
	oaUyVwYrxInck5LX00zZlnNGh1MWpr0pez7gCbIarx8C8WKuBY/QikH6
X-Gm-Gg: ASbGncsxCIc5G6eP6dN6NjwhOlCMe0Gogm72b/60XAu4Eks/1sTj3wd1kUf53M8XZyN
	Pkha5Ur8OLS5PVSIWuixU9pz7llHAzD3qY5SCk0lflOTwVc5ryRCvaIGwBxQuaR89jd+i3iwJ0I
	uwkmxmcNcMEg7PusbPy78pWq0CDT+4WXnAYLwwsUsNSk1d+aZUXwymi820Ahvn6EYekKCd9jClj
	SKbm2TplOcXyeo+Z6roHQ6vMqyQy0Qy8/IptmAmu1cM4GA0TwBmVc7gzm91l4az6IL/JyOsELgv
	NWB4pK2OFVeUZrXJhyoqYrIw/43RrT0A5SDyM0ClruyHJVhziLDq7ikrnkXDvynL6QwfkkJNFqz
	l92QYfAzE4Z2DfW+piyfRtXZYkR05MgYRPz6drE988qM6gYB2bTpLDDyj6siFmxMuNjhnJHBKKo
	XftAVvuN0yPSINEw==
X-Google-Smtp-Source: AGHT+IHAqrI4OKxe6x7HzMwP3ZGJuM+Wn2lQgIYDF8LTfS7H2cC7/bDnF1Smik688KfunshhtI7BPw==
X-Received: by 2002:a05:690c:4c12:b0:786:68da:26d6 with SMTP id 00721157ae682-78a8b47f539mr1457147b3.2.1763680274745;
        Thu, 20 Nov 2025 15:11:14 -0800 (PST)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78a798a7f19sm11356807b3.20.2025.11.20.15.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:11:14 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 21 Nov 2025 01:10:49 +0200
Subject: [PATCH v2 2/2] arm64: dts: qcom: msm8939-asus-z00t: add hall
 sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-battery-hall-v2-2-d29e0828f214@gmail.com>
References: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
In-Reply-To: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

This device uses ANPEC APX9131 hall sensor. It is a basic GPIO hall
sensor for which a generic "gpio-keys" device tree node configuration
suffices.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index b58f0a04abfd..7343fb00f986 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -46,7 +46,7 @@ chosen {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		pinctrl-0 = <&gpio_keys_default>;
+		pinctrl-0 = <&gpio_hall_sensor_default>, <&gpio_keys_default>;
 		pinctrl-names = "default";
 
 		button-volume-up {
@@ -62,6 +62,15 @@ button-volume-down {
 			linux,code = <KEY_VOLUMEDOWN>;
 			debounce-interval = <15>;
 		};
+
+		event-hall-sensor {
+			label = "Hall Effect Sensor";
+			gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			linux,can-disable;
+			debounce-interval = <150>;
+		};
 	};
 
 	reg_sd_vmmc: regulator-sdcard-vmmc {
@@ -265,6 +274,13 @@ gpio_keys_default: gpio-keys-default-state {
 		bias-pull-up;
 	};
 
+	gpio_hall_sensor_default: gpio-hall-sensor-default-state {
+		pins = "gpio108";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	usb_id_default: usb-id-default-state {
 		pins = "gpio110";
 		function = "gpio";

-- 
2.52.0


