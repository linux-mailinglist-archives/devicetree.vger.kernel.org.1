Return-Path: <devicetree+bounces-288914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJcOEdno5mlx1wEAu9opvQ
	(envelope-from <devicetree+bounces-288914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 05:02:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D6D435A8D
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 05:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49692300F15E
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 03:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEAE330B2E;
	Tue, 21 Apr 2026 03:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="gW4q8BPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3280.qiye.163.com (mail-m3280.qiye.163.com [220.197.32.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2266B3164DF;
	Tue, 21 Apr 2026 03:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776740563; cv=none; b=lb3mTcA7AvPyjmKm1Eq65RXk/1c36aLANtaxrvN1W7OnXPDolypw1FXinyiYbP6qNngL/SdMlsaHhFv90smIDn3g5W4WOR6Ll1TM+WXudOrmeyedZfNypHCqyms7eqHn46fOIMgcPrwGN/NKYoeBhdT2abMy0lm+eO1axPiCWag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776740563; c=relaxed/simple;
	bh=5ASECufuNR9KeopW7BhPuMtxGo0A04X0+3vH/tPdyEc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=tQrObLPVnirMwElOQ4PKtJ6FdkkGtz1OYRnjPfvN4NZr/KiSF4/zV+ysSvSurzQkdg7QcPe8lB6h9b+aRfb2m2DFE9VmK3HhwZo9qut5VkreJx9BhaAaZ8+bKAwq5AQ/BmnxODtml2D7vWa6y9on95tlOWshUhGWGvyFaPQwRDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=gW4q8BPP; arc=none smtp.client-ip=220.197.32.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3b7d2084d;
	Tue, 21 Apr 2026 10:46:59 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Add cap-aggressive-pm support
Date: Tue, 21 Apr 2026 10:46:47 +0800
Message-Id: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9dadef11f109cckunme87b03509c02b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHhlMVhpCH0oaT09LS0pOQlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0hVSktLVU
	pCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gW4q8BPPTnkzBmL2Gkqg/JNPwCn3eCovO2SyU2N9Egxpv0Py3EgivbV4aXZgYQpGgkZ4Azhs8aeCfYgok3hYjf6FOViEjpvgULQQ0PazW77Am+nGUsxuP6k25fmrYViOX6nNmjgRjWUhu393dqJTPrV5U1mkG54EIAzNX0DH/a4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vsFuk1fsI7/8+FVx/gj8HaiXCuVQtzviX/PAXdoc+Kc=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-288914-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A6D6D435A8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Aggressive power-management is now all-or-nothing set by host drivers.
This should be board-specific, add a new dt property to support adding
it via firmware;



Shawn Lin (2):
  dt-bindings: mmc: Add cap-aggressive-pm property
  mmc: core: Parse property for aggressive power management

 Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml | 5 +++++
 drivers/mmc/core/host.c                                          | 2 ++
 2 files changed, 7 insertions(+)

-- 
2.7.4


