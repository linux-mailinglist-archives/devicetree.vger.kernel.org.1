Return-Path: <devicetree+bounces-49036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B0B874B70
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B92D3283877
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F68C85633;
	Thu,  7 Mar 2024 09:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RFdy9Rat"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B89F84FD0;
	Thu,  7 Mar 2024 09:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709805320; cv=none; b=JPUg20cGcZl5y6Wiw0AeU+T2xllL2/l0/Z9Nnn7zeaiLQVUFKuex7jP6Gpl93pyiLiUBy8q4joFGIrM2/adjAUjUsoxoJACX59z9nOJmlKQ/3zrb9VODqSRfZ4DmCd5E4dHpGp0trSP/BlL0diDOuP4rEZQtazWeIxhRfoxq7No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709805320; c=relaxed/simple;
	bh=iVPpoNAELPlEJYPnNQsbq28fPzIRmzcMdPSBSZq0Ze8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gCiyOTyqgPLDqp1rYd3HP9Lo1Fv99MHJsFKdzG2X6eJDuS6ppdL2z3kXmg7on3OvPvrq5TU6hGk6+hD3Erog1h6C9XESmgDvY/Ui+UyoeG4Z8ajc4mXj15HVZemhw2nV38xzlLusB/IRbpgk5CYpqi+wfIIqiImwOj+B0R4BsSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RFdy9Rat; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id F0C6D1C0017;
	Thu,  7 Mar 2024 09:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709805315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tGmmzectwKENjidKkA3JUu18FpasOENIW7PuvpAJ7AA=;
	b=RFdy9RatkkVJzZWY2jzeBhOtVP7Z0BqYN0xQlfYiX5zknR/Ux1aD0IIIpGDBZ1TrjYoLt9
	52JGNt9Y4uni5gksWqVkq0wCzgCjULBGFxRXazgA53fcWzrghPY7f4a3DEKkSshWs+OZaC
	eetyPFbfpSj9oXxyXWeV1YwpXAZFRCQw25WYo9v6DJUUOpv3AYiTWR3L81sHiUEzNX5St8
	qMM83TPNxarQ7bvTupNi0IkGa19w5ecAquonSKMVXlBcASSQgemq4LWpwK5Vr0Yc4G9WVo
	0x2iouQOfv+NrV6vzHKLTXPx0rpVF/OiocsJjmsGmclUQtM+mz67czvTO2N5bQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Thu, 07 Mar 2024 10:55:09 +0100
Subject: [PATCH v4 8/9] arm64: dts: ti: k3-j7200: use J7200-specific USB
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240307-j7200-usb-suspend-v4-8-5ec7615431f3@bootlin.com>
References: <20240307-j7200-usb-suspend-v4-0-5ec7615431f3@bootlin.com>
In-Reply-To: <20240307-j7200-usb-suspend-v4-0-5ec7615431f3@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, 
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Kevin Hilman <khilman@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.13.0
X-GND-Sasl: theo.lebrun@bootlin.com

On our platform, suspend-to-idle or suspend-to-RAM turn the controller
off. This compatible triggers reset-on-resume behavior to reconfigure
the hardware.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 45ba9c2d0344..81a799792978 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -793,7 +793,7 @@ pcie1_ep: pcie-ep@2910000 {
 	};
 
 	usbss0: cdns-usb@4104000 {
-		compatible = "ti,j721e-usb";
+		compatible = "ti,j7200-usb", "ti,j721e-usb";
 		reg = <0x00 0x4104000 0x00 0x100>;
 		dma-coherent;
 		power-domains = <&k3_pds 288 TI_SCI_PD_EXCLUSIVE>;

-- 
2.44.0


