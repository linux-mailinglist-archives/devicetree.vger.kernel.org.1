Return-Path: <devicetree+bounces-215998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 441C0B53646
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03588162690
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A987432ED3E;
	Thu, 11 Sep 2025 14:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="dgiq+xum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AE133769B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602213; cv=none; b=aTHisdNeLUU3GKwzCdr4n4wSZEEua/VKzq6s0jwRc8g/u/Jg2yVNI8ma9om1WJ1wjel5TeVsvM4F3TUgbRiPCBdGyulqXu7psgsLHCCAOaxvBEi7WNYxgJZLZBZNEhFuB4T68gJJST4bvYy1Nw0W2pCAEalNGajKJGSoqZMKyxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602213; c=relaxed/simple;
	bh=VvYXSRygoGUDa7MGeVOsYhGPYHSyWopOqbsex2OZbhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=esz3dXeOjfbpXUi0JCDHcX4hgKU1uzvyVCs7HSYXMBdCyNm2Hx02kp66FTIvaEjTt1MBpHhwCF4a8b+SRpngxXIpGBnyQr8o4a9gAAT8c5E0TEGKdrnNG5bmmtNF0bYSUrzh2OTMptK2y6sYWp/GgNfMklV6Asf/Pq5FRr82kBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=dgiq+xum; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from localhost.localdomain (unknown [IPv6:2001:1488:fffe:6220:c8a4:e06:31cb:d419])
	by mail.nic.cz (Postfix) with ESMTPSA id 1726D1C116E;
	Thu, 11 Sep 2025 16:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757602209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=utZgvaxYqFMnYfraIeeg7bF4qeMIQAuhrBq+YC/cjGU=;
	b=dgiq+xumg1ouIBkQ7MyWFVqKEYj0lxG/wFocqc6MQ18TVwe/grRvp8c5fRGxFisFRPVJK8
	HHKBSbvUVnHV58zUeqEIV6pteGNrXmf4hkq21Us+GMOewchVApkKceh6Y1gsx+0wLBXrc9
	O/BU7vp2b10XiAanEL/Ql/UZse5DcZI=
Authentication-Results: mail.nic.cz;
	auth=pass smtp.auth=tomas.macholda@nic.cz smtp.mailfrom=tomas.macholda@nic.cz
From: =?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
To: gregory.clement@bootlin.com
Cc: devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	kabel@kernel.org,
	michal.hrusecky@nic.cz,
	=?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
Subject: [PATCH v2 1/2] dt-bindings: marvell: armada-37xx: add cznic,ripe-atlas compatible
Date: Thu, 11 Sep 2025 16:49:38 +0200
Message-ID: <20250911144939.49999-2-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250911144939.49999-1-tomas.macholda@nic.cz>
References: <20250911144939.49999-1-tomas.macholda@nic.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Rspamd-Pre-Result: action=no action;
	module=multimap;
	Matched map: WHITELISTED_IP
X-Rspamd-Queue-Id: 1726D1C116E
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.49 / 16.00];
	R_MIXED_CHARSET(0.59)[subject];
	MIME_GOOD(-0.10)[text/plain];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:c8a4:e06:31cb:d419];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt]
X-Rspamd-Server: mail

Document compatible for RIPE Atlas Probe v5.

Signed-off-by: Tomáš Macholda <tomas.macholda@nic.cz>
---
 Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
index 51e1386f0e01..b2f4fe81b97c 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
@@ -23,6 +23,7 @@ properties:
               - marvell,armada-3720-db
               - methode,edpu
               - methode,udpu
+              - ripe,atlas-v5
           - const: marvell,armada3720
           - const: marvell,armada3710
 
-- 
2.47.3


