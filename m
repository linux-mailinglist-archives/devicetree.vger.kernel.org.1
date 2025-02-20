Return-Path: <devicetree+bounces-148743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E50A3D3A6
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 09:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 044AE189DC0C
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81D31EF080;
	Thu, 20 Feb 2025 08:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qZ/G4mng"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18791EE7B1
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740041395; cv=none; b=Jo0sD5109XfszD6qQOxnPveyIooOEndndtDZSn8w+ODtdmVXlS+iTSZjrI+hgNsYF1BM3PyVoUxtPo6jo9DZgZ2Ud9E5tP0Hn3X7+kjGYQhVg2FJsKdqVaZS6gn1DCWRgGvxAFkHUPYqmK/wJnUhC6D1nMzSKXl79dPJZ4YUG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740041395; c=relaxed/simple;
	bh=jEV8vZz5gqNDMyTZ0uRsv3MOluyxCEuJ8kKQq9xb6d0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ciCQWoAVcezAcW+Wh+6ltYtktF6rv0wZO24Uwq+GYqO2J/Qxx3T/Guz26C5vFDT6L1j4j2pxS1aU6MfSK1zDUBC8+SpgzWxDLoFLO/mWvQtjAywWtoVRrVObVIOjnUrAHgaydNOjzz7Wmzz8aTLqpnn4W3Ulu0qhpgMzf+gppj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qZ/G4mng; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-439990502bdso896165e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 00:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740041392; x=1740646192; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWB+SbZyOVXJ9r7wbGT1zybdbas8WjeIU9tjrK4U+Qo=;
        b=qZ/G4mngc1ZVhsQuyUKGZKgsod2pDUiY7Xdf/UjuGF7LAs+G4b4OsLmOSMROyT8dz0
         cBPuIHDqiW/7vwJshalgd3jM6zMBEKWBMl5CBxlZOl8iGvl2rF4+nf4B3qkpLeZ/0vMU
         ezGpNe53Gx9lOChqMXmEsheFe2WMoB/1qj3NWSMb6elfG9CqD/V0XZ1PzFJDP4Jb5FUZ
         AgOpruEpTugjlyY8CD1+CxYOhG6C8R8FPOusBNQSbtMGy9LL4J9+0AmqaKPaZblnq28H
         GN6GP9XbwvUa2efL6exna2y7JvgaFAuIhuQwFfzVWy+0/1WrpOnJdvK69+HCrLj4RjV3
         GBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740041392; x=1740646192;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWB+SbZyOVXJ9r7wbGT1zybdbas8WjeIU9tjrK4U+Qo=;
        b=K6A+Lh605mCdPMSDQZJXWvBYLNUcUXBO8+1eCO3Py55dEjR6jlnZ8DAJpUA+GTkK+O
         taPnXM5/rpwJapR+FXK6QiommE6qaewykux5dsOv6OYCQQQ58nrfaGsQeiyUTpY8Wzxz
         hydv/Uhi7wuloRi1p9GHmFHmiUd89mLmQUBf22EJsputfCNJRfSi83NQrm/kym+sp2U+
         j7P2Pzi44nta9wFUtDMGiTSuVob+N+zpFhvUZcYNQL6aTklE9rEY3GAzmcy3G6Lg1Xni
         UxNXV74HPgeTK7oSblmdDyAE70d/tiFcceGCusZ6XriifyZe9ycNc1jUEaBlH8WN5ymN
         ZQqg==
X-Forwarded-Encrypted: i=1; AJvYcCXXuYAb+02q/TAp5d/gwYDTrB2GA5fazbv8Ju2ArRtz7Ll5ADnrOU+EcCcV4nvujY4J6OFR+HrioXHT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1BfMjopqDSuGIUOiU5LmkFCd+6PjJiGNnu63nEealnFMQ3Jaa
	4ixluWRWhPwmJ/MymrDJ5lUIz8JUKyyB4M3X0s35BZ2Yi1q6x58ptyYtx1cOCkc=
X-Gm-Gg: ASbGncs9AHQcDfyTUUG9CYS9Cyfs2wEk41bDXWnv3ljU5Buj7GprGedwHWqL3F9wxJT
	iNxSIMJlNQCgs4n8Z4B6pSastC2nqkuhjqE9ugB1h2nixGSvtLKcL8w+nSbUeC6MDbjvT7NBxw7
	4FLO4k5ABZExQZqkcQoDf3m4r3s0ypTLz9VGkSBWNO5tX5QplX6DZygpfprBTfJR+xbFy2AqaDd
	xZ9IwIxfW/r3Hcj8wWoHYkiKaTmK2UTjb0p5S4ajZPWPFrkTFCDgwctxP4AYcACTPUPM7Mh3ALV
	3cAI9wiIzEZYK+APOX4k/3QY35kbnb9ENOVfx4EyWdA+RJwkz8xqaNnaGH5Hvl7v
X-Google-Smtp-Source: AGHT+IG4bbBOJVCPcprWYWGX/77B392vmnYMBASei1ZZmXUU29L/4ALcpBiVpQXD2ZjiroNLeZ3IYg==
X-Received: by 2002:a05:600c:1549:b0:439:9a40:aa27 with SMTP id 5b1f17b1804b1-4399a40adf7mr22683255e9.5.1740041392220;
        Thu, 20 Feb 2025 00:49:52 -0800 (PST)
Received: from [127.0.1.1] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8397sm234417565e9.36.2025.02.20.00.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 00:49:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 20 Feb 2025 09:49:43 +0100
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8750-qrd: Enable ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-sm8750-audio-v2-4-fbe243c4afc3@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
In-Reply-To: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Enable ADSP on QRD8750 board.

Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Firmware release will follow up later.
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index f77efab0aef9bab751a947173bcdcc27df7295a8..341774bb042ff88af8acf49c2f0ef14f9994dfc9 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -782,6 +782,13 @@ &qupv3_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sm8750/adsp.mbn",
+			"qcom/sm8750/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


