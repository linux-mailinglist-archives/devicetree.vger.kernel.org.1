Return-Path: <devicetree+bounces-140247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A00A18FA7
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 893183A2C76
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19322211A02;
	Wed, 22 Jan 2025 10:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3N7SOR52"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5DC2116E8
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541514; cv=none; b=O3H640Luo0i2DjyePIJipGARwwxYWFc8WgUj7Pja84JqNfXrMQudRP1Mn4y/zPdp0+waiS79PSEFcgKAmx4M0OkYElZyp7ags4O+F3gwP0P1GYxM7G7Y1ER3BXgCT/HKA4lfuf8aG5B0wnsYR3ZiPw8kjWnUyeJS7y7OHEBva8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541514; c=relaxed/simple;
	bh=nL5NgBgFV3S3eyc64fOPJA1k4CxbhbE3hID0Fqq8rxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SNkNmAQ2DPNKBOJGEHnrML7E4Krq219D+ZDnnrgYT2bFTlxfVjQz5PH0OQIxGyz6lWyHUYNGuvA5d/zB3Ztcd+65Yu/imA2ifZ4ThdH+I1dcNwfIAJXN71u2/I7R4KS9dc3u1cZ6oWGbqDJizCMjXcNXYb25S7V7wQ/M2WD9Jm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3N7SOR52; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38634c35129so5644397f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541510; x=1738146310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MUnIOBToN35CP/nmH5EvlNTTBQouiRwsm7taaRBA0g=;
        b=3N7SOR52XAn553PQqOwDAOSL2cMt0bvcozaaek8NbtJwlXdfkV4HxxCrLSPbDEog8w
         LqymiQEMx8evYtcMcoGH2kG11H63EldqxqMouaWiYsfxORKBF1F37hIMv8W0qBf5nwmx
         sH7uicRKYls9YvT4gbUH7LFZfHlvnE/zQ1qLTK4egAWlm8VXHJ9dTuE6+EtOhISTEWzM
         9eFpII2QEf1JS3nJJufAfOghrLzIb1euF6kosukrpHTZnKGFvulWnpQUSUvgySBldQKM
         nG0J/BbVyWaiq4Y6SFlCXStIMGR1BPQyNlv2mWeQ5hQtXlEeg2sKwIWaY8CZDe/qdON1
         8/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541510; x=1738146310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MUnIOBToN35CP/nmH5EvlNTTBQouiRwsm7taaRBA0g=;
        b=LXY37eerWSgkcUaxbn3vYThpi4jno3FsGvvXKPLo6TfZsgYajGwXZ/ahqQC6npiMMx
         RjO1oQrOZzCqcGz0f4FgdM2H/6mc39I8Gi3Scw6C0E7rY7rfbSxuLin20lX1f2+Svl7I
         AGuUAlgI4AkrRZrppZpuHQ908NszSF9o5nmEZErjS58lJubM0BqJTBGUltp9+HSZS5JX
         potV1lEhs7GWDAj67VBmsho3/uR6zzsIxxXYdAplS5g3tDWVocDMxLx1C9NeEAeKc/d0
         p2be3JH205zZ97hA1v2O4j/3e6LXm7tAymM8kiyZMM35TQ8nmk1ERuYgafbjrTJ4mBDb
         T3LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa3DlLHV6No0+C9bMrlhK+Fi8rZ89aCs+LI6i8TB9/IqTT7uPV26Wy8Xae4xBYX1w4/FToSjxT+Aiv@vger.kernel.org
X-Gm-Message-State: AOJu0YwpuYHCJy945if3O3kuasKpsJ5KEKvVHp1/Zp4SpR+s14pihrBg
	Sbt79tDSxAK7OgFiT2KYhFpz7Ora7rTNoucu6TwKQjJlZf+zBrh0Hf4QViTtV3eLI5Yw2HsLGGx
	Y
X-Gm-Gg: ASbGncsaj+2T9I/LBr6k0hbUOa/4TsaLnawZnm1Kk2NUFH36pBFLBp2pvSZaY4O0olN
	aC1OK/3q4bHCB0nMVo9HP3eDdLvi3TrghH1uvo941yWd/IwsF3yxR0oxORfQcC9OqStmrUODA/G
	3qT0z6G8f/sBGm67sSag3jrf8t2SU78PUchCS1NRsfE6rHBdCkJWJhEgTABpCo+N/mMiE93QHSW
	ek/OtG9pY0+LUDjF0xJJ6ng6qE8EMZF+eX40iVAGDNCXtWS6la7qepQKxKL61eoXPI=
X-Google-Smtp-Source: AGHT+IG3p2/ZURppDC5moYvB99KxTy2F4dncMfmjtuSZbzYjEC77+NCRQAzrjRc47td2E0GsjB938Q==
X-Received: by 2002:a5d:4845:0:b0:386:857:cc54 with SMTP id ffacd0b85a97d-38bf5679b17mr14855240f8f.9.1737541510416;
        Wed, 22 Jan 2025 02:25:10 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf327574asm15949702f8f.68.2025.01.22.02.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:09 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 11:24:35 +0100
Subject: [PATCH 4/5] arm64: dts: ti: k3-am62a-wakeup: Add ddr-pmctrl,
 canuart-wake
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-4-515d56edc35e@baylibre.com>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1026; i=msp@baylibre.com;
 h=from:subject:message-id; bh=nL5NgBgFV3S3eyc64fOPJA1k4CxbhbE3hID0Fqq8rxQ=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHC+re39GOCzreUjXhQOpmZPP+zYtPJneuvIT10wVZ
 8+jG1miOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJpLMz/LPbtGGq4rEPnuUX
 v6rnvu32TNjBM81vblTiFUt9JuO/d94w/HfybW7Mn2rC5ZShtevRBFPzB79Cl94p5/sRo/h21dV
 wayYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Within the wkup-conf register range there are ddr-pmctrl and
canuart-wake control registers. Add dedicated subnodes for these.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
index 0b1dd5390cd3f42b0ec56bab042388722b4c22a1..a9bcda212c99d2f7669100ca29459eb13172da3e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
@@ -36,6 +36,16 @@ usb1_phy_ctrl: syscon@4018 {
 			compatible = "ti,am62-usb-phy-ctrl", "syscon";
 			reg = <0x4018 0x4>;
 		};
+
+		ddr_pmctrl: syscon@80d0 {
+			compatible = "ti,am62-ddr-pmctrl", "syscon";
+			reg = <0x80d0 0x4>;
+		};
+
+		canuart_wake: syscon@18300 {
+			compatible = "ti,am62-canuart-wake", "syscon";
+			reg = <0x18300 0x44>;
+		};
 	};
 
 	wkup_uart0: serial@2b300000 {

-- 
2.47.1


