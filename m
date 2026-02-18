Return-Path: <devicetree+bounces-266335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOMeKEiFlWmwSAIAu9opvQ
	(envelope-from <devicetree+bounces-266335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:24:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 268A6154B3D
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA66C305CA25
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2F633CEB2;
	Wed, 18 Feb 2026 09:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="RWACkuJk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B619833C502;
	Wed, 18 Feb 2026 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406631; cv=none; b=KDy4N/noLsqToKKQig3KTHFI+YFGHv9EZ4YCbsSsk70K7i+sMLRwoSFfMnK2NmN4T1Sdw4aauxsNwkdDEAIj9IMdWaR7AyX9cENBXMoZJt3DaFoarw1QwRzoNZ+gAuFxhDaZ/kg1OkxjX3xGEjYNn64o9HmPESabn0QRYA4lEKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406631; c=relaxed/simple;
	bh=3D8WQoaBuVJDthUioSmU/QbK1HNlGUVg/GvxA17VnHg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qfZWaPVTwvEUMSBDUZZ3Q+OHPju+PTKtBsEAtUoahFmtgdW3dIe6vJQ/TCnj9dPZzYPZpVEAsc6mCqMXxJVTgiDNX+GsPQHZKHKBlYyNdbbOlBbWou6dTUZTXTHObIcLsUBlFtHnt5brEs7x6FrJ+6lSg0rxUmDdpQu436qI0S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=RWACkuJk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771406628;
	bh=3D8WQoaBuVJDthUioSmU/QbK1HNlGUVg/GvxA17VnHg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RWACkuJkTlXZPeSXnL+tY30C4VGAceUv5SzxRhe+9SiplAir673BtIw2wptGl00/Q
	 ee/dzMUlIS7BQjrmKVxMNEz+KzT9H5anSm8h2l1KjlfHvvjbMH+nlxZoDOh3hBlt+W
	 OtKC9HmjhR7k6SNSx9HTQd+vf7M1C0jVWUCmcDbrQP9icuAst3FRWpQIzc2sXfHJGa
	 hwb5ZffJJRzvmGa981pk5Kp/8NlumcFZCMOLbczD2T9pwkAVHdOgN5oP8WWr8nBoc8
	 e//LMtRijgKHVrvDy66bnzt6zbJyafTQ+yRsyp86epGFwhp6X2lQVRDTiH4gIeKb8B
	 icXE6YMF7AP6w==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 90A4517E1525;
	Wed, 18 Feb 2026 10:23:47 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 18 Feb 2026 10:23:04 +0100
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8365-evk: add mmc aliases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-mtk-genio-mmc-aliases-v1-3-e218e9f771c5@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771406625; l=944;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=3D8WQoaBuVJDthUioSmU/QbK1HNlGUVg/GvxA17VnHg=;
 b=yB9pG51AuwxoABSH+RUS8W4fd8hH0d+dPkxrerms0/q3Nd4Lr62aMB0tiYKwkScgLkZhG0T25
 rvhaM/RPAmABerlsIJQZl/2oWuf5CMEvGbIxxQ2WyJib/R5E3/pbfBd
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
	TAGGED_FROM(0.00)[bounces-266335-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 268A6154B3D
X-Rspamd-Action: no action

Add aliases for mmc nodes, so that the eMMC and SDCard host controllers
get enumerated in a consistent order for the Mediatek Genio 350-EVK
board.
Also, reorder serial0 so all aliases are sorted alphanumerically.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index b5dd5ef9fa11ae1d54aa754325bac2e184b90dd3..a30ee523b0b587977f9427767d09b21894eb7ae3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -20,8 +20,10 @@ / {
 	compatible = "mediatek,mt8365-evk", "mediatek,mt8365";
 
 	aliases {
-		serial0 = &uart0;
 		ethernet = &ethernet;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		serial0 = &uart0;
 	};
 
 	chosen {

-- 
2.53.0


