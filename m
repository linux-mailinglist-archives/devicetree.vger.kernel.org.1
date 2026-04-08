Return-Path: <devicetree+bounces-285590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO2WJJgC1mlsAAgAu9opvQ
	(envelope-from <devicetree+bounces-285590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:24:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEDD3B80FA
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7F99302800B
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FB437F8A2;
	Wed,  8 Apr 2026 07:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flordal.net header.i=@flordal.net header.b="lQGO3y3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4320.protonmail.ch (mail-4320.protonmail.ch [185.70.43.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580C7356A37
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 07:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775632898; cv=none; b=GvB07MJ83vrXWQ/1PwIV9KFQY8YDYUxz4ekKBUp8S7qvwQGg3HH3Jhv3DYAE7ngip9sK+sFoD9u9095VJN8ao+GJmo4y8y3WLrFzc3wlLUjmlfTv5KTSGL8+bkAnPReRgtNpUSI9JVIIQyL4PHtzfT29yxt/A25WiKr8Ahu5m2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775632898; c=relaxed/simple;
	bh=MbOGGRZRGKUC9wg/u4bagIerJWK0O28aWsRrCdAdIQM=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=hsrap4ceW0mb5RoTl0BnHWNUlrxxVBhSVZHYNjLFlbn+wMg48I2OMr8x4lZJKhtVxOytrx1frrsEHBb3cF5gQks5otcLr20p6uYIMtguTR+SSDlIrKGWLHp00L/GwqpsgOiTq4psTSOm0I12e9ZAjnevm/hbi2vO+nfE90qZeK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flordal.net; spf=pass smtp.mailfrom=flordal.net; dkim=pass (2048-bit key) header.d=flordal.net header.i=@flordal.net header.b=lQGO3y3Y; arc=none smtp.client-ip=185.70.43.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flordal.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flordal.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flordal.net;
	s=protonmail; t=1775632888; x=1775892088;
	bh=MbOGGRZRGKUC9wg/u4bagIerJWK0O28aWsRrCdAdIQM=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=lQGO3y3YMaCA8kDO8TvKmTevFk/tJrkj/WdjGhLen9DlP89s0Y99bZnZy8tvJ1jSw
	 rN2cl0J9WKuaOI5u2qLMOWqPNmkMIT4eRaC+jSmcVFbxwT5kko1EuoBZrVM15QVYlI
	 IA+TuIW0v+51qKLl4ZlozYBkbaK+z25l+yrTUu0CnJ+y6P6r9JvhvwBUNipBbqMbyd
	 5w7aDY4hATuRHvlBv9aDplAppb7JzGrjspnHj1bGBen3Fo1JMVs3bnhF3sGA+o5b8Z
	 sJTcm637R5yS8dbupZaTloI4oi1p01mjELU2d/7cjeeBdyHvf8+TfdGVy2kyBC8Scs
	 ORDCnAc4Pn/fA==
Date: Wed, 08 Apr 2026 07:21:23 +0000
To: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From: Axel Flordal <axel@flordal.net>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH RESEND] arm64: dts: apple: fix spelling error
Message-ID: <2338500.vFx2qVVIhK@fedora>
Feedback-ID: 166586150:user:proton
X-Pm-Message-ID: c48aabe3f901b14e1434363741495137f986d95f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[flordal.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[flordal.net:s=protonmail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285590-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axel@flordal.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flordal.net:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gompa.dev:email,flordal.net:dkim,flordal.net:email]
X-Rspamd-Queue-Id: 3EEDD3B80FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change "configiguration" to "configuration".

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Axel Flordal <axel@flordal.net>
---
Original patch: https://lore.kernel.org/asahi/CAEg-Je-KwNNGoi3mpPeNq3Jmtzj_=
5seuj1Qeh2_1dt994iCJSA@mail.gmail.com/T/#t
If this is unwanted I of course won't send again.
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






