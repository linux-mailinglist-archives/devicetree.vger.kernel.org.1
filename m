Return-Path: <devicetree+bounces-247583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FEACC8D47
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C67730451EF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0920234B42B;
	Wed, 17 Dec 2025 16:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YZowlmGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFE434EEEF
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988725; cv=none; b=nq351UPOl5i0jUTAWPKCZgmHNcsoxDUT0XDZ4wDishY6cl0qpxyN/VVnZRlsuJQYLe4OsemZDfdcNj6j9KlkZCHh2QZ1ClfLUwbh0MEanLKPIm3Xn7++2N/1AdDvf2FvMzJFWv+c6s0I2/TS6tDX974QiVtoNJaeYeDCW6a6Jnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988725; c=relaxed/simple;
	bh=6LjbldlF3OoWMCnhY7fHqRvAfCOGSBQ1ExvFhoCzNxY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YZcjUTUbOBTOsgpiVNaJTAIPsYqbhJgBNopux8RiUPKDlA/mump5nNh1DzioN+xd7VjbIY7cvG82SJtxQHtT1cnRpZWDnsFcrmZRTxPWUDJ43F353B0xl1srIH0j/3x8wyFPYwyvaxCk2Pdfvd1bzaOxo9ItDsw3c+QhXuUdIWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YZowlmGW; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a0d52768ccso45613905ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988721; x=1766593521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yx92mpsjRydjbKNezVplOe9ZgSTsezLCchII9GIIrGo=;
        b=YZowlmGWmJPc9TiNEVMNemIFYmPN/kvSEtVhMO9DXyWYBMcAcKcdBB9/9af3oB+7CO
         JIA/AK+4S6XQqSdT/vFKnehsdAk/j8fYGWwEdBI4AvKOlt/re3HdrY5BAUbgh49FJo3v
         cV3F1hQ80T5nI1f4Nzor8gPe6lG3KYvpx7g6P4Dbm7iCYqPoPOn9vPu7iKFh4BzY6J+G
         7Wf/HIremCdQwQc0CzVP8saK533qdQB2XRGapt5EOSFgpJM4Mc2OQuxYzVWqgSablsfl
         zh1SyieNluYtBLk4neS6OpZWJov8zLMKMPSD6x7G4iY7ksONz5i5ekSuHp7F2DKuUL4F
         hJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988721; x=1766593521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yx92mpsjRydjbKNezVplOe9ZgSTsezLCchII9GIIrGo=;
        b=mZZMFFfCYPuQsAhToomQKfNUVrw27sQiplXHZ+phcn59KekhJaArgNpOjGudN4gpFR
         VzgKgJXuB4tlqHww3fMIWwjX3BUjc5F+VceaCE2hUgN4axIQ/6uiESXHEwmoxeJEIJ/S
         j+outClnvmqZ0/pYPSYPeR5GFONpCL4Yu/N4b6jj984lGiiPDGzA2y4ZxkXuKezkU67P
         mKPBfTcUL1QUJYo2paX+vfQcgsuiQIs6XqzgI7hvZ2yf3QGGV5HiGe1FkptvOcKByJ6/
         f0ufhpiuuvYxzek1FOAK/aH8SQsNOYKpmr+g+1ip16j0+adm2U3Q/CV308Mn/c4zIv5u
         XmzA==
X-Forwarded-Encrypted: i=1; AJvYcCXA+Snnru6fYe1uApMgi7J7YZJgaXxipD98CmyGRCvNreXPeW5O36PdTosgamsMnuAS+DnXbWNwzwVT@vger.kernel.org
X-Gm-Message-State: AOJu0YzKGi2mA/42pi9pzod7YpasjxRlNULWIV1z+Hmb+7AN2puk5L/P
	bHrVgtkhPC17XK3Il04xEGFuPiU/tA5IRMNVUjXLwLwspzcO0OmEW/un
X-Gm-Gg: AY/fxX42xcIklbT31ZxsuKFKS1nCPizaUGwSmnUlpNyzM1+0z2TQr6Q1vxJaW7Peyh/
	xa65HN0nJgIzWlcyJJOQCtzS6yto0l7HvQnZ9x6v+pHbsjl598UekNJFI0/TtNcL24Lhc4l12Md
	nSlfmNWPsqagDQIyXLHcCCt+S0Vy6e3qGeTkDgelt0PaI8piWYwXi/7IADx3LPCOFMhSEh7lh99
	vZGnLe4EVs6lM0P2FGc2fiqjslFm9Z6j1X6qfl5gyo3CPtCOFTn75DfHcAOtzUdCuUuHD5oLFsd
	BzPNgl0EfH7AyWE8L5+QjdUhDBC3DTxdfKbRRDqBeW3OPikezz69etuYi+Cm/qOxLyVZiBxL85M
	ZvM10+pl47NO5URRLnBTfrmOWjJwMq2z0znPPZ2RBGhYR3uiaJxKppuNq5EcLWgFXME6txsCeja
	8lIjyJ5mzwOZ1C
X-Google-Smtp-Source: AGHT+IF7B3HOGs7poX5/sJEvWU5wHnYg5DS9Wk9uSkNrADU4CHuaQXTQoglGtMoHKKgXqB8/eL9B1Q==
X-Received: by 2002:a17:902:ccc8:b0:2a0:823f:4da6 with SMTP id d9443c01a7336-2a0823f4e6bmr133717945ad.50.1765988720769;
        Wed, 17 Dec 2025 08:25:20 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:20 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:26 +0800
Subject: [PATCH v9 13/21] arm64: dts: apple: s5l8960x: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-13-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=914; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=6LjbldlF3OoWMCnhY7fHqRvAfCOGSBQ1ExvFhoCzNxY=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlBWlRtK8fFZOggW0gRKimen2m37MOO5vrnf
 Etv7BkdrRuJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQQAKCRABygi3psUI
 JIT/EAC0nDegP45eFiq6zKOvzllfwjkCQO2MKS5faldtXHkXIwSRRT8b7VeKPzBD3X52sVnN9+F
 lpFKKATIVC4kmxROD/OqVnvW1nhRsdPo7NupCCpzC1d2FgmJqA9WZx+KSPYpwKL63hiEKNe+YEd
 +sMkijYl/9qzwLf0qL/K2S2rWg+xh9AgWYHpyw03Ec+76O6IcKBQQP9KJ1UVd8m9scXbweOVsgX
 s+008dpPi8RPfSbKL5ONyq0CP7uc/rOv0pwwSGBq4s1ijYa0CbDrEY9wUBr89FpNenZI9Heo9JF
 PbtFtV2DdaUxjCVeOo6JwYUzZLwV5nCBU8QDBK8CKCglDYLl+g5ezH6VjnHTxq2J38ADkfFhgao
 646jhqsLpzBUfgv0fCbqPPQr5HPYVsUHD22uidyW99begHvLY2ya7h7lUpdE8S5oGBkAU1l1PqL
 JAW0HU0xeeEmUo83Q43m3t9+khjoNvU6yG+MiPcIJcfv9pwKDoGsxp93Qh3Q5HNeos22cnHyhoX
 4csuVwEL8pG9P6ucMtRVQS3bG6QxCAUvw5knCbNaoYJdoDhycRfm1uwFRbzFLaT/l/CszXl5cwT
 20Dj8u8rVBJJJM26yxbBlRDh2vHsKbpEARB81h0FSlLwMtEEczin0405Pp0SRinzk20zCc0u1pj
 nf9XufhyGMKQxog==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A7 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s5l8960x.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s5l8960x.dtsi b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
index 462ffdd348fc893d8e1d597b11d063dc5f88bdf3..d7a9cf1bb4911805a946d64e5892c1fe4b832186 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
@@ -227,6 +227,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,cyclone-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 178 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 181 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s5l8960x-pmgr.dtsi"

-- 
2.52.0


