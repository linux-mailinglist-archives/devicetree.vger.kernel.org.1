Return-Path: <devicetree+bounces-71780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A30FF8D7EE9
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 11:38:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3113528A489
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E63CF12C814;
	Mon,  3 Jun 2024 09:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="e7RyBf7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C45484E1B;
	Mon,  3 Jun 2024 09:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717407075; cv=none; b=NBG5+fTl9fjZaTFDbfVv7MSOHK4dHaiNqYpYF65CzLdb/hm4OSEQqtOaCQsJqZj7BEoPNfio1mGtar3ijajCuBblu01sQiJpIle27Wsdqnf2sP5Tt4lyrQ5wak4Dg89UPeiAq839oFi7IFnGJHC5Ty+zjcvhUr4yLqQ81yY8+f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717407075; c=relaxed/simple;
	bh=goSYHysEj1hU2XAZz5fvtwib9SGCbB+Erxp34Y8RlxA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ajB0RmLWJUjOaBrcTy/htKSgNjBOPCJ5jmo9GKHmhlEmeZFPrIdhE0lDikSm4innDtqxHCyJpzlk9m0wtNYNfXAgZLY+rJ6t8p0ccRE6HSZCQ1k9yAm8h2JXXZ844yFUfBh7GyWd87KzA0I3/FfYsu5RJ6D3m441tfHoxVA4NOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=e7RyBf7J; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45380Gnb021381;
	Mon, 3 Jun 2024 11:30:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	4VhnK4NT+yhZrs3LA+SHFy4YOrfzP0r3cU3IuVTOa00=; b=e7RyBf7JYUwZLz4t
	46l/ykJGH+jQGZB21EAN9opXdd5j3Vy+t6I48T3i0gafSGGK/YX9846Clt3254Ll
	b/7ACjHcqrYJwBzRqj6a8RnX8P1Px4TyoWGBW3q9QqURk2LGnohQcHhXA/AVRjiE
	JNRxmivOtjnxTZX4/0Wv/zoO1pQcstnLosHB13SJO1fAvITvzZE/UxfO2xjEmuvv
	7TEDdcGZqp8ZnQymyqvJSk9Vh5NywW6f1xoM70H57A0h7qbiQ0Krm6LKK21vGXF0
	l1lceB7SvCwTodRt/yrOvYYJqpoNJd546YSiMzMrG93iPNqSwUQy8Bb5QyCrkQ52
	lnbbOQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yfw30603r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Jun 2024 11:30:49 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id AF8BC40048;
	Mon,  3 Jun 2024 11:30:44 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D23622165FB;
	Mon,  3 Jun 2024 11:29:30 +0200 (CEST)
Received: from localhost (10.48.86.164) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Mon, 3 Jun
 2024 11:29:29 +0200
From: Christophe Roullier <christophe.roullier@foss.st.com>
To: "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark
 Brown <broonie@kernel.org>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>,
        Marek Vasut <marex@denx.de>
CC: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 06/11] net: stmmac: dwmac-stm32: Fix Mhz to MHz
Date: Mon, 3 Jun 2024 11:27:52 +0200
Message-ID: <20240603092757.71902-7-christophe.roullier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240603092757.71902-1-christophe.roullier@foss.st.com>
References: <20240603092757.71902-1-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-06-03_06,2024-05-30_01,2024-05-17_01

From: Marek Vasut <marex@denx.de>

Trivial, fix up the comments using 'Mhz' to 'MHz'.
No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 91e1a540616d1..260b5eb27b07c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -58,7 +58,7 @@
  * Below table summarizes the clock requirement and clock sources for
  * supported phy interface modes.
  * __________________________________________________________________________
- *|PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |No 125Mhz from PHY|
+ *|PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |No 125MHz from PHY|
  *|         |        |      25MHz    |        50MHz       |                  |
  * ---------------------------------------------------------------------------
  *|  MII    |	 -   |     eth-ck    |	      n/a	  |	  n/a        |
@@ -370,7 +370,7 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 	/* Gigabit Ethernet 125MHz clock selection. */
 	dwmac->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
 
-	/* Ethernet 50Mhz RMII clock selection */
+	/* Ethernet 50MHz RMII clock selection */
 	dwmac->eth_ref_clk_sel_reg =
 		of_property_read_bool(np, "st,eth-ref-clk-sel");
 
-- 
2.25.1


