Return-Path: <devicetree+bounces-267271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFF8Le74m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:51:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B55E17260B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 384F93024297
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0576F349B05;
	Mon, 23 Feb 2026 06:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FnxNc4CX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A624C3491C4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829464; cv=none; b=t8EBrqZ7CJCjEbk6tYhXYga+wZ8PhHKMGBAxXkp7bIdIH7ExtY3Hx31QtR7QZ0BhAGzaHChHkmfeApCsMBjBuA6DUXvElshfUAGKx3wlhq9sYow7DI4zWlPJh29z2PzmMntmuYr/yHbdahdtwqLg8unN/LhfmpDpHku5MnTeuyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829464; c=relaxed/simple;
	bh=qowcBJVi0boPrAEbMprHmoxPxBn/f6cve6U/hViUU3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=IAvGbGCQc/Qas6zyUtURvyuwmZZGbxl3T6PoAuNGEXOfuca70Ja09fkHs1019esUUYHSk6ZTGjEpG9ZkxJv2+7lGLEoqBRPeXrQ0h4c4mh/JGIbT15d5LG61ze8g3Sc5ycdBLMgn04wkx43PGJnhqI8ns9ptlZpKtlBMH40CglE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FnxNc4CX; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38707d4c8b9so48415721fa.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829461; x=1772434261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D6pR3G4a3CQ6oBq2KzhWpos/Gb35dTMTzLB28yt+kEA=;
        b=FnxNc4CXqVoUmhQuyR2R2AVI8g4bhDrWTxpJn9G8y42IwFDl6qJdvT0dPP/q3zbqAF
         15bZTM0uRmsj9pWVVfswcf1ASS014X+exhQhnv0iMPBpRiaKHAnnaYifCVtGDnbRV9JY
         ZF8DePapogbvrc4ZhhIjcSoPkJE5WiDdR9TYSmZRYXfDn7AISLnq1Do/GyTh+u5hRYnK
         5I5AwPSOtGNExrcbmKymBOsFDf93nrPf9l82O7w+FjyJLlglA4N8DuaJv9Xiuq0gczEK
         pdbpXYYvKs4wGp8GpBxPBgBNDkprRZJbg6twKctEkDJRiFpzDaTBcQPS6fYOliK6Qj1Q
         6feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829461; x=1772434261;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D6pR3G4a3CQ6oBq2KzhWpos/Gb35dTMTzLB28yt+kEA=;
        b=nPvqm8mw+zv7E6h4r7Dp47kz5fSKTtyWXUXT1tC/fPi/JMM6LXkeLRWx9W+t/F4kgk
         JJDLGxBSWqruN89PDaEkUSDUaFceGEemz+iLcrPeIygFE2+4jZUeZZYr42fFhpNAUaGc
         U78K4ZxOkySj0GVMZmLxvglfAJ3XUNJfS8t6BxiWtQ9FfDcUgU3R42xAHpDpRNOprmpq
         Ac+wsXq2T4UO19X8h2gvRmw2ieI1GUrVnnf36/ZDbVcYz8afB2hIHSqmtcnrKgA3nb85
         XNM7EGSq1Ig3Cj7oDz/x5c7p6tuWrYCl9xnzBM0VKUcLaz+l62GRcRlbhPL89P3E3FN/
         qEog==
X-Forwarded-Encrypted: i=1; AJvYcCW6hx7wp9wyuURJrNr958m1LHgRlWa08RcGeHlzUD0A5x+jhxeb3HFB46i3WF3MbVTKrAXk39YOa3Of@vger.kernel.org
X-Gm-Message-State: AOJu0YxRKsnHBUEM5hodsQPCkoRuzN32dngpU/AKcIPcjxQlKGauoJGF
	XaUmNlPhKt6mZjoIuZMb4JD06oq+FQCsiS3DwprWHaad8RDWy+N5oNpG
X-Gm-Gg: AZuq6aKFdwFgUZI0EHybSlcEgtJKZdozQCXbs5VPo/l/fZ/ejJBP0r5zehnjrY7b5XH
	6IKFUIKK7U+t9nBslU31U5WuGP+5i2JMH62HGJAUQh/DEo2F5USrAwtzAwu2gjMlm0eY+Q/6ziU
	C/8zgS05pNFN0nviNGToS4IoRIiJzM6qpf2jRDzj+sWIYkAap0oDFzt8jU6Cuc7xgxrGlu94I2e
	yqAO0ysXQMVTYz6uG/mQv4pF2l8qyvbMQWqbmT/jL7dvRTBLovrFD+gkTW05DZJa7J7SsEk+Bde
	cjZ/r+2v/GEDrlage7bzMLH0S9gmRF7tMdetsiOAG6XBHwOGfc8Q3rkT1rUDWWJoZGpJuI1GEGM
	tr5tHeQ5svryqUvsQcXj6iIlhQ9Ns7XYLKdWX0SuTL6QyF/CBI8Ql0KLF7sdq3pkejHNmSHBU4w
	EBdnsWzoLg4O1C
X-Received: by 2002:a05:651c:150c:b0:385:f235:51c9 with SMTP id 38308e7fff4ca-389a5de9682mr24271771fa.34.1771829460571;
        Sun, 22 Feb 2026 22:51:00 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm13916521fa.13.2026.02.22.22.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:51:00 -0800 (PST)
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
Subject: [PATCH v3 0/5] ASoC: tegra: Add support for WM8962 and CPCAP codecs
Date: Mon, 23 Feb 2026 08:50:46 +0200
Message-ID: <20260223065051.13070-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267271-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B55E17260B
X-Rspamd-Action: no action

Add support for WM8962 and CPCAP codecs found in various Tegra devices.

---
Changes in v2:
- fixed Kconfig dependencies
- added schema adjustments for max9808x

Changes in v3:
- in nvidia,tegra-audio-cpcap.yaml set vendor of device specific
  compatible to motorola
- in nvidia,tegra-audio-cpcap.yaml in example adjusted compatible
  to avoid confusion
---

Jonas Schwöbel (1):
  ASoC: tegra: Support WM8962 by machine driver

Svyatoslav Ryhel (4):
  ASoC: dt-bindings: nvidia,tegra-audio: document CPCAP CODEC
  ASoC: tegra: Support CPCAP by machine driver
  ASoC: dt-bindings: nvidia,tegra-audio: document WM8962 CODEC
  ASoC: dt-bindings: nvidia,tegra-audio-max9808x: document additional
    board pins

 .../sound/nvidia,tegra-audio-cpcap.yaml       |  90 ++++++++++
 .../sound/nvidia,tegra-audio-max9808x.yaml    |   5 +
 .../sound/nvidia,tegra-audio-wm8962.yaml      |  88 ++++++++++
 sound/soc/tegra/Kconfig                       |  19 ++
 sound/soc/tegra/Makefile                      |   2 +
 sound/soc/tegra/tegra_asoc_machine.c          |  52 ++++++
 sound/soc/tegra/tegra_wm8962.c                | 165 ++++++++++++++++++
 7 files changed, 421 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml
 create mode 100644 sound/soc/tegra/tegra_wm8962.c

-- 
2.51.0


