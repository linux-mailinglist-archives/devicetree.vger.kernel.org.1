Return-Path: <devicetree+bounces-255648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56109D25320
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BA8E30056F7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 249763ACF0B;
	Thu, 15 Jan 2026 15:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfavWUDz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DDB3ACEF1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489830; cv=none; b=B5Etav8wqICSOxcfyjErxCsYglxWErYLqLyM4N7XAH/cEYkTpoluyiKpNdcK1LlbA+Skr5uTgqDfwzUVsYhyV/Me+JXTwxhH6bG2YW0AtGHNLDs0BGWc8uQeobORBqalclSZEoxj7QjZXrnmB4CzkoLAL0BC967sM+HcyX55cX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489830; c=relaxed/simple;
	bh=PNeDbXYo5zazX/SvVAQJ2rx4q1Th398ozEOCr2jn4yQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k9qU6layjLVJW0jf6x55cayYcmF9pC4P5xac8doNUGwqYtozJdzn4dMV9WldvUcS29p3ADa/N2vegRhv4GzRCPnYT65fBb+3GGCHUbLA9A3Ttk+XA9ECeQYioa7uNHehT2ay2yMCLBuAyzKF1bpDq7LVoLJhP8cfgHdp4CPQIsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfavWUDz; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4308d81fdf6so610437f8f.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489823; x=1769094623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hjkdMLvTnIC8N16mPSO5hD1UHrxqMiGHiKZBI0fYgAU=;
        b=hfavWUDzK1I/6VU4tmh6QTd+s9Rrbtkm2Gn9RGcimOwtwjUthhvRKmC3CGN/BdT0Lw
         BDSTvq2eGmayrMhYy3bwvr2laOYHH/m6z/7yMBp+J9sxgAthW8ueCstfdC9N6ERAK4Vi
         oaqZVpd/+kmoRUYTTGnPDNV6PmucsL4uCjbpGvCrD23pvojzgjjdzMCapaO8gYLYxQdl
         9cdDRs+3CCRill+2WZi5NuhMonh1GY+U1d89PbUkbfDA+DH7/PYePo1Xv7Bx/gmhcDZc
         i5+Ot1WCb3gSC5OvMs6b9yehdrljxq4mcVvzcoefKIJN2bQKpd85HUvboMI+2AEV/W6F
         VdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489823; x=1769094623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjkdMLvTnIC8N16mPSO5hD1UHrxqMiGHiKZBI0fYgAU=;
        b=V1fOGHQyNwh2k+ubziYBBtJoOEc2OcCrIvBPZmCc3eKbNEq94p77KtQXhHew0lZr1W
         4d+XsIZe33aKzyPnkpDgocd2s3xCp01HSJS4osN5VJukkUP2WqmhmBczYJnDKU6Bytrj
         RTDgNxvYZMYb89VWvHn7Ys7kdSYCNjB2GIeqq981+2bv6Lysh03web+i2onil/I+SYx4
         bMHEEqR0UEpulOPx/sIir2vYe6mJ5cN+t+T0yR23HDybcVbHpgbZChNlYYqbIhbc4pGq
         8bvoMuNIoKYjBLds1ELbBBD++VG5rAj56ak3kijj9Zpk969367DCX9eZfqRG8FEGFCdN
         zaDw==
X-Forwarded-Encrypted: i=1; AJvYcCVkp8Oy+r+LrzrTmpyHPXnQjsQgIQvNidvqjCzHsP8UId6eW9+sqAT4Q9kun/xgHZYAA1IPOZJoatBN@vger.kernel.org
X-Gm-Message-State: AOJu0YwrFw6ThK4sl0h7Ph4GjxFTgDMGbJan4EN6uE+QsmWEAMJg1L34
	yyWoZCUC4aVCvWREaN2JPj4M0CorVEWv6OUIYsQCvVHuf/lQ+VtS5xUChf3iBQ==
X-Gm-Gg: AY/fxX69KYbei7o5aaZjsCwjTu5KAsBBfCkskGe4t7KlH6jWv3P+PVtG/nvIgcbLwtB
	kyz/tJZpppqGnKux5U1UNLK1rvYS61mAtKiwdj3t8eOrNfYhcUdeiuBdqknpTaWiLAmaqq1F56y
	DeQPE5q6bUNt5+Mxhh7E3WkGf0xM7PHobzR4hdECh3k+OeiTOMmwm5VWSPgD6MnX9/88HAWYfC6
	CRXW0+bYJdfTIjVomLz8OCudEE8V+XsifwAiBgFu4zHDU7juq4QfJayJ677P9XGy8p0H56HCo+J
	lwyBXBWnXCUst61Y6lfAenqQTa6RaLax3ac+Am/M5USmBA0cnIDWYvliOu2Pro7SS1g47YJ5Zax
	/SvwVlxmk35QdPsvEWaXXT12091v/C3349MMu3moajzcWRcX7DG13dHSLc6+dd0uTT6J2nR+TjU
	QhIDIacNtVbJ5g2AFmfEZqyO4yHBJX8J3c6RT1whe9xsyqPzs2EIjPjJo2ka28RVFE
X-Received: by 2002:a05:6000:200d:b0:430:f7ae:af3c with SMTP id ffacd0b85a97d-4342c54888emr8651766f8f.31.1768489823083;
        Thu, 15 Jan 2026 07:10:23 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af653596sm6626191f8f.14.2026.01.15.07.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:22 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>
Subject: [PATCH v6 0/6] OpenRISC de0 nano single and multicore boards
Date: Thu, 15 Jan 2026 15:09:56 +0000
Message-ID: <20260115151014.3956805-1-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since v5:
 - Adjust dt-binding patch based on suggestions from Geert and Krzysztof.
 - Add reviewed-by's on the dt-binding patch.
Since v4:
 - Rebased the series on linux-next to allow patches to be incremental.
 - Rewrote the dt-bindings patch as an incremental patch, Due to this I
   dropped reviewed-by's.
 - Added acked-by to the IPI fix patch.
Since v3:
 - Switch order of gpio-mmio driver and bindings patches to patch binding
   first before driver.  Suggested by Krzysztof.
 - Removed example form binding suggested by Krzysztof.
 - Added Reviewed-by's from Geert and Linus W.
Since v2:
 - Fixup (replace) gpio-mmio patch to update driver compatible list and just add
   opencores,gpio to mmio-gpio bindings.  Discussed with Geert and Linus W
   because the 8-bit opencores,gpio is not the same as the 32-bit broadcom
   chip. [1].
 - Update new device trees to use proper ordering, remove debug options, remove
   unneeded "status" properties.  Suggested by Geert.
Since v1:
 - Use proper schema in gpio-mmio suggsted by Conor Dooley
 - Remove 0 clock-frequency definitions in dtsi file

The patches add support for OpenRISC systems running on the De0 Nano FPGA
development board.  We have two SoCs which are available here:

 - https://github.com/olofk/de0_nano - Single core
 - https://github.com/stffrdhrn/de0_nano-multicore - Multicore

As I work on tutorials [2] to help other get started with OpenRISC I would like to
have these defconfig and devicetree definitions in the upstream kernel to avoid
losing them.

When I was working on resurrecting these old setup's I found a major bug in
OpenRISC SMP which is fixed in this series as well.

[1] https://lore.kernel.org/lkml/20251217080843.70621-1-shorne@gmail.com/
[2] https://openrisc.io/tutorials/

Stafford Horne (6):
  dt-bindings: gpio-mmio: Correct opencores GPIO
  gpio: mmio: Add compatible for opencores GPIO
  openrisc: dts: Add de0 nano config and devicetree
  openrisc: Fix IPIs on simple multicore systems
  openrisc: dts: Split simple smp dts to dts and dtsi
  openrisc: dts: Add de0 nano multicore config and devicetree

 .../devicetree/bindings/gpio/gpio-mmio.yaml   | 16 ++--
 arch/openrisc/boot/dts/de0-nano-common.dtsi   | 42 +++++++++
 arch/openrisc/boot/dts/de0-nano-multicore.dts | 25 +++++
 arch/openrisc/boot/dts/de0-nano.dts           | 54 +++++++++++
 arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++
 .../dts/{simple_smp.dts => simple-smp.dtsi}   | 11 +--
 arch/openrisc/configs/de0_nano_defconfig      | 79 ++++++++++++++++
 .../configs/de0_nano_multicore_defconfig      | 92 +++++++++++++++++++
 arch/openrisc/configs/simple_smp_defconfig    |  2 +-
 arch/openrisc/include/asm/smp.h               |  3 +-
 arch/openrisc/kernel/smp.c                    | 22 ++++-
 drivers/gpio/gpio-mmio.c                      |  1 +
 drivers/irqchip/irq-ompic.c                   | 15 ++-
 drivers/irqchip/irq-or1k-pic.c                | 27 +++++-
 14 files changed, 390 insertions(+), 24 deletions(-)
 create mode 100644 arch/openrisc/boot/dts/de0-nano-common.dtsi
 create mode 100644 arch/openrisc/boot/dts/de0-nano-multicore.dts
 create mode 100644 arch/openrisc/boot/dts/de0-nano.dts
 create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
 rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (90%)
 create mode 100644 arch/openrisc/configs/de0_nano_defconfig
 create mode 100644 arch/openrisc/configs/de0_nano_multicore_defconfig

-- 
2.51.0


