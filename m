Return-Path: <devicetree+bounces-135162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8910D9FFEBC
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B434018829CD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91FD61B423B;
	Thu,  2 Jan 2025 18:44:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0499843173;
	Thu,  2 Jan 2025 18:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735843474; cv=none; b=Wk35G7lGzDZaOvNI7RhU6Fya0LDJ+RNr//zFyuA6uV0TRuxpqWPukSqYGUt/367Ko4SjlWL2UP1MgGjiT5oSo4FT8mdidND9UiCL0vQef+ji/4P78FUkxdDcAbszQQyLrS05f8vcvdK+iF7EH2xVFSqqB5SASOEyGI+0uBXgzM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735843474; c=relaxed/simple;
	bh=pqIIV+cHGRGxgAmsyJB+a2+fO8BsJhzgoXyuW3m4LQA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u3KP18Nvmmbhc7IkeFwNpZ8eUfBDiSVNl2jJbWOoKl07yFTx9f5XKxQosrX0rT71JFopGzetRNRRwf9ZggEMXOqrNzltQ2Z0QYUzrMcWhlBYFJryguCO9pMSh189yC7xu1GMZy5zMjTBUu8hzHgHP0WWC4EoCIt2DOw5Gs6FCDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 35CB4B4B3E2F;
	Thu,  2 Jan 2025 19:38:04 +0100 (CET)
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
Subject: [PATCH v1 2/2] riscv: dts: starfive: jh7110-pine64-star64: enable USB 3.0 port
Date: Thu,  2 Jan 2025 10:37:37 -0800
Message-ID: <20250102183746.411526-3-e@freeshell.de>
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

One of four USB-A ports on the Pine64 Star64 is USB 3.0 which requires to
disable PCIE0 and change the mode of PCIE0 PHY to USB3.0 operation. The
remaining three USB-A ports are USB 2.0 with the USB0 PHY and do not
conflict with any of PCIE0 or PCIE1. PCIE1 (1-lane) routes to a PCIe X4
connector.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
index b764d4d92fd9..31e825be2065 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
@@ -100,3 +100,8 @@ &usb0 {
 	pinctrl-0 = <&usb0_pins>;
 	status = "okay";
 };
+
+&usb_cdns3 {
+	phys = <&usbphy0>, <&pciephy0>;
+	phy-names = "cdns3,usb2-phy", "cdns3,usb3-phy";
+};
-- 
2.45.2


