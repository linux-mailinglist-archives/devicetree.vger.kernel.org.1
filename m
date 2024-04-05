Return-Path: <devicetree+bounces-56664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E261D89A116
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E2CD1C2343D
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2DD16FF28;
	Fri,  5 Apr 2024 15:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="VJY3qBWj";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="O+hRziHF"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i57.smtp2go.com (e3i57.smtp2go.com [158.120.84.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD7216FF30
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712330954; cv=none; b=Wh0tflaIHhPt278w2HhEjYZDQrXBocaAKF5exq765/hSxrdReuarUV4IAfbBTSxMurzV7f2Ar+0dX8ZknjOfOAQpD/2mdshb+2L4wEMsFNSgva772LMfxhe4mh1LvUMw2vmVMilJTfpv6tWF8IN7Fi51DVGbfRW9KiyDI3qL+LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712330954; c=relaxed/simple;
	bh=eTkke8cTaQuTil9Qf4Y1E+o+QFAi4UuM4kJMCq08Ef8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=B45arluIH5aJgPuZuTQGkUq9vqm6jCAee9yqxPyol1R3LBp4qVVBFFJ9g3Jh5qGPTY19dU6HXBflbZfXQIFvr9LwacFgCnpfM7iBVT9GdF1LGYNlNCxvfrxPuwpx9F4fmuwC0TF5Q7tR4LaTLOfa3ENJM6K4m0aG5y3tHzkXrNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=VJY3qBWj; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=O+hRziHF; arc=none smtp.client-ip=158.120.84.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rslV1-04gIYl-2G;
	Fri, 05 Apr 2024 15:29:03 +0000
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
Subject: [PATCH 2/6] arm64: dts: imx8mp-beacon: remove tx-sched-sp property
Date: Fri,  5 Apr 2024 17:27:56 +0200
Message-Id: <20240405152800.638461-3-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 05 Apr 2024 15:29:01.0479 (UTC) FILETIME=[FC4AB370:01DA876D]
X-smtpcorp-track: 1rs_V104gmY_2G.Eui9jfSRLdTMW
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1712330945; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=2+Mlo/B8JEt+9O2DNgOncVR4IzdOkeJ/dXwp0ZpjBmA=;
 b=VJY3qBWjdOevIY7Fnpg1so+iVW85XOObfF0WhWkU0afUEEusx7dMDpKXxNC7OkfV5Lytj
 VzvxsLKGa/dxNq2VqAdsh8mwP9n7LbtIK+UXyA96WWqmEgCecdBqh+3H2BEuyqMVKcEz2o2
 PTnjzYuPOU89G26xPYbzMdTtR6NKMJJm7WXdCBlf/cCyZZtLG0s/w09M4kuvXhrhqV9C4ie
 OqjlU/glfpkIIAv+TaQo6dnbR3ktaHpPxzd4smTgiahc81TzUCttLnfCC7UGkGpyAUTOVZ2
 8ll62Q7oDv1NiRaDqO85CAQRQGJvyA2ll229K7V4Cb6AA4+V8eUwUy0kZ/BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1712330945; h=from : subject : to
 : message-id : date; bh=2+Mlo/B8JEt+9O2DNgOncVR4IzdOkeJ/dXwp0ZpjBmA=;
 b=O+hRziHFk+r8XzkKSqCFsGe5sMyHGERNRI2IQJsy2C/T/yO2/eT2fLUeIQXb3CrZI2Smo
 oK7xyeprfynl3QPFYoBqJIKKN6IruOmRNaDeppqDXi6zQ6LsQfZlDeDaeorfRpAquUG1wVH
 RAx2LirVwklutCyMEu5EcjvzwWhVtFwvRuQ2OuWzGB7YypBuRSMPd2B8PwEaV5r8GJvyFbG
 tS11xFuwC6sXOcvgHnD5ILF8gTTZM+cXA/YEKOCX0MaBLsoIhBxt6F3kO28KfqtkrrFF4i8
 NHRzzL7bU8IvPEUyu1ynxjcdx/H7mhdJkqrdypdsQn2mJ4dC/oG5PJdc6q9Q==

The property "tx-sched-sp" no longer exists, as it was removed from the
file:

drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c

by the commit:

commit aed6864035b1 ("net: stmmac: platform: Delete a redundant condition
branch")

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
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


