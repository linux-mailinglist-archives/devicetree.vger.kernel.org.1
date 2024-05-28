Return-Path: <devicetree+bounces-69786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5496F8D1849
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F038284B19
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988D116C687;
	Tue, 28 May 2024 10:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="Bazi4zI3";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="FZ4oRTTE"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032C716B734
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716891391; cv=none; b=OvyJmJ2KS8uFptvNl/GTLiRXBlebskjDfj2ppVCKtzxXlSNat1Dg3nOV2/BEk9D0qp1mx2Zo94pxeEJXEf+M7sKbJJCP+OZbNbFOSDCylDOrnKqjNA8x8y2ws6srgWK13Z2BuKE7loMHq9rHCMjwv/13cPx57fWKLAWprO1zo2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716891391; c=relaxed/simple;
	bh=tVfDI0kmx/tmsW8P/DjN79hLtCiAM+vdQf8LJgqpIJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EPoKo/Mnil8FYXVGpnPKL2sHqM3vjxs5rXRCYrGQwiShLtFvdiJz6EntuoHkMUTSi9bHW5Ne1FuvD9308vD0kwdUoWGCi+LNesX/ASV5R3rPQJ5+gFjaTYjxYmYE8FgVxFssxGZbx/IzAsZEQmRZoQWEkfv+mNbaUhEPdMhdI/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=Bazi4zI3; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=FZ4oRTTE; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe:List-Unsubscribe-Post;
	bh=NM6YxoiXoR88tQyGL/kyUB+wWyE9ec9PTeEnCuQ1VwE=; b=Bazi4zI3f84FfD+40CZy57wf9X
	H81xSMc7XXdnEkjravMu+n+FMKooSp3eGnF+zvXW5IzDsxBbAB7uiB0q8/TZVKgQBkB3G7TRjA+87
	uFPHryKC7BhQ2yG6GSD/iQ0tSVRI5oW5+7k0DeUC3v/HjA6gFu/zU2z6DhaGXw8Oa48xgeaiZTGDt
	i7gtrPsxZiEIKJtuUqoNTI1HV2zCO0/3CMZ+6nOxC6duwqnTfNLImafVv0h+ancflH8oejOf1N4Io
	rEgH9l5LedW/SyG4C6uperpguWmvdPPTj5mNJquRUdQWU1S6SawkgKqA9YRgjrqxMxpzYgcDPU7Lj
	hJWeSHrA==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1716891390; h=from : subject : to
 : message-id : date; bh=NM6YxoiXoR88tQyGL/kyUB+wWyE9ec9PTeEnCuQ1VwE=;
 b=FZ4oRTTEiwE2jprtYdyOGY0FSNpvCberKorGq+Sdh/HcySqOSXgLXPDnQDJ7oITxTaQYl
 wDYs2Pk3BqAMurdA/a9IfM0MbxY8kGJ9Utxp/Mgg/Wn1etIuxa6wNuivvfZiOG1vN2f6apO
 PczrhZ7cQMCj+IuGGBQwoRE5UUuc6gv+umtkQSMiAH3qnWTxtmk1kkNzTS8sPUcJuwJ/JSm
 4jNS0y/6dKu43+LnUzn7GHfhlzi1hIsIv0zn5oYaG0O1a1ZhDgkdgWIQHj++33rezyab2nh
 hX1AwijEO7caGIrR1RvGI3EXrmSLhm0JXbN8womkWo8ttOiiMVOfROhK2o2Q==
Received: from [10.45.56.87] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1sBtsX-Y8PCor-8w; Tue, 28 May 2024 10:16:25 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1sBtsV-FnQW0hPuHwL-cXN0;
 Tue, 28 May 2024 10:16:23 +0000
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
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 4/5] arm64: dts: qcom: sa8540p-ride: remove tx-sched-sp
 property
Date: Tue, 28 May 2024 12:15:52 +0200
Message-Id: <20240528101553.339214-5-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 28 May 2024 10:16:14.0325 (UTC)
 FILETIME=[12170250:01DAB0E8]
X-Smtpcorp-Track: xAg7zMgzJHpQ.t9vheKVM35El.J6Ri0gm104m
Feedback-ID: 1174574m:1174574aXfMg4B:1174574swsCBwxmJW
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---

v4 - Resend after some weeks (also added the tag "Reviewed-by: Krzysztof
     Kozlowski <krzysztof.kozlowski@linaro.org>" in patch num. 5/5.
v3 - Added history, as well as in the cover-letter.
v2 - This patch is the 2nd version of a previous patch, where both the DTS
     and the yaml files were included toghether. Then I split this 1st patch
     series in two, as suggested by Krzysztof.
v1 - Original version of the patch where, in addition to this DTS patch,
     there was also the one related to the correspondent snps,dwmac.yaml
     dt_binding file.

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index 177b9dad6ff7..11663cf81e45 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -225,7 +225,6 @@ queue3 {
 
 	ethernet0_mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <1>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
@@ -302,7 +301,6 @@ queue3 {
 
 	ethernet1_mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <1>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


