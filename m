Return-Path: <devicetree+bounces-233276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA95C206C1
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 515403BC84A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48EE263C8C;
	Thu, 30 Oct 2025 13:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lHMLBwWp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay73-hz1.antispameurope.com (mx-relay73-hz1.antispameurope.com [94.100.132.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B419261B6D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832505; cv=pass; b=IqJ7P2sa3NjE3PkpaqaYeh3XBaqjll23jBVkLYKsD/6yin9HNf6W7kma4+iTo7uuSb4H3peuBuRZVLPyly4CAmbv+PeXgjZkTx5N/UI2VNOI3IQJP7jmx3nnCyVgOUDMW25kAoyXTtwPGXWBYxrrfQZEBqtPqD0niXDxXWXPzKE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832505; c=relaxed/simple;
	bh=g49/BvHAHefGv2lXoYjQ4KibKwtcnMRmtDWXdeTybdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SJMQI82/4YGTd/xiedgj0rdKrVvxvbjHFq06a6JPkugQufN/H4jQHybMtoVqYmAzxMqXehGaue4Iv9jFsdamV3feOBlpGIfH5VexY5+rXmz07dnFKbb7DQvm4YmlWVziFRQwPe9Rh0EBFMzyA+2VmoBJdw5SIybqOFcv/c39xZU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lHMLBwWp; arc=pass smtp.client-ip=94.100.132.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate73-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=No66cNLUicbMmk4yWzYnf+xkWOSrPxLslCLwe5XBnm4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832398;
 b=IAJwwgWhNMVbxce6djcyTLaOzh8Cghatk/BD1GWAlmGg+0cpAiH3DUPIIWOhezjeSPusWE1U
 uluyO76ReM5ueW3qSJBLRfFwxtN91dsDSERV/U0722nUJ8tqLeuNjq/mosmLtaZ2hTdie9tDAKa
 Rn3gB9bvAfHchgJxdd0ohsx2IeK16WeHrGfKj8AKk0x7mk7oqcsG1X5JK/cgsF8X7OAJzqq29EF
 beP/7moQ28jn1Q0iEjikkYqmAkAqG40rSvOlXrQEGdySTWw1eZW/lEVDc2Z/h8PA41pEHyT7lpX
 Mq0eS9xMYPCdDU0V7j1hGZD30By7qgx+b2B8+puilqPnA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832398;
 b=Q7FE2PpLeoPgR0Sex6zTiJKGI1rEf8MnXVMfQTjoLL1XaF9q0QWoSKb+Lv9nO1tHhVK4Lh0I
 EwzUqwDT8qW+vTSpzOoArVp7rw7GpKwKv9ouK6py7CjxGyhh/D0Cl9ReEzHQR+vvIu/0X06EAlQ
 FIoEAKFsPOQBEDY5gNzknl6Pug1ClQxz0BWDSvT5Yj0ZiV4bGwgSTKuJd/5O4AtvP0OLKWBMgge
 6PEwqeQvrpLNpL4kjqYhOIPtgCWZPa+riqe8qpautdm1kNF2b5tFEYsnk2gObFzeE0yY5LnZHnb
 WiJHpB4SE0kqKKyryJwO0D0dGKvojqj1MLc58jYcBRN/A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay73-hz1.antispameurope.com;
 Thu, 30 Oct 2025 14:53:18 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8E76A5A04B4;
	Thu, 30 Oct 2025 14:53:11 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 12/19] arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for usdhci
Date: Thu, 30 Oct 2025 14:52:54 +0100
Message-ID: <20251030135306.1421154-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
 <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay73-hz1.antispameurope.com with 4cy5D82Hd3z14Sd1
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4ada1ca96b2637bf43c610ce9808313e
X-cloud-security:scantime:1.655
DKIM-Signature: a=rsa-sha256;
 bh=No66cNLUicbMmk4yWzYnf+xkWOSrPxLslCLwe5XBnm4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832397; v=1;
 b=lHMLBwWp6lq6ybCGrc56zVCRf0xfD39MLCjW8IJ8jYOhbZJmsfCbgNPA9c2cMdPSyd2KxAx/
 29GqMjK36DaUwuNSyMENfKNIY4eC63YoSZvvNtx1sur8Bsrygax5Tds8fAopEFs9aEuO553KBzy
 +mBZ1sTPyD0ZrVs8aQPjcRQcHRg9tQsEVjUVrPA+qeXR4pCOOVAmmgGqjulT+vV7NJAoHcssQtU
 QJ/qdgk7nI99iTOF38o+I1TfhTqxwvwj95MG5TeweN+cTg1snD4aKx0bzCau4/bUzDVkmV37K5n
 U/LnSqBEatqACklClJADR42m60zd+5h5qFSyNJ+9+Qm/Q==

A sleep pin mux is not useful if it is the same as the normal pin mux.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index a6ab94208028a..cc251505f6280 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -493,11 +493,10 @@ &usb3_phy {
 };
 
 &usdhc1 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
 	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
-	pinctrl-3 = <&pinctrl_usdhc1>;
 	bus-width = <8>;
 	non-removable;
 	no-sdio;
-- 
2.43.0


