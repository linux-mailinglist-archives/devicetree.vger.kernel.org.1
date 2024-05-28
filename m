Return-Path: <devicetree+bounces-69783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8558D1842
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:16:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34799283F83
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632E916B74B;
	Tue, 28 May 2024 10:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="AZ8KD6sQ";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="c1NlzxY6"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6A516B731
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716891388; cv=none; b=jwRVIVjPt7x6ON0zHU1NHSFVZiUYkRg+ny6esYuM0I8Ef4lNXGGYg6Q//JzsHaS26l9NQm5hMGGT/+4r5C7GO/TVOuebuFQfly0nKoXeB2ffYKWQgRKDGzgLTh3Qjb3yAiLaVbU9eup47wMdCIWMqY56bzKsZXwIqUzL9nCZkKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716891388; c=relaxed/simple;
	bh=6oC0Iuu393khyKlVI9xXwwcZLOlRA27Y75uOzGSXvFs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kPnsWxOW5yOOXFbct3NGa1WqHSmQBSYuzfZiOMp5FTCGE1MKvWnvVvT7nrUCyjtzh+BlhGCFnFkWFJLzfUdujC/G7ohA6EdLU1kQW1Xc1rBOmAim2VULAwH7AiqmUuhafOFETSyvJn346u9GLTAq1aKPgRrLpHjJQxlIoznVgb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=AZ8KD6sQ; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=c1NlzxY6; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe:List-Unsubscribe-Post;
	bh=AuGU9ww0mJkm0U99Qi0nDaMfje+KtX6V7T19eN68Ao0=; b=AZ8KD6sQjPPPI5qoTft7/mxM+N
	pzyF1iJPKAKkGayjHuzxvBAIAggJ8OnwyNTbTd+H7RGGXMDSuD2s8Gak6GMEL9pVbSShW4h73oxSZ
	4MwKvwexFU/HQoygwzC3Q77t6iTXTZifsCUlWpzP8vHZS9OeHFSF2CSfxzqhgaObz2rsaMusNbRkj
	9y/0UEJuMujcrERTeSknGcrZyPFmwkePOiKhnLRFeFItvVJkmoFeWoAQq345Aet65FxVlJ/gp2AYK
	HU8P4EahlSns/HMx5o5QX4bglG7tKv4clt3loAYVYn5h+PfHKp1qhafZi522X++UGnkraDnaAeawE
	m6P4beGg==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1716891386; h=from : subject : to
 : message-id : date; bh=AuGU9ww0mJkm0U99Qi0nDaMfje+KtX6V7T19eN68Ao0=;
 b=c1NlzxY6JIIpuZVCb7mhygoQfyhPUJ4ymiAvn/kAC7Z/A+m2Jn8b1Xtrd1Y7gEioP2UF+
 wA0oVhPXmqh8G7vyBECala7W8eCobbf9kOmn1cupJQUBVkhhZX5ptkSd2s/PqnQXBj8Dunw
 8oxEqDBbrOIwUabWOC5jM2SwcuH/Eyii+FeurnYDld8kX07puaZ+/jmfqkgR7mQ7MpE+ykh
 PYT+fYxSuXW22O7NSbk1IkNzALPdeNESiqPahzeeXZQ4ZtV1fj3eUUEO0NfxvkWYPbtGPNZ
 lXcWc0mmt7wz/BtawXZjBpHa5gfdHjpj21t6WxTYYSJKrsF+yTEGPjHm5NBA==
Received: from [10.45.56.87] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1sBtsS-Y8PCR4-9O; Tue, 28 May 2024 10:16:20 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1sBtsQ-FnQW0hPuHwL-cTe3;
 Tue, 28 May 2024 10:16:18 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Tue, 28 May 2024 12:16:14 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Adam Ford <aford173@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH v4 1/5] arm64: dts: freescale: imx8mp-beacon: remove
 tx-sched-sp property
Date: Tue, 28 May 2024 12:15:49 +0200
Message-Id: <20240528101553.339214-2-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240528101553.339214-1-f.suligoi@asem.it>
References: <20240528101553.339214-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 28 May 2024 10:16:14.0263 (UTC)
 FILETIME=[120D8C70:01DAB0E8]
X-Smtpcorp-Track: qD4ie-5JVYfz.fdz1ytYnoRBi.xW-kkAGDTxQ
Feedback-ID: 1174574m:1174574aXfMg4B:1174574sk39EAmvT5
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---

v4 - Resend after some weeks (also added the tag "Reviewed-by: Krzysztof
     Kozlowski <krzysztof.kozlowski@linaro.org>" in patch num. 5/5.
v3 - Removed the tag "Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>"
     (it was added by mistake).
     Added history, as well as in the cover-letter.
v2 - This patch is the 2nd version of a previous patch, where both the DTS
     and the yaml files were included toghether. Then I split this 1st patch
     series in two, as suggested by Krzysztof.
v1 - Original version of the patch where, in addition to this DTS patch,
     there was also the one related to the correspondent snps,dwmac.yaml
     dt_binding file.

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


