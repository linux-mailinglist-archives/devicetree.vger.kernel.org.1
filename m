Return-Path: <devicetree+bounces-249703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CCECDE2F5
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 01:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A578D300888F
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 00:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2D21607A4;
	Fri, 26 Dec 2025 00:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Al7vo+ms"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF562E63C
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 00:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766709574; cv=none; b=YMzB2mKQ83ft2tHhd+6x7uphI+30xTYQuPNXAzVj1VgaGBLes/yPZbexM3hqjPzpGPdPUNjJ62SRgOKJIK21lGKB1GFIp2ITOfcCTH0w21L8gxrrAsLsflyrUvh/SYY4P8FIqGREWIZ0G7saOM7Q8PrBTUoWDkRkGuXSf+dM5bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766709574; c=relaxed/simple;
	bh=rqFd2l1YfZw44O1FMXMHStYrnVjpIY13jAshnwo2sTw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PCoYTb94xNj+M7rbMQRqjbgjBdERw1EdD6GBlZJVTEkHTzY0CGiLKODhIAQ/R0dj7tJSn1Td/IbBVt5yJC9a1LwVhI184p4A4+DFnY58xiz03sKORVLgJ9zOQTRZytimOIflDF3/Dl8xYKptJ0s+zSx0Erm6f8jCZti++2AMlsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Al7vo+ms; arc=none smtp.client-ip=209.85.208.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f194.google.com with SMTP id 38308e7fff4ca-37a990ec4e5so7309811fa.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 16:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766709570; x=1767314370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p19WqP+sSUrS54uc580t8JVdTnmts4rYJId0mLI6KdQ=;
        b=Al7vo+msAr08zsYetNJlPo9mim5oZRjGsJTUj337HL4hHW2kwY2jymBCkEVARpTZvF
         QcIePprTuh3e114i90TSmR0TXLbjUlhYZHTtFbJipV+y4zU2s3v8tN8YeUflcuaCKufO
         eia1mA+062h1naHvuK+Xe9XwDHI5s7kmc+Ve/DHVW+QcV0dy+l7wbTS0CmYBYm1qcH+k
         MuVR5FyUsaOl9FOjU5Ii1sobIea0ZNmfNOJgbyG8VaAiz8Wetyx2OEmsQb0tlFpkUrlV
         o4Mr7Iudm0QVHNzzVEzqGUHvJdQdmN8Jn/iAn9zCO71bXsolwjPyFNz72jaWldE50SmA
         uaLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766709570; x=1767314370;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p19WqP+sSUrS54uc580t8JVdTnmts4rYJId0mLI6KdQ=;
        b=CawkTyStkC6muQq9dKB3O21ow/20njbBtj/US4pnTVxYPHlhmINR3GQyak1o6G7glY
         p3hN8BIVYTsM5lrGUjb6BRiBPTVXcGPFU4uBGhBq/OZ1KBV5jC6WuR8XRwKowQYSHdx3
         JBiSXKNYGLrbNljN/KY4QF1xZoNiojoSvsAr/fiz3Zp+daoZ7CX332KMS/02l04Az2lw
         /2mHb86FClWWTPE/+kYA63GDlCQzAL3lqtltNSlKCnuWqhSFp+H9LxhS0nHXif4i4vED
         fCyYbcBXk0wjKnDkEe1Vry3tdALTGz0qgVxEv8MYxl83PI342It5NA8cSUCaf0N1vtJP
         Qg5g==
X-Forwarded-Encrypted: i=1; AJvYcCUN7EWFXkbC+h/rCnBj9zC5xfm4MPOIWG6FCQOWPKLyktLdxeq6wUSQ2WVCkpEikJ5e8zG/F6fWYUIP@vger.kernel.org
X-Gm-Message-State: AOJu0YzKrUILv5Tso1M5gLy8b2xTSdFoJp6xKefjbBP+1o+tSxn/0eoa
	46/YJUtT2+Z/leQ6FHsGPUTjAj88FIsO/ImeFp7eIO8JF15JUDIeuflXKcl9z3JVVgg=
X-Gm-Gg: AY/fxX66aGQHQfI94WoaVyiNpDJHc2VSbinnWbV2X0FMM1oBFnF5iUXc3z/QLxrS4G4
	42dyrEa7A5gksAFS534sSXTrCf63T+FX5wEWbM1MrMgki2rDU+wDwt5qFX2KLHElzQryFR8eYEb
	wYSD+Qmo0061I/w6+7tlznO+HotKjThasW+iWgZLk4boF4oCIt3Gbh5KXwWRI9A/Up4cHA3w2MQ
	SOt6Xh0g2dXybj6Pks53ec7exS1AbTzaCrt10U0s9/7OSmM0eCz2EVCGLNtMZpvZy8vL8AysWsa
	Yc0/vFJP7hrnBFYUevhY/l4gjcUsxH6AfMPeJY6+jZqB1RQ2bkY38ie9CFk5yfApoUpr9/cWC2F
	eaaNBNW2ND65iPaUacUCJLmN56zAQPgItDamZ886JWeX7Jj20JjRevGaWcsuM6jBoMJ5+V54iPw
	nffmAS9dy6tXr21z2dyDy7W9EsA/xb3be8EqelNMbNTaCV1Vy1lkFB/g==
X-Google-Smtp-Source: AGHT+IEeJ4dBn/6zZZYsH+vBmg1tZ3L3GoSwiXL4UhkuARiWBKJlDKKWuHs7JA29i8nEZFcHN/u5qg==
X-Received: by 2002:a05:6512:3a84:b0:592:f383:3aad with SMTP id 2adb3069b0e04-59a17df4092mr4515379e87.8.1766709569795;
        Thu, 25 Dec 2025 16:39:29 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f477sm6201283e87.71.2025.12.25.16.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 16:39:28 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Gustave Monce <gustave.monce@outlook.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: msm8994-octagon: Fix Analog Devices vendor prefix of AD7147
Date: Fri, 26 Dec 2025 02:39:23 +0200
Message-ID: <20251226003923.3341904-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Trivial change, Analog Devices vendor prefix is "adi", but there is
a valid "ad" vendor prefix of another company, this may explain why
the issue hasn't been discovered by the automatic tests.

A problem of not described compatible value is out of this change scope.

Fixes: c636eeb751f6 ("arm64: dts: qcom: msm8994-octagon: Add AD7147 and APDS9930 sensors")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
index 4c983b10dd92..7ace3540ef0a 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
@@ -378,7 +378,7 @@ &blsp2_i2c1 {
 	status = "okay";
 
 	sideinteraction: touch@2c {
-		compatible = "ad,ad7147_captouch";
+		compatible = "adi,ad7147_captouch";
 		reg = <0x2c>;
 
 		pinctrl-names = "default", "sleep";
-- 
2.49.0


