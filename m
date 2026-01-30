Return-Path: <devicetree+bounces-261227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDT5OLezfGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:35:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6DFBB194
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE65E3009B21
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F3C3002DF;
	Fri, 30 Jan 2026 13:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NCqAJpzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739862EFD91
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780088; cv=none; b=MX2YwruzYou2tYQyXvuCFf3ornjxE6pED+3uwlEQvUIDXSwataQGRcyaO/CGtirBkHLAXZzDTxdfSjzCjWCzf4lnp15dz8xoAN6tzy+x+WuHyQX6ZCND3ysXby5NFxmD5u8yX2xhFLDSrbM6PuSLYdV+kCP6K+YTi1jOHzgzHTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780088; c=relaxed/simple;
	bh=PszrTvwUFgAHB3Pe1B87ctHo6r4Aoe2ej2tGVNg4EMA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mP9tcbP8Opqg/su+t5BJWHqfx96teLKxfqz8hwshnqBokKHC+oJAusCIYT/t9o8IPYQ5SJzEAkWQgUEhz3KY8eIKdlwoBot7+VLCcZxNZCHdYPtyuh/PLrCBkOL6aidK4lzWIiHgWAdV9myFFwIClCnXSQuj98IJHnpIKlDe1DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NCqAJpzL; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fbc305882so1409542f8f.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780085; x=1770384885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kvNmHZTLWASawbmDuih3QJ/Sdk0W5SUborAMkDuuQ7s=;
        b=NCqAJpzLudUuuPz5x4NMjcedLQw4MzWdIBGxdl1gMZyTzmeBhd1JF3/4vp3WFUJgtz
         UqDRTxINI4k64ZwrqYzgJEwFESAf3BtA5dz+Z62PUQ0rp8uSwc+IIw90S20o5WXlWzJ2
         SYJo6SKLzpjEiEiEfk7Cjrr1mIuYuULmfyuPvn7B4EWg07LohQx/sGsLw5ktADfa//k1
         LPWCScWAjjILkyff6dDN7eXzuwuG8Z553afQo2O0x9OiO/2OlvozrwiRBmHMqSuyUgCK
         DKyrFVthGmrqdSlyNqlXTRW4Pvg12wuUELVHl4TjoSIkTz1eMs/3qP7wx1tWfSpSTfDg
         KkGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780085; x=1770384885;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvNmHZTLWASawbmDuih3QJ/Sdk0W5SUborAMkDuuQ7s=;
        b=T0TieQaWj/IwvWXvLhpS1GXAnPvawBWvnIdass3QZz7bWwiE+v0N/0/3gZnrymjJ7V
         XaAOiI6eYyER8jYZFqm8baTMHkCOyvRMA4osHq8/4SzcAWM/vm6Lqz4as8D+Ham8KAqi
         tu7WCMX+GTlydZaoIcU1TnR/5C+XTqM/P+DQegFZn2VeT/slHnLHj632wBJYfNSFxfIN
         q1xlDBSumjkaeEFrWMHHznqJH3J4M2SUShYyHORhEw8nN9sfyRs9FXAWOFeEFdPlzUWd
         tnZ9RSeZpwiCCMBFYxJNMIAA9oEWFG4zv4rSAMM99iWljvFOQG2+u21P1LqcfU1TezQY
         +IEA==
X-Forwarded-Encrypted: i=1; AJvYcCVY6OdfJheptKlqnxL+3SYFnLiDzOnT9gYS3fgWivJwLdnc2KQPZ5OTT+mPwtvWlKaTL+ZqKz94hCXv@vger.kernel.org
X-Gm-Message-State: AOJu0YyaxXTfjVI4le7JoC8TgO5S7VLED5OMB6T9Xxn+jh1XRys0Ubxt
	x1sGrfKoP7EaziL6Bd3/kyUVX/PvEBpFhXOkY0uxycRSD6QDv0V7s+kH
X-Gm-Gg: AZuq6aK+UZ8FlwLiFMeFiO6bpzv4lQOkAPiN59P72Abd0DcWzEAracMQEU3NFUEMuLc
	Ez+vOGV6Fga6FprdJ3WB7UbN1+GVaTBDxdGAgJ+VMb6xMQ53+rCB1wCrC8FeZKWC/f5vz1Ei6r+
	yEfuwRFI4Rv6PpzMOoJ73pi8UiQ2tyTTTOxdtiUE0qj3GlciqxcZ+HBuREtUTqOMPQNKd4lPgnO
	68ZeDp+JSQ6eFzR2tYv8yswJ/OdpBtwe9dJE/UL/gy4vTqc9Tj8EMGiU91m8639xQxF9jG8d33q
	niI8H47Q4BRcjMarMk1vqPv1GYVRKG1mv2+ugZmNwCyj8qiTyPMG/apFhgR9vgBOhuOrjupzpmU
	sqCqbvIECjAI6q5zlIM3G0B0pidE1gdOafQED+eM/G6V1QWPodY90INNwCMQpInScDvrN/XAS/V
	2R
X-Received: by 2002:a05:6000:2401:b0:432:a9db:f99b with SMTP id ffacd0b85a97d-435f3a0ccafmr3862527f8f.0.1769780084484;
        Fri, 30 Jan 2026 05:34:44 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131ce93sm21536837f8f.24.2026.01.30.05.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:34:44 -0800 (PST)
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
Subject: [PATCH v1 0/4] ASoC: tegra: Add support for WM8962 and CPCAP codecs
Date: Fri, 30 Jan 2026 15:34:30 +0200
Message-ID: <20260130133434.353353-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261227-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nvidia.com,perex.cz,suse.com,yahoo.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9A6DFBB194
X-Rspamd-Action: no action

Add support for WM8962 and CPCAP codecs found in various Tegra devices.

Jonas Schwöbel (1):
  ASoC: tegra: Support WM8962 by machine driver

Svyatoslav Ryhel (3):
  ASoC: dt-bindings: nvidia,tegra-audio: document CPCAP CODEC
  ASoC: tegra: Support CPCAP by machine driver
  ASoC: dt-bindings: nvidia,tegra-audio: document WM8962 CODEC

 .../sound/nvidia,tegra-audio-cpcap.yaml       |  85 +++++++++
 .../sound/nvidia,tegra-audio-wm8962.yaml      |  88 ++++++++++
 sound/soc/tegra/Kconfig                       |  19 ++
 sound/soc/tegra/Makefile                      |   2 +
 sound/soc/tegra/tegra_asoc_machine.c          |  52 ++++++
 sound/soc/tegra/tegra_wm8962.c                | 165 ++++++++++++++++++
 6 files changed, 411 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml
 create mode 100644 sound/soc/tegra/tegra_wm8962.c

-- 
2.51.0


