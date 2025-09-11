Return-Path: <devicetree+bounces-215997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AF7B53648
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C731B61827
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410F833EAED;
	Thu, 11 Sep 2025 14:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="jpH90/io"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1078D32ED3E
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602213; cv=none; b=cHmJkwSf57oITupzO17xhFmmSFcaI9ywdy+yophmtTqpJbxR6oJfhpgXapL2WPxA3O4Z90pJlHw2yP/eGmt6jL9V5NpZAbmsSk9OgXzTU78LY/lsaA2XNG/mXdSXwAVQ+h64nLK5HDIzL6y9BYdUbJtSWTkfHmrcP0d39VCGqlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602213; c=relaxed/simple;
	bh=FmmOAqfY6jWFjrAzhVfk9EF6Ui1tUAZWGwtml+AOVlw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=U8o0EME1+vjb8UBAAbRRUcpoKOid7RHKIWjWe5AO6oDRIqpTX9fzooF6mDvCnR7raqO74O6D8Am2CZlfmrSweYC0Kc4CXEei7Zi9X9cw1pPRfgpCu5r9UtmRvfrJsjmnaZVXVoAgdoAYklab4CbwwlbLHRTxvDUpG2W3Km3pnG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=jpH90/io; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from localhost.localdomain (unknown [IPv6:2001:1488:fffe:6220:c8a4:e06:31cb:d419])
	by mail.nic.cz (Postfix) with ESMTPSA id A89CB1C1087;
	Thu, 11 Sep 2025 16:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757602208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7ckXTMkQFG2f4F58xaG7TlKzFSnClmd4KDdj+2pOa+o=;
	b=jpH90/iopMqZnkfM4gJHkK+QC4Wi/G7ONhotwaavKwXkuws9bkqGJ8BiPQVRPxjrgagbDG
	iFYVPYoER9sDsCIkroFsfgbO5fXyd6izH9Wm0Cl4XMmD6ON+w+PCa69Dy//a9mEtXxiI0Q
	p5O7h6RFHX6MviwGjgUAKu9F0myIiKU=
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
Subject: [PATCH v2 0/2] Add support for RIPE Atlas Probe v5
Date: Thu, 11 Sep 2025 16:49:37 +0200
Message-ID: <20250911144939.49999-1-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
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
X-Rspamd-Queue-Id: A89CB1C1087
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.61 / 16.00];
	R_MIXED_CHARSET(0.71)[subject];
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

Same as the previous version, only with changed labels, and dts added to
Makefile.

Adds support for RIPE Atlas Probe v5.

The hardware is based on Turris MOX, without support for extending with
board modules.

- The first patch adds dt-bindings documentation for ripe,atlas-v5.
- The second patch adds the device tree file.

Tomáš


Tomáš Macholda (2):
  dt-bindings: marvell: armada-37xx: add cznic,ripe-atlas compatible
  arm64: dts: marvell: add dts for RIPE Atlas Probe v5

 .../bindings/arm/marvell/armada-37xx.yaml     |   1 +
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/armada-3720-ripe-atlas.dts    | 110 ++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts

-- 
2.47.3


