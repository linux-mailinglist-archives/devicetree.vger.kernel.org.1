Return-Path: <devicetree+bounces-170289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9895DA9A6C4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C399517764E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C9A223DDA;
	Thu, 24 Apr 2025 08:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XvE4Yyni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA822256D
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484423; cv=none; b=dmkxn1gPYm1T/bQjxvBHSpg5U5txs11twLfkl5IeI3S0guC7ZFl3G/rktTO2EcWmoCPt+t+ig2VjVNnE5KSdjRXvjbOFJszleWiXmB6QHJAKJrRuudtUwRW8jTbGK0eDkCThv0BUByF67l20DcKYeEGH2ajPGivJiCidpi6ZksU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484423; c=relaxed/simple;
	bh=I97E3x+4QGH3F8HH8iKxf6zuq25b9jMkkXtPCrx861w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SBXxm/JMBfmA04VvZyaEXTUaiUEU42xaer55ITDglbrT1DTwWvgOcbHzVXbWOre6LVkwI2XahJxnU0LBRSQOlTt5Jo2so69hiudKfVAJB1k6ZwrPnkCVAelmjXMeSKmNPVNrOwlL2nMQbY7nVb8Fk0WKLaPYG6prMuWHka156rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XvE4Yyni; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ace358c4d35so8443166b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484419; x=1746089219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=InmVeShwvVjzvGgHpHUKVWXO3tEYZy+95XoB/RnU86Y=;
        b=XvE4YyniX733luBoLe6//HxXMZzjXCzCRNZ7H+PNRDotYycGEw5VfU+a3Grss7jU6A
         cjvdWgqHYbrQ5Yl+nTieVDuaJNvVdaASkpbBu3HQtA28DoYmxS14LZbdgZ6LPMxnJbp7
         eVnZTeAOiFyl1Z5eFtz3h+pSFZ+vGPf3iQxe9Ir8rdk1WVAj+ycxJZirCA1LSuVMOFo9
         tSY3n4FFx0bVb4otbPEJ3Ace/Pn/c8/QdxZUv1FV/W5FRkKrRErwCYyUM8FuEiv2+RVB
         CLznchfIvkb5KYmmEHW1rVM6BeIOsbDYMXV46zHEpwgwlFzi4RyOIvbhQapyOa/qZOGh
         UxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484419; x=1746089219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=InmVeShwvVjzvGgHpHUKVWXO3tEYZy+95XoB/RnU86Y=;
        b=DLJ3AgeUCG3pikY80sIJtReclN47XvG3DIZXVuecbPaRSlnmi7ZkaUFT4JzrV0QlK+
         6W6yJfiU9FXSlAOHEI8mLvemOxuLEoCqhunFyzS+u2nz3l9v2C58/nRwkKkiD2OjKy5J
         qhz4zXsdLCD5XnY/1RDTbj3WtEf9xTIS2oFi9Xlq9cvkP+eEntlJfjajhsxXyJAGUMt2
         lZ8oeCUdsx0J7r6fDul1U9fkkRPN56liTiLFMWWU6p/IRSv4bB4dUfN8M5jz2WdfzZ8W
         N1XpwUtf+vZQkjqle8+DoS80NhteKqt7ot523KC6Vw0fdgsywVHhSB9+nHXb50npOkme
         +b4w==
X-Forwarded-Encrypted: i=1; AJvYcCU/nlusG7rIzpzKloGJ0GTlsQ560J3zqCys5QxCuEpAvpB+dPUV2bnNpUKzEdOMnaSFf3WPWt2oi4KC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx93c7OOB+HvrtOvizZp77SCf0SGMSox1i1QJDtoxCCEqdwaZ5g
	TrtKhrxPcAk0hHxZqUpAQZOkyAefUwwbq/qapAQTpG3LCeXRqcmun1S0kaKtxC4QCW2mH5Ej5CX
	A
X-Gm-Gg: ASbGncunWQBlkoVCdrj4d8nJlDysA8K2wbPe+B6nqcpt1hSm9beHXHwT8HRPhHD6ZP8
	OkUamIiB85MNhSj+0wLRGNqHfz4buLuZY9ukB9EVUvMMh5YYejmazLsbZmzCduT7MQx+7vuYZXi
	5tXEq+1cC8F2za6Fr2olTfWGIfcpFOAmFFbTn/dD2w/SfszCTOfIRFMTvxJBs31X2xegH0MVs/y
	GQhQWkruXxGKOaKaq73GlfGlX6ZeUrp9YMvO5kzXDXdhQyyiM6180af15ql6/Am6tWCzFtselaC
	1HpSzXjN4QAV0bPcoWpDNK04Mv2lSoPG7W9tankAzEjIfbowPQ==
X-Google-Smtp-Source: AGHT+IE9+DPre4j2x6keFqgEO7PT+Wn5fGJGtZZ61C/F7fDAucCVLJyYO32bRzby6KLv1OyEu9lE/w==
X-Received: by 2002:a17:907:3f87:b0:ac2:6d40:1307 with SMTP id a640c23a62f3a-ace57429fe2mr61424966b.13.1745484419430;
        Thu, 24 Apr 2025 01:46:59 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace594b63ecsm73139266b.0.2025.04.24.01.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:46:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: samsung: sp5v210-aries: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:46:55 +0200
Message-ID: <20250424084655.105011-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  s5pv210-fascinate4g.dtb: wlan@1: $nodename:0: 'wlan@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210-aries.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi b/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
index f628d3660493..153514e80c9a 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
@@ -855,7 +855,7 @@ &sdhci1 {
 	assigned-clock-rates = <0>, <50000000>;
 	assigned-clock-parents = <&clocks MOUT_MPLL>;
 
-	wlan@1 {
+	wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gph2>;
-- 
2.45.2


