Return-Path: <devicetree+bounces-7356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F00027C02A1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22A1A281E7B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8D528DA6;
	Tue, 10 Oct 2023 17:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3851927440;
	Tue, 10 Oct 2023 17:27:40 +0000 (UTC)
Received: from mx.skole.hr (mx2.hosting.skole.hr [161.53.165.186])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58FC199;
	Tue, 10 Oct 2023 10:27:37 -0700 (PDT)
Received: from mx2.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 248DB8649E;
	Tue, 10 Oct 2023 19:27:35 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Tue, 10 Oct 2023 19:27:20 +0200
Subject: [PATCH v6 3/9] pinctrl: single: add marvell,pxa1908-padconf
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231010-pxa1908-lkml-v6-3-b2fe09240cf8@skole.hr>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=3vMvyouTrSlTTv/1BlonUdvoKpdtri2jxGZJNXRvhAY=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlJYl4IPBD5s9W1Aki+2HTBXYchq0X3HXueK7hZ
 XEncSo0sQKJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZSWJeAAKCRCaEZ6wQi2W
 4ejND/9SfhMjd94nHShn3D3a0JzuOh8NOdbOOVLTbqzRwM51HCCDcc5p4el49XcQdw8H9bOpT0i
 BGHwGKmxsgAuQ0kGSJUk9HQCRqwPKh6XrLK8zh9LbSymQGJ/fy8a20Uf7AfIa++BXJvHLO8zZNn
 KQqI/oeQt3lX16ow8IR6zYIsxWieQ/Yug9TLcQtYp3VFQk0dI+9H7bbiEHBPsAwjWK9o7bigdRj
 hrKO1oA8TKhd2SlnaeLkYx2hDF3mWvFjZR6i6RWmkNBCXEIOTfbSBoT2mHta/+FfnDqfI6cgqcq
 ZU/e+zeS7wqDiMPwAK7xI+0JsOabwuBpC03UDhTyQHEgZrA8CiKkuq07qhKlcOEUkRcPlHXDpm+
 WKF4m90QR/1wrjj+OEUtQ3Pi/w4yfJOcvGydmXA8fE4dEIM6NNcz1pwppG1hpYZFysTcNzZVrvz
 fFXSnXiqpSAapA7cw+Ebm4A0WvaQnsBIFY8D21vzY+igXjYfEOociz4YjfoJYsIEVFixyfeRr4h
 RvOKp49MKSwlj6YfGSP193FV+l9AJkkLbMwOgCo4rRBq0R/cTIlpOkMh/0Trx1+w4nN2f1cwORD
 EbHvfTlerAM/omPkGr7EHHYp0VjPSa9GPCqmC/RELi1xZnPObajr5qimuuezMgv+8wgvWBolo8/
 V1dl/OAS6hv9OLw==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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



