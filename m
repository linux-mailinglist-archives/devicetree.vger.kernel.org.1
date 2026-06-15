Return-Path: <devicetree+bounces-311727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V+6UN+KnL2q3EAUAu9opvQ
	(envelope-from <devicetree+bounces-311727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:21:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D78D7684259
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:21:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=g+CeLBep;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311727-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311727-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9FE183009F12
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5AC29BDBB;
	Mon, 15 Jun 2026 07:20:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B4B3BCD2C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 07:20:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781508010; cv=none; b=syfRUyB6NZk7ps4SF4ISKF9sIsIle1mhWb2JWMaD1aa1OgqSBJp5bsvTxrdVJAK5uR2Z6L7XyugA4bz1uSc/qjvuYDBraBJqaUVtbf+wMc1AKoOp2YV5OYl/5jNqWeG+7oz6hbTD/cRt18toTCn8Zl4WPEzT+ZAJn9uKbfogRVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781508010; c=relaxed/simple;
	bh=2bZt2a2zRVSBV3MA0JWJ6SLazOmmGt1tpatOsImPFW4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n3hrzirTXjmY8UI+EN6Sp0+THvJnK8TgUh0eg9v40GV0EB6D0KGbwUWBBZNNuPbLJ/qhurv5cL9mEpR8aVWeTuXqf9xqyNj7Gf2pSdFiwJVuMa8xFO7gCl4U3m7xMwjVkBs2gYLQm4WWDitQ+kOk0iAsN9cbHYVppxwgUSHKXAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g+CeLBep; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-490ae94a89eso25913435e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781508008; x=1782112808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RzvCFyjr8bx4d2LvTNFN/pQ0QZHT1mGXGPc+CarTw40=;
        b=g+CeLBepzKb75Gvc/6kDeXUm7wIWCHcpUFR7NHWkOZZhvDpVYTC/ZWAVy73BQmOrop
         RmDQSXMI7rqSeLMQ20l/kBFrcpEEcKYy6OEAeCraMoMK3iRYeLBZ0vzPrrqHO0Lsl8me
         iO6kQjrfNtzAjjHHkgG7M59fBF1uMMp4AWbvis0dgatazdSmgp6GWl8ftWIdzQlDxVxA
         4lsV+sLvosy/7ClhEPcKq+AaM4ZoyxOTu6rRjg2ug1cT0ly/oi5iWitQR7ghbcz3Cw5I
         m+cmiAFoOtLSU1ya9QQpyvFoW1D6DXZ0Ik4jnn8zDF2hWl5TnHDVHfd3askIGn2fyzYL
         ozcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781508008; x=1782112808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RzvCFyjr8bx4d2LvTNFN/pQ0QZHT1mGXGPc+CarTw40=;
        b=c7bCL6X04TCblvWjjl7+GCiACTyz0DeNYKbP9TWwwx/NYAv7Vjlj1/mzawQPYD7ApF
         weSEk7CwSwAHeKh8e2HHXGyFFnEHIAze6RH7bkCLbX15dl875NAFQ49SJekfpyRaFORc
         rO4kRjV7O27AcutBQvBV2athRokWbVJcXC7GpkD+hXLqDJyxS/HGoDXjyvIRrcQNskVk
         h3H7e+PBileerGnHOYizCPwUn3Ih0WEx6oN8yS3ok8uzQsY1Cu4tHfz2JggCItWBOIba
         yblD3oMN0b3JEJV8o4cBrCRfzJPuTY5ABU7wnGSWmT6HnTR0DXSokVeaSxn0LaxP1Fcg
         L8xg==
X-Forwarded-Encrypted: i=1; AFNElJ/yAV0srPvfDs9yNJU36z3XWlkiK99hr5vCRdoU9X/IJartZ3LPLrUCdU1RD96CtvUsqc5ngX0VpzZc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4jr9dhDVG73Ifsy137sQolirnLBEJzNVA2CAoPVqnVLf2Tb5Z
	nm9kqjlRrTqvFrDq26QeHCYVaK8iQWbMzaGZHt4jzDOEcB2akkOCAh+y
X-Gm-Gg: Acq92OEGR2bAdRAPg7uOrSb9JquPtepxdjJfRkB1Ey8NiZJziZ8Rxt/IJJrVMqaaZoF
	fxoBzuG2zjcVTAKVXejXlYkaOv9bvFNxm/V2C2EM9SKDsfX7YqhAZvbwKWuMx/8wxlD1sJO71c9
	U/C74xRs1VyLN0kpyuYHx/gpw7PaW9qGZ01Sc545BIwvLkb2b0CWzg/3CIv5WwnNkCdNemW6o6z
	j3ZiJUqYtddn0riI3jj5egF1aRq2L32e1Sd9fvZGCJ4u2VyTg0qLdlkBzCuOpKBRcI/1WUqyuA8
	sZ4+pDdxG96ksR6MoosiDAidYfwXGcr636oCKHxQ5xeRNsfBfzJPrzB593AA0M+XLY5eTY1MsOM
	UoAOzYHBStqHu27gVN/yU6P8f6SL5VHrKCfnvsTYKEMZPGM2PJfAkEVwNTCu7MhmNsmzn3G5MJb
	c0dSOBKNzJdzHWcGaY
X-Received: by 2002:a7b:c7c1:0:b0:490:ba0a:1178 with SMTP id 5b1f17b1804b1-492200e7bf4mr83916975e9.28.1781508007746;
        Mon, 15 Jun 2026 00:20:07 -0700 (PDT)
Received: from luca-vm.. ([81.56.18.151])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492203c0801sm200181015e9.10.2026.06.15.00.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 00:20:06 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Akari Tsuyukusa <akkun11.open@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v7 6/9] input: keyboard: mtk-pmic-keys: Add MT6392 support
Date: Mon, 15 Jun 2026 09:16:12 +0200
Message-ID: <20260615071836.362883-7-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615071836.362883-1-l.scorcia@gmail.com>
References: <20260615071836.362883-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[collabora.com:server fail,vger.kernel.org:server fail,packett.cool:server fail,sin.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-311727-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-mediatek@lists.infradead.org,m:val@packett.cool,m:l.scorcia@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:matthias.bgg@gmail.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linusw@kernel.org,m:julien.massot@collabora.com,m:louisalexis.eyraud@collabora.com,m:parent.f@gmail.com,m:akkun11.open@gmail.com,m:chen.zhong@mediatek.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-gpio@vger.kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:parentf@gmail.com,m:akkun11open@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,collabora.com,kernel.org,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,packett.cool:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D78D7684259

From: Val Packett <val@packett.cool>

Add support for the MT6392 PMIC to the keys driver.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/input/keyboard/mtk-pmic-keys.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index c78d9f6d97c4..8b4a89fce4fb 100644
--- a/drivers/input/keyboard/mtk-pmic-keys.c
+++ b/drivers/input/keyboard/mtk-pmic-keys.c
@@ -13,6 +13,7 @@
 #include <linux/mfd/mt6357/registers.h>
 #include <linux/mfd/mt6358/registers.h>
 #include <linux/mfd/mt6359/registers.h>
+#include <linux/mfd/mt6392/registers.h>
 #include <linux/mfd/mt6397/core.h>
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/module.h>
@@ -69,6 +70,19 @@ static const struct mtk_pmic_regs mt6397_regs = {
 	.rst_lprst_mask = MTK_PMIC_RST_DU_MASK,
 };
 
+static const struct mtk_pmic_regs mt6392_regs = {
+	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS, 0x2,
+				   MT6392_INT_MISC_CON, 0x10,
+				   MTK_PMIC_PWRKEY_RST),
+	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS, 0x4,
+				   MT6392_INT_MISC_CON, 0x8,
+				   MTK_PMIC_HOMEKEY_RST),
+	.pmic_rst_reg = MT6392_TOP_RST_MISC,
+	.rst_lprst_mask = MTK_PMIC_RST_DU_MASK,
+};
+
 static const struct mtk_pmic_regs mt6323_regs = {
 	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
 		MTK_PMIC_KEYS_REGS(MT6323_CHRSTATUS,
@@ -301,6 +315,9 @@ static const struct of_device_id of_mtk_pmic_keys_match_tbl[] = {
 	{
 		.compatible = "mediatek,mt6397-keys",
 		.data = &mt6397_regs,
+	}, {
+		.compatible = "mediatek,mt6392-keys",
+		.data = &mt6392_regs,
 	}, {
 		.compatible = "mediatek,mt6323-keys",
 		.data = &mt6323_regs,
-- 
2.43.0


