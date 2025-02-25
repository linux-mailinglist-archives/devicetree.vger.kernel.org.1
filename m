Return-Path: <devicetree+bounces-150832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F4DA43AAE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E64318884C0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9CD268C5C;
	Tue, 25 Feb 2025 09:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eOM9LM1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E76B267F4D
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477569; cv=none; b=ns4bWOeuex2Lcmj4pgfltKZyxHkXFX4KBvVnsO8M5WFfOd8sxp2dadU374t+ivQz0373hmth7ukRdNRc6VwGPbuE7SiGhnuhEL8zXRL/+rUZDBDPzGROvvQ/snVfpyecIl9ynfRY04mMgDE/38cxNCANJgWbkVYWSlxxkzrOymE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477569; c=relaxed/simple;
	bh=upo34y44NKsvtuzn146+1YAIAifsemHshq1/RrDHbKA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o8V0k3hJZ1bPE/SeOJ5d07m1T/x5T1DLT/WmK7yvtE12udiRRRaer7/xW3f+zJ/6YNiDhiODAyEUJRxJvplVdsDI5bTpomUAdGPA683hQyUOqEYuc1qKUsJxsSqQphVFutc/D8TpJD03miqOWXxLL8ZY6fFrLcB+0/c267Kvp8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eOM9LM1t; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab7c4350826so90011766b.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477565; x=1741082365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HgzyKeWgxiiZ6V72DiEJAzfgwROJRQBXnaLW9SyUmKo=;
        b=eOM9LM1tLP2NpTowWu8FHkGop05FlVMukvvtpmr7Zd3EHp7DDF/blg/m9sOz9CEb+a
         BOgGReMcRBWiqNLN0pMYgeIch0ab3Ecmt3mP9C9IWGu6evQjjCM8iRlDkxDVi21neOV1
         oQpUdCl7RV6q4Wlmvk546xMvysiRhg6A+3RE1tvoiYipo2qXPs0+637yrKnQOaSWicQw
         jvnsPsLJXTZZOL+W2n/1QxYor/vJ+RW4xK1lx0282a/hmXki42kKFiObz96zfBtJmk9z
         ZkloBV6nURcVNfI7XZse4pd+ZsxArtQUbqwWW6or2Qw6VFHG9FHa+d6mAtuYgUvnlIXI
         yh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477565; x=1741082365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HgzyKeWgxiiZ6V72DiEJAzfgwROJRQBXnaLW9SyUmKo=;
        b=RNauFmfM3lUn1fPuzOJONUMOwz/6mpRnCxAKLTDMUzbA9ZyU0OPo8desNRIXCrrQfh
         DFNQKQ0aAb0QbI3Kl9igbyuBlyeuFsBSZ4QVQN+dRSz9+VSVlQ1tfrENJCsotEbv7i4R
         hFnDA4eUN04GJO3JmLlQrlScoasqtrGxXYVSG7NRnARmVyN1Gu77TKNBx4o48JN66usT
         AKNqgKk6hDv6YzAIZ+gurwoSOWCgFztJWK78GKykfb2Szjuk/4lWYoq4Ox8gCBOd57Ta
         Zz794CQwUlGKcbgrE1vtuVM87JMZp+OTNvWJJSJjf/yBcoqPLa1vmVB/zC2pKKSUMGYt
         Chdw==
X-Forwarded-Encrypted: i=1; AJvYcCV/bEi5JsS9aOfXK8fwTAHRoG3oVh+2HWNxMkYS+KZb7lD1P9eEXfq2JEzmfFOwGp31/tNidxP20bci@vger.kernel.org
X-Gm-Message-State: AOJu0YwgaNniICXNWqSho1vhSAm6RIZtoQFn02s9c8InJkNiY7IMEIJS
	9BMq051X59KPq5TzcEsWpoQilHZTin4DPHdk3g23pQEsbY62osMvICsACGUKLFM=
X-Gm-Gg: ASbGnctStE3cJ3Qq4Viv7weNeEx7nTZ72b7aCKgnB3rl5zTHIxGdThU56fmPxsx+imw
	hUy/iNmpA+CHAKie+N3i7YeBgQPn5zwdvYIJtTmvq3XhJHGBE7HulZPN5f3NdW6beB30ViWsxgu
	Q3u+iKlD3IoRR9yhAvjjouJgUpp2g3kSKXSF8hjko5Td8akvRjuJIlzOk1UmHAT4BKvImMa3zSg
	lXw2KPZ9tshdjfYu3RykCC2/jZMRjUBTSxu67fCtTGoqHSRdfoahUKyD+qwmpHs5YwyLItjHLz2
	QxumNlqu1OZjHxy0nr6Gj/SYQ5OlhLtFcKCc6DS2b50WOecxUVP2dnYjLv6kmeVKp2oDmF6BF/J
	m
X-Google-Smtp-Source: AGHT+IFX1pNdIfxyFGjewl+6BBH+th+mRofQ84WVzFKA6iDRsGjFyeg+w5Nuwc47Eb4ucHPQuTLUFA==
X-Received: by 2002:a17:907:7f28:b0:abb:eec3:3937 with SMTP id a640c23a62f3a-abc09c0a42bmr579529166b.10.1740477565421;
        Tue, 25 Feb 2025 01:59:25 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d59391sm115164266b.56.2025.02.25.01.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:59:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:59:03 +0100
Subject: [PATCH RFC 06/13] arm64: dts: qcom: sdm845: Switch to undeprecated
 qcom,calibration-variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-dts-qcom-wifi-calibration-v1-6-347e9c72dcfc@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2306;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=upo34y44NKsvtuzn146+1YAIAifsemHshq1/RrDHbKA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvZRsJmADsvBgTXr3/rFDYJ7e7hJRmrJE0m0Mx
 E5dLyo0EBmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72UbAAKCRDBN2bmhouD
 1+7mD/9IgeDVedemtSrlvUZIjAe6AAGLWZDnmG8QcESwcFx4p0eCSY3xJfQ+PgKDwhkERLfnabO
 FVU3Pe/yMuTAGLFeK6bddBw/783NQZ+zSmEJ4tuHkPFRGsY5OkIyNQivOqyoHR/19+tnRt1/PPx
 jgtkJqcGdjy5r9ib2hPZdJX6M7s45sEyPZtLlU13epu+QjKWKvbhSzp65wbQ8WeW+mP8lFW9mLU
 pm2GPbGRz38dit82MCPT6LJayzhoVlbQjVJizUdrPMGYGM+Cyi9K/i19ZVTPjdmr5tPe5ZlzsUM
 sAFMqeM4/z3jsaNk9tS93wHHPyQZDC30aZhea7OQv+769vS3AOzP6k+3MfAP0vfJJrxa19toU/4
 ijTvKS7vBASy0DWsEjEOhXympOli5vE9VrTciEdMe4IfIcBpBIuYY+xy+F4KBlfsvDDOZl/C5Ik
 2i8GWMgjJVqiE7AMiM5GUTVVzJuMrMN7/qyu4eGKsvnI6MaiK1cd+Z8XANrqGex56+ZpuHqTBBE
 ieE/iNrqQ2XTcAwLnOVPEOKDtJIzUxAksg/1eT79dMBxrO6V+oU4hxS15jY18WcPcoDs/rXaqyz
 nmezSkggnZjCfjZJ3xZ1vzIRzWvXPaF8tkLaMtNTlvfM5cmY94pC6aL5hlQkJe4ZbO2n6WCmUpW
 sk+iKYffeSWqcpw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts           | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts              | 2 +-
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 1cc0f571e1f7f3023efa08adf2791ffce5f2fecf..89ce3f6436076e34e03e04ac41c6be520aefaca4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -1166,7 +1166,7 @@ &wifi {
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
 
 	qcom,snoc-host-cap-8bit-quirk;
-	qcom,ath10k-calibration-variant = "Thundercomm_DB845C";
+	qcom,calibration-variant = "Thundercomm_DB845C";
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */
diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 2391f842c9038a3030511a1c9c8edd31bbacf2b0..aa482e8fd9e2a85489d0ae34d3ec91286e6f07b1 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -789,7 +789,7 @@ &wifi {
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
 
 	qcom,snoc-host-cap-8bit-quirk;
-	qcom,ath10k-calibration-variant = "Qualcomm_sdm845mtp";
+	qcom,calibration-variant = "Qualcomm_sdm845mtp";
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index f18050848cd8892666015c8182971ff0567747b7..bf45511b24b37f0df24e15e540cfc69831cccdc7 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -910,7 +910,7 @@ &wifi {
 	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
 
 	qcom,snoc-host-cap-8bit-quirk;
-	qcom,ath10k-calibration-variant = "Lenovo_C630";
+	qcom,calibration-variant = "Lenovo_C630";
 };
 
 &crypto {

-- 
2.43.0


