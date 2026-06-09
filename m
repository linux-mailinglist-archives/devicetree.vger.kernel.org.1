Return-Path: <devicetree+bounces-308574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FSbuM7ltJ2o0wgIAu9opvQ
	(envelope-from <devicetree+bounces-308574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:34:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA9765BA92
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:34:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IIkLMIfy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308574-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308574-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DA8B305CBE7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B265C1E0E14;
	Tue,  9 Jun 2026 01:32:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F46345CCD
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:32:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780968733; cv=none; b=mohJFdeX/dMIV3bmm2APb8kvyqOXYxkKU4P2Dzh8/ko6zzJSC9eMRuMN2Sc0msU/jqd8hMKyXUjwTgRw7yNx6clsC5qnGhUaMqcoIKSERQhUe2cxj67Xf0oW/s0DdKBfDKuP7zH6yLmrjdXXIWoOScds7L6xP1fN37e7nqfUxyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780968733; c=relaxed/simple;
	bh=bx/xL4uOu7yvgNYhnektr0xaOZz+gXIRdS4GkyGOK18=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i6pPk3B9Lhf5jxT5mPxlChJgD9ebEuBxFhf0YAYSbUrvfKjnpTAOLC8bUOrpQSFrYniK4NjRZnH/vqMW6mBXW7s8UH2GDTdTq127lCxEgbKjNZ5RqQSw6gUwHPYbPOS+EQ9ZQSbULThiQWa1nw1J1QCQMHuMpaqM+mES+Ef+W8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IIkLMIfy; arc=none smtp.client-ip=209.85.216.43
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-36d98c9b596so3061646a91.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 18:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780968729; x=1781573529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mt6AAR2A7+1jbWMkZsxSOAOfyL+coLl7wIQlASDZaG4=;
        b=IIkLMIfydhs6McIfCIlFNSN+hwhkKjuLJoEgoroRojNzONcs188oTb4+w1AH5tr2DG
         0RBdbITuYowfGx6uATdZNtcKVESHhgQtfRUFbm2+oEgoU9bx5/pqCMPrO+tnagYic3jM
         iM1dgYJZf6aXHiONFw1M/IGuN+PxlZ3jLfMtop6hEdX0+4NLLgY88lmJGmo9ta3rxnu1
         Wt8qTFgjaiXh4/MSUeIidk9jFMia3s+81d3zcwcO9iQcZkNBWnKBJ92CwTBzjS90HonZ
         VfwkfHuAraCHcAVhhrYT64iIfJSL51qnm/XHkw/jc8RlWQeSp47TaQxGFp1W0IMr+VEx
         BG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780968729; x=1781573529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mt6AAR2A7+1jbWMkZsxSOAOfyL+coLl7wIQlASDZaG4=;
        b=VDghNroq2XfEuF6xclpp/xO8C1mnsh47FMJkVF3/maywJIFAY77bYOnIuIJYxohK51
         zagcW08vF7Sj1rgrLo0ppehbJ7eiGwjvNEe0o4CRND/MWwJwuwhO8HW/EgNRGI0Y3Fmw
         C+67phOLtJlgAp6WIaVif1FwvHcF9igZ0fcD1QuG8ARM0i+EwREHfNAIVrcq4aSb3qPS
         qfSVyJGZUVmwlK3huhs6u/NG1NQhMtFKxIiD0DP8HjVBr5z4QQ4cZLlWrE/bTM1myc0O
         Laqa0e1cOPGsTsKxl28GM/wGeJvPl2d18aivV5tx0x9S7sUsuieOMvEL1l4ceHnN64cT
         ES1w==
X-Forwarded-Encrypted: i=1; AFNElJ83zI80nyikIb7Xona31Dk3ks6ijVlkM/N2mFg3ap4QCFvUvYG+K1rfKhKklNbk8uiF+CIcq1alQgns@vger.kernel.org
X-Gm-Message-State: AOJu0Yysl6ElMo3vcUoZLjYFbbd2xlqIW4juXUigq533vtk188ghx9Xf
	U03oF29OhAgdTZc8V29uR6WX3nRpMA5ClVNJcqPsxugRwNEzO1vc3XhD
X-Gm-Gg: Acq92OF9YA5ycWC2fE4UXdhzpLj8Du5K45elfOVGq0hbl+c8x2azeE4eYDHzUWS6m/i
	8PKkVDZzPI3uhq3t00mDYJqNGMPIythY1HIkYhepW8Gl/J+w43V0YOa2XVF71A8yc3niZUdTAKb
	TMw5usVJY7enHKnrjiDft00y2VBj48DfrsjukUie92QunJ1Q8NuYI578DByJmzaRyQz02wSHWaJ
	NV2lSPIV1b905taL2L4tHPNsqD5X82Vjkx0w0gdulPoUBKtkzGysz1EUxPILUaWMBx4F/KxIUTY
	RoeXIt2tMTmnuTxsSbklhZ8jQ7gmO/2K6GM8Z1nR9kVW/+DjdOPZeevzVumz/ifYOodVq/n19OA
	BYaROHu5tkxTH2SkoN0qrj56AKC+tN/fEgG5AT4TY0uGlRii0y0Myh6Rca0ADlyS+/Q+PGhCo/U
	gxzVHcDbjZcM7L/j5uSnyCW66KKDZTYBNwL5X/JJKHQaeSeu53bGNkAouhf1am5ccvczLs
X-Received: by 2002:a17:90b:5783:b0:36a:4074:9aa6 with SMTP id 98e67ed59e1d1-370ee82fcb9mr17612341a91.6.1780968729219;
        Mon, 08 Jun 2026 18:32:09 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16609e627sm198765335ad.52.2026.06.08.18.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 18:32:08 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v5 09/11] ASoC: renesas: fsi: Add SPU clock support
Date: Tue,  9 Jun 2026 08:31:05 +0700
Message-ID: <20260609013107.5995-10-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609013107.5995-1-phucduc.bui@gmail.com>
References: <20260609013107.5995-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-308574-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DA9765BA92

From: bui duc phuc <phucduc.bui@gmail.com>

FSI register accesses on the r8a7740 require the SPU bus clock to be
enabled. Add support for acquiring and managing the SPU clock via the
device tree to ensure proper register access.

Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 13988c7dc926..6c432c7235a4 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -292,6 +292,7 @@ struct fsi_master {
 	void __iomem *base;
 	struct fsi_priv fsia;
 	struct fsi_priv fsib;
+	struct clk *clk_spu;
 	const struct fsi_core *core;
 	spinlock_t lock;
 };
@@ -983,6 +984,7 @@ static int fsi_clk_set_rate_cpg(struct device *dev,
 static int fsi_clk_init(struct device *dev, struct fsi_priv *fsi)
 {
 	struct fsi_clk *clock = &fsi->clock;
+	struct fsi_master *master = fsi->master;
 	int is_porta = fsi_is_port_a(fsi);
 	int xck, ick, div;
 
@@ -1004,6 +1006,13 @@ static int fsi_clk_init(struct device *dev, struct fsi_priv *fsi)
 	if (IS_ERR(clock->own))
 		return dev_err_probe(dev, PTR_ERR(clock->own), "Can't get fck clock\n");
 
+	if (!master->clk_spu) {
+		master->clk_spu = devm_clk_get_optional(dev, "spu");
+		if (IS_ERR(master->clk_spu))
+			return dev_err_probe(dev, PTR_ERR(master->clk_spu),
+					"Can't get spu clock\n");
+	}
+
 	/* external clock */
 	if (xck) {
 		clock->xck = devm_clk_get_optional(dev, is_porta ? "xcka" : "xckb");
-- 
2.43.0


