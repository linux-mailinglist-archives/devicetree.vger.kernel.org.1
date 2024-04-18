Return-Path: <devicetree+bounces-60539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF298A99DF
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:31:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0D581C20F64
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2BBA165FA3;
	Thu, 18 Apr 2024 12:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="Caq571zM";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="cp9pX5Xd"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i51.smtp2go.com (e3i51.smtp2go.com [158.120.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF81649D1
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713443386; cv=none; b=chJWOI0yIwVQu8mKKA/HYudYX0mlLQQisXSa8HuF02yIY19iob35I4r7jhdd9ABxSoclywejtB5EX2E29l4q6KiuPCsBk17nbrkdeyo/T4WyCrUoEmUb8M1weRVVjQ3oE4nnSSJz1c/tzS8ozSSCq/2Qi7WhaZpMW2oPndMU3sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713443386; c=relaxed/simple;
	bh=70ZT+ixekGA7Dp6gZqaclj06/R0USy8Kl4atAXCRXx0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z53uug04Oup8rHbnd/seaDQVTcXd24kOcOgglm9KJBV8THv6RZI5Ec56acM4dpnf4OyhbJzMlbcAzk6GRimTHSNydLrcujGYE7b1JV8NDRPRfdr+i6sVanfnKd1pbjpmCdncuUDIgXDJy7sXCtl/URZ4Yrzzp1qn8vNsfxPQW6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=Caq571zM; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=cp9pX5Xd; arc=none smtp.client-ip=158.120.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rxQtL-wSFvR6-2o;
	Thu, 18 Apr 2024 12:29:27 +0000
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
Subject: [PATCH v2 5/5] arm64: dts: qcom: sa8775p-ride: remove tx-sched-sp property
Date: Thu, 18 Apr 2024 14:28:59 +0200
Message-Id: <20240418122859.2079099-6-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 18 Apr 2024 12:29:23.0923 (UTC) FILETIME=[0BBCEA30:01DA918C]
X-smtpcorp-track: 1rxQtLwSFvR62o.mcm_ue4JCib_n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1713443369; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=V+1vvwjdWgujcNcq0BbcQl1Gr7TpP6SphXfO1RK3Fmk=;
 b=Caq571zMTzL0y50mDJavW5XHn24FpQa6INFy6I/+az6uQ4WnMHexCrCaZbBBmCHcvYrLi
 CpYl35gN8epeB9/xArzjv/AXURUaT8gE3ziEOaqsm5tdNwuKPiJjKvrmY+FXC4uXBMoGc8O
 UxlTppDuL0mbiH1jrW3owm61X8Y97aHz4DZU1Z7e1D7djveX4oRwIbaYbEvEsV2lIVuojT/
 IhcKL4zcwdFRRB1Gj2W03AjRB3eSnc0YlbxLmiJB4a+5OeRizVzE4nXoFYKrqnBfuolPzAM
 BpdijGdHHePDmrrVZ36I7KK6k82IJG2D/drFnNRpo/Lga/pbN95mHucwEMWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713443369; h=from : subject : to
 : message-id : date; bh=V+1vvwjdWgujcNcq0BbcQl1Gr7TpP6SphXfO1RK3Fmk=;
 b=cp9pX5XdOfVUX4Hunh9Bw4/25GhkWfFmud+EgMVjqP2a6k1LqVMYH8jRo8zqhKGBCfg6G
 GAOfAbz/yQheVDK/xHu10iTKjxF7a27DcvbGq7NsTskASfoM5Ci37RWmh2NTaja0HFk8cux
 2NiWy3RhXpezYl3nKm+HIrsPqb96niRuuMaGFva5us2gDnGS7F4k5i+0WuE5tEsz8cGKb/X
 EVbEq2Ibleq2/hAluS/KHGk1XTNLnmH9qFZMDN8yeNBO35lXNK7AqEVRcYcmy4sIF0BrEvn
 DcGpdnGawD9I5ihswXuCh7U8U9As6AoCXigGxqI0oLXZliDAYD0Md6X9Gr+A==

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 26ad05bd3b3f..2e1770e07f45 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -334,7 +334,6 @@ queue3 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <4>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
@@ -404,7 +403,6 @@ queue3 {
 
 	mtl_tx_setup1: tx-queues-config {
 		snps,tx-queues-to-use = <4>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


