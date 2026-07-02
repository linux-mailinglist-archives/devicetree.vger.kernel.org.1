Return-Path: <devicetree+bounces-319418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BErLAERuRmr1UgsAu9opvQ
	(envelope-from <devicetree+bounces-319418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:57:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 460236F89C1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:57:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kemnade.info header.s=20220719 header.b="fN3nHIS/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319418-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319418-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=kemnade.info;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7310D301FFBD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71AD496919;
	Thu,  2 Jul 2026 13:53:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861244ADD9A;
	Thu,  2 Jul 2026 13:53:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783000400; cv=none; b=L4YyxvfEQFEIRcpPz3Wm3h+ew1W8EaoELxDK7ofyahKnhSKizaqrZNnx/Tp7cXOP73sJ3csgAXPlYszFv7slz+a2v5MhCix8pJcRD/T0w6y0AKNIAuOcvXiITUKcoJUjCkR9G+fELvUGFvjHr+Xfm1y4KKd65M1bDYjltb9rSOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783000400; c=relaxed/simple;
	bh=tqYyW/PX6hR7Wv5PgP4YYislXUMPcANlAU7/rHlopZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c02i7/QheMT0NUZ0nXxM75VduU3Ezb7PwY21Oq0hCZAQPDJlTMxrJwqeM9qT+R0RDVMtQZ1mRVU8htD8fklMRCClwGc9+BXMBZk/tHSNKFyDkRcigysl2KOZvKafmpy7rA2hV5KDzbYbqRL72sYRAkedMkImp5jygqffwJlolqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=fN3nHIS/; arc=none smtp.client-ip=178.238.236.174
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:To:In-Reply-To:References:Subject:From:
	Reply-To:Content-ID:Content-Description;
	bh=tXulqD9IlD9hS/ExIkyaNUgdGu1Ig3SZNQ96GuHk7fc=; t=1783000397; x=1784209997; 
	b=fN3nHIS/SA2g9gUfaFiAuuMFre8gXJaCKZMItPg4ePy9ciWI6ZZfoI0oTnkugFHJ7CwGcTNjTss
	Sg754EssKYoA3CE8TGK92MK9a6sJ9K3sRBsJAlVmuP9AjLw6a7aIQFrlRhedBHOhOf7KuO+iU7G5h
	VO3INqpcyv+Y62KaVgiLJ0sV0DXgi1qhxpFbFK11d52CnSYEF7y/b20EuSzd720CiwTcbh7m9axX8
	ycKMs/TZC0yGieN9Bj4B0FaFDUHnxHNLRd4deyXkmZC4mjUvUEoooQ0I8jVawF0r2IZKpmTl9LjMp
	LP4fFxL9dIC4ERBs4XpYeNwgW5g3rgQeWssA==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Thu, 02 Jul 2026 15:52:44 +0200
Subject: [PATCH 2/2] arm: omap2plus_defconfig: Enable multi-LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-b200multiled-v1-2-c1799ad45c96@kemnade.info>
References: <20260702-b200multiled-v1-0-c1799ad45c96@kemnade.info>
In-Reply-To: <20260702-b200multiled-v1-0-c1799ad45c96@kemnade.info>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=901; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=tqYyW/PX6hR7Wv5PgP4YYislXUMPcANlAU7/rHlopZQ=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDFluubYzuw099S6vM9cW2mHZnqab+ixH0ezaQ64dHwKku
 Ddy5EzuKGVhEONikBVTZPllreD2SeVZbvDUCHuYOaxMIEMYuDgFYCIW3xkZnrsV7/gtIl72dv0f
 vyea7l6rI5UOL52w639V72u2JV+9jjMytBVmnXzTxSJh/YnnX8Wk2t0XfDnu/r10kduiQ7GLs2M
 iFwA=
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319418-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:aaro.koskinen@iki.fi,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux@armlinux.org.uk,m:linux-omap@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:andreas@kemnade.info,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 460236F89C1

Enable drivers needed to use RGB LEDs composed of multiple monochromatic
LEDs.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/configs/omap2plus_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index ad5ae1636dee..3a4fb59d3fad 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -602,6 +602,7 @@ CONFIG_MMC_OMAP_HS=y
 CONFIG_MMC_SDHCI_OMAP=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=m
+CONFIG_LEDS_CLASS_MULTICOLOR=m
 CONFIG_LEDS_CPCAP=m
 CONFIG_LEDS_LM3532=m
 CONFIG_LEDS_GPIO=m
@@ -611,6 +612,7 @@ CONFIG_LEDS_PCA963X=m
 CONFIG_LEDS_PWM=m
 CONFIG_LEDS_BD2606MVV=m
 CONFIG_LEDS_TCA6507=m
+CONFIG_LEDS_GROUP_MULTICOLOR=m
 CONFIG_LEDS_TRIGGERS=y
 CONFIG_LEDS_TRIGGER_TIMER=m
 CONFIG_LEDS_TRIGGER_ONESHOT=m

-- 
2.47.3


