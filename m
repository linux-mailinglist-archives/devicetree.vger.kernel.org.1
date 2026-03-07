Return-Path: <devicetree+bounces-272519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HnBMN2mrGkZsQEAu9opvQ
	(envelope-from <devicetree+bounces-272519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 23:29:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A741822DD63
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 23:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E88EB300D0DC
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 22:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C9B37E319;
	Sat,  7 Mar 2026 22:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flordal.net header.i=@flordal.net header.b="wQKDI2aL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-06.mail-europe.com (mail-06.mail-europe.com [85.9.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C74376BC4
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 22:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.9.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772922581; cv=none; b=J/MTcQLxqay+wn85Ck49PYdqknFRRUNlXXXhaTw35b6noLdMci9s2PV0IYHZsdxToJlLjhJgrjx1NM4JN8c9xeqcGZNmOZojY3tXZBk5Qemue3j5tB8vkn7BD7846PMsejvlgcEo/iwfK8J+DCwqfgsfp3HCWDxCZhY3N1DJ28Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772922581; c=relaxed/simple;
	bh=ww15vaTJjdZ7MrV/BXZpR/uprbDnj+9QEvykXyyCvbo=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=izMBD5Z6L8AHGmiKXv4f/cryGSfNNnKbwIXACMuiieB3Fss16PKBnpKx20lV9N17o9mxgweOcq4WXjqhQU/h5pvPCj0lKKldkjlNDmdms/xrIwkjf7Z1h2Ki7+2bCS/GsxxExnznPbjaag1Ehv37lMLfLYmyh5mLIIK/krMgb4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flordal.net; spf=pass smtp.mailfrom=flordal.net; dkim=pass (2048-bit key) header.d=flordal.net header.i=@flordal.net header.b=wQKDI2aL; arc=none smtp.client-ip=85.9.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flordal.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flordal.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flordal.net;
	s=protonmail; t=1772922562; x=1773181762;
	bh=ww15vaTJjdZ7MrV/BXZpR/uprbDnj+9QEvykXyyCvbo=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=wQKDI2aLIaPjAENuzYajsCNO+yQsG0RO9Jv0tNEXkcUldxfkYXaPTowrzziI8z+C8
	 JGPoSynx1T/tfCxMLmb+RHiKBYakgLvBf4/A+QFqMzCZyRDnFCQM1i43FGDNtEKJfX
	 v09yqnphxPan7UCn56A4kPeJeTiiuRxq/R3jQCtbC1OZy3q+fN7FuFDMPqN18a0Iv+
	 pyXsD2wKss7nyoH/k2/P2v93I0erGYoJAAACfxY6kRLiLHEBqIQ5twYXceCysPOBOR
	 8ncvifYcva65FuV0zJ/58w8O5SErSqOowoL+2/GNbwzfPxHR18dMe5f8dHnzuhMlPh
	 zTB3OhpeOYrkw==
Date: Sat, 07 Mar 2026 22:29:17 +0000
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
From: Axel Flordal <axel@flordal.net>
Subject: [PATCH] arm64: dts: apple: fix spelling error
Message-ID: <2838895.vuYhMxLoTh@fedora>
Feedback-ID: 166586150:user:proton
X-Pm-Message-ID: 9ac85a73064bd3323c4451d6f38cf526ec28ef2f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A741822DD63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[flordal.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[flordal.net:s=protonmail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272519-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axel@flordal.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flordal.net:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flordal.net:dkim,flordal.net:email]
X-Rspamd-Action: no action

Change "configiguration" to "configuration".

Signed-off-by: Axel Flordal <axel@flordal.net>
---
 arch/arm64/boot/dts/apple/spi1-nvram.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/apple/spi1-nvram.dtsi b/arch/arm64/boot/dt=
s/apple/spi1-nvram.dtsi
index 9740fbf200f0..d2720b307774 100644
--- a/arch/arm64/boot/dts/apple/spi1-nvram.dtsi
+++ b/arch/arm64/boot/dts/apple/spi1-nvram.dtsi
@@ -2,7 +2,7 @@
 //
 // Devicetree include for common spi-nor nvram flash.
 //
-// Apple uses a consistent configiguration for the nvram on all known M1* =
and
+// Apple uses a consistent configuration for the nvram on all known M1* an=
d
 // M2* devices.
 //
 // Copyright The Asahi Linux Contributors
--=20
2.53.0





