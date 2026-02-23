Return-Path: <devicetree+bounces-267272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBx9A+H4m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:51:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A912D1725F5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C9A9E30098A9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E0734846E;
	Mon, 23 Feb 2026 06:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nfsy6irm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F310A349AE8
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829467; cv=none; b=n2kJkjbpYHtdzOIDngz3YjraoQFMtwb+WpjMHNo1YfkhF1ydjVAQDgQ4XwhLYZrI11eRLZKkdahJ2C+hScTVoT6wKNX1tV1GEBjZwNT9tp8cvxPlkI9iPN9noS94oJ6M/1T6H2NA9sKK33KwOYClV6uhVAzN3pcJJgfMHiHQzeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829467; c=relaxed/simple;
	bh=xM19W5y6sBZhK63TGYfPq7Dcx+S+y11DhFbKJgJ2kiA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lnJvzgMXOFUVr4/nzNHTVzIDLko2LSmoc5AotG0awt9Pl/RMoKL31h0oZeEilfHWEqwP2VDdQCneB9WjUfnLFBNqbWJBaf3P+RFdctcoDUmFXU6DGfFjrKybP5PYhO/Et+f9Y17y3Ne20RTEM8KB7VM+aeMSedk9Qsbm+nHV5Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nfsy6irm; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-386b4c28ad6so34656431fa.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829463; x=1772434263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1uE9SbozYnquR9REkQsKIr4GVqaAJFPEg6pyN2tdEE=;
        b=Nfsy6irm/G6PU5E6FlxjQLziaEQQ8DAyWyGFPyDuCVBagpPV1VnkQ668fESXaAqCGh
         nIUr/nnjpV/uc7o2NwNfSpds5Vjyu/0Vm1NUJKwr52gTdjgIGc36F8uNPuQqILbjqUW/
         ZruowoNcKs9Z+HtBKXNTYC4rl2vIYRbNr0t+UAe4LsYZvmFNIo1H5rWFuuo/4PtHiiqE
         lgrfE8gRuaVEO6VcMxPSWYF1+eZp7ETycmiyf9DBdP0L2B9FLt/P9FvwiAjNNiKlQwLP
         Tykty6M8+atmkiRlvF8koqhKm8e+zkiJreKVwtMshXQQk5ZkjvLdzwG88HIXBl7MDCYc
         fNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829463; x=1772434263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S1uE9SbozYnquR9REkQsKIr4GVqaAJFPEg6pyN2tdEE=;
        b=YSScEk6kXGOk8WY51esaYwKPnPNVO1rljwAIY4mucpyZqRJ48fTVDiqiXbeiBpAusu
         Ofj9L1DNFpQXTMbn6vY8Q1DksW3rdzQrAxLgzegRnllQfMmlsBhlg0ju9UKr1EL2H8sp
         kwojsSuqZBnfoQRz1YmJ7gI7HFyzl8lu1UE9qWKIROaB8QelUk2sNHqIfRk4JBkcY4r/
         B4wO/aDJxGxZyhy225EsQLRxeTCeoRQRMBlalFK0x35egjyICHQFk3uNztFRlPUm2rLU
         SVJ2DqIHfBCw7vUftExgS/lY8Vhm23EOyaTcbLV9XqX09MRvQeDbwtBbCrhWnNh67PSR
         jG+g==
X-Forwarded-Encrypted: i=1; AJvYcCVJa7XYaLEpb+HGnvbpjC9QB6RplIqkbLFDOZcXxCv2b9jNq8clL+783AqIn+AG5+dTUzBj6HiPYCWt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxch9aSFxMF+mt7zRJ5w6l4XGBkh8cZaL5cq/n+S+dBfmmYyu1j
	NfQLIY+6O93qvvJvGHDsATsP79waDqWCjFqkeTF252pf3eoMtqiD4chg
X-Gm-Gg: AZuq6aInuy68fZxSjJ2aMtmUXHLMgDlA1Ex1FJAZf3ViJCNXEYQZ3KkMShx9UGyjk/1
	AFFWFIFXOH2f51QEg6uGCNEYTUgjvlAStMlwTuMf3KuI9PileSn9DD2lOTEpsasUbEYsMYq40BJ
	Hh/9ErWKVMzN6gJkBikEbfmEOEQUqWnjO7NCyP+rEibPuRn8LFvyZjEV5y+UO2hQReFdL1yeBU2
	K6PeMpKeBygEBvjRTQGlVI7MZBR82t7hJZwUXEAvLy/21ycq0p4gEIipxNkB7kn3l4F4PUWSoXH
	zIcsBiqo5ZVYTD04GzI4iAENkaLcN37847DyseLwQK3XVtcbwcQ52j1P/3fKmcm9fRasqscTX7v
	Ktk5NRdrzrVnC7nt1qZAPk2KLUlMZzzGn2YotsbD1RShG5rdhF4DnOfuwXi5KHO8XUdeac1Igps
	AHVkRAWdSOHn/H
X-Received: by 2002:a05:651c:1ca:b0:386:fdcd:b2c4 with SMTP id 38308e7fff4ca-389a5e6d6f7mr20783041fa.35.1771829462597;
        Sun, 22 Feb 2026 22:51:02 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm13916521fa.13.2026.02.22.22.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:51:02 -0800 (PST)
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
Subject: [PATCH v3 2/5] ASoC: tegra: Support CPCAP by machine driver
Date: Mon, 23 Feb 2026 08:50:48 +0200
Message-ID: <20260223065051.13070-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223065051.13070-1-clamor95@gmail.com>
References: <20260223065051.13070-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267272-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A912D1725F5
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


