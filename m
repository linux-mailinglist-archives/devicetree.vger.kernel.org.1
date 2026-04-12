Return-Path: <devicetree+bounces-286790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FedyLahk22nGBQkAu9opvQ
	(envelope-from <devicetree+bounces-286790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:23:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1AF3E341E
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BFD4301113D
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 09:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89A313164C7;
	Sun, 12 Apr 2026 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="PsOOc1Rw"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout4.routing.net (mxout4.routing.net [134.0.28.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5592027470;
	Sun, 12 Apr 2026 09:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775985829; cv=none; b=i3x9bsTEDBDVQT2sPIMcrbNyaR5Stw2RwDEnFEX3y+ie9GP5kSu4sCdiQuRscJhfQ53QilTxHh3Qbf8uicRgpefzwlWXZzC9fI5KTqMhUEPwmANC2GKUk4WtdCils3f1UePT7YB2zLX0WAt8HeNPp+an5xoRvu9GqFX0V0ydSj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775985829; c=relaxed/simple;
	bh=9J7OPBlJDXazcZhLjHasGzJDx9zdqtuy/wXdbvn0dZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ETblZPzJ7YcViWzacvudoENTqzzQgkpW5rY6gQDsGFFDX0FYi1w3qE04yrtV+5Rh0mpiNKsJmwZm4/+3aCzBTZxJ/zg94pyaMBgaVyND1kvlfqLXtoH4/cnhmWAMfBn3pI8M3OBijO71rQSpCkuPto1HPKmHwKDHzpInj6otZ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=PsOOc1Rw; arc=none smtp.client-ip=134.0.28.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout4.routing.net (Postfix) with ESMTP id C7897100605;
	Sun, 12 Apr 2026 09:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1775985819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pk8wmr9hwiEMZRX2cINqvbziX6RPyqj0Zoyleo3KFtk=;
	b=PsOOc1RwdABs3euMq+yJKe4a8e4jNwWREcGzQW1x1wkee4G8wMjCsxrxrrCPspn98k93ES
	SvyxpCLMITqQPQp2BPAlSzPm7SqHqP9i8nD7mVtfioJJzzdsqIi6n2j8BJb02qbH+qJuBl
	Ux52hxG9STp3coYEhasM+/JohfDf54o=
Received: from frank-u24.. (fttx-pool-80.245.78.225.bambit.de [80.245.78.225])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id 9FFF11226B6;
	Sun, 12 Apr 2026 09:23:39 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	Andrew LaMarche <andrewjlamarche@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: mediatek: mt7988a-bpi-r4pro: update gpio-leds
Date: Sun, 12 Apr 2026 11:23:31 +0200
Message-ID: <20260412092333.6371-4-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260412092333.6371-1-linux@fw-web.de>
References: <20260412092333.6371-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[mailerdienst.de:s=routing];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286790-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[fw-web.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[public-files.de,vger.kernel.org,lists.infradead.org,makrotopia.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@fw-web.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailerdienst.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fw-web.de:mid]
X-Rspamd-Queue-Id: 0D1AF3E341E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Frank Wunderlich <frank-w@public-files.de>

On the official case the red LED is named ERR, the blue LED is named ACT.​​​​​​​​​​​​​​​​
Reflect these labels in function and set them default off.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2:
- dropped default-state as suggested by daniel
---
 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
index 759f608d1081..bbd6c16a8cb0 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
@@ -61,14 +61,14 @@ gpio-leds {
 
 		led_red: sys-led-red {
 			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_FAULT;
 			gpios = <&pca9555 15 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
 		};
 
 		led_blue: sys-led-blue {
 			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_ACTIVITY;
 			gpios = <&pca9555 14 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
 		};
 	};
 
-- 
2.43.0


