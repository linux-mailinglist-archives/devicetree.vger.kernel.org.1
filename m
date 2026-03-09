Return-Path: <devicetree+bounces-272866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKHGMc6xrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B8B238095
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 341493007644
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EA4392C36;
	Mon,  9 Mar 2026 11:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HwRxH/Jp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC113A4F52
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056431; cv=none; b=qz7lPK79GDMVyz7JlOvovgPCgrUomDUpRwIW8alpbIuow8mFXyvM1q3zsAv9Eh4GzKQEiEgZqAKE6UVdmB96C8wEHJ1JG+TFhqcUvLmBpiDRFdnvpgb2QR7m1/m7ffqkyKLKTA33bJJB8nk2SGsl1B8OrE3qxvqLjB2pceXlTxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056431; c=relaxed/simple;
	bh=sw+Cc+5HCSi0Q2cmwdwnnqsNb62gjuQjguM1odYVI24=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LnYqOCxvjpDIFpvPdL74uqEnikHc5xsEV0GJ68HwnK72o1mMw3p3ceGAIYbiDoYkWECEF+O5WoVTNY0qnuAnayS2RHPqMTTSPJLuarjCp1rkUE8Lvito7/BtnD71y6bzyG4mvpJBo+oXTo7OJJRpewl+qb4m4nJ7lakb0In6SF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HwRxH/Jp; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b2965d4bso6657975f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056428; x=1773661228; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S7AMv4ruvD0WDb3IJGhR9swDRb827tGwwDotiEuQEfU=;
        b=HwRxH/JpsBFfwe+t12fUdPECY2DkbbFg0kOP7ELnCFf+PJuKaWGgSfFnwHzPjco0L8
         7tjaM55zWsLZaufMjl0WeF66azIHuvA/taOKMsisb7aAtediZD+ST6ub4qyqKze+Mzf8
         Y4/g9ECqiad39EXOxzI4Dz/tdcZIxFEVPoLQCjom106P2E4RnChoruzzJxp9nVSCFQF1
         z97/WonLEjgzfbi1eckF+YeArkgHmLQgRW27xS2yBrZo3i84ow+gdfNjkeP9IkZB2SO9
         EEMsD+/+id/xP+7U+C3pHv5ZP5WcmW69LnR0T0VhoPbHEQx0ARe4I2oIPRniTaur8RvW
         tAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056428; x=1773661228;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7AMv4ruvD0WDb3IJGhR9swDRb827tGwwDotiEuQEfU=;
        b=dtn+/ZKMmIuzRTekW9OU21JunwOjiiu2DaRA/jDVJx7L9Otqw+effn/+f6QnsHUCiD
         4w5b3rroO36JoBJ3IrXQvlpJ39gK9+8KgBOV8x/DOTvMjtJn14c8W45E0zQmH59/Ty7F
         LIKMjj22LGqk+Sezsv4hJZiNFWZcppxxdk8mE1ovRYqbXE1fl1+gZ3ZBy5mlxRru057G
         5JkbqO8ulXdGKUg9jrU5zcDOT/NU5Q+Y5eAnoo2lvpl7KTUJOD2XiiMbHHXDF9Ma4apF
         9w2gjDeVAjsGat5rEy5oEoWcM3oJEDt8uubgv0q1dBuLouIIH3AdZJWG4MSXZSniDOOJ
         KA8A==
X-Forwarded-Encrypted: i=1; AJvYcCUo3d71xDMvDJQgICfzxvKCigC6zE/DR3ar7z2evjyakubK7W7qNSJWFDXqLiI2g6kBR+qVNZzzzf68@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/+gxUDtrfmqHz2Da4cEEyDFSrSd4YwxUI/oAlSYgo0PvhXgmv
	XTAAwHUWpHXzYapinJF0DXHEw/kfvdsUtqQwJid7QfBnyoNRJjjwLH7z
X-Gm-Gg: ATEYQzyShJoMwyGiQopAnVGISjeTXbXbY7+wJt63Q6APT4q66APVNsGZgZcqLVwdkrd
	a9xbSW9bTJ4mXV8Dm3n8xZDY9aa3LDQjXEwX/v1RTh2RuSebxP0P5oVJNjditdbndRZSW6rvAmi
	4r+k9nZSL7fEoZwqJ+BQPHPYJwIJHk5qCx//eZIaMM+JLAOCKM3uiF3GtYeJto/p8WChUPxNbqU
	n1ly8YhRTZj5sWvkqqYRKvSDFksgRZGbbhYToH+T40fyZKU/unULQImGdxBISxW2PcgbuKjClbT
	MJxn45AMM8AAKOR1XLk0+9/hqNmp8pVzqxdCPiy56+wo4iSo+BPmtE9fAX/BYcWpErONngWVWdP
	VtE0m1hCjlMLGj2Iv5M8nnEwd1GEAbg84JKM+hMliwNUF6DRKVPNhqWCEzv8tNFo4Ro/gg4PDE1
	5ljSlzQphZfsZPYO+wOhkV9oT7I1UnjiuJP9GZ1e/f0HwNmzGqQzg6tO3DqQorTPuyk/BmEgG6N
	hI=
X-Received: by 2002:a05:6000:1845:b0:439:c5cf:fc68 with SMTP id ffacd0b85a97d-439da3483b0mr18304868f8f.1.1773056427412;
        Mon, 09 Mar 2026 04:40:27 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:26 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v2 0/7] riscv: spacemit: enable SD card support with UHS
 modes for OrangePi RV2
Date: Mon, 09 Mar 2026 12:40:10 +0100
Message-Id: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ6CMBBFr0Jm7ZhhiEhdeQ/DAoYKkwglrRIN6
 d0tuHX5XvLfXyFYrzbAJVvB20WDuikBHzKQoZl6i9olBiYuiblE5zc7K4YOpfEdvoaAZKWlU1W
 YlgTSdPb2ru89e6sTDxqezn/2lyXf7C9YEP8PLjkSVkY4N+ZcCMm1Hxt9HMWNUMcYv7DDdL64A
 AAA
X-Change-ID: 20260226-orangepi-sd-card-uhs-0ecb05839b0c
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 65B8B238095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series enables complete SD card support for the Spacemit K1-based
OrangePi RV2 board, including UHS (Ultra High Speed) modes for
high-performance SD card operation.

Background

The Spacemit K1 SoC includes an SDHCI controller capable of supporting
SD cards up to UHS-I speeds (SDR104 at 208MHz). However, mainline
currently lacks basic SD controller configuration, SDHCI driver
enhancements for voltage switching and tuning, and power management
infrastructure.

Implementation

The series enables SD card support through coordinated layers:

- Hardware infrastructure (patches 1-2): Device tree bindings for voltage
switching hardware and essential clock infrastructure.
- SDHCI driver enhancements (patches 3-7): Regulator framework
integration, pinctrl state switching for voltage domains, AIB register
programming, and comprehensive SDR tuning support for reliable UHS
operation.
- SoC and board integration (patches 8-10): Complete K1 SoC controller
definitions, PMIC power infrastructure, and OrangePi RV2 board enablement
with full UHS support.

This transforms the OrangePi RV2 from having no SD card support to full
UHS-I capability, enabling high-performance storage up to 208MHz.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
Changes in v2:
- Removed custom AIB voltage switching code per maintainer feedback. The
  existing pinctrl driver already handles AIB voltage switching
  automatically via power-source property changes during UHS mode
  transitions. This eliminates code duplication.
- Squashed regulator and pinctrl commits into single voltage switching
  implementation.
- Moved voltage switching callback from dynamic probe assignment to
  static sdhci_ops declaration. Removed redundant SDHCI core call since
  the framework handles standard voltage switching automatically.
- Made clock override (SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON)
  conditional for SD/SDIO cards only. This follows vendor driver pattern
  of differentiating SD and eMMC card handling.
- Include no-mmc property for SD card.
- Link to v1: https://lore.kernel.org/r/20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com

---
Iker Pedrosa (7):
      mmc: sdhci-of-k1: enable essential clock infrastructure for SD operation
      mmc: sdhci-of-k1: add regulator and pinctrl voltage switching support
      mmc: sdhci-of-k1: add SDR tuning infrastructure
      mmc: sdhci-of-k1: add comprehensive SDR tuning support
      riscv: dts: spacemit: k1: add SD card controller and pinctrl support
      riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and power infrastructure
      riscv: dts: spacemit: k1-orangepi-rv2: add SD card support with UHS modes

 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts |  67 ++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi     |  40 ++++
 arch/riscv/boot/dts/spacemit/k1.dtsi             |  13 ++
 drivers/mmc/host/sdhci-of-k1.c                   | 252 +++++++++++++++++++++++
 4 files changed, 372 insertions(+)
---
base-commit: ec1fb4e55df47ed043ab2ccc6787e39b9d67e49b
change-id: 20260226-orangepi-sd-card-uhs-0ecb05839b0c

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


