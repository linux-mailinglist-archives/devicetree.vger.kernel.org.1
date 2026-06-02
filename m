Return-Path: <devicetree+bounces-305565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH2HHh+yHmr7JAAAu9opvQ
	(envelope-from <devicetree+bounces-305565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 12:36:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A18F962CB45
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 12:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D9970304EDA5
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 10:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2DA3DA5B3;
	Tue,  2 Jun 2026 10:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OCO5KFgs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7D33D968D
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 10:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780395409; cv=none; b=j+88rZaYI7ymSORG+akIKKCVqhKZ5uFSETyc9aJ4hXhG2Pra9F1h0tpEhGXcqs8fm7PkEbGgIDoAmOVxn1j/UwcQveQBkRRIRq17NWG0bAmCUDVe8algsNjrRoTPOkosaQMPwsQ4e6/dyLnngbZA2U0NvBhUu8A75NEW0+jLXWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780395409; c=relaxed/simple;
	bh=jLLJS63DmaW6/N5p/t3mdPzRbOoNEcIP/BNYCgIzYbM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C3AH6Nb/Iz7a/26Qm6lw+MjV9al3jSV2FHElYzM26p3LkSqLaRXXipo742LoZzfjguS1oJyWMGwdYcAFXSZ8aILmNz/dwINJbT+FXrnKcz+K08mZCx2kvIAHeLTL6Zlex5nCG+wTxyZXOEmZ3eZstMZMPAxHK/IvlIh8Fa2yINI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OCO5KFgs; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf20f6be6bso23755305ad.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 03:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395406; x=1781000206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zlqWTxvd2nybMb9oOkq3B+WZ2+KSO9DV36s9D60SrZ0=;
        b=OCO5KFgsWDtTd/4CHl4JEMzWtt5h8mWhi9Bz2OnEzsi12PddUsNjjLjTunolulKAdS
         pqGxgoglTPnQeTap04YEXV+0Rvzg6pWiCk9NdMCUnjLDOEiagk2wGf1h8EWiv4X56fF2
         fzId7wy5xMBmr3AV6Tg5DUF1CZiiIc8qXzXoB6qPbsiqy4h3o90s3eLx8EzGFXV0XlOE
         GI+DO+UUGAUT9AM5fXlmnN3PFAFAAO9RjZLgNLZ6raysWQeirKAz9mcCou2/Gk0O7y+T
         Lh2EZ/E+s9WXrLSjYBH4GBjHB14c6oyhodWgqaUvVjnTEg+XG6zyONL9GkBZwcYc8cIn
         SrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395406; x=1781000206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zlqWTxvd2nybMb9oOkq3B+WZ2+KSO9DV36s9D60SrZ0=;
        b=LasLZ4SHtCsNauWIlVfaDZzVRvia5hWWoI7Dlv2Eq3pwV9wUjNeUEbJ042+wlsBBOx
         bFtYhLbzFa85xDd9D269Jx8oxmalM9v9etakzlap8yrS4P6r23iZPqkj/PTNyJ2M3A7a
         qja/rGjt4JyFDBwOMB+1Yu+h6/dvDn0BG91Gu5lKQetFb+uqGTFvtf0a1tE4Dv7Ydrdp
         I+8i9OQyr7+rkOBc8LNXOV5vWhewNVoPecfXgZm3nphd4thf6dk2U6a62FXp0d4ivykc
         v4eSo12oMMvJa6Nd/UZQBgYajYJd8NllWD3Kk/fOWvakI4TpLuTXtJIddz5v9waEct/Y
         twUQ==
X-Forwarded-Encrypted: i=1; AFNElJ9WVL2x4nZKM1HJ0kjoqsyOvEVme+BoMVMi+UX0TQG/iBopCLvV6mhJvngJ0kYgOXxpqwwcMm57Zm+b@vger.kernel.org
X-Gm-Message-State: AOJu0YxEeoFP0KdyI5REYy0f4TQBMgbx1sOTEdwmjPlt1G/vugCjyiKV
	9YCZAUIg7/Ha7axMVf7B5lkCo6SJdTuAlItpK438xExPMhcSyQbXTFro
X-Gm-Gg: Acq92OE9UN2E8ZYlch5A3w6u77t0zNlJId9P8Uu5T9tQ3DTbMcUD+uBjG3GlW88el4F
	VJFXHnOdj5t/ALNCtPIotRhBkkknb0OoU8bOgVIf3IDe1zXNvLfVbenuKwnBidta+CaJBQp1NVH
	+6/aepG7h9i0jWxujIQU6JgOG5NPM+OJatxHSichSJ8gV9fCtfOawFVl1llrn6o3g/Whxcg2aWD
	TtAv1TZbr6mXSNc/SkKIZ0bRQ0fI+PdirSp0J9NYkwdgU+HK5MvBoObfux9Lx9HXo4UBqlP1Ndp
	7zQkxd1SBqc4lS7KrGSa4ylCvLI9xBb6uS9ccOkdU592SEZnsJ5MdEuqyUgEiipigBK+Lv/FC8E
	MfxDaP9faKBuaQD0qdRMeXj+124OGWZdsPjrMxaYELuNT+3S9sebq/PhedhvQZ2b9F3M9zIwInI
	/X5SW/SjSd1vhHLp+gLK5nmL6NIYRBjLcYdrN6yNy0XImej6AD6EWsLJAVo5sL3C+apVIt
X-Received: by 2002:a17:903:1983:b0:2bf:23cf:3e4 with SMTP id d9443c01a7336-2bf367d9da0mr164110925ad.17.1780395406357;
        Tue, 02 Jun 2026 03:16:46 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:45 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 2/5] ASoC: rockchip: spdif: Reorder clock enable sequence
Date: Tue,  2 Jun 2026 17:16:05 +0700
Message-ID: <20260602101608.45137-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A18F962CB45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305565-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,perex.cz,suse.com,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[sntech.de,kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Enable the 'hclk' bus clock before the 'mclk' controller clock during
runtime resume.
The bus clock provides the register access interface, so enable it before
the controller clock. This also makes the resume sequence the reverse of
the suspend sequence, which keeps the clock ordering consistent.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only. Please help test if you have 
    the relevant Rockchip hardware.
Changes in v2:
  - Clarify in the commit message that the resume sequence becomes the
    reverse of the suspend sequence.

 sound/soc/rockchip/rockchip_spdif.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 581624f2682e..8de5b76cfe79 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -76,16 +76,16 @@ static int rk_spdif_runtime_resume(struct device *dev)
 	struct rk_spdif_dev *spdif = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(spdif->mclk);
+	ret = clk_prepare_enable(spdif->hclk);
 	if (ret) {
-		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
+		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-	ret = clk_prepare_enable(spdif->hclk);
+	ret = clk_prepare_enable(spdif->mclk);
 	if (ret) {
-		clk_disable_unprepare(spdif->mclk);
-		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
+		clk_disable_unprepare(spdif->hclk);
+		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


