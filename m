Return-Path: <devicetree+bounces-28913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BF781FFCB
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 14:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 762591C221EF
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 13:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9068C1172B;
	Fri, 29 Dec 2023 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Boc1s9wj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1416311713
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 13:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-555e1bf6475so112480a12.1
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 05:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1703857940; x=1704462740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dANREROD+IgEOoBD9HuNETn+rArj87c15/xEZ3DaVGI=;
        b=Boc1s9wj5Ww/HqN6FEJ6FcDJxXpG8i0FjHrxVRC5FKG9gxIhEuwBXoWT3C1Hp9RKJ0
         b32guv2MkrrcTo7PS/kjpXtCDtdrAJJGpZBVe+Ma3MEH/vqE8HrbWAHPngenJAj2XRJU
         Trr7VJGlmcwJ01k1FBV+DW5m7lemVCbANMLss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703857940; x=1704462740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dANREROD+IgEOoBD9HuNETn+rArj87c15/xEZ3DaVGI=;
        b=No8c6RsZ/wGrXdxukhqhsCBBizvPHw3B+57cHBmRkmhogA4JUg6SxiW4elhdk1cWf2
         5CxK8M5Yi2S+HWYuVaaROKMug0kpo0ruC6QP6U0QqXLzr+/dxuKwW0E0ybwiKEotubhJ
         d1w3/WS3RoYpwEYJ/0itxOjaSF9ohBd4SNRZ4U1ToeaGl8LZuCfnd8r//LF4joFcnOO/
         DJThBbugPprd+LEjH0FHazNMDki1gkUYYvgGeZePlUgEg3UC6FGyntvpTZpW/VtARpkQ
         q9sj26nCz+Z/4gnrirZIPwUdKihgIDpKCEbHWQCHl7UHx3wbTNRJS2kiIor5DTTi2G6C
         gGDg==
X-Gm-Message-State: AOJu0Yw7kF3RKFslVixCzWakgaiwxV5KB56y/Q6pMIjz/392Eu9ZHkb8
	e2RcZrJUNhjeOYnK6mZjVZwSnfeSGTcdtg==
X-Google-Smtp-Source: AGHT+IHyVOWOBfNDlo4mol1vW1dAUbg8qeIE2UPa9VsA43TGgnuDO8rSloKG/nmcBd59a5nddE3kxA==
X-Received: by 2002:a50:b404:0:b0:554:9bef:a1e9 with SMTP id b4-20020a50b404000000b005549befa1e9mr5407202edh.22.1703857940388;
        Fri, 29 Dec 2023 05:52:20 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-49-57-70.retail.telecomitalia.it. [79.49.57.70])
        by smtp.gmail.com with ESMTPSA id i16-20020aa7c710000000b00553b243b1a8sm11019160edq.92.2023.12.29.05.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 05:52:20 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/8] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Fri, 29 Dec 2023 14:51:16 +0100
Message-ID: <20231229135154.675946-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
References: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding definition for MIPI DSI Host controller.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 include/dt-bindings/mfd/stm32f7-rcc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/mfd/stm32f7-rcc.h b/include/dt-bindings/mfd/stm32f7-rcc.h
index 8d73a9c51e2b..a4e4f9271395 100644
--- a/include/dt-bindings/mfd/stm32f7-rcc.h
+++ b/include/dt-bindings/mfd/stm32f7-rcc.h
@@ -108,6 +108,7 @@
 #define STM32F7_RCC_APB2_SAI1		22
 #define STM32F7_RCC_APB2_SAI2		23
 #define STM32F7_RCC_APB2_LTDC		26
+#define STM32F7_RCC_APB2_DSI		27
 
 #define STM32F7_APB2_RESET(bit)	(STM32F7_RCC_APB2_##bit + (0x24 * 8))
 #define STM32F7_APB2_CLOCK(bit)	(STM32F7_RCC_APB2_##bit + 0xA0)
-- 
2.43.0


