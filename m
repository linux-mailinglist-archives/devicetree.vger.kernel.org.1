Return-Path: <devicetree+bounces-239830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5FEC69C86
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:01:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id DFB2C2BE1E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20AAB363C4A;
	Tue, 18 Nov 2025 13:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z0af4GzS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558CC3587C0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474188; cv=none; b=NevvLCSSC9dBE3g0ETpcx+uVGnX4OotJzr184wVhPBkMuwBvkLgTSJBwLu0YrPj8sAIkgCk9V4zuwnt4TAfbVqf+mIqkX2DIu2zj6Zffph8uG5zlQbe3GAgfJXPc6Z/FypdpUW/E9wURjXFC7sfMBMbxLzaSHOMh0dzvrmgvpSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474188; c=relaxed/simple;
	bh=bpikWqcBMsiIMl/jbWq2QmBbah7xAa4FAfmzSq15MIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C3ko2KR7hDrm0bP5zO3ctOFFy3t3T3q3D4sryzvyuPWZYbzGjeSX99BQRviGlUQ8QYJIjPFxqVOEfFLRfVHUlhxmi7k2CFCkHESyAXfi4EV9u1Xk8rM+DMD2VZGPI6QmElFBUODZ3XcBCrsmt4K5d0L1kUEYZHHJO76tronn+gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z0af4GzS; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42b32900c8bso3162828f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474183; x=1764078983; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A/NH+ihGTI+pHubvmXFI57IU6F78/DwM75gJfoYXgOw=;
        b=Z0af4GzSfgWhcD+p4/nJUxlG7WTRimOgYFd/FeaXyJmbZt8wOmgi5xvGyQOz0hXEBc
         5c+Y+yFPcvluuy3H7ANN8SBfxRoJ4BiIhwK3Wsdsqe9dIbRWyMaowwxC0q0DOCs4hsyS
         QZX+rgd4pGfW1OyiyCzD9DU3T5ApXPfQ49R7vjk+rmWlwuQBFMIdHLzRRVtTpt+jT7gR
         avK79shS4MTW+7m571H+khtis2sBsxMC+8hHBHJ1wp+WVGl9CogLWcQgh5q45Plf/DX9
         BOrC18oQKmlzs6C0+andAfpjADzbB4cDKGboLYTb05vr5LbqHBGX8dd7kT6wmYFf0S67
         +lVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474183; x=1764078983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A/NH+ihGTI+pHubvmXFI57IU6F78/DwM75gJfoYXgOw=;
        b=cwfTaVcMPrZ+SPBEp79nGRP0ySQhTIMLivOyJ4CSzvPfOyczDsPXpyUtYlHkFeNT9d
         2/ob+rrQ8mDFRWdmtI1cvZcOhFO+C95yH2Gp/S3T8L4IhtJlvWuD3AIm9wyH13inaUmx
         S5+Hmy6DeKab8WxE0Fx0wn1BkXfLns6gmLTVtm/dhtq8Hi3XYWDT64dJYvTMqM/6uKJH
         RU0UnlWfUcwatDNn9duHnV1wXd0FbEePku4NBF3OJb12dOXurlt+FOiOFGCDbE/+ifDB
         yt/i+YC3RM9pkRAJFUA2eBiBVG3cISvkyw/zpIslNX46ZikAlm0/oMEfVYnnQqz0bvO3
         Dz2w==
X-Forwarded-Encrypted: i=1; AJvYcCUdoYizYpGAa+Daondqf+Ri82boJIseGJ1CuG++SDFu+MK0OYtsRUy5I+HQJdTALtAODazMHHdZss8n@vger.kernel.org
X-Gm-Message-State: AOJu0YwaBV1V9XFE2JWkqBx9Y4zcaxx6sKYJIsUBRd8yY0qdiMATKq1Z
	+V1ypyljSOdRLcIZZuzFd7TRjJ195XFb6xLOcJhvBWJbT9WvbQWGp6KjvsjQJce9McU=
X-Gm-Gg: ASbGncvaPVP4MIpy9qvmK/86M6ONmVdykWg7ZKavlw0q6JJqhRnNrbmLRXYLpVNH+kW
	ILFTRMMu/5/NFZaO5bQOZSCNnHi//wMyO6hJMXw22jmKqcXNQ422YkjVKLDKIwOBiOrETEaXmcF
	PH5y0AY/pggfyw9Ror1U/jsr9+ujbPY3TLplZ0rJTImNbHhBv/ic8GPhnkBOQeRfTpTQsNuaJaz
	VHQYYAMdNaFUzrbnOZBdLaytA4XwcGncpy8DwsvRN3z0x5WWTRKs4owgmyScah310T1g0TfQ1ki
	/nf9pLTjxcEKSbPlvBiA4pwQcP91Orx5jsHsxEgPzYA1wlmj9xZ/6JQsZpceHoAgnUPrXcFmj1A
	IBq8jMGem9DCAecNEBa4/s/5x8gwF+BJNq2GtLPAVLP7I3iEb9Kk1j/qZXMghPrh7G7fibRfk+y
	HKpgb728ScFxq9kcfvVA19Ido1C7M1EssNEyhCkAM0TJoRvH3FWbBsuBfaIX5l3spERj5ga+BPC
	cLgQg==
X-Google-Smtp-Source: AGHT+IHMTuoXSa5b/I85TLgO75MjoFjkVVohZVJUHjTj4z9Z02iCD1czvc9CTvoOMfIKnhdLi+Ctxg==
X-Received: by 2002:a05:6000:644:b0:42b:3e20:f1b2 with SMTP id ffacd0b85a97d-42b593246d6mr13598497f8f.4.1763474182903;
        Tue, 18 Nov 2025 05:56:22 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:22 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 18 Nov 2025 13:56:14 +0000
Subject: [PATCH v2 7/7] arm64: dts: exynos: gs101: add OTP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-gs101-chipid-v2-7-e9f1e7460e35@linaro.org>
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
In-Reply-To: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=968;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=bpikWqcBMsiIMl/jbWq2QmBbah7xAa4FAfmzSq15MIU=;
 b=sGizZvDLkNesCQsmcBtCebaKnu3wBtFVyhLh+rpTbGIRZoAB8h0gn5q//8UvrhTXEduaucJCA
 N2W+Mx34ojOCfvhbdAC7Lo9YW+xVqqJ32Y5MBNgEch+eIaSOLRmNfoE
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the OTP controller node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..4be983d4e291b3afe3530fbea0163f70c1a74671 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -571,6 +571,13 @@ soc: soc@0 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		efuse@10000000 {
+			compatible = "google,gs101-otp";
+			reg = <0x10000000 0xf084>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
 		cmu_misc: clock-controller@10010000 {
 			compatible = "google,gs101-cmu-misc";
 			reg = <0x10010000 0x10000>;

-- 
2.52.0.rc1.455.g30608eb744-goog


