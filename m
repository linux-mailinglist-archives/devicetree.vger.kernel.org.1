Return-Path: <devicetree+bounces-325373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tL94Bu65VGqUqAMAu9opvQ
	(envelope-from <devicetree+bounces-325373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:11:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787C749A67
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:11:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="n/8JA7Sa";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325373-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325373-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0619C3010665
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191823E5ED6;
	Mon, 13 Jul 2026 10:11:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EF93E3D93;
	Mon, 13 Jul 2026 10:11:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937515; cv=none; b=pMg1MReAPcAu6DN6sPB/NUodUbB65EHrfU5Vy5K7IFgtk4Cm9hdIS4f4EtOV0rCV2vrb09DxkiTDfudiMmpMAT+3Lzj6BGSGNIQ9w+utxjInr3CGApBH7XqJP+jqf2gyfXqnrDXAPqQPwI4rKfvUNv76u8FKl+EXrYwSNa6GkVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937515; c=relaxed/simple;
	bh=7RJjhSRLrORuQ7QpJYxJUaa7YME47dK6mHpkFjegxhI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eb7Dj9FdU36habD8Txy5MQ3W298zQe8EFWyr/OQWKv9Ul4P5PiUQ1HnK+y7xOAztxmGEboB+K8ShqKr/J81nPTzzcndpEVbQ5YkKQ25wJLG/x0uYC2lg6oh/IxUK8nd9J1dgNalNgFRnkK/i2IHuOvxfEg/QV0JYWcr2XdNSzUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/8JA7Sa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A52C2BCF4;
	Mon, 13 Jul 2026 10:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783937514;
	bh=7RJjhSRLrORuQ7QpJYxJUaa7YME47dK6mHpkFjegxhI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=n/8JA7Sa6F+IOqI2j4Kc9U3arWFbbutuKv+cbzdIWFKidciEdU/TUlLFJMwn+yp+7
	 pwXzr4mz3qgqZN2oMj95164ey9FQ3mbQNWuJ661wUuL8ve7X+MmF6O+vjCIIaKcw9Z
	 8M3cLwMkINDj8rehPrMJF7XW6VH7F1uHLJhhVow3eXlwEmZOKKQT2TLRd1Q7SFJNKB
	 SfIf0Q+yEKKQce3SnTnuXg1cs5DhxCv1/qjrTUuBX6jlY0ClOhNj88RMG9dro/HjBR
	 IAGqar0HPnP1/QdwCJKFpSHCqiK6a30apnDDO4ev1qHHA5IktC0xzX8NBxE2DbBg6S
	 2X9l72wSXt8hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A597C44507;
	Mon, 13 Jul 2026 10:11:54 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Mon, 13 Jul 2026 13:11:37 +0300
Subject: [PATCH v3 3/3] ARM: dts: mediatek: mt6323: add EFUSE support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260713-mt6323-nvmem-v3-3-205c39267a24@protonmail.com>
References: <20260713-mt6323-nvmem-v3-0-205c39267a24@protonmail.com>
In-Reply-To: <20260713-mt6323-nvmem-v3-0-205c39267a24@protonmail.com>
To: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Roman Vivchar <rva333@protonmail.com>
Cc: Andy Shevchenko <andy@kernel.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Ben Grisdale <bengris32@protonmail.ch>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783937511; l=771;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=oXee/GlWmV/sWGn0ruKkyx1IqiA7OAnfJd9/nLpO/3U=;
 b=hUtTiqd14ZQdojpigTpm73QMzVmaNbdZ2kn15YvOcmRSxBhS2+BjUySxMUTmQJE9mPAta68uO
 ECv+sBLnknJAQNCdu6Qwh8QI7qCN4JaoX2qgnlp+RUOkNxJ37o5cMap
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:srini@kernel.org,m:rva333@protonmail.com,m:andy@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325373-lists,devicetree=lfdr.de,rva333.protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,collabora.com,protonmail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,protonmail.com:replyto,protonmail.com:mid,protonmail.com:email,protonmail.ch:email];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9787C749A67

From: Roman Vivchar <rva333@protonmail.com>

Add the devicetree node for the mt6323 efuse.

Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 arch/arm/boot/dts/mediatek/mt6323.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mediatek/mt6323.dtsi b/arch/arm/boot/dts/mediatek/mt6323.dtsi
index c230c865116d..807e000a7ff6 100644
--- a/arch/arm/boot/dts/mediatek/mt6323.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt6323.dtsi
@@ -14,6 +14,10 @@ pmic: mt6323 {
 		interrupt-controller;
 		#interrupt-cells = <2>;
 
+		efuse {
+			compatible = "mediatek,mt6323-efuse";
+		};
+
 		mt6323_leds: leds {
 			compatible = "mediatek,mt6323-led";
 			#address-cells = <1>;

-- 
2.54.0



