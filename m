Return-Path: <devicetree+bounces-23468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3280B584
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C688A1C209AD
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2751C18AF3;
	Sat,  9 Dec 2023 17:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WpKIjhsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C776D54
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:52 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54c4f95e27fso2884897a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143050; x=1702747850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odIvNtZz2+W6QtJ0gN2cO/QgHPmyDySPgMwRvoCZPPs=;
        b=WpKIjhsVMUSZM//kWPKoNZjJCv2/kFUu/jgmNhm3fti7K5Gisf8aXvo11WADv7e0HD
         UAOzQ0l/5sGzB+llheIj7FPaC2X+zMvupEkeyBahia6DflNz9PFS+61StRHhZ4Ok1rdz
         2C9f5TWO79KRJNsP2KXcPX8ZIIT/BKkjdPxUR88eLhvW7NbQXrqO5n8is3VyxdfI4EJG
         eYVvDMMFYISrYXKqpE0Q5XCg/r4B/6U6Ca3Lf0Y2vnDeieaxt3dq46LS/vgKpKV5wjGs
         BhOQk/RXONQkd6KQPC3dbiBDLJNXAElMq8t9iUOlVGp8GOrSI6sA5keqew21Po/8N4Tu
         NGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143050; x=1702747850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odIvNtZz2+W6QtJ0gN2cO/QgHPmyDySPgMwRvoCZPPs=;
        b=GABQksSrzwPE0sQc48CNDEY+2R91s6kpej6YSocCMNbJDS++zYiPm0GsYQ0he+iIGw
         TcB83WbtHjqs8s7erv5jNCG3o9wPckKSAhAZKERZsxS/CPjikTu8iPxLthzmUGp8inx9
         k3jfDsGC16TtDgplbP7NOZXqP4aldLzDvJQE0PgdrHwkkHZ3kJ4Fc7u6I8fydiqaEfjy
         tLqg1bTfmdUsILsykcx4TEIzjBAF2fz/lECvYhfiJ6tUqFGlsC+wyDpQo0GuMUHZvWkn
         M9qzovQO/x802qTJganFk6owCM6S7zHtt35C+tUv8JfbCFN1dcB2/JDmMQnFEcCmX/oq
         5/kw==
X-Gm-Message-State: AOJu0Yw2XMTZx4iAiOGZ3zpJHS/0kAFALtmR5FGPqbxwxhCuK2QiAaC4
	3/tKsbybQctzbwKpTPvoYQMypg==
X-Google-Smtp-Source: AGHT+IF2+IkXsSW6NcOhSwKYS9POYcBs9J/eYVF9/uXoVy0i9LJZlis/tJHQhNI7t0k55cJ8L9YsjA==
X-Received: by 2002:aa7:c50e:0:b0:54c:4837:903d with SMTP id o14-20020aa7c50e000000b0054c4837903dmr1202957edq.53.1702143050613;
        Sat, 09 Dec 2023 09:30:50 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/15] arm64: dts: socfpga: drop unsupported cdns,page-size and cdns,block-size
Date: Sat,  9 Dec 2023 18:30:32 +0100
Message-Id: <20231209173044.257684-3-krzysztof.kozlowski@linaro.org>
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

cdns,page-size and cdns,block-size are neither documented nor used by
Linux, so remove them to fix dtbs_check warnings like:

  socfpga_n5x_socdk.dtb: flash@0: Unevaluated properties are not allowed ('cdns,block-size', 'cdns,page-size' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 2 --
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 2 --
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts          | 2 --
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts             | 2 --
 4 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 468fcc7da066..347fd1d949fa 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -187,8 +187,6 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <1>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 532164a6354c..4e73e6656d72 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -176,8 +176,6 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <1>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index 053690657675..ad99aefeb185 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -113,8 +113,6 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <2>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 5ddfdff37c25..de82a552dc26 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -91,8 +91,6 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <2>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
-- 
2.34.1


