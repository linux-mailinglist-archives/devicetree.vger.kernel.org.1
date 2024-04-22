Return-Path: <devicetree+bounces-61400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B733B8AC865
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8A831C20A4F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392A113E04A;
	Mon, 22 Apr 2024 09:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="qSH7rLED";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="Nz9dWhPd"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4202852F9B
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776711; cv=none; b=j4Fw7N2Iwr1mMoB9XdZhxDeuaRbDgZSQ/52EoJlhTxvXmpvU50BWDPsE17DTajrOBJJJxCFXxSubPhatXn2hYN8w3m8K7TyrDz8HxW9MZdwt4noBjYu1mYMHoPGQyN1Jiv8cYd6kpswE0Fdv9XwthDY3APi8rq5NwaBVJxTT85w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776711; c=relaxed/simple;
	bh=YhE8qxmtx9VsAQdA927K/LfjbzSzYqjoVBsHAjnTLis=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BHd+prx456yNf2PMvCrtCKuMzQwyT7V/bHh/oaMdOC5gROwsq0nrGcDc3bVnSJzVTdDBsuwkGtzq09fsHKGuEduPJpjd4RYraAMO3xo/mibrRYiV+Jo4E+3MsappOVA8uuOKxKwo9qonqK4G1KgMgurOR5BLh2zQFmGysCAzJfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=qSH7rLED; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=Nz9dWhPd; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=6xxT4AnGOT/oiwLV/mUq6t1GblNvqgs6p8n35GukuSU=; b=qSH7rLEDluycc7AmP18UTqr+E1
	R7I/t6s8IgGLaWHX+0zR15I0+pTUM8ozA+qmPr6I6L3dXcSD6K2yZlChEuMVb2TKsqSOGfE8tYhAV
	3EqZB8pQPQgbAVLnbCs9AL7nf1SZR7m+2D/AQ/bcvjO7shiVscbIyu5pvRPIDjUDtSVAmgfVMMkcN
	AVu5NL9MEjpFmzRJrO9RUFfRaf35hetRb31/fHIuiANPme3xLKXr4w19WJbV2DOAs/qA9MKmbIz0Y
	k95BTCHap67/l1dh55sFMon8bAbdzaTMZhkN6e2VID3zi5NL9SrQRloJPsGuo6l9gKTxjAwSdY7TH
	zVl1NLcA==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713776680; h=from : subject : to
 : message-id : date; bh=6xxT4AnGOT/oiwLV/mUq6t1GblNvqgs6p8n35GukuSU=;
 b=Nz9dWhPdb8D7P7tHWTz7956NfffM8V1K3w8w51AuwaO3iVeXOWA86jVKwQ5aY88abRfBJ
 pIzuydcZ67AvjiRjTtJ9ypW7tL4RIe1siLgLXNwAUk4YmRAPIaTW+HypRWS/0KN+aTr8r2d
 cDHlq+dEAyVDRWQuU/2ueKd4DUT5KU3JhotjJqywSdiDQnnm2TmBRIohuejjgdgigc2K+2M
 XxkQx++mW2OVcu3LW/TbhKZ4RcFCrKMMsZpjWUW/CfSgNKjJrQnGtslaaT08Q3c3A8tt2mB
 PtOV4HNAdybGIRugZ23JRBDSFUCDsrExrFAA7+P3TkJOTMs3GlKP2E3CArNQ==
Received: from [10.143.42.182] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1rypat-Y8PDvh-8B; Mon, 22 Apr 2024 09:04:11 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1rypas-FnQW0hPpvx6-he9B;
 Mon, 22 Apr 2024 09:04:10 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Mon, 22 Apr 2024 11:04:08 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH v3 1/5] arm64: dts: freescale: imx8mp-beacon: remove
 tx-sched-sp property
Date: Mon, 22 Apr 2024 11:03:58 +0200
Message-Id: <20240422090402.33397-2-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240422090402.33397-1-f.suligoi@asem.it>
References: <20240422090402.33397-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 22 Apr 2024 09:04:08.0808 (UTC)
 FILETIME=[09027E80:01DA9494]
X-Smtpcorp-Track: -0szGCrMNcLt.EYKikLqCGk0h.qQDbaADN39G
Feedback-ID: 1174574m:1174574aXfMg4B:1174574seGOAHZBY8
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---

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


