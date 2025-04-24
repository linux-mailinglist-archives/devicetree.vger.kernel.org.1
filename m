Return-Path: <devicetree+bounces-170291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40366A9A6CD
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E08A440637
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8736D22578A;
	Thu, 24 Apr 2025 08:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DK6B21/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D5D2253F2
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484442; cv=none; b=DXVYkd9kfRzLf0TDSbtZMCYbXgabHcbDp/MBxVbydCvEkfElGlXI4M97AzRPVeOfh6HxVa71gTGnCLrASQyIhzbuTfmIJgpztvDovUt7M3jvpVddlahKJKVw0hOdDBSnBAb4aC7Uu7kRMzwdJEXqGfidSgofQsex/I2loTnn970=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484442; c=relaxed/simple;
	bh=52TCmL6yze6IijtJ2WL2G64ThN9FilAJXpP1Ma1xS0A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VUJHpRDIOgG0sBdrtUaPM+rHXIkDiA6Ke00Qx/Lp56E/z0c/7XktkaVBIf80QSZ2MGE7tVyrh/rl41OHF/SCxU48zzVVdYTL/y47FSWDwnBBFMM2DO4YUz55PW6RuSeBHsK4luw+xop4pj9kwp56AO5P34918/+0oJdsPFFgPr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DK6B21/Q; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e83e38d15dso91696a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484438; x=1746089238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TkKf0I48EJEx+ulabimoTgG6CaK78BkumSkM0fdq280=;
        b=DK6B21/Qb7MO8Pv39twMKZA7/LSF7oKb/OlLTBYWTnrqRWmCDHL62jPfEbrqPp2Ogd
         uzQvfZvWsut4yfP6F2dEAhrU2TBmqCDk16vmSNA5TyJDfSkqHQEHjCEfxYBpnD8AiwQj
         2fF2Mqj8xbk7vtmkfIs90eSVECJ0aNNiJ0WAKoOO9bwg/A+O35Sc1/Vt++81pJM8fNx6
         XfK9hc1HZeDSGKTKuZsULRVrROKrxEPU5vPWuQaV32KqDTckP0VSkZSzmFaFCocjNpLZ
         ay51AGAfcUzlUbqTBQhcXORm2dlPM2uRgQNPnp2Hgkcm3GdKL6WLZVHy+hVQCp58NVS+
         zvUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484438; x=1746089238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkKf0I48EJEx+ulabimoTgG6CaK78BkumSkM0fdq280=;
        b=MYFzeoCSbuEiZPq0QOCwj0cAlsmh7hLR71ZOpofsaiPSNetbcn1X7cABSncpdjAl9m
         cwQA+RNNrPAYustbs4ypdmMD6NT05htPJ67AmOHSgipP0nuKyiFV7qBuPa7kDna45gOB
         YTnkG0wsUC5VrVMF1N9cQZqJiab5EST2J1iCldDepkRHaOu/ot2zEXkKF8uS/yaUkgds
         D3w3UPqHUIKiE6j/cZT8nYv6oLuD4xMYe8FV/qzE5sJkr+C2FC/J09bE4OOoUFned8hk
         MdQiBBgaw+RKbPUeCChRdQBUmXBHFgy+wjIveya4lMypdIehQwhdDX4gK7t9QYg9bgQZ
         +oAw==
X-Forwarded-Encrypted: i=1; AJvYcCWJBl2ILFrwWR6N2YiOqaTPZMP+ec3bqN422oq3slkkqVtDNOgFqpYYhEMaDzZbfbQluoEutvWmoeQ/@vger.kernel.org
X-Gm-Message-State: AOJu0YxVz3dKl9Atx+CPnXm67A4OipD/yXT3gMkZBzJs1XYKPiIEkAHJ
	ioXY9cVSXuwG5olG3R1m7ZOqn5hqLkTKBUsktwWOR4T2ANe1LL14gi9MZ4LYfeY=
X-Gm-Gg: ASbGncuDNuRX52pNLuGfIH11xR24BTstTkStnz99azEUglAMCRXEimvtXxMfrN9TPxh
	VuSkozLvUE3JbRBF12sFrWYaFVuorcT/tHG5YhdfW6yMPXiDGR9KSgJ8729jK9U0UwFlFfrQR06
	WY2494/P0q60mu+ltUASjg3N5N8YJ68bZ8ABcXTbq4n8wR1Pea8zc7FM97t5ChnWImZDyaBIwDa
	wb0RpSVG1xqaki/vziDQZAyIwZmPIHBLVHJDLmjoEUUDmg//NbL1HI287c0Cy5Q989++nKMWKy5
	94D90GJXH3wIM6uPFRejy07g1m1fWHqWUefWUjkLe7TzdYkFag==
X-Google-Smtp-Source: AGHT+IG+cDJAHdn4/cn1tiQb1bWyq1Uzz+FzuMRv4Ggnd/ci/fWTGljNrhaBhb0RjrZFEl9cMFNaaw==
X-Received: by 2002:a05:6402:51d1:b0:5e0:82a0:50b6 with SMTP id 4fb4d7f45d1cf-5f6df233ff3mr581983a12.6.1745484437930;
        Thu, 24 Apr 2025 01:47:17 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6ed9e1ee5sm802171a12.78.2025.04.24.01.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: qcom: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:13 +0200
Message-ID: <20250424084713.105080-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  qcom-msm8974-lge-nexus5-hammerhead.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
index 261044fdfee8..b595022ca025 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -598,7 +598,7 @@ &sdhc_2 {
 	pinctrl-0 = <&sdc2_on>;
 	pinctrl-1 = <&sdc2_off>;
 
-	bcrmf@1 {
+	wifi@1 {
 		compatible = "brcm,bcm4339-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 
-- 
2.45.2


