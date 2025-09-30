Return-Path: <devicetree+bounces-222814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5354BAD329
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CC41168BBA
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDCB3081B7;
	Tue, 30 Sep 2025 14:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="QDzZKkIb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F588306487
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242763; cv=none; b=gZkyrMhawYGZF+SS9ArOyyQ7jsauwscU0w0kOc7AI+G5AJ5WUKh3K+18cqDCgcIS9kx8yTL3k9OfxkZ/wAnAVBfgaCpYm8QV+DJX3rC7WWWpTw6TkNqI2rNrjXZxR8OdohCytYlb8IUTjBPM9Z4Q4QknqiU4+uuTmWF43pAzZdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242763; c=relaxed/simple;
	bh=lvctC9UZ9/7NZkyWnJLbdkf1JYHTsQZ/REX9jctNvl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WTaewhegpN1Q89aVFQP9kdQqTdVT2TN9lpid1fsPF5ksBfJjosFoCHc6E/jIN52YdELOUw2zRKrJJ0yhsMYtZxNQhVJPBGTh5qwkiykgyYJgbfm/cdwTPkLYi3DpuoUJFRHiBOPvfWOQdJXeMsQ7/VHxI4gqzDzC8ncvGyqXNwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=QDzZKkIb; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-63667e8069aso1521408a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242759; x=1759847559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MPU0fkE7kS9d2V6qsy9O55PBYIoaiLsw1EoR/Hm7yn0=;
        b=QDzZKkIbXRNwEDkrjK9sOfU1fb57i1eVzYmJFEdm+z2elqzxdZG08b/sRo0LOKim4H
         MTlBiw+NGn8R8QjtxX04vCRnNN96iCZQrdtAekMsmSe7NRemCG3QNVfiwjSxpTiYDGrH
         Gg6hgQ5hJ3zVOZusozjXv/26mlnDqXR0igHV4ZfENu5gLld4i5027cbclMdTitf4gIqY
         /jjY5U5BsHj7N6Zh22GlT7YAtaqzs3Nhuw35ddqfHOUxBGzVETrr+fH+IJxO/eNF/77P
         RbfieerpwmlZ4d00Y6TbRvCYqKZ4EWRbpj8zFJW7qsmgQQu/rlG4VvQSNUPc7JRGLQE7
         ADpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242759; x=1759847559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPU0fkE7kS9d2V6qsy9O55PBYIoaiLsw1EoR/Hm7yn0=;
        b=g5dSi4gRpoFGkJD4IpiJF4JUVivT/UB2/ZftNHm0YQ1bGexW9CyDiNuhk9aY9zFImh
         Qu+wr5zGnHEAbNaxnoyt1tS93ehvzuzVfOthhHKkGMBDJ8LQOA9R+ztRYtzQOoDUEKVE
         6adLSgSppA5mu5Z5tGDhmwj9fXnpvN0SosYNWVQUy75LIgBmOeVvHkO692HJQlsTxlFh
         Hjp1oqMlZ5xmoIMuDzxhAekicnDlROgt5Epm5o7cdsiFSvM9At+NqRL2CPGPkutb9Eyw
         hbbqiWJyqdwZXCoYPXJGi+wv4I8zRWIrZiAv8SQRNZIoECVDjUu86CesEq4CXih+EN/i
         U1SA==
X-Forwarded-Encrypted: i=1; AJvYcCXNJIkMMikNskZrcrwrwArG+JzCCRm2a1cqkB32AkL2gsYrwYE3DouhMAvbbEJtUuGt5bmB1odpAuyh@vger.kernel.org
X-Gm-Message-State: AOJu0YxaDWhVXSiUdqWGNeqTGj7bSkuY6K60Rjzza7e38RVFi5omd3JH
	ZgI0d1M3Y5FD5PqT2DOdOZRT9vbdTiwirCvlpHuNURN9YYOSgDuEwUeBFtrK2RkExCI=
X-Gm-Gg: ASbGnct77q06oeELtWFZTTIoWrG0GpeJoeLRb1E1xW4s7i0c8Geh+FNJDCjOncsx9qE
	Q65t3zNKOEiTjp+rs7kcBeEOrfshj4Jc2TQ2xmE2dtJpxeURv1grGybWcxWnOogovG3ZlrW1IWl
	/1daa1T/6nr8FsaRf8FatM37TkvJ/a7dqQljc8fcp+DXsVff5X4M8s/YON6y9y/vJni4BugZWsX
	EwBvPfG9AwQMqUXmjryoUGpy8LDnMhvSWaKFPEKIK488mZbef8bgwpMVoALRpkux1gN9aosREGo
	lAPBSY9u5IHMEnOXZJQsxfPBpFzvegFdfOepMTdLC4MUTJi36OlBKAyQ4k/2RjIUHbUPz0OOvMD
	b5sPWAD3veP8xfxlOJgYxQZM7fIOWqbkZSXzwy8Ij7yo8493rfz1I5AL8YDNIZtuvS/1kClRo5v
	giGIe10/kgsunZSK98WTHSr87cyisW
X-Google-Smtp-Source: AGHT+IGT+tcwdtG8+Nk5QcSQLl/1P9H18xoE0BkX5+EFdQ/TDVamP3BKtsWgTbMh3TfkbM0QHAZksg==
X-Received: by 2002:a17:907:1c15:b0:b0a:aa7e:a191 with SMTP id a640c23a62f3a-b34beba9405mr2469612266b.57.1759242758446;
        Tue, 30 Sep 2025 07:32:38 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:37 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 16:32:23 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: qcm6490-shift-otter: Enable RGB LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-otter-further-bringup-v1-5-7fe66f653900@fairphone.com>
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
In-Reply-To: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Luca Weiss <luca@lucaweiss.eu>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=1112;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=msVLhRVtyqqzcb6CEAQvjXz9Vl2Le/8AL8FbBJzu/UI=;
 b=juPccTJVCdUljWzxuw8dM2AJoUPx5guCgbIJ2bhQkA33KFFP+NMXg+y9PPjFVdfpdX1bCr8Rn
 GjBR8tNb2ggCcjRRV5pNmAntGlg/BQjlIoMqleUHNlEaMY61XHIiFjJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Luca Weiss <luca@lucaweiss.eu>

Enable the RGB LED connected to the PM7350C (PM8350C).

Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 36cc67469615974c193ea3a9db1b2362869d56bb..b4c69dc50ed0f0b3cb45341a01c89210bd261993 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -632,6 +632,33 @@ led-0 {
 	};
 };
 
+&pm8350c_pwm {
+	status = "okay";
+
+	multi-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_RED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@3 {
+			reg = <3>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+	};
+};
+
 &pmk8350_adc_tm {
 	status = "okay";
 

-- 
2.51.0


