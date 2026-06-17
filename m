Return-Path: <devicetree+bounces-313020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id txLbHPWjMmph3AUAu9opvQ
	(envelope-from <devicetree+bounces-313020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:41:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D01EF69A320
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:41:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=P7M03ZUz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313020-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313020-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EFEC305BFAA
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9F23FF1A3;
	Wed, 17 Jun 2026 13:37:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F492FFDD5;
	Wed, 17 Jun 2026 13:37:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781703439; cv=none; b=ARIVwBCAs8jkfo9TT2+eP1KvPbqkpFtW/2BjFVwT6N1PTyEbHeGtAgA5/1a6ioDWf0PZ8ZS+ee5BV8bBYT54Yhfe6Ap39hk5tu54DmBtOR8b8iTWTDb6ayAAUVE+abI+3iSvFcsiBt3qh5JR0Qmy3i9jjiF3XIKWhkDyjD3VnGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781703439; c=relaxed/simple;
	bh=kNEUKK5Kiz7cVomN/f+dhLQomGTCo4fTF2+XBbA8V+4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HtNjPp8owD/SgCzeSvnRf0+D5PValiaEzUdDVSXtYJmoqzxiKEu8BaoJ4D7zysDevu19A9ykF3dZnJCJqGQgPC07rysK4I5PkdNWJlZ+I4W4V9Twy4B2X+XLK3mj8caqppwQmZW8v8CM0mEz2xQs65+kArCWDqhOBV370d74NXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7M03ZUz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5C3BCC2BCB0;
	Wed, 17 Jun 2026 13:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781703439;
	bh=kNEUKK5Kiz7cVomN/f+dhLQomGTCo4fTF2+XBbA8V+4=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=P7M03ZUzdm5VFwApRisRqAME3UyBanEUlNPFnrFUzGCn4wMTmBUShV8dZ9E9eiKC8
	 cmf2YKcE3WpUTv4veomsKjnexLs1mq4uGJUdr0EQnESn78jYumCMnQ0Z81uWFGnmXv
	 mI9bOeLWuo/NqZZwGvQnWYeyoVUnlTHmgMEQn5tZ9rrD0xrIOXS8suiR4qH+hC+zHm
	 GgGHikZJhogg/U0Sn4jQmAYpqG8x3PtIebz3yuDpzlhezeXSliupCJabm86Fmvi8fN
	 0pxqcZP0sUzYPDcDW9fRqpUUTLYypnVDm+QDvKkYAB2Dsy0y8wSb1ExVQyA9I/ai2R
	 hiEH2IhI1RnbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52515CD98F2;
	Wed, 17 Jun 2026 13:37:19 +0000 (UTC)
From: Zakariya Hadrami via B4 Relay <devnull+zkh1.proton.me@kernel.org>
Subject: [PATCH v2 0/5] ARM: Basic support for Amazon ford tablet (MT8127)
Date: Wed, 17 Jun 2026 22:36:58 +0900
Message-Id: <20260617-mt8127-amazon-ford-basic-v2-0-6859e29e72a8@proton.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNQQ7CIBBFr9LM2jGAAawr72G6QJjaWRQaaBq16
 d3FJi5dvpf891colJkKXJoVMi1cOMUK6tCAH1x8EHKoDEooI4w0OM5nqSy60b1TxD7lgHdX2KP
 Uog1WaNVbgjqfMvX83NO3rvLAZU75tT8t8mt/Ufs/ukgUGIRyQWrnT7q9TjnNKR5Hgm7btg/Eh
 YJ6wAAAAA==
X-Change-ID: 20260616-mt8127-amazon-ford-basic-1509d7052f7e
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, Zakariya Hadrami <zkh1@proton.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781703437; l=1406;
 i=zkh1@proton.me; s=20260616; h=from:subject:message-id;
 bh=kNEUKK5Kiz7cVomN/f+dhLQomGTCo4fTF2+XBbA8V+4=;
 b=psGdIht1ihbxy880dbwYEJnCWYHl0rwzxJ6NAnyQNRw76nzvrM2yEjmVriqe/kb64VOjWvl1A
 6bRcxuMeSLjAxA2mYLOU+mInYve5rpe8z4bDIM991pf7VXlCq2ErD9e
X-Developer-Key: i=zkh1@proton.me; a=ed25519;
 pk=9DiJwhINAERP95fbFofXSP77GEnvfO/rMIRRRFDhaoc=
X-Endpoint-Received: by B4 Relay for zkh1@proton.me/20260616 with
 auth_id=824
X-Original-From: Zakariya Hadrami <zkh1@proton.me>
Reply-To: zkh1@proton.me
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313020-lists,devicetree=lfdr.de,zkh1.proton.me];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sean.wang@mediatek.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:zkh1@proton.me,m:krzysztof.kozlowski@oss.qualcomm.com,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,linux-watchdog.org,roeck-us.net];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[zkh1@proton.me];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[proton.me:replyto,proton.me:email,proton.me:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D01EF69A320

This series of patches adds basic support for MT8127 SoC based Amazon ford
tablet and fixes a small indentation error in the dtsi file.

Signed-off-by: Zakariya Hadrami <zkh1@proton.me>
---
Changes in v2:
- Move amazon ford compatible string to existing enum.
- Fix watchdog node not sorted in unit address ascending order (sashiko report).
- Move bindings documentation patches before patches implementing the bindings.
- Link to v1: https://lore.kernel.org/r/20260617-mt8127-amazon-ford-basic-v1-0-d02ad15ac359@proton.me

---
Zakariya Hadrami (5):
      dt-bindings: watchdog: mediatek: Add MT8127
      dt-bindings: arm: mediatek: Add MT8127 Amazon ford
      ARM: dts: mediatek: mt8127: Fix indentation error
      ARM: dts: mediatek: mt8127: Add watchdog support
      ARM: dts: mediatek: Add basic support for Amazon ford board

 .../devicetree/bindings/arm/mediatek.yaml          |  1 +
 .../bindings/watchdog/mediatek,mtk-wdt.yaml        |  1 +
 arch/arm/boot/dts/mediatek/Makefile                |  1 +
 arch/arm/boot/dts/mediatek/mt8127-amazon-ford.dts  | 46 ++++++++++++++++++++++
 arch/arm/boot/dts/mediatek/mt8127.dtsi             |  9 ++++-
 5 files changed, 57 insertions(+), 1 deletion(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260616-mt8127-amazon-ford-basic-1509d7052f7e

Best regards,
-- 
Zakariya Hadrami <zkh1@proton.me>



