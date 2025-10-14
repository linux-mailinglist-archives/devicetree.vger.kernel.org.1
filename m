Return-Path: <devicetree+bounces-226630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 106F2BDA402
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0F443503229
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5B0302153;
	Tue, 14 Oct 2025 15:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m96IU29Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5823019D3
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454315; cv=none; b=DgMJ7dclW9oQg3I0dT4u2WHfFUAKMdVQsm6vN/yKjLhNYnp/QXx7RuybO0NbntbDJpkmn+ht9ahRjgwnIQsRuyLSfzvJ46sDID2h2Y0RNJg6W1jEI4sanYGZoGBb3ZiXZrVr01uaRSo6Z8swokPc8bIK7VvR9rU5GOMNCNubzDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454315; c=relaxed/simple;
	bh=lnaE9Aql0p+zaBjSHyK2yyUlKYAm5n38nVhdpv7cd64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qMKPJwZsmbxc6jKlT67gxvIg+Paefjlo5srL2Tr0H9fJ7pqRV0hEskfU6a1vsuZRtq5aoSJwfpbQQiAT1piTDVF4iQ/DeFJE2gG4fpEP+Oyb1y6MXPPKR25U5mkLvvl4DUbs5WCKif0QYe+0XsQEBfVv7dLHKWlGcLwpge7+2Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m96IU29Y; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-781251eec51so4526528b3a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454313; x=1761059113; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QdXx5WHPadAVmQPefLqhuYKaW1K4eJN9K2RwteEElB0=;
        b=m96IU29YEuSnAU9V9yGpb3EtECi38KJDGd8pA1nPzDRK6GSL4+OOEye9dGaIMpmTgG
         T0FPh5TOcaeDUJD6x/Tc4M21NyG9PFX92O6Xb4WzgcTxYknwm4dVhp9mJ7UVB1uNmF2H
         0EhgpWdY8M3GY5wVHQc7nOBeaptqGNqagSEFyn+Q8/Q8f9297CUu8ZOa59S7JRXKtFjK
         6zAYDnaIGaXQ7haBmjxa8FNca0tqGipojV0HqIQRPWApNgKzpedr8hV4d8WxFVR/cYHR
         Ia6L+5y1E5t0G4BZEo3o09neMKnUSP9JhomwIAi8SedAmc5laWoZlkm2ZdR0j+L/sK8/
         WrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454313; x=1761059113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QdXx5WHPadAVmQPefLqhuYKaW1K4eJN9K2RwteEElB0=;
        b=vlft7HC3zsQKgkbymmSrAQuRTdBeuGcgKKsa1bv3Vtx+gLwoMYUwb/UztqIUtd6pnt
         DZ2xS9UBDDxgD2s1WaEfLeEqdOcEWzbcSAriRq5QMKtYVtk/ZRv9UYoBzzEZiZdrl3iA
         CB8/DaJEl1IaGLR7eCd2nTnTuWXmG4dDgSdQN6ePgtEOHSkZ7/I7enV7W1KN9WbOEjV8
         1L0wouLzyjkuGhmShrzp6PrJ5Jlxie3RrRVAi5Ph2tXEXTFWHrgSmtTNxp2YI/6dR4UV
         cOgfJprIH+EnWu0OWT7BBuayoiHWXNNL5yu3e/ulFtE6J2ZUavGaWVvZ7WafiZcAksuY
         Zseg==
X-Forwarded-Encrypted: i=1; AJvYcCW2D0/zb/TP3le9F4ZU9Bifo8TiFkdVevJUfyImCiauu+OMT7GvlJVPNWaLEoDTK9O724tuxWUNGhww@vger.kernel.org
X-Gm-Message-State: AOJu0YyOhGAF6lmSdPLnzEBHLRxHV1zk7UIuFLMdUX0ZsYQrQ1+t8B8e
	wwMvol1p7OQGGpH1sEaRNy/+S5k+J96Kf1PcQL2fVzhrvyiDaUWOBtkC
X-Gm-Gg: ASbGncs0v2x/7PW54Vkjutq++htG+/OCCaxUJp2Rl3PjEeUu2K/URVpxCVE645GWGyQ
	ymKcES0aqYUVa4FDz7WhtSvXsoiP/BVm3KD2jcUD0HFf/Iy7SCU/CZ9moQcdsrSz8X28i8BNnyR
	ni+HL5dvL3yZsE0f1PNQAt5I+yVWmxXoYpVP/KFdT+D9nJRtSxavSDCXN8rCULWaKaed6tZKcB5
	ziDH1T5iv8cq6UdoLD/2kla5YhOGvguZYEFhzokxzTil09RXZdzzRbqw0//f1n+0Nl/Bdx8aisz
	D5qQKDr7jny0M4R+Psw+k0qcUulyIwbq4M0hv0qs1/tGqYOnlxTgTGotOT1skIHwkO8OCLbwLwY
	t/Tvpu2t6AW7zma/A2nHT6lnNHEcGWqyS7HTTDbMTiZEcxCr1TfBnSA==
X-Google-Smtp-Source: AGHT+IHzoB9us+k1Zg476hidLtO90F3jrjp+605FzoN2M+/LQdkvNujqWL2evXPEkPxkAjKdrdfwDg==
X-Received: by 2002:a17:902:ce81:b0:288:ea7a:56b5 with SMTP id d9443c01a7336-2902723b882mr362687865ad.15.1760454312559;
        Tue, 14 Oct 2025 08:05:12 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:12 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:48 +0800
Subject: [PATCH RESEND v8 15/21] arm64: dts: apple: t7001: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-15-3f94d4a2a285@gmail.com>
References: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
In-Reply-To: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=lnaE9Aql0p+zaBjSHyK2yyUlKYAm5n38nVhdpv7cd64=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZubTrG7nely1tzAQg7wIlykutHNDRueaZBf
 ed+SCa1nVWJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbgAKCRABygi3psUI
 JP9aD/9O1YtQ/3d2Uh81AoFfZe3N4gJv+zw+TpF2LNskS9au5ii1jPnoSk3o3g6XP1jBFJarWrN
 pxCJsqKY37tidCii24MHmkbEuRJdiVwM+wYt7A9AgXblvhDYA+fciSOW5qHKtzhvD6+W8mNxWqF
 Ju1y/WNuqbD6uU3W/G3LJ0pZBfawka++YSU1sFtWZECr3GchFTbyIyR/Qr2+rwmlbehFQE13jbj
 z53bvkt3aG+ZtKDIAXiZOgBQ/t9vQerElHCA/ADoPBczZln8YrdsmBgR88YYSgMpnCDfUre5424
 WngPsYCCfVTxh7qG2EL91wLKxcLfmzjkzOHF9kqzq56pgOj6PJv+h6Yj6obo16bDhRURCfMeh6G
 1f5ewGz5M6+QIuEnMxXNsdMjVRVvqcV4NP2LBPULU56E7F0akXRg+DEQbaWDtE9qDjODZulY/P5
 6DDcXzdBg8tSYDrt9E5rXT6QQsxBVD1xNqaLU6fv+JpOD+8KZbtDe+eO5Djl4YQUZaFbJzta1px
 BfiFXS6HoTB/p1j/lli6vBUk/gFfZNYTkDb8Q563YKBnDMe9kVXTsOkRJSad1Yj/mC1HHUY+hOM
 B9ozCNLR6FmORwDHeEQaSrUDFQnv8A7mjB1LRmModrNWBpg3INC5aRB7OvA6WtwWsw8+hYVRD5F
 VY9Gcwd6nL+mwhQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A8X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7001.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7001.dtsi b/arch/arm64/boot/dts/apple/t7001.dtsi
index a2efa81305df47bdfea6bc2a4d6749719a6ee619..0e414018f5acbcdb10db92bec6e26ba32e53c781 100644
--- a/arch/arm64/boot/dts/apple/t7001.dtsi
+++ b/arch/arm64/boot/dts/apple/t7001.dtsi
@@ -199,6 +199,15 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,typhoon-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 75 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 78 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 81 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1 &cpu2>;
+	};
 };
 
 #include "t7001-pmgr.dtsi"

-- 
2.51.0


