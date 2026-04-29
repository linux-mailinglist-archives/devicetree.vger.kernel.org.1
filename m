Return-Path: <devicetree+bounces-291470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EZvMCjV8Wm3kgEAu9opvQ
	(envelope-from <devicetree+bounces-291470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:53:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2885C4925BF
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BB4030FE16E
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 09:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7CD3CFF71;
	Wed, 29 Apr 2026 09:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="b5bzCSib"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85D13B6343;
	Wed, 29 Apr 2026 09:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455918; cv=none; b=YQRk/ll+e33dwpkU21uuOpIlAVB/cfPmNFvpLx9s5whwKMXqY90HbT3dlRrAgBJuu9nbvVCYcqEonPvK4F55J6kaoXwZnYrUG+2ii80tuWZlxr0Jmm3lJE9IOT4jhaYcZjdjTktkn8xTR4zPjmXh78twhF569wmT7iSeypeXmz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455918; c=relaxed/simple;
	bh=p4MEP3L9VNLH+Cn6kf0XMFEk+CAUCXfGyjdiWLKVOEE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QzzqJDstSrIJDC10qr3KImwSm4RFPavfKZqU069qnv3fQXk26ELaizrlsiyCKieJo+U5+B83OcIjA5DLWC+PN9i2KFJtFalBThDUB8iN2Ehjhp40CdyS6i/e3NZcnkLLq7yn+IEHHlY+CFUWmlXZxJwxa3GknVdBMICBB52lJHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=b5bzCSib; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777455915;
	bh=p4MEP3L9VNLH+Cn6kf0XMFEk+CAUCXfGyjdiWLKVOEE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=b5bzCSiba6tK9CUjPmhvn1T+PgQq3MjNvuYZ4H3L+/vsVyx6kYRFcZKf5q0cfae5P
	 fByVQ1fKkRhP5MUyQ6aZjgFJKXklPBF9NqJ9xnDGIFoy1H82wUHL6wROEfjicz+mKQ
	 vzer26wraCd1vmSROgy2EWi8OJOYj7EeSuLVLFWkc8HrwbPi46+Zr5vB4AAwadgVpe
	 rQfQJ+CXou71qOu8zT6nViB1Z+9tcRRRd47ua8pz5RcQ0EZjFSHeFfurQkmYf2/8zK
	 MKOsQNr73/OllDziu9kd/7UFlZBL6DrWTgEIypYtSHbwCzqg+LRvQhAEbZ42xLzPKX
	 tlqB4nfNsja7w==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7A56317E0610;
	Wed, 29 Apr 2026 11:45:13 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 29 Apr 2026 11:44:19 +0200
Subject: [PATCH 6/9] arm64: dts: mediatek: add MT6365 PMIC include
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-mediatek-genio-mt6365-cleanup-v1-6-6f43838be92f@collabora.com>
References: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
In-Reply-To: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
To: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Chen Zhong <chen.zhong@mediatek.com>, Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>
Cc: kernel@collabora.com, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777455902; l=1462;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=p4MEP3L9VNLH+Cn6kf0XMFEk+CAUCXfGyjdiWLKVOEE=;
 b=cIv7I2oDrc2JeH5kitdA6FjUHF5HnTzvYLV7Djp0ttLAq3CM1FKLVVWIf7qy9RvUrnOD7cS67
 IMOa8qDeh3bAbe6YP9lUpIOSX9bFBFZFKuRYMPqkvYElwVEN5z5acWy
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Queue-Id: 2885C4925BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291470-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,collabora.com,baylibre.com,analog.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

The MT6365 PMIC, compatible with MT6359 PMIC, never had its own include
file so the boards that integrates this PMIC used mt6359.dtsi in their
devicetree to enable its support.

So, add the mt6365 include file for the MT6365 definitions and labels.
In order not to duplicate all of them, make it include mt6359.dtsi and
override the compatible strings for the MFD main and sub devices with
the MT6365 ones.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6365.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6365.dtsi b/arch/arm64/boot/dts/mediatek/mt6365.dtsi
new file mode 100644
index 000000000000..ed4e349f63c9
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6365.dtsi
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2026 MediaTek Inc.
+ */
+
+#include "mt6359.dtsi"
+
+&pmic {
+	compatible = "mediatek,mt6365", "mediatek,mt6359";
+};
+
+&pmic_adc {
+	compatible = "mediatek,mt6365-auxadc", "mediatek,mt6359-auxadc";
+};
+
+mt6365codec: &mt6359codec {
+	compatible = "mediatek,mt6365-codec", "mediatek,mt6359-codec";
+};
+
+mt6365regulators: &mt6359regulators {
+	compatible = "mediatek,mt6365-regulator", "mediatek,mt6359-regulator";
+};
+
+mt6365rtc: &mt6359rtc{
+	compatible = "mediatek,mt6365-rtc", "mediatek,mt6358-rtc";
+};

-- 
2.54.0


