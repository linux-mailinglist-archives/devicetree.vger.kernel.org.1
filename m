Return-Path: <devicetree+bounces-308988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ywFGA0z9J2rb6gIAu9opvQ
	(envelope-from <devicetree+bounces-308988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:47:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7AD65F9F6
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:47:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ADf8QRM9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308988-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308988-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EADA30942F8
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CA2404BEF;
	Tue,  9 Jun 2026 11:39:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB69404BE5
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 11:39:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781005187; cv=none; b=tbqNghAMh+KYyyVnnxVDYTsfsEdC89FczOxh3G7WHCDYnwPn3eG5OBBfTqEii5I6OkF4VSgsYo7dxFr5iAT8nctmqLA6I4/mI9HzYxSgxFpS9PSehKfxkAJhfiRNANIuIfYzMtnaY3GA0of3HNwrLiiN5qJL8My8nq7pztUtEFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781005187; c=relaxed/simple;
	bh=kTAg9q9u6VoW+qN869GenvQcA+UPoEV0Jn/gySZyMr0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fSrvUMNYGit67WDKM+E+WgH4Z/izmCGlbArCQsbZHeLamH15AI5JnMxHb/6WRF/OmWj+kDvA5DJBVGTNP1poJKDNeBdmIM6zXkDxEzrXxNOXi8sKeJm0mVtVep3LjGayGa1XG991Fg1lRC2qaUxFmH9RK62LXMvzw0PZNUea9zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ADf8QRM9; arc=none smtp.client-ip=209.85.214.174
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2bf22d29dabso35812885ad.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 04:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781005185; x=1781609985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3igX93L19Hd9A1VIL7yayX5x/YnSKR6u0HXaQm3XtM=;
        b=ADf8QRM9I/Dn+EnWodaEHM/QAmnovXtJWlFfFdUGOtHAknGN0WSw92OitysZMdi5/o
         aGv4z9YW7Sz2S4ayyszXbNij30TaHuBi1iwNUyJ01TAllbHFW5k7zR4DgmBsBBLqpEDD
         QhPhYnC4nqQkmtSGgsflU8hjFt4l9lR/UXIEvaVxQirNQLKtTyX/yVl866DoXm9Ko2Jq
         eJX7Op8fHZLC94ESl8IetHgSEU/C5Up4b9tCvksWp2XlHe/bqBjQzUsMi1XQqV6bZZMz
         GzjgP+0Ju2i+qsIE8j0joUQX1bbo+ES1ClNkwsj25y/RR8mJKE8SaWBtx5vsESqAUiUH
         tv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781005185; x=1781609985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O3igX93L19Hd9A1VIL7yayX5x/YnSKR6u0HXaQm3XtM=;
        b=dZN8FVnemoJ9ojEQXB2LgV6Pz9s6oYZwWzxRsq9T1jfLsqXJBHW8n60Mi8PIY+3CbQ
         en9gP+7UthNLoNGbCvQtBVkfyDrYI9bYg+1nfxozKX6COi+nExkEys6O/b9AbZqb7UbT
         crKxv1d+vsB9U9s+CR8/OD0taonVGVOk32CNqJQOTpbv8OzLeiBOIW0MzfLnm0JM0ueB
         fPI2efK3jTYBHBqwnVFdjrWOioHYSkxI82EDqLFET8sKOYP/b9I2QXPsf1psoWKRgpqp
         FB063AaA2D+c2h+8Rngf3iY99fWRwCw7GxfIVxL3oMzmrPaK38S7FDMcp2qjtUTuMMEv
         XSJg==
X-Forwarded-Encrypted: i=1; AFNElJ+FbJpaGsQkIeyamQU8q4w/7B64HV1YJDPaGe47WNuo8CpS+brLwfbEaXMs0oL2iPVN6D5AL0FXrPYh@vger.kernel.org
X-Gm-Message-State: AOJu0YxVqwBI4zyx2p4pn+9Huc52l3faYiA8ogME9TWlOQ14CDx/awj2
	cVCDMFSFVTWgyIrG7S+D0t9sWpkeALwdFgHvVooH76npCsr2wf/qgMxE
X-Gm-Gg: Acq92OGaZlAIybMMXdxQgDiFsM7BMsjU/6Owb9Ol3Puuvxmh8vXb/mOF9he4FJ220IC
	wD1Rv2PGWzzYKKcXvwuSD+2Rn30V31tFIK+H9Ani9WzUbRwSUSg4R+TBQC/Cpi8ZbiI5PYA7pim
	nJFdB4Ip21bfn7OUs8IpSgD6/XKuzgFDGGsTdR8T8y8PSSOmrSzr7pdyDXmst8zeaou1w3BPx18
	nxCiX/awd5sxfQU5XLxHdEmOtyJi4R2Rb2Z4UYqrQMRqDWOrefSS6jWNmeBOpqVXZtRD4OPqegw
	kszV5Qv7s/D0MYliPeM95nwWSfX8EDWLo2gCgJkEpJQH/pcE3mhjijnA4mQ3N9TYIVqq7k2oUNj
	ST40UkjWNU1I8gNBxYdbetkiAPeGiEWwgIpgnm3gKTRY+so/6yCcMELiVGtEE4cISq5BNCbllix
	7Ni2YtBajTiR4nFrD9evx/HBKRe96tVnYsDE2AeRMMJzgrj1KpeH6byyTfHYFOKnKJQUU6
X-Received: by 2002:a17:903:908:b0:2bf:2d0:887b with SMTP id d9443c01a7336-2c2a1bc8420mr37204835ad.9.1781005185183;
        Tue, 09 Jun 2026 04:39:45 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f70660sm210755635ad.11.2026.06.09.04.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 04:39:44 -0700 (PDT)
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
Subject: [PATCH v6 10/11] ASoC: renesas: fsi: add fsi_clk_prepare/unprepare()
Date: Tue,  9 Jun 2026 18:38:35 +0700
Message-ID: <20260609113836.45079-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609113836.45079-1-phucduc.bui@gmail.com>
References: <20260609113836.45079-1-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308988-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D7AD65F9F6

From: bui duc phuc <phucduc.bui@gmail.com>

Add fsi_clk_prepare() and fsi_clk_unprepare() helpers and call them
from fsi_dai_startup() and fsi_dai_shutdown().
This ensures clk_prepare() and clk_unprepare() are executed from
sleepable contexts and keeps clocks prepared only while audio streams
are active.

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
Changes in v6:
 - Add Acked-by tag from Kuninori Morimoto.
Changes in v5:
 - Drop count & spu_count and rely on the clk core for clock reference
   counting.
Changes in v4:
 - Move clock->count early return check to the beginning of 
   fsi_clk_[un]prepare() to simplify the code.

 sound/soc/renesas/fsi.c | 51 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 716ecf0401fe..e26f39dfe059 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -730,6 +730,54 @@ static int fsi_clk_is_valid(struct fsi_priv *fsi)
 		fsi->clock.rate;
 }
 
+static int fsi_clk_prepare(struct fsi_priv *fsi)
+{
+	struct fsi_clk *clock = &fsi->clock;
+	struct clk *spu = fsi->master->clk_spu;
+	struct clk *xck = clock->xck;
+	struct clk *ick = clock->ick;
+	struct clk *div = clock->div;
+	int ret;
+
+	ret = clk_prepare(spu);
+	if (ret)
+		return ret;
+	ret = clk_prepare(xck);
+	if (ret)
+		goto err_spu;
+	ret = clk_prepare(ick);
+	if (ret)
+		goto err_xck;
+	ret = clk_prepare(div);
+	if (ret)
+		goto err_ick;
+
+	return 0;
+
+err_ick:
+	clk_unprepare(ick);
+err_xck:
+	clk_unprepare(xck);
+err_spu:
+	clk_unprepare(spu);
+
+	return ret;
+}
+
+static void fsi_clk_unprepare(struct fsi_priv *fsi)
+{
+	struct fsi_clk *clock = &fsi->clock;
+	struct clk *spu = fsi->master->clk_spu;
+	struct clk *xck = clock->xck;
+	struct clk *ick = clock->ick;
+	struct clk *div = clock->div;
+
+	clk_unprepare(div);
+	clk_unprepare(ick);
+	clk_unprepare(xck);
+	clk_unprepare(spu);
+}
+
 static int fsi_clk_enable(struct device *dev,
 			  struct fsi_priv *fsi)
 {
@@ -1580,7 +1628,7 @@ static int fsi_dai_startup(struct snd_pcm_substream *substream,
 
 	fsi_clk_invalid(fsi);
 
-	return 0;
+	return fsi_clk_prepare(fsi);
 }
 
 static void fsi_dai_shutdown(struct snd_pcm_substream *substream,
@@ -1588,6 +1636,7 @@ static void fsi_dai_shutdown(struct snd_pcm_substream *substream,
 {
 	struct fsi_priv *fsi = fsi_get_priv(substream);
 
+	fsi_clk_unprepare(fsi);
 	fsi_clk_invalid(fsi);
 }
 
-- 
2.43.0


