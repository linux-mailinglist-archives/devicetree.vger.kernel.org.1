Return-Path: <devicetree+bounces-215528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB77DB51C8B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:54:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25B27188BB2D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1B68327A3E;
	Wed, 10 Sep 2025 15:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="pELyqHuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19514327A25
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519595; cv=none; b=jeNIk3rglPDKdlumv8yIk0w14C0XHv4Wx5gXV8mfe//Fzx0m2oWSSFm2uSawEpAf40iN3v0+iKD2yplRKNmicE4/IyjsVMcZltZ7Tsu1Zzpr2YNS1m2ota70+hZPqOvMUM7vB1M477HTGnTll180dvukqIufjXOzO60kPOk6c1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519595; c=relaxed/simple;
	bh=ffk/C2QJczDr3kJpOxazLyS33jTXUPbjo0woE+gR1QU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mif0rPyLD9mgoJMueA1k3sICb/9319kbIsGV+JCqVPyr51T17AorthypUfVYjn7Pw+keoeHYW4mr+piqG5TwL9bv/rM+U+/pBD2e1287GZCJs5WJFK5hbSmzv1nUr9hKT7f/rnVk04801ccoV+/zvHeTeZPWK3kW3iGxuuisCVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=pELyqHuJ; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from macholda.lan (unknown [IPv6:2001:1488:fffe:6220:172f:2c63:54a0:e850])
	by mail.nic.cz (Postfix) with ESMTPSA id 3F0FE1C0390;
	Wed, 10 Sep 2025 17:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757519267;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xaijd8hccqXWxhqJSe73hWvYJAmmUrkcUVuNY1EW4hQ=;
	b=pELyqHuJ4bYles5bLRB7f+gfzTgZcPfA3mr6PxgaH4YG1E0N8YUDS/bQnO9Mh3/XBZe4Wr
	TKOXsT5N0bmDdM3a70j6bx+bb1LEWeuQQHOTPrJKJE4WSV3gNBDKSmj8Gjsg0K9q9d5xll
	9XoDD0UWRgB5XN0G2meDTNSXoO3A6qY=
Authentication-Results: mail.nic.cz;
	auth=pass smtp.auth=tomas.macholda@nic.cz smtp.mailfrom=tomas.macholda@nic.cz
From: =?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
To: Gregory Clement <gregory.clement@bootlin.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	kabel@kernel.org,
	=?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
Subject: [PATCH 1/2] dt-bindings: marvell: armada-37xx: add cznic,ripe-atlas compatible
Date: Wed, 10 Sep 2025 17:47:33 +0200
Message-ID: <20250910154734.24686-2-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250910154734.24686-1-tomas.macholda@nic.cz>
References: <20250910154734.24686-1-tomas.macholda@nic.cz>
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
X-Rspamd-Queue-Id: 3F0FE1C0390
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.10 / 16.00];
	MIME_GOOD(-0.10)[text/plain];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:172f:2c63:54a0:e850];
	MIME_TRACE(0.00)[0:+];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt]
X-Rspamd-Server: mail

Document compatible for RIPE Atlas Probe v5.

Signed-off-by: Tomáš Macholda <tomas.macholda@nic.cz>
---
 Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
index 51e1386f0e01..28fc750c72b2 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
@@ -17,6 +17,7 @@ properties:
       - description: Armada 3720 SoC boards
         items:
           - enum:
+              - cznic,ripe-atlas
               - cznic,turris-mox
               - glinet,gl-mv1000
               - globalscale,espressobin
-- 
2.47.3


