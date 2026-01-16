Return-Path: <devicetree+bounces-256142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 19174D32DF2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2241F30286AB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DF1399011;
	Fri, 16 Jan 2026 14:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Au6OobVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C36A3939B9
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575058; cv=none; b=FZm9vNU9Nbt8cPpDRezReRNvaffJy219rI8/rnqejuFYIf3rJwYcZ9M5UTyuDYDnlDrFTGcGKyoSk4pbYUc7xYqATqj4VFpqSAubWT+rkykwQxl/0IYB0uUBQXFHFfdjn9bRVrPVFUovo1cJycZXI04tbwwzQHsMkSgmimKQhwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575058; c=relaxed/simple;
	bh=+zpZu6bjdZvKTMbOLVjTFjC7p+2hajSt1lFZKg+qsKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eV5KHQpXW1Bkj3nDHpXuRqRLlWtfHsZoOjeodpMpWddPZXTFtNFI/tdXWF3zRwueywQcp4NBajjvJl1rWARR2VhAuOtzL519efeHuGw1nvzswfUMPTr7NN3wdP5zsuxfzzQ/vSkKytuBOh+seU0/MY/8AfPSYAQyt0kN4ClIv6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Au6OobVI; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b8010b8f078so352143566b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768575055; x=1769179855; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NRdWStIWzRh0nMLcrgJX9j72ICaNq2gbItnjEMospDQ=;
        b=Au6OobVIv/ws+D+Y9xNfpoqNghrcMbY24db5QiBxgUZ9Ae0taKpS8VKD9xphSoDaY9
         w3KccMRsDNPu1G4FijeyaptlJ7Eusnihz+lkSJ86Eph8ong3Cmy4GHF6JYR/F2Qgf7KT
         6oUgKsJh4koPmsuhaM62ab1Fiv2JFPk3gXPbVb4Xkp35GCtsJqvIiDiUBrN/c0IKehow
         hTXyoWaPYbjCixcaRDmjvGhzKC+jSIeapV7r06O98K0S8kw81mb7hd5D/8qYKOTEzU8f
         sLGHu+87c2szps7PLg53VP0uapcJ7aeGY6Ycn3Hlbt8TRUeJeb4ghGagNGMZAvrlYC1n
         wxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768575055; x=1769179855;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NRdWStIWzRh0nMLcrgJX9j72ICaNq2gbItnjEMospDQ=;
        b=rkdmC+cm6nA8UcjBLSYkaUITMgpxT5oNI3vWO2g10OeaGjahRL+MEFs6prhFt9iEdu
         9Z4AVhVG4hHQRtLpbZe+pEzUdpV0CCk9qJlFaQ+18ERBe+Hlw+swFWmNadiFHsL1XDzu
         QlvypYIZz8cA1407cY3xiFSu7j761k4uZPBUzHXfuveIfr+JMrsVFA/VCgajI8ZKgTrx
         D0+4BUAVxb4/eZnTZgstZM2s+hssdxxGkqoYhll7EPOH1E1jqibpfRWylwni8aBpSNy9
         NfkOYMJRrIL4iU+Vc901/xzw6m8hQDnwpG/GXF5IZAZ9hABtTlLGIKVB+iZ5fyC0kWrz
         NNLA==
X-Forwarded-Encrypted: i=1; AJvYcCXF1LWPd6qylE/5pE39EEDPcnBIUHkoeJtaS9nx2DMdLlgTp9mSh2pQ7eEbOI6nE3u/vxpoD1zhtsMf@vger.kernel.org
X-Gm-Message-State: AOJu0YynVyI+EqzGiKI0eDXMudLG8G8Yd8SGaEf9NxkFIodaEJNg97Ia
	/ibTyFqqKnRdzxoeMZzFcydYW91ihxF2X4BiNUwwKWHRR7vxk/p0TL6JU+9cIneCGZ8=
X-Gm-Gg: AY/fxX5xEfkiqUc8ko6Z/n9oEX4l5Qn+l8OsJnv84ikdmrmn4YyvcXhY9Jg2bpMw4SG
	DUs8jPdkRXzQupVyFSdCqcOPQFy2CCzaBZdrVdpMiqtwc4HO4IXZ3EA6ueLc9b6B+eGaf8wA0pc
	b0+TvKHYgsAdTFyAttMWZLOPAIPkiJHzERa88j/VOI8ZFkPPwwXC5bkKv+amns7KLLsVrwoMaoO
	UtzAHn4wLxtesbQUYJAKsvFbKVxpK4y+KZNBZ85QfJ5jd9FGcw3537xFoHSL0fnq6WB0DC0ax5Y
	d1p4pQuM9+Y+ldM8H0xBKgvjsMor0K32LgKo+WqdMU/jaj0Bg6Ced4cfyi+NccJlwGq991/bU3f
	N7axOvci0QUqK7m2p9O/Y2EYz+bZ+PCOWTQlRKMEQk+muEh0MlFQ5b94wgG4Q9WJOqMhXa2hVQ0
	EB752BdMzeP7p40XQkmjke0dFTDxR7Z6HeMNJWDBZug9PkmCX/k+ciU1ecPEPKDkY1
X-Received: by 2002:a17:907:1c1f:b0:b87:2abc:4a26 with SMTP id a640c23a62f3a-b87968e2de0mr245353566b.14.1768575054734;
        Fri, 16 Jan 2026 06:50:54 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdab55sm2699427a12.10.2026.01.16.06.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 06:50:54 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 15:50:51 +0100
Subject: [PATCH 5/5] arm64: dts: qcom: milos-fairphone-fp6: Enable WiFi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-fp6-bt-wifi-v1-5-27b4fbb77e9c@fairphone.com>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768575048; l=1617;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+zpZu6bjdZvKTMbOLVjTFjC7p+2hajSt1lFZKg+qsKU=;
 b=yLnNtWAdCAc9wPmimGKbGRUkqiPT3x0pVDreMUTno30IiB6BLzkET8WHyplhqPkv6/qvjbgva
 Ott1WGC+aPcCkO34lZRKnyPHl8ZSd8JFw/f1C/sfvAKNwm3xAzTxxFG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Configure and enable the WiFi node, and add the required pinctrl to
provide the sleep clock from the PMK8550 (PMK7635) to WCN6755.

Thanks to Alexander Koskovich for helping with the bringup, adding
the missing pinctrl to make the WPSS stop crashing.

Link: https://lore.kernel.org/linux-arm-msm/DBF7OWAWQ94M.FSCP4DPF8ZJY@fairphone.com/
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index cbe1507b0aaa..75f2b3a3e572 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -232,7 +232,7 @@ wcn6750-pmu {
 
 		clocks = <&rpmhcc RPMH_RF_CLK1>;
 
-		pinctrl-0 = <&bluetooth_enable_default>;
+		pinctrl-0 = <&bluetooth_enable_default>, <&pmk8550_sleep_clk_default>;
 		pinctrl-names = "default";
 
 		regulators {
@@ -704,6 +704,17 @@ &pmiv0104_eusb2_repeater {
 	qcom,tune-usb2-preem = /bits/ 8 <0x6>;
 };
 
+&pmk8550_gpios {
+	pmk8550_sleep_clk_default: sleep-clk-default-state {
+		pins = "gpio5";
+		function = "func1";
+		input-disable;
+		output-enable;
+		bias-disable;
+		power-source = <0>;
+	};
+};
+
 &pmr735b_gpios {
 	s1j_enable_default: s1j-enable-default-state {
 		pins = "gpio1";
@@ -962,3 +973,9 @@ &usb_1_hsphy {
 
 	status = "okay";
 };
+
+&wifi {
+	qcom,calibration-variant = "Fairphone_Gen_6";
+
+	status = "okay";
+};

-- 
2.52.0


