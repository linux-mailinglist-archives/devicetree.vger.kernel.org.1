Return-Path: <devicetree+bounces-206458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6EB2C562
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A01481892F8F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D2C34AAEC;
	Tue, 19 Aug 2025 13:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W3P3mx3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D22D342CA5
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609453; cv=none; b=LDvPORIJVAgs5O5GJKbmLO4nZXmarrJh0nCkq0MjwqNLlA2fzHtV2jzQSNbbK0Yp4Ph1RyYb+ufV1Xy/NLM2DQ7PVzbu573GkGYaATOi3Tq05BsdIVJbSEEbpd2BOTy8NWuhi3LtshGqDuXTQ7YN2fIOGOcE978q6oIZNmKhlwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609453; c=relaxed/simple;
	bh=FEspt0iVKZ8yfRYHrWhEsNIN4cLzv4KYS3eGc/EoYA4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VnQf/dAkkuS9iNYN84Bhx7Ww5cZ5+Y3YNVkn4DwqhfGxovYNq9f2+GhxpVdQtsq8QLe53XZjnv5KV5h1rU3ODMk0wgniOoQZASZthz349QExY4XUej/GdkJ9MjjNwiRUql1pYLVv2PjFkRlx5KyVfJfCUFB02pj2v3a7avTpZ8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W3P3mx3Y; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afcb74bef86so95628666b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609450; x=1756214250; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oLZdKJG7O7Ehre+Qc9i4124u/zsW2vIpuZVf+PiEblg=;
        b=W3P3mx3YqWqRbKo1Ku94c18oNb/KUhN/Tzu7o9e2TUgqYmHVUuQuAHsHEnNwvJ9ij6
         PpmIvrMIIZypbDsqamzrng68xl5dRZKCrtqlD9QLPGtXa8AFEKrro0b5fQhEkW8tkpWS
         t2IYcviiVQpJaTG1PPWjQks/ufP1sgJcvRPt1AQa4oPC3I6iG/gPBxLSLmIN/qy/OIQc
         sCPLDNz24q0aZKGnAXi+tXn+Y7Mk3u7V5UQ5MC4wbeDBSRyNpJC8OwmGk3LTyxMg2FqD
         hVqYQfyr4RBXjAnDC4RjZYd0lLCs2DXdwvVvPyq6fluowBrbBNrvE8hGThnIlROGBBUP
         rdpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609450; x=1756214250;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oLZdKJG7O7Ehre+Qc9i4124u/zsW2vIpuZVf+PiEblg=;
        b=TkwMFlhX8lNa4uUB81SckS/NcY9X7Tsw9xn3HzeWNccsxBUIUxK9TKUT8DTUCeCQeg
         VQ5IOZ834y/gA4pGnLhxQjQUzdzYZ54CxHCsvPsAPcGQbNdxImdS+26F3Xr+mIGJOK8Q
         mhRdGGmniXvUQNOUQTsezm3I86t5G8CIWnpfUvpIlB77aiLph4jlLXKw1pbxL5sicPzm
         R5e8OSUSdc+A2qn5T+LBaei8At6bzq/3D7QXAznfWdfediPRThmAAgxsrXVo2L4Abn7M
         Toa/gcoXKH99j6bnHvYJYUD4Smg2LFi1RFNbLvtAgiKBJ/vsXRGwlxsGuzqTz84cC78Y
         6iSw==
X-Forwarded-Encrypted: i=1; AJvYcCVnh80R93DVs6lBOzEl0gD0ArGkgTTI4Un8c8GeqEf8+c8gw7kGNPt7eTUIc/EfRl1zhsLT+LgXiWFn@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwDX+n/pjHZlc6OHP2KJAwR/Nk39OePh+LEc6or3Ux0I0i/JF
	yKZ2Ily2OPtc0XdI/V/MPOI+DCLkvTRfaGzd29mQXuOauq8i5Rh1eGt0SFT/rFADBsc=
X-Gm-Gg: ASbGncv0IVCfsWzDOmMQyKBDF4oyHWSKCKEi/w2vclIU7epBOob4sfbJUl+vAQLzxFY
	Fes/Q7skZ3iFomg8DxJHjs0mpsYNi4t7eRLh4fRZFO2bcQOO/nCzS+hwIN+wiPLfSbDehrdCRfS
	956eWqlJK3KRbaJB3Xf/0LgxwfPf+p8N+qkBsQ+QUpMWuu6b6cK7xzaH3WiXM9ue90le7iSGEfl
	bHENmw+d+lwsLU/OXuDwFFEWs/kzu0KwI8eJzWDQ2tkIdmwCNKt2rCvod3T8xBW8vTUmvL/VGAl
	ib8bR8rjd1JREqNgqcmjV3YW4pt9aTC8A4E2MB3VgpLb5RhZjK9A6yiHY5HPFjslKYtLEiCju9a
	usBZ/aEkYsP9yUXcAXDW5K89iYN3njMybBBbiIjEnwdra
X-Google-Smtp-Source: AGHT+IFIWiubby8P54yyZ+NEDm49d/HfNfJgTlf8XBWHA6lj9Z1eblfmQfpYt6YpsbvQ/KV+F2nOQw==
X-Received: by 2002:a17:906:3087:b0:ae3:bd92:e6aa with SMTP id a640c23a62f3a-afddd1e42fdmr111924566b.6.1755609450475;
        Tue, 19 Aug 2025 06:17:30 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd04de2csm1023271666b.111.2025.08.19.06.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: nuvoton: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:26 +0200
Message-ID: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1211; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=FEspt0iVKZ8yfRYHrWhEsNIN4cLzv4KYS3eGc/EoYA4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHlmVyXrlyiIY/gFdHxz3MbWI6HNQCV5+WQeJ
 gzzOwzjrN6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5ZgAKCRDBN2bmhouD
 1zEfD/4o1kY/URGy1Rv0/7JJOv4u7J3qfRTUUAcvGf1S2qKzsmGl39EaMnzjXjDqu2GnGA1Fm2O
 GmV19bSHZUVoEn1ABR09+K/nGH43plaLaRHvynGhdnmYmiW4Z++g/wsflv09sjgO3gh5kK7hhpe
 41Q780e27VHbgHqJOq5FYnMK03fIBIBoIzpK/xmYgbKsp7Og42bOMs/3qpWONN8S9PpYtmw11UE
 6vBMez9FzgDaTMR/6D6ujfScd+XcqLIFTNGi1RtkcXvWg3BEtKWPOkgZnerWRH/QZAbs6CWAGRN
 7Q5bZBA1Mhgu4+N4NqQXjBUvTUo5gpSaM5wdeHjY7L/r8dpaIbMics5iakPqy9kdBx5LRys2g+C
 lsECQcD7EhfdcEAiiBE5F5sU+1THfw0JiP6xokGCV7GS5w7DpRL4LS5pjTIRVuyVJtUe5YKSL0t
 5LQyQdFFm5PVBV3iQbvfQjj+kP1nMnCikBf1eZap5T/Lm9r4k3i3Ciim1aMWDPsCkrk8v2fBqU+
 iNAPadd5dI1tbNhZX7wPTxiIyHx7Muu5TJb4R8QBWavrXGo/V3rRQWNBSit/GcmcVMrb1iKbCkY
 yRBQEAw4aZsSdD8N2qtXth7FQfZ/oyHJOkFvXEaPSOx0stPWUbeW5BV+neA9J8n3opFCUxHCXob forjO0sLkEolgSA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 98c35771534e..ab3c3c5713ae 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -154,7 +154,7 @@ sdmmc: mmc@f0842000 {
 			status = "disabled";
 			reg = <0xf0842000 0x200>;
 			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
-			clocks =  <&clk NPCM7XX_CLK_AHB>;
+			clocks = <&clk NPCM7XX_CLK_AHB>;
 			clock-names = "clk_mmc";
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc8_pins
@@ -166,7 +166,7 @@ sdhci: mmc@f0840000 {
 			status = "disabled";
 			reg = <0xf0840000 0x200>;
 			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
-			clocks =  <&clk NPCM7XX_CLK_AHB>;
+			clocks = <&clk NPCM7XX_CLK_AHB>;
 			clock-names = "clk_sdhc";
 			pinctrl-names = "default";
 			pinctrl-0 = <&sd1_pins>;
-- 
2.48.1


