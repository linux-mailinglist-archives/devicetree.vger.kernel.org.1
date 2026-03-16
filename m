Return-Path: <devicetree+bounces-276193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGNeODUOuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:05:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FBF29AF9C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39C57301FA68
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF7A39B974;
	Mon, 16 Mar 2026 14:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RIPsEEa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF039B94A
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669867; cv=none; b=dUz+PzvXxEIaKJWXnXl4+4Q1HKUt20G87tv+LdcseMf/BArggjWPrZ3OShTKETX8o5pCvixXnEDfYFE/DFXt8fLmmtw5MrXXIiX7+cNoWjzHhGUIIw5goPBitH9riIDKRXBP4IQcThJSodn5cQ1Jq9wYIXmwt9ZDEOpUglIRbIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669867; c=relaxed/simple;
	bh=bBmnapbFZhNl1hExaX6Y6v+emhhgEDggwTauM/OowSQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=leNBP6h/BsGCsGRDqk7NJh5qVRGDuES6gZmkze+8hI3PEo+l3y4PtIsl8N/izqr/QVwM5FgTySBK646acRdcdjDpM/fEXdwyLRxU3d9tOB794/C/GrWxJjokfPuq9OqnWmV8QFdYRJt3ZrSlgAs8TaR801/arSOy7+6J8EcYP80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RIPsEEa2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so55275645e9.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669863; x=1774274663; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OdoEqGGjgbvJGV3XvDqNqAu8aItRm8RFqY326SKUvHs=;
        b=RIPsEEa23RUR/jUqpEqzIp2rrpfYkHzeVKCy0H4SfIBUNgrRa/qyXHZsUhssbM2ITS
         8+CSLW5fSevJweiV31/nfBZ+xhCLR9NngntV1mvPZJnReF7SXNNtOfBMC8dXbnflXSDO
         b2fHJF58iqaYOhVrajoocuss2kPEduzgmk8Iy42v5j3V4FrXwJJRobnah76xCWCSR+XY
         56qRBDaffa3lBvr22AIfOX2kGuoIpn8mUCq6dAXS2qvx+nBXnTlE45uhI2G3LD/x272v
         K8qfp+TEKNBv1pRm/rMtr8VWnDWj+p5bucHMVG1zpVq6bldt5QoFkQKp0QRv08b5EWeb
         NxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669863; x=1774274663;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdoEqGGjgbvJGV3XvDqNqAu8aItRm8RFqY326SKUvHs=;
        b=QmL7jj1bjJVGCtv9hlXi8K2Qq6r0sPkOJm1KmXRhpV2Dzd25wBCNfyOJ1sXEI7CwP3
         bnhxxzhb0UVCDkl4DkLXyV5K8EuOaNA9KpOFeC3KDYM3bTfeSJfOt9iEhS27Q9hVK62W
         ChLBkWWZ5WNG8U9yyUJsQh97kwXS/smIdv4xOorH8ohLKc1foODshXbo15NYvhqtAPTc
         RBktJeTYojEnEDm9Wnu7BE5P7sNegByZCMJPDhxV8EzRgVXo/EMnGoLvZJfrHCitI8PN
         2nhbPaHs/OfBXUgbqpoKv02RNGBb9MSPP2o6D+Dt7SxXkjyFVNCvzn3tl8cpDtAkYZ07
         8jog==
X-Forwarded-Encrypted: i=1; AJvYcCUdoTPXzOZFDMxF9njTERqxxmi7sh7eavGj0/Hkm9LfYsn+4d1AqvA5V+1za/eCvXTwPtfKGi/dAeOV@vger.kernel.org
X-Gm-Message-State: AOJu0YwdI3U6sxMclQJ3+/luTtLvohVFmsmJjMc8f9IbxHmfw/UM8ATt
	nD60WmqqcknU7cb+O+tnzeMbuXrd3UPKy4fCFqgHQPJ39soyHmxSdery
X-Gm-Gg: ATEYQzy/8MTZ2+17AIIyLh27y8s7JUX3KVskoRLXMcHPKI0bAOfoZa0NnGCxUAihX38
	WafVE5NLsHLiGP72mv82rmGFjg/brjsgpE8ERFoZianepTZaijKWQkrM8kxnhP4aqZLDhColSAj
	yd/H38t0+X7CbqTJiixRqLM9JOusEQMavjtdeeezWT/N4/oEAYKFaWKV4OgSv3srb/yZgvc8xNg
	McCOuGLGgoxaVsI7TO6OsNYFJBWd+CQpVUf0Nvx5nw95bhVDHfJ+ac/3HjQAyxSmtMXBibFLfKG
	mdHJ783RqtZbswAsrIRt6+tznnStC6hy4Lu0gbF21xAlqo0PmzUp/Z2ZNXKRLVmgk6h47uZZkLL
	ET7dlYtqxKnRICtoMG376IGzfxLPdbi5x3D2HgOgaNz4E9GB1WcGJL6cxZoLNDFoB2anQzqiIAA
	pen3+L9cPqAgwcR3/ObOtM70w8HuywGW8Fr9eDGZieUgfVwJFy8FISrzzbnu4Afqol
X-Received: by 2002:a05:600c:1988:b0:485:3f58:d84 with SMTP id 5b1f17b1804b1-4855a8d6fd7mr204197625e9.32.1773669863067;
        Mon, 16 Mar 2026 07:04:23 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:21 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v3 0/7] riscv: spacemit: enable SD card support with UHS
 modes for OrangePi RV2
Date: Mon, 16 Mar 2026 15:03:28 +0100
Message-Id: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XNyw6CMBCF4VchXVszTOVSV76HcUEvwCRCSauNh
 vDuFtyw0OV/kvlmZsF6soGds5l5GymQG1OIQ8Z034yd5WRSMwQsAbHkzq/rRDwYrhtv+LMPHKx
 WUNRCKtAsnU7etvTa2OstdU/h4fx7+xLzdf2CAvA3GHMOvJYacykroUFfuqGh+1G7ga1gxD0i/
 yCYkEIpVEV1Mm1h9siyLB/zujKG/QAAAA==
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
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 85FBF29AF9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Changes in v3:
- Rebase on mmc.git/next to resolve conflicts with "mmc: sdhci-of-k1:
  add reset support" patch.
- Squash tuning infrastructure and implementation patches (3 and 4)      
  together to form complete functionality and avoid unused function      
  warnings.
- Reduce code nesting: implemented an early return sanity check in
  spacemit_sdhci_voltage_switch() to reduce indentation and improve
  logic flow.
- Refactor pinctrl initialization: moved pinctrl resource acquisition    
  and state lookup into a dedicated helper function,                     
  spacemit_sdhci_get_pins().
- Use generic regulator node names (buck4, aldo1) instead of             
  device-specific aliases (sd_vmmc, sd_vqmmc) to better reflect that     
  these PMIC outputs serve multiple devices.
- Remove dead code handling 3.3V voltage switching from
  spacemit_sdhci_voltage_switch().
- Optimize tuning algorithm to use single-pass window detection instead
  of storing results in array, reducing memory usage and complexity.
- Remove unnecessary card detect check in execute_tuning() - rely on MMC
  core.
- Clarify commit message to mention both SD (UHS-I) and eMMC (HS200)
  tuning support.
- Add SD card support for Banana Pi BPI-F3 board with UHS-I capabilities
  following the same pattern as OrangePi RV2.
- Link to v2: https://lore.kernel.org/r/20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com

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
      mmc: sdhci-of-k1: add comprehensive SDR tuning support
      riscv: dts: spacemit: k1: add SD card controller and pinctrl support
      riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and power infrastructure
      riscv: dts: spacemit: k1-orangepi-rv2: add SD card support with UHS modes
      riscv: dts: spacemit: k1-bananapi-f3: add SD card support with UHS modes

 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts  |  23 ++-
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts |  67 +++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi     |  40 ++++
 arch/riscv/boot/dts/spacemit/k1.dtsi             |  13 ++
 drivers/mmc/host/sdhci-of-k1.c                   | 243 +++++++++++++++++++++++
 5 files changed, 384 insertions(+), 2 deletions(-)
---
base-commit: f38f518dda1f1decc7a39556fe3231b0d1b84e1e
change-id: 20260226-orangepi-sd-card-uhs-0ecb05839b0c

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


