Return-Path: <devicetree+bounces-135323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D81DEA0085B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F9453A4608
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E2D1FA145;
	Fri,  3 Jan 2025 11:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="x7SfxGNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DCF63CF
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902730; cv=none; b=l/J8JIjVJzd5H02dvOUbZBYJNYxcwIrKr3+12cChrIN1r1G8sxuoDUTR3fyfo85P+7fLdX5XNuh2Z7P2P+Yq6Y14iboOns+/hfIj3TOA8ytiO6cKv19bRo6DdUOlGRTcxEmQa+wzh87HlV98r7KfWu2ba3lO52wGlpblg9FkeTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902730; c=relaxed/simple;
	bh=hFrxBgJ07NatLLy+nIK/H0Io113gN4/rPtmjVt9wEEY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cPaTvXiMz6N06+2js606qVT5Xxt28iHzjlmEaC6rNM5reX+sqUw829B9n2vlQNMXCmMpYV6eX6smW2dkkaqnDWLmr0q1tN7/ZPEyyyFNF+/Fs2tRCiugmNLXAdfn6sRkznkACkXeATCmwRMEnmxmFc2ozNj4mVhiej8sVs8vGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=x7SfxGNA; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aa66e4d1d5aso1900131766b.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1735902725; x=1736507525; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHOvMibGbyPBOPoFr5QKh/wTDy8ZFQYsWy6HgvhHWug=;
        b=x7SfxGNAuWCxuDecvpbjVDbPrrcHCJ/4J9ZqjFQ4L1iqfYBzFejVby5DJb6oXpnVnz
         IG4hb+o/0q/tDsnnyu5jDgLZxa9dBfS7bRbZjaujRCo/4dj74BX36B4G8Tu8pv9XZg3k
         nHOtImYW8byr+VfvKNP/U1Twy6MloDqrwMFnsX53Y5nUfglAhVlN29051RWVU8AutTeL
         ZQCc8MlgM4pKg0Pj6XcBOkX96bPu5Nz4s/7ZOVd+DeC/DcXm17t/Lie8KnVnvd7Qk439
         ++PaHkVQXPY9kNP4X6qX2Yt+H083Z5a9JhO88YXsb1QbQosa3DujL/qJu9jfF+EQRAtN
         32Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735902725; x=1736507525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHOvMibGbyPBOPoFr5QKh/wTDy8ZFQYsWy6HgvhHWug=;
        b=L/4MG0VRoxoX0sECBXJpjzonUSYHIHQL5tvRyxJXH6ooMirwP4hur4c7xGjNuQQ+TE
         1ItwJ69R1CTiIHjUJIQwXXJEMGK7UnAPPpEQekIYmKxukBptabKv4qbfd9U6nldElpPI
         c6qa/iD7gVySvMUNS3HFDhMm/kLdO7MOBOIF8l378TLXZuzlE4tsiHZnnHrnYq5lHzKM
         6AfcZWgjqkLYgASrQrgmh7wWmcX41xIomSDluqQbPFZvyRASF9hR/28KymOPcUcv5VdJ
         ElPSkVGRfT6TY7a5xYdTtleQRm8I1+zV4MLFJFMp1TileNri75FHEmJ9bPydcjdCqoYl
         lVjA==
X-Forwarded-Encrypted: i=1; AJvYcCVffGOFqrYsWafb1p2WKP+NXuqTgMxa73lXPsqlR3pT/axoS4MJVtFT5sb6mkd3hphxp/Nz2pWnxu2N@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+vUnsf3EhMCsRDlTNImYA0vGedCMc7idolV/zSUZbpwdOb3hI
	/JCE6MKnb32PnCymOt7IXWT6GLbP7VLDoqJDN3eE5g5kORuq+jyqa1tRPX4BqxDyR1XGzCRNAcF
	L
X-Gm-Gg: ASbGncuZRSbG3avdx0dNX4JOYXzKnMZpHy/yCbyzQwXFi4fnA6JfsSetB5vLHxByEQ7
	i2+brKl++UPoNa6cIZF29VH5PA4cUNHDrlqqH5vNyxbTYOTEa2Tn7Ai3/b803LOCH74+OIz8UZ8
	SXi4fSEs03JumHBLg+t8RT6TcpRB1mSe4BxylCmO3701Pi7bTjd9lya8Aj7fMseYm59r/EkNxlT
	5GELDQL7vO/4xcTRKEoXCUXW9Q/ogUKQsKKLZQag4DymHHZsu6KoYQijKKtTalECTdG+oZXFxP0
	GJLMKaO3WlNHbjC6o/h1/dLNOA==
X-Google-Smtp-Source: AGHT+IFd8bCOiprfe2Wzx8rbAxGJwtv5TEfV+pliUKXxGJMY/Rwo3+ia2wgDHt5fi12mELrWPAU58w==
X-Received: by 2002:a17:907:3607:b0:aa6:5910:49af with SMTP id a640c23a62f3a-aac2b6611c2mr4470650166b.24.1735902724669;
        Fri, 03 Jan 2025 03:12:04 -0800 (PST)
Received: from [192.168.178.188] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm1894101366b.183.2025.01.03.03.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 03:12:04 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 03 Jan 2025 12:12:01 +0100
Subject: [PATCH 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable camera
 EEPROMs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-fp5-cam-eeprom-v1-5-88dee1b36f8e@fairphone.com>
References: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
In-Reply-To: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Configure the EEPROMs which are found on the different camera sensors on
this device.

The pull-up regulator for these I2C busses is vreg_l6p, the same supply
that powers VCC of all the EEPROMs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index cc1f89a4015218b0ea06811d2acd4ec56078961e..769c66cb5d19dbf50e137b3a72de2e36ec4daecf 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -556,6 +556,47 @@ vreg_bob: bob {
 	};
 };
 
+&cci0 {
+	status = "okay";
+};
+
+&cci0_i2c0 {
+	/* IMX800 @ 1a */
+
+	eeprom@50 {
+		compatible = "puya,p24c256c", "atmel,24c256";
+		reg = <0x50>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+};
+
+&cci0_i2c1 {
+	/* IMX858 @ 29 */
+
+	eeprom@54 {
+		compatible = "giantec,gt24p128f", "atmel,24c128";
+		reg = <0x54>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c1 {
+	/* S5KJN1SQ03 @ 10 */
+
+	eeprom@51 {
+		compatible = "giantec,gt24p128f", "atmel,24c128";
+		reg = <0x51>;
+		vcc-supply = <&vreg_l6p>;
+		read-only;
+	};
+};
+
 &dispcc {
 	/* Disable for now so simple-framebuffer continues working */
 	status = "disabled";

-- 
2.47.1


