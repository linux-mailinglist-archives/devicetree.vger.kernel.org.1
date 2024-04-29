Return-Path: <devicetree+bounces-63535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E74C48B543B
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1696D1C2133E
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 09:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9B52263E;
	Mon, 29 Apr 2024 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="L5DUqLH0";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="dLPqCLkc"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AC922318
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 09:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714382852; cv=none; b=s1PA6NlrtKq9eTvYYTWLjSqZCbN+XBTMYn4Ty7CX+hQldDHnB1m6b2URAxrQiwxIfRNHlEqLqfdf4VYg6WcEjO0bAM3XqyI6uZOpahP2Crfx2rWx5SFmqTgJvQywsvygss55O9E7bXsI6VF7NuWOgyzyjQ+X/4WVNcw9ZX9r7uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714382852; c=relaxed/simple;
	bh=30cqX5XdpQa8TGqXCdDPHM4UVl01LjROZCbP87EagOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TB6YhiNOcfyycD4Rn7AV8fc1lOxI9NuNHRJnFIvkRr1PUIKfnLhCUs/7npf8ldxXYlR0D7VtWFvyQUaXOuqveCnSQrMImv1XbXN0f0oReaoLVgkvZDPG2UJKO+SzvOs2RIPfyI5A93IMkJfnjaFAzu4/Kpzo2W6qAmsgSdZCKYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=L5DUqLH0; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=dLPqCLkc; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=nJrQkD6SYS7EZ39Pwcqy3OegRAr4vtSj0mwkDW3shfA=; b=L5DUqLH0H3DisqkV/+mKiPsqYi
	f5Wl2uQatBa+fFpCzjYQbKbkBgoH4bsgcU/ewJo/pumQfRMR3mAmR5nvQ2ZFBlpLl9r1b+aLBFW8u
	fKecN2ZZQQA5YO0Stqn103fQSSzpr0kBgZ5ndD4kWp4TjtKiChqxBD3IuOjBG/9vD1vw2XHbxQFrJ
	TQGq7zRPjlPnRxFnt9jrn1JqVVDW7D65NxuvHP0NVWD17zc0oLPB9rN9HjKOxuGvA6HCiN2OGGoXJ
	tvgFDWTK1AZplCCgOiDXPy+8t63M4YZlH1ztM+KPIXJFrcFXZlC9GnFECVRYzpUgbABLgbXryfH47
	29OLTFWQ==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1714382850; h=from : subject : to
 : message-id : date; bh=nJrQkD6SYS7EZ39Pwcqy3OegRAr4vtSj0mwkDW3shfA=;
 b=dLPqCLkcTqQ4qv9jlW44ay/1z9b4zsy/rq1PM89XVX4pUzqm7k92ZLVF9dTML30csZjq/
 K3FeykMm+5x1/QZseO3++S93Ub/ObT2wgzNhO6Tx0SGlE3YbJ3kB1SBd4764q82ZQC7xwbl
 weZiCb+Po/957kVal5QgUFM2OMZqC6JR0bBA7z2sNmtyru0Ai3Ubkuu4JnlG9Yn7WlWVGpl
 zFQ2ydqSvmUCj3DftgiDntEXt0ATR2hiLVjij8vVKbRdLVn/8XTl2MbBIxIvZFtl79fmn4Z
 yaQlHcFtpfAG9q6d1OtnztONK1b3mVzCcBgJ+VpEhsjhJ8yV1bIg9StswPtA==
Received: from [10.45.79.114] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1s1NIA-Y8PKoU-Br; Mon, 29 Apr 2024 09:27:22 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1s1NI8-FnQW0hPkfet-Om7l;
 Mon, 29 Apr 2024 09:27:20 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Mon, 29 Apr 2024 11:27:18 +0200
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
Subject: [PATCH net-next v3 1/1] dt-bindings: net: snps,
 dwmac: remove tx-sched-sp property
Date: Mon, 29 Apr 2024 11:26:54 +0200
Message-Id: <20240429092654.31390-2-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429092654.31390-1-f.suligoi@asem.it>
References: <20240429092654.31390-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 29 Apr 2024 09:27:18.0373 (UTC)
 FILETIME=[6E258950:01DA9A17]
X-Smtpcorp-Track: duITE8Nrpj2U.3gMVR3KiW9WS._ezWfQiZ6uX
Feedback-ID: 1174574m:1174574aXfMg4B:1174574s5yIPG_of4
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

This property is still in use in the following DT (and it will be removed
in a separate patch series):

- arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
- arch/arm64/boot/dts/freescale/imx8mp-evk.dts
- arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
- arch/arm64/boot/dts/qcom/sa8540p-ride.dts
- arch/arm64/boot/dts/qcom/sa8775p-ride.dts

There is no problem if that property is still used in the DTs above,
since, as seen above, it is a default property of the driver.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Adam Ford <aford173@gmail.com>
---

v3 - Added history in the patch, as well as in the cover-letter.
   - Add "Acked-by: Adam Ford <aford173@gmail.com>".
v2 - This patch is the 2nd version of a previous patch series, where both
     the DTS and the yaml files were included toghether. Then I split this
     1st patch series in two, as suggested by Krzysztof.
   - Add "Acked-by: Krzysztof Kozlowski <krzk@kernel.org>"
v1 - Original version of the patch series, including, in addition to this
     patch, also other five DTS patches, in which the property
     "snps,tx-sched-sp" appeared.

 .../devicetree/bindings/net/snps,dwmac.yaml        | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 15073627c53a..21cc27e75f50 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -328,9 +328,6 @@ properties:
       snps,tx-sched-dwrr:
         type: boolean
         description: Deficit Weighted Round Robin
-      snps,tx-sched-sp:
-        type: boolean
-        description: Strict priority
     allOf:
       - if:
           required:
@@ -339,7 +336,6 @@ properties:
           properties:
             snps,tx-sched-wfq: false
             snps,tx-sched-dwrr: false
-            snps,tx-sched-sp: false
       - if:
           required:
             - snps,tx-sched-wfq
@@ -347,7 +343,6 @@ properties:
           properties:
             snps,tx-sched-wrr: false
             snps,tx-sched-dwrr: false
-            snps,tx-sched-sp: false
       - if:
           required:
             - snps,tx-sched-dwrr
@@ -355,15 +350,6 @@ properties:
           properties:
             snps,tx-sched-wrr: false
             snps,tx-sched-wfq: false
-            snps,tx-sched-sp: false
-      - if:
-          required:
-            - snps,tx-sched-sp
-        then:
-          properties:
-            snps,tx-sched-wrr: false
-            snps,tx-sched-wfq: false
-            snps,tx-sched-dwrr: false
     patternProperties:
       "^queue[0-9]$":
         description: Each subnode represents a queue.
-- 
2.34.1


