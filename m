Return-Path: <devicetree+bounces-270327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCaMJrSOpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1951EA346
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1538430E97C9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43FC38239F;
	Tue,  3 Mar 2026 07:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR7zefrT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824F537CD44
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522985; cv=none; b=ltQxnTt/ev9LOzSk4WynkVYkgATDYjFxuQhodqnaE2B8SNarLINK3zLyPceJk24GQINYElSn+sZ61oeDU93hTJ212rpZetRmAtNuL8CE0jOeW7GoZ1uGUabfTobfIQ76+TvOw74eNflAMDyqrCSH/gumMyKua+JBkM7Y4jP6t9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522985; c=relaxed/simple;
	bh=rhuH5bZWPXEvksruFJrNP1WLqN+56EEVyEMkg0zDSyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fnE+A6S/KBR00IpeEAjNraNH/FvTz2iwuVNgSvl+ltsI2x9fsVYzp1LMAsHBuBsh9Z3Ur7+cB5jbDLlCGl3hxD1a+OOenkth6bd98XcCG+BdIl06PGncCcatOqGOM8XLzNeS48A79uXgzvCdcvGJ7sT7B0ZOkS/bzAVcPOC7XcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR7zefrT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3D64C116C6;
	Tue,  3 Mar 2026 07:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522985;
	bh=rhuH5bZWPXEvksruFJrNP1WLqN+56EEVyEMkg0zDSyw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZR7zefrT9PWtsxK7nZQ9yrrrSzG92OTmGeotEIPQhYVbM4vqfmAQJ69oWd3PS37x+
	 YK9+GxeOwegpnxm+d5GLSgQAOJbje/bkQixYPahDuLiBaBhSJMpvpRvbnxsr+aLyXX
	 1I1Zeg3MS2ALu/Kujf8C6ZCnHsFBjsOkSvn1J5PSiMNJh/EJvLt6lqwGL7haC6U/x5
	 I1lvFIStin3T8LJ9VOkmKDQmLK64ndYjKHA+FWjDaVU5Lo3oggR3hAdMk/HJlEWHoR
	 /kOfyiavtyylOReJAg/a6adVPlxvOBrNgRyZ+hXmyxxMVtdCpOYtZbcK72dpczLCj6
	 wTX+M5764oOog==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:34 +0100
Subject: [PATCH v2 2/8] ARM: dts: gemini: Tag disk led for disk-activity
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-2-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: EE1951EA346
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270327-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Linux now has a trigger specifically for all disk activity
and this is what the LED is used for so tag it like such.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/gemini-nas4220b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/gemini/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
index 6544c730340f..2488b9b24218 100644
--- a/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
@@ -52,6 +52,7 @@ led-orange-hdd {
 			/* Conflict with TVC */
 			gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
+			linux,default-trigger = "disk-activity";
 		};
 		led-green-os {
 			label = "nas4220b:green:os";

-- 
2.53.0


