Return-Path: <devicetree+bounces-248552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5814FCD3DD5
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 10:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D8F33001626
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 09:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A25E280A5A;
	Sun, 21 Dec 2025 09:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D4X6UUBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B062279327
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 09:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766309820; cv=none; b=ivkVB5PNE/su0XG40WpNtR5KOHf/v7NNe2vjQ++iwuTOvMEDLCD3Z8TmmxL8/3R/FMoT8HYfW7MLSl3r70aIczZftwCo/KI1ppA01sdeReiUA4SOlInIIjmdB6finI0Ewk9xmAmpbKZvRj2Cia3aC6flAqrcsRBPnwpG6RQZ+r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766309820; c=relaxed/simple;
	bh=mjOv/Tov/J+hpGHcb49MekTvZZfF0eTnGqqMKw/v44k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uxh3gHv45aT7ZBltb+mrxVhy+4+QUVFQqFYQi8oQ/4Ln+9kUSVp0vXC2xyAC1xSdCeRlCaojCHSaSidEkpyOIgumSKtWm0ct66q7zLW8W8hhugcsdHRgyitabZLXKfpeCS1IK6U2XjOvunZ+1cDs5LRdKPHCKp+ePjd3uLR0epw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D4X6UUBt; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0b4320665so47298405ad.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 01:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766309818; x=1766914618; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oXu17unAaFSnbyi+Zk+8K05FQ3JomK2ILh566085Hbg=;
        b=D4X6UUBtks6CyuyNrtf0kqp9j8kd0G+JCj+BLzSVapIjwuh9eF5G4ewtN3kelf7+bo
         vHVKV2pRcG9IgdDJSiGbHjNnDhP4bx8w233vtDccpzfurYazkWmlWiW5l9P8sTYEnGmY
         sbcSSkiinV04ClYgK+yJc++awmuu1ZRNWdI6ii+73l6Fs1frP5qyxpKGyTFNIhrOBv/o
         M/+Tq3kTYg6wMsUZtnC/RMoohq+wU0qI6i3QjStG6owpiybgAqjGDexN+n6yOjxzELw+
         2kVjt3x5k5y0jWfssmGj3tQXij6X9DKDP08EfdcrX4GSp22hxZUFMgmHjcAliZC6IilR
         AUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766309818; x=1766914618;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oXu17unAaFSnbyi+Zk+8K05FQ3JomK2ILh566085Hbg=;
        b=IjRRiLOIKrvAIIcNXQYyFhjVsTmvHsRqUN+aEM6YN8FQy1sUbTwRyPzPB3o0FQ24yn
         h8QCt/MQn1acc3qSxzD3s00KkRVs+9ZtQud8jyt43Zo5TUW04u3aD2nd+3n8/tlfGZvx
         ozcFLNavBtJKkTsKvhYHaioZQTZfB6TYNzaf7MuwIi261eZOPlHBhWzy+remLTUqnwWC
         o4onT7e+gPZE+l/PYsBLbVnfkZEtR5+SYLbW5skTGYEVhx5zWHUvyhsk61CJ2ONHT7Vg
         VzEEzGyW42p6tnyIQuvGH5ObFnB5qjVZ0Zg0OfVGM4k95NnC4hkDiqwwe6htLXEVvRRz
         /hYw==
X-Forwarded-Encrypted: i=1; AJvYcCU1dZSokL36lVI1aXFS+yq5asdGSq+CtkxCBXg2VWGmk9k+cjYyry+fsHGrNNqkgIUUjIXNtsX+3Sus@vger.kernel.org
X-Gm-Message-State: AOJu0YzjkjMCcqc5xPF/FWYdGzwSaW7JD0bCoMa6A546Tfex52W1Idmb
	PTFaF4R9EpYlgkVmCCwwSKBMFki3QimH69W8UBBBGJXp4LzmQm+ll30z
X-Gm-Gg: AY/fxX4hIB8fdAh/DwnX3GDxyvtSECHJh7WAuzx5DUMY4QStxJWD6+8YIrNeBJwcQnY
	Jbf1qyGRPZ7WrKhydPsyWXnRHvEd8FhngXK45KTY8JdmcB2K4HbaEiF2CMprkweCX9XQlpOUGJL
	K1d0+lexGFKTrUHOmLQTzYuo9ikEl+Z5IacuN8pEoGZxdBuXsMC2y8kuYSodMir/ueNStIROyUu
	4h1j/Ja7gGJqsAEW8X9/cucO7WtNx7kxqn9jR7BZ0PvWAKgKXi95tk/lVU9qBO17N2ujgDT6AlR
	380auhR3kYKOOE+oXjF1hysRKMlND7wQfkDA8Ecp6kTY2+fuG/mvoF/+SgwOBM/NKGi2sRN4Qn3
	1Wl4mJDTpSd0J2GI7e98cNZZ6MEaBiLMkS3rzb9VMssy1re3OeZglzJmpmJYNK7KFa2+S5Wazi7
	abbX/F50RKTfPoclVTR5JDEZgONjhsYOYa747edJTiOHVdXTKE+B5DzVvX8f0co1P03gXogNnal
	FT7hYMn5odlYY4hmgRR9G7RMmEEfkTjIgFTdH6pCmfYnD4Q3osOchu8b5wU9Nup96w8LLZnG5/5
	dwDzGw1wRyJLIHLVkjazfhbQwW1nsedpHRrFEpmo1xAhYlsFYus=
X-Google-Smtp-Source: AGHT+IE9k5fjbxVuGHt35PQ2dBtJxutYciuw15r6xi7up9QtKT9LAT9dU495uEoMz6Mf8cwTHCKz/A==
X-Received: by 2002:a17:902:ce89:b0:2a0:de4f:ca7 with SMTP id d9443c01a7336-2a2f222add8mr78300875ad.1.1766309817611;
        Sun, 21 Dec 2025 01:36:57 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d363sm67629495ad.62.2025.12.21.01.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 01:36:57 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 21 Dec 2025 19:36:00 +1000
Subject: [PATCH v2 4/7] ASoC: soc-dai: define possible idle TDM slot modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251221-tdm-idle-slots-v2-4-ed4d96413aec@gmail.com>
References: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
In-Reply-To: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2335;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=mjOv/Tov/J+hpGHcb49MekTvZZfF0eTnGqqMKw/v44k=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnu+yc/yutKemkwZXlY9yK/5pRenn0/JK9vi3E23PHj9
 rFvd3P6OyayMIhxMViKKbJsaBLymG3EdrNfpHIvzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFPdF8bw3z/6pznLMVbdZTsX729YcvnxuSJLKz6mWU9vrzHWEMiYUMrwP0GFtep
 N5r9rKW8nhSZYHJ+mwbvD2srqxs45k654uU/+ywIA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Some audio devices, such as certain Texas Instruments codecs,
include configurable bus keepers. We currently don't have
a standardised way to configure such hardware, and instead
rely on the hardware initialising setting itself up into a
sane state. There are situations where this is insufficient,
however, and some platforms require more concrete guarantees
as to the state of the bus, and being able to explicitly
configure bus keepers enables this.

For example, some Apple Silicon machines have an odd bus topology where
the SDOUT pins of all codecs are split across two data lines, which
are summed via an OR gate in front of the receiving port on the
SoC's I2S peripheral. Each line must transmit 0 while a codec
on the other line is actively transmitting data, or the SoC
will receive garbage data. To do this, one codec on each line
must be configured to transmit zeroes during the other line's
active TDM slots.

Thus, we define seven possible bus-keeping modes that a device can
be in: NONE (UB/as initialised), OFF (explicitly disabled), ZERO
(actively transmit a 0), PULLDOWN, HIZ (floating), PULLUP, and
DRIVE_HIGH.

These will be consumed by CODEC/CPU drivers via a common DAI
op, enabling the explicit configuration of bus keepers where
required.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/sound/soc-dai.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index 224396927aef..44dd06add52e 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -52,6 +52,21 @@ struct snd_compr_stream;
 #define SND_SOC_POSSIBLE_DAIFMT_AC97		(1 << SND_SOC_DAI_FORMAT_AC97)
 #define SND_SOC_POSSIBLE_DAIFMT_PDM		(1 << SND_SOC_DAI_FORMAT_PDM)
 
+/*
+ * DAI TDM slot idle modes
+ *
+ * Describes a CODEC/CPU's behaviour when not actively receiving or
+ * transmitting on a given TDM slot. NONE is undefined behaviour.
+ * Add new modes to the end.
+ */
+#define SND_SOC_DAI_TDM_IDLE_NONE	0
+#define SND_SOC_DAI_TDM_IDLE_OFF	1
+#define SND_SOC_DAI_TDM_IDLE_ZERO	2
+#define SND_SOC_DAI_TDM_IDLE_PULLDOWN	3
+#define SND_SOC_DAI_TDM_IDLE_HIZ	4
+#define SND_SOC_DAI_TDM_IDLE_PULLUP	5
+#define SND_SOC_DAI_TDM_IDLE_DRIVE_HIGH	6
+
 /*
  * DAI Clock gating.
  *

-- 
2.52.0


