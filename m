Return-Path: <devicetree+bounces-266439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEtfJD+/lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:31:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F402D156AF1
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADB523034DF0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F74E32862F;
	Wed, 18 Feb 2026 13:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="MHXeV1uN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail2.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD911326D73;
	Wed, 18 Feb 2026 13:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421468; cv=none; b=i5NRp8yCS00++g4L18TYb/cA+/A5Y+uRfrXiuPbkhqjFTmcHM9Ei00648vzpTSqxqLPodKUsiT47V7aw3zd3aakzqVWUL4y34A5RkCwZKWHE9h/WlxQB5Q7MLc5ZFZOLr/1a/+Loe2taSx40dr0C8PFHVzyAwMGMdu18ZFY7JuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421468; c=relaxed/simple;
	bh=VqfdmbS/NowLoUF6IELM+UUM8aCTyUTi6eLEIqQdY8I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=irQY6PwwYlEa9LXjZMPU+LDUot9+5lH/yJ1q+xfZdBBgFCLI7xrUHpEGbQH3BzGWWtOvy2PxMAW3rf/SiWMGxXa5sM0sfGYlErzM8WiNO3DWLP57c7TF3iiZvEt2w1TTpBofIkSd/Yi0o118WcI6VBFIesjeVgnAeq8NNFtUp2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=MHXeV1uN; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1771421123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W5XQvr67ppKEv7j8lI1OxJ8VB1al1Zi7HovSXR/21hA=;
	b=MHXeV1uNtdW1YLFHFyT66YlUJwbKIAtBas9rb3Uge3Y2URC+dVIXW5xcVXxUdgUl3IlpD2
	nKFfaPO9Wroqyi7wqUB4ec/m3Nn0w1ZaeZSk3WAtbYR5LBp2Ac+rzMLv9S2jCgTgbydWab
	rMJCxqcq++eXq04ZPs34TtExr99uQMGpuxI5c1RKl9kRlwqFQfiZ1XVzfddFNuMx2MPs2n
	lSn8S0oUNDNwp2VQEMH8/HCREEpOSqZtUO8Jn/YE4d5zpluIuLtWWySgipvpWPwTYS3ZoV
	udpNQ9I0LACTlMsP3wRN8XnOf/FN+SOFqkSNAVSXRAX1tbnQISdib2n3wQRNkQ==
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Annette Kobou <annette.kobou@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH 0/4] Kontron i.MX8MP OSM Devicetree Fixups
Date: Wed, 18 Feb 2026 14:25:04 +0100
Message-ID: <20260218132519.74570-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266439-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kontron.de,gmail.com,pengutronix.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:email,fris.de:mid,fris.de:dkim]
X-Rspamd-Queue-Id: F402D156AF1
X-Rspamd-Action: no action

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This contains three fixes and one cosmetic change for
the Kontron i.MX8MP OSM devices.

Annette Kobou (1):
  arm64: dts: imx8mp-kontron: Fix boot order for PMIC and RTC

Frieder Schrempf (3):
  arm64: dts: imx8mp-kontron: Fix touch reset configuration on DL
    devices
  arm64: dts: imx8mp-kontron: Fix SD card supply on SMARC eval carrier
  arm64: dts: imx8mp-kontron: Use GPIO/IRQ defines in DL devicetree

 .../boot/dts/freescale/imx8mp-kontron-dl.dtso | 26 ++++++++++++++++---
 .../dts/freescale/imx8mp-kontron-osm-s.dtsi   |  6 +++++
 .../imx8mp-kontron-smarc-eval-carrier.dts     |  1 -
 3 files changed, 29 insertions(+), 4 deletions(-)

-- 
2.52.0


