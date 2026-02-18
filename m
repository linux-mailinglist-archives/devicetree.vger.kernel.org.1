Return-Path: <devicetree+bounces-266333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oL/DJyyFlWmwSAIAu9opvQ
	(envelope-from <devicetree+bounces-266333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:23:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C88DF154B1A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:23:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37DCA3006084
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7819333C1A6;
	Wed, 18 Feb 2026 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="T6TesFBg"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C6F322537;
	Wed, 18 Feb 2026 09:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406629; cv=none; b=Focz8L4ZymHATarFGzsWIPIMyL+VWmIJJjZ/07cZ/toUgy1a101ezO3TUx3zYCPRXOR6X5ZyR7hQ75cI7KtM2waqtwDcw0+/SjdTV3Tic8vTbRC/lbzP7Y2ucuWNB+SRdAOwuBo5VUeeSwiejgqjbhO9+9U5D+PjcuWzxWMVoq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406629; c=relaxed/simple;
	bh=TgZ+DLlkvLfG/Wfxf7z4TGRSZUBz59EnjarV2GXABeA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gmlnebWgsCeNbzsTTQaDAFoXPZd6QnW9Dv37dBYf1thOO5eJdqutPYqA+x1GksXTi4vp1adaqR3wGTJeZ6MZu/2FeXeIKxOytvlyTbJnFTvPVyUkiXZLs0h8NMxrUKlrybdx2EuD7qIp7HpoV+HzlZQ7KcezbssOSOvyJRrwFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=T6TesFBg; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771406626;
	bh=TgZ+DLlkvLfG/Wfxf7z4TGRSZUBz59EnjarV2GXABeA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=T6TesFBgmbUrvso6N2iOElT4oWluAXQOvDR0ZTUSHIUQYZcj+rj/iP3j3tWnKtPst
	 /dCTBe5HanA04bbDQHInRQwTv94i+r5f7rokILjGgeSF5k8TJDkx4A/7dADlg3Lfys
	 5RiyKalaJZs7xKGsHP1quNA5ic5KUJ9Cvc0yUE9qv2IDfCq2RZz+Prb+gRkZ0LUbjR
	 EK7dBOYOtnz2QcRVeCXTktBDk0fum1dk5Y1Dex1RPvqXaiinvAps13IrP0wbuR21Fe
	 8U4Q5dedO75uW4ZXGvfwiRCXp6lwkNmt+kHWPdtmX3aZoHwRKAGxwaujw26ZYPYrk6
	 PJCn9OHCZaXDw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1616617E1301;
	Wed, 18 Feb 2026 10:23:46 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 18 Feb 2026 10:23:02 +0100
Subject: [PATCH 1/3] arm64: dts: mediatek: mt8395-genio-common: add mmc
 aliases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-mtk-genio-mmc-aliases-v1-1-e218e9f771c5@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771406625; l=935;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=TgZ+DLlkvLfG/Wfxf7z4TGRSZUBz59EnjarV2GXABeA=;
 b=kcFqSvWw1W77FScjAqh+wdOWdReQD8Y4we7M3J6IUP3SdpJn0FyJ/X9PBpMdsh1IDeLR6jK0D
 Wy6ADJrF+zGAfpa1sHMWjI39Ea1GUmz8/Zfi+JkjjbmhL55S53X8tEm
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266333-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: C88DF154B1A
X-Rspamd-Action: no action

Add aliases for mmc nodes, so that the eMMC and SDCard host controllers
get enumerated in a consistent order for the Mediatek Genio 1200-EVK
board.
Also, reorder serial0 so all aliases are sorted alphanumerically.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
index d849af4d36134df6a7b9f7967efd0db13c372d7a..62c336e215009e03cf9aef9aa099228aba5918cc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
@@ -18,8 +18,10 @@
 
 / {
 	aliases {
-		serial0 = &uart0;
 		ethernet0 = &eth;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		serial0 = &uart0;
 	};
 
 	chosen {

-- 
2.53.0


