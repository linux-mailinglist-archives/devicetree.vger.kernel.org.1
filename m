Return-Path: <devicetree+bounces-99413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA99969AF4
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0290B22E3E
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997243DABF1;
	Tue,  3 Sep 2024 10:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="F0GckXGj"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C5E21C162
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 10:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725360793; cv=none; b=VN7webBxVx3oRdZrChU/uJoOXKddtalD1r8qRbdCn2PdURSOHEhmj5OtC1pyLhgJvnsyKsbGG8p6C7WtlEhdpS7/TmtcFwtV3We8KPC51MBIMgvND+/k1k1op9Y25Vz8APobna9gb0VaTwpX/8KtT2MxUBFZCgXixxSbQn+ASU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725360793; c=relaxed/simple;
	bh=SgPga/d86Gm2VyyGjtz7WzQyqiIRR5zs43Xg3j1NRqQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=En2+XUv69lYnI3j1+T8HCJH367VifKxXy/W5jO878PU3CU2KP1Mr7WINRSldqzpppeJpBBVjiUX/sKQZlCJPlbi25eVcSKLl3FzhwSCWc/kuXy4/Xi3kWTxQqHZ0c2x5Fk8ZdB6hzvsNv8cylsczb/ah/scEAJoXRDnvG7t87GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=F0GckXGj; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id l6JMsyfFxVpzplR9rsn2Mb; Tue, 03 Sep 2024 10:53:11 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9ps5YviLxPQlR9qsSBK0; Tue, 03 Sep 2024 10:53:11 +0000
X-Authority-Analysis: v=2.4 cv=Fq4D/Xrq c=1 sm=1 tr=0 ts=66d6ea97
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=7OYjvGxe6aps89qF7tkA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=PAMyEJR5pOPxI5Asmm0hE30XD1Dj2/A0rZvF2cKurUY=; b=F0GckXGjjqs2/oWFghEYepfzkb
	G9xaeaUxss6pXFoWtHEgBX31j/rE+RhsfgxlSP8a6SXmzfom2WHkKuTGP9BAXoxKxDzc50Ffb/rI2
	mpCe72cXud+OFetv2eWMSHgw7ghNTkRtTg5Myyo4sj/TU7vgYmFdwfIUbgKG0sUkf4Mpzx0l2sM4X
	oCUt8fLEldkTHCfe8C+8CxFVcRq5VV9/baq6q9fh581D5nMkdL13Jz85QFImIJQ+PQrknEDWYNgPK
	pJ1eOWzfZNVObUMWtTK8GW9NSR5QHdlOAJv2PkzoFAODYzgg6iQdx7qi/NVY2DG81ggQiYPuT4YiD
	73XwK52w==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9n-000Elu-2Z;
	Tue, 03 Sep 2024 16:23:07 +0530
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
Subject: [PATCH v2 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
Date: Tue,  3 Sep 2024 16:22:44 +0530
Message-Id: <20240903105245.715899-8-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
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
X-Exim-ID: 1slR9n-000Elu-2Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 76
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGXPSfy6hZ/Gqog5VXTbnNPlHJkvLthcpf0Yv36006sxsTzrpISxqqgygvZfUl4qxnPQrFIFJcRnCPNpfyjw8DJITic7jqQU94NfMIyAtSsc9H6fn8mC
 eY+ruGZ+xezQGCosizMJM2sRJxeu3sQhNpmErsHpwBk95kHnE0l8tK6WIcxwX4AlJv9F53coUtempdhce/ZfpXSHdjVgwxoaPuA=

Add devicetree binding for the Relfor saib board which
is based on Rockchip RV1109

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - fix wrong usage of SoC enum

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..ae5e0104612e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -848,6 +848,11 @@ properties:
               - radxa,zero-3w
           - const: rockchip,rk3566
 
+      - description: Relfor SAIB board
+        items:
+          - const: relfor,saib
+          - const: rockchip,rv1109
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.39.2


