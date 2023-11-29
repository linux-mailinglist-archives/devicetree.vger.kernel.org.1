Return-Path: <devicetree+bounces-20082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5037FDB74
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EA521F20FCC
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD85538F85;
	Wed, 29 Nov 2023 15:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Bu0pbZEC"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC2DD1BF;
	Wed, 29 Nov 2023 07:31:26 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 08D42E0013;
	Wed, 29 Nov 2023 15:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701271885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1sAANN2EXeewZfaaobbe7muJTHqc8A8qnJjW9NGWcx8=;
	b=Bu0pbZECI7sSk70SeqV6BFWJPSrmAsRp2m0uGsoD2H1yVZjphF1Z5CqBRErPyFHg6wE696
	1Ul3AFqec7rPvpHTuEY+3yMu3rRr/pZvFgwnWQOfjdBbGOOQMaEqImhtUFxQoedH78DEY0
	XvOuwOwIAQ6woWiV8jBoXXhOaZwJSYYiBxkH/gYRbECvdKQ+GbieTpf/S4kYl6D3uZ3iFu
	VgEKVCDhmbyxL8CEhdsPocoVNXCSP1QAhcVvDItFiouwZMmaWag91eRfRnDyYlxdxef5k7
	Hcg52H2lyI68tqyjH3HcF2Da06v5jsqs/W4d84OeRDizSH04+hF8a2m5ys+86A==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Wed, 29 Nov 2023 16:31:19 +0100
Subject: [PATCH 3/5] arm64: dts: ti: k3-j7200: use ti,j7200-sci compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-j7200-tisci-s2r-v1-3-c1d5964ed574@bootlin.com>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
In-Reply-To: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com, 
 gregory.clement@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com

On j7200, suspend to ram poweroff the SOC.
This compatible restores irqs at resume.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 467970fab3a0..d8dc1421e75e 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -7,7 +7,7 @@
 
 &cbass_mcu_wakeup {
 	dmsc: system-controller@44083000 {
-		compatible = "ti,k2g-sci";
+		compatible = "ti,j7200-sci", "ti,k2g-sci";
 		ti,host-id = <12>;
 
 		mbox-names = "rx", "tx";

-- 
2.39.2


