Return-Path: <devicetree+bounces-226350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96037BD74B1
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:43:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A050C3E8CBD
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11A330CDBF;
	Tue, 14 Oct 2025 04:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lg236G2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9E730CDB5
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416961; cv=none; b=gcswmjLy2Ek7pTzlpiuinFrJUGFO+3S5gx1dol0bB3VF2jlY3flMnkWxwWMktsbBqlYypO/gp53x27cvT/4h+OrWYsGxqjA2X0zJf0u1OZWtvyk9UKUTVjYASknPY4Nzk30wLGYNbEC00thHbWvjQi/S2ogssComsh+20ELcaaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416961; c=relaxed/simple;
	bh=LlD5sufEhyxr4hiE2SiwlBEWbdTnSj4NpL35wgOf1+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YvtGH18P7fjKE5KOwvSoKS/8z7o84ZpBD5fjp1ZtJH2x1g2LHOykBPMTdyU7wEVR0Hcj4aN1lzDA1pf71tEwaGFCwQHD/KIM9aSRpiuiNUvD7SUHhPn0WUOfHAe96UAVViQBX+htUchgqFyjGo3NFfhV4otyjTI48Ibv19WSN/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lg236G2g; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-793021f348fso4453867b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416959; x=1761021759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMLkMMr3UMj3Te9j9S9X0vH8qBE/08K7A/XwbJpo+ow=;
        b=lg236G2gDklfAaFfcTHr63fFCctum4RespVD2LYXjrqG/H/cwk5zyY7T/hPeBlgLv5
         55VFoYXMQMbHYkgsc92coyHmVtmIw9jtsNj1Me5oJou5DwSS+Iy4Q2L6uRjh0QL47Ueo
         nt+rQGj/Uv58AgUpjQlIXaE+xI7fV5HlbW3t9KL2ub21zEpLelXMgrzw4C38GlxK4BGK
         Dvo72nN4//U3qPCI+yzVklChn0aiXRsFs9dUJJtMuVG3cYCSFNH9X2Wze81/Zu3Y3C9n
         NCm52mPe+Q9JeHMxbzWzs/6Zz1mONVigGvNQytZ3XqGi1nkcPR9lTxlG6j4WHFkCrXdD
         6b+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416959; x=1761021759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NMLkMMr3UMj3Te9j9S9X0vH8qBE/08K7A/XwbJpo+ow=;
        b=Nk86HzweIJcrwlX9DkmoqzGTgT7LITAd+ne+WLxqsYLOkGTHoyZTLuut/o3Q5NoKMp
         gqB6Vpd4Iqf+Rga/CNwmY/Lh1KU+Au9mXbpo1DAFBfqqsuwsFR7YHhSaxw8pNTWjagDd
         W8q3FjOXYWJ+wCb1CRykxLcTHE65hHF7kg1hgquoLQOgcrQ0Iotiac40pEeWLIBeAtsK
         omy+PBfHGa9TxD+h7rq9qXQX0s1AoF1FdxFxgpGo1dRDPB7TFGcGTjwQe0ySvOumBB+7
         XU01ww4jy27SlWYe+/GWzPPG68Jne08kU71zj/Br/bzB+s4QR/4GfOr9uCDdj5T6wlae
         v8AQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0F6ZOH335o2Nzd/dF6NOOEHw0usqO1/cbAkoZ4Dzubcx+VewL6lPgriUJ6wI/+WahJx3Y6Wgu8J0I@vger.kernel.org
X-Gm-Message-State: AOJu0YzBfceMl3WgTnz2IPWs4JSe3FLZcROj5KqNWs6sKLLsfj+gijls
	XW8SxaDadQOaJsm3qiZWqlo5/iJiYDVN/1jI+Vuqnj/hEiEhlUy8uOFNtUF0pKS3
X-Gm-Gg: ASbGncsFnNHbr9rtUR7SLGeFxYI39+96RXNoTelaHURS1sZhSdZl6osL5UOv4fTkQ8D
	tYSdP04RvgjslA35E+iknU4KE1m1hxF5jNvWSTF3IXUz8W/NHHGFBsgHUDir+wiHda0ic/9ibMP
	kHKSiAjCpMbLf7G9aeHXGFL0ydwLJv9SE68RzS0Dr1mDKiBBgFRZteWJ4GyAwKjKpcEry8zyAqZ
	kIW5HzpYaLGP60HvPm4Gu8SG2jseOYShm3DOSxCLkoN4NZezoQzSeNixjc+S+4HGE43SFOynuWt
	e+NzdC9dV6Foj3wO17qkuUdkWtHvfLcTWUVkhoP8uqENjhwuA2TcxPfQfGGFyWJlRJWkQPMwrnX
	K9Ck0/22nr5Og4unsrIt0xU5wuPQSexZGY0jG
X-Google-Smtp-Source: AGHT+IF0dSCedgYL8Yw1vWwLQ85LNjU0mjT4cKI4EmBUbpEqlOKPPRO4D/udioZQ3fsYcVx9s0eR9A==
X-Received: by 2002:a05:6a20:7347:b0:2f6:9592:9065 with SMTP id adf61e73a8af0-32da83e39aemr31193354637.30.1760416959465;
        Mon, 13 Oct 2025 21:42:39 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:39 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] arm64: dts: qcom: r0q: enable max77705 fuelgauge
Date: Tue, 14 Oct 2025 00:41:33 -0400
Message-ID: <20251014044135.177210-5-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
References: <20251014044135.177210-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Samsung Galaxy S22 uses max77705 for its charger and fuelgauge,
enable them.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index 96a8a0e69681..244fed27a4cc 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -15,6 +15,16 @@ / {
 	compatible = "samsung,r0q", "qcom,sm8450";
 	chassis-type = "handset";
 
+	battery: battery {
+		compatible = "simple-battery";
+
+		constant-charge-current-max-microamp = <2150000>;
+		charge-full-design-microamp-hours = <3700000>;
+		over-voltage-threshold-microvolt = <4500000>;
+		voltage-min-design-microvolt = <3400000>;
+		voltage-max-design-microvolt = <4350000>;
+	};
+
 	chosen {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -199,6 +209,24 @@ vreg_l11c_3p0: ldo11 {
 	};
 };
 
+&i2c5 {
+	status = "okay";
+
+	max77705_charger: charger@69 {
+		compatible = "maxim,max77705-charger";
+		reg = <0x69>;
+		monitored-battery = <&battery>;
+		interrupts-extended = <&tlmm 5 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	fuel-gauge@36 {
+		reg = <0x36>;
+		compatible = "maxim,max77705-battery";
+		power-supplies = <&max77705_charger>;
+		interrupts-extended = <&tlmm 5 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
 &pm8350_gpios {
 	vol_up_n: vol-up-n-state {
 		pins = "gpio6";
@@ -218,6 +246,10 @@ &pon_resin {
 	status = "okay";
 };
 
+&qupv3_id_0 {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
 
-- 
2.51.0


