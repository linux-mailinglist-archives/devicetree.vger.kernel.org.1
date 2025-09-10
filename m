Return-Path: <devicetree+bounces-215527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B64B51C81
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48EE6163B08
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81206327A22;
	Wed, 10 Sep 2025 15:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="TB65eaq6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAB7212FA0
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519595; cv=none; b=FZdD+apyDor/UCjQeKbKSrj+o3F0Zx/wyorx3wxbKIrKNLiW3vi3nNRvGVs6z3PKMC4Qtd4wn0DXZcrC/XPtEGLALo1HNspvB/x98fMyR9uMsbyrh9frDnjOMj0eA7H9kMpiK+xkjTMrRMPtK1AK3SiboAYrc9YrBESeRu4xhQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519595; c=relaxed/simple;
	bh=CKo1TybuFV6Sm1wdJIMDS/8yZKlq/73GhC7pzKq08U8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Sh1VtNdfgEpJYhDUCgRbUKlHcvTHqsJYHJLwEpSYw7lTS1Q+5ZpU7V5tvMg5pmNW/wdVg4/uwUxz7xAzFal/7guWGSMXVJN4ehrRxytsnXfM7kPT4Nx+aoNg/Tt8B54Cna2JbEhcbeewJ7DrnCpmQx/YpB83i8IAjKhoPltniYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=TB65eaq6; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from macholda.lan (unknown [IPv6:2001:1488:fffe:6220:172f:2c63:54a0:e850])
	by mail.nic.cz (Postfix) with ESMTPSA id D5C411C036F;
	Wed, 10 Sep 2025 17:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757519267;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FFlI9OTuERKqYca4THo8FMoMn6CHXSbt2umNcFhVvdQ=;
	b=TB65eaq6hNQoyZ8LMVYnxGvI/Iy3uGzqZo8cAc/rvd+44kOQM6lacxphpWtYUOIPjG7DME
	HaV+AkUk2AG3fBJtcKb6+PUxM1USdYp0CmPgu4yyndJXvysM3+ddvcKvUSiWmFdSGW467x
	big8GPRWWhdTzl6XZonO3RHIG5BaXVw=
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
Subject: [PATCH 0/2] Add support for RIPE Atlas Probe v5
Date: Wed, 10 Sep 2025 17:47:32 +0200
Message-ID: <20250910154734.24686-1-tomas.macholda@nic.cz>
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
X-Rspamd-Queue-Id: D5C411C036F
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.67 / 16.00];
	R_MIXED_CHARSET(0.77)[subject];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:172f:2c63:54a0:e850];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Server: mail

This adds support for RIPE Atlas Probe developed by CZ.NIC.

The hardware is based on Turris MOX, however it does not support board
modules.

The first patch adds dt-bindings documentation for cznic,ripe-atlas.

The second patch adds the device tree file.

Tomáš

Tomáš Macholda (2):
  dt-bindings: marvell: armada-37xx: add cznic,ripe-atlas compatible
  arm64: dts: marvell: add dts for RIPE Atlas Probe

 .../bindings/arm/marvell/armada-37xx.yaml     |   1 +
 .../dts/marvell/armada-3720-ripe-atlas.dts    | 111 ++++++++++++++++++
 2 files changed, 112 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts

-- 
2.47.3


