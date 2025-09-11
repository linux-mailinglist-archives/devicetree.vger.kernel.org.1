Return-Path: <devicetree+bounces-216074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 070BEB538D9
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B271016EBA9
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB13352FC2;
	Thu, 11 Sep 2025 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="mYgU/dQA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE0D33EB0D
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757607208; cv=none; b=Q/RoJDc6nSCYSWoCheBWdtYgHOz3sJfmHwdDSTeUfwK26Ac1TiAafZtHLtk0eAWdzgMQGnVZ7ramQLiaZmvcZcSyff4y+2uWb6X6ry2+BqvwLg2sECaQU7uI8oYiZt7piubS8cFUEbE0rLCoAk2Ai+rm6Y5vrveEyFA58Xh0vPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757607208; c=relaxed/simple;
	bh=wvpKanepL6NeWeH2j6MgjfZe56zzgU7p4MkR3Tk41w8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qeoaXJV/dFSfXO44Ak3nt+kPD385qnCC3dxE29+LDZt4k8CPqrP6pVu8632Ur4JL0CB0YfKiu0YyqYWoVJxZAIC5C3trB9t28reJNOEC7H9iAXZNzPTi+S6/3jXImztDBYsu7i3nahqMsDuKFSKO5u5pq21AKiLmb09x2eXeaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=mYgU/dQA; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from localhost.localdomain (unknown [IPv6:2001:1488:fffe:6220:c8a4:e06:31cb:d419])
	by mail.nic.cz (Postfix) with ESMTPSA id A75B41C101C;
	Thu, 11 Sep 2025 18:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757607198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Tv4lS2foRZaFqjOD0hYpJBiFCPSfGcp3Ev2ebPyWa+c=;
	b=mYgU/dQAjy5a06K5padwNKBx99hy/pc2XQBd19EDkodnU89ZhQ55O3QSe2HFh5bLJnO+70
	pm61fWXPWElIWsQi/8tfiL8PhmI+HpiBFfhMygUgFu9HhaKjY/Y9IBYgZAa/rV/tyo8kwG
	WX7lBZXY4jJ6RihpvF5DjFfY2IOS/Sk=
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
Subject: [PATCH v3 0/2] Add support for RIPE Atlas Probe v5
Date: Thu, 11 Sep 2025 18:13:06 +0200
Message-ID: <20250911161308.52876-1-tomas.macholda@nic.cz>
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
X-Rspamd-Queue-Id: A75B41C101C
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.61 / 16.00];
	R_MIXED_CHARSET(0.71)[subject];
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

This version changes: armada-3720-ripe-atlas.dts -> armada-3720-atlas-v5.dts

Adds support for RIPE Atlas Probe v5. 

The hardware is based on Turris MOX, without support for extending with
board modules.

- The first patch adds dt-bindings documentation for ripe,atlas-v5.
- The second patch adds the device tree file.

Tomáš

Tomáš Macholda (2):
  dt-bindings: marvell: armada-37xx: add ripe,atlas-v5 compatible
  arm64: dts: marvell: add dts for RIPE Atlas Probe v5

 .../bindings/arm/marvell/armada-37xx.yaml     |   1 +
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../boot/dts/marvell/armada-3720-atlas-v5.dts | 110 ++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts

-- 
2.47.3


