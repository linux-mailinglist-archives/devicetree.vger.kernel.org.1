Return-Path: <devicetree+bounces-135161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DAC9FFEB9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81C6C16242D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF60118FC89;
	Thu,  2 Jan 2025 18:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049D84D5AB;
	Thu,  2 Jan 2025 18:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735843472; cv=none; b=A4vXt4in7hqaHrE7h7Nc/YOnok88H/gf3eUG2s2PcCMiWFJFjTmK1LJn+sxqaURqED0RmdUfeVrW1M6UH/ZRwMgUOJ2R/ZOzPDwCCnBY6s6Re0AiqCcEyK5PYYGkPAmRfiEXh8JeMBt/0tYie29LvK2/KMu7B1V/654FRL3E2WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735843472; c=relaxed/simple;
	bh=3ygNsX3xbQ70h6H+TiVwbRG0FxuykRpfzmYiLAEmhQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m1DZ6ulu0vEJ3IBP8cgqEeXg/fRr7J8sw4Ch3/uAYpo5hy7EG4qzcLFYWbFA00HkvU8ae1cXSGqFSSXEwMUvQkJxXzTioZk3mfc8gPnwa1kAKwpPZFasbuJiZuV6X5oGDJ60wjhNNaqBZwSyojLKj0+sThy5op8VGvB0Tfd+sHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id B4D91B4B3DFD;
	Thu,  2 Jan 2025 19:37:58 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0 configuration registers
Date: Thu,  2 Jan 2025 10:37:36 -0800
Message-ID: <20250102183746.411526-2-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102183746.411526-1-e@freeshell.de>
References: <20250102183746.411526-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP block that
may exclusively use pciephy0 for USB3.0 connectivity. Add the register
offsets for the driver to enable/disable USB3.0 on pciephy0.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 0d8339357bad..75ff07303e8b 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
 		pciephy0: phy@10210000 {
 			compatible = "starfive,jh7110-pcie-phy";
 			reg = <0x0 0x10210000 0x0 0x10000>;
+			starfive,sys-syscon = <&sys_syscon 0x18>;
+			starfive,stg-syscon = <&stg_syscon 0x148 0x1f4>;
 			#phy-cells = <0>;
 		};
 
-- 
2.45.2


