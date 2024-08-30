Return-Path: <devicetree+bounces-98611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C46F5966BBB
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 23:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53F621F239AD
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 21:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9891A1BB6BF;
	Fri, 30 Aug 2024 21:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="zrYDi1aE"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9579176FAB
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 21:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725055051; cv=none; b=utmAqyM6z6TV64Nofvp/A0twESmQvA1WRw/cuseXx4JcANdgHCQPZefmA2rvSEr8plXqLLZoJKBwi8MI9R9pkl9pCnn7yiBYA0kK2KYqbPAHkeL6srBDx22yEVlYmEBFyD9no0oIm+qr2zAcNXMDTDIs06DcHf62FhpRFaL3AeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725055051; c=relaxed/simple;
	bh=Xm6XjtYoru9XhwDVD50DAWrB4iDttigHSp0nMSXm7lI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BCGGX3vQLgcSfrW8Zm6sg/zGJhC3dtvzNpm5fdN/ldogRXf4wyNji7pHhuR0LksM+ipyM4Ro5Y8RejGJHKnVs75mJAUnj/giaRjBf5qWfU1ZhknKhRx8KApOgaUhzdFHPu6C/umL0qYq7yUEWSz6+qH/gNe2IycXkATxGRTK0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=zrYDi1aE; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id AFDB088D34;
	Fri, 30 Aug 2024 23:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1725055048;
	bh=lF3GEPA0QtOMpkWYq2piV/SR2rTG3cZOsrxFTrHDYEw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zrYDi1aEH1tJTb+VkeCRGGOiU3iOd68B4nShR1LURnOB6bsqEKdDawFLySkPmxtIA
	 lJ8kzmqz6MYzsUncjRgu/61SSUx3lHwhalC9XmgCV9y5vBc0lNZ17uH+ARVDWSDOB2
	 fmFXKIE7zMpIYbm9Vrr570ZrVP/9EYyqnvV0uuXRkVgrim/iTOTF1Ki9RMYVl9VMAG
	 PnUBp3xielbvdVIi7eNFfB2PxE+TSgx9WJtGTNJCHBnFxs5bKgbrMtRVi3m2z/H0Rg
	 bUZCoezP5iHDoGrsFFpwq7qqSqkipNcfkopR0v4rxCT7TfpyOtk7Isf0nIuQvYIuke
	 rQI2E3WDXoPgg==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/3] ARM: dts: stm32: Switch bitclock/frame-master to flag on STM32MP15xx DHCOM PDK2
Date: Fri, 30 Aug 2024 23:56:37 +0200
Message-ID: <20240830215701.103262-2-marex@denx.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830215701.103262-1-marex@denx.de>
References: <20240830215701.103262-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Switch the bitclock-master and frame-master properties from phandle to
flag on STM32MP15xx DHCOM PDK2. There is no real reason to use phandle
in this system DT, since the phandle points to the endpoint node which
contains the property itself. Simplify the DT. No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
index 22a2a204433b5..ea933da64903c 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
@@ -191,15 +191,15 @@ sgtl5000_port: port {
 
 			sgtl5000_tx_endpoint: endpoint@0 {
 				reg = <0>;
-				bitclock-master = <&sgtl5000_tx_endpoint>;
-				frame-master = <&sgtl5000_tx_endpoint>;
+				bitclock-master;
+				frame-master;
 				remote-endpoint = <&sai2a_endpoint>;
 			};
 
 			sgtl5000_rx_endpoint: endpoint@1 {
 				reg = <1>;
-				bitclock-master = <&sgtl5000_rx_endpoint>;
-				frame-master = <&sgtl5000_rx_endpoint>;
+				bitclock-master;
+				frame-master;
 				remote-endpoint = <&sai2b_endpoint>;
 			};
 		};
-- 
2.45.2


