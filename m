Return-Path: <devicetree+bounces-61401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E30FA8AC866
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:06:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 151BDB211FB
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBE213C9B6;
	Mon, 22 Apr 2024 09:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="CkpmSyYz";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="IgC6wdLg"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7DA5644E
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776712; cv=none; b=YXNaZL247zMSJVSMW3fXdLXRvp17Gt9MZUs1kQDI6AeDPGvjpG3peyQRc1+Yn1gqjo+4i5RXXDzy56U7Wnwvq47Scpaca/Cbi9mFyA5Dg4QIEqJr3lEkonYD20o0AbL/OusWfTgnPpYvXDPeK63N77WE+7n8VScy9M7P8c5kxnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776712; c=relaxed/simple;
	bh=t2eI8tvKI1hpvEgK+1gE/rmaW5rWqOU0VQ8ytyd3ng0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZIiGP4+TF7BWbqnRiZJ3j1UvWmhYZoobX2LfXGUUQTRoWqjZwLf5XTZyzbOI42rJReZiaJm30a+SAaZ9a2+FRoExHmzcyX+ANzPu5G+2qWGPqXMU7T84TD9IWsJSmzMTGPu4QNbv6ksI9hOhxBrYjbutgDkNc5rCjVRVgWesBM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=CkpmSyYz; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=IgC6wdLg; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=TH2B+Yui+mmCtAONXy6DE87yiqCx8QnMvncW24XxHS8=; b=CkpmSyYzSgEOk85DcdBc7b9z+N
	3P2jgwquMOopHRmoMUd7hfyr76EOhbfazPeW0uHsR4fPZ0PmiuI2rsOHO57kULHAK2sX0ErLKUZPh
	U4vgbNBEzjv/CRPXHZ00eolNy3K1Siv8jq/Xze6awpeSiIlqIW/MLzISxR0PLLqS5jo2Q+143gmrn
	/HiVm2SPSxGjKTGZ4dE7f2zdT+rXguSURvUI8tnSnMGc+Lu3xMtBAssTo1jcVxCsHISMdJOzWwIyV
	lANfKnm/JL5Kvx6/IPr4NOboRkvd/6I18iK1M9BZNMN51uzn2EKs9MNFhnhGr2xHWejY6blmjSN6j
	soWjuiPw==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713776680; h=from : subject : to
 : message-id : date; bh=TH2B+Yui+mmCtAONXy6DE87yiqCx8QnMvncW24XxHS8=;
 b=IgC6wdLgazcAsKDTciQ0cXKoF3XXIGnXpxul28/PpC3Aj4zxiJOOz1GvlmgX/mA3VdfPa
 319yKeWZyor+PnUwW4y9+bBko/uRD0hKzlP9HcV5lDmyDTiVytFfiiUoDxRXDPbVixje8/t
 bm1lQWKwkE/ULEqBRQq0uBK/Ia4bXkEajukhaq1AE5RFbSVlryM5wsmcb0H7aAYnkcf1EAm
 wRe9d73oEPgoNKAaDQR+gPw1x9LegOeyYSYyNn+FPu61NdsS3fnnE9CKBj6Bo7mpXMPs2LR
 BrKsU2mptseiwfhv9x0/PXP9LNIcGxCugkGHRTEM48TLt2Jxn5aLueZeIYyA==
Received: from [10.143.42.182] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1rypau-Y8PDzp-8e; Mon, 22 Apr 2024 09:04:12 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1rypat-FnQW0hPpvx6-i0lV;
 Mon, 22 Apr 2024 09:04:11 +0000
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
Subject: [PATCH v3 3/5] arm64: dts: freescale: imx8mp-verdin: remove
 tx-sched-sp property
Date: Mon, 22 Apr 2024 11:04:00 +0200
Message-Id: <20240422090402.33397-4-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 22 Apr 2024 09:04:08.0964 (UTC)
 FILETIME=[091A4C40:01DA9494]
X-Smtpcorp-Track: n8ij8dUcd05E.Jl0-9jPfC79X.2EarDQbkm2q
Feedback-ID: 1174574m:1174574aXfMg4B:1174574s9VjVG4CTv
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


