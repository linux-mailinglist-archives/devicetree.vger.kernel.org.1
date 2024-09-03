Return-Path: <devicetree+bounces-99412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A276A969AF0
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5B891C23A95
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4540A1C766E;
	Tue,  3 Sep 2024 10:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="lbo7s2Ws"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2303D1DAC66
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 10:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725360792; cv=none; b=kfEoJxi4BjIEktVNC8huBvn7m7dtcrz5hesbkx59g7BOqnncBZPKFmfynif1cUP8kcfoaQ8ZeBcOtjlnwcpn+vIht/Jwn8rYyWvlQ7QzzlkwHl2M0duujSrD98mV3kdbXkD+622K8OnfLmSsvce81I7JYwfZKkYMyHmz3S4CIFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725360792; c=relaxed/simple;
	bh=1IROLD/XbSPdXfs/2xrGX0yxpF04V/zqweAflEeC/OY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EJN10XhNqLwR9R2FQWSIuw0cH+/B8in86R5/npuYlqf/sCE23K0WfGcCkKZ4LYS23WiEKxw6hHN1qzknATRjQn/HpOKqSouUcpL0qNf5U0d7iqxMmriZkVq3ZQaN4dPWko5sb2oVLwqx1o7j3ux/Tseo+GVvDVtTeWOB18kmNLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=lbo7s2Ws; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id lGxos0pQ7VpzplR9psn2Lz; Tue, 03 Sep 2024 10:53:10 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9nsQent0vWTlR9psuT59; Tue, 03 Sep 2024 10:53:09 +0000
X-Authority-Analysis: v=2.4 cv=ffZmyFQF c=1 sm=1 tr=0 ts=66d6ea95
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=ARcrkP6DAAAA:8 a=vU9dKmh3AAAA:8
 a=L4MHaItcyTsGJ2lxC4sA:9 a=HWcd8CIpyGgXnveeQW_Z:22 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=BwUrh3OEJTRjFnN467OIIFRLN9Mzt3dNQvLn8JSBJpI=; b=lbo7s2WslKLYXiYgL2f8BxCRqi
	GWmGdzOJbLzKUHjlBZ/UHlSfaP6l17LSoJIAxhU/0OPj8NJS1opKDBHSqZLyG/l0C+6peasbWEuko
	2Nwzs70RDMXEJQZ/Su99J5NItlALuVetlAGEdEdJ+V9TmE3ucYU1Qp9z9hqqs6oPRJISkRWhct0pZ
	EM/im0bYbDNgbtCuchM1UKNTL53hi5E57zj1vrLCeo5klTCiLWvezyFqbuSXmZl76Q2apne7x3khw
	LFnyc1xEWHUuay5hBq0QcdVTGc3as9nMCUZRzZ9WYNIf3qP73/uojyBtJyF6DuQWeMnfC0SAev/OB
	7P/Z+ETA==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9m-000Elu-17;
	Tue, 03 Sep 2024 16:23:06 +0530
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
Subject: [PATCH v2 6/8] dt-bindings: vendor-prefixes: Add Relfor labs
Date: Tue,  3 Sep 2024 16:22:43 +0530
Message-Id: <20240903105245.715899-7-karthikeyan@linumiz.com>
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
X-Exim-ID: 1slR9m-000Elu-17
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 66
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPpCiyWjAzLQu2x5Hvi6+U6D9lPkPcKXPELV7lXqW4V0GrA2oFcvv6xZVcH8Wdcp6VI8pPr5QLda7eyGVFNKYwC+p8VsMew3N6aP+x4AiBEwhSyVxNe6
 jx2rnrQr5xuQos+ZLGj18sWFrHYuHwWnkqTJ/tuFGtlshYBdp45yKcjJmNkVwVEqqQtV/f/5MxnaXSnUNQsqVjmjtntrPgKGhRg=

Add Relfor Labs Pvt. Ltd. vendor prefixes
https://www.relfor.com/

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - No change

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a70ce43b3dc0..7d10ac7d6800 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1220,6 +1220,8 @@ patternProperties:
     description: Unisoc Communications, Inc.
   "^realtek,.*":
     description: Realtek Semiconductor Corp.
+  "^relfor,.*":
+    description: Relfor Labs Pvt. Ltd.
   "^remarkable,.*":
     description: reMarkable AS
   "^renesas,.*":
-- 
2.39.2


