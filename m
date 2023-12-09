Return-Path: <devicetree+bounces-23469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3B80B585
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12DFD1F21228
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4B518E07;
	Sat,  9 Dec 2023 17:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kBrqIJu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9400010F1
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:53 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54c70c70952so4379789a12.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143052; x=1702747852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oi6zjNJ0tkdcdWyt4uob3FWVkKt/0zdiNoz3WNfhreM=;
        b=kBrqIJu0UrRpjnr6h1LvAVVKwDAZn5PCPrsfNVHLkCBFJjWbCORMac1+262ndyqkac
         ah9upcam68vUKWYBYfH8IBUMAEwfdEFdKRAT0K+HUvYPafSYzF1M3KIs2j0R4MCq4QPm
         aPxMTbc8B05Nv2DOkpNoVeIOaSaJgbRZrlpXT9M4U4wVPGVF8JEvZr2U2l9CnBm2RkzZ
         mPMKXEbqxyewJAGWHSLlRNlTY0a/LT+UN7u+r3mWP6uUmpMZ1f2DCaXTQH6UaqX6My2i
         H77dkDVe87WgArLiefWKZ44xM1rFFSb4vyChtSeXJz6FSKmiSdi3eftDn14v6U/KSBcy
         phsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143052; x=1702747852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oi6zjNJ0tkdcdWyt4uob3FWVkKt/0zdiNoz3WNfhreM=;
        b=NgDBfCTFGCAIGAXCWFgxa1FvugErOK6xsMJp8TxmE0CTiZzA8LLdtxYOMFV+Rw3/2R
         SbWs9sOSpi5eediFxSKUfPZI/mH6RX/i4lnxkq7l+ze0wk0fR2Gt+IVSUjLJLj+mwaZy
         ITE79OHz3LN/k6jOQfh+QZEFEnJgd0pbR2RqdsNQsDkAwLICibKu9h8aqKiffp2tXp7Q
         f3LN9hJu6dQYr6cYbBIXtPbr96Uek92olFA+EsPSSuNA5snIJduCAgWclMhFgycFFEHU
         1SE8xye8fQb27h/FkfvV4Kb2ZMPJoQJMq3XUTj/g0ts3T8e4QFcODPtCjNcZgtFcTPow
         McCQ==
X-Gm-Message-State: AOJu0YxKgJYMdXdVxokzoYsQtITE8V3gHPMbinciJoSr5WQsD1N0xsvg
	sVUeH/1WOpFSOSttvywI0CIXNg==
X-Google-Smtp-Source: AGHT+IFtkVuwCzGuETlG5QpL41KJmafJfxmhbkSW9IsoDZa/ET3Fi8eQ7SCvtI/E8kmWLMc3t2DSow==
X-Received: by 2002:a05:6402:2152:b0:54c:4837:7d0a with SMTP id bq18-20020a056402215200b0054c48377d0amr740518edb.73.1702143052021;
        Sat, 09 Dec 2023 09:30:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/15] arm64: dts: socfpga: stratix10: add clock-names to DWC2 USB
Date: Sat,  9 Dec 2023 18:30:33 +0100
Message-Id: <20231209173044.257684-4-krzysztof.kozlowski@linaro.org>
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

The DWC2 USB bindings require clock-names property, to provide such to
fix warnings like:

  socfpga_stratix10_swvp.dtb: usb@ffb40000: 'clock-names' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 439497ab967d..1a743787fef6 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -510,6 +510,7 @@ usb1: usb@ffb40000 {
 			resets = <&rst USB1_RESET>, <&rst USB1_OCP_RESET>;
 			reset-names = "dwc2", "dwc2-ecc";
 			clocks = <&clkmgr STRATIX10_USB_CLK>;
+			clock-names = "otg";
 			iommus = <&smmu 7>;
 			status = "disabled";
 		};
-- 
2.34.1


