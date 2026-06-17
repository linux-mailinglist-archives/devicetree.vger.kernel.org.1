Return-Path: <devicetree+bounces-312728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C4uWICEFMmpQtwUAu9opvQ
	(envelope-from <devicetree+bounces-312728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:23:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B786961D9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:23:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=rH+WQ72B;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312728-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312728-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C29D93046386
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 02:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851562F8E8E;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E99F12F585;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781662872; cv=none; b=QnZocKPQtuGMVK9u5CYmBSYJfkjJTTaVcP7iC9gbf9jDuFbTGGO+9EeQ3yoVc4OUwpTQOinMHjAEyaNzH2w98GZoGxyI/lOZsirMRwZAx/nGE4rw52u0cfjXKaqv+H2gmgRfup9Mxh+qg2+fNIR6enQVYnHEzzv2UnpcASQBdaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781662872; c=relaxed/simple;
	bh=Y0cWCT4yjqLtXogLm+JZvDjfNTCrMoqhAiZrJULbINw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uuGywbjz44BGVhyu+mB7PiOAum2damKX4XCdoZUP1ZUcHsrZCgYQXGa1QuxujNFdOFLbAEAmV2SVuz/s4uxir7guNlItI6ZW9zbpOXB93g2/Pa6sDWmJ/b+6M3dYp8+R+BId8ja/2ng70jDDG2d4pmRioFyjLKz3XfwyviU7KXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH+WQ72B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07961C4AF0D;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781662872;
	bh=Y0cWCT4yjqLtXogLm+JZvDjfNTCrMoqhAiZrJULbINw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=rH+WQ72BFm05jT0b8f2f/AZ2CkF722FWJeCCL6PKEQj/sJ/mB++Gug89RylcC+944
	 nR8RLAQ6ky1g6PIcEyKWUErzPUri7KgwemEySi/qqiFgcPXty976lg2nktPe9BYyfh
	 EsNVh4DxR9cgdnDtHv52qIMgNQ/C+8HtwIX3hFc0NPhCPJ7l1AEqc9vwQ0D8PZ1oPr
	 MJlL6V6BLTZ+Vp5yXRBhBC4zjLNZF1ZLUahv3lN+DD3refEDToSR4eGiPhiOZcJKwZ
	 0Vn3F8dQhmRTk2kzlWNn1dPfmI7lCiF/SzuYT5ihlyGo0IQ3SDciF2685SJtsatkhQ
	 kustmxdAmBzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5CA2CD98EE;
	Wed, 17 Jun 2026 02:21:11 +0000 (UTC)
From: Zakariya Hadrami via B4 Relay <devnull+zkh1.proton.me@kernel.org>
Date: Wed, 17 Jun 2026 11:20:10 +0900
Subject: [PATCH 1/5] ARM: dts: mediatek: mt8127: Fix indentation error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260617-mt8127-amazon-ford-basic-v1-1-d02ad15ac359@proton.me>
References: <20260617-mt8127-amazon-ford-basic-v1-0-d02ad15ac359@proton.me>
In-Reply-To: <20260617-mt8127-amazon-ford-basic-v1-0-d02ad15ac359@proton.me>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, Zakariya Hadrami <zkh1@proton.me>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781662870; l=646;
 i=zkh1@proton.me; s=20260616; h=from:subject:message-id;
 bh=0uKY942SYdvjWSBpaLmMsTG1mV/4mbR327xAEav7Pe4=;
 b=xHx5Gn9Gq0Z0wUNlXF28Rbsz7c/kBJukg66Jk3CoI0EZFFvXDvRQeYwk4bHd3VItDoHk/9Nqz
 sx0ekvvZU4EBUsy1ACxn43jcD/VpRvGrJwkl6QRW6xOMLnMQr6xF603
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312728-lists,devicetree=lfdr.de,zkh1.proton.me];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sean.wang@mediatek.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:zkh1@proton.me,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,linux-watchdog.org,roeck-us.net];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,proton.me:replyto,proton.me:email,proton.me:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34B786961D9

From: Zakariya Hadrami <zkh1@proton.me>

Fix an indentation error caused by a space at the start of a line.

Signed-off-by: Zakariya Hadrami <zkh1@proton.me>
---
 arch/arm/boot/dts/mediatek/mt8127.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt8127.dtsi b/arch/arm/boot/dts/mediatek/mt8127.dtsi
index aced173c2a52..bd61ec7e70c0 100644
--- a/arch/arm/boot/dts/mediatek/mt8127.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt8127.dtsi
@@ -75,7 +75,7 @@ uart_clk: dummy26m {
 			compatible = "fixed-clock";
 			clock-frequency = <26000000>;
 			#clock-cells = <0>;
-                };
+		};
 	};
 
 	timer {

-- 
2.54.0



