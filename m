Return-Path: <devicetree+bounces-269672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPM9M3jzo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0B1CEC4E
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A66C7300691B
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1737532E138;
	Sun,  1 Mar 2026 08:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D4CZMD28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20631FC0EA
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352370; cv=none; b=kgEPonuTZJZ7IaFKB5+0UKih53bMmFgekZTdIpTd75Z0aqPzeipq1iJ/9l0QnPXGiVi9rSM1OWwCGEHfh9aEqIYGMPe+fhr78pGG3Jd7LcwZu2RSk/2lDwcN4CE1Pn1GljlQNqeyzXdfUM1DCCzx6lru1OVDM/LngM3gHLecZcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352370; c=relaxed/simple;
	bh=URUffd83HAMRz7HWjO4F6ZoezvrN+kfv+dGBuqFAmzY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iGrPjKmDsk5dgyuQjvi7XBV8RY8i68KF6kXNZqgiiSUZ0xTSrjAJv0qgfsB456Ke44Wh0DPjiI4qUPzcx/xRuU4yPGLgRAeni0tdd6q6xP5Y76I0zSiaUBWq85+Smw8sFRo5K4rZM05bgXH1Oe5b5Yd8flGGZZ/c4ireXz42o0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D4CZMD28; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3566af9900eso1634580a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352368; x=1772957168; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=enGdRrsaB6ZR8xDsA9BNubZAoRwYGJLgTDSI2U7J/do=;
        b=D4CZMD28wTEtL/hk1VvEa3UpeE/BwFb9DqyNAa0HMER3u1X7OM49aQjyP1mJmD48gL
         z1I8Aot7VdCW1wPD0LLDlmkVlFfo7DjBOtfjII8K+5Lnzz/YVDPUUbppYrNbMDVheL56
         KzUR+/ommhy1XgCDQTpL4fAYtL0lG8ES03Qu3UAlyoG7tDplQzxUPtbXYQonW8G+TbZi
         3HEz+RLW4K5zrlNyaQkFuuJU7mBVY5fWBdt4u6cZmyDs2HVU6LRbvBd+Y9NKTmvaVhgg
         CunnpmO2w2TvRxNCXb8CVXUjaXMJsd1PqZ+GRtXLLU/SezVkgndjsCjhOWssrQtNzoTR
         uz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352368; x=1772957168;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enGdRrsaB6ZR8xDsA9BNubZAoRwYGJLgTDSI2U7J/do=;
        b=mWA/OO+W1YrJZIMywJ5UozPUUQuhGn+TZDBf8irLvjj+cc8NfO2HuJWjrl6TTLOYVM
         kYSAidTKibu37N6tpEdQJ2sw9W+gjfrRn8j7XCaED6o2yI6YHtcxScS87JTX6z7jp5ph
         AAex2gOqpVXHVD/bhtnXYhqgx5uOEpuuNdTNRzLB752VW15gAVXaPC9Iim2mnnguxcKG
         HlgabDjI9BWGA9g0E4w0NtvL+2lxb4ALuuFBNeEwApt/fqA6OP/HXgBkwueWyoiKGHeN
         +NFQbh5vs0BVnUDVabFuV63DPrPr52wSQEUuXCnkPUPQTSgKDTolPUuuJUeW2JgDeULv
         wkSg==
X-Forwarded-Encrypted: i=1; AJvYcCVWpi44aZYEwjKg3xsj5kVakN0RoustK2HpStOMZikbyRiaWR1a4pqxoa1ll/K6MRfAzUdFTWy2n06G@vger.kernel.org
X-Gm-Message-State: AOJu0YypF8wSkOapydstUgjl5jetHKjUTsiNWjbho6TBMCZ9i0IJhdtb
	/dd2tQhgsKbixe1b8MaFALu2FO7fvKb38P2DgjBJcQzyuZJAK/sSRRPv
X-Gm-Gg: ATEYQzxfzwlHFsbKX6itYnTvKq6wEMExMiXvQEtA7F7yCf15GW8greuTuEVlfLr5I2E
	ZAtIamNLoBEZpngN/TGLrnyeHjmrNE1xd+fvUAMnWiKb0+tcaw1r/A0uJeR7XbTyXPFlbJ6iT8q
	XLy9a+7aKIMvIkX5ZnNrLOcfQWR3BFa88CGpl4K9ctoPyPDPlIrhsf3U1ihiak/qMM8wSF+tWyw
	7j+vew3/dC1bEQUSLMHd5CAtzb6YzxSQ/2rH+3Fo568tNnySA9cs9RfW9P2Y9EvZ8UMoiaRJeVh
	jd9YN5UeY3pJAmAH1uU/qYGMS96Li+Nnt2LoiD7RSh7vWslGZqLl3CWSKq54e0JHnwwMwJIZdMN
	xkoDkUQXOjyZpaYW6t6eEdysgtPihmYR03w/Kd8hX0U66Izuw7TjUQN9W2mA0n1bkMSgzByOhVR
	U9ufBh+nulgL7/I1n/lc+0tl+1zWLOGGSKRkD9t/o0Hfh3NxV065kR71NkBByN+D6+QUQHG5Tyi
	xPMUlG+avi0MtY7whoD+KyZm5WQlpkUXniDEetdPhol7XsbYAN/XhlvcOX5YFOAl5L1mY5ZKxeU
X-Received: by 2002:a17:90b:3dc8:b0:359:8727:6448 with SMTP id 98e67ed59e1d1-3598727677amr1667062a91.17.1772352367924;
        Sun, 01 Mar 2026 00:06:07 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:07 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Subject: [PATCH v3 0/7] ASoC: basic support for configuring bus keepers
Date: Sun, 01 Mar 2026 18:05:19 +1000
Message-Id: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD/zo2kC/2WOQQqDMBBFryJZNyUTrdSueo/SRUxGHVAjiYQW8
 e4dhYK0y/eH95hFRAyEUdyyRQRMFMmPDPkpE7YzY4uSHLPQSl9AK5CzG3jqUcbez1GCqk3Fp9K
 ZQrA0BWzotQcfT+aO4uzDe+8n2NZvqvpNJZBK5ldn6qasrQK8t4Oh/mz9ILZU0gdd/32SNOvoC
 leVBeQG7VFf1/UDGPBWnOsAAAA=
X-Change-ID: 20251201-tdm-idle-slots-10ba92516da4
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4466;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=URUffd83HAMRz7HWjO4F6ZoezvrN+kfv+dGBuqFAmzY=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLPyd/fhnxamfW29rG17umLWie13V2beT0qq2a6eqtE
 QcdY+zUOiayMIhxMViKKbJsaBLymG3EdrNfpHIvzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFNtdoSRYV9L4Ay5BVaLZm0u6XvVO/Hwo2MZma/kv+7bmvqBd+vrkNOMDO9jLdO
 Plvya5iNc9fXvLK+ggHPZ6htE1QM9TIIXXm6R4gcA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269672-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D5E0B1CEC4E
X-Rspamd-Action: no action

Hi all,

This series introduces some infrastructure to allow platform drivers
to specify what a DAI should be doing when it is not active on the
bus. The primary use case for this is configuring bus keepers which
may be integrated into various codecs. The instigating use case for
this functionality is an interesting bus topology on Apple Silicon
laptops with multiple codecs.

Most Apple Silicon laptops have six codecs split into groups of
three, driving a pair of dual opposed woofers and a tweeter for
L/R stereo sound. These codecs report the voltage and current across
their connected voice coils back to the SoC via the SDOUT pin,
represented as PCM data sent via configurable TDM slots. This data is
used in conjunction with the connected speaker's Thiele/Small Parameters
to ensure that the speaker is not being driven to levels that would
permanently damage them. This is integrated into CoreAudio on macOS.
speakersafetyd[1] handles this for Linux.

All of the codec SDOUT pins are attached to a single receiver port
on the SoC's I2S peripheral, however are split across two physical
data lines (one each for the left and right codec groups). The receiver
has an OR gate in front of it, which is used to sum the two lines.

If at any point a codec is trying to transmit data, and the "opposite"
line ends up floating high, the transmitting codec's data will be
corrupted. We need to guarantee that the idle line stays idle.

In the downstream Asahi Linux kernel[2], we set up one codec in each
group to zero-fill or pull down its line while a codec on the opposite
line is actively transmitting. This is done entirely in the codec
driver, however this approach is over-fit for this one use case. This
sort of functionality may also be of use for other hardware, so following
previous mailing list discussions[3], I have tried to expose the
functionality in a more configurable and generic way.

I have integrated this approach into our downstream platform driver
and select Devicetrees as an example of how this mechanism is intended
to be used[4].

Regards,
James

[1] https://github.com/AsahiLinux/speakersafetyd
[2] https://github.com/AsahiLinux/linux/tree/bits/070-audio
[3] https://lore.kernel.org/asahi/20250227-apple-codec-changes-v3-17-cbb130030acf@gmail.com/
[4] https://github.com/chadmed/tree/tdm-revised2

---
Changes in v3:
- Rebased patch set
- Elided unnecessary $defs in tdm-slot.yaml
- Referenced entire tdm-slot.yaml instead of per-property definitions in imx-audio-card.yaml
- Changed repetitive TDM slot property definitions to patternProperties in tdm-slot.yaml
- Link to v2: https://lore.kernel.org/r/20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com

Changes in v2:
- Reworked tdm-slot.yaml schema to silence dtschema warnings
- Properly referenced new tdm-slot.yaml schema in affected bindings,
  again silencing dtschema warnings
- Add PULLUP and DRIVE_HIGH as possible bus keeper modes
- Reworded commit messages and cover letter to more clearly explain
  what the goal is here
- Link to v1: https://lore.kernel.org/r/20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com

---
James Calligeros (7):
      ASoC: dt-bindings: convert tdm-slot to YAML
      ASoC: dt-bindings: update tdm-slot.txt references to tdm-slot.yaml
      ASoC: dt-bindings: add TDM slot idle mode properties
      ASoC: soc-dai: define possible idle TDM slot modes
      ASoC: soc-dai: add common operation to set TDM idle mode
      ASoC: tas2764: expose SDOUT bus keeper via set_tdm_idle operation
      ASoC: tas2770: expose SDOUT bus keeper via set_tdm_idle

 .../bindings/sound/imx-audio-card.yaml   |  9 +--
 .../bindings/sound/simple-card.yaml      | 14 +---
 .../bindings/sound/tdm-slot.txt          | 29 --------
 .../bindings/sound/tdm-slot.yaml         | 52 ++++++++++++++
 include/sound/soc-dai.h                  | 22 ++++++
 sound/soc/codecs/tas2764.c               | 95 +++++++++++++++++++++++++
 sound/soc/codecs/tas2764.h               | 11 +++
 sound/soc/codecs/tas2770.c               | 75 +++++++++++++++++++
 sound/soc/codecs/tas2770.h               | 12 ++++
 sound/soc/soc-dai.c                      | 40 +++++++++++
 10 files changed, 312 insertions(+), 47 deletions(-)
---
base-commit: d898041bfb8667f4bad10abba5dedd7edd88c751
change-id: 20251201-tdm-idle-slots-10ba92516da4

Best regards,
-- 
James Calligeros <jcalligeros99@gmail.com>


