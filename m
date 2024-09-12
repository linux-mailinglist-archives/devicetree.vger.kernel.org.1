Return-Path: <devicetree+bounces-102367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF7D976BFA
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2002284631
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9FEA1B9825;
	Thu, 12 Sep 2024 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="I/YOQA9M"
X-Original-To: devicetree@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADC1AD266
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726151178; cv=none; b=oK0THKc/deNXEui1fCrRvG7d+Wl7nIFoBh+iWoLmMC1rtFgEWt00B39ahtCeFukSMgXyHXAZbZaag/94+/ad7lNF9cdokAujUxc6yWcbOrV/FYzD9DiSuMWY3tqVVuyK4ke/7nocs8EpKLCWQlerERnsGf94d2RZSkYWho51JHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726151178; c=relaxed/simple;
	bh=HpkcJn+qbtAohbvmrgu4Rf5xO2IU/S5nQS069BoQSI4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Pt67u3h5iPvHPBknFbX1SBvh4rFJXqaOsUJyCXcuEsPXvC3mxHS9elZKul4woiyVQYgPzJEXTbl3L6YJ4pOtD6Bf+9UgFPU6v6tTsu96kuVfu3OoV97mPlyFbeZoxXeti5HRpLnXZta1q6pE73dc2G8tV9pL6Po06/8Cp3093Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=I/YOQA9M; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id ohYtsClSBvH7lokm0snDXx; Thu, 12 Sep 2024 14:26:16 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id oklysY9Gvz2cCoklzsxpSB; Thu, 12 Sep 2024 14:26:16 +0000
X-Authority-Analysis: v=2.4 cv=Dd4RqOtW c=1 sm=1 tr=0 ts=66e2fa08
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=_vxgr4zIZx27vdRyEIkA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=IJbCpjR15TcWvFC+DPqDRtsS9ZjW3RoOWItYzzC3tRE=; b=I/YOQA9MfrdgiWwj/igdnBlEad
	gR2ZdKlRDWJur+9+ZUpZnC74IOryoVk5ZafJE9JE6rmo187YqqgSjmEgRjg12rVyfyWtsrBtB7IG9
	aQNTOrhLv8xV3rvSl1CgxsNayoc7Ar6nCx1dPt625UylawQ3bGrLiAthGoVgTx1vEp3Yoz4xEVlxF
	A/9HiI0A+s9wW0AypynRS9V+W5xlMWWRIVMM69slv37BWvRKrRm4SYL7veHFyjzI1oRQZYlGUICai
	G7R9Ydzbx1BFGj32+YYK2VuCK2r2/tk3P6Cg3xN9KVo68sdm/EHdmDjriA4URZ8I+YQfzr1f/XWq+
	yveJcwyg==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1soklw-003n4z-1f;
	Thu, 12 Sep 2024 19:56:12 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt string
Date: Thu, 12 Sep 2024 19:54:46 +0530
Message-Id: <20240912142451.2952633-2-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240912142451.2952633-1-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1soklw-003n4z-1f
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 18
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBClhSg36Hcwn5up8iU8z6ezsdK+O67wLe+qJYxLizNyAPrgimfEiTzz7DoCltPjrfpy8ub5KdnRItBc5L8h2Wl7bW5z991IYhSMmg2nQ8eSuacVTMoy
 t4Vs0PFvUyJrCUnvfjFfNsC2bO3bkxLA3LvXy4Cctp1xFUfZ4Lq2GScK/6tlt7OUdp4ic4ZcKeY+lEE7c+Wt2Orq0i2DLvnuAvU=

Add rockchip,rv1126-wdt compatible string.

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v3:
    - add watchdog compatible string

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index c7aab0418a32..bccd27a1e470 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -31,6 +31,7 @@ properties:
               - rockchip,rk3568-wdt
               - rockchip,rk3588-wdt
               - rockchip,rv1108-wdt
+              - rockchip,rv1126-wdt
           - const: snps,dw-wdt
 
   reg:
-- 
2.39.2


