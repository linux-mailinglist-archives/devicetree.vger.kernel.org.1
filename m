Return-Path: <devicetree+bounces-7250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 598B17BFD73
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14C63281983
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 697C64737D;
	Tue, 10 Oct 2023 13:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fV3bkSN7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66B39CA5A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:21 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A896DD7
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:19 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9a6190af24aso983668766b.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944438; x=1697549238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qkrku1fg1ZERvoA0RMDfwo6BvhBgxWwyN5hzG0/9pUM=;
        b=fV3bkSN7GnViWSjZw6dO38V6viMaqIIltan5Z0CyuVt43mbdKhwmIDkuUqdRj0SkgG
         NFgxS51eSQKb2XD6UkzniRdZTR40VIDw1VTwqxIg7n1LIYgL0VyRlCVDktpTopw5MRvI
         7nFxtJzizTjwGh32jXUSC5KbIpOOWJLZRdzfBh4F+5S4ZjDlAqzzsmQfF1UcgPRnrZWH
         el9v7Ya/oh14zQwLZlApBQXnkWzQ7H77fsGCpXeHhhdH8rgBlWm/1cgOd1u6QYQgGXf+
         xHgIdsIZ/0iwGyVaS+yxTGSmd+pwVuQ7fqoUdtRV+kP6yWwd5PxRLteDPTQoq0FUZfVO
         E7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944438; x=1697549238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qkrku1fg1ZERvoA0RMDfwo6BvhBgxWwyN5hzG0/9pUM=;
        b=fy98jRgpzW9OcQ4RqR3tsCB3ofuaAiWW3HcNGlzVjTRk9cBM62KjrYejEIUONSYvZR
         golsMLk5y3IitK9W85KiuNIx45TkTwBuKuCWbQHdin5hZYm9K13u4Hsgs35mDkK1fbv7
         vQCgRgKX3RAdR+wf/0/GpLNOPMu5RzdxjbDANIZKfZtWSpC6gQNlr+tFpFItIqXKfGSn
         yL5CeA5kuc5B0/e3T8qLnV3T2pxdrCxAzn5iwzbNbkBY+1U0D/Mxzz/+HHgDGelb3BJ5
         J9Q0m0UMCB1lcQNjUroiQj1PdGLpFVQkhdlNR04ZbOB/jkM/YBKhsk8fhRo7b1tixzhC
         iPdw==
X-Gm-Message-State: AOJu0Yz/x8MVHMfxo4SYlMgn6f9EycxGzR4UoSjB8DlEHjewJaXojPWW
	b/h/h41csPiQiYtBb9QnnSX2Zg==
X-Google-Smtp-Source: AGHT+IEl9t6FRqcsOeqelqNqjCpGD0EHxzHxZXfuUwkHHG2ydOEmu/vjceFDSGDNxovT0X7EtnZ44g==
X-Received: by 2002:a17:907:2715:b0:9b2:babd:cd44 with SMTP id w21-20020a170907271500b009b2babdcd44mr15731791ejk.44.1696944438037;
        Tue, 10 Oct 2023 06:27:18 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:17 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 6/6] arm64: dts: renesas: rzg3s: Fix dtbs_check
Date: Tue, 10 Oct 2023 16:27:01 +0300
Message-Id: <20231010132701.1658737-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Fix the following DTBS check warnings:

arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dt: /: memory@48000000: 'device-type' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/memory.yaml#
arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: /: memory@48000000: 'device_type' is a required property
	from schema $id: http://devicetree.org/schemas/memory.yaml#
arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: 'cache-level' is a required property
	from schema $id: http://devicetree.org/schemas/cache.yaml#
arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: 'cache-level' is a required property
	from schema $id: http://devicetree.org/schemas/cache.yaml#
arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: Unevaluated properties are not allowed ('cache-size', 'cache-unified' were unexpected)
	from schema $id: http://devicetree.org/schemas/cache.yaml#

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi       | 1 +
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 534b728a8e14..6c7b29b69d0e 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -29,6 +29,7 @@ cpu0: cpu@0 {
 
 		L3_CA55: cache-controller-0 {
 			compatible = "cache";
+			cache-level = <3>;
 			cache-unified;
 			cache-size = <0x40000>;
 		};
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 58a68356b9d7..fdb8053adde9 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -36,7 +36,7 @@ chosen {
 	};
 
 	memory@48000000 {
-		device-type = "memory";
+		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
 		reg = <0x0 0x48000000 0x0 0x38000000>;
 	};
-- 
2.39.2


