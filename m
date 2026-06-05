Return-Path: <devicetree+bounces-307242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GCH7BjF9ImrkYQEAu9opvQ
	(envelope-from <devicetree+bounces-307242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:39:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7008264611C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:39:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307242-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307242-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C37DD3067145
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 07:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65AF047A0DF;
	Fri,  5 Jun 2026 07:28:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F072D477981
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 07:28:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780644486; cv=none; b=cbPdbOG6GPXN+gulcnUDjV2a0cuSPGrSVuRcZdtI0BVaIrsVds3Wo2tA4dvyQSVs3FKIvWpjqEUOCFoEqx6R5ys0kqHT7A+qH2ChxKgXCMXWoK6lWP7wwVEN0lSSJRp1DFJbaLtkLo5A0ieXxIuCwvH2I/T0zHD4mqqd+Oxht1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780644486; c=relaxed/simple;
	bh=gjr+y9XBXD0UmNyCeEhwDcRMFPWKz/ylhkwDK2INU/w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qE1NwrOJUBjdeaAp3kAZ0o4ARLp7ZsVHOhGl1w6IVBse8H0zB+/PCs56sjjnt6fmiR8XGJn8x+nMCHDS2P+SLjOt4vaVv+KqaGtB++hL9NRePkjwrXT3xt2lR1JiZtySSt8kv32RRM85xunGoTROix6gESccTOX3dtbEgW3lcBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wVOy9-0007Tn-1G; Fri, 05 Jun 2026 09:27:53 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH v2 0/2] leds: pwm-multicolor: Fix default-trigger by
 allowing default-intensity
Date: Fri, 05 Jun 2026 09:27:46 +0200
Message-Id: <20260605-multicolor-default-v2-0-ed07271df6b0@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHJ6ImoC/32Nyw6DIBBFf8XMujTgM+mq/2FcCAw6jQUDaGyM/
 160+y5Pcu65OwT0hAEe2Q4eVwrkbIL8loEaezsgI50Ycp7XvOYley9TJOUm55lG0ydiQmAhUWn
 kVQ9pOHs0tF3RtvtxWOQLVTxLpzFSiM5/rtdVnN7fg1UwziRvpDFlIaqiec5ohyV6Z2m7a4TuO
 I4v4BfpBcsAAAA=
X-Change-ID: 20260604-multicolor-default-11e3becde05a
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Sven Schwermer <sven.schwermer@disruptive-technologies.com>
Cc: Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1852; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=gjr+y9XBXD0UmNyCeEhwDcRMFPWKz/ylhkwDK2INU/w=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshSqirhWPJr6pqXhxa0VCYmJZ3iDJA8PSO71+Ne7dzr6
 ROfTu3i6yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExk9zlGho3NGS+X7OaOfNps
 8lBrpw27zmUex8MCt+6UvjraE/NO/CEjw2avQKEn0v8O9n0J9/xstSJhhvckxqvSp4KVxeTjo7q
 DmQA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:pavel@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jacek.anaszewski@gmail.com,m:sven.schwermer@disruptive-technologies.com,m:pavel@ucw.cz,m:linux-leds@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel@pengutronix.de,m:jre@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,m:jacekanaszewski@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,disruptive-technologies.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jre@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307242-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jre@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,pengutronix.de:mid,pengutronix.de:from_mime,pengutronix.de:email,msgid.link:url,disruptive-technologies.com:email,ucw.cz:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7008264611C

Typically using linux,default-trigger allows turning LEDs on on initialization
or triggering on e.g. a kernel panic regardless of how early.

While supported in pwm-multicolor, this was not usable because the
individual color components multiplication factor (intensity), defaulted
all to 0 (black) and the LED remains off regardless of its overall
"brightness" value.

Allow setting defaults for each component's intensity to make the other
"default-" properties actually usable here.

Update binding documentation accordingly.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- dt-bindings: Use correct property name in example
- dt-bindings: Add missing word in property description
- Link to v1: https://patch.msgid.link/20260604-multicolor-default-v1-0-b07bff431537@pengutronix.de

To: Lee Jones <lee@kernel.org>
To: Pavel Machek <pavel@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
To: Sven Schwermer <sven.schwermer@disruptive-technologies.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: linux-leds@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Jonas Rebmann (2):
      dt-bindings: leds: Add default-intensity property
      leds: pwm-multicolor: Introduce default-intensity property

 Documentation/devicetree/bindings/leds/common.yaml            | 11 +++++++++++
 .../devicetree/bindings/leds/leds-pwm-multicolor.yaml         |  4 ++++
 drivers/leds/rgb/leds-pwm-multicolor.c                        |  2 ++
 3 files changed, 17 insertions(+)
---
base-commit: ba3e43a9e601636f5edb54e259a74f96ca3b8fd8
change-id: 20260604-multicolor-default-11e3becde05a

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>


