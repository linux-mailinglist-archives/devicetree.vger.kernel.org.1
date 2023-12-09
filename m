Return-Path: <devicetree+bounces-23479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FF980B59B
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E669B209E1
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 109CE18E04;
	Sat,  9 Dec 2023 17:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n9/eXagb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0601E1FC0
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:10 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54917ef6c05so4397782a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143064; x=1702747864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eyf5zSHhrESy35WP6ODF7XXeRocJ2QbCnaJvEWXeVR0=;
        b=n9/eXagboFcBcmki2/4KIVWSQfAwffi3l3zrUbyf3yGDgMrneTVEeTJD0zyptDXi9Z
         Tdrt1BYJMu5yrWzPpKJSpm7kvw+e/J16cE6j74HsS1dBBY/0p3bplKD0EZf1ultjSf2s
         JQs4N4O+Z3nheLHwgHH+gv76BAOBiDCL/zNALmrBAS2qEVazPum/1cq1Rg1mkJ11FILH
         jDJ4MA22oMUXB/tQUC+Ko66lBKzw2SMb+48RJAWZt3bS6gbjwkRDItCgo03ovYQgygI3
         +JTSFVaQ7gSoDyVLLrsLMUohrxQsobaBuKrABfhgymNIRBZDrbN6wCDX9fwUcG7HgqsN
         joFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143064; x=1702747864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eyf5zSHhrESy35WP6ODF7XXeRocJ2QbCnaJvEWXeVR0=;
        b=Vjxi6gy5vYjnujVTE2KTbiL++K16vEfALoDI5C/6H60TeJabggCYFTs7ffgvODzQzM
         B/YU3pa++SwtXu9E/dT3ucjybpwtJZhdH5p0V+Bik1BDZi0/PKkqqgAAbFtPf10T1CZk
         jIPSU1f5dYO8bWN34aZ7TzLIg4hoBRdx6wqNpUOLpmqLXor1rid8B4NSLeuHhwri2maa
         T93S3BowJZr5BHeDtMCiXFQciqjlMdKQ7W3PZq0y5SB+Z7iIPW/6K78JhDEQ3Em2Hc9i
         YNyMkDT/xmbiUlv5SV0LIQbumECz6jqua8s+2vGd1GDTSh5le0PRLcPCkbErYERqqjd2
         h1bg==
X-Gm-Message-State: AOJu0YwMdgXuNFuaZQx2GePjudJKl5abmt+rAytEquxBst995GmXMXfP
	bhV4rfok5tFC/r6+AFze1E1c1Q==
X-Google-Smtp-Source: AGHT+IHrhWmyYQL3VvZY8EmD7GfZasmKJeHT9KtnwPfWAyJory1uMiDSwVtatPvCnRw9HOl0GmLbEw==
X-Received: by 2002:a50:aad5:0:b0:54f:46dc:8594 with SMTP id r21-20020a50aad5000000b0054f46dc8594mr850472edc.111.1702143064055;
        Sat, 09 Dec 2023 09:31:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:31:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 13/15] arm64: dts: socfpga: agilex: move firmware out of soc node
Date: Sat,  9 Dec 2023 18:30:42 +0100
Message-Id: <20231209173044.257684-13-krzysztof.kozlowski@linaro.org>
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

  socfpga_agilex.dtsi:663.12-673.5: Warning (simple_bus_reg): /soc@0/firmware: missing or empty reg/ranges property

The node should still be instantiated by drivers/of/platform.c, just
like in all other platforms.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 77d03caea25b..8792291a0175 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -60,6 +60,18 @@ cpu3: cpu@3 {
 		};
 	};
 
+	firmware {
+		svc {
+			compatible = "intel,agilex-svc";
+			method = "smc";
+			memory-region = <&service_reserved>;
+
+			fpga_mgr: fpga-mgr {
+				compatible = "intel,agilex-soc-fpga-mgr";
+			};
+		};
+	};
+
 	fpga-region {
 		compatible = "fpga-region";
 		#address-cells = <0x2>;
@@ -659,17 +671,5 @@ qspi: spi@ff8d2000 {
 
 			status = "disabled";
 		};
-
-		firmware {
-			svc {
-				compatible = "intel,agilex-svc";
-				method = "smc";
-				memory-region = <&service_reserved>;
-
-				fpga_mgr: fpga-mgr {
-					compatible = "intel,agilex-soc-fpga-mgr";
-				};
-			};
-		};
 	};
 };
-- 
2.34.1


