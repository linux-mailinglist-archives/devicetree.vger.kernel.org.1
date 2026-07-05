Return-Path: <devicetree+bounces-320783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qJEmKI3XSmr3IQEAu9opvQ
	(envelope-from <devicetree+bounces-320783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 00:15:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F36E270B975
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 00:15:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C5ImS2oD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320783-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320783-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8688B300875D
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 22:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29396372B39;
	Sun,  5 Jul 2026 22:15:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6CB3655C0
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 22:15:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783289729; cv=none; b=la8BDMIiO6UFLaN9pCbz+ulF7fwZZXjoiBirca+ouhx/gU2ccM/WPJ/5h10XqLqynh/rdmuV/tgEhB+vPaDlgHDt25vVpAshfcuuKPTVnuaQBgsBJz7h/XMr1Kp1aYGBoWAAjj55+swk9S/HB2jHtw0gyxK05SH5LIzqtZUUC3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783289729; c=relaxed/simple;
	bh=3S7J3C9AUAVhaQdzzRNumvmD1FlvDPDlEtTiruPs6iY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=s3F1tg0GpTUwWW1NpMde14DNmdlJj9foe2nJSXPa66b4IIVWJlEZ3Dq8YbvhgvSiKzF0+zwSl4d2dmg4W2edxIM7FMtnv4Xq0HF+ZUcpc6T/MAeqEEgVrnaCXlyGHx9AqXY4GkQtu8MBhrO+x6oEIXDo/FdniFOohfpYv5rmA4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5ImS2oD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81DFB1F000E9;
	Sun,  5 Jul 2026 22:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783289728;
	bh=11yOC0xBtLrR48kPHbjyx49hKbhUR9JVSCNhFRbbv1M=;
	h=From:Date:Subject:To:Cc;
	b=C5ImS2oDsK4ztlCK2n2lRz5+vFc6Vm+tWzW8kDPfGJ5yjM5XKgpmAVI95O33T3TsV
	 6ead3aHOLsMYqRLCiXh2fXD+j99UYzkTIQraZVgg5dT7+DYlEUI1MrNX+FczN93eQ+
	 3JPDywXkTs8LIVYT4ML1cW0xNiXT5jyZf1HTnAI8LxgTxmf2L+ByIWiD8kzunm08IP
	 xK0RhS6uDV7zRqDZdbhNRRWgKrp+tGQuX7+TMOafytzZUOIPRoNjIYeedEfvNiPaJd
	 LUPVRWB83FjYE4Vca5h8wdB5ym46SE48xslcGa4kbJY9hvtkj5yzXzRbBfO2Rz5q4o
	 B9qhEshmlenVA==
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 06 Jul 2026 00:15:24 +0200
Subject: [PATCH] RFC: ARM: dts: ixp4xx: Fix interrupt-map weirdness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-ixp4xx-dts-gpio-cells-v1-1-98fa3ba0ad2d@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBG4auQWTtJKYjiVQwLbH9hDIGmg6QJ4
 e5WXX6L93ZSRIHSrdgpYhOVZc4oTwW5sZ8HsPhsssY25mLOLCnUKbFflYcgCztMkzK8Lau69bD
 tlXIbIp6Sft9797e+Hy+49Tuj4/gAioL1bXkAAAA=
X-Change-ID: 20260705-ixp4xx-dts-gpio-cells-ed21349de298
To: Imre Kaloz <kaloz@openwrt.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320783-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kaloz@openwrt.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F36E270B975

Building the DTBs for IXP4xx results in a few thousand lines
of this:

arch/arm/boot/dts/intel/ixp/intel-ixp42x-adi-coyote.dts:68.4-78.31:
  Warning (interrupt_map): /soc/pci@c0000000:interrupt-map:
  Missing property '#address-cells' in node /soc/gpio@c8004000,
  using 0 as fallback
(...)

I don't understand why an *interrupt* map needs address-cells, but
I suppose I am missing something. I have not seen this before but
it started appearing.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi b/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
index 0adeccabd4fe..b6ef98a88c4e 100644
--- a/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
@@ -114,6 +114,7 @@ gpio0: gpio@c8004000 {
 			reg = <0xc8004000 0x1000>;
 			gpio-controller;
 			#gpio-cells = <2>;
+			#address-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260705-ixp4xx-dts-gpio-cells-ed21349de298

Best regards,
--  
Linus Walleij <linusw@kernel.org>


