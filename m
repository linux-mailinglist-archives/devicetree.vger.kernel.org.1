Return-Path: <devicetree+bounces-80653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2391A1EA
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:52:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23C1E1C215F5
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 08:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3D5136658;
	Thu, 27 Jun 2024 08:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="H8sDeZYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664034D8B1;
	Thu, 27 Jun 2024 08:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719478348; cv=none; b=JA0TuZig17TgR0zOIR6mut0ChHj+6+dYCfxqpW9/gnCrvMRTswTISeRClV5bHNMJYfqcYTAnZsPA5nj8npzoMmsPeZjbNzH9oW3Y5Q4ejczMHF8qQiyWm+Ku80zxSj/haAD008UzhozCSDuYdR5yWC0wvCSVOFg+dottagqOaXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719478348; c=relaxed/simple;
	bh=2OU/D4MwEEpr+Ms7lIt5coeFYREWXBVBzXE6bjkzJR8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mp3b3e8X3jlx73QG04WqaD0CssQ98JX9vfMbWBPWtlIJjw8QEUyRHwuJLfOJjgkmZHc5aXRIEGHrwy2gLvePI2Wso14qnNlbZUX/kFNphpHiTsIbUWogLv0qWONJJ7j+R0ehUNLb0y3t3i3guLWX8xROxkAD/op2Zkfi+xvGRqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=H8sDeZYl; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45R7QdSC008977;
	Thu, 27 Jun 2024 10:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	lTOpN87EXBOPrm4lUPfEQRrOiTJrMQBvfm4Jw+7hbeo=; b=H8sDeZYlIV9GVw28
	BfhA7y+fFFNdyaVxphpgNYFj7XXTgKJ4be86ZtGaFfbveV9pD5TglLkMsHL7Sno3
	EZ6Kr4wJvUXTFWu2VxHHj3Q3bxJwHFs6B4RP4uKgLQI5+8QfQECnCuXMniecdTD+
	DM7EC44FwTeFj+1jRUcWcOS48knpXElOwVkuxvs1AR3sqv0pvft0atemMdynwy+z
	FSF0dwSMmIhMhWmXt92/7APQfSXnj9feBIfrXKfBpRdvzCG1yoySpyj0T8GczT2b
	DSxCOjQ5HNmaRVjOazJsMeJsGtgmfl02vzgD0yq+XpyuzLR96J/9eiCyHmADHMPL
	Ufi2FA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yx860tbfk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 10:50:50 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id AE75740053;
	Thu, 27 Jun 2024 10:50:40 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 56D702138F1;
	Thu, 27 Jun 2024 10:49:27 +0200 (CEST)
Received: from localhost (10.48.86.164) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 10:49:27 +0200
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
Subject: [net-next,PATCH 2/2] net: stmmac: dwmac-stm32: update err status in case different of stm32mp13
Date: Thu, 27 Jun 2024 10:49:17 +0200
Message-ID: <20240627084917.327592-3-christophe.roullier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627084917.327592-1-christophe.roullier@foss.st.com>
References: <20240627084917.327592-1-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_05,2024-06-25_01,2024-05-17_01

Second parameter of syscfg property (mask) is mandatory for MP13 but
optional for all other cases so need to re init err to 0 for this case
to avoid parse issue.

Fixes: 50bbc0393114 ("net: stmmac: dwmac-stm32: add management of stm32mp13 for stm32")

Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 8b85265ca6cf..d060d1d8bfc6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -371,10 +371,12 @@ static int stm32_dwmac_parse_data(struct stm32_dwmac *dwmac,
 	dwmac->mode_mask = SYSCFG_MP1_ETH_MASK;
 	err = of_property_read_u32_index(np, "st,syscon", 2, &dwmac->mode_mask);
 	if (err) {
-		if (dwmac->ops->is_mp13)
+		if (dwmac->ops->is_mp13) {
 			dev_err(dev, "Sysconfig register mask must be set (%d)\n", err);
-		else
+		} else {
 			dev_dbg(dev, "Warning sysconfig register mask not set\n");
+			err = 0;
+		}
 	}
 
 	return err;
-- 
2.25.1


