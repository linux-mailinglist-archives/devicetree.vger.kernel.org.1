Return-Path: <devicetree+bounces-120183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ED29C1B4F
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCC141F237DF
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B114B1EF0A5;
	Fri,  8 Nov 2024 10:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IX7OwyH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90931EBFEB
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063039; cv=none; b=H+9/pysg1Ep026uxpFo3WzbR33OYU7HPoU2WejygKUStV9wugsqh/QqpVxESvGxI/Mf9PDcS6URRjw8tz2Nd6irLW+3bOdZKsD8JrhzO0vDqcOghkP1EqhecblBJoFW7PvNgI22Y8Zc5MOVCfYw8Xpq3opXU07/eIGNcjSOqDjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063039; c=relaxed/simple;
	bh=UDN/MsefSC8JXCNstGfSjjMFoiHdel1xmd8dafnOSoQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DUdezb8iMaYLeyEcEzqJwguawS2HvjymY6aO6Usfkv8B+PzH5GAuyi6fis06cVeSi49vLL/MgnwxrbWGDnVBq2rt+CUpbDU4kV0aothnd8CpFOtZmayaJ8sKI8rJ4K6wfmJwhG6X/txO0MW5pxjx/3TqKPIF7W43JXX7PnR5A5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IX7OwyH3; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c941623a5aso5349006a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063036; x=1731667836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBhbS3W72o/kN5HMA2yyeByauQZo+wVZ0wMkHWgTSh0=;
        b=IX7OwyH3u+RUKusPRAAoFdngkZk26ymUmU/NZPgzW/hI3smr3SUzwZkyW3GVSn7S0O
         GXpMANoyBml4G4n3g8J8/G1PbciHjn0UnsVI1BwMYO8o4QSKhGcMF0/y1uiZvdSDqX4a
         LcVAP1M3qq1H/FAv0OU5m1QgWTOY27tRkyuJxMGakdnTdF5nnSxncrXU+4iDqLzSdeWA
         eCnMD2CK93IGrxTbLRexlPpZbAxW2PEJnNCJFRwMRdEbcvgP83ue40eP4jwk9CHV1HDw
         C9TXhpLf8Zy44YSmWPLnH6o8eCN6eG7QgRrykxQoP7ng4Kuq+uCX1DQnDdPhHty7Y+v/
         7r/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063036; x=1731667836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBhbS3W72o/kN5HMA2yyeByauQZo+wVZ0wMkHWgTSh0=;
        b=xNAdBqCgHMSO0xxmwkwY8lxAsVc/bYjQHPUy9LDRotCxpDw6DqoGVRR1Nv0iRJMXob
         UxAdRzbmqRw58PekzjYAcgF5BfEcv6rE0R1i9HTXBzSqA3fX3ZrcgjESy8yq5BYWLLBE
         VgHZRw/K6FcbV5yOtr/MZiPs+dnmdbFGyEVj7y70eZlJrB1EjgIkF5brmY7xI5f18Yfr
         K0UmY1C00UlkuGf8GQW+SNsJ7CbcKNHazrKeR6IlBg4SX0/d2QSA4RVhpLPQLizFcVgi
         5voYs3n1Ln5H5BldrMJk0sZjmEaemrDs8O++cNf1oezzBg56b7Xm7elx04Cwp1cCIFBP
         zmMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaUjfVTMzJXgZJFLLCcGHQ0ANfKdWCsK01sdxoe5E4m+UATV2/ft4WFC9TbU7sXl6+SvAUyoaCyd7Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+XFo4leVBpJU7cgahFLwkZKiFoWPpi91G8juu+y180v2edSoU
	qk70QNd58JE1KJviphaNBhPDVnuz+9CdOqV56neImgbVb/C/wnrzkc/86WD3Qr4=
X-Google-Smtp-Source: AGHT+IHmQAxrHn6g8ivXKNKkvkcI1idTgMBasUX1xBaIWYqflPwTH9v07OxZX2Fp7AcqbL4NFB1cFA==
X-Received: by 2002:a17:907:9492:b0:a9a:1575:23e3 with SMTP id a640c23a62f3a-a9eefeecbf6mr214458266b.19.1731063036148;
        Fri, 08 Nov 2024 02:50:36 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:35 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 10/25] ASoC: sh: rz-ssi: Remove the rz_ssi_get_dai() function
Date: Fri,  8 Nov 2024 12:49:43 +0200
Message-Id: <20241108104958.2931943-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Remove the rz_ssi_get_dai() function as there are already helpers that
can give the same output that rz_ssi_get_dai() gives.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index a359235b55af..4c33663a0ae4 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -162,14 +162,6 @@ static void rz_ssi_reg_mask_setl(struct rz_ssi_priv *priv, uint reg,
 	writel(val, (priv->base + reg));
 }
 
-static inline struct snd_soc_dai *
-rz_ssi_get_dai(struct snd_pcm_substream *substream)
-{
-	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
-
-	return snd_soc_rtd_to_cpu(rtd, 0);
-}
-
 static inline bool rz_ssi_stream_is_play(struct rz_ssi_priv *ssi,
 					 struct snd_pcm_substream *substream)
 {
@@ -243,15 +235,15 @@ static void rz_ssi_stream_init(struct rz_ssi_stream *strm,
 static void rz_ssi_stream_quit(struct rz_ssi_priv *ssi,
 			       struct rz_ssi_stream *strm)
 {
-	struct snd_soc_dai *dai = rz_ssi_get_dai(strm->substream);
+	struct device *dev = ssi->dev;
 
 	rz_ssi_set_substream(strm, NULL);
 
 	if (strm->oerr_num > 0)
-		dev_info(dai->dev, "overrun = %d\n", strm->oerr_num);
+		dev_info(dev, "overrun = %d\n", strm->oerr_num);
 
 	if (strm->uerr_num > 0)
-		dev_info(dai->dev, "underrun = %d\n", strm->uerr_num);
+		dev_info(dev, "underrun = %d\n", strm->uerr_num);
 }
 
 static int rz_ssi_clk_setup(struct rz_ssi_priv *ssi, unsigned int rate,
@@ -988,7 +980,8 @@ static int rz_ssi_pcm_open(struct snd_soc_component *component,
 static snd_pcm_uframes_t rz_ssi_pcm_pointer(struct snd_soc_component *component,
 					    struct snd_pcm_substream *substream)
 {
-	struct snd_soc_dai *dai = rz_ssi_get_dai(substream);
+	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
+	struct snd_soc_dai *dai = snd_soc_rtd_to_cpu(rtd, 0);
 	struct rz_ssi_priv *ssi = snd_soc_dai_get_drvdata(dai);
 	struct rz_ssi_stream *strm = rz_ssi_stream_get(ssi, substream);
 
-- 
2.39.2


