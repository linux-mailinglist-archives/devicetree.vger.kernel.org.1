Return-Path: <devicetree+bounces-272047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIl5HO7EqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:13:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAA42204BA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:13:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34A8C31172B6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0385538F24E;
	Fri,  6 Mar 2026 12:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q1mzJZkG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9686338E5D6
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798819; cv=none; b=bEDbHHLHwjD1/iaYTFmiBrydULDVuDqi+AOQUjDYKAQI3cSpfkHgQkqJyGVXdUcXvIAwqbKmg4ke10sofMQY72kHwU4MiDOx8aFbx8X/1i12o9QYsXFEJZHzlBv5ycvyTjUhqW+zdTQtw21+jQnQ7AP3u9UrrRNjABShRtP1GhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798819; c=relaxed/simple;
	bh=BMyjA2CmGChdg1HJ8bO7//vNQzLWGBKCzzTI2pGO3F0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a16i8WwAV/YFhSxZ9umy8XHH1/gcaR4c1Nvce7lUKALN6w9YeRS6l48fE3W8L62oc3Hmck6Hsiz63tiHzcpE/jIFZHu3DVOte07YK8ehgSnU+gVNgb2G18Yr+VUSMdRfV9DGmR3nxqhdx044GUlTo85CfDltOW4qF+JiD2Lv3Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q1mzJZkG; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-439baf33150so4291284f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772798817; x=1773403617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97jIgM6P/d9EfNIE9WeYwD3m3n8Lqle2XokpQhzkWdM=;
        b=Q1mzJZkGgzNN/vrE9aIIUsbD/BQUXkx+ieGWACw3XHC32AeNzB1GCM2pt5507q0d40
         X+8nzqwLOX3NM6pAR7T7yL6u+d8+qMJyKo1KmRrSX/aVQLoLT5y1VOPBi5yjGqJCrFG1
         WN+yAVkWyo9evBheTg16N9BaFr+SsgSSr47sMA4sdg9iARthEuyk1qSsxGRArpi36f9O
         amKRK7ZegQDRLekrEVMloxi15IpSFyzDv1T8thn1wIOe8AUd5ocMGzdVST18qm1PPYbQ
         vF0T5XPbm5j1YrACuYOQH5XOqUi/Rsj0pTzfJHpuJlqH3MQSl+q/M9LLUmr1VCQfESUR
         ngaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798817; x=1773403617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=97jIgM6P/d9EfNIE9WeYwD3m3n8Lqle2XokpQhzkWdM=;
        b=iYUPFB/LxdV8+uFE4hdEecXLpGRCP6RrwlQZXV2xB+ThfRRepX3dRSoeUx1WIpymhW
         8se+s4OLkjcAxUi1HmwrV364rhwoupvG/MR4GoYcR+5v1yTqezu5dpeP+JV18ON7Um4o
         msJVFiuajsDPZFTqcg58pNG0XuVixtrFDiQM3q9aMWXooTtlX4rPBumOvjaBzJEZffyb
         cmEOInrPG/NM+g1MmVJkUKJDEm/Dra5cgTqmezP9xu5OPYD4A/zt6Vq78THsfanL3Oyy
         RTh58IHXNYR5R1KT5JDR0BeyiGo2t61uv8x8jvtZ+At/JbVyxlCxJBUDI6o2itW5SNpP
         Qe1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdrYLRZtGQcbqU//r+64k63aTXLfdwRQlhPaZN0Zd6SaFpPwg/D2tPc3LR8wf7UcPYnmdw3bWnbE92@vger.kernel.org
X-Gm-Message-State: AOJu0YyJaJ2e0qcW1fzggLNsQUK3WapuTeW9nVMGcZHDRWEZ4DbMC+Rg
	qvDUmn3UJUl0TSEEz5aO8yJZTrp4YZTckJRbvnHZbUYAXljQt8+NP50S
X-Gm-Gg: ATEYQzxoavTVFsZ059UNdxsvrfFE3tGTJhQeTrDADH0U9SuSEqLC5NlvjJxYpwKcpaY
	AuwwFqKtb6k5CsqsWr6lDu7iDgj7BgM7GxMB52fJ+8ZF/klImMqg/nduRkhp07D7w++oZwj22kz
	l4t5lQTWzrayDYmxZKQhAtz8POqQjFpnOuVf5Dz60eQCmWBula/Vy7GJN3XlxIsfL9tZSnMc76a
	F0HUb3SUx6tbkxxvPFY5r7/XM5iQrBEqDikqLFmQyef39ZdIjmosIpRGf7ZhOPIvP1Lvb3iKpYs
	j+EZKfL8ZdML1Ko+6o/wvkbJ1885wO5M+ZEEJwDZyQgbOFaH53VYKwlKZ0XJ0yXIS5El/oCa/9f
	w8PZ72cuMLBHRMQYZx9QD+YCzPOkg7JN5U9iqQFzfe9ceiWatGK1ML7cqMY8X4d4vn/VUrWh/hr
	zCpYEZ4Bg2eiGmjvt2N7w=
X-Received: by 2002:a05:6000:40df:b0:439:c018:60e1 with SMTP id ffacd0b85a97d-439cfd76d02mr10149414f8f.21.1772798816912;
        Fri, 06 Mar 2026 04:06:56 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm3457225f8f.21.2026.03.06.04.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:06:56 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/7] input: keyboard: mtk-pmic-keys: add MT6392 support
Date: Fri,  6 Mar 2026 12:03:10 +0000
Message-ID: <20260306120521.163654-7-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306120521.163654-1-l.scorcia@gmail.com>
References: <20260306120521.163654-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1DAA42204BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272047-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Val Packett <val@packett.cool>

Add support for the MT6392 PMIC to the keys driver.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/input/keyboard/mtk-pmic-keys.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index c78d9f6d97c4..3b9a5b6bc470 100644
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
@@ -69,6 +70,17 @@ static const struct mtk_pmic_regs mt6397_regs = {
 	.rst_lprst_mask = MTK_PMIC_RST_DU_MASK,
 };
 
+static const struct mtk_pmic_regs mt6392_regs = {
+	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
+		0x2, MT6392_INT_MISC_CON, 0x10, MTK_PMIC_PWRKEY_RST),
+	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
+		0x4, MT6392_INT_MISC_CON, 0x8, MTK_PMIC_HOMEKEY_RST),
+	.pmic_rst_reg = MT6392_TOP_RST_MISC,
+	.rst_lprst_mask = MTK_PMIC_RST_DU_MASK,
+};
+
 static const struct mtk_pmic_regs mt6323_regs = {
 	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
 		MTK_PMIC_KEYS_REGS(MT6323_CHRSTATUS,
@@ -301,6 +313,9 @@ static const struct of_device_id of_mtk_pmic_keys_match_tbl[] = {
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


