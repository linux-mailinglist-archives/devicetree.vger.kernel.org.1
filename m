Return-Path: <devicetree+bounces-4690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3423A7B371A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1200528298D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03EE51BBF;
	Fri, 29 Sep 2023 15:42:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADE551BB9
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:42:57 +0000 (UTC)
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30AF4DD;
	Fri, 29 Sep 2023 08:42:55 -0700 (PDT)
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id B954F8349A;
	Fri, 29 Sep 2023 17:42:53 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Fri, 29 Sep 2023 17:42:02 +0200
Subject: [PATCH RESEND v5 6/8] arm64: Kconfig.platforms: Add config for
 Marvell PXA1908 platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230929-pxa1908-lkml-v5-6-5aa5a1109c5f@skole.hr>
References: <20230929-pxa1908-lkml-v5-0-5aa5a1109c5f@skole.hr>
In-Reply-To: <20230929-pxa1908-lkml-v5-0-5aa5a1109c5f@skole.hr>
To: Robert Jarzmik <robert.jarzmik@free.fr>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 afaerber@suse.de, balejk@matfyz.cz
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=EiZLJFEyV4LY8QGlZs87/IL+BtGJZigZwDQYelB5sZM=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlFvBy5uzW/LL/CcRvs8TKhAE2CJDg53uNJXpqB
 WIj3G5CfaSJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZRbwcgAKCRCaEZ6wQi2W
 4eK1D/oDPrI8Qg9Z7g/Nm10aEg0oGnGPrgFYif0TsiH1kF4RdzGfuNlM7Ph+z9VZysWbnCxvcFr
 JL7IVR5E86SvYVoWbtDyP8gt51aHZeW4wYs0LT+c/9zuZa49I4SGDKdPwHpyTPzYEYuU1clJ7qk
 oABb32rdSPMhbVHK0g4t0oKhAr0rrHOuQYGVIf0pa8Eyj/IM1HA6NzT6N3eDRY1XY1oBE84FwxW
 dJCRJ3NaEi0gef08e0kdkVrxx++x+1U8l+c6qWLx6/J+m7BP7/L7IJS5dqumHc15FOgSNtL4Abs
 MBoviEwxZqrwELp76IQUwK5SKCoJ/hyCnDEoNs8CViHPsZP3o8id3b2DcPauZwEp4+0lB6y08Mn
 Qfyhx5Ag6WQFMec/fhRG3xEbFBhwnuONl8waiBt0riSVCmkYIvc0HDRbW/c1OrEvmgPD2BCIKeB
 4yTRZsRuyefAfCANJ4uXKpQ4Q37BJaPATaAqo6kR7HPrNga6v8+JzA9L3nWoB9ni8P5XfyWKBrp
 EZR7etx4f70NwLUNAjDw2jk85nwnREnuTKP/7U4NZJ9PhHVX2/J7IisV2MYuLVHj6hReE77M8yO
 E6S5080StLX2ysPiwQ6m8kYP0BwIuA1oVNriwAjlPUwh0f4bi1hA3r42Q3Fv/JSGRmRpmm0CTC5
 CYB0hDhLjSL1CPg==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
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



