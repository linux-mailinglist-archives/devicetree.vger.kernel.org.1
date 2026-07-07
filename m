Return-Path: <devicetree+bounces-322133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gB+sN5MTTWq4ugEAu9opvQ
	(envelope-from <devicetree+bounces-322133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:56:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5682F71CE79
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=vZQi0lCN;
	dkim=pass header.d=linutronix.de header.s=2020e header.b="t/CsJ+mE";
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322133-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322133-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5252E32EEDC1
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36E942CB12;
	Tue,  7 Jul 2026 14:21:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39013312814;
	Tue,  7 Jul 2026 14:21:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434062; cv=none; b=X7Uhc8wbGJ0BpM0yn61++NinlrjmZ7O8Ov8hpg9ch8wVzPb4tniba1v71zvZkf1pSeF9L9VToY5scXJVXYa8ofn3KYWNbfBFkuViO2SFwLNvKutKa8PLQiM2kR6U7jKcy32WpQ3rDiGHJM7bQ1AeWMtZmihX1mfX9KYCRUUUH+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434062; c=relaxed/simple;
	bh=JTGSzF3cwcMgL2GV7Aem6Nhh3tKER7RTd2LK3CeGm58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sp0paGQmWqEXTvx0MAeWlSY8JgD6Jn24F8LsJ/dY3n3SohpaywQA+djqfqA/hMpbtq9gDE+68EHgcY78EefXiMlF8GRRJVbDMaKQHfwdQMUWOt5oEjGGxwboUW++QyGwIlfhou+mvK4LhUmuyNqI+o+rEKWiVpQNvZ/Pcdjj044=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=vZQi0lCN; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=t/CsJ+mE; arc=none smtp.client-ip=193.142.43.55
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1783434059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZlSADl29CmHDkOq9VyOqS+dZQ9n9eCe+aPQc5gMZi0s=;
	b=vZQi0lCNNZlnGZKclY0uClC5Z6tz5QQa2btJIQBTkh4yOl0ubRnRAaKsyNBac8qG/R807/
	mA1xXgOlpJHVUJZnsrgtslV4B0TVmpD9r9YEAs2Qqq/AJVux4UUlQ3tGHMT02jnhWzymO6
	c+J/2knIqiyq/Bz2HcGigas8QoepNl63Yr+t1aedWjExH0uQLcohnfC91DhTIky+jElhmA
	mws8MSiBs/QWb6AvELNQiWgkfFaWfB+SlIX5Q87xbnbr4aXqoRKBc1KLD02jNAKR4LxtIq
	wMDj518uimtt1XaXCFaGngCPJG6bjkO7SxmyGGSKxOgTbeOuCsIGmIEtaleDiQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1783434059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZlSADl29CmHDkOq9VyOqS+dZQ9n9eCe+aPQc5gMZi0s=;
	b=t/CsJ+mElG8oHHjFixitAArwfv1SbKPncHCv9wsvLAynKeuCTMjqVnG77E+yCwsQHmNq1a
	d/w0atRrpj8xYwDA==
Date: Tue, 07 Jul 2026 16:20:55 +0200
Subject: [PATCH v3 2/4] dt-bindings: raspberrypi,bcm2835-firmware: Include
 'reboot-mode.yaml'
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-rpi-tryboot-v3-2-fda82fe7ed76@linutronix.de>
References: <20260707-rpi-tryboot-v3-0-fda82fe7ed76@linutronix.de>
In-Reply-To: <20260707-rpi-tryboot-v3-0-fda82fe7ed76@linutronix.de>
To: Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Eric Anholt <eric@anholt.net>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783434058; l=1239;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=JTGSzF3cwcMgL2GV7Aem6Nhh3tKER7RTd2LK3CeGm58=;
 b=/C0ZSnDvp8ZjcCZXH2gNPQz3Db4Xhxb9QA193RtWIPcP25P+oQm4V1pFT9JWX1hxKTZwePIyD
 cpqn0qh5f5yC0FAZNqoyUhgnDbTZZg5zSI4MSzC0VFTXe4kojfUswjX
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:rjui@broadcom.com,m:sbranden@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:eric@anholt.net,m:wahrenst@gmx.net,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:gregor.herburger@linutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322133-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[broadcom.com,kernel.org,anholt.net,gmx.net];
	FORGED_SENDER(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linutronix.de:from_mime,linutronix.de:email,linutronix.de:mid,linutronix.de:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5682F71CE79

The Raspberry Pi firmware allows to set a reboot mode called tryboot
that allows to try booting from a different partition to allow updating
of the boot partition. Allow reboot mode properties by referencing the
reboot-mode schema. The firmware allows a 32bit value to be sent as
reboot flag so restrict the maxItems to 1.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 983ea80eaec97..28c5713860468 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -133,6 +133,15 @@ properties:
     required:
       - compatible
 
+  mode-normal:
+    maxItems: 1
+
+  mode-tryboot:
+    maxItems: 1
+
+allOf:
+  - $ref: /schemas/power/reset/reboot-mode.yaml#
+
 required:
   - compatible
   - mboxes

-- 
2.47.3


