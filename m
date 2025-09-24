Return-Path: <devicetree+bounces-220675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0915B9936B
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D7B316B272
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D2E2D9EE8;
	Wed, 24 Sep 2025 09:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J9pMeLkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1BE2D97AF
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758707095; cv=none; b=dw7kU7yjuGnEu8M/RktA6a3apMmgJDUOmZvpmxk4tTQ8COcLPL96ptGb5bIsQM6u9hgck8Aifo0roVbv5hqZ22GsQ0OB6XHURRvAvLyuyUhz3PXbEZfuh08L7cNOs7a1kDtw69NPk7JafWzkHA9f8DlD8AJ90CHzc15ZMIP1228=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758707095; c=relaxed/simple;
	bh=w5eO9tXRAj53rucPnsS4UWOkqrDkGW0SbludZ3UzkzQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aOdjvIZ59QG/M9BMuiEJqyGxw/p43xbo+KSrsfmYK3twXKtRS5p4+fxPrszYAp/1DIn+KWBWGMNGbuqcZqmZ6OKbZBjv1qoe91ddIJyqUW/vVzROfzHy5R2a4aEtQCEG+/QXBpWaYjOHQa/CdIZ/c1+XpYUsubI/p1T/63+FpiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J9pMeLkg; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e23a6617dso15029545e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758707092; x=1759311892; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hH7fDiyFIwd5GKCGsoTM7UQ+n2/6xvaN9QjJ2WXUyBY=;
        b=J9pMeLkgOs5J6cFyolsAJ40ige3A2oejtHlRQyVeX8sUgDG3YlyIzLslNd5X5uYiUL
         ZXUMCTDN3yYRVwqKe7wBF3KizWUG2hQi9O/WuvMEfO53i5VLRfjXBl+X98M7qOVM0ZES
         DKilxb7HwGEUQn1CPNjJDAQvT3CuroFkDGRA7yZJSWZ7q8Vjrfn0HKzTAIWDyDfbcVuw
         V26yz/6R418gVtQTJHehVXRB6JVFaGQglGongrDcvWoZEwFxhozBm0gnqiWPr2dYD3r8
         OCz8EVx4DDLE3mbVHcMLtKz8EVDC9+KbiQ6Lb/qjH5RHlKRSunZp0xkPmu//RwnQ6H5X
         D+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758707092; x=1759311892;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hH7fDiyFIwd5GKCGsoTM7UQ+n2/6xvaN9QjJ2WXUyBY=;
        b=Vo9TUeXlCeD07z8kulsh4N7ozg1/c4Hs//CJ8B45rww8xhHDOp5dzP6Eu4zxem97x6
         Vv28rIK8VRxs7xdJ6E85ERKX+qZAVJ7XPXdK80GBYXRykfp8fWgXU5cMjIS5ZLwx3X3L
         bTcaO+ZcftvYLLG5KpLMAp7EL2xxI+8CIRdrKDcvXVFlKmAR81dVGb0y94M2zZNDo6q1
         XXuDTaXDcf4nWTIGo+LsMjeIj6kXcLXCQw7LCDJogDHCzXOaXjXARYj54aPEVBOJ6j7S
         XVeWNwKyQREbQ7RDIMYxBP/H1cpOUCA73wZQsLmkfDN9Qxzi+gIsFgHy3KrinIbMyCGY
         XHIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmhbN9tu5IVJCMClcAeI+de5S3SFPzGVkRhPIp48YhhfT42JoMgpsqFpEzfv5Vd5+iF6PhSqyyWnuM@vger.kernel.org
X-Gm-Message-State: AOJu0YxtLyIgYwJ8MaecJwC9OQ91E5jSOrFvy3AiF3b1TCs3uzCrFgUV
	JQPFfoqX4fvZvzKpvmARMDHwUQlYOsIj6A2PjQtUxAyaObKvnWnQ+6Gq
X-Gm-Gg: ASbGncuX0/LvloV3q9iKCKKpV3xYwohXM9XXBqWlGunAVF0TdJtREwhS1astoLA8lO0
	AIcfhc2VetXmIr5f8UbZtFsuYgv4tay9q/maqtyBYsMeKD4WOVIHByJrtA0m8KVzt5NhBtZt8gT
	uv3eLEF+R9hB/0jkDcUpQQ13jJAEDaNoJ7+2yzCV83gf0Doci+3fULjtCvzuuAFWpfZ2z0e9kj8
	/uAflWj3fexa82kXUmcS98qeSiwuuuqAwAzd574g2+BAVCQ7r+hMB1ki7f7GPr7/cQuuWJB2j/M
	068d3pDxnnRCi18v+lbVleHT4HX9XeQnS7eW0BRSHwRsZLRmrHIcIT/RUtiyzCaxvlI9dck5KXi
	4yXdEtFkZOvWwsylwWqqA6tE7Nme2r7qxksnBelsuUMA9udypm2WA4Z5T1NgKVOVNAcUgfXJKyu
	zxNYVB6zi8uhZdw2R5t645uBlV
X-Google-Smtp-Source: AGHT+IEIpicMOfP08Ui6PtoUDCNZ6++RjL5ZW9INST6VLjpDrbiX7bE7tvizzZ3gSwxM8E2g4eP1TA==
X-Received: by 2002:a05:600c:1914:b0:45b:8adf:cf2b with SMTP id 5b1f17b1804b1-46e1dab512bmr50452905e9.21.1758707091986;
        Wed, 24 Sep 2025 02:44:51 -0700 (PDT)
Received: from localhost (2a02-8440-7503-805b-0076-f865-8f03-23d3.rev.sfr.net. [2a02:8440:7503:805b:76:f865:8f03:23d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07407cffsm27184233f8f.16.2025.09.24.02.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 02:44:51 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Wed, 24 Sep 2025 11:44:44 +0200
Subject: [PATCH v8 3/3] arm64: dts: st: set RCC as an access-controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250924-b4-rcc-upstream-v8-3-b32d46f71a38@gmail.com>
References: <20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com>
In-Reply-To: <20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

RCC now implements firewall access ops to check the access to
resources. Allow client nodes to query the RCC with one firewall ID.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp231.dtsi | 1 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp231.dtsi b/arch/arm64/boot/dts/st/stm32mp231.dtsi
index 75697acd1345..8c0dea2796a4 100644
--- a/arch/arm64/boot/dts/st/stm32mp231.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp231.dtsi
@@ -776,6 +776,7 @@ rcc: clock-controller@44200000 {
 			reg = <0x44200000 0x10000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			#access-controller-cells = <1>;
 			clocks = <&scmi_clk CK_SCMI_HSE>,
 				<&scmi_clk CK_SCMI_HSI>,
 				<&scmi_clk CK_SCMI_MSI>,
diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 303abf915b8e..fbedf23def52 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1677,6 +1677,7 @@ rcc: clock-controller@44200000 {
 			reg = <0x44200000 0x10000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			#access-controller-cells = <1>;
 			clocks = <&scmi_clk CK_SCMI_HSE>,
 				<&scmi_clk CK_SCMI_HSI>,
 				<&scmi_clk CK_SCMI_MSI>,

-- 
2.43.0


