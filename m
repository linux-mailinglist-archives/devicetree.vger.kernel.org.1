Return-Path: <devicetree+bounces-107005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9381E98CB29
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43597285EDB
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A0B219E1;
	Wed,  2 Oct 2024 02:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MSPHdhaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3551805E
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835629; cv=none; b=NGrKN8KB+yPJrXke5saggN0uPuIeID86ntPaA+q96nB+iA2PZaEf80vGcAvZYHmp8pdTPb1wzVqmYmA50oDym0W21GDFp2U/287RapARrNocM15UQ47KQzmF6U5maPoDKmWUMLd00X2Qpgcrk4T71DqET7qhVo0kau/3mjzwmUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835629; c=relaxed/simple;
	bh=LOfadXrLg7ZRoN+A8CWVlfI8ytsXadkatDmRlJNEVAg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GVrDjrQZbnnKB6Z3u5tl/oXQoKTXjSHmR/OAl0YF2QecCgm6hYGHu3zJblz9mwTxkr9nW204aJ6JRAncPp3Ab+6/Hy3C7bYQDdexk45ZpoGeP4eJgIs6dOxIJYPopAzEBRiqtK5QtM6IzQfN9svulZ92IkToODoj2xhHj589Qho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MSPHdhaT; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c88b5c375fso4973987a12.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835625; x=1728440425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OCYOTM8/0Ug4V9lj8bQNm7elnTCjMFp7xXGYdHTDU3c=;
        b=MSPHdhaTgmrYkMv+nfF0ucq6Q2yt8NL/FoXOKvB8Ya237KlalA75OfLZzP7N36IHNZ
         wmsFxajkYHYfWDXw+fv1ZD6Hwny6PQasQakgrJCOT6owYYTvrWfg8aAdnhsGEfb9UhS5
         T1YGf7VqfqI7huYHL7q5mDRu5vqjCgHbXTBK2FrmNYzpx2ljeLvCFIvYfwwdFblMFMid
         qkRgOeVlgP0MDIAG7UJr4u1K3zikMq90NLL2ho4qfnJS+cQYIBCrrUU8g6IK0q8LR3yR
         XSLoJegG/34m+sQRc0Z1j2Z7d9hVnAokrS5tCz6wod91jz1JWGMq5FZTgAySX/ppoJXf
         jzrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835625; x=1728440425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCYOTM8/0Ug4V9lj8bQNm7elnTCjMFp7xXGYdHTDU3c=;
        b=KG3ucfGMlHwtb3We7e/LPwFRL4rUwUr98/1uwdRlgbgT56KsB6GwqCZuXBji6XUU2Y
         8UVXGB9Vu9xH1R3B8OpBgfKUm8RdQ25q2GZspP+NQcE1lmDSVA6HwsPdZaoMAE0w1gbQ
         fjPuMx2mI9hMJu8r6u42CvN9BphQ4n1QO4IvN8fRaDpMXUnV0OqFs3NtMutyi0Ubfu8a
         PN+YkamISkBdUSdTc29RUBrGXxrmt/+ajVhkRsSeBEOEqKbkf49K3OdY6X1Yn9UowBvz
         +TUEPwDhDXcIBGWYVAMk5AyOU/YqEu0TCjwwuOqblcFFsDzXnzPHoSey3/hPnpviiVfK
         pNwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwnSLusqvA4o37SrRJddVguxJWrkVWzNdFAOTpBrxka8jK/mrLO960othnuvCtrEpbseeBchxWnbYB@vger.kernel.org
X-Gm-Message-State: AOJu0YwGyhPJ1R2+0xApOtdxPKPQ3v6R9rndbNuFP0DSbq7evwiCGRyk
	ha+duN4Rvr06UXHiaEZ3B5oFmtJmjuozLs95D6wMcetS2bwKzZaIuQGgIrqrwW8=
X-Google-Smtp-Source: AGHT+IG+Q/gURHat1q3AUvb0+GovkmpG4ajTJTbVyAEb1VAT3Jst29VyqLUHNkKFUyiefEeDXTOUcg==
X-Received: by 2002:a17:906:99c5:b0:a7a:9144:e256 with SMTP id a640c23a62f3a-a98f8213366mr125224866b.6.1727835624893;
        Tue, 01 Oct 2024 19:20:24 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:23 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 3/7] ASoC: qcom: sm8250: add handling of secondary MI2S clock
Date: Wed,  2 Oct 2024 03:20:11 +0100
Message-ID: <20241002022015.867031-4-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add handling of clock related to secondary MI2S_RX in
sm8250_snd_startup().

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/sm8250.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 19adadedc88a..8776c35a98df 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -63,6 +63,14 @@ static int sm8250_snd_startup(struct snd_pcm_substream *substream)
 		snd_soc_dai_set_fmt(cpu_dai, fmt);
 		snd_soc_dai_set_fmt(codec_dai, codec_dai_fmt);
 		break;
+	case SECONDARY_MI2S_RX:
+		codec_dai_fmt |= SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_I2S;
+		snd_soc_dai_set_sysclk(cpu_dai,
+			Q6AFE_LPASS_CLK_ID_SEC_MI2S_IBIT,
+			MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
+		snd_soc_dai_set_fmt(cpu_dai, fmt);
+		snd_soc_dai_set_fmt(codec_dai, codec_dai_fmt);
+		break;
 	case TERTIARY_MI2S_RX:
 		codec_dai_fmt |= SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_I2S;
 		snd_soc_dai_set_sysclk(cpu_dai,
-- 
2.45.2


