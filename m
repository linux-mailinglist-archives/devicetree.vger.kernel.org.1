Return-Path: <devicetree+bounces-23472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2815180B58B
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C77FB1F21192
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD68019442;
	Sat,  9 Dec 2023 17:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RIHIjysm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF0710DA
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:57 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ca0c36f5beso39379581fa.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143056; x=1702747856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oSzsCw66aSx0p8zyn0VK/qCKSJ0A7CHuboWFkgEIMeA=;
        b=RIHIjysmXSNb68kY08YBUU0DLaTUMCeLCbyULUyRK2ST+CLdFnFDQ76vHEF0LkepSD
         dPVNh26cYLE+yDni6xjOrdgb1KMFXICOUhS2i3CVa5YQMrZDO1gDFql470Asow23g8Vk
         eeKM1aEzW1TV5NUpwWQj7llPttN925oYQwYaosTZV/j7BzpbooL7VR6MiVLYs5JSAEUE
         cVYnw3tJ3OvLaj37wEUv5yH8ik2nkaPD/5bCFMwHz4eq5f+yHZMmr8oOTc5XwQBJ6OQg
         A1/iJVO1E03fygTfRB5lSwXo94aZn+xHyX9+oRKLZBIt0Tz+Dmp30eucTtnthsIWIiM1
         dxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143056; x=1702747856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oSzsCw66aSx0p8zyn0VK/qCKSJ0A7CHuboWFkgEIMeA=;
        b=Ug2CZYO0+rmm2BQsKmgbtjPHeh+5R25FJQh57CSilow/lEqPgFtkjVtBav4wKyRR2S
         Z73ReFcQow/TlkEwQKvv4MHfiKaNs6qZvlh+c9dNpCqr7iarf0bIcyOhyqG/sxQsv6RM
         agBzK8TvM9KJnLzHqPFe2OgqDSsvxOiNOCBQN1+sks+elnZpgnIATUPE4CtK33MnYdmL
         WKYUKclWomw2S+o57AktIWrIvO7FJN04CaHnxOl1jWcHFvJCqlA9ZkqlTrh9pwAYnLHn
         KJ1eIimwm9YMC9ijN2fK98m7BnvlEHIF9JIeCpzAKnopVRYd7mdCak+TwjYXjt0EsAvX
         6bHg==
X-Gm-Message-State: AOJu0YyVbC3TMIx8jqgMFP4woFYE93/qyhs3bLAdftSBvk5xWbExXcLf
	h6OP/6lOJ9rOnh/3W3vsjUb7jQ==
X-Google-Smtp-Source: AGHT+IH37fvpHOxSIqMWeEpJnkik2YGLxE0uj4jQysdexjzsLxTYKLmEYueBZgUiZEBRex6tPwCnpQ==
X-Received: by 2002:a05:6512:1595:b0:50b:f78a:37c8 with SMTP id bp21-20020a056512159500b0050bf78a37c8mr1124964lfb.95.1702143056120;
        Sat, 09 Dec 2023 09:30:56 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/15] arm64: dts: socfpga: stratix10: move firmware out of soc node
Date: Sat,  9 Dec 2023 18:30:36 +0100
Message-Id: <20231209173044.257684-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "soc" node is supposed to have only MMIO children, so move the
firmware/svc node to top level to fix dtc W=1 warnings like:

  socfpga_stratix10.dtsi:625.12-635.5: Warning (simple_bus_reg): /soc@0/firmware: missing or empty reg/ranges property

The node should still be instantiated by drivers/of/platform.c, just
like in all other platforms.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested
---
 .../boot/dts/altera/socfpga_stratix10.dtsi    | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index ec086ffcc4a2..59075b958048 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -59,6 +59,18 @@ cpu3: cpu@3 {
 		};
 	};
 
+	firmware {
+		svc {
+			compatible = "intel,stratix10-svc";
+			method = "smc";
+			memory-region = <&service_reserved>;
+
+			fpga_mgr: fpga-mgr {
+				compatible = "intel,stratix10-soc-fpga-mgr";
+			};
+		};
+	};
+
 	fpga-region {
 		compatible = "fpga-region";
 		#address-cells = <0x2>;
@@ -621,18 +633,6 @@ qspi: spi@ff8d2000 {
 
 			status = "disabled";
 		};
-
-		firmware {
-			svc {
-				compatible = "intel,stratix10-svc";
-				method = "smc";
-				memory-region = <&service_reserved>;
-
-				fpga_mgr: fpga-mgr {
-					compatible = "intel,stratix10-soc-fpga-mgr";
-				};
-			};
-		};
 	};
 
 	usbphy0: usbphy0 {
-- 
2.34.1


