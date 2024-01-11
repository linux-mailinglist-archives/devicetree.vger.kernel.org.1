Return-Path: <devicetree+bounces-31310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9517582AC8E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95DAB1C22E7B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 10:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256A014F92;
	Thu, 11 Jan 2024 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MzHH+rmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7084616405
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 10:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50ea8fbf261so5889403e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 02:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704970399; x=1705575199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=MzHH+rmDBp4lEC/4Z+kUgPJFdcsuwRf2WYfcDMJnmLZbeZOZ+IzwqkQ015P6/ywcgc
         aLyhNM7xKBVV2aOJXdjsZI8/KN2zL4YniNDaGwxNNLkhDNUu2INcWArXf+wKXp+UPwCh
         O4S+hBO0Y4oiScwSCFH3dH9NUMy/5J9LU12us=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704970399; x=1705575199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=DjWw9A1aMlKF7MiHDRWXOa4fgbchUtt7AmQednrS8fnhOESft2M3IeI8N2jdifVezI
         wI8yXEdc9zAMO9GO82gyxZgSYorNNiJBaNcezylHmsxvbGzM5YJyzF/j9oAd5tywlcVS
         ydjrfsDCU+xO00flvo3MFHM1X72CLTMnpQkZU6+EQjh/iJGYLes1djVf8z2JfXfFUEcK
         JqDz9VkJpHUklqsJCTYNbODHuc0ndX+/zJgVQJYLL73LXdahiiiFPSEt/C+1nIifjpZ+
         PnQTo5X+R0GY1fCddtd0x//x8fQnBUltrHW0h8bcr8Y/+XxmnAg6IkGHist/df59as19
         tjbA==
X-Gm-Message-State: AOJu0Yyh0zBC2zFOsNXY4IJQ5EhSZJephTNiQc+XvbtZYLXSntPRMwgi
	IJaPBmW/AOGoZrFzspaQtHaPmc2JN0xCjg==
X-Google-Smtp-Source: AGHT+IFWSjXByH6ZKx/v1vTqMtJ7fp1k2eHQ6huyT0Q3lwRrsx9pvciok9UGoesseA9JTkKiNriD0w==
X-Received: by 2002:a05:6512:47a:b0:50b:c57e:1418 with SMTP id x26-20020a056512047a00b0050bc57e1418mr452684lfd.16.1704970399508;
        Thu, 11 Jan 2024 02:53:19 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id eo9-20020a056402530900b00557b0f8d906sm459774edb.70.2024.01.11.02.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 02:53:19 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v6 1/5] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Thu, 11 Jan 2024 11:53:07 +0100
Message-ID: <20240111105314.8186-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
References: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
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


