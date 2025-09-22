Return-Path: <devicetree+bounces-219930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E030B8F6F8
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:13:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 404FB4E115A
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 08:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95DDC2FE58F;
	Mon, 22 Sep 2025 08:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wn5mmEaI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF7D2FE04F
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758528757; cv=none; b=uG9vl73wR3c2LXNJ9yAEnJpLgHfETGOgHqao5gnoJ0omuPRqtyO7NtH19tbCqp8xfPr0f6LZ50jBdxjlFu6Ntts6oNh9L6I1NIT3pKrorWXOZJO8Zd1h4kDYEFINZsM+zaV7yKB0tr4dlQID4ZlcNHoDgVpae9+Xytimg/FOeY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758528757; c=relaxed/simple;
	bh=jW34m1dVcRktmghJ+wO36JmqpXfoGmyvLM7Vm/SWXcY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TSsPjgoQdQ1ZYe4m1Od+bq8FCfF8GAq6WkuB6fK8rjWgVBPRoFH8lNUpNXL2CcLAPif2FS309oXnsc0/XovBlGUO3NBBrBXCBGO4gYjJaQ+BSiUcETkFl+ECMZEDFY9faCPzl9vPHMS4kLuvk3jwQQ/fZY0x8/DhyFlVSg5t82Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wn5mmEaI; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ee155e0c08so2487742f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 01:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758528754; x=1759133554; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DybTmKrBLOMD6vf+9QLzWDpmjWc+lV91VxrSnOsEhLY=;
        b=Wn5mmEaIWjjjzbui9nWX0w6xBmrPou9xF1NQwoWVpv+HiBwjRREE4+C1ot7AnJk+F3
         A6iTMP2IJPqnFtPU1nG1m56kBtXrUAYP85Ejfx/YKpoGNlh9rGWB57Exjqow38f6OaOO
         Ci6cORUQjnQOALvHWFgpQGztAkU/ZTX2AY/a4qABNjLDa/RpY0NYzGUWhiBO6mmqRed+
         wqKoyt0/QfkLVQon4ALkmVZsKIo7miYlufVIWkQGAAr87O4k68CnJHh3PDxl61J/cQfO
         GNW6ybbmhmeaADvIs2rZSB8/Zt39HCrI8c0kFPEn19qqhG5++/Y4+GR0gP3JwZ3KiwM9
         KaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758528754; x=1759133554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DybTmKrBLOMD6vf+9QLzWDpmjWc+lV91VxrSnOsEhLY=;
        b=kSuGy6+zpYpeY9u81cF1pVpDzjL/Hgq5/p3s5/2ey0skwwRxPg8x8zvIpn/XU93oZv
         baOwlVAMJa01HmPT2ncP55sLGInJOvZurFJqcqNaUrrjA+ceYEGNmZXt/0eUiqYdeYq/
         kh2VZXzvIUWsidCGo0jDlXhIxYpxPPRO6aUdHMtL7Rtda7BJcLFUHg5+KEAKydtVzHYy
         vJMKQoOv1AXKwTm9qq4ggQedxYhFZI/IyBlcWz5+7FmCrwz/6l0vOY0rEQf41wcfvt+h
         acYSo6tFKhSoOK4XZJim0aF7mXWdbz4dvid38hymL8Dd+sPBj/s2k5VkCy1wwKB3KSSD
         HnQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEqLT/eST7u1SIxiA6yyC8OZpYw35HyCtEWfLTZwoh0ia85WNnXm7pNbazmuMM5OM/2MXav94ruH5q@vger.kernel.org
X-Gm-Message-State: AOJu0YyklmWd6bcmOqr3ThTYPFNNA85/1cwYWLOfjshmMO0SJA5vUK/T
	C7Tc9poBSDaL8qgPrcN3Y6+KFKLl1dYNeBfxpRYJ1BANbpww3SRcQOER
X-Gm-Gg: ASbGncuJMZbwuD+bjO4gN9+J1pWq7hN+99JsxFR/kSy7m7lRG1zUCsBat2ms1vXGMcu
	BGEnlYPE91h3aek2vYweXcKB/tDGMf3qlKhrlBIEkHtNU8hz+/QOhzE5cHHe79gGeU3Unl/NO5j
	gp+yTk7iAiwkaTTHV7anDNA9lnOlA1fbzQG25avKJr6lF6ZFFW7QrxYASiyU/Ag+lBiCP3N6yvN
	jWE7bFjG1nvy9xo4+Em3zaUmTvo6CCabHZiUYm7fAazD4H78JZIpez2e1FhHpHyUgyrRlh238Rw
	7C7cTSlUEqweXaEzZEV7UYB2PX/mP5X+Nxo3adoFGq5F0waNwz4GwvfTYC/P4EsrZMM7SOfkime
	osNOXy1hgZve/FEbyPr14Onsg4esY/AZPT59auzYv6XwY2Lsad+1AqztWgVxf1nEFc8ut7jap/j
	2sovLzgQo8RflpBpgq
X-Google-Smtp-Source: AGHT+IG7fGN4H1P92BRx3rITJwG9FHeCws+SAhbbvZLAva6UiKbmxu9K+H7jexOc/3MevB0fxM8y9A==
X-Received: by 2002:a05:6000:2383:b0:3ee:15b4:8470 with SMTP id ffacd0b85a97d-3ee85e26b27mr11700859f8f.45.1758528753964;
        Mon, 22 Sep 2025 01:12:33 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07412111sm18642688f8f.28.2025.09.22.01.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 01:12:33 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 10:12:20 +0200
Subject: [PATCH v7 3/3] arm64: dts: st: set rcc as an access-controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-rcc-upstream-v7-3-2dfc4e018f40@gmail.com>
References: <20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com>
In-Reply-To: <20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com>
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
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 1 +
 1 file changed, 1 insertion(+)

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


