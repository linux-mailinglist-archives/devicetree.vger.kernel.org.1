Return-Path: <devicetree+bounces-263455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAhIFBcnhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:38:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B58101303
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B749430530D0
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A2B40FDB8;
	Fri,  6 Feb 2026 17:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LCBLrlXm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDCE3D903C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399281; cv=none; b=fq7pqLILnkmsnC5miRqPwIexlmIqfgX6yFapTvQnwyCSwyJzL53hTHftfOjaQsXjdFEaBrj2o8nqADMkzT055Ypv2nJ21TOL21upQ/aIrpkaMPcsczJaz8TH13GT+Oa+gZBOANTeM0AeJLDsOknJ8BE6vPmXtKdgL6oqlFQuvjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399281; c=relaxed/simple;
	bh=xM19W5y6sBZhK63TGYfPq7Dcx+S+y11DhFbKJgJ2kiA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Blr+mdy5A0zDOu+tI/TUKb6SQYSjT73pEIJjmA6nU7TK0eOBtZqs0xo4we/TvfEhG4M7zqvTsY+ihwg98T6wO8buw9onDj6yvvAuQ/0KU3/tVczjU2hnfOpDUMgbEug52qkrEl23nUPgtWoJ+PGNNDNueQYjgRYrWWuNDyAEQXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LCBLrlXm; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4362c635319so672857f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770399279; x=1771004079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1uE9SbozYnquR9REkQsKIr4GVqaAJFPEg6pyN2tdEE=;
        b=LCBLrlXmGPDxM+vdCHjLYlxhSDszn0WfxISbJVKJYEL6IjQJ1WaSAFawaE1/hd6WjS
         lLgCj2wFxzIvz8BI23nSkEMKJMqTp8soqYS1qwQTGRiS6QMhn/PPdvSpIMo2GpomzJJ/
         6iA6MbKsouvpZeiKJrR80Ap6VjdwjEdLbkKQvJupfn4IDril9Je2mV06s2admJHaSyEa
         JocKfoX3+APeJxoitxyEgVs851iiNyT7JsHjUlJY5JGzy86/xN8Uea1FDceKrg8CGi3S
         TyoVLkxQtvOJU5aixf+ol+K3RwWPgu02gGdCg/5P4Gyq5FBM9zZUEl0kRzG5ExDXZPAI
         Bo6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399279; x=1771004079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S1uE9SbozYnquR9REkQsKIr4GVqaAJFPEg6pyN2tdEE=;
        b=G4siRXkB8pCT9q/f5PT2ug2Ow2AtQ7KYTB4QE2jtEXj5W4HXy1Xj2n5F80WdcSWhMx
         ItyMhKLiv5HZdjfHN1+brZqvsfxcVyXntgsScrnFrtUo1p3soq86NmR45TpNB83HqQbk
         EZBlRft/jypLuzR0MPjLbrUv+2BkSPz7DpVj9VNwOddrhw6o1Ocga6lnwUu0FXp3jNJq
         3KPslENce5buB8DQaC8n6prpx5Pym6L68m+ixe2LdddYIJBXu3/PGJ5E1Co+XkId80dh
         bZdxS7Unlt2l45v9waBa5JcMX/mEhaLSWUuDRaQ8cvmK34J08tg9RqPHV3OtAiwLO1+Y
         EQbg==
X-Forwarded-Encrypted: i=1; AJvYcCVwK5fK0sX8j7VLDDrEWqZBTV3dzDgK2sZ8+zhg92S9ivo9rfyF1DC5z7I5YyJ9JQLQDFuhpDM/QPsh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ajxs8Ju6y0mnRnTq0gwPU+eemar+AcHvzE8DUyxj7zWYys46
	35X4oqZ9h+PT55MssyAD0rHb/4/wqBsBFhOPuPyT9f17H2hXj7PXeMiE
X-Gm-Gg: AZuq6aK0T2qhWx0cdnnf7bjUeXeESLIadM5f4bs8AqULel7IfVtLXoRjcBP65X6AYzE
	iF1dMt/LcvCAsrYHgGjlCDISIJFsM8Rkc4OkVo82sKPhd6T/1Ud9td07HIw6sLjEL9Kl5EuwtfC
	I1Oqp1g5cjoPoSynLxQfNORanNPP5QLEc4EAGi8TULx4PvUyO6HDXzpjPPQkDpOht07FctXG+x2
	oLLdALN5sIM1u444sVOR/1WdCRHXUZ9wAmhX3ayamvnG8ATuUYl3dzH+d0MpacU1wUYoC0+B50N
	a9VCQJrZaip80OCMhvqCmZZwmgIgiiwkL48DzdYqHi8diI86QigtKyIflOFkw09qU97c8tjad1u
	VBZG0eUHYoEZ93LRiGXFU4gs85v+0HOfl2AHF3Zi3ZMVtTvpclzZfFJK/qcowJ549BAOBWHJ9qi
	nI
X-Received: by 2002:a05:6000:186d:b0:433:42d1:f71f with SMTP id ffacd0b85a97d-4362934c50amr5948476f8f.38.1770399279228;
        Fri, 06 Feb 2026 09:34:39 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm7454523f8f.17.2026.02.06.09.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:34:38 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] ASoC: tegra: Support CPCAP by machine driver
Date: Fri,  6 Feb 2026 19:34:19 +0200
Message-ID: <20260206173423.145954-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206173423.145954-1-clamor95@gmail.com>
References: <20260206173423.145954-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263455-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nvidia.com,perex.cz,suse.com,yahoo.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0B58101303
X-Rspamd-Action: no action

Add CPCAP codec support to the Tegra ASoC machine driver. This codec is
found in Motorola T20 devices like Atrix 4G and Droid X2.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 sound/soc/tegra/Kconfig              |  9 +++++
 sound/soc/tegra/tegra_asoc_machine.c | 52 ++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/sound/soc/tegra/Kconfig b/sound/soc/tegra/Kconfig
index 9dbd589879fb..dd58525b7079 100644
--- a/sound/soc/tegra/Kconfig
+++ b/sound/soc/tegra/Kconfig
@@ -294,6 +294,15 @@ config SND_SOC_TEGRA_SGTL5000
 	  boards using the SGTL5000 codec, such as Apalis T30, Apalis TK1 or
 	  Colibri T30.
 
+config SND_SOC_TEGRA_CPCAP
+	tristate "SoC Audio support for Tegra boards using a CPCAP codec"
+	depends on I2C && GPIOLIB && MFD_CPCAP
+	select SND_SOC_TEGRA_MACHINE_DRV
+	select SND_SOC_CPCAP
+	help
+	  Say Y or M here if you want to add support for SoC audio on Tegra
+	  boards using the CPCAP codec, such as Motorola Atrix 4G or Droid X2.
+
 endif
 
 endmenu
diff --git a/sound/soc/tegra/tegra_asoc_machine.c b/sound/soc/tegra/tegra_asoc_machine.c
index d48463ac16fc..10834f9c3422 100644
--- a/sound/soc/tegra/tegra_asoc_machine.c
+++ b/sound/soc/tegra/tegra_asoc_machine.c
@@ -287,6 +287,25 @@ static unsigned int tegra_machine_mclk_rate_6mhz(unsigned int srate)
 	return mclk;
 }
 
+static unsigned int tegra_machine_mclk_rate_cpcap(unsigned int srate)
+{
+	unsigned int mclk;
+
+	switch (srate) {
+	case 11025:
+	case 22050:
+	case 44100:
+	case 88200:
+		mclk = 26000000;
+		break;
+	default:
+		mclk = 256 * srate;
+		break;
+	}
+
+	return mclk;
+}
+
 static int tegra_machine_hw_params(struct snd_pcm_substream *substream,
 				   struct snd_pcm_hw_params *params)
 {
@@ -985,6 +1004,38 @@ static const struct tegra_asoc_data tegra_rt5631_data = {
 	.add_hp_jack = true,
 };
 
+/* CPCAP machine */
+
+SND_SOC_DAILINK_DEFS(cpcap_hifi,
+	DAILINK_COMP_ARRAY(COMP_EMPTY()),
+	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "cpcap-hifi")),
+	DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+static struct snd_soc_dai_link tegra_cpcap_dai = {
+	.name = "CPCAP",
+	.stream_name = "CPCAP PCM",
+	.init = tegra_asoc_machine_init,
+	.dai_fmt = SND_SOC_DAIFMT_I2S |
+		   SND_SOC_DAIFMT_NB_NF |
+		   SND_SOC_DAIFMT_CBP_CFP,
+	SND_SOC_DAILINK_REG(cpcap_hifi),
+};
+
+static struct snd_soc_card snd_soc_tegra_cpcap = {
+	.components = "codec:cpcap",
+	.dai_link = &tegra_cpcap_dai,
+	.num_links = 1,
+	.fully_routed = true,
+};
+
+static const struct tegra_asoc_data tegra_cpcap_data = {
+	.mclk_rate = tegra_machine_mclk_rate_cpcap,
+	.card = &snd_soc_tegra_cpcap,
+	.add_common_dapm_widgets = true,
+	.add_common_controls = true,
+	.add_common_snd_ops = true,
+};
+
 static const struct of_device_id tegra_machine_of_match[] = {
 	{ .compatible = "nvidia,tegra-audio-trimslice", .data = &tegra_trimslice_data },
 	{ .compatible = "nvidia,tegra-audio-max98090", .data = &tegra_max98090_data },
@@ -997,6 +1048,7 @@ static const struct of_device_id tegra_machine_of_match[] = {
 	{ .compatible = "nvidia,tegra-audio-rt5640", .data = &tegra_rt5640_data },
 	{ .compatible = "nvidia,tegra-audio-alc5632", .data = &tegra_rt5632_data },
 	{ .compatible = "nvidia,tegra-audio-rt5631", .data = &tegra_rt5631_data },
+	{ .compatible = "nvidia,tegra-audio-cpcap", .data = &tegra_cpcap_data },
 	{},
 };
 MODULE_DEVICE_TABLE(of, tegra_machine_of_match);
-- 
2.51.0


