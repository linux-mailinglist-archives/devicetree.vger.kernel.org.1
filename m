Return-Path: <devicetree+bounces-216076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12AB538D8
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:13:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FC563A9353
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E4B353376;
	Thu, 11 Sep 2025 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="s8drBUNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEB2343D6C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757607208; cv=none; b=Zlws8JMg5VRBajkfjY9YNzoG7w0WpPuHjEwG/Sac6T90fXHZA9DnJp5O8d5RWnzjb0q+PYh0wXOHD8P0kRZsfqJsA/9Sryer+bezV8oT0EsOqm5XLD3Ys5l2w0HVtSnsC9jWJoc/sdn1M3WdMXcBSopsi+I+aou+g7+k8MdTs3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757607208; c=relaxed/simple;
	bh=VvYXSRygoGUDa7MGeVOsYhGPYHSyWopOqbsex2OZbhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aeEzJLZkuRm+qIJTC+wwO3bxi+J7+/U0tDKJSqUgrKx64v/n2uHRu4OS1RFHg8TaDYFxF0gS1oWuFNsj/Pa8UI6ytJNUFsms4Td7FVwXQCpW3sNGd3I2JHdhosnsgzJhwTtsXEO6zI0ySR0DQJAMFuQgEmHdOOq9wd9aKID5aPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=s8drBUNR; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from localhost.localdomain (unknown [IPv6:2001:1488:fffe:6220:c8a4:e06:31cb:d419])
	by mail.nic.cz (Postfix) with ESMTPSA id 0239D1C1087;
	Thu, 11 Sep 2025 18:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757607199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=utZgvaxYqFMnYfraIeeg7bF4qeMIQAuhrBq+YC/cjGU=;
	b=s8drBUNRCjXMBbLpoNNAvAUCpPJAbQLWuzca3g573fZxlaVo6+crfHSuHmgI05fiHYir/c
	4F5UCUvFqXu6ItYETdH1ieq65mEdOG7jAbeQ4HlEcmHGAyE1evF29Wh5DDAXlkpkvxWYj7
	m34C/nLb9UIvJqlRRlzGPH9LUGwc3aQ=
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
Subject: [PATCH v3 1/2] dt-bindings: marvell: armada-37xx: add ripe,atlas-v5 compatible
Date: Thu, 11 Sep 2025 18:13:07 +0200
Message-ID: <20250911161308.52876-2-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250911161308.52876-1-tomas.macholda@nic.cz>
References: <20250911161308.52876-1-tomas.macholda@nic.cz>
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
X-Rspamd-Queue-Id: 0239D1C1087
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.49 / 16.00];
	R_MIXED_CHARSET(0.59)[subject];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:c8a4:e06:31cb:d419];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]
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


