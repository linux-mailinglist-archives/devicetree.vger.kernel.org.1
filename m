Return-Path: <devicetree+bounces-129387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B00219EB797
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FBCB188784A
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D0F23D43D;
	Tue, 10 Dec 2024 17:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="R0QKl8lt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F8923A572
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850629; cv=none; b=GcJcLLeFaSoH6RK5wMoaht4WOyDcqkyG4zf1JQXIgRLN1z9mmfdZSWgWUFMseuZhSTA4RCyi98Q5F8T0m/qBR2yPI2mIePFB2RqF1Q+iZBTrZF9PDXqCcGw5R+qY4WLWnZx34RjcNLIdDYi3dFLnyxqmet7UioG17czzk3VH0HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850629; c=relaxed/simple;
	bh=ujffKmfqqDwP9nSS/Rh8QsJL6MbeKN+Qqc+lwPTDO6o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Su1Unjp1oFxSR8zG85S/KbSV+zkGbeChRM8zaDMGzIjxRQbJTZVHN+1e2vnUrcnKRGNS2L1hSY1+/irn/rydCL8uykG4ypV9ED+hn405LPwo5FUrlcEIjoKHSFhxMOVs3D24MFpQHZGrRL10Clis8/uPkUAgaoD5dHkMXY9YfyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=R0QKl8lt; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3d2a30afcso6571600a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850626; x=1734455426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nt6/CuLO4TNfbHvjGkE7QWPE5biRbMT4tQY2cpGkikU=;
        b=R0QKl8ltpkWoHydIefVc0xQrvPiLvplUyTjqzT6eHRvjJgdOVWa7o1ljB35cZVL3cd
         /NQI5szGDpJFyZlfoB1gawjPP0g8QUKO4DhZGoEM8GSqS88YT2ZgZ17TzWofc0EzxTOC
         TRSmQJfu0+JVzRqM+B6TUF5trZYIjjvnOl70wC4vDMO0gMcDFgB4j+hxE246F5nKqLmu
         kfoZBoL8BgkErwniYfqW8dajUAYq8FDikk5QWw9Tmb9JYf1Jp3ukkxZA7dVvq5vVnOOy
         Is8T+LIE5dV8rUZ/KlSZ7p7EZR/bZ3+Efq1njQqwVnAQ2Py8btOxhsngdgvTBhE+cXws
         Yr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850626; x=1734455426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nt6/CuLO4TNfbHvjGkE7QWPE5biRbMT4tQY2cpGkikU=;
        b=sspmgXnjSn0ItX5iIiswQmr10gzkxjyuzZztme6z1XP8GFRk4Xj1t7M375xAMTthym
         jpDwBSiq+jSzQ0yNfPNfHhAY3SAeTOSSxewcVed8hBYOiUEPwlY1yvPYk96m3t6Dg8jq
         AONLoNaktgokH/ayr8iaSmpJhv36VgqgdVvwveUi0yd6E2r0sOYKzUQsDyTGF9kqpNTX
         smbWljAeep/TNW2qgyDBaUpRTZI1H5aZGwu/LQvch/HgBk0LWhz8zYuJW7RST1PflgR4
         DwxA4sqXj1LUerIQNXhV3pKsm2DqEM0erwI/gIw9fm42fLFZbnnALGqZcQacv+qIiXmQ
         VD6g==
X-Forwarded-Encrypted: i=1; AJvYcCUkdDzSbau4gQw0TPXeC0TyU4/VVGMzHY2f7RDobk60q24eU2Pv5CTxe8Uf3idPYOp/4f+a24uN1WAz@vger.kernel.org
X-Gm-Message-State: AOJu0Yydj2kR2xc8TVb2ocklMsl6ZTuc1KUDXrZxm8PWY9ld9lrrw2D5
	d/iQ0fPNqfLbNP6pD8OfuhRYlFOvmV9x/+rfvvz3/hqMIyUsU6rlVtePpb3oQgs=
X-Gm-Gg: ASbGncs/GrvvLo4ITpER3/cpfUcd+G7HQNQnp3ElPmzt3TJDCtuccvyMIxCTjdRuORY
	cCmbaFQotRXPr3oXfbxdGPYLuFyFa8f52OfadznpFK92jR21KqoqRx4a74dNmBkt0edb3cQsoyR
	XTD+I6F0/UB3BWCOFstXfvVIaBttCoikDnFs3iC6pX/rfAKlWzVgAzx0PXikwYLEzr97fVoA7PH
	SpFtOH8wo1B2TZ+QnatdM91BlEFhAj+Lqn1j94biNgOGGwIg4mJjhCnxEFKczlHP4SJdEpOlc9m
	KtR3cpAg
X-Google-Smtp-Source: AGHT+IFnf0CQr0jkK6OJUnuRd7yMlMyY8yimkX0n0o6RyaHOTAp9AyL9lRgA8mS0FG7jjIMo1TvGpQ==
X-Received: by 2002:a05:6402:2813:b0:5d3:d4cf:feb5 with SMTP id 4fb4d7f45d1cf-5d3d4d00325mr14392707a12.29.1733850625802;
        Tue, 10 Dec 2024 09:10:25 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:25 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 09/24] ASoC: renesas: rz-ssi: Remove the first argument of rz_ssi_stream_is_play()
Date: Tue, 10 Dec 2024 19:09:38 +0200
Message-Id: <20241210170953.2936724-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The first argument of the rz_ssi_stream_is_play() is not used. Remove it.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- fixed typos in patch title and description
- collected tags

 sound/soc/renesas/rz-ssi.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index e2e172d8e9db..1a98f6b3e6a7 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -162,8 +162,7 @@ static void rz_ssi_reg_mask_setl(struct rz_ssi_priv *priv, uint reg,
 	writel(val, (priv->base + reg));
 }
 
-static inline bool rz_ssi_stream_is_play(struct rz_ssi_priv *ssi,
-					 struct snd_pcm_substream *substream)
+static inline bool rz_ssi_stream_is_play(struct snd_pcm_substream *substream)
 {
 	return substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 }
@@ -337,7 +336,7 @@ static void rz_ssi_set_idle(struct rz_ssi_priv *ssi)
 
 static int rz_ssi_start(struct rz_ssi_priv *ssi, struct rz_ssi_stream *strm)
 {
-	bool is_play = rz_ssi_stream_is_play(ssi, strm->substream);
+	bool is_play = rz_ssi_stream_is_play(strm->substream);
 	bool is_full_duplex;
 	u32 ssicr, ssifcr;
 
@@ -674,7 +673,7 @@ static int rz_ssi_dma_transfer(struct rz_ssi_priv *ssi,
 		 */
 		return 0;
 
-	dir = rz_ssi_stream_is_play(ssi, substream) ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
+	dir = rz_ssi_stream_is_play(substream) ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
 
 	/* Always transfer 1 period */
 	amount = runtime->period_size;
@@ -800,7 +799,7 @@ static int rz_ssi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 		if (ssi->dma_rt) {
 			bool is_playback;
 
-			is_playback = rz_ssi_stream_is_play(ssi, substream);
+			is_playback = rz_ssi_stream_is_play(substream);
 			ret = rz_ssi_dma_slave_config(ssi, ssi->playback.dma_ch,
 						      is_playback);
 			/* Fallback to pio */
-- 
2.39.2


