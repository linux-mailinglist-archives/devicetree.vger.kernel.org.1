Return-Path: <devicetree+bounces-56665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 590EA89A11E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:30:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE28E1F217D5
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE25171088;
	Fri,  5 Apr 2024 15:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="jpTRoe/E";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="fhmSuum6"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i57.smtp2go.com (e3i57.smtp2go.com [158.120.84.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E131171069
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712330961; cv=none; b=EtJMTWG5QtmpvBvxCOv/okjl13SpGno17Ofz9BZUedr9ubPIePF1BrHu2Q+VTaBrphBdg+VFb6Xio14ISUm/d1yy1eNgGdiv++z5vEA2ip8f/6qF93cBB78lNIV8y1Z8FMCgz92RA9h1MIMcFG2JInWl2UqIp1mzbPyDCePs2+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712330961; c=relaxed/simple;
	bh=4qwJYpjiE6fWwx3p9TfXqvaGfWov9YXj6SAWVJ99Sgc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=trSiNGTCXdSkisdKWTROXgoApNYuoSSh3N9BmUadbEpAboeO7TGaFiwp4JCRn4bA03Fhh5yj+su8jLvtCHz9KEI0RsjUxgBv/Rlj/Nlk27jdhkAAs6BL8EFWjRqrLUFbdNyRsykP8NmcFRx8CDSGafL0eKHn56TU7NgIXzvpQII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=jpTRoe/E; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=fhmSuum6; arc=none smtp.client-ip=158.120.84.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rslV1-04gIYl-0L;
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
Subject: [PATCH 1/6] dt-bindings: net: snps,dwmac: remove tx-sched-sp property
Date: Fri,  5 Apr 2024 17:27:55 +0200
Message-Id: <20240405152800.638461-2-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 05 Apr 2024 15:29:01.0385 (UTC) FILETIME=[FC3C5B90:01DA876D]
X-smtpcorp-track: 1rs_V104gmY_0L.Eui9jfSRCPL2Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1712330945; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=5jJHGZta+4HpJK5sG35qXkW6G+1lFaAs7ITAMPwZI1s=;
 b=jpTRoe/E1u8WOC/r229oNzu0ZBs4MzTes9GefTgC8DXekurRoC5ksi17HDxfyzjcC+B9y
 92sZ2zDv7sfcRHo5xZ7FmzC/E7qvaONtmnpjb8wgqeEcg4zSe7uMKtwfNx8+Pl92GOiHzPU
 kf33VL/3Ww6kY+vRRp6gKPhsGIKnA48VfYIdNx/W9+HYShMk6vVUXfXoDMGXW5IQV/Eg6od
 ECTDaLhynCf+pOfw0W4nneC7j0mbWcOdqKvjtEw5Vk+0TLTNQMk0UVnrXbJMSzyXOnb5sJq
 Ix/cXaWd5C0m19cDZxjQ6t/ORpjt0RQEpvPizodUvd6l6EASVZAgTwOZNSAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1712330945; h=from : subject : to
 : message-id : date; bh=5jJHGZta+4HpJK5sG35qXkW6G+1lFaAs7ITAMPwZI1s=;
 b=fhmSuum6yhYoJkeXaXDgAHrW3n0Z3+z2gCzLTZ94UiJGLaoHjNtuwNX6wJ0wz5ENmol1c
 XJQ8XcxDOAfVDKHK8O0ksGmMolXq3kI+VDALb4LT8Iw1dUTqrGvD39l1GhHrjmR/sPRjUcd
 92LnFHI3acUgiIy0sOzR5SqD8+1ypMnBGE8qMKfzVtkUXfrymXsUka6u01x+1tL4jVgI1U1
 QPnJg1mSI65PniEw2d1Z3Fm9TtOmMWt9PF/yyjjCtOHARu7QDGW9/9Nh5G9wVlPAJI3tHiJ
 UwKMyJ/5VbDAtfnUCTMpPsAwmIN8oY0O1ammr0bCzttJ2o7QGHPpEPmmKrLw==

The property "tx-sched-sp" no longer exists, as it was removed from the
file:

drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c

by the commit:

commit aed6864035b1 ("net: stmmac: platform: Delete a redundant condition
branch")

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
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


