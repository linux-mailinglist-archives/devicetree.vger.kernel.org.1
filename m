Return-Path: <devicetree+bounces-29588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3FD823DA4
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE8731C2377D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 08:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ED81E508;
	Thu,  4 Jan 2024 08:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AtZJhECu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C8E1DDD3
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 08:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-556fc91aba9so350918a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 00:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704357735; x=1704962535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=AtZJhECu2QkgXNba5k0tJywsneI+/jba8CfOMY8PWd6h3Xzjke6T0T4Fr6LI7rQMDL
         IpD+Mw9SZ+gVrg4roOP66czEevY1qA+rlsK7UbjT8Fa22fBdOsWWThTCdQpllwNbEWsu
         QEZSwx3Y//W/IC3LR/ywt5QIPCklK7tYXZvcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704357735; x=1704962535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=Xwb3aP33k7SCBHd9WfogPIi1w4FNYVFMoUYHfSZRTVQbNCETteMw+UHs30sSapbSkO
         f6BuACfh4ywvNZrZoZsAIhfwZkUXzmRqvG83ZXPRYUaXsN4fE5v4cJDZHktB7aVppx0i
         2mey+mNBCro91QdMRGEvaUEGj4Jj/bO1kKlteIqb6mK0z4Zv+LH5eZXkDsdaE4r+7nCs
         OOgG8NhNAA926Jb6XmJWONzfc82ARqd32SXrG0Qo36YY+b+locCJGZ8iyNmjGUp71bSx
         Nazhr74Zsd793B3kOqtw8U8Ua5HLsp7sDZCKLiqESyrnfXVbWhmMgMQuvJokaw/hFL5M
         WikQ==
X-Gm-Message-State: AOJu0YyK0sgvx/Q03sKDQFMc8GR3ok5PIOT6lRueygngs3VaA/p6x103
	l8/qRLfY6y4BQjegyheexz4k9RbjPnkY0A==
X-Google-Smtp-Source: AGHT+IEgjg6OXhxaGFS6AoqJMMElnHIe5/EC7kG/2rh205kCzPflc399WybxDe97Efqnv/xAvhfCjA==
X-Received: by 2002:a17:906:3185:b0:a28:6801:4a81 with SMTP id 5-20020a170906318500b00a2868014a81mr143573ejy.71.1704357734691;
        Thu, 04 Jan 2024 00:42:14 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com (net-93-150-255-34.cust.vodafonedsl.it. [93.150.255.34])
        by smtp.gmail.com with ESMTPSA id wh14-20020a170906fd0e00b00a233efe6aa7sm13495704ejb.51.2024.01.04.00.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 00:42:14 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v4 1/8] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Thu,  4 Jan 2024 09:41:41 +0100
Message-ID: <20240104084206.721824-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104084206.721824-1-dario.binacchi@amarulasolutions.com>
References: <20240104084206.721824-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding definition for MIPI DSI Host controller.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v2)

Changes in v2:
- Add Acked-by tag of Conor Dooley

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


