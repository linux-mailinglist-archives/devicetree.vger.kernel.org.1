Return-Path: <devicetree+bounces-261229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 491cHQS0fGnSOQIAu9opvQ
	(envelope-from <devicetree+bounces-261229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:37:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C40BB1DF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BB2B304503D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C18F30F546;
	Fri, 30 Jan 2026 13:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZvlYOdjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B24303A3B
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780090; cv=none; b=L7t7DPq7mSTaCORilFmpF2zcVSB/hcb8OI8R7kKwWAMI94ki2UjEgX0br/Ej9kO5DSz7xtoLcgOiL0a+VJ6NgsL0U2r16L746oqT8jLOGLugWKx1dLT6tm2+//hWYvoJCndqdcv//MpwzQrDUo8l0cNmWOmPsTQGFfzhw4KuD0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780090; c=relaxed/simple;
	bh=Ywe9bPVypE5wkrLXuYYavaxat+KMj7tKegs5WxEIihs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EkzOLBR7hXI5N147svedLGWgI7QQ0vVpQGJvz7KJr0qRQwjHivJdHCYCNpSxAT98gPxU/jaFtr1/zI8CbdnbIxcYdOShp/cEkcEvJlhcVVJ2kyH7fmbpjGmIvcu+ESXA/fR0E2yTYsjV3AM4W+JiWlP+dDTPQBXINzb+Gr4tc2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZvlYOdjL; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42fb6ce71c7so1831162f8f.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780087; x=1770384887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vcw3yENIvlldxKIBwPqE+wjXhTrfY3vndqTsUZd8d80=;
        b=ZvlYOdjL9bok27WwllLtYYOj3wChHo70r+ULhziffZ7UkEiBIOjuBCLPDoJ2JlNv7a
         ecUW7Q1m6WUIoVnyJ4R9Fo6ROpdh+OH9vBUdAHvgkZD3egnYOcyoQ1K1pFcyW8RzKELx
         +w2YN8f4FlRk198rg09Fd+c6WD8/amh7dDOVA3N0uA4I+hs4IVdG1szPfGmiN+idbiwI
         Kp6C2bwULdTiFhA4gtj9imTXlsNkekjpBtEaki/MF6i4lcwFWnhSbWbjTtMU8nbbCKBH
         nljWhgSa57bdqLIb/w2hVmrO25cDAmfGWHzxmdg06CRE1/Mp4glc2HWTjl13mWBX44fR
         fXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780087; x=1770384887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vcw3yENIvlldxKIBwPqE+wjXhTrfY3vndqTsUZd8d80=;
        b=kknp9TTgZLlISOBtR2nDAZS7E+rm1EAp+j1SF0YxoVncYbW8ZXN/97G/E1fZf/PR5M
         eMxqCfgpSLhv7lFxbveEDVnAz2Ulq/iFTkFiFFhgt7yvfQDcsyMlLUe7GOk/fNdXzvIw
         lGVBzLtSggM76mY63ptome1JDfX/V1C4LS8BdiGJTzk1dNA5wrcf+vnlVbWNzyiotP4s
         jkNdRQRMj8FxjNXyH2QXPUkKoJhWqAsx9WhNpqlRRq7IN2SeMdbHuAl6htzIFKa/L7Hg
         0ZYv2RqKl5KI8GHNw4lE04pTvy4VvQ8FmRmcIK7sL1Wg+kf1fSefYrH9ALK83uIdqKfM
         nnzA==
X-Forwarded-Encrypted: i=1; AJvYcCVb6Cl+/YBNDzyrNw1MkTgsc3i/DeDUbZI2CJupWdDAt+lWDQrgrNDQ5tlxADq28Zna6CIfGB8yTWIi@vger.kernel.org
X-Gm-Message-State: AOJu0YwgL0BrIrHF7Edx/UDFyrhoL4KqWFSnwiX/mAoL87b3ZWn9ou7P
	YQi/FBzWDbdVHo9Uwgxgfa2zJ276FqsiA3DG9ikYmY2Y0KIgsNuGomuI
X-Gm-Gg: AZuq6aJFWrT0X46gQ4ksG0VctbNSrfyRA6FCU9S1O8iGEllQixIUjy7CeTwQp2H07fA
	dQwAIbEV/+DlVHSsRUCGKmYqI6Uhvi04izewcOVuAF63wizUJzxuXmyp8SQ6ShEiKat0uZrY23s
	xotHHX0BwF2VBs50S+dx0FPKKsfWwDW5t4A5dhu86G+ypZHcwpqQ2UdUeTXLJL3O+8Y6bMnclW7
	zJUUkEOvyPaTgKclTO2jQ3qla4XkHhcZcHNcuVECN7zJIdAr8p0xVi/05OymQOJm/eBerdCS+Nn
	O2jbDOQU3otp8/gcOnMWUFGiniRF7SssU0b62I0zZUHyWUKDOyvxZ+IMIHW1XFo+VkNixTtyxW+
	BuSv37HQvwHcgF90nZFfn4kvEUYUFKj59XTK+Uw1JCnkVVR0PAu0GmpfOXSD3zWAIUyLw32F5Ro
	8/
X-Received: by 2002:a05:6000:2905:b0:432:5bac:3915 with SMTP id ffacd0b85a97d-435f3aaa63fmr4508396f8f.39.1769780086599;
        Fri, 30 Jan 2026 05:34:46 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131ce93sm21536837f8f.24.2026.01.30.05.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:34:46 -0800 (PST)
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
Subject: [PATCH v1 2/4] ASoC: tegra: Support CPCAP by machine driver
Date: Fri, 30 Jan 2026 15:34:32 +0200
Message-ID: <20260130133434.353353-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260130133434.353353-1-clamor95@gmail.com>
References: <20260130133434.353353-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261229-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9C40BB1DF
X-Rspamd-Action: no action

Add CPCAP codec support to the Tegra ASoC machine driver. This codec is
found in Motorola T20 devices like Atrix 4G and Droid X2.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 sound/soc/tegra/Kconfig              |  9 +++++
 sound/soc/tegra/tegra_asoc_machine.c | 52 ++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/sound/soc/tegra/Kconfig b/sound/soc/tegra/Kconfig
index 9dbd589879fb..f9257830daa1 100644
--- a/sound/soc/tegra/Kconfig
+++ b/sound/soc/tegra/Kconfig
@@ -294,6 +294,15 @@ config SND_SOC_TEGRA_SGTL5000
 	  boards using the SGTL5000 codec, such as Apalis T30, Apalis TK1 or
 	  Colibri T30.
 
+config SND_SOC_TEGRA_CPCAP
+	tristate "SoC Audio support for Tegra boards using a CPCAP codec"
+	depends on I2C && GPIOLIB
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


