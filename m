Return-Path: <devicetree+bounces-13631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA277DF5DA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 16:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3932E1C209DB
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629171C297;
	Thu,  2 Nov 2023 15:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069711BDFE;
	Thu,  2 Nov 2023 15:12:12 +0000 (UTC)
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B81DC;
	Thu,  2 Nov 2023 08:12:07 -0700 (PDT)
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 58B5C836CE;
	Thu,  2 Nov 2023 16:12:06 +0100 (CET)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Thu, 02 Nov 2023 16:11:09 +0100
Subject: [PATCH v7 03/10] pinctrl: single: add marvell,pxa1908-padconf
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231102-pxa1908-lkml-v7-3-cabb1a0cb52b@skole.hr>
References: <20231102-pxa1908-lkml-v7-0-cabb1a0cb52b@skole.hr>
In-Reply-To: <20231102-pxa1908-lkml-v7-0-cabb1a0cb52b@skole.hr>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Leo Yan <leoy@marvell.com>, Zhangfei Gao <zhangfei.gao@marvell.com>, 
 Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-hardening@vger.kernel.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Karel Balej <balejk@matfyz.cz>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=3vMvyouTrSlTTv/1BlonUdvoKpdtri2jxGZJNXRvhAY=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlQ7w4R0WGAouL6TrH9chgMtCm0ZfVKWBiq89tl
 Dd9aHZwzXKJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZUO8OAAKCRCaEZ6wQi2W
 4SsIEACRIEDbXydKjDCcaYpSifjIjFL7Gii4p2KLIUEwwf8DLR3hGlFL2XK3Mkf1OzluaRtlbns
 99kOngBNHCviv0q71rWYiah0Ge4gWEW7tAG9hJbzPdtbTPkFLp27NmVahm+KfSpY48fuDg1Ud6M
 flhLAYaW61mObhsdXbbF7j5ch76+dAQhgztJJ/XFQw/FT/wuwstxos+FyfLIHPgwCegnAe1Im9J
 DX/mPZB5AsBVWEZyTGRfIbNA6ZiFeLfBvJUYPquuPtiNywJu7IYmmGIqdMxW9Uh7mNMq95Fgx4z
 KUN4K6hEozWfFDAtG7NZ6tPqgEzDTL/5Xkd1C+ZCI3244y61yhAJkw3alfHQjZhBR0VooZjWWBk
 J7pILsKh0H1UhbcGL0umo+/BXUPOWGzHpQp19pY2rqJatvAx+apYtPK9G2z6Cs4V7mE6QsHCv6Z
 oxNbC0jsYumBAbvXLIAWUxpNEW6RripDS37iwmRr1Xc7gHfB1WfVGn1rF73cDjlJISZgJqL/lTk
 X9y/t/JGj55a/s8qm8Ll/bixprzbDe+gknRthafU9xWdmtG9pKtItumjJGQpfIoLIXF9Gjb4lTj
 TnrJr/M/MO27shjg6VusjjJswjN1XxEDqP1qdq0IDW91U4hB8AfeIa4677WGAaXycrTnvBv5XsE
 KeLsd+RofQxj0mQ==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1

Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
separate pinctrl driver later.

Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 drivers/pinctrl/pinctrl-single.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 461a7c02d4a3..a36f750cfe9f 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1968,6 +1968,7 @@ static const struct pcs_soc_data pinconf_single = {
 };
 
 static const struct of_device_id pcs_of_match[] = {
+	{ .compatible = "marvell,pxa1908-padconf", .data = &pinconf_single },
 	{ .compatible = "ti,am437-padconf", .data = &pinctrl_single_am437x },
 	{ .compatible = "ti,am654-padconf", .data = &pinctrl_single_am654 },
 	{ .compatible = "ti,dra7-padconf", .data = &pinctrl_single_dra7 },

-- 
2.42.0



