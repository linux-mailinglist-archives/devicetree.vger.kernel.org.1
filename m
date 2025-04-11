Return-Path: <devicetree+bounces-165934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4119A85E6A
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBA12188D794
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1ABD126BF1;
	Fri, 11 Apr 2025 13:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="YISnwPCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2CB2367B2
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377287; cv=none; b=oERvuELdD3kh9Nf9ROrZgxSGsZgdnqTwpfWTJbKmzY4PWCtdottumvKbc+dHi8eoBNmU0qkqFFBRLaBmWpbvuBcrceFwcSMDP0AR/jA1b0d6Tk/ofQsrpUT8YtyRbaIYq1ZlcxhLU1v0lWU8/FeWcuIhLacl4VFkVnx44c83EfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377287; c=relaxed/simple;
	bh=Ch+fqjo2jOucp0Q9pAQyUt/W5onTs4h2zU2vjVST0DQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aeICd9Vi7RLhzFOKobRB5fIsyzlZvJmAN/t5bRCR8HhRJIjsdui5reZJO5CEvWZCZuyBUAGJJmzO4l6XihnrrXfZo/Mu13pcGzmVJrLUdpVhi8RIm8NQgkykcSKZKf4z8dlifuGkBLW4t8Ha8J+AnVNBRGG1btAOVXZcHaxD6B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=YISnwPCH; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-224019ad9edso25953245ad.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377285; x=1744982085; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qre57TZAkUnswgts6IEzV2m9ITum31ZFo8SGzVvPyaw=;
        b=YISnwPCHC8kQ/fAup7XrwmZdjgBTADXQdZLFTT2H/5OOanZ6o150UNLBzZpTuPUXwm
         9ifEncMow4a1BRQ+Ei6RIeb6Fd+Q0zay6935qCwSvE6VSLKpcP7J9y3wIb9LqEt7aMDd
         MPkPznR61ZINfBASUK1RYlwTOyKpA7K71fiFOaMB6O+Iqwk/a81DiScaLvlrT8KI00+3
         /qSfPIE4LqpvYeAjndh8JRBBr2dMDGVXm9WSBsuD4N6NmeHkk4IbeJOU4O5eAzaYe+vN
         1mNgsqDdUu8FE1Ti9QvOiHMnfbbcg7poQIlituVF5YAbhvnIg9tAVjhKz3Qb9zk+PxKE
         3ZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377285; x=1744982085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qre57TZAkUnswgts6IEzV2m9ITum31ZFo8SGzVvPyaw=;
        b=Sh93T9SUIJEI36eWKKOoNucaFrK7uuDZt1vq6174GcdZJE90iF+ZzxX8R+xZDCX2/x
         Tl0FO2O2jPt692ecGYg5UOzAew3uk/Ivssp+UAlQyzr88fCSD/nr4bVTGNoPCYkMJR14
         qUyBPEH9ZqPuTTBGcVsY14on3Ii2/qvMC0spfAuVK8ikS2Ema6LHd0FQIxSRCRVuHg1Q
         n3ER0nGQ08r2wvo6QXUIO0a7RWDcIaqTWVDUB9GKazph/zPQQnTLaGvBLamaGy7+98bN
         IZpl/QqJDt3P1p1birBYT9ir5HXOTBTBKuOoNN8a0lvtTKpIpLwwgd/fHy8f+Xdev0Uc
         HCZw==
X-Forwarded-Encrypted: i=1; AJvYcCUQmeYCDvrnqLwVaxWKSTA8OhnfFZXSfvXt1VR82W9mAlX0xzVZ7b4uTlOK6EAmlTCmwUzFzNIbMdf/@vger.kernel.org
X-Gm-Message-State: AOJu0YwImCp/5Ij/0cvZNU3a405bRwn4wxThHv1zQQcpy/pp/tfnu8tW
	oqybvQfIjLqdBEWCEHOHY0kvR2SiBT7hKKqAXrh8E9pIYkbGsjjUlamcG/2fbQE=
X-Gm-Gg: ASbGncsQA/lIb+rsRonZG5JeuYQ7BRXm+vuWF+6J0UyBXpAo9lJlaIIrbf4f/GZPPNR
	wBR9Yt5ieYVNiSNSy/ceEA3liSZxv4iggjtgqyRcYFi7UVqsrbZeZBGMYl0xLEedujM7ieeMLzt
	DOG6ojWZwT3ykUuLkfcNKRc6Jys4N0JcUdp/7/0raIejlKSqd9c0iQZoDxUJ9a4DxXTZasRbzOa
	AvrUXp8wKwT/dJY4A7ostl0GTBnMplj843FssySEvrFRy+Eh5CTL5jY+RWcVcTY1GvR0CL9ehFp
	5g+YTdAbGOM6+Iwgxasi7ct0asn4xck=
X-Google-Smtp-Source: AGHT+IGUnh0jzuOwIhS7mW3GbrnlxFqJLF/GhatlTQ8Fz+bqzUxj4AuJt7AlIxLYz74Fdql/j1nWVg==
X-Received: by 2002:a17:903:2a8e:b0:215:9642:4d7a with SMTP id d9443c01a7336-22bea3dd45bmr41851535ad.0.1744377285123;
        Fri, 11 Apr 2025 06:14:45 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:14:44 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 0/9] pwm: Update PWM_PXA driver for SpacemiT K1
Date: Fri, 11 Apr 2025 21:14:14 +0800
Message-ID: <20250411131423.3802611-1-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset updates the PWM_PXA driver and related device tree
bindings to support the SpacemiT K1 SoC. The changes include
modifications to driver support, configuration options, and device tree
bindings, enabling PWM functionality on the SpacemiT K1 platform.

It has been verified on the Banana Pi BPI-F3 board using PWM14, which is
specified as a pwm-backlight. The related device tree nodes are set to
"disabled" in patch 7, as a reference for future use when the display
driver is upstreamed and can be enabled all-together.

It is built upon:
1) the clock controller driver that Haylen Chu
currently has sent out for review at v6:
  https://lore.kernel.org/lkml/20250401172434.6774-1-heylenay@4d2.org/
2) the reset controller driver that Alex Elder
currently has sent for review at v3:
https://lore.kernel.org/lkml/20250409211741.1171584-1-elder@riscstar.com/

It consists of the following patches:
Patch 1: Add optional resets property to PXA PWM bindings.
Patch 2: Add reset control support in the PXA PWM driver.
Patch 3: Add spacemit,k1-pwm compatible string to DT bindings.
Patch 4: Extend PXA PWM driver to support SpacemiT K1.
Patch 5: Add 20 PWM nodes for K1 in the device tree.
Patch 6: Add pinctrl settings for PWM0 to PWM19.
Patch 7: Add PWM14 backlight support for BPI-F3 board.
Patch 8: Add ARCH_SPACEMIT dependency to PWM_PXA Kconfig.
Patch 9: Enable PWM and PWM_PXA in riscv defconfig for SpacemiT K1.

                     - Guodong Xu

Guodong Xu (9):
  dt-bindings: pwm: marvell,pxa: add optional property resets
  pwm: pxa: add optional reset control
  dt-bindings: pwm: marvell,pxa: add support to spacemit K1
  pwm: pxa: add support for spacemit K1
  riscv: dts: spacemit: add PWM support for K1 SoC
  riscv: dts: spacemit: Add pinctrl configurations for PWM0-PWM19
  riscv: dts: spacemit: Add PWM14 backlight support for BPI-F3
  pwm: Kconfig: add depends on ARCH_SPACEMIT to PWM_PXA
  riscv: defconfig: Enable PWM support for SpacemiT K1 SoC

 .../bindings/pwm/marvell,pxa-pwm.yaml         |   4 +
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  32 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 315 ++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 180 ++++++++++
 arch/riscv/configs/defconfig                  |   2 +
 drivers/pwm/Kconfig                           |   2 +-
 drivers/pwm/pwm-pxa.c                         |  16 +-
 7 files changed, 546 insertions(+), 5 deletions(-)

-- 
2.43.0


