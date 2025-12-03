Return-Path: <devicetree+bounces-243845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCFCC9DB65
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A351C4E3FF7
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF24F271A7B;
	Wed,  3 Dec 2025 04:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K9u0NpPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1518026F28F
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734756; cv=none; b=fKTAGeNDP1MItGzeOUbe/WXaCyEzw4HATYzLGk5lFYA5jPVwf4Ne8jtOaJxIb2P8KjwQhRUIW0jOdDtLq4gw4D9RdYoqDndiIupaYwzTHvR5vyfck7TVF8pBkJvp9bDKKm3dxxZECS2TDZW5IMwc45sSB2aaI9deQAb/v+RpGy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734756; c=relaxed/simple;
	bh=8gPTGSfVhldl04iagfbGMSvO0tGM0wITylkAZZbG578=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T+9P35DjKgnGsPLsfRK92q6ExEcq9wC/9LiL5zEIUacUIXmj+c6/sl6D9bE6JtZ4riXMwq/XVDRu2DgJZdfLHEpskPj2XF5CjmzVRVDyrDdukefiv+AdRTuOsGjF+Vt5k2+FRYwElgS+elUFkaxqBwBUz6NojimJDtv0ADXFhs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K9u0NpPs; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37b960d8aeaso6699271fa.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734753; x=1765339553; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAq2J3qjMasFQ0CYSi/SkDTAJg6TbS3ZtIzBBvNDYJ0=;
        b=K9u0NpPsCH312qyJamaeFMfkUAIwQwvfTwe8M382YBzOPds0U4xcqIL8RxAgvniBam
         bKzTIAtvhOWelVOXjxSHqpm236EK5bKDNDaSfe5UnYpMBm20b9FGjJPejE/93Vxxn2o5
         VMIBqEliRaa5Hvmu6DTcZWhGo/xAaMRw4Ny1cGTTYIncxvGH51y6PTTUFvVXgObh8lMj
         jL/rDmcK9loiGUdn5ZsKdaiQi2AALniFQgeeInJx99OVKTNn+sGXPyHCYke2c74X7Cb/
         xcGFfgKpxSN/uQ9aFNuM4/88TVcmpvho9ws39KxFeAi+DycsLfOMj5Sp4F0cIK6zr/2Y
         MD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734753; x=1765339553;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cAq2J3qjMasFQ0CYSi/SkDTAJg6TbS3ZtIzBBvNDYJ0=;
        b=N6eL8u6oUPUW08vjVobai2HQv7zvlH8Dnxtjb7oOD//NtfVP3ElGAS16FaVWObuBAz
         Lb10QDIIwQalFTJWis3Q+QdJmzY3vMu+wVo+0n8DdeMmebKhAtm3ogSUAfZIyhLpLXkU
         i+sdTFR5tTJA09mSIF1PeMVRYs8chZ1tkdv+lfcuBdyFkQM9dHicPCivwRSIY2KhyJTn
         8Q01ZLOFYLci1LE6m1rAoE4NgGDgliB65ChcQDDrHIvjELhvAwGzeAzgPl/HpKKG5llQ
         A340cGKhFiSS4WkWBgzcbyOe50tuKy3tfSxw7NWezYPOVo8jAtmNXgipgem6BqPihi7o
         ZUCg==
X-Forwarded-Encrypted: i=1; AJvYcCXqsd1yKshNL2uj8t2Hx/m5RU7RZQssTqWeCHlio8AAOqxMNlJ506Ibs59lFsobuPt98pwmpyCROPJO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9+4uFW2PIXjZTUu13RWi/+BIrWMFVmaHTd1mm7WotUM5fTmGD
	/AZjAzRpFXe4lFVrKOGKDjx8eDQiX4alisbb+OFESEo0HYLQCPGTWB8oveEcpZBtYlQ=
X-Gm-Gg: ASbGnctK6oGSTdkpcm5U2/k4ew/kZRnk8T0FSkTLLJRAilj9mBkoxTSgMfp32Kxxg9B
	ZUQMoTvTn3nAd0DdWMS9S20lva0QlLAgSmWPqL3+VhEEzQnK6belG8FfmKu8mYvtUTZvq5CP/01
	9p8llKnmL7Nksxj3vZ87+YFuR66e1x4Ma32Uf9v+mOx/BgGDNlzTziGe8jTzaniktXqrOyTrwlV
	MhBztKZKGxVmpXVScaX3KjFIqIA2zOOvWsBSlKIUD25jIsctIKCHAQprS5D18owRQx1lR0SKY0O
	X0ic1RW3WEI/tlOBxwuHSRMBQGoTm2HpzQ2IdcMvbbjP5K2G1MMLXb9uYCKfCGkzqzujD/tkEdX
	Iqu5tPSo1S3rOEeUDoVgQmtBsymmYXJMZeWZSNVTklAWJ0cBZzqjzjIxEPqttzQEwlDvcxsQmcd
	MwU6N1lJRZJtbFGUulAmwpBeqsEdCUr40z5wvKll7OmAhr3lZ/UN4E088A3Vka5/qD
X-Google-Smtp-Source: AGHT+IHwgCJfY//qB4eDTqRZL9KBx+5vmclJk2v4zC0kAkBd2+Jt6HI/6eEu9Pe+sbdMvvdjNC/pKQ==
X-Received: by 2002:a05:651c:210b:b0:37a:42ac:fb8c with SMTP id 38308e7fff4ca-37e66cad9bbmr232331fa.4.1764734753126;
        Tue, 02 Dec 2025 20:05:53 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:51 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/6] arm64: dts: qcom: sm8550-hdk-rear-camera-card: rename supply properties
Date: Wed,  3 Dec 2025 06:05:36 +0200
Message-ID: <20251203040538.71119-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At first voltage supply properties of Samsung S5K3M5 image sensor got
names following a pad name convention for Omnivision image sensors. Now
the property names were corrected in the sensor dt bindings documentation,
and it should be updated in the SM8550-HDK with the Rear Camera Card
board dts file.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
index 66bec0fef766..e80de190eef9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
@@ -52,9 +52,9 @@ sensor@10 {
 		pinctrl-0 = <&cam3_default>;
 		pinctrl-names = "default";
 		afvdd-supply = <&vreg_l7n_2p96>;
-		avdd-supply = <&vreg_l4m_2p8>;
-		dovdd-supply = <&vreg_l5n_1p8>;
-		dvdd-supply = <&vreg_l2m_1p056>;
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l5n_1p8>;
 
 		port {
 			cam_tele: endpoint {
-- 
2.49.0


