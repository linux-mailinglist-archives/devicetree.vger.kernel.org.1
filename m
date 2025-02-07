Return-Path: <devicetree+bounces-144001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF27DA2C80E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EB0D3A8537
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD5C2253A2;
	Fri,  7 Feb 2025 15:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l5gIOqbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1405523C8DE
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738943812; cv=none; b=iE6yyNnPxhrNx8geOe0Ji1/GAv+XxcaD5EGYXSULz6CDZPDiMzVXwyRT9Zst80OcwMZcAGNNJ5KPIXJrXw8O0QQmsk1VMGYq9qvSsbtUt6/KxU9/CrzZiFlwr2iWawDncXG07z0ssKXSYDg83xCQeJB3yTt+w5tH/iymRO6dz8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738943812; c=relaxed/simple;
	bh=LqA0TnpriX6BG6wFMMTRQwjG15Mb4xWdLzul4jT3ckw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bNCQY7la+cihqI+v73xLhEc1p3+0cNwMKw1XHS1SYlJR+Mtrgn5MoWakukq+IikDL9EZ5gPC2Eat3D9VKBdt8jivqN7v7/ClnX2oUKr7vB061kcPeanvqcjH+OlBqulSPK8jdwMvwtSYcAV7D4OEMBOxwUocNbIzEGinB2IMV/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l5gIOqbg; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38dd14c9a66so49083f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738943809; x=1739548609; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3dWOoof3Xw/2OHGbRzCfoAg04gz2ejhFyHKSGYevMQ=;
        b=l5gIOqbgTayffTKPLM73X3/pubPi7dP9/lqBtshxn/FtF9r5n4U+yiGCgZXB9jbZ4L
         ej3OwBcyXr/K3gcNoSafoOGUJ/zFfva/PdGy/X2jPB2wfshmZpgCI7kHWglZyTl7QqvF
         4ZW7iqVRWGDHRq6qJQMwnnnfvdru3xzMe8AUuGNgcnyD/hg7XRSACwdicmz4WZ5z9u/Q
         Kz1uPxJwYs7ojZjV8BeFtgDARMJiNFkb7uHuZlYrXyHofct2MWQqVWjgMyGnkWqqghTc
         OYfm4cL7Xjq+05OXLJYIqN/euuXu4xDzCclVq5F+Z1iSidnMxuzYekiXDD4GcuHT/G6s
         jFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738943809; x=1739548609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z3dWOoof3Xw/2OHGbRzCfoAg04gz2ejhFyHKSGYevMQ=;
        b=xMcxsem3khF3/8LVDIqKvRRNrnU4r8ol6YaYAqoFLcuEOsaqJpjtVDbCGBWHOL6VyH
         dLW93vVSwTpINwIfUAevRwMvvGIb4oSHUvYR0dTWW8/F8zZo2SJ37f5/F4YLH2pw8MIq
         An+PyoT8rUusOG9SPnv5UJV5Y42oOFsAnPteiZgYZ/DZGQUDoED0rDXfP91O8cpQtdl1
         wSLgdsBfPQVomheAFY5iTDpXYggHPMK6Re1KqnGEltQ8ksAwZzPd1usS6LCPE782nJxt
         7l0o56Ss8PoUQJuqwHLb6TsVWDAGkdp6bTzA2ayaSNyfPMYwBhKnElPssJmuNwtREoMf
         Jujw==
X-Forwarded-Encrypted: i=1; AJvYcCXLen+jAWYupus+A3y7PFBlMFu1uBxj34sMDpKROfApAxpE6EKbGpmMAcfV8YqFGml31JD+P9S2TC+U@vger.kernel.org
X-Gm-Message-State: AOJu0YxwbLeLq3tbmDjqnSTFI79w2glaSso8sq8VboVuveFlg4jJGzd4
	67UaUUiHjItWKUG+sJCWmaO241V02bRPrk+x7lm1iXmKoTxWSDiGuWJ796GTonU=
X-Gm-Gg: ASbGncsJFkaH2BIQeTNPfuOKa70PGPZiaz4ucaI9HSwvGIq5SY0AFM9U5GX+L6Nwg6Y
	T51kUj2CvNPnL+lsfZ+/BJTYrY2tUe6JcRun2SRk91Hcg8pditXzSsKNVxr4jQ59kvNokXSzUkR
	/o5zFXPlCaATedXuQrKb/24OPntw4LfjUjoaN/wKMRmwpxJfm0C6xItx+olaVr8xO7SGZEUSA7W
	+0dfxcoqrelt4o50SPF9rjcOSiSJOfv/YP0PID/rWUDKN30lBqdSmiBmyi4/ZL2OE06yyL58KHC
	zPVxOrCLWDyqByjLgFe5jV5PWn00a1uSDF5dfQR1K7qNex3HPKTVGx2ZEsk+FFs+FVKIcx0=
X-Google-Smtp-Source: AGHT+IHi7d+qk0bKlKvNvtjux0Ae8ZnowO4Boe9Bx+bhD4ZewXY1Ic6zG9Cm+U7d/qkhyLu5UCqFyg==
X-Received: by 2002:a5d:6c66:0:b0:38c:2745:2dd8 with SMTP id ffacd0b85a97d-38dc9138771mr2372188f8f.37.1738943807901;
        Fri, 07 Feb 2025 07:56:47 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc09fc2d9sm4197507f8f.6.2025.02.07.07.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:56:47 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 07 Feb 2025 15:56:45 +0000
Subject: [PATCH v4 3/4] arm64: dts: exynos: gs101: add ACPM protocol node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-gs101-acpm-dt-v4-3-230ba8663a2d@linaro.org>
References: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
In-Reply-To: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738943805; l=954;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=LqA0TnpriX6BG6wFMMTRQwjG15Mb4xWdLzul4jT3ckw=;
 b=DWBaLZg5xR+Gle2U+lAVVq/Oxzacpni3Vbk3bF4m1w4g94PpWCXFJwkjJtFjtSG95lUHggbvy
 nnlqQIL2mvZBPYsiLt7N1rZwTwLCF/sYW5PVuaCUUv14pSHoqCEgTg3
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the ACPM protocol node. ACPM protocol provides interface for all
the client drivers making use of the features offered by the
Active Power Management (APM) module.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 25ba262e3b3c..cc97c08fa9b2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -277,6 +277,14 @@ apm_sram: sram@2039000 {
 		ranges = <0x0 0x0 0x2039000 0x40000>;
 	};
 
+	firmware {
+		acpm_ipc: power-management {
+			compatible = "google,gs101-acpm-ipc";
+			mboxes = <&ap2apm_mailbox>;
+			shmem = <&apm_sram>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;

-- 
2.48.1.502.g6dc24dfdaf-goog


