Return-Path: <devicetree+bounces-165777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2736FA856A5
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8ACC4C8323
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F16229614A;
	Fri, 11 Apr 2025 08:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="S7o0qsbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3614D189B84
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360424; cv=none; b=j1hx71r7DZ8U9h3qCiZ8u4y7BGcsOu0CFnKcwEle6sa8gXJkcY9CgeJfUJoCP6GHjBZXbMSkBYshpFa/qmxc4Oepn2qnkjEWV4m4IMTb6tPIHe550riEKcVcyj5JHW8f/JTvYI8QG3f9L/ZSgkEEkuLN5w3rYILxOv+T/qcjyeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360424; c=relaxed/simple;
	bh=YtyEfPCLhxuh+HxbSQ37x4q0L+ygNb73OUpvm28vAvM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=e2t234wgGaTOjLWgJYEtpE+1tsU+jgXSUM/F7e3Zl1y63jVhs7Lm3XWLHq7vAkljUaVxy3zx9TFtmNdnf/Aaa3ANcgL0y2FUOkEuO+80mW9VLhDUlJRM1+gtIPYAU5v+rRZ3gREpKGnbW17B3qU2efnCT4/nqDcDomzRgOY5AEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=S7o0qsbP; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab78e6edb99so248907366b.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744360419; x=1744965219; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5/OEIkhs5i/56iKsf6Ln6xmh08Ek/lCXrCNvVIOB0uw=;
        b=S7o0qsbPxtvT0a7pl9GDP7ZK/zfsxgYD4IkQSDdnp+eIYceMiZTuhQdlL/auXdc09e
         Pwe9SYFobseAe2ucfW2vTgWbmPQH+UjZ7uAGeVWU6/7BJ8GLwu0WouyEfvOAUlQcaLcM
         BizmjRLBzKQ697xhkajEKnkggAhhEYNHhnhQ/D/FOXvsE7mdUk/6hpezL+KbEjSbZxUg
         KmBYEoyDHfO04K5n2yEUTW4j97awngz+MgqGS+UnFkEavwIUSRjHyusdZTbsL+wNclp9
         fZcgIsCUxeRE2goKvkqTD7EaKAOtyRRwG7cXNiV7/HqIlPlVCKiqKKh4iRVrAS+5+HvJ
         9r8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360419; x=1744965219;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5/OEIkhs5i/56iKsf6Ln6xmh08Ek/lCXrCNvVIOB0uw=;
        b=bn2iMA7/haRX28uC/L6J1/XPtc9SzvMXK/MfGdfd2FwiqSNcVM29szhW0/dBNP06eF
         iximjfCLhkp2JuXDwOoytSifx+O4IfvaFwxlD2cB+T3LA8fbiqcuxXKXP/TqnvAsMTmh
         S5TCKAaC68t0jC6vP8kMQ/PHCVsSpJcjGykE4DasCGKiNaLHM4ZWrFX2gIk8Zv6Kabb/
         Yonj0/qFGDoVPrHJC6W9W8guF/JThfiLHcsSXOoLEpYefbpKvwCkJ74JN716oPcqEjSm
         nxTubP4TSAu3hlcjRR3NWjQgaC4a5oQsCX2heUdtiLrMymz0uyilBsZmsPGCpca2eNpJ
         kt7g==
X-Forwarded-Encrypted: i=1; AJvYcCXE+uWyvqB3mIB68ftO6H5J/qQn1cOEIkPVSTO+TnfLYSqWH4rskgd6gbfWKRsZzcW6BG6onzpYhD1W@vger.kernel.org
X-Gm-Message-State: AOJu0YzURCDlmm0uGTskYqIr1ot8IPMyczkBwuX3Oblud8zy3zFiXNXn
	hXOli6TUIHRksizrKuwEs/xa0uCtpCD2eZdmI1Z+YGD+umPRtbZkjKZqna0um+g=
X-Gm-Gg: ASbGncvw9DBYtDAEb6qfg4I3kzoZQhMJ9QAfSMvmHp+aUWT/vF5NJVUMT1yrT2WHVW1
	8NSPLiiVV1U/06Q25jczWbNziHQ5GXOlkRxZU8WT71Tut6DUlscKPl6YYN7/GT3ny5b7Wx8RHEF
	VVuWboB7NtqLJw6HZP//n/JuXvDyKQXpuubA8QgNKWIMNHzDrjl/2Z1+THRItW8UIEtqAY9dCEb
	+2aLL2O9BVtcZWxK7unRdLT2jevZdPkNxTPEOe5LJwHb24kw2ypZSHxzGnINTmfBXR6gvIf15f8
	QFm8yzUdta6rvwquwpGRbDImOwM1ifrXwJLBmwiphIWFj/VXIc8gWpUK6wgrt3Wi5Ez7xGAUJyB
	l5S2cFos45QTgyg==
X-Google-Smtp-Source: AGHT+IGoM4A7Qtqtt1Dy9i6pdPwoGCXRAZYCNHk6wtIo7PyTKrh0k7tkODDWcluBWIFiL+qyGGp5HQ==
X-Received: by 2002:a17:907:6e87:b0:aca:96a7:d373 with SMTP id a640c23a62f3a-acad36c4587mr149028766b.57.1744360419442;
        Fri, 11 Apr 2025 01:33:39 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb2ee1sm417729266b.12.2025.04.11.01.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 01:33:39 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 11 Apr 2025 10:33:29 +0200
Subject: [PATCH] arm64: dts: qcom: Remove unnecessary MM_[UD]L audio routes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250411-cleanup-mm-routes-v1-1-ba98f653aa69@fairphone.com>
X-B4-Tracking: v=1; b=H4sIANjT+GcC/x3MTQqAIBBA4avErBtQy8KuEi36mWqgLDQjCO+et
 PwW773gyTF5aLIXHN3s+bAJMs9gXHu7EPKUDEooLUopcdyot+HEfUd3hIs81oMho0yltC4gdae
 jmZ//2XYxfnOj4vJjAAAA
X-Change-ID: 20250411-cleanup-mm-routes-7b9e92962553
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Since commit 6fd8d2d275f7 ("ASoC: qcom: qdsp6: Move frontend AIFs to
q6asm-dai") from over 4 years ago the audio routes beween MM_DL* +
MultiMedia* Playback and MultiMedia* Capture + MM_UL* are not necessary
anymore and can be removed from the dts files. It also helps to stop
anyone copying these into new dts files.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts          | 5 +----
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts   | 5 +----
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts             | 2 --
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts             | 6 +-----
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts           | 6 +-----
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 5 +----
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts     | 5 +----
 7 files changed, 6 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index e8148b3d6c50c670d6bc8045e42074162dc1c6d9..1089964e6c0d819e166fd5a959f7f1e6fe688d65 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -1012,10 +1012,7 @@ wcd9335: codec@1,0 {
 &sound {
 	compatible = "qcom,apq8096-sndcard";
 	model = "DB820c";
-	audio-routing = "RX_BIAS", "MCLK",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL2",  "MultiMedia2 Playback",
-		"MultiMedia3 Capture", "MM_UL3";
+	audio-routing = "RX_BIAS", "MCLK";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
index dbad8f57f2fa34575440caa7f0a19d5893efcfbb..d7fa56808747ae1290b884430d5fa5443bdd9be1 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
@@ -156,10 +156,7 @@ &slpi_pil {
 &sound {
 	compatible = "qcom,apq8096-sndcard";
 	model = "gemini";
-	audio-routing = "RX_BIAS", "MCLK",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL2",  "MultiMedia2 Playback",
-		"MultiMedia3 Capture", "MM_UL3";
+	audio-routing = "RX_BIAS", "MCLK";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index d485249bcda44055689b5556eec9dd057b92d0ae..a37860175d2733214f1b257e84d5cb4821033242 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -110,8 +110,6 @@ sound {
 		pinctrl-0 = <&lpi_i2s2_active>;
 		pinctrl-names = "default";
 		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
-		audio-routing = "MM_DL1", "MultiMedia1 Playback",
-				"MM_DL2", "MultiMedia2 Playback";
 
 		mm1-dai-link {
 			link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 4cc14ab1b9ea0f92a12a12ef4df1cdc37bf5591c..dcb998b8b05498d8f9a82ff9a984c1e237a61308 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1053,11 +1053,7 @@ &sound {
 		"SpkrLeft IN", "WSA_SPK1 OUT",
 		"SpkrRight IN", "WSA_SPK2 OUT",
 		"VA DMIC0", "vdd-micb",
-		"VA DMIC1", "vdd-micb",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL2",  "MultiMedia2 Playback",
-		"MultiMedia3 Capture", "MM_UL3",
-		"MM_DL4", "MultiMedia4 Playback";
+		"VA DMIC1", "vdd-micb";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 2b2ef4dbad2fc55b27fd176baf1b4205802e1c42..adfd916270055df0a957c573868302e0d77c614d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -777,11 +777,7 @@ &quat_mi2s_sd2_active
 		"DMIC2", "MIC BIAS3",
 		"DMIC3", "MIC BIAS3",
 		"SpkrLeft IN", "SPK1 OUT",
-		"SpkrRight IN", "SPK2 OUT",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL2",  "MultiMedia2 Playback",
-		"MM_DL4",  "MultiMedia4 Playback",
-		"MultiMedia3 Capture", "MM_UL3";
+		"SpkrRight IN", "SPK2 OUT";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index e8012205954e76627febda14ee51ecff9d29e4fb..7677acd08e2d176be932d3f726fe5602cf8d50d1 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -632,10 +632,7 @@ &sound {
 		"RX_BIAS", "MCLK",
 		"AMIC2", "MIC BIAS2",
 		"SpkrLeft IN", "SPK1 OUT",
-		"SpkrRight IN", "SPK2 OUT",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL3",  "MultiMedia3 Playback",
-		"MultiMedia2 Capture", "MM_UL2";
+		"SpkrRight IN", "SPK2 OUT";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";
diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index 26217836c2707ba2f7b0030c9801d7de3a797315..d6d4e7184c5603864668057de79c7497ad361ab3 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -445,10 +445,7 @@ &sound {
 		"RX_BIAS", "MCLK",
 		"AMIC2", "MIC BIAS2",
 		"SpkrLeft IN", "SPK1 OUT",
-		"SpkrRight IN", "SPK2 OUT",
-		"MM_DL1",  "MultiMedia1 Playback",
-		"MM_DL3",  "MultiMedia3 Playback",
-		"MultiMedia2 Capture", "MM_UL2";
+		"SpkrRight IN", "SPK2 OUT";
 
 	mm1-dai-link {
 		link-name = "MultiMedia1";

---
base-commit: 01c6df60d5d4ae00cd5c1648818744838bba7763
change-id: 20250411-cleanup-mm-routes-7b9e92962553

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


