Return-Path: <devicetree+bounces-7360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC9F7C02A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:27:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD5E3281CA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A7C34CEA;
	Tue, 10 Oct 2023 17:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F25D1DFE6;
	Tue, 10 Oct 2023 17:27:44 +0000 (UTC)
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3D5394;
	Tue, 10 Oct 2023 10:27:41 -0700 (PDT)
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 4CBFA850ED;
	Tue, 10 Oct 2023 19:27:40 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Tue, 10 Oct 2023 19:27:24 +0200
Subject: [PATCH v6 7/9] arm64: Kconfig.platforms: Add config for Marvell
 PXA1908 platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231010-pxa1908-lkml-v6-7-b2fe09240cf8@skole.hr>
References: <20231010-pxa1908-lkml-v6-0-b2fe09240cf8@skole.hr>
In-Reply-To: <20231010-pxa1908-lkml-v6-0-b2fe09240cf8@skole.hr>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=EiZLJFEyV4LY8QGlZs87/IL+BtGJZigZwDQYelB5sZM=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlJYl5YkBJAKI15Gq3bPrucFamNf+kLEuTFyZCq
 z/81zE/LJCJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZSWJeQAKCRCaEZ6wQi2W
 4fw3EACNyIPYlpA85OQWxoEg5p+EtLTgIZ64HFQATn4CYgNc3agGXNrW8ybT5qWf4XPlhaZsYtV
 N4Z3nHxv/Ua2IBP8nUSEZwiEiw0qWLBpabyzTFbyHI44Zmp2o8szyXyXX3YooWlCvTbpiPnO5Fw
 HvxEXOj7o1cclaDknq6V+Fe1VOGkCZe3Hhzj9G+jnV37Z8ElNL7SjRcOTsNPSaS74BGU4hCyLwE
 wv81kXviEIZdaY2L5P5RaDADGmPmV8xifLcxKs+PuYwtSZZpduRJhVl9vonlyalvGs+P1Ulpfwh
 jR21MwBw0C1oYDpJes6ItaeVqWYVYCHMGSxNmkhVoamGsP+3LlUJzJAy58+sEhzuyzMq85DHXrK
 xHHmcKE+e96fAGhIYZg8/d9fB+hAMx7VYBIcmN/t5eOT2V/nDEB05ndULJAsRL1PALensdybwZA
 QUvB5QgSiZYcaREzEC3vmhcYXmPZkQSf1AFXjfUWtBYDW6aP6Gp3KsK21QXoKI++ScWIyiBmmqp
 W4av0tuU5AfQ6z8+NbX3VZHDeiez7k2C8ZAUtDwxUx3K29ATs1haWUdTmzfw0nkO9mffsbkdPnD
 gculrCRL9jQFQpRwMSP35/TCurQB3Nj8jgqMuWSPZ3Ovh8MSWeM2KePOM1S4XKGdwcDI2yXuydS
 8ZGLpC2q3mjwiiw==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add ARCH_MMP configuration option for Marvell PXA1908 SoC.

Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 arch/arm64/Kconfig.platforms | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 6069120199bb..b417cae42c84 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -89,6 +89,17 @@ config ARCH_BERLIN
 	help
 	  This enables support for Marvell Berlin SoC Family
 
+config ARCH_MMP
+	bool "Marvell MMP SoC Family"
+	select ARM_GIC
+	select ARM_ARCH_TIMER
+	select ARM_SMMU
+	select MMP_PDMA
+	select PINCTRL_SINGLE
+	help
+	  This enables support for Marvell MMP SoC family, currently
+	  supporting PXA1908 aka IAP140.
+
 config ARCH_BITMAIN
 	bool "Bitmain SoC Platforms"
 	help

-- 
2.42.0



