Return-Path: <devicetree+bounces-31658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5392B82C216
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 15:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07C5A1F25332
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 14:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45A5B6E2BF;
	Fri, 12 Jan 2024 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cLnNct4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46516DD1A
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a2c375d2430so270249766b.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 06:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1705070950; x=1705675750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmQnQzOW0HVCglZmRdERbSkiK/7LfpA/GFNr/QR6hMQ=;
        b=cLnNct4e1FBsDE8Hbau/t6ulBRYrbwhlo7iIKD6qIMO2hJGdKC5XLDkeK2Pp1Iizvb
         yukC6rl3DveiGVyX5xFZrOtMeP0rYprnA/w+NUYjtgIX07NSFmE/l0mpaR5BNj0EGBX/
         T52RPxc3z36i6oJ3d5Y/ASPuaIgP/9SLdKKf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705070950; x=1705675750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mmQnQzOW0HVCglZmRdERbSkiK/7LfpA/GFNr/QR6hMQ=;
        b=cV+Md9bgqWsWuEU5/bI1BpAfo9oiM7xEGlZrpwlt6y4XRGr6OX2Mm2Pzz6ZDCupE60
         hQ2KfOWmUAr5zmpVwhyswqRJiT6DnrOMIfZMIM77EIzwztJfbo3YPXO9+3lZnCnOo9Sh
         LxV+bCAG1tz9QFkMzSWHZnDJV164BRAYHbbpby9paBK/K0enjN27iQfp/A5XqP7+Q9b7
         5fZQf5lHfRBsG9kOnC/6ufHB/t/UOpNKldd9iHPnx5MPsTDvuLSa3q0YhIJHxHjS4sEG
         sBm8HaK0Z98b3OaBg+lM6b79W23Y6VuxZhgxjS/tb23Aogpt2tKPoS4WRRK4BMC/jZ1k
         23+w==
X-Gm-Message-State: AOJu0Yzkhf6e2Bxic+xKQwG11DwgWRRjWfrRgu9HqtdN72gTCkblhZdx
	2J4aXrprXPvK9bDE+kfjArkmAWMkm/XOMw==
X-Google-Smtp-Source: AGHT+IHYE6WynxzGM2phhAonl7tB+VThaQnxrNudcqv2wkwoAxXrc2uhBIkAE0+iaAAt7os+42i7Ew==
X-Received: by 2002:a17:906:5ac3:b0:a26:edeb:7635 with SMTP id x3-20020a1709065ac300b00a26edeb7635mr740160ejs.91.1705070949914;
        Fri, 12 Jan 2024 06:49:09 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id y11-20020a170906524b00b00a233515c39esm1869372ejm.67.2024.01.12.06.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 06:49:09 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v8 2/5] ARM: dts: stm32: add DSI support on stm32f769
Date: Fri, 12 Jan 2024 15:48:22 +0100
Message-ID: <20240112144902.40044-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240112144902.40044-1-dario.binacchi@amarulasolutions.com>
References: <20240112144902.40044-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for MIPI DSI Host controller. Since MIPI DSI is not
available on stm32f746, the patch adds the "stm32f769.dtsi" file
containing the dsi node inside.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/st/stm32f769.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 arch/arm/boot/dts/st/stm32f769.dtsi

diff --git a/arch/arm/boot/dts/st/stm32f769.dtsi b/arch/arm/boot/dts/st/stm32f769.dtsi
new file mode 100644
index 000000000000..e09184f7079c
--- /dev/null
+++ b/arch/arm/boot/dts/st/stm32f769.dtsi
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ */
+
+#include "stm32f746.dtsi"
+
+/ {
+	soc {
+		dsi: dsi@40016c00 {
+			compatible = "st,stm32-dsi";
+			reg = <0x40016c00 0x800>;
+			interrupts = <98>;
+			clocks = <&rcc 1 CLK_F769_DSI>, <&clk_hse>;
+			clock-names = "pclk", "ref";
+			resets = <&rcc STM32F7_APB2_RESET(DSI)>;
+			reset-names = "apb";
+			status = "disabled";
+		};
+	};
+};
-- 
2.43.0


