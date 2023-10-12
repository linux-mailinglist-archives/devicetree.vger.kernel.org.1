Return-Path: <devicetree+bounces-8056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7470D7C6949
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4AF61C20AD2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEC0210F0;
	Thu, 12 Oct 2023 09:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="N6xO3EvI";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="PeyuHQZh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23848210EA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:17:40 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EFF9C4;
	Thu, 12 Oct 2023 02:17:38 -0700 (PDT)
Date: Thu, 12 Oct 2023 11:17:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1697102257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=WrpWweFctaGuqGTjzQmqJPAe/tzvOWQyUllY4p36/sU=;
	b=N6xO3EvIpHA7v2pMnc1xZ2MwWpT+J1hkZqjiu6u6jDDy4w/ba+h2IOG58SkcgyVHY42ZqF
	Si/11M+Owjl5DMiUFIoS3VLk5/0uWbcZ/LOD2Qma+8tHll/rtCO6LZ/Lt0bUG0TsXMndh+
	B+DFNuFI92Ew08DjzQx6YKiTcgZ1jbkLIfYTl+7AhGdWhs1wuk2KWW7uNnlekFQYS0ckC3
	Y/CCXBdd2CC2kab8s+GjFA794Mj1V/Uf/h/fN0QgssbRnHlknNR7yLxF1Hx3plSVU3/QM9
	sa8IUXcIM0URaned6yS74g7zcAd7yAUvUFR1ZHh5fDFiVxVl16TFEZdyROzljQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1697102257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=WrpWweFctaGuqGTjzQmqJPAe/tzvOWQyUllY4p36/sU=;
	b=PeyuHQZhK5rfrboNA5NQ+J47gFzCvP+U5By4znwRCkm7RlCsYM5y9TLYwa4VWUXIfRcKpt
	p488rxrcanFZt2Aw==
From: Nam Cao <namcao@linutronix.de>
To: kernel@esmil.dk, conor@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	william.qiu@starfivetech.com, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: dts: starfive: visionfive 2: correct spi's ss pin
Message-ID: <20231012091729.3fzfDD1I@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The ss pin of spi0 is the same as sck pin. According to the
visionfive 2 documentation, it should be pin 49 instead of 48.

Fixes: 74fb20c8f05d ("riscv: dts: starfive: Add spi node and pins configuration")
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Nam Cao <namcao@linutronix.de>
---
v2: resend due to email problem

 arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index 12ebe9792356..2c02358abd71 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -431,7 +431,7 @@ GPOEN_ENABLE,
 		};
 
 		ss-pins {
-			pinmux = <GPIOMUX(48, GPOUT_SYS_SPI0_FSS,
+			pinmux = <GPIOMUX(49, GPOUT_SYS_SPI0_FSS,
 					      GPOEN_ENABLE,
 					      GPI_SYS_SPI0_FSS)>;
 			bias-disable;
-- 
2.39.2


