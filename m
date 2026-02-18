Return-Path: <devicetree+bounces-266334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJyENDeFlWmwSAIAu9opvQ
	(envelope-from <devicetree+bounces-266334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:24:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 689B3154B2F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C82C930358A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E36E33C52C;
	Wed, 18 Feb 2026 09:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="W134a5d1"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38EA33A71F;
	Wed, 18 Feb 2026 09:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406630; cv=none; b=RPDKM8XHFGADzhq+iQaon91RtIvV4s6tJxp59IsCqvbomp+x3pGqATjRgwagtaUYxlAjuzXPgBMWqD3r2DYRi5mJsvwOoPiWGJqv6UijOvX6NejztQZ4q21M9d2KE6AfxQvWO9eUooH+AonmPx3CLOsQ1laYsZkdSRClsCRfhZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406630; c=relaxed/simple;
	bh=OtiUP6H58bH2B9BYy78Cc3KDhijHLwzAQd8zkOtzvMU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ji6JRgdEi0JrG/oFWnnzwbm2J/CxTQV2+wNoCMCGGm/4UQ2iP2OVHAN0cSWH8gQUNBYyDC3mDcI4JW7Qt4k48xLaHGonMJd8Jn+ArEG8IKlzWzIqVQ64dInCDfZOLZm4/bfOkCapXbj9f04XjelKwJME2mzBMP2SqBTUsNnrJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=W134a5d1; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771406627;
	bh=OtiUP6H58bH2B9BYy78Cc3KDhijHLwzAQd8zkOtzvMU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=W134a5d1nCr3rz3gQ9cU1YPNqo9zbncRoff22hQKRC6YU2kwccf8t2bgy2BrV9LO7
	 34u9x2mHP8krnFGEVfKzWgHiRrflSrpNPh7GzCS5DRujKO/vXLcifXNXwKI/EyCPH8
	 NaWL2Ja1GhCy2tSm/Flnt7GYu0jiD+fd7Stl44bNOqnhq0XWWdymx/+6KgKFwHE/Dd
	 oRw6VO3BjEKXUK/uHjsPPXfdscbCIpDKBUlzFb5pG9PmQACciL4lmJO/qmY8giEOMK
	 gTkAopoI9cescVVQ9pKhY1w4BqbYJIDrUAyWkmqnFffRKOmIYqGLSMlG7u0U4JbaZA
	 KMgnYD8S8Mspg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CE69517E1523;
	Wed, 18 Feb 2026 10:23:46 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 18 Feb 2026 10:23:03 +0100
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8395-radxa-nio-12l: add mmc
 aliases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-mtk-genio-mmc-aliases-v1-2-e218e9f771c5@collabora.com>
References: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
In-Reply-To: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771406625; l=1105;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=OtiUP6H58bH2B9BYy78Cc3KDhijHLwzAQd8zkOtzvMU=;
 b=jNPAyn/57bzsJ3JvieHVUaGkG5TcF3dpmdD02u83fU4/ccye/1j5aNS+YlStqYYL4PYP/K3nW
 qwl0SNoBO2qDylhRWsivy0pu9MXbsvVl2i08SwsQBqNxgRlCW1io/yS
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266334-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: 689B3154B2F
X-Rspamd-Action: no action

Add aliases for mmc nodes, so that the eMMC and SDCard host controllers
get enumerated in a consistent order for the Radxa NIO-12L board.
Also, reorder ethernet0 so all aliases are sorted alphanumerically.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index 1cd4b84e98615be6c5cb13d01b7baed0e017c3be..bf91305e8e4a5d49d438e43b7e6f2e6bbbff5bad 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -21,12 +21,14 @@ / {
 	compatible = "radxa,nio-12l", "mediatek,mt8395", "mediatek,mt8195";
 
 	aliases {
+		ethernet0 = &eth;
 		i2c0 = &i2c2;
 		i2c1 = &i2c3;
 		i2c2 = &i2c4;
 		i2c3 = &i2c0;
 		i2c4 = &i2c1;
-		ethernet0 = &eth;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		spi0 = &spi1;

-- 
2.53.0


