Return-Path: <devicetree+bounces-60536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571F8A99D9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 872D21C21542
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A031635A4;
	Thu, 18 Apr 2024 12:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="IqOmnN/4";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="LxLSGgNh"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i51.smtp2go.com (e3i51.smtp2go.com [158.120.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2EC161304
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713443381; cv=none; b=rK8sYZKEpIOleOg9nZLrFtZVo7cIRvTnbekAXq2MOs3P0BaDb1bOeYWjaiNU20QQxx0uI0KItwT2AoGbxxaLFvAn0zbDS9JtOXCZNJxqMJontToTVS9q/f5oTZCg4d/tlzFDP45ML4kowSk2ayAByfmHrC973vqxIHSs5/HiaR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713443381; c=relaxed/simple;
	bh=l/h1utOfbotcxoY/Yz0AnE/9+hUs1hBLejsycfSQgr4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K01Dqnlx2VFaADShl+twWzoP9h3P4aTBmMaT7C3BlLjjsSg8YXljkmV3ohfKYDckSYMp7NCmgcQhZsv3ThWUpUkhcLBIX4bDTjhaVcUqHqZ6+lGOrje8UCMwzb0WYhGyc7IZD9I5yn90/GuLOiO5NkIOUWSrhs5QGwN7RwVMjKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=IqOmnN/4; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=LxLSGgNh; arc=none smtp.client-ip=158.120.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rxQtJ-wSFvR6-2q;
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
Subject: [PATCH v2 2/5] arm64: dts: freescale: imx8mp-evk: remove tx-sched-sp property
Date: Thu, 18 Apr 2024 14:28:56 +0200
Message-Id: <20240418122859.2079099-3-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 18 Apr 2024 12:29:23.0689 (UTC) FILETIME=[0B993590:01DA918C]
X-smtpcorp-track: 1rxQtJwSFvR62q.mcmnue4Lz10ym
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1713443367; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=fXsxedbQ0ISYSt3uugliVFnw2OGttnVGjhOOYD7fjmM=;
 b=IqOmnN/4QFuyVY8Bg7EgedDHfYh61GthTTtzl+fmflxxYEqGpkHfoi+EIni4ENviPxBys
 zA8E/E8PZ1XhYD/j/rd6rO1vrxq3JeesOEoLWrsCSlVvJ5x2DQP4vFJ4F58/x/qbJKWGPq1
 g5Yorz1J8eMfU0iIZs1m/w859MznyQKLM8BfAeB5X3NqHryB6KmF2s30U7ZAy9locGGJarL
 uiWahvUwB8hPO1bTI3akfL6sTs8UVMeV+mllgYNPYBqqyE6eEfHu8xQrSG7vrxswaWAxWN8
 y9X2D91DuGsPBQe4JLQl8GcSd8UK6JxvzFgzsUUtVAqOVAtu5uVvGMF/feJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713443367; h=from : subject : to
 : message-id : date; bh=fXsxedbQ0ISYSt3uugliVFnw2OGttnVGjhOOYD7fjmM=;
 b=LxLSGgNhHG2VLetAOgVuia/98xgggQbmzPK0kLZAGDqbfEgKatrPmr2TH6NmUJ3FE92jF
 e2ECVrnqg6iOU53MAUyKDPMbSh00qN3AJki3BkGlVBGBlNeWYnwDXG8jjtkCYXnT+xlSOB+
 qnlKLGtIgql6a1S7C/qZWOQ82H1DGms+dkSGU1ov6kF3NEGQ8TkmgIKfZEuolfpjpqUmY3F
 GLydslR08+WgOUaBN8U9tgHW6p5kJcVlUDxzPHnycYBaK1sAs2FTRWUUGlD4WGIEdhf7KeJ
 2mF9pytHG0MHRInY3ImQcXo1GLFhCJPhMbe8ajN0gt9v9S+wJxSP34bJ8h9Q==

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 9beba8d6a0df..8747c86689cc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -226,7 +226,6 @@ ethphy0: ethernet-phy@1 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


