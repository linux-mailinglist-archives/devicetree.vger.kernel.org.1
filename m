Return-Path: <devicetree+bounces-14035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D5C7E1D1F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B0EE28121F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1392615AE7;
	Mon,  6 Nov 2023 09:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1C6DF51
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:22:15 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DBEFDF;
	Mon,  6 Nov 2023 01:22:12 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-991c786369cso614750366b.1;
        Mon, 06 Nov 2023 01:22:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699262530; x=1699867330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vxzdd7hvG1LZGKkqhTZumSilwKU2j2TuY6Cx8E9gJo=;
        b=ZAVfNjQXQ9iIYVR8xPs5bXtfwI1GmrzhAY0nAmwC7iJiEGthN41WxKuvWbTOpGCvah
         SlgAzOFzdowtHPre1yIbkLyWQ/T0NlnjO2jVqopbS5kmwsk22HS+fIqkl/323RdoNJJq
         RXqHD6Q2ZTV0wJqoW0dX505zax0MBFOv4iWE0CoUFJnjbsj0iVJBwbihusnAJbNQqWJs
         CT9LFrd21T2LmLGfrxRVfBam9vTsmk0RI2HoDc0t+51CbdQsqLm8DJ2gMlLvECrek2id
         PUpC/yr3kfdrceEpXaV0syosNb0VAaeGZ5IqZa2scXL7nESbAf/2nCSfuKEpPAJvHuwb
         NTwA==
X-Gm-Message-State: AOJu0YwB3G+xi3XtrrTD1rwA4YNoaMIN/DMXy9dOJ4PdXXDsRYTIdCFW
	ddXbL5rbiYx/CtM0NOl+Ex2fBrmMT04=
X-Google-Smtp-Source: AGHT+IF++APSwFNH6r2Ey/Q67hM2PkyNzMGIaLHd/q7k/8mo1G5861RXhVzAIHRm7zWxfkxBUM9UWQ==
X-Received: by 2002:a17:907:31c3:b0:9bf:122a:7db2 with SMTP id xf3-20020a17090731c300b009bf122a7db2mr13821438ejb.66.1699262529951;
        Mon, 06 Nov 2023 01:22:09 -0800 (PST)
Received: from ramallet.home (cst-prg-38-127.cust.vodafone.cz. [46.135.38.127])
        by smtp.gmail.com with ESMTPSA id w5-20020a05640234c500b005402748cf29sm4098608edc.50.2023.11.06.01.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 01:22:09 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
To: linux-kernel@vger.kernel.org
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Lucas Stach <l.stach@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Amlogic Meson SoC support),
	linux-amlogic@lists.infradead.org (open list:ARM/Amlogic Meson SoC support)
Subject: [PATCH RESEND] arm64: dts: VIM3: Set the rates of the clocks for the NPU
Date: Mon,  6 Nov 2023 10:22:02 +0100
Message-ID: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Otherwise they are left at 24MHz and the NPU runs very slowly.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Suggested-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index ff68b911b729..9d5eab6595d0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2502,6 +2502,9 @@ npu: npu@ff100000 {
 		clocks = <&clkc CLKID_NNA_CORE_CLK>,
 			 <&clkc CLKID_NNA_AXI_CLK>;
 		clock-names = "core", "bus";
+		assigned-clocks = <&clkc CLKID_NNA_CORE_CLK>,
+				  <&clkc CLKID_NNA_AXI_CLK>;
+		assigned-clock-rates = <800000000>, <800000000>;
 		resets = <&reset RESET_NNA>;
 		status = "disabled";
 	};
-- 
2.41.0


