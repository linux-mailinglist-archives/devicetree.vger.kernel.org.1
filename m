Return-Path: <devicetree+bounces-142346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA34A2511F
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 02:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4563F7A1F9F
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 01:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8EE2A1C9;
	Mon,  3 Feb 2025 01:42:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DB529405;
	Mon,  3 Feb 2025 01:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738546922; cv=none; b=Q2itdJUS8j38R1Xwuy09ffoQysfG8hxgO7YHISNxdHgsCLAytMFDd1FoMkIdB2JZJOa/glEK4HU43+SdNEJNKklMKMEjNRYX2jcnuPjeagsGlufvgdIASDXev30e0G/S4wwF9/rykQB+WmdPRicDNN1QkVRR3/6ubo7e62DOzUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738546922; c=relaxed/simple;
	bh=+ov9ZGTcqH/p4yAF3skP4VG+WvUTp6Z1mnMckCnIoaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kH5cqXsyWA03pEXvY4nrhr4gMIHuc6hQ6wa3mXzJ8GxJIqe2MoKPWiPSrS87E3SaavpvpuYVkYOw/h9W0eT/EKopyXoSVcCptvl2OV9wAmTYGxp5xaCI1CScFyrUg390YFn2IX4/f+aSy2rQn1qTyXYMBrel9Z5YomL5RjY/d+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c0:20f3:a400:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 4F7DEB2268D3;
	Mon,  3 Feb 2025 02:41:55 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	E Shattow <e@freeshell.de>
Subject: [PATCH v2 3/5] riscv: dts: starfive: jh7110-common: assign 24MHz clock-frequency to uart0
Date: Sun,  2 Feb 2025 17:37:09 -0800
Message-ID: <20250203013730.269558-4-e@freeshell.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250203013730.269558-1-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Set uart0 clock-frequency for better compatibility with operating system
and downstream boot loader SPL secondary program loader.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index 8a59c3001339..6bb13af82147 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -635,6 +635,7 @@ GPOEN_DISABLE,
 };
 
 &uart0 {
+	clock-frequency = <24000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
-- 
2.47.2


