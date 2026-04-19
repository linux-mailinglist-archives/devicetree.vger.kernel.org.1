Return-Path: <devicetree+bounces-288410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HwkLd7O5GlDaAEAu9opvQ
	(envelope-from <devicetree+bounces-288410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 14:47:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F940423F94
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 14:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B193C300D844
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 12:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F6EB280CC1;
	Sun, 19 Apr 2026 12:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="alQhAJP7"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB5473463;
	Sun, 19 Apr 2026 12:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776602844; cv=none; b=Lw77NZXN2uqawBxPDlxi+iKWNtQO3PhDVRbKSLwsJt3fhWY/GWFAe1OpSOIr5M2o4afht8+qXXzHCWbclthJkq9rRUoMXDCn+j+n+T0PzkwhXALfrcJkAiabWGcSwrHqkHEck+dwNERBzl1XrWiYx7mTyV2ikZSr1m1yWfSQITo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776602844; c=relaxed/simple;
	bh=Ig02Ia886PvDCutXjdfrwpVcl7mRn3EDpKbJ7k34tmk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HvB0aIfh/MVwyH9yNk9BMXNarPw04/HV+Q9oeYrcLegxUZTE7mr/taiR2aDVf85Eygd9KM4t7wipdrE2wxgXnStXVhrvxdwFKUDNXEePLNAVKuDv4GSExPN6KUT2JsO38B4b+w20Sc5CcAu+5x+bR1ivWtI3VvCy5u+8IW+TgIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=alQhAJP7; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CKOtsXDJcG0jDyOs/E1laUSgylmDBg7JVi69SXGBKH0=; b=alQhAJP7tyqN5X1VDvX2dghx0W
	y4sLfD6xuynMppx31aUOAh9CREt/zRHnaKGUmixMvZJUZmjmNOH/osTRoUCFpK42/cuy6t9ktxuBi
	qBR9vUQHAG0RgZO42koXO1zGPJDviDWD3iyli6jgcdTZgDtKys3RevFB7eqHEn1qA5FffOBEFWztq
	pIf4etKKee5W4AgkZ6/2r+c/boYWZWlCt8GgQInk5PkQRNnm+PfSPV5kgeP6bdmwMC0ndSVxnsTm0
	fW3cvWmVq0eZV5FoLNE/beSpQJr6WVD1WxhJk0mVBbjoyd3Xr7/4idJCjMpk1GL92yPhiwgGEw7++
	Z0ofq9Fg==;
Received: from user-5-173-16-91.play-internet.pl ([5.173.16.91] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wERYT-0000000Fbcq-0WDP;
	Sun, 19 Apr 2026 14:47:17 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Subject: [PATCH 0/4] Add hstimer support for H616 and T113-S3
Date: Sun, 19 Apr 2026 14:46:06 +0200
Message-Id: <20260419-h616-t113s-hstimer-v1-0-1af74ebef7c5@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI7O5GkC/x3MPQqAMAxA4atIZgOmlWK9ijiIpjaDPzQiQvHuF
 sdveC+DchJW6KsMiW9ROfYCqiuY47SvjLIUg2mMa1qyGB05vIisYtRLNk7ojLfet13wNEMJz8R
 Bnn86jO/7AQpxxBNkAAAA
To: Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776602788; l=1244;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=Ig02Ia886PvDCutXjdfrwpVcl7mRn3EDpKbJ7k34tmk=;
 b=P72Zmpvb3tqGJ3FjNsRAhiu1NsSrvHIbMbWLAUANOSfQweRTZEGoFDQVDqlCouTp48oQ3stJJ
 +t02yiKhdCYCrX/sRv5S9eZa4852+xqmhA7UtsvwEfODiQxp4aQA1/+
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288410-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.810];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0F940423F94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for Allwinner H616 high speed timer in sun5i hstimer driver
and describe corresponding nodes in dts for H616 and T113-S3.

H616 uses same model as existing driver except register shift compared
to older variants. 

Added register layout abstraction in the driver, extended the binding
with new compatibles and wired up dts nodes for H616 and T113-S3 which
uses H616 as fallback compatible.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
Michal Piekos (4):
      dt-bindings: timer: allwinner,sun5i-a13-hstimer: add H616 and T113-S3
      clocksource/drivers/sun5i: add H616 hstimer support
      arm64: dts: allwinner: h616: add hstimer node
      arm: dts: allwinner: t113s: add hstimer node

 .../timer/allwinner,sun5i-a13-hstimer.yaml         |  8 +++-
 arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi       | 12 +++++
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi     |  9 ++++
 drivers/clocksource/timer-sun5i.c                  | 56 +++++++++++++++++++---
 4 files changed, 78 insertions(+), 7 deletions(-)
---
base-commit: faeab166167f5787719eb8683661fd41a3bb1514
change-id: 20260413-h616-t113s-hstimer-62939948f91c

Best regards,
-- 
Michal Piekos <michal.piekos@mmpsystems.pl>


