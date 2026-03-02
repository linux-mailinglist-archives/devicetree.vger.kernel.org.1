Return-Path: <devicetree+bounces-270085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGdDLWGqpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:18:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BF01DBABE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:18:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C54C302A697
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0E61E5B88;
	Mon,  2 Mar 2026 15:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X3DLHmdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E661123183C
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464431; cv=none; b=TuaEYhvKJ8yqDuwkmX5SAeb/RykazKD4DrLgXsxv8uzh3k99WbEiJodz6vFWAXgRiNj99B2GuysC3CLfFoz5gIpCafmKdMvpdHyY6S8bEUNsBwEuxGmBd+h/t4rmlqSEKDXgnvAj9UdMQlamGY3qpWsF9jRz1B7ld0fjDS/EI20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464431; c=relaxed/simple;
	bh=xoKFcRodsjBoNZCfcW1z1LG/a1f1H2smS58YjpeC2eo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mkMAviDxh+dsQj8st0153FS7DwFU+kW88RSvLgweKw8XUOs4vXWYlYDziHF/xu1Zf6IfLTcZvAl0hw0OpYPCRgZrZN7mCkRXrTriofXWp09mO3kCf25420bFSqZfL9q5YlCHNLah091TO4DbBZS3y7l/JVMl6hCnqjnf10oCcYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X3DLHmdb; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so51807785e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464428; x=1773069228; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4bjNDBX+/PFOXtqF8zgz+Y2Tzpl7yAa/Q3C6j5YXCMg=;
        b=X3DLHmdb48SvM76Wox5pvGsurm+1pb+VwgKKFDIN/mZFm5QtJg736khlePB53u9DTl
         1JF3yi0412ALakQHF4SxJFGLD+wMn0hoBTVAlTknbPBip/fSkUFItRLyQfAVbbYXi97Q
         IX4hp785VaYEMGXfWCzBNCfiavTVMMkqfXZDEk0dbtDmffT9zCOLlG2zXgb5lnjepF67
         Nd5FGt63diUqZMlpKuma/1Ela/sB4m9pYDx0m6vJoHI7eKzcGOj2Mll1q83ym0LoJuzE
         /opxcWI+9P2BSMYFiojwB0NKeIrY/Hi+JdJe0WQsRO7pL6d6zpwnCxorQZlHiLtE6VDv
         mBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464428; x=1773069228;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4bjNDBX+/PFOXtqF8zgz+Y2Tzpl7yAa/Q3C6j5YXCMg=;
        b=bb45VivBrFSJQC4Rrkj4g7hHsFlYDTPZrCLX3E7pFlvaI14JUn5pvaODI7hwN9cS8E
         Oq+6/t2nfeVDnHqrGnXzdtYAdFilWn6LIj1UxG11+4MLPv26a3dY8R7ZpwevleWnMqJ7
         QLVlWODcsBwYk2x8D+BNumI4HSq8aVClwcpw8bdanTG8GwNkGUmKG1nXUpmB+n14n8Xo
         VU3CqkJ4rj1wBGo4BOzsU0p22GYt4mZeSpO8ll0RwYV3AkEXqBIPCsQDptBSKJZtb4jp
         zqeIWeiBV0/m/KviuWqscp5P2PY2mi9/b4tIGlOlxDkt+ejHY+67UrArlbS9uy+g+j0+
         2cEA==
X-Forwarded-Encrypted: i=1; AJvYcCWobHEcKXxwcxlil/6dWdSIDnGRFHUa9anw1XF9DPpMaSlNEuXUS8kvHNcfCdWtMxtfuI+5L69sfuzx@vger.kernel.org
X-Gm-Message-State: AOJu0YzY8bMD0tXnqgCBf3GXl2xBpAB64osWNatakfbXE3NUnNaAfD5m
	eZKt6gNKD3Tem2jT1C3Psddym7/6T5VNrp2UQVzA8fZ9NSmPlY7LJb+B
X-Gm-Gg: ATEYQzyDm1sgklklwP0NkJq9s4FNbu9o3nQXqYtbs7o3VkXBKmhMmKMzawQ3hZz9sOr
	q55V29yYo2T+319/6+PaA0ElTXeZWJRXcNSle0l62dp/UtZ8qiqu/faTwD7f3WXpb5nf50LGd++
	g82JvHCuyRcNGT0nspBcxciMIXn85VNy8ghwX9aMjtVCzKtpQpJLuKj4x4Gxudqn1Ysf3M0oV3R
	u+CZmXDvrGxmn60LPowU3zPnrQM4+GByurRnMYxY8vHx/zHN11DIvRWdcjbIIE6L+aRon37A1/z
	WqC6L/YAkfndM7VLtNrBxsV+zUMxTEbRKF3VzYup2EMSW6PyjtHFjLK783arQRbeVUNJRtWg9WP
	KF50MMJYXbiGccEkoa3A++P9bLc5M/M6BqzPlU9evxgxIPMzo2idf1YoUdgOhGt+D66mTdTdZfq
	CrFgm8YHBQL75w0ytVIpdGgynPsU4f/0j/vRsBiJKjOZmRvbnWMUwzUuMJm2G8l4crTA==
X-Received: by 2002:a05:600c:3486:b0:480:20f1:7aa6 with SMTP id 5b1f17b1804b1-483c9bed9e2mr214730135e9.21.1772464428106;
        Mon, 02 Mar 2026 07:13:48 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:47 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH 00/10] riscv: spacemit: enable SD card support with UHS
 modes for OrangePi RV2
Date: Mon, 02 Mar 2026 16:13:21 +0100
Message-Id: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQ5AQAwAvyI9a1IrBF8Rh7Vb9IK0IRLxd8txJ
 pm5wViFDbrsBuVTTLY1QZFnEBa/zowSE4MjV5NzNW762V3QIgavEY/FkDiMVDVlO1KAlO7Kk1z
 /th+e5wV2nN/1ZgAAAA==
X-Change-ID: 20260226-orangepi-sd-card-uhs-0ecb05839b0c
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 19BF01DBABE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270085-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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
Iker Pedrosa (10):
      dt-bindings: mmc: spacemit,sdhci: add AIB voltage switching registers
      mmc: sdhci-of-k1: enable essential clock infrastructure for SD operation
      mmc: sdhci-of-k1: add regulator framework support
      mmc: sdhci-of-k1: add pinctrl state switching for voltage changes
      mmc: sdhci-of-k1: add AIB register support for voltage switching
      mmc: sdhci-of-k1: add SDR tuning infrastructure
      mmc: sdhci-of-k1: add comprehensive SDR tuning support
      riscv: dts: spacemit: k1: add SD card controller and pinctrl support
      riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and power infrastructure
      riscv: dts: spacemit: k1-orangepi-rv2: add SD card support with UHS modes

 .../devicetree/bindings/mmc/spacemit,sdhci.yaml    |  15 +
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts   |  69 +++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi       |  40 +++
 arch/riscv/boot/dts/spacemit/k1.dtsi               |  13 +
 drivers/mmc/host/sdhci-of-k1.c                     | 320 +++++++++++++++++++++
 5 files changed, 457 insertions(+)
---
base-commit: 5f499bb7a07fcdcf8877acaa8f413a5dc1fcfacc
change-id: 20260226-orangepi-sd-card-uhs-0ecb05839b0c

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


