Return-Path: <devicetree+bounces-171271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C92A9E08E
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F2375A83B4
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5044324EA8D;
	Sun, 27 Apr 2025 07:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="fGlmnVtw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8012724E00F
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739860; cv=none; b=kka3ZAecvuPDYruhm0E0gyhklnoDQdfr/t32+TcQ3CinLMxeMdhtmFe3nZBkKzEH4TT6EfWLs+iZ6TBhhZBa8iThgDZVFu62uCAgIHfChWH/DAoWSa88vxVAjX9ituUEKAj/TUo1I9vm0U4Rzbn4Wm+7qY6wosE0VcaivcXoSnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739860; c=relaxed/simple;
	bh=XQv+rmyAMWAkk266Eh1BSPY7YrAdkwCHljEucegTxnc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FN1rAeQxPQ7d+vW9RGZJ3WyQ3Hp/qJqJznqd9ygYurD3MnbcE98fVwzzG86FNHsGh2vDymAmiYlTl5XJmxEWJF2AIV0FCBu/PpXKmiaEO6MlaDOlHLcwqvJ73bj2ViQ8jawleGZMuNRrlbEvbCAW1P1Vnzq3egPfgCsqUDUnnzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fGlmnVtw; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso34379595e9.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739857; x=1746344657; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B1CHvp+/NAtdvYK3PDi2I49Nj4XN1T6BUHalQZm0Y8=;
        b=fGlmnVtwgg+92BxecaJYMhpwMt5C39IYzVUf/+LQquWDup25kL5jsjFL/qfaWgDgDS
         MYmpwTodGcxsfGj0KzRhmMXUJ1mT5+GeBRXLeGDVLwjPvcx3jIqRChI4cDRrz0dI4viP
         Zk9P9TUs6ayCdyJ7psdeHPJ3Ji8qFwo6D7gUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739857; x=1746344657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3B1CHvp+/NAtdvYK3PDi2I49Nj4XN1T6BUHalQZm0Y8=;
        b=DHY+SXa94267BswbUY6wRet3P6do693qympiRetl9XTu2qlGA0M848Tbll/UanTHWl
         veY/qitTjhLQbMF5kIpemDw5ts35mN6ELESFQ4S0CR0i6+aNxl72yJxDwzrQKmoIFXxL
         iG2DQqDWUiU3zD8my9J/MwKRM7hV1XTq67QewUZOP/dYqUrTvxn+cycgAvX89PGuLNIf
         46/KDsYm7Vsj5vxQc6iwO1J4GzsR5GRXYSlQdHNOyTU02ZSe+aZr2CDD3eRHXnFV8w2k
         IROlyDr3J+1MKMR5vzMKFHChzf6GJNt+Rq1pLmVkAihTV0XDddu6ARKvsH+dxj4EC/40
         0f/g==
X-Forwarded-Encrypted: i=1; AJvYcCX4f8Fc2Ef9pJKX7z9Q19cYAm2XqK0Qwow5EvseOeUW/kXBfkpVGBiD6zTDet+87RY+caypTlE+0lQG@vger.kernel.org
X-Gm-Message-State: AOJu0YyHRET55MhrnkCEOyyjGf04oeWO12O42D3MsQhZwm9JjSmatttF
	Jk/T8q0ONiclOmtyuQBO5v7M8pt4s2uhTLtS0QK6xhtop8VQcA/cMojAfaQDv7o=
X-Gm-Gg: ASbGncvcNWotiTTmiumyFhTOgVz9l0E5sx8VuflYp1HtQw63OS2lYmeKmOFjkBkKCWA
	kVZTOj8RXanFapaJ6ckttfJBSkpnGgnOzFhO2/rQMUjS8yTig47LM/3Iq5pDE/V6GYHFd91Tk/m
	84qV19EpEFMU324zRguAMlWdVVZuziJdGqCNeYF1QBzdsPoZGPM14BOyGRqffb7SjcLxyHcnU50
	0KQO6a2m5kpkaVvxDQLztrCEDwnmA9wMXKOccJgsDtr5d+Py+yrTfxxCu7Q6a0I2OmElmbUZKw4
	R7Kkm3UJMTUvawm4FSqzmbEfDHjuJ4gvvb/QVuG6ECyLGRI+Vq+dH6CkKRLQnMJ9LC3rnsjwaIZ
	DLo/FiA==
X-Google-Smtp-Source: AGHT+IHZNrSu8FzIhEuFQ16NlJu+RuWVlKIcqsPehnQolCLBlqZN3KSAMIIbMcfsM4WNgYabQGztRg==
X-Received: by 2002:a05:600c:a15:b0:439:9e13:2dd7 with SMTP id 5b1f17b1804b1-440a64c159cmr74151955e9.2.1745739856765;
        Sun, 27 Apr 2025 00:44:16 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:16 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 6/8] ARM: dts: stm32: add pin map for UART8 controller on stm32h743
Date: Sun, 27 Apr 2025 09:43:25 +0200
Message-ID: <20250427074404.3278732-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
References: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a pin map configuration for using the UART8 controller on the
stm32h743 MCU.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
index ad00c1080a96..96022afd0168 100644
--- a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
@@ -211,6 +211,19 @@ pins2 {
 		};
 	};
 
+	uart8_pins_a: uart8-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('J', 8, AF8)>; /* UART8_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('J', 9, AF8)>; /* UART8_RX */
+			bias-disable;
+		};
+	};
+
 	usart1_pins_a: usart1-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 14, AF4)>; /* USART1_TX */
-- 
2.43.0


