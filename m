Return-Path: <devicetree+bounces-150833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DEFA43AC4
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC6E61679D3
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A430B268FCD;
	Tue, 25 Feb 2025 09:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGcT2MlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06722686A7
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477570; cv=none; b=peABHhCK8FELAtKUkk/g2F8cf+o06Gg/c+bHBnOjfN2hRlQZYMJsXwgqZC80AH8OYkRxFEkEaVCgi9KgFWXKEpqNIM4uWHhsHB72fl91t/jMW1Nc1PjHQ8SZuiV1kB9r9x+Vza/u8s6uVRyOYefhxF4ByDtRgpBGYjILZ3uERho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477570; c=relaxed/simple;
	bh=67V1UZ5je163oIRGK8VHBL/lC6kfzMUCzZZv0swusmg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X4RW/TLcBb3CiNvTFm7Z50mJFfrYaPMVXHQvkFYrEQ3pnI7rowRczmpgtoJR368cMIGftu4fqNpoWx7/xtz5cdFR1mFWj2HDqcxoTRJuBwK9ch9GgwWRBJg16YnMG06QCjxp08+HpydEu21DrzLF/VR6lderd71yujnV7QN0+kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QGcT2MlQ; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-abc28af1ba4so47048366b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477567; x=1741082367; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MNRBwUyyiaQOQXyGOlqtxLAExVtyS1NxlvJ8en4/bhI=;
        b=QGcT2MlQ8YvKTdd63pqAVbhc8LhoW00VXaUlQerWBxfTx/ynPcPohIGU2cZu0ty/YY
         wURQ9ITPRULz7rvIoGUDpMCr+n5LR9k4+rDSjL8S0A2TDXkVbgtBWLAo5kECD1R1ORb/
         nLhMG8p5cg3GUbnqEEbFNiyhcatQUvEHOzAwmE1veWuhtRtqII3/cOqjP/vgV+7+4eSe
         SP1wBh8tQd8tvs9MBWwfCglh8Xlkh+/Gu4CCehwv0v1Yhx37MUu7ERiH9f+Fezh/o3rV
         +XbFn+MZ+9gOHuPW0qT1/OSWnceHcBUGMhnsVC9ENNTlXgU57MjsHCnjiljwYN1qi78C
         HXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477567; x=1741082367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNRBwUyyiaQOQXyGOlqtxLAExVtyS1NxlvJ8en4/bhI=;
        b=dBDvoCKxV/LIu8kMbVEkGbKcEODEH5kkHzrwZLjdKLtcPLM8o2h0Lxhl5l6DixEHty
         MTUhUlvEG2+o9NPS/NwDfreGDfVYnyg3zT8Ql3B39hVdQwfFCuBLqJ9whXyP0MNHVpa8
         5Ve1DJY7aeDZpnUiC8mahFYc+O478rncQelY7PEoHvdIaeKlC5tbJChcgJw1BZRRcQC+
         YsuJzi+AXSA6mvoBZ1kexN7xt4LLj2JFaLeqeEhNU36DNX7XQWlpR0Jb6FEsfDHC371U
         45bcjkCsgpEuWfQnhSfs+UplNlGum2dg6nz7GSJoATTsD1919VWeaUve9vVu9ShYG4NB
         /jRA==
X-Forwarded-Encrypted: i=1; AJvYcCWf2TXOefsmr1Smjo8tLu2WaWhJ01ZNUcYw4mi62bhzmgtnoKBz6dOBqh1lbt/adUCfwg1bceq8XwAq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl1zPYOdXD0BYv5GDts7zqD0XuKQaN7I59DUVP0w18sJg7GhoR
	R5jl65tt/Vecroia7Dk/YKM/HP1jOTrTAz6T+Z/sKziAZZR/ouBAWfClXz164No=
X-Gm-Gg: ASbGnctJZ2V7O3TBnNHrnS1Wny15Sl+i13nO9ZwXvL0cGQHn8ifYlB3mkNX+5mvyhoX
	e3/1c9hTGb2aU641Fyi1jkgSoa72ml87sNhXDlbYehHgnvlHvw8sghkHJ7XWgdqCxMbphvk8SmU
	agX4CGDNTH70PjeKXaV6esaG83jK9lFZ0sV6y5hyZ8+LaYV5bocBCVBoIHZ9ubdExeHgjUkWJt5
	VmVqeowM9/A9UD/Pr4IVgCayLFze3SvbPzL5efrhWkxVluEWPcUPx/nBEuRJXcL5crTLXVQ31BT
	4DelD/kEcEyCsYjUiE6gBIz5cmjaGBeiRBG6Q47zK6ad23yXOnQ9PquMwOW0+H0uLMQba9ISDut
	j
X-Google-Smtp-Source: AGHT+IE2RuCZBm00JOgoZXgMthpgNV5BBMI0rbdPxwD1Ti7ivMzAn5TwcRdBQONc6VSuVqGeRAaZiw==
X-Received: by 2002:a17:907:1ca0:b0:ab7:63fa:e4a2 with SMTP id a640c23a62f3a-abc099b83bemr654595466b.1.1740477566766;
        Tue, 25 Feb 2025 01:59:26 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d59391sm115164266b.56.2025.02.25.01.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:59:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:59:04 +0100
Subject: [PATCH RFC 07/13] arm64: dts: qcom: sda660-ifc6560: Switch to
 undeprecated qcom,calibration-variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-dts-qcom-wifi-calibration-v1-7-347e9c72dcfc@linaro.org>
References: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
In-Reply-To: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1035;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=67V1UZ5je163oIRGK8VHBL/lC6kfzMUCzZZv0swusmg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvZRs1Ihd964DJcEaX7biRqppqmzMMhBMo9cnc
 PV8E15ZEB+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72UbAAKCRDBN2bmhouD
 1/qAD/9twUiJO4M3SNeggoEZioHOnmueiPAl52+U52H+kXid9CAaEMmlRs4ROrfNZMCtKomscbt
 JxZbORXQlHnC7xxKkKwzsXBlajblfsipvj9uxTdHe1NLH3EFAmWzm3cBHbdqKxXWpTrxMtQQF05
 BvXkJgJWDLV1Jn7gywqTDJuj4zTN5FcXA+A0GMaezw3J+HWWdSeQ39Z2pXQAHs1rVFSSd0guyH1
 J3XfVDwvMCf0Q9R9QKW97yWLPCNPiTfsKLI8OQfzKs10y6M6bR9yPC2lOSh6sO43xCNjtpjmxMG
 v8DPGjJSHELB6pgKgT+a/m2/jvTf8jf4d3Rxc5+9OYXUz6qjAEZCOEMeezUXkyEauYDVg8cBBET
 ajIaQyst5MbnYPH0t+qJ2IdcciEjiWHBvkPnEBvC05cCanHRJJ2C9qjVttdYE2SzhDAzbxrxbJg
 Us4JKA0snr1lF2BfUVopdY0vIuMCEuz6azoSsz9YGBlKy9oON4aabj15rVW06zxh9O8IwsqBhze
 smQW2sIIE2QRv3jU3NGkqgWDFyoCGlswWtn/8ufdqoDijtYpD70pjZLCPkvIc/sqfqaH0VNs7HI
 OmMte7zidHkXT6Jr96AQkU4yc2j9Qvm5Q8xol5yobTNBNxJ33zjH+saHDX61nTOcLFdewHbLAV1
 3M3MhKbDnceQkLw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index d402f4c85b11d17dde80d17964d1f45767645ff1..4a51076890694dc96c4a328ca1d35bff8f0fabf4 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -507,7 +507,7 @@ &wifi {
 	vdd-3.3-ch0-supply = <&vreg_l19a_3p3>;
 	vdd-3.3-ch1-supply = <&vreg_l8b_3p3>;
 
-	qcom,ath10k-calibration-variant = "Inforce_IFC6560";
+	qcom,calibration-variant = "Inforce_IFC6560";
 
 	status = "okay";
 };

-- 
2.43.0


