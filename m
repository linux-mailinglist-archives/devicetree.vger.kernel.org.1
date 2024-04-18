Return-Path: <devicetree+bounces-60535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC878A99CE
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:30:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71BB5B2175F
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC2015FA74;
	Thu, 18 Apr 2024 12:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="JwYz7RLQ";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="lb8KLTx3"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i51.smtp2go.com (e3i51.smtp2go.com [158.120.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E652B15FCF6
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713443374; cv=none; b=CYXR63LGBn03MtnjeABnTnrdkoPsEuSJLP0E6SrO+3mv25hf58WgstHvt4zMOPDc79ztPWsIUBJgji1798faxPONTMedmxmLLgqvAJolT/6q5SOUC2CA/DAGU92RY7IEdRqJNzHlmEO1Lo4IEYuyCm8ysFmK1AZogxmonPd2dEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713443374; c=relaxed/simple;
	bh=NL31cErW6LI9swDiDlefCuluc3s0/yO0eHrCdufFRzg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jv1Hd+bEhxrINBENlz+Q5P4zot+jPh3Kmtr8BXyqbsVHbfOpRoQ+y2L6pAgw5uukGf7T6El0SsN0ze+ZMMPJ9soLeBdl46Go1KN4pIctggM0sMVr8EIGVlWuz1xi5Kz4vFvl3d7Db4LjJwhUDjK8TCGQsESsWmkGgQDp1H8RbXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=JwYz7RLQ; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=lb8KLTx3; arc=none smtp.client-ip=158.120.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rxQtJ-wSFvR6-13;
	Thu, 18 Apr 2024 12:29:25 +0000
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
Subject: [PATCH v2 1/5] arm64: dts: freescale: imx8mp-beacon: remove tx-sched-sp property
Date: Thu, 18 Apr 2024 14:28:55 +0200
Message-Id: <20240418122859.2079099-2-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 18 Apr 2024 12:29:23.0610 (UTC) FILETIME=[0B8D27A0:01DA918C]
X-smtpcorp-track: 1rxQtJwSFvR613.mcmnue4LWs9jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1713443367; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=beW9HQTGOr0BFT9gN6HwTnSdPZIL/FVSpOfiqm6uGb4=;
 b=JwYz7RLQEg14r7oRvjy1wP2QNPaWw3UL4vln4+TNc/SLlj0yfKlyHUZHIun5tCds8jBBd
 O3O84ujaRDPt6jCtfoc604CBCSvYLbWiUihrjiGhZPbLY5V5zcNMQxHAZOotLGsvoU9KmGL
 h7+a/p31Xrfov0GozgFesudUx6HcPtzB8snomE2EiKlQ19OL6TJkRA+lJUQq+2vc3Ik4vAQ
 bdCchcIKRw7d0WUA51Dt6MLjdHAMnb9uGVs1sMATylf7NFq0NoxYZtf9gcgXRUtrMNyNOuf
 SLlMvUwefNHhSSSGaKurvc4w8ENQEovjHHq7u2Wh9Ka6KM6+Vk6QR7x1TLYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713443367; h=from : subject : to
 : message-id : date; bh=beW9HQTGOr0BFT9gN6HwTnSdPZIL/FVSpOfiqm6uGb4=;
 b=lb8KLTx39E97sb8t6hr0Qwyr5m/N+RBxt9fe+FUa9HKtSmXcn2N+SykvK6ehEu8CQ7pRO
 rKUULHCITUI4QwxGpumXb188dqs1+gucNpFpT/JrIEHFq8SgtB2AFGhYYKfOtgQd57t+pZo
 ammkzSjAoulQMtTdo8/8/QV6Q2+xQfA04ALdnOK/mNpVONgkypSnj7oXRcWRzdqx5QBTTK5
 llk8awDZlqjn92gAsIhIGM46qhdxbzhLW4jzCgDJsOpX/iXKtetxQRFovl9RkXIpn1aom7p
 8a3vaS8bwA91lNfc6vImFFqHlfEREJH9shlX1Bhk/KuhvbPVr7TEwJlipm+Q==

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
index 8be251b69378..34339dc4a635 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
@@ -106,7 +106,6 @@ queue4 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


