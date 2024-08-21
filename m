Return-Path: <devicetree+bounces-95450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 196AC959857
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98477B21650
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB69D166F2A;
	Wed, 21 Aug 2024 09:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="ac0B0XsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD01C93D5
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 09:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724230903; cv=none; b=GXovzpKzaN9wz3d8V1j7605L48Ky78Ak6ZZUlrwIQVcacjCUVVARX6GR2iKLSBTqA/7C+OzmXN20XmIPmgqBszgTkX35ZilIHHL+DYjGJCU3AfzNem4NSM6F9wwxU/yQ6dg8igEowKMvGqmp1d1VxBqTNn9ha3+Mub1dVU2ZbEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724230903; c=relaxed/simple;
	bh=qlr0Jg++5f/LkhxLKg7lXiarJc8QoHmVDzNz11FDtO4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=prhz21aE/QbCQtEGxFAtCsrVtZoomEyi1l6EHBGsH3qQp+4xk3uhaJEIyZSMf7FrG8Cc3V6/GlLcKxuzmIJAnJ64JGRVM4x5J1AfL4ICjuRZMTI4Z1fMKsj5DIcVGoR9yQiLrSckMYMSPpQbs2WXACe4ftguHyB9vChXOw10KJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=ac0B0XsL; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-428e0d18666so51105495e9.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 02:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1724230900; x=1724835700; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BqqM9bltdl7ERWZlDB/xDu0XlTf9F8/Bo40tfa0qccE=;
        b=ac0B0XsLyvlel4/UXaVeU+pmxKMpciJcLEoFd1Rb/oQuFExrlZ4WmUPm/4VZHv0bVt
         +OE+jeB0E0Eyd3laWG0O7hukyFR4I51pgMEpVqz+1dOTaWveY0RXN//sC0B4wDkqeM7s
         juT+Lj3B9VfSKame09J6QyAY8w50cnc9pR9rbrIeErGa7KUzlpwqTIazgb2RNox9OIR6
         89GVx2WHDl7kmVEMi1pzksCZAo8YhESRuVYBw5RNC8IBAd2GPpWv4U4d8yc9gBusyx/U
         ftTdYOYWXI9dwILKw2igdr+XlaTSqhox0AC2Z4wPJjjKdrp0x9RjH5+F5ppczjBIN36l
         z9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724230900; x=1724835700;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BqqM9bltdl7ERWZlDB/xDu0XlTf9F8/Bo40tfa0qccE=;
        b=DVwrh2fMzAgD05lIGOY/dFXQ2p3Mh3aNLAK7m4+AYx2hKbyitjdH6YFZrIWZcVwfCy
         xreORTocMCjzzphUCGDHTVI7vEkcg680Za7pp7eNyCOTn+2tZL21HIwJFmBhV/LDsXjC
         erac3bHCUpRnKjBtBhXBgW/KQ/wdjiUFM4mweTWF9SSZJbeYeO1qpdeFvwtFGQzsX0cT
         OheLiDQBvPvbT5UX1DzVZFAe7D+WmA2lOfY9i99PLGlEaTx6C27TqBkmh9tFsaQxe8Dy
         WtHK+qwhtmGmE/QiTPsFm4cmy/3adhJLjsEj50SKGEfPjwN75VmlOqyrmiks6r08Z0Tn
         7SWA==
X-Forwarded-Encrypted: i=1; AJvYcCW402RKF959kIr23VQXXbX4XYZqdyyDkH5E30cB3UKy2R2R+Qop3gaUDLbHuvSd29wiVVPKCZC/r0Jg@vger.kernel.org
X-Gm-Message-State: AOJu0YxwswbrC5dZiEJl6yKNDb7wHGEH5c1awzg0sRLXGvCLSwsS9TOA
	s1Z1pUaTY/aJclrRDP1UcxXwsk9pJalGdJLgvDKeNHI+xh5rZzgIGUeylMHtIaY=
X-Google-Smtp-Source: AGHT+IFvRpxwoefPfsPJKT7RyLtcLqtQGYbN7c2LTwxuGtgb6LyU4gPYatIPuNkyVwMXdBcT7xS4NA==
X-Received: by 2002:a05:600c:1d83:b0:428:c0a:27ea with SMTP id 5b1f17b1804b1-42abd212819mr12286595e9.12.1724230899932;
        Wed, 21 Aug 2024 02:01:39 -0700 (PDT)
Received: from x1 ([31.217.165.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42abed8b86bsm18002035e9.4.2024.08.21.02.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 02:01:39 -0700 (PDT)
Date: Wed, 21 Aug 2024 12:01:37 +0300
From: Drew Fustini <drew@pdp7.com>
To: soc@kernel.org
Cc: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Kanak Shilledar <kanakshilledar@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [GIT PULL] RISC-V T-HEAD Devicetrees for v6.12
Message-ID: <ZsWs8QiVruMXjzPc@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd,

Please pull these thead dts changes. I've run W=1 dtbs_check and they
have been in linux-next since August 9th.

Thanks,
Drew

The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:

  Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)

are available in the Git repository at:

  https://github.com/pdp7/linux.git tags/thead-dt-for-v6.12

for you to fetch changes up to 2d98fea7491a00dccd61fee019843b262e60f819:

  riscv: dts: thead: change TH1520 SPI node to use clock controller (2024-08-08 09:19:46 -0700)

----------------------------------------------------------------
T-HEAD Devicetrees for v6.12

Add SPI controller node to th1520.dtsi and enable spi0 on the BeagleV
Ahead and LicheePi 4A.

The TH1520 AP_SYS clock driver landed in v6.11 so convert multiple
peripherals like mmc and uart from fixed clocks to the clock controller.

All of these patches have been in linux-next since next-20240809.

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Drew Fustini (6):
      riscv: dts: thead: Add TH1520 AP_SUBSYS clock controller
      riscv: dts: thead: change TH1520 uart nodes to use clock controller
      riscv: dts: thead: change TH1520 mmc nodes to use clock controller
      riscv: dts: thead: update TH1520 dma and timer nodes to use clock controller
      riscv: dts: thead: add clock to TH1520 gpio nodes
      riscv: dts: thead: change TH1520 SPI node to use clock controller

Kanak Shilledar (1):
      riscv: dts: thead: add basic spi node

 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 17 ++---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 12 ----
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  |  5 ++
 arch/riscv/boot/dts/thead/th1520.dtsi              | 83 ++++++++++++----------
 4 files changed, 56 insertions(+), 61 deletions(-)

