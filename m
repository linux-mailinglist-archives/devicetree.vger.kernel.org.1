Return-Path: <devicetree+bounces-207625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C032B30150
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 19:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 735AE3B7DEF
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 17:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE3F33A02C;
	Thu, 21 Aug 2025 17:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="bOJ6kBEd"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE089275B06
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 17:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755798258; cv=none; b=KqVf17tLWAlKP8HbVG5fCXADm8gfhKyajCRsldgZFxUTvq9DiAn/A2FgVqkv50Z6sQ28mkNBtXGcD9VFwvL6GLJJngX40WOKxkCXBXzwGGWPAeEayeyMnWhKyoBSNYsUDXDMqJUfIFuyPpG/mQjBz6lCE1JfDzAEvRkpqba2+50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755798258; c=relaxed/simple;
	bh=ndXuZhlVB55njYdb9zYoE6/yCxgsV+U8y1OcDBfFX8o=;
	h=From:To:Cc:Subject:MIME-Version:Content-Disposition:Content-Type:
	 Message-Id:Date; b=PDCQnqSIIEs6dLdObpIOfmf5EFpVi81832YwUfwlVJ9Q5TseEqXHkTfWT7y8iPqj/SRPUGt/gldM61btg5ZJswdkk8qovhUTX1QQhWoiLUB/VHAVaao53egBrr0sbG9eK7VlmqFmm9AAYJXl96/09KgLSq+nVgs/50qIHvmyQg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=bOJ6kBEd; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OhfDopMLlSzRjCi00Eq04iQOcGmfz7Cch60FwRXbW2w=; b=bOJ6kBEdqkrsjj6Ncj7wyV0pSR
	R2xIoVvbjl0QvrPE32Uhdg5FnOgsr2klRchP9lga5iy4N57EbG+APRy3+pMAZVSaQoT39UiyCWWO6
	TUQuPERYTVcfemXY0LY6JzQp4TLCfcum1Xdf5K09WpQgWLsUPdAjt8VEO2TobVDNTT77gTLh4vFpq
	aQy8jaVhf/+ZPkxI97a5ujEpQizScWRionK8OtQSu9VH66iS2eaXBi0YKivfm5hOMRMoZLib2ri5o
	e1wZaMEehLMESc6b0EJpi0+dliwwg+RlRkmy6mGfSa/QNSFMoZ1AqSh48qCg60quf7eWht4NbzF+S
	JyJbsfYQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:46994 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1up9Kg-000000001SK-0GL4;
	Thu, 21 Aug 2025 18:44:14 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1up9Jw-00BbOE-VC; Thu, 21 Aug 2025 18:43:29 +0100
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date: Thu, 21 Aug 2025 18:43:28 +0100

Booting 6.16 on the Macchiatobin, I discover that I can no longer
access my disks, and thus the userspace boot fails. The cause appears
to be that one of the SATA controllers doesn't have any ports:

[    1.190312] ahci f4540000.sata: supply ahci not found, using dummy regulator
[    1.196255] ahci f4540000.sata: supply phy not found, using dummy regulator
[    1.202026] ahci f4540000.sata: No port enabled

This is as a result of the blamed commit below which added a default
disabled status to the .dtsi, but didn't properly update the mcbin
dtsi file. Fix this regression.

Fixes: 30023876aef4 ("arm64: dts: marvell: only enable complete sata nodes")
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 6170ca8f908f..8c7db2e87e30 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -388,11 +388,13 @@ &cp1_sata0 {
 	/* CPS Lane 1 - U32 */
 	sata-port@0 {
 		phys = <&cp1_comphy1 0>;
+		status = "okay";
 	};
 
 	/* CPS Lane 3 - U31 */
 	sata-port@1 {
 		phys = <&cp1_comphy3 1>;
+		status = "okay";
 	};
 };
 
-- 
2.30.2


