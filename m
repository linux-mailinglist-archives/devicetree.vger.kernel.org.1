Return-Path: <devicetree+bounces-20448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D071F7FF46E
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:12:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62E0AB20B6A
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF1A5466A;
	Thu, 30 Nov 2023 16:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpFBB3Yy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D6F54645
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 16:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6BF3C433C9;
	Thu, 30 Nov 2023 16:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701360717;
	bh=vgls5aAlR31WZeeFitudv2gLn3KRn15unDZWj9i/v9g=;
	h=From:To:Cc:Subject:Date:From;
	b=qpFBB3YyXinuwQ+7fxRfXLLxKE0ptbNJCoa58UsrfVolYTGrIN1Pq9t4kjnmzbAHV
	 bWQPN7icrc7LX8RweUK5aEZ8opCL1tGDyvFbhxkAGA8ZSpb8SzCCkGb4HBuk6znZmO
	 2adWWVogvmoQGNt2U0+c8jk98xkl87kJ8b44LsD0o8aAPdFeNkFUqB555ynQ+jWdhG
	 cy5dVleeSgOvGWrVqSgZDEP/ueHS7LEWExLonaqssLT8PTbm5GMMG6zRIzFKN2hIrW
	 DAmLMyyC+/qA1VrgqwObv6RHEa3mRsYY8PpvpeysPkQcRzyDBrNUZjICwA7onqEwQh
	 WPofq+wUXfGwA==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Walker Chen <walker.chen@starfivetech.com>,
	JeeHeng Sia <jeeheng.sia@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: [PATCH v1] riscv: dts: starfive: move timebase-frequency to .dtsi
Date: Thu, 30 Nov 2023 16:11:28 +0000
Message-Id: <20231130-bobbing-valid-b97f26fe8edc@spud>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3135; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=UAAVjF121WPRFea5qRuZ2irQEO1X8uw6HeaKklYIqBU=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKkZW3TOhG9ZnWv8re2Ju/KbiwqCtQG/lmyyaJXdO/3bn xOCvjP9OkpZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRjAcMf/iuWffPjtxU3cd9 N3zyZtWHfUpdCbK2Fs/frk9RPli32Zfhf4r2nG9fpHmOTkrxrO1xYTKdyat5KOTL291Oja2JahF 1PAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

Properties fixed by the SoC should be defined in the $soc.dtsi, and the
timebase-frequency is not sourced directly from an off-chip oscillator.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
I actually have no idea whether this is true or not, I asked on the
jh8100 series but only got an answer for that SoC and not the existing
ones. I'm hoping that a patch envokes more of a reaction!

CC: Emil Renner Berthing <kernel@esmil.dk>
CC: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: Walker Chen <walker.chen@starfivetech.com>
CC: JeeHeng Sia <jeeheng.sia@starfivetech.com>
CC: Leyfoon Tan <leyfoon.tan@starfivetech.com>
---
 arch/riscv/boot/dts/starfive/jh7100-common.dtsi               | 4 ----
 arch/riscv/boot/dts/starfive/jh7100.dtsi                      | 1 +
 .../riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 4 ----
 arch/riscv/boot/dts/starfive/jh7110.dtsi                      | 1 +
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index b93ce351a90f..214f27083d7b 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -19,10 +19,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	cpus {
-		timebase-frequency = <6250000>;
-	};
-
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x2 0x0>;
diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index e68cafe7545f..c50b32424721 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -16,6 +16,7 @@ / {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
+		timebase-frequency = <6250000>;
 
 		U74_0: cpu@0 {
 			compatible = "sifive,u74-mc", "riscv";
diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index b89e9791efa7..7873c7ffde4d 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -26,10 +26,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	cpus {
-		timebase-frequency = <4000000>;
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0x1 0x0>;
diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 45213cdf50dc..ee7d4bb1f537 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -18,6 +18,7 @@ / {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
+		timebase-frequency = <4000000>;
 
 		S7_0: cpu@0 {
 			compatible = "sifive,s7", "riscv";
-- 
2.39.2


