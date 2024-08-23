Return-Path: <devicetree+bounces-96194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4573395D187
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 17:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 795C91C210E0
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 15:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928B8188A3B;
	Fri, 23 Aug 2024 15:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="TL5x0lf3"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237A61891BB
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 15:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724427361; cv=none; b=VG6DWUGy2REbIosAUOmW5+2VHLo9LoO+5B4rNfY4QXmQ+TL3x0EIvQXbAlfFq0LxEJ6fafipTNKkYmjU2AkLbyCuql54o/atoVqH105s3hIPRIHy7qIRsjc/Gz9vEfxr+JV88WrpheKaBJxjR8XJUZvw0nujoeegf0qSTf6f6AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724427361; c=relaxed/simple;
	bh=KhQ906/MDvum52hDYNzfnndzU3tfH8pKxPSR56Z8uZQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OZU3X0dYXtzhxZy11bTZW8h34DoilqV2tgs1I2dxpl4h1p/AJqiDRqGHLlDoG0OcUAgPMagOj3kqECNqxKDBmoP+C8aQvrvER0nnwyyLBwmhAnHm+l6p6717dPAc7QYbu4fzkYo/L9coOC6NxW/SLiWctaUu3U+tr90wk3rFne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=TL5x0lf3; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id hQ9Nss8dVumtXhWKVs8cXN; Fri, 23 Aug 2024 15:35:59 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKTs9A9T0vWThWKUsA3zC; Fri, 23 Aug 2024 15:35:59 +0000
X-Authority-Analysis: v=2.4 cv=ffZmyFQF c=1 sm=1 tr=0 ts=66c8ac5f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=ARcrkP6DAAAA:8 a=vU9dKmh3AAAA:8 a=L4MHaItcyTsGJ2lxC4sA:9
 a=HWcd8CIpyGgXnveeQW_Z:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QVMH6+AQBoL0WKzlVIw6S0+n9yYlQNc8yrm7EGRR5DU=; b=TL5x0lf3UV3Md8RKG8rOeKrkSC
	HUE2BMk3vni1Yg+IeOBy7PIDAOP6cMvpTgWa37CcKfX2syyLTzGIhCf7XC8fbOwsQ4dho2os57gbN
	Y0bkR+cQM7sFIaxEZSu0TSWYGxgQSLEZZt38qBNRPPyUw0hz8m/81oEByy46xbLBgB0GqRHNPduyS
	ZVLIxwIWKZKjm73EFPpWxY/c5WvzHij/dB2LJR40Ngvt8l+/ln5NkJvSqQW1FuVJZ0MFmKQ6rOJRT
	i5IcYovxtKM5EPdQ6Pu+waKingQpS0FMiwqP/VI/tNSY440LL0Dd7tE9Sem143ZRSsodRVOO08FUp
	F/EUtKGA==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKR-000GB4-2H;
	Fri, 23 Aug 2024 21:05:55 +0530
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
Subject: [PATCH 6/8] dt-bindings: vendor-prefixes: Add Relfor labs
Date: Fri, 23 Aug 2024 21:05:26 +0530
Message-Id: <20240823153528.3863993-7-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
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
X-Exim-ID: 1shWKR-000GB4-2H
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 65
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKgBlM2axF/5HOyQtw0f6h/ZjcuRebbxRUZWFC0f0VTyt+YHgZ+Nm3ZpW732jdUDl2rHjIHR3LttP2OJqdCC98vjlbOxY4Gi0zizjmKaM5fQFbox8pS8
 5beWcz584bv3YRxpNUuW70ljUYAY2ryYPZHGPv7yzq9JC8lUKGgywL+v3++Oon0pivq6PbfqXBeKpZfyF6QvTBXOsrB0x3ljdqk=

Add Relfor Labs Pvt. Ltd. vendor prefixes
https://www.relfor.com/

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
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


