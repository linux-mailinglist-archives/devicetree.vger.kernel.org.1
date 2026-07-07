Return-Path: <devicetree+bounces-322360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s+LJMAVuTWq2zwEAu9opvQ
	(envelope-from <devicetree+bounces-322360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 23:22:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D95071FBCF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 23:22:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nic.cz header.s=default header.b=eUqwuUDy;
	dmarc=pass (policy=reject) header.from=nic.cz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322360-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322360-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C6A03050A60
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 21:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD0A340260;
	Tue,  7 Jul 2026 21:18:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7D8331ED4
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 21:18:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783459096; cv=none; b=sLaaNeLppPsi8inzrzoOtptGLi6BBUebf6fbZe3v2V/JNZF/8uEmKF2aYOtekwhd/zBB+eZcmz7kUeNXZdbMNuwCKRktBEF3r6cpKUlW5I1niTcIdjrXeyhw5kUNuAmr1DqSXsTzs+UnJsfcDsSOEWYuMjV1ROsKXspbnoOeuZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783459096; c=relaxed/simple;
	bh=yxrolRGXwJlUdx6oC/k5Rv6p45cyOZtvvdNQ1o234bY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TL5uIfEBlXqchJPLm12Rrdh0wVRdRqUU/f7oBuQoyQHzSPwve7ZbzlN6fathoFC9sea+5xk+nuFt/2LX7VPfvbuuLK/2j2LcRtqm7NSPP+eCuY7UUT5oiZfYVvHVuuwQH/3RfMQhQYslJIoopjOrEYFGLQTqnUWOXv2loqXEt2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=eUqwuUDy; arc=none smtp.client-ip=217.31.204.67
Received: from sil.horo (n1-65-243.nat.suchdol.net [89.22.65.243])
	by mail.nic.cz (Postfix) with ESMTPSA id 85DD41C061A;
	Tue,  7 Jul 2026 23:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1783458512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+9xNDgwRjoYynAhldZbYuclfEP/ZyuKBV2opsp2eP7s=;
	b=eUqwuUDyhoIdF5E54+lKVoeiRidwSl/ZSwD/nrlWr5gToBFyqD08PVFAzp3sXVyGHvVDvs
	hGvzLjrBfO6cCe+ixkmkWIVj0tfysgZaw7aqyIuzoPqBsWhzAfWQZW0VtGKCUHHrWMF3RB
	gsuwcsF4Bhzr9L9ZShiyG0QA0ke1OLk=
From: =?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
To: Gregory Clement <gregory.clement@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
Subject: [PATCH mvebu-dt64] arm64: dts: turris-mox: fix usb3 phys
Date: Tue,  7 Jul 2026 23:08:29 +0200
Message-ID: <20260707210830.3708-1-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: +++
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.11 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[nic.cz,reject];
	R_DKIM_ALLOW(-0.20)[nic.cz:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322360-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bootlin.com,lunn.ch,gmail.com];
	FORGED_RECIPIENTS(0.00)[m:gregory.clement@bootlin.com,m:andrew@lunn.ch,m:sebastian.hesselbarth@gmail.com,m:kabel@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:tomas.macholda@nic.cz,m:sebastianhesselbarth@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tomas.macholda@nic.cz,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomas.macholda@nic.cz,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nic.cz:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D95071FBCF

After commit 00e6d608fe80b0f6 ("arm64: dts: marvell: armada-37xx: swap
PHYs' order in USB3 controller node") swapped USB3 PHY order, USB
initialization breaks on Turris MOX.

This regression was exposed by commit 91ddf6f722084383 ("phy: marvell:
mvebu-a3700-utmi: fix incorrect USB2_PHY_CTRL register access") which
made USB2 devices not work at all.

Fix the issue by explicitly adding all USB3 PHYs and PHY names to
Turris MOX device-tree.

Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")
Signed-off-by: Tomáš Macholda <tomas.macholda@nic.cz>
---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index f4d73c8b1a6d..bd00e7df87c6 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -290,7 +290,8 @@ connector {
 
 &usb3 {
 	status = "okay";
-	phys = <&comphy2 0>;
+	phys = <&usb2_utmi_otg_phy>, <&comphy2 0>;
+	phy-names = "usb2-phy", "usb3-phy";
 };
 
 &mdio {
-- 
2.54.0


