Return-Path: <devicetree+bounces-263453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPYJCjEmhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:34:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7FA1011EE
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:34:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3973F300598E
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22503D522E;
	Fri,  6 Feb 2026 17:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MsyPFx2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C283A1E64
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399278; cv=none; b=lRMmCtjJHYfiUd2+nU8OgbNwgnU60KQAOPVm7GShwm78AwdXpRdxbYXvS2l4rmPC3aCV4TCeFzvob9MrGq15bahdifrg7vU/slDx5aYbfBSVbfHII1phfHAbx/sqprtUhn2icXQupSdgCB8T2wogwcKhJXStpGTlCedx/aQtjV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399278; c=relaxed/simple;
	bh=bMEvoZ3YmzKwhD0+i0HI3Rbo7G9luQ7yinQw97aXDYo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=UgPe5WE2Gf16CUIFaLL/lzitIYCgKJa+cFahuimPeg6vN1+0yATK4WNSWM19BeHisWjCMa7Htye3LnXoFoa830jhqNyRgoZJwaepkJ7YZFylzWwcLk09dnarXlKna71SxOsm3If6yog7Lbf5eyclFsNo5RtkPw6EKHgwJljRim4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MsyPFx2W; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-436234ef0f0so1284469f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770399277; x=1771004077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P/eXKWQ3nkCuVv9yvoGqXiUiEc5FnE49Hs9X00Cu0mk=;
        b=MsyPFx2WibQYb+f+yb8NdJHbaQY39uS5Rfk/h+0xzoTH2RXem4glozwuQNC3YKG6R/
         8siBCvFP3G5JGoyXoF5VPlw3ZQNvYV1ya4lF3Mg38BtHacT25K8ihfvcZ2HWWjakNzNP
         y4Rm5Vu8RGhnC3fNRzB36rlAFLvbJHL7LwbsPlOZDlcfhY/THLLtG01iM5KgcCcPrFJh
         R8F5TBtxXwUVE7D3VtFTWZR9SUayfpuS1ZmjpUJQ1iMhTZIPJh6EEZpVxwGRkdbeC/e2
         nfLzr8RF5/vfwMxpCXLjkbpl2T7uoLDiflgNNz3tCcPIXibZoeaxydh3RRT2mxCdqn7I
         8Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399277; x=1771004077;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/eXKWQ3nkCuVv9yvoGqXiUiEc5FnE49Hs9X00Cu0mk=;
        b=xNGYsITiYkga99+D/rQCtUBGeVNT0kJQvwTbijL3eLHjzug9ItR0742eMxQr2PIyxg
         v5WlaV8a5YtMx59wE6l7SsDkP7BBjkh1AaVVbtsYrGdBKftsaS/2Hhr2TELx+dbJxpjK
         UrIOpJc1x7m2E81btwbmWdn7eC1Nz2KoTTX7aa+KS4hfkxME37a2gI/8yMToTyVvFX/N
         JMBDeS2PhmQtmjX5jPMnnII4p41Yd/yIsJqMH4TzR9PHdtV79RZWzHpivDSdCQK2YTVr
         uKMJN8mWjoUI+UuFl58CrVAyuD+d8lDvFzwG0Rr7+s+d/BVfKHBqCvafUOWmOvQ9h0B9
         ox/g==
X-Forwarded-Encrypted: i=1; AJvYcCUpbV+D1j8iugtNorO8NMVUPQHUj2oTF/S+OAFqQrEFHjhJghichnoekNQDk1xLFP6uPatqtA1ZmNNc@vger.kernel.org
X-Gm-Message-State: AOJu0YxIPCs1kzh0XyZCn4dST659E+gcsr0vt1kVVsSuzliaa7Qm19b0
	QtO2y2MOxXk72XsMWiHz/whJWHbSs8pHAMwze6YwTMeHPPFIABdkBkVe
X-Gm-Gg: AZuq6aL4Emgn2w8GlvMWbssN7ebxkGj1uz2ugEWMCaEGDeLVAwc2tuCPHHY+4QZxrmu
	v7TG6tGG5jbyD4N3B22/kvGDxPUhpoQYG2NVfpvxPX/nnF0UgpWPFkHTXLBndzXPtjfo5jdurZE
	YzxUvhIyUrsYhKvYCt+9EjAIQAL/fhmHJ6CpS3OWWLRvcinfls+wPiiKBVR9WjXispPV2pmdlms
	o0+e2Gh/iz4oip6btFnoqvTnCxlnxHmplWcsMBqOVrZzfGhklg4dxox/RlQ0EbS7YVjCROsfYrZ
	X4xRYHbYqnYByq/Tm9Zw9Fq+mHSZmatCrj+MO3iqg1Z5j1g9E/jozK8nOboM3fbb0nTH5YcAPpL
	gY50yPsw3oG+XlPtMAJ/5TMXWijvNb+TLd4WmrWof2zQ5ld9POewpywF3LraJi0aJVeh0Nn1x/8
	+m
X-Received: by 2002:a5d:64c4:0:b0:432:a9d9:b674 with SMTP id ffacd0b85a97d-4362969518bmr5089891f8f.63.1770399276985;
        Fri, 06 Feb 2026 09:34:36 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm7454523f8f.17.2026.02.06.09.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:34:36 -0800 (PST)
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
Subject: [PATCH v2 0/5] ASoC: tegra: Add support for WM8962 and CPCAP codecs
Date: Fri,  6 Feb 2026 19:34:17 +0200
Message-ID: <20260206173423.145954-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263453-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BC7FA1011EE
X-Rspamd-Action: no action

Add support for WM8962 and CPCAP codecs found in various Tegra devices.

---
Changes in v2:
- fixed Kconfig dependencies
- added schema adjustments for max9808x
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


