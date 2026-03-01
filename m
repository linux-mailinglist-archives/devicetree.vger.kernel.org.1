Return-Path: <devicetree+bounces-269677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IU6A6nzo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A3B1CEC83
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB390300F5B8
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE08132FA38;
	Sun,  1 Mar 2026 08:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ilXetxV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD4923ABBD
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352409; cv=none; b=Ij7OJI+xrPWB5ZYbqqHgQtLSVQx+1xxpyuKMdCTlGMafF9+fatc4p/aZiYsRADA8ivv27ye/SoT/oKBmG213WxOY9LU8nPd0CV1kpMZDRqAldEtS3yy3RR5MHmveokvSp47AJgjfyosmLjAvqxZfF9rtPdt/is+TEpUoPW8yzoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352409; c=relaxed/simple;
	bh=rqHc/7eJJOJ6QC/+Z/HBxx57SV1pobAnEybE9GKRIxI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WdpmS6SB3XeLyV94eDAxl0AEhDnrXUxxjNcs34IwNit+2C9JX5R3QqwYoWULUJYf5GhZheF+dati/UTNO+xCVQ3kSN6uV4ufObBAUlqNv9MuRRnTLvU6/otkPVbFa8SuV26yi5F2kHyW/ITPlR6gwIceqkAp9fU/DaynmCDJrMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ilXetxV/; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-354c825dc77so1540749a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352408; x=1772957208; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7FTeTejosz3HBWt4lvx3HRODQxLOqbKVT6yXP2mGuM=;
        b=ilXetxV/zcUPo/7SgqT+LY2jiBmHLRg1+8tv2oJSmRx95DyLVEtv1wFqV7YLqzeXyB
         zpDTMrU+UxgttG0YhdSa79vdGUcVCXkqSW89tNlS16G43FDs3vp6M3LIQ1FfZVGzrhwL
         A6TcO9W4q9jij8zIvE4F1vYD8QIFFbit0ZfJAlh9SjzLUdNnOzYiLCREglZBeJVkoA3T
         FVqUsypxeiQrhqu4zISqQrncxZOUsUbxVaGtSeWWD+JfOPr4KsZR4GtYNfmyqwCjC3my
         tyxx2NIQ3x6LsrhQWP67zp3inDp/OVnvXI98B5TW6beeWNxvZAab7ENFnjSe5X9VNA0X
         EZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352408; x=1772957208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A7FTeTejosz3HBWt4lvx3HRODQxLOqbKVT6yXP2mGuM=;
        b=iDPNGTg2TvH0UK7Q084cJGKR3I86p533vdcdzR8yKsObsAhR+PRTdMFFSFUhHee74i
         MlIoSN+oY92dBtUQmSDNy1LOjNcL0E4ngZcq0d/kQh7ZabyAU7sUq+5nrRrZIZJ6CDZz
         iaBS4Ozq1ntzQQAJyRv2LUNO/1JvLn0ArIRI2HlSteHp0ksRECoIuPTUWLBjMPKLzUZ9
         1/0F/o63+FqW0VcjUpOzVFjGKZcHrSvUEwv+gkRxqkCh+x2Q7yXHCfVySQXIW15aWGPc
         YLO44BiXxs6ZXmA6sivjxgI6tq6iMdjaP7iivGBL9UUQFsBO3+vzUhbv+wt20AuEJlQe
         n/6w==
X-Forwarded-Encrypted: i=1; AJvYcCVZCORqDIFX/j8963U43v4trpBj1BAxlWcaopFFzLxGp/Mkj3IXl4uknuLrLDU0CZpU/o+18mow2KPG@vger.kernel.org
X-Gm-Message-State: AOJu0YzFsz1WUa3M0qGREy0YQf5bcxh2AW9wlNDBgI6hIXLoLna+yc2v
	6agC8PJkqVcCGIHYQ966oNu7nWQ1arPdV/jxloAYXsV2gVArEo+mNUW/
X-Gm-Gg: ATEYQzwF5Mwd60oqlria9t2oo2b0FtyBjQFWZEZJWAR5cfS/zhUsRxxCJfO0gfqYDIx
	83dvCH1BslSdz0xVpTWFn1ICniHlN61Q9tyf7bt8arE5GiUtOfVHNEhEj9jbi6FctL3NQE/0r/7
	M1xElLr647Jh2sM8pPA/tmqljDmX8NTr2vsqlJqwcporAmvDYsth6lj7zbLJUE7D2rDK26lObyr
	6zyCkdIsDg3apryAoB5q461h1HKlC1pK4v4HjIvm08stmLx1Ul1FIy2difehXqbjbS/dRBuYIUv
	/h5LR6fo6nxr9NYVhCls/+qETodpTVGwI57Jl88bc4/hFHRDl/b3dzWtYC8nl7ZQpWNCVJCTpRy
	p2iOcF5lFB7er46XnYmB7aMOupblwEunRKJx1I5dTPrw40EpU6/CqAPLHEjQcTxOAvrOOdDyPSI
	iAb55yOHUEDAlF1zuUss2Um1dQAYd3xOHoQhEayJDpeyXVDyQZnBDJ9M7B0+QneZXHfLJ64Nw9W
	doDGWp9Kzv3Vns/vK7ZUAnf26SmdQIUT8MVZi6mZiNa3oi2TjJaaq3xgvmCuQP7n9KjxeJUDIVn
X-Received: by 2002:a17:90a:f950:b0:356:22ef:57ba with SMTP id 98e67ed59e1d1-35965c17f28mr6826445a91.7.1772352407658;
        Sun, 01 Mar 2026 00:06:47 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:47 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 01 Mar 2026 18:05:24 +1000
Subject: [PATCH v3 5/7] ASoC: soc-dai: add common operation to set TDM idle
 mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-tdm-idle-slots-v3-5-c6ac5351489a@gmail.com>
References: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
In-Reply-To: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
 Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3972;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=rqHc/7eJJOJ6QC/+Z/HBxx57SV1pobAnEybE9GKRIxI=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLP6fHbmx7kXl96WTxidGSMsWbznFOqazZpjSdxWp3p
 OgcsdayjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GukY6xgxcHEKwFQHlTIy7H+vPHeZsVjRqpyjTIlX6t/3GuyeUMb6iHdldILNd5V78xj++y1kKM/
 kX1mzJXNuWVb416nGnxV5G11PqHusm5xx8qY2FwA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269677-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,renesas.com,nxp.com,perex.cz,suse.com,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 97A3B1CEC83
X-Rspamd-Action: no action

Some audio devices, like certain Texas Instruments codecs, integrate
configurable bus keepers that dictate the codec's behaviour during
idle TDM slots. Now that we have definitions for various idle modes,
add a snd_soc_dai_set_tdm_idle() operation to control this in a
standardised way.

This is useful on Apple Silicon laptops, where a single I2S bus is
comprised of two physical lines which are ORed just before the
receiving port. When a codec on one line is transmitting, we must
guarantee that the other line is low. We can achieve this by
configuring one codec on each line to use its bus keeper to fill
its line with zeroes during the active slots of the other line.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/sound/soc-dai.h |  7 +++++
 sound/soc/soc-dai.c     | 40 +++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index 44dd06add52e..6a42812bba8c 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -196,6 +196,10 @@ int snd_soc_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt);
 int snd_soc_dai_set_tdm_slot(struct snd_soc_dai *dai,
 	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width);
 
+int snd_soc_dai_set_tdm_idle(struct snd_soc_dai *dai,
+			     unsigned int tx_mask, unsigned int rx_mask,
+			     int tx_mode, int rx_mode);
+
 int snd_soc_dai_set_channel_map(struct snd_soc_dai *dai,
 	unsigned int tx_num, const unsigned int *tx_slot,
 	unsigned int rx_num, const unsigned int *rx_slot);
@@ -312,6 +316,9 @@ struct snd_soc_dai_ops {
 	int (*set_tdm_slot)(struct snd_soc_dai *dai,
 		unsigned int tx_mask, unsigned int rx_mask,
 		int slots, int slot_width);
+	int (*set_tdm_idle)(struct snd_soc_dai *dai,
+			    unsigned int tx_mask, unsigned int rx_mask,
+			    int tx_mode, int rx_mode);
 	int (*set_channel_map)(struct snd_soc_dai *dai,
 		unsigned int tx_num, const unsigned int *tx_slot,
 		unsigned int rx_num, const unsigned int *rx_slot);
diff --git a/sound/soc/soc-dai.c b/sound/soc/soc-dai.c
index a1e05307067d..2f370fda1266 100644
--- a/sound/soc/soc-dai.c
+++ b/sound/soc/soc-dai.c
@@ -282,6 +282,46 @@ int snd_soc_dai_set_tdm_slot(struct snd_soc_dai *dai,
 }
 EXPORT_SYMBOL_GPL(snd_soc_dai_set_tdm_slot);
 
+/**
+ * snd_soc_dai_set_tdm_idle() - Configure a DAI's TDM idle mode
+ * @dai: The DAI to configure
+ * @tx_mask: bitmask representing idle TX slots.
+ * @rx_mask: bitmask representing idle RX slots.
+ * @tx_mode: idle mode to set for TX slots.
+ * @rx_mode: idle mode to set for RX slots.
+ *
+ * This function configures the DAI to handle idle TDM slots in the
+ * specified manner. @tx_mode and @rx_mode can be one of
+ * SND_SOC_DAI_TDM_IDLE_NONE, SND_SOC_DAI_TDM_IDLE_ZERO,
+ * SND_SOC_DAI_TDM_IDLE_PULLDOWN, or SND_SOC_DAI_TDM_IDLE_HIZ.
+ * SND_SOC_TDM_IDLE_NONE represents the DAI's default/unset idle slot
+ * handling state and could be any of the other modes depending on the
+ * hardware behind the DAI. It is therefore undefined behaviour when set
+ * explicitly.
+ *
+ * Mode and mask can be set independently for both the TX and RX direction.
+ * Some hardware may ignore both TX and RX masks depending on its
+ * capabilities.
+ */
+int snd_soc_dai_set_tdm_idle(struct snd_soc_dai *dai,
+			     unsigned int tx_mask, unsigned int rx_mask,
+			     int tx_mode, int rx_mode)
+{
+	int ret = -EOPNOTSUPP;
+
+	/* You can't write to the RX line */
+	if (rx_mode == SND_SOC_DAI_TDM_IDLE_ZERO)
+		return soc_dai_ret(dai, -EINVAL);
+
+	if (dai->driver->ops &&
+	    dai->driver->ops->set_tdm_idle)
+		ret = dai->driver->ops->set_tdm_idle(dai, tx_mask, rx_mask,
+						     tx_mode, rx_mode);
+
+	return soc_dai_ret(dai, ret);
+}
+EXPORT_SYMBOL_GPL(snd_soc_dai_set_tdm_idle);
+
 /**
  * snd_soc_dai_set_channel_map - configure DAI audio channel map
  * @dai: DAI

-- 
2.53.0


