Return-Path: <devicetree+bounces-253522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D137BD0E19B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 07:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C34F300980F
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 06:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E269F1F30A4;
	Sun, 11 Jan 2026 06:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="SaTvT6Kr"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377393FF1
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768113689; cv=none; b=HneZG0VXelCrVDHMPm0fNuPYdDzw2Jih+/o+gCeRUPuvkpi1RYUYezFmsvnCbTqbXPZpnzeE0c8MHYBzu7dhJIs1eueXT6UC+0sZgv5DH2YYEDIO5KdTo9BR2a4ORbe2wDEEJD8ZMuSg8OytAAZ+cKjBG9KNyHhHKhJ3zFlrGJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768113689; c=relaxed/simple;
	bh=OkFD2HGSr1MsKeR9yPZO9Cd8GOid74MlNIlt7D1ODFU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gInDPpnWJyaW2azBeX7Oa3rhYrjdY0opjfiiX/hnlomPu817lI0cltKnrdVOh4YNu9td1SHgXblb7Ect1P4zXX8U0RlC/G2u3gnS17eAj3fpcolAzEho8ijB0/vWo5g6NJ6/Ulp5PMCSQ8mXTqwWeCYQyuzApWjteTIMw4By+Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=SaTvT6Kr; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1768113685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=566hMGT2wOOA5i+sdnfFimS5EhXjb0N0TBNQUsy89Yo=;
	b=SaTvT6KrPH5cmadrgS7Fw5PtEBY2Fp8TWmc95KdgXXACnE3+nV98WMI40Rtc8iDsQOJu90
	pzz+WIc0lVx9hE5Vkg+JEQmKP/CFjkdNNQ88RUi3SzE1DFtSadUuPKdwLrp+7O/LXrTFbN
	IE7KN5FOmYdeIAv766qYJWHfNduDCCg=
From: Ze Huang <huang.ze@linux.dev>
Date: Sun, 11 Jan 2026 14:41:02 +0800
Subject: [PATCH v3 1/3] riscv: dts: spacemit: Add USB2 PHY node for K1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260111-k1-usb3dts-v2-v3-1-f5ebd546e904@linux.dev>
References: <20260111-k1-usb3dts-v2-v3-0-f5ebd546e904@linux.dev>
In-Reply-To: <20260111-k1-usb3dts-v2-v3-0-f5ebd546e904@linux.dev>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ze Huang <huang.ze@linux.dev>, Aurelien Jarno <aurelien@aurel32.net>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768113671; l=1040;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=OkFD2HGSr1MsKeR9yPZO9Cd8GOid74MlNIlt7D1ODFU=;
 b=ndsEwPbqczy5gANhQyfrkhX4hlhszRxEsjVbIagDSAlfPx861WOm8rxEXFnEI7JkrtReHKy+n
 6j4mXBz/0i2CubvJn7FtYfkpp4rRMXWQweG/ezrNo2Q89IK597lSwvi
X-Developer-Key: i=huang.ze@linux.dev; a=ed25519;
 pk=Kzc4PMu5PTo8eZZQ5xmTNL9jeXcQ9Wml0cs+vlQpBkg=
X-Migadu-Flow: FLOW_OUT

K1's DWC3 USB 3.0 controller requires two separate PHYs to function:
the USB 3.0 combophy (for SuperSpeed) and a USB 2.0 PHY (for High-Speed,
Full-Speed, etc.).

Add node for this second USB 2.0 PHY (usbphy2).

Tested-by: Aurelien Jarno <aurelien@aurel32.net>
Signed-off-by: Ze Huang <huang.ze@linux.dev>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 86d1db14e2ee..b44149f4f076 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -424,6 +424,14 @@ i2c5: i2c@d4013800 {
 			status = "disabled";
 		};
 
+		usbphy2: phy@c0a30000 {
+			compatible = "spacemit,k1-usb2-phy";
+			reg = <0x0 0xc0a30000 0x0 0x200>;
+			clocks = <&syscon_apmu CLK_USB30>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		combo_phy: phy@c0b10000 {
 			compatible = "spacemit,k1-combo-phy";
 			reg = <0x0 0xc0b10000 0x0 0x1000>;

-- 
2.52.0


