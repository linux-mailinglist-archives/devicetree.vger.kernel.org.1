Return-Path: <devicetree+bounces-61403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 337D48AC869
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A711CB21282
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21DC13E3E2;
	Mon, 22 Apr 2024 09:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="uboSWKP4";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="B0Fm4e5p"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660DD1411F8
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776714; cv=none; b=a6RrE29oxJB3MmYX31FJ3U163lVAvqTr86HonJ0WuYgaK9KAupe0w4AJatQK03CztV2qzlLEfeANfwxyueWVW0rokG3954Ejy992OfHrPEcu9MJM/xs/ygflh761b/At8si0QY9KNBziqDbEhr/PqmsykpbH1o42yTUjaDNRtmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776714; c=relaxed/simple;
	bh=vr3mP70Ml+CTsiCqXFkvm+bmpkhuQn6pWYBnGDF4u1I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ebMn5labXgW8X+bknvl9hnGGfwgzzzdga1+cSGboiLh7S6lmkQf7eZoJMz77tewd8BLizh5WV0Rr0PwbnokxitNAAboeQFaUYJ/0iwQB/E3EUv++lb50zxWIG3eJTPsUXA9HjU7OADNgavcaOr35GCgMzLnLAYd628lVknFMpKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=uboSWKP4; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=B0Fm4e5p; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=QgmQ2Gqg/9Dc9h8gAthGPlmhLJ1iqOTv73ICctSoMIU=; b=uboSWKP495X8++JGodQAETcHv9
	91hCvZ4f064rZVNJ+SZuuedpsAy3URrmeWgVY0vbhU8Hlj8+cYuwlh9KlBmPmWfHCzjETT63gEMjw
	YF/y6wwZk9hxnkfcLC5qP8Ru6AyDjFUpHtqu7rZ+xIE1ya3gTa8Drp41U2T1elmFEhglgyyVgXKEq
	vmu9G/MTBlSAS3BmBKbmrId6CP/EpE05gNL78RJNaqyMoGdl9GO8pBrHB6mo95x8xZxEQS6sgjoPW
	rMlTkxqEhZXqB48Kzutb7mdRRXdrKQkJ2K8eDO6GtzpPbcbQElcFsrKvLIpf4O0LXN7U2UwF8f3IZ
	mQx2gjHw==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713776682; h=from : subject : to
 : message-id : date; bh=QgmQ2Gqg/9Dc9h8gAthGPlmhLJ1iqOTv73ICctSoMIU=;
 b=B0Fm4e5pwzFmLDEQymA7A0SRyo2eI5Z6b4H3pwVvqPJm2mqRx0PwAJsn+iVvTPXXqAaI0
 30tkmAjVkJyDCEQCvpfQmXpov/b8rQnPtWsOl710mAWObuBURxU3esTNXiiEUQtnSzi8e5x
 G1fqtd86olIKju4zsLuko/nidKknJSfYVyMqKNkGonWy3uJ9k1/QBpnTfa6wMC/e0g0YpJl
 9HUNkVglaB8+hiByUMgZdSegpu9Y96KqZpt8iPoCuCWvRxHSpQiKVFprlyhumTQgtW5amiL
 rTbS8mkPo6WS/9ZBQgN2QDu/XGyTzx1BIGXnmb0LVQO6S4l8dzV2X1TrMTZw==
Received: from [10.143.42.182] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1rypav-Y8PE4i-Cc; Mon, 22 Apr 2024 09:04:13 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1rypau-FnQW0hPpvx6-iJmZ;
 Mon, 22 Apr 2024 09:04:12 +0000
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
Subject: [PATCH v3 5/5] arm64: dts: qcom: sa8775p-ride: remove tx-sched-sp
 property
Date: Mon, 22 Apr 2024 11:04:02 +0200
Message-Id: <20240422090402.33397-6-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 22 Apr 2024 09:04:08.0995 (UTC)
 FILETIME=[091F0730:01DA9494]
X-Smtpcorp-Track: rUwXK18_QN6q.eyqBt3aL77dr.PUeUIg_Q0OZ
Feedback-ID: 1174574m:1174574aXfMg4B:1174574sM5RhJVoQE
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


