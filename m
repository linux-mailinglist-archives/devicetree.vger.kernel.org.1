Return-Path: <devicetree+bounces-168801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23098A946E4
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43392174FD2
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 07:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230E51C5F1B;
	Sun, 20 Apr 2025 07:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="dyHewTCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F99319D8AC
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 07:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132666; cv=none; b=GfwRe9b+zZmo8q0COS30qezIkivHaEWlMGjzaN4pD+Mgdfm7NA7u+KcyFFuuMoWzwwdpxdv98ncctDbJQhgngscECYii+bj+bJjBxlcm7n2xMrIi/UhiLpTp9q5/63Hsayl7tRPpDtOquyFqgWkVhMdGZzykHMXzSJvUU/WVHzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132666; c=relaxed/simple;
	bh=hn7YA7XmCyOpYGIUjgJ8uMsi3N8R4QuPxrjMUjRQFKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OSTmmiHT7U/QSXLPFUUxoLHpW++d20mMVkxgiNjWnDqi++C7K0yLeTKIOnAt8+FAzFcoBmhNNCHmkk41tc5zGySusdivvDeIPHhX4gvfYK+/13MnOMZO7FIWf3GlqqoV3nCjSlE7iz0WiSt1lD7IS+09/cu6UEKr8xzD7KSVUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=dyHewTCW; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-736dd9c4b40so3649159b3a.0
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 00:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745132662; x=1745737462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aLrawCtHSQaSge3rP8I64g0W6VpqwKb/nSX+gldLJv4=;
        b=dyHewTCWmKHwB7zJbrX5zZixFiGLQQ62XkcZu4tRDEqToH2t0vB41BDO/00Zjc7nnz
         BTQhneIeIdJKQy2jzSDYAN3iDpQ2UzsuFT/35hKmhnOj/+RhmK7U3OtyRV7BC0YZMKZn
         MClaDOvjj4UvYl/NOXb90n6vTZZBvNK1OAR6QAg0GdxhdqutwMFk9fSg/5wNm37dfP11
         ua3R3X7UhqfISrM4v4fFU+Q4+GVH1B9m0yEnnIhxLGMN9ZW9zf2R/wh9g+vcm5Blt7SI
         Gtf+8T8Icnv1HHNbaq+mr14jZSAL//Y81C2IktBYpeQtRRDsVypwJPQVQzt0aDeMbHPn
         q9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745132662; x=1745737462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aLrawCtHSQaSge3rP8I64g0W6VpqwKb/nSX+gldLJv4=;
        b=Vku2i4gXG2G1tXyCTX8YQ33eiwp752iNDjmR/qZSZhSe3+DojkjbeWJr0mLLdW8OpK
         pzcnt+QRFlXy/9PBJQN1To7+V5C8biVVJWEUkaQVgzrbI3wxL8FBM8lRbiudeu3L3wva
         SRhOe5G5OibvAwhXFKB5gsEEufzXHi6XkNnIMuwpmWbx+4SluCPyxGJ4BuJ6UClQYVbw
         XDg/e2pCNB3EUj+Pe8Y+toGyXyc6Mw+ar/Uwdp0chNky6CVWzhekslBumrMrBrvKfRiz
         PkQC9Uo9Tk5cyQgoIHGYWfnzHHA3JNVn0T6U+FbOKY6Tji5azoV8GbNkpg2cEGc/sOk+
         IuRw==
X-Forwarded-Encrypted: i=1; AJvYcCV3SszptwItSmWn2cuL7a5Rfvxcoxu0ubiHW36QOJypXG1MSGyBu3kLwFTwVLW9RoyoQ0IRrZpM9w8g@vger.kernel.org
X-Gm-Message-State: AOJu0YxnFyrNIubpts59M0PCK4HFm141MGQtrsNa8UxGVffhO10dGPh7
	QvbTrg4OgGvm96jCeKC2cd9tltOyVajHz10oYksXqUbS4MArVmiw36DgkAc0qlo=
X-Gm-Gg: ASbGncuFXu0isp1b9tk31eMqV07HrTB1m4K5ZEzwySgEXvXQYH6POYhCzgxGeFu22MT
	B3KkFkIPsaZAS/nOTnKZelnXQf1zOc6gjq/KMo9PfvBhPs5SKA5cOI1u2hDtoySwB9gD2I9u4lA
	NgQvxcannJNFjD+dQrsHPBrJzVeNrUeJf8bGSlBfh518lGijXjeSJRk39CtG7ozen5lIHNSIex3
	4ZHhstZwqd2INrT4ldNDz38LMjquR7ZGVBh/5Ew8cZw6P8NYIdbULoVrDjpxrMvBtSFL0V7o5Sy
	JixUJQlCsXvFhHCgT24EexU+GO1LKA==
X-Google-Smtp-Source: AGHT+IGsw49Y1EZHbpB/CU2efSGqgI49mepGyjPNnwH7IpvujjQyW84NHrrsk0hDbuCp/nEw8aQw0Q==
X-Received: by 2002:a05:6a20:d705:b0:1f3:1ba1:266a with SMTP id adf61e73a8af0-203cc4ae6ddmr10558452637.0.1745132662405;
        Sun, 20 Apr 2025 00:04:22 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40b3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db12743afsm3742626a12.16.2025.04.20.00.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 00:04:21 -0700 (PDT)
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
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v2 0/6] pwm: Update PWM_PXA driver for SpacemiT K1
Date: Sun, 20 Apr 2025 15:02:45 +0800
Message-ID: <20250420070251.378950-1-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset adds support for the SpacemiT K1 SoC in the PWM_PXA driver
and updates related device tree bindings. The changes enable PWM
functionality on the K1 platform through driver enhancements,
configuration updates, and device tree additions.

Functionality has been verified on the Banana Pi BPI-F3 board using PWM14,
configured as a pwm-backlight. Per community feedback, the actual
pwm-backlight node is not included in this patchset but can be found in
patch 7 of the v1 series.

This patchset is based on the following dependencies:
1. Clock controller driver, posted by Heylen Chu (v8), with
   most of it has been accepted:
https://lore.kernel.org/all/20250416135406.16284-1-heylenay@4d2.org/
2. Reset controller driver, posted by Alex Elder (v5):
https://lore.kernel.org/all/20250418145401.2603648-1-elder@riscstar.com/

Major differences between v2 and v1:
 - Dropped the addition of spacemit,k1-pwm as a compatible string in the
   PWM_PXA driver; instead, it now falls back to marvell,pxa910-pwm.
 - Removed pinctrl settings for all PWM nodes (pwm0-pwm14); only the
   pwm14_1 configuration is included in this version.
 - Changed PWM_PXA from built-in to a loadable module (=m) in the
   riscv defconfig.

V2 consists of the following patches:
Patch 1: Add spacemit,k1-pwm compatible string (with fallback to
           marvell,pxa910-pwm) and support optional resets property.
Patch 2: Add reset controller support to the PWM_PXA driver.
Patch 3: Add device tree nodes for all 20 PWM instances on K1.
Patch 4: Add pinctrl settings for PWM14.
Patch 5: Add ARCH_SPACEMIT dependency to the PWM_PXA Kconfig entry.
Patch 6: Enable PWM and PWM_PXA in riscv defconfig for SpacemiT K1.

Best regards,
Guodong Xu

v1:
https://lore.kernel.org/all/20250411131423.3802611-1-guodong@riscstar.com/

Guodong Xu (6):
  dt-bindings: pwm: marvell,pxa-pwm: Add SpacemiT K1 PWM support
  pwm: pxa: add optional reset control
  riscv: dts: spacemit: add PWM support for K1 SoC
  riscv: dts: spacemit: add pwm14_1 pinctrl setting
  pwm: Kconfig: add depends on ARCH_SPACEMIT to PWM_PXA
  riscv: defconfig: Enable PWM support for SpacemiT K1 SoC

 .../bindings/pwm/marvell,pxa-pwm.yaml         |  17 +-
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 180 ++++++++++++++++++
 arch/riscv/configs/defconfig                  |   2 +
 drivers/pwm/Kconfig                           |   2 +-
 drivers/pwm/pwm-pxa.c                         |  14 +-
 6 files changed, 212 insertions(+), 10 deletions(-)

-- 
2.43.0


