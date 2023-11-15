Return-Path: <devicetree+bounces-13630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E007DF5D6
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 16:12:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D33B0281BE9
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A31D1C287;
	Thu,  2 Nov 2023 15:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABF11BDFD;
	Thu,  2 Nov 2023 15:12:12 +0000 (UTC)
Received: from mx.skole.hr (mx2.hosting.skole.hr [161.53.165.186])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74531187;
	Thu,  2 Nov 2023 08:12:06 -0700 (PDT)
Received: from mx2.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id D0760848D4;
	Thu,  2 Nov 2023 16:12:04 +0100 (CET)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Thu, 02 Nov 2023 16:11:08 +0100
Subject: [PATCH v7 02/10] dt-bindings: pinctrl: pinctrl-single: add
 marvell,pxa1908-padconf compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231102-pxa1908-lkml-v7-2-cabb1a0cb52b@skole.hr>
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
 Karel Balej <balejk@matfyz.cz>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=937;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=XB52xSkcW7DlpdxdsDrnjNPD7kW7z6MEd0cFXu6HRPY=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlQ7w4s0X/U4LfTPm+d3uM/f8sVLN8kU+aEvTP7
 Uln5kwWiPGJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZUO8OAAKCRCaEZ6wQi2W
 4UBOD/9XSrU6k/VpMh4t2ctpZgfmH9BIW4xIC/g7N2fLI3uAYchePaqWsjv/O2ZDBAQ9rKccpMf
 wzidE0AvYkJQhr/G2EiiDVr4u7b00b2IorTUGkIOkmX8a4tyFI/+KJsaBIVNiBD24va6gZq5Ew2
 PoQsztYvv1p2t9RHpS/d0ceDb2GZX0cNq9SeGcBGlR4NZ7EneBmUuTjb2iUL7cN4ovIKyYhGPgJ
 scW07emNsENae6F/yqJbahnL2HXc4Gi3cDHL/iuNXLos0yzXILsXl7lvIEuhr9IXqhRtJYZ+H9v
 pUWuO7mt8Xg2QgJAi+qX3ZUuUFkdzLgaGz/AOeCQzxJ6PhMcfWrp51ElmRCqUHZgM08ZZ/NLWF7
 PQ1kbIhMN6rgewJvmdr1FfhcXSiUGsAXRdBqvk41wODAjtr0p6u9T7I9IzqrjI0+0t0Bt8XIHIj
 7/E8V/TrQ3mJDVAlrPSTeb30/si5QhEQRU7D0YPwnoHXi0EAS1V/VIdU76gUWYcLk3TE9OOQi95
 ql5iEImrlQmY25Cxq0uR4GPzE4ya4pXjnkKF1ilnqmF0/5WlFTN3fXG0J0MN2qs+JZ8Z6cR1vjj
 0BaJVwy1z8PNobG552NcH0MKhZqvheNQDfRcCaalw1uYiB37dQxAFkiH49UP/xArkEF/aq6Ey/D
 gGqZRowQytonoWA==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1

Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
separate pinctrl driver later.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
index 45a307d3ce16..0f7e16a28990 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
@@ -32,6 +32,10 @@ properties:
               - ti,omap4-padconf
               - ti,omap5-padconf
           - const: pinctrl-single
+      - items:
+          - enum:
+              - marvell,pxa1908-padconf
+          - const: pinconf-single
 
   reg:
     maxItems: 1

-- 
2.42.0



