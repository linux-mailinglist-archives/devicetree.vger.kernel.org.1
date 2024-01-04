Return-Path: <devicetree+bounces-29554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D3823CA9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 08:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2A671C24250
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 07:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9181F60B;
	Thu,  4 Jan 2024 07:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hrfzsH+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BB71EB3D
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 07:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cd20d9d483so2517061fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 23:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704353054; x=1704957854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=hrfzsH+vwSrcBzMmucik0aZHXRR7Pt4z9rItADrS3PjUV+bqxNH05vGO1DmxWucH1o
         RBszMFCIEtCNxyqizpSgmL7PJcaui+YZPfdJL/GQGlJD9lfsB7FqFIrS4iEny9OUNcZe
         Lf0OduwOYBh4Zx0nDzgFdcpZiR9xACuU3taEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704353054; x=1704957854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZHp7o9P6sSCcRzfgnf9GmPoPPKRvORDv/jTzo46w2U=;
        b=QStfts+/xnNHy5jGX1WWf1D9revTq/OxoeB3WOHG8BOR1Ps137XwZlbGBIO4wpUaYM
         G3+cXxVT5d5T9s9Z84IE5jjefBPsWlUW+ihiTGz7km+YG5yjzawpAwe6+Dgmz0LQIONk
         fd8TrXe+igBCRIdX2umj/wnHf/Fdy6vcxXvJSx2CIL9ejd8JUq3CX4+Jd5GblkhK3K0V
         Q+qr+0PujL3KaVhShvgFrDs5bmYLOmnwq38sXo9Pr5wDkzp24L6yip65iD3kRWbFkP9v
         NG26Ke5pNtgIbNP02EhkrnTnoJ11OpZPO5+IKv/nGaG1t72OpnKXgydoffby2GEWZJiJ
         U8mA==
X-Gm-Message-State: AOJu0Yzw7E4K0GqJBeEZAP+Ma6JNf9VhaPZWlUm58DFKqBvsyEs7bhq2
	TN0stsDlmU+y6qlcYuGcm7xvIf9GomgyEQ==
X-Google-Smtp-Source: AGHT+IG4i/97hJ8aDZ8aV7oljAPTtFLXwe5GU9eipdE578f3Arlwv9CTDaie3sHsTnqpOAseTOaxdg==
X-Received: by 2002:a05:6512:3c81:b0:50e:aa96:73ed with SMTP id h1-20020a0565123c8100b0050eaa9673edmr145525lfv.136.1704353054338;
        Wed, 03 Jan 2024 23:24:14 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (net-93-150-255-34.cust.vodafonedsl.it. [93.150.255.34])
        by smtp.gmail.com with ESMTPSA id d3-20020a056402000300b00553772c2968sm18530735edu.82.2024.01.03.23.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 23:24:13 -0800 (PST)
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
Subject: [PATCH v3 1/8] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Thu,  4 Jan 2024 08:23:37 +0100
Message-ID: <20240104072407.41290-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104072407.41290-1-dario.binacchi@amarulasolutions.com>
References: <20240104072407.41290-1-dario.binacchi@amarulasolutions.com>
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


