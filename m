Return-Path: <devicetree+bounces-143998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 458CFA2C804
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61DFB1887B3F
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA0D23C8CA;
	Fri,  7 Feb 2025 15:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ihy3DfOL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476123C8B9
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738943810; cv=none; b=HDLIEwLNeBVCWgiI0Xh/ndClPjTxcW4XMcj1sYkwao7D/yjwArp+W3XWuIYUqWCOo+3qd9BdaQZeyQ6E5W4ePkuKWd6Wh9GPouqQkt+Sw7QDNSAEAADljTk2UAOSWiveGU9osGpu/woxO8c1nYpJ9yiuKAE8exyhFRn3jmEWt+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738943810; c=relaxed/simple;
	bh=gLGpUaEfuGzvyJ3L21mz+M8nf5rblyz9ev0wDFYPZyI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pgQMf0mtww1tp9yoffQF4r3V/oXf3xw4ewgp//dDZQU3PvxiL7coEcSxP1XDeo838b0GzgdmR/dC0pmb+4QvBlXk746plkDkSFq0QKUvceLzOAkZ89TTHmjB71MekeBWBZvMUpmIbTsPAXY+rNUIPvXcFPJ29nfs4Q5AIkELKq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ihy3DfOL; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dcb33cba1so417434f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738943806; x=1739548606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xDJPIIRI6GLKY+Zyqq8NOfeinTkGodpwbMUhAI5OLLM=;
        b=Ihy3DfOLCh1y9Xl1mXequJLBtSBEU4kY3c9UIelBcyl7ZGlJ5V+2ZOrcQYxFXKpxj0
         08OOmGOoGAxEz5G2Xtk0DgkpnQ6KJHJ5qwkXupL/rugcxtn6NxaGEL00kFmVNgO9lD6N
         PNDTMX4sbF/zz5IorFx0QA66PglPLbM3F+btWa6AN0K0E2vJg+8l47OsMLY7q0A/erbt
         +fdk17zZqtMcZA/0larGtsjiSQGv4nsFrpQEAGnWyW7RcDVj/Ad7Ohac5CHK+/rYw0tV
         GaHzSf4G7qdE4JbrY/QVFKq7svO9V0Z/WNonHZhwCfRuNUM1PHWxSu+dUhFhNY03uhqw
         QY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738943806; x=1739548606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDJPIIRI6GLKY+Zyqq8NOfeinTkGodpwbMUhAI5OLLM=;
        b=MiPbZgy3H4/N6y6EX00KSHOQFEpknCLurq+3GoBjOS8IQoZeip7Qa5Mhi2Y42ov2Nx
         kW/528QN04PFYXkO2EvbkYJq4ul0Q+DhB2KaKCQrpA7vbEW9POSuTz1zZXdnCY6DoVF/
         BcfM7PpciEeYaWr/s+qubKE0UHs0UxL6+RduXvwpBzt8DjeHHgboC88kxYSckaMXXb6K
         vMseo28pC0KN2dDT6cLB1TyG5ssb67rcHBeXz/1rfWhM1r54sweuc+pAz2P0D65F3kGm
         kCQWMm85FX+yqqauLY1cZNe+JDH4HioVJdZ/5BcauNqHkwG0JgY26xn05ebn4VwBE5Oq
         5I5A==
X-Forwarded-Encrypted: i=1; AJvYcCV4ry5dgbm2TnkI24lpOoils8TwBwNQe9laHVScJxNuqPOfB2VWWCiGIh8L3NaBYl4V55YsHC5dCWcS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi2pw2nvj8QA4v3KiVb/xIpQ2RdpeQbUF7Qh+SkgRudpmfWUFI
	ZrPoIU5dypDVOxq8eNaNCkadeyZfIi5gkm4RGjYaX48VAKU+spkfcMjp7M9YFac=
X-Gm-Gg: ASbGncuPF8HoqL0+M34XMvipJSuPha10dY50VHmS6pFZohhtXIOGyPPQ/5b59sTcUUw
	AerX/0KIkkqofpkUDvsboOxhg9eMUSusI66V0Y/TJQ05QQK48ld4FBjLxhN9nBJ5RT9dybbtLpc
	4TAIAUUxiy/3TvT1WRoJRZve5ibmp0yARY8tjHhyXQZl7GAuFqC4Y+VtvIj4DtIFe3Xr+7eYcxA
	UzgFcrgoX+pwmyBoPvBDUfx9aGzkcOFwXSOSIyQwKQxdnlE0TZ5K+hTGNY0Tcjk7Wgv3pU4WG8j
	s0tY6N6BrM59R2oUgzxPgANvrILasUgTk07rjuGDxtoMU28Rq24uQ/AKVydgxXwunyfykQQ=
X-Google-Smtp-Source: AGHT+IHnKFv0qsVS5sklaHz1Yd7IBiDcXh/yMTaA/ZuLIr7eWFDaCoBMx4syf1mCNT3/xbSNPX0bQw==
X-Received: by 2002:a5d:6dab:0:b0:38d:c600:ad30 with SMTP id ffacd0b85a97d-38dc937461dmr3251623f8f.40.1738943806441;
        Fri, 07 Feb 2025 07:56:46 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc09fc2d9sm4197507f8f.6.2025.02.07.07.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:56:46 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 07 Feb 2025 15:56:43 +0000
Subject: [PATCH v4 1/4] arm64: dts: exynos: gs101: add SRAM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-gs101-acpm-dt-v4-1-230ba8663a2d@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738943805; l=979;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=gLGpUaEfuGzvyJ3L21mz+M8nf5rblyz9ev0wDFYPZyI=;
 b=W+YHCJGY2GIXCUKGut3Wfq+1GKcVPMtY2lKeBH1krh5h4o/lXoE38WAw1arV4/Dsph/OOfBF0
 hjqR38r5uj9A+fc2ySsi4yNFJXljZTKwquPyuW0/YhFHH+hN/sGvmuM
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

SRAM is used by the ACPM protocol to retrieve the ACPM channels
information, which includes the TX/RX rings among other channel
configuration data. Add the SRAM node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index c5335dd59dfe..798ed7b4c4c6 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -269,6 +269,14 @@ bldr_log_hist_reserved: bldr-log-hist-reserved@fd900000 {
 		};
 	};
 
+	apm_sram: sram@2039000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x2039000 0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2039000 0x40000>;
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;

-- 
2.48.1.502.g6dc24dfdaf-goog


