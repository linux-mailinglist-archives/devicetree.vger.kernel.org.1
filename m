Return-Path: <devicetree+bounces-34671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7983383A7F3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AB2C2944AC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F073720DFC;
	Wed, 24 Jan 2024 11:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WqeNXJxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B351B598
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706096027; cv=none; b=GlP9WNPQ/K/NC0k5PQ/831+EpxTnK5eQbX23b+fwfLFwOTVuyjEBvUZe1wxQbMmslkxllOJfAy6j64Byq/DG7nakmq9029GrlIWLP+NrealDGWYI0iu6wInCvI5wg6nU7pivL6BbkOYscqf3+C0ejrAFKdT4J+BK+OyMosUoJNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706096027; c=relaxed/simple;
	bh=TrMz+FVqnEFt15pmSJ7C1EniAx32J0Ey1WSwWETsL6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UWJ19iCDtLT1nkY1jUmy/ehJLQXVu/kPtstnqIP+WiX+aQRD/3jnA98AdoZ2k0BSLLtQfSnpkb7lcJ/OdXqlkc66koEUms2j2zitvq6G43IsKwB4Ug376mDJQfJeTVIncBX/y05C4sKC9Xh0jcOOY/NNvxxj50R7Bxf0ovUpR5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WqeNXJxj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40e9101b5f9so59046015e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706096024; x=1706700824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WphLFokV77snya9flF2ShSJ6MCXN7QDFds6UuGxFul8=;
        b=WqeNXJxja0z5oh/jUs2Hjp9qL4BVnyX9PSgwBZ2Ra5iL0Kw7jzYpK2QmwRokwFOSKZ
         EuB3PgEGnNe8yDg4KMdm3X0eI5xOCEl4fsxWD1JcA2K+ip0YXcguV3r3xMGOH8EnudaQ
         ODRpzcz1vC1jggnOAkQ/dfU6v685Nxi/MDjvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706096024; x=1706700824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WphLFokV77snya9flF2ShSJ6MCXN7QDFds6UuGxFul8=;
        b=fOEuygyp2GcLcQ0QpTPosit6zpjzvZebPxb9MxGb8gjwPEbhMPdXccUFG4+5vUOLSZ
         H5YfcMO7QTPS5NxAesg8r+DVhOBNdSn2vyHys6zNbx33Rxt2z61vImXadyElzHwECHej
         dcapjuMmzOei4tu23Ahe4CEqCsPf7DZsRozRuLYrWODgEqml+SoSn8VCpXeze9YNzhjX
         DCSXRS554iac+coLe6yjVMMIMC5nWKJ9VJGvfL2yAaREp9y+0b4mjwzIOyAgPWabciQS
         hOD4w7UQwtkU7uL11C0CAmmpHsRctlFCCH/9L0ZC94OQDJ/oalHPzqKzzErhP/KncrfW
         czzA==
X-Gm-Message-State: AOJu0Yy7vglIBsKY7jG7pToavQkjfYs/jAs6Hb0PT3PjMRRpsbDa/Im/
	Igl/RUvuvn0EFarIFKVEo4MB0R4+kia8f7RW5SeYeZZKW9WA5u2vdSv0Kg5SGIw=
X-Google-Smtp-Source: AGHT+IGOUkv5923WUqPQ5SE+T1OnkUB/eAKV+nDxqcTwfy3veeTmgeesBlzUJorJkQ+SmHn5MBZNWw==
X-Received: by 2002:a05:600c:993:b0:40e:4b49:51ab with SMTP id w19-20020a05600c099300b0040e4b4951abmr1002281wmp.158.1706096024345;
        Wed, 24 Jan 2024 03:33:44 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (mob-5-90-60-192.net.vodafone.it. [5.90.60.192])
        by smtp.gmail.com with ESMTPSA id i18-20020adffdd2000000b003393249d5dbsm8447950wrs.4.2024.01.24.03.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 03:33:44 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v9 2/5] ARM: dts: stm32: add DSI support on stm32f769
Date: Wed, 24 Jan 2024 12:33:11 +0100
Message-ID: <20240124113336.658198-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
References: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
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

Changes in v9:
- Drop 'interrupts' property to fix yaml checks

 arch/arm/boot/dts/st/stm32f769.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm/boot/dts/st/stm32f769.dtsi

diff --git a/arch/arm/boot/dts/st/stm32f769.dtsi b/arch/arm/boot/dts/st/stm32f769.dtsi
new file mode 100644
index 000000000000..4e7d9032149c
--- /dev/null
+++ b/arch/arm/boot/dts/st/stm32f769.dtsi
@@ -0,0 +1,20 @@
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


