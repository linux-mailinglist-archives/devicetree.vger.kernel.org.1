Return-Path: <devicetree+bounces-56666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34889A127
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:30:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DACACB25E64
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABC316FF32;
	Fri,  5 Apr 2024 15:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="DIJHub1N";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="Orq6cwdG"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i57.smtp2go.com (e3i57.smtp2go.com [158.120.84.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C554217107F
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712330967; cv=none; b=X065MyDGFjLLjUELRZLu0z93gxUzBH0WJvNZ34VD2ADrX967xI7BpX16xCK9TiC39Y7EDSksZYPTsqZXgvXGG3xk7Ysg+h+h7CrsQg+PXACqwVrm03UxaNRo8/WJ4e0eRGxVyiGT12lBJvwYryoJDK6YL2N1bFWVwY5SZn/d5ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712330967; c=relaxed/simple;
	bh=/85FrgtiGyeXI3NXKIEzWRrmclnbRTUZJ58KJVorq4k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BgfvnhFWuyQQ2N98aie+qnerk+0vtU6/yms2lgzd1yYGISlxp4J+hCerbFH+qtxwPNKqv9kTcSg77htCXOmvSa9y9sXWhrR5TRMf60sHDymnbGPJW0cYRsdbKkYiNj6BUNPjPDfIy+eEWFCw7Uct5KZYIDqRfag2ozQnJ+j9/YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=DIJHub1N; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=Orq6cwdG; arc=none smtp.client-ip=158.120.84.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rslV2-04gIYl-0v;
	Fri, 05 Apr 2024 15:29:04 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.4169);
	 Fri, 5 Apr 2024 17:29:01 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH 3/6] arm64: dts: imx8mp-evk: remove tx-sched-sp property
Date: Fri,  5 Apr 2024 17:27:57 +0200
Message-Id: <20240405152800.638461-4-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405152800.638461-1-f.suligoi@asem.it>
References: <20240405152800.638461-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 05 Apr 2024 15:29:01.0558 (UTC) FILETIME=[FC56C160:01DA876D]
X-smtpcorp-track: 1rs_V204gmY_0v.EuMCjfTIRaIVE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1712330945; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=oi48LbG1I/VP5W3WKG7O4Eeo5cePw11MKZR9VfWSCRk=;
 b=DIJHub1N6pzgEZxL1bYtGy13jwb+d2XbBqriHeeFpa4fsd/P6qGbK9/P8PwkHyPzEBY1S
 BTjkKzbh5Cm+VfczqymEWxC1lAlfwtqwJPn6zyk/9VKGbgvKhoIOWl2HGF1OzsIdpcAXTyW
 XS9UjNtlNfKDAmIKhpTYqO5GBjr6YFZ/t2jLU9RHimAKbtAvaAE3cMGWbRLd8/go/nV/eFG
 B340IotLJYG11g2tvM7/oOLomoy1czcWMtBBbClA+3YNH7s0w/o7mTBKNIy+IHtjxHb4k1Q
 7C75/HjW7cxTw3LWxMvXDv2XKfEdX1LNm0dCw+gJJym31x6N3gcwsokjfmXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1712330945; h=from : subject : to
 : message-id : date; bh=oi48LbG1I/VP5W3WKG7O4Eeo5cePw11MKZR9VfWSCRk=;
 b=Orq6cwdGEcL3tsaomIIB6os9r5JC399o/9/SBbA9qpy4lS+aDWF/oRBIeiZ7uetNCzOLI
 0OEgIvtwTNz1OBXdeq2iZRyD9KDoCiw8RzcJnJhslKLbNiqz7Tp2x27p9FMiftgxXfIt+1S
 RXLjtCZJCmV4OFWH5Ybg313J1LF06gTm49R8Iv7DZ/GCjobDSQO6y7mJIN1VWZT8ftd3mcz
 tTsc9C+5YCnL1QS/Gx7v2a8pVtZ2PGVuvLEUu4TlE/eKQ8VLr3mXIjN4onDfetrCu+AiZvN
 8812Hho5z+9WXsPIK8IhrDnFEqXGhMkgpzFGo/3Fh4vVUA2tDMMCSwsidO8A==

The property "tx-sched-sp" no longer exists, as it was removed from the
file:

drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c

by the commit:

commit aed6864035b1 ("net: stmmac: platform: Delete a redundant condition
branch")

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 8be5b2a57f27..bb1003363e3e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -251,7 +251,6 @@ ethphy0: ethernet-phy@1 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


