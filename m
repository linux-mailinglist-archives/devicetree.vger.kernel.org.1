Return-Path: <devicetree+bounces-276829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NMqD16iuWmiLQIAu9opvQ
	(envelope-from <devicetree+bounces-276829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:50:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FEB2B12D0
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE55330BA392
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1523F787D;
	Tue, 17 Mar 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CkzHPmGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00693379966
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773773194; cv=none; b=VqKFh2Gcs2FXWsxUQwoshM7s5KEu/hShfNRf2cg9PzSunGVEDVUIl0YC5gSYbZqgp1cgiGrzaLlV9os/fI+k58wZ+NV4CRMqclheMI4+dB9NjtptmSfwwBWo8nE0ri62w3dnqLPqHC+56VrAoeXBC1isDZ5bxjiNaDJRrnupI5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773773194; c=relaxed/simple;
	bh=Rm8YpEh5JQQnoCUNqX6MA0nwUURcH53A53KBf309gpo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WvHHPqZxjrIIdtBwSjXmp24PtoPAmpwAnjjjiQFUJbuCffWccxx0oCrkiGyHtUiXP+J3aI3LwJGhFt2TPDstcBf/iwjwSsO6+haAQb7ohIbtbOWhwcqfr65HPQqkWLD6pJhzEYo44zenxDE8wuD6j3C9YkEgOeZWdVfMwz+0bx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CkzHPmGW; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48628ce9ab5so14371325e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773773191; x=1774377991; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xx9XOFf+F102qRgcBU1Wfi3j2xvaU33q9Wk8R7lTDqU=;
        b=CkzHPmGWyASMqdFQKuXmso+vWCPYcDPbKacXTQJJbYYnUIisRPL6SEQculzvVNxiWl
         gZ/U+14qbKkDCSqpoLSPh4KmqOn5NwsOYjhrsfxoP60bZ58ZyptSVwIg2iyrmw32eXZT
         lqsRUrHrD4Pdj5iLbUVgxnPz5YuxhBlFGHkJ06WJsx70sJdN/SgPLe3Fw5vOD6ZMQhtB
         PY0y/ylw+YRReR6Bh5+Qndz3PSpHA306FQIpk9aMsKkIucihW5wMzqiGVvwLFTHyAPme
         EaaP315NoY8aJ7qZXRMPNBlZqfcgoh9Rug+IAUKp8b1ryIPaJ+2SZALc6FI1C3dhHoa4
         T9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773773191; x=1774377991;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xx9XOFf+F102qRgcBU1Wfi3j2xvaU33q9Wk8R7lTDqU=;
        b=RvfUsa72dATpE3Arcz8Uixr5AF9GRdrnnRB7W5VpXlBnyS565Gr/6yABqHF1nNpJfS
         JC1jk4cvsQdptRH0Vi8vEfTAzSCNu14qokeGg8qEKr0hK/R8pD3T9kiZvYNCpT1q5OZu
         NrtOcd00x9bKuLQuDppz9260f4mVhHo8YgCZWLBZbfk5zCigcEU7dzMIjxyyUP2ZBA8f
         mkHIfe/2fDAfSOhGiVL/jnZIMh6f7BzU6NQa5UduIOxsmqjyJfN4ZA51U6P/zKKmx66F
         HwRHf/fPLHn7Sr0m3phvoIWu7ACv5qwcg0d5a8YjDUP06l4s6oaQ4GB+vsUnhB/OJs/+
         eMrw==
X-Forwarded-Encrypted: i=1; AJvYcCU+gENIlVdiHQXbdtuU702PeBv1B2kegtGft0E/vTsci1EZ1y2g6VPMosxt0zdUgTqKxBzz9gO9t+9L@vger.kernel.org
X-Gm-Message-State: AOJu0YyXzj7m4YOEuZ7HFkvhS6jcYLvyZeMH8bIqDO4OJo/ws0vMoocp
	IiMnTy1iV1x0cQrgbVGSEFP1SBM8w/kan9x/jwJbxWlg0xl1toqzRroa
X-Gm-Gg: ATEYQzzxSd0PP/PkBSc07Zml+UHmDPRZVfvFSKU8+FQfP+h2hyERBs2pwbGI9aek6ez
	494Vi6kg5VGPWQmz1iE/CzWZUqNcoSt3W7yEOWFHp8L/eEVot0q7+kZZ09LRCvUkhbUtIgie0OR
	7JTjOA6Pte+NTOmeBzTuzk4PsBjM+BdpIG6SEvLtOaJGdzxFw/FrAzmDIzc4c+VWmhmRgVK3dhK
	bl5WgGcVu7Q+bbAjKNMVivi3q4Cmv8+Yp92daIcdUuAjd4wNpLpih88fIfbOrHksD5NaSf4Ll7+
	D9ovDtnrCh8HTw2uauCQp6Qxsiu4gpIShxr9fiWbIx4wSnRQKzCDME9pFVSnfcqpstVi6t4Enz+
	NaHkRDMVoc5ZBKfB5LG4E7M4nN/X8qa5n8PLMgvGeIboBdMqNTPwuvhK/Kdm/2NYGHv/FRtQ9/5
	lpcZp2mE2zNbuChKkKLdI=
X-Received: by 2002:a05:600c:a43:b0:485:5981:1423 with SMTP id 5b1f17b1804b1-486f442e6f0mr11506045e9.3.1773773191445;
        Tue, 17 Mar 2026 11:46:31 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4ba760esm102725e9.24.2026.03.17.11.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:46:31 -0700 (PDT)
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
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v3 6/9] input: keyboard: mtk-pmic-keys: add MT6392 support
Date: Tue, 17 Mar 2026 18:43:09 +0000
Message-ID: <20260317184507.523060-7-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317184507.523060-1-l.scorcia@gmail.com>
References: <20260317184507.523060-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276829-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: 97FEB2B12D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Val Packett <val@packett.cool>

Add support for the MT6392 PMIC to the keys driver.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
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


