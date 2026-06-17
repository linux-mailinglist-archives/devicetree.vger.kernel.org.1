Return-Path: <devicetree+bounces-312729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 87SpKJ0EMmomtwUAu9opvQ
	(envelope-from <devicetree+bounces-312729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:21:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F17696188
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:21:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ngWtH8wv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312729-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312729-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A7CB93028AC7
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 02:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89CF02FD7C3;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA172882CD;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781662872; cv=none; b=bfO/oXRarazdornoakpsayEgUisr26137JZktQAsZLrW7cBGlJrtAXuDapNPc8/mbdTwk9YFRHrukuVg3gk2CjInXXEzhucH/DGNuhP4hRiuDkLNWeERzNHRCSWEzz5F4S7Sayg1fp+hsyyCIiFO2t7DXbu1D+V/M3jIwS5VWqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781662872; c=relaxed/simple;
	bh=okVJkcSHdv1fcrHSQb1tZv36Onz2yNyEZIN6TeMJWKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=orTrvNvJn6FJuALodEdkW5ot3zQs4uqntQp+u2+kXcUUUdY3NBR6jb9HkWW789zUDYw36UlH/Mtmt6zkwbQRTyguUw7JWynV+QOIyAetdtjLNIYPEUeS6LbQ2TZrGGF1Tha8b0W6KyPnKu5ArQkV69qtZMl16ZYnpinz02LzTz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngWtH8wv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1923AC4AF0E;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781662872;
	bh=okVJkcSHdv1fcrHSQb1tZv36Onz2yNyEZIN6TeMJWKY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ngWtH8wvpOXfgKCEHojgD9Sr1IMhVUNuZu+n3bTUriqQcX0YpiePBaRhsLApaOsNN
	 slnG5TSqgWRC35wVLXyL+fDpGf0jYVHPjb3UJYT6OKcZlHSsL+Bz9qx3AV9Rbx7qlw
	 MG7JJXXZBQyxZqRa+9cNjlm9OJ7aTlCjumlxNC4waPW3h4y6I/In0Q/CgYihBVBoM2
	 DtbhGSzcdR5Xn3TtJR6aRyCdAC/AaMpcPaAoG/2FZf9aE/r7Iq8Fm9CAbfYZ/xZDwC
	 CN5yc6x1QKCAyuk4vq3+X8zOZI1WvSP2wHmZr3yTFMXCGMpNFUwpDC0db2Q4zdqi/D
	 QMoGNjjADwJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06009CD98E1;
	Wed, 17 Jun 2026 02:21:12 +0000 (UTC)
From: Zakariya Hadrami via B4 Relay <devnull+zkh1.proton.me@kernel.org>
Date: Wed, 17 Jun 2026 11:20:11 +0900
Subject: [PATCH 2/5] ARM: dts: mediatek: mt8127: Add watchdog support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260617-mt8127-amazon-ford-basic-v1-2-d02ad15ac359@proton.me>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781662870; l=804;
 i=zkh1@proton.me; s=20260616; h=from:subject:message-id;
 bh=VQZ++2hpaaS615uXsB1OWz8s3q+mSXl0RmexhIj1JJQ=;
 b=7rwtqv+oizSQabmlSevY4WbpbTst2BLlCJJWBG7WrtKPbQ9bPsyIEEu0s9c0rVp7leuzziRIV
 FJTxOfalaNFAcWNqU5OL4O0RSo9iNIB876MyCAJuNZP25Zu3ku+mVMg
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312729-lists,devicetree=lfdr.de,zkh1.proton.me];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sean.wang@mediatek.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:zkh1@proton.me,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,linux-watchdog.org,roeck-us.net];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[zkh1@proton.me];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,proton.me:replyto,proton.me:email,proton.me:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39F17696188

From: Zakariya Hadrami <zkh1@proton.me>

Add watchdog node and disable it by default as it was not present
initially.

Signed-off-by: Zakariya Hadrami <zkh1@proton.me>
---
 arch/arm/boot/dts/mediatek/mt8127.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/mediatek/mt8127.dtsi b/arch/arm/boot/dts/mediatek/mt8127.dtsi
index bd61ec7e70c0..1855dda42710 100644
--- a/arch/arm/boot/dts/mediatek/mt8127.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt8127.dtsi
@@ -159,5 +159,12 @@ uart3: serial@11005000 {
 			clocks = <&uart_clk>;
 			status = "disabled";
 		};
+
+		watchdog: watchdog@10007000 {
+			compatible = "mediatek,mt8127-wdt","mediatek,mt6589-wdt";
+			reg = <0 0x10007000 0 0x100>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
+			status = "disabled";
+		};
 	};
 };

-- 
2.54.0



