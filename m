Return-Path: <devicetree+bounces-31327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E40982AD7C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2237128264B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8BA1549C;
	Thu, 11 Jan 2024 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gbIXx6W7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADA6156C5
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a28e31563ebso554972366b.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704972710; x=1705577510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=gbIXx6W7S/N0t8IgPrgWTU5rPsQ0SBBg0JZwhs/Y9U/xk7Dd64l/FK8wTdLBKjoykH
         HcjiezGmJV9RtHCidATTCCWFhc9k4sSo/3seTzbKEU0oxfdxX3ZlQ2HQaWUvYxWclOPq
         O3p8+XHkU3EmhBeWlMBlZ+/KC/IFAN23saNvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704972710; x=1705577510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=a7oQ0Wk5GDV8fsotuNAGYnNaf53Vc9PEw5BuhEjgOsdyfEidiF0neR7kH8KsLOC3dX
         i+clv3T40bIocPB8o7Fi948pyd6XtIhKAgqZMtHIP4hzpe6BtTJxTHdsphTFSrzR9x+L
         joFnFgj6p/4ws+ahgIAXTlNU1ZOoGiD+oSYHKh/Xize+X/zmTn1skYBbjhXik7NIU9U0
         eKUFw76NvotCmcexjIbo3dJJJ9qnpW8YqUoboQFUdTSd7f80gwbCG760WZi/psFcbGv0
         foRq/2iO5c4X9gbCqEtynyUVg1BqTF9JqFVgJ9IfstKaXXb+vGRYn7VgWFbGSas9IdRH
         eAVQ==
X-Gm-Message-State: AOJu0YyaL3gSKTH0bD5jgdVxu00r4y8BxakBrjM9relpWW3/Shx6Twhz
	1bDYWA7vnkedOCXt0HI5R+mqkwbSPLBSWJoYgV1PtFeqiu0=
X-Google-Smtp-Source: AGHT+IHFMFWEo7pT42k2eRPY1duLfQ7lK+uV5su4JJVao6pzorXAy5DdRBaekzjail/qo7w7w92U5g==
X-Received: by 2002:a17:906:3412:b0:a23:6c99:403a with SMTP id c18-20020a170906341200b00a236c99403amr522992ejb.124.1704972710157;
        Thu, 11 Jan 2024 03:31:50 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id n3-20020a170906688300b00a26aa734349sm461565ejr.39.2024.01.11.03.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 03:31:49 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v7 1/5] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Thu, 11 Jan 2024 12:31:38 +0100
Message-ID: <20240111113146.16011-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240111113146.16011-1-dario.binacchi@amarulasolutions.com>
References: <20240111113146.16011-1-dario.binacchi@amarulasolutions.com>
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


