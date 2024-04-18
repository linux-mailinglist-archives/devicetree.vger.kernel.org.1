Return-Path: <devicetree+bounces-60537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 786C08A99DC
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:31:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DE4C1F21960
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222EC1635DB;
	Thu, 18 Apr 2024 12:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="1PZrXm8f";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="CXp0RPkO"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i51.smtp2go.com (e3i51.smtp2go.com [158.120.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918821635B3
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713443383; cv=none; b=oJhcD2pBwk8Rf/Bhbq2bKgW8BAWZybhPZbarWhj3hOEkutye829wHh45v56OT0P87gA97rocW+x65dvMUF695gGlGcUThjr5B7l8M9M0pWAYtYLLXbAmrSacPpm+U1n95W+mQv1TAyc80MqIQMrP6f1cCGJp9uzeu4aRSqHpvmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713443383; c=relaxed/simple;
	bh=7YaaphZZMBLHKh0x7dUPDPqq2nvh8VeZ8PMGp6jM9vA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ixJKq3e91LdP0o6WCYNgCKvUzICj8MhK8hp4JQmFn1VoHTGt8PlZuUHbDpNb00gi8xkDVTXae1ln2C+sDql3Yv53z1Zmj/qqDL5vNwVkbFxpxLBzvDRr9rkG5+wvMIPqNs347b6pss1Ufq0xhxdjz276pRaREKKXQsMJURoU0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=1PZrXm8f; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=CXp0RPkO; arc=none smtp.client-ip=158.120.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rxQtK-wSFvR6-1O;
	Thu, 18 Apr 2024 12:29:26 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.4169);
	 Thu, 18 Apr 2024 14:29:23 +0200
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
	Flavio Suligoi <f.suligoi@asem.it>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 3/5] arm64: dts: freescale: imx8mp-verdin: remove tx-sched-sp property
Date: Thu, 18 Apr 2024 14:28:57 +0200
Message-Id: <20240418122859.2079099-4-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418122859.2079099-1-f.suligoi@asem.it>
References: <20240418122859.2079099-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 18 Apr 2024 12:29:23.0767 (UTC) FILETIME=[0BA51C70:01DA918C]
X-smtpcorp-track: 1rxQtKwSFvR61O.mcmkue4mgQ_jD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1713443368; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=xB6lptXkbDQjGZizWOcUacyiIPjTOrnbOEU8DAe0Dnc=;
 b=1PZrXm8fFIa0GQxUL9/Az0Hn42KDmeWY+mVO9tp79x5kpwZZ2VRmFK4Ooi6z02BdQahCb
 IwgV1jnBKJMXYlcd4RT9xNiJy03C9qd5tvkkXkK33XBcr59p8hX6vcD4IWKLOtDemlAxd5A
 qXCx4wOGpLKitjCNj9QfipgjhTh6NS6lsOCjhuQycATR7jI54VFjUsCU9yyNP1VKwrvC+RX
 CmGLnamOpGAo+6Bx71wQk6qwDAIlRUEgjbFj/728moqrYwWUAhSlCkpvDOlMDL7C7hlbrLt
 feSfq3yGan/OaqvnrwxN6i51eF/4r69FFU+v2BPAstvwFw7jKJpHB+gsn92Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713443368; h=from : subject : to
 : message-id : date; bh=xB6lptXkbDQjGZizWOcUacyiIPjTOrnbOEU8DAe0Dnc=;
 b=CXp0RPkO/tupCCZs2L5g9FWimVcXBjaMaXgnZk/QsscnjqUATZr415ZNZTuha4JK5YBAB
 ouqoebG4PR2HL2Ck4Eysj25z18KnqkRPuQFkZ2ZvBaDHExdSI+iP5X5F4P/rGuo653AlnxU
 mq0+jOFWIdWMHlLSSwLTG3ApcVoY0cMDOYUiTMVGr/PHV4WGVnxWAUMAOyNuE34MxJi0S4R
 /zPWqKTT+6tHGK5Hgwp6xOCbWIzX/CCsK+qeOvayl4aN4mgz3CYlW2uXyLGbTeq9Y6IVx/5
 1ElwlFQt853Xspn4X7GKDPF6M0fBHafO/FWBkAdYDBsnNgidEeMqNocELEtQ==

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index faa17cbbe2fd..21d4b6a9a1af 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -260,7 +260,6 @@ queue4 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


