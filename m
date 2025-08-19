Return-Path: <devicetree+bounces-206286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F0EB2BF39
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73C9917BD74
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF909322DB5;
	Tue, 19 Aug 2025 10:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JBb5doAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14AA2C235A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600337; cv=none; b=Gdfwomxuw7YCnBe4IHzG2MXSS7UhSBCBfVvW+eO1eZmJtxC/ZRc6ZVkcVoreVqeFVG6WQSEEtkve0xXVKTsryuHQrUgY5cJe2xfqU5ijb4ColUCUCo0PJdMt05rcSgvPGExr3u+MwmBXUP4HXQVpIFYla53O5GEzDElNbY3tTRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600337; c=relaxed/simple;
	bh=lBEHY3oqwrkzdEyLXUenBPe+fR0fQKUQuPgdsV+am1M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e4YefMFQImephwmM1Ala5ziyttW9c8dw9piXg+vNxbdDdlvk7ERYU7QQ9eKDUmBDd8MSQ9gJKTPPeebsHSLFWdd+VN5MbbL0iUHnqHZoYnHGqN8r0DU0LORUgNobzQIGmlyCU2wRBgSgt9r4zU7mCBOvq8mTRV66rNACsx2q0jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JBb5doAE; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afcb732eee6so835994966b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755600333; x=1756205133; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CzTgDVH+QZ7Kiq60lbhQJSp7V9UuP3VPtTcxTzVGwi8=;
        b=JBb5doAEkc8hHBcww5E3GP60Zt1YvB27wKoqpYS1F8h/78WRqspD3qxbZXftCHdmZc
         NwxAjzuS1eQqCbvuJEXjPfvUZe2WpC5rdvsStpr7N7j29P5faG4LM1A94vyoKP/5MFOP
         svCpiMSw7AnmxiSj3l/5Z2jU+hAcDmdykHQewKvcN1GRr8XJgt7bf/wbfEXYUGA6rGD4
         c4v45E1ftzV6qL1jVVsDFAC6H40ECnEQ4gkt85J0OIXj4qFGxwHT6O6AZx9lCBJ3XgWg
         pOP0HU1+MaRIFHd7+FUOcJnF9bvigrsq4cNZHqJ3UHHPxieHdt1Sp70ANqwk1LUReMld
         nA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600333; x=1756205133;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CzTgDVH+QZ7Kiq60lbhQJSp7V9UuP3VPtTcxTzVGwi8=;
        b=QlKjqds8KBPyVFSWKOkn+S4mCwbZKeEs5lDg38w2CnXS/6zzl8iAW3J5CcIh2SnyZb
         pEnx8/XMABfePwpLiTjJoI0CtqqFRSkm7tlRa6XaobIlAw+z5tnyG+knO/mFI17SSY1j
         uXE6c7DDXZr7YDUFISYAh6nxwNM+gWrudvicAJr4LJXl2k0qwEXO0deLsRG8LALtQFNL
         w2Y6eTWTEyWNqFqMbUJCZQpQ9xhUpMAC2L05FNSqgfd0CpWn9nG6hRrCvEYX3xpK5TZ/
         OAMyFZ/9FAQnqMh0ZuoVfBWD0ssPtpZC6DMUdJulFgu+XsZkzMuq/b/EBEVeqh8LnM0L
         wZhg==
X-Forwarded-Encrypted: i=1; AJvYcCWpxQ90ZWNwL6H+npVYDwrv75iWXFsosoS+6SM2ZowbcFnDBr003eRQGB1KeA+LafPxePfgcropChdB@vger.kernel.org
X-Gm-Message-State: AOJu0YyH8vSI7mrFRzDvaIzFLxzAID6ADqk+iYSYKX9dd/3cej2EJ3jA
	ahsw+bxDVTQKZnJO+BVKQM/o/Ij/JDk9tjLMa2sy4aomhfPxLBoumyrAmQVpyMkR1Qk=
X-Gm-Gg: ASbGncvxYbDTTdgXdN4s7DSVqG/vSu5GUoUncaMib8lD0SEMxfyEfxm7Kh2JWKOgsOJ
	ombUD2JEYw6BxU+SLS34dFgstL0i32rzmAUOi3i+hhCL/e/Y5wXr6QLGx75OGXq6mOfoyvQopee
	tq2JGmH6O3JBCYGUG0t+Yz0lomzjZ3uqnCUeRy8zoyzAbXzGwGto5r5ky+ptwJbriW+TIIhhWrB
	KhxG3bEY5KkUn/K43v5q1cYrLLSb4S+V+Z6Qr6HvR9XK1651W1VHGuPQfJu4qmGUu4wnY1KSz3s
	wCw5RX0RoGTQTvp67ngU32iCl49D4JC3oF2saYj1q2amucMllIdGpo7zVgPJDkWKDqEMuy4CKDq
	8tQsLTxwRiDhiptbzUsDqfEZ/LBG9dXp5e+eJxg==
X-Google-Smtp-Source: AGHT+IE1IfNii4lYyAmhItgaQj/g69X1RMtfpryZPx9MbrEv2WxcHcjyfwhOTzesYRX/AF41sipqbg==
X-Received: by 2002:a17:907:d7cb:b0:ae0:35fb:5c83 with SMTP id a640c23a62f3a-afddccf2aafmr183951366b.28.1755600333117;
        Tue, 19 Aug 2025 03:45:33 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:db5f:8096:4609:9b24])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757a48e2sm1469787a12.40.2025.08.19.03.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:45:32 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 19 Aug 2025 12:45:20 +0200
Subject: [PATCH 1/4] arm64: dts: qcom: x1e001de-devkit: Fix swapped USB MP
 repeaters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-x1e80100-fix-usb-mp-repeaters-v1-1-0f8c186458d3@linaro.org>
References: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
In-Reply-To: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The &eusb3_repeater belongs to the first port of the USB MP controller and
the &eusb6_repeater belongs to the second. This is obvious if one looks at
e.g. the CRD or the Dell XPS where only the second port of the USB MP is
used: They only have the &eusb6_repeater and already specify it for the
&usb_mp_hsphy1.

Swap them to set the correct repeater for each of the USB ports.

Fixes: d12fbd11c5a3 ("arm64: dts: qcom: x1e001de-devkit: Enable support for both Type-A USB ports")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
index 2d9627e6c7983daedba87619ba01074ee22b43c9..a3323d03f644e411c472305f5cf3482ecbdb787c 100644
--- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
+++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
@@ -1474,7 +1474,7 @@ &usb_mp_hsphy0 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb6_repeater>;
+	phys = <&eusb3_repeater>;
 
 	status = "okay";
 };
@@ -1483,7 +1483,7 @@ &usb_mp_hsphy1 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb3_repeater>;
+	phys = <&eusb6_repeater>;
 
 	status = "okay";
 };

-- 
2.50.1


