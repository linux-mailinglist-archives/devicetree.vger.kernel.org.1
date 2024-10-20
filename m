Return-Path: <devicetree+bounces-113342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4539A5483
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 16:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B7F51F21ADB
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 14:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 532A4192B99;
	Sun, 20 Oct 2024 14:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="TaVt67gg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF3D192B79
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 14:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729434971; cv=none; b=EfxFpL0+V2ivy/BSvegXRzTRpTBfc/o/23B3W2CNFA5P+79fVFdDIh0mx3WkUXA2tQX7tAUl52sLwax41muw4LIDudngM/8uo7Yobrq5WJdSBtEtPo6ctaVS85K2GxwnYANAqM2zE3iXEcg0ynwVhLRe7u07ncTIL6EdNiToQn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729434971; c=relaxed/simple;
	bh=nI7CzD0dROhg5LFR+SbTGgNA8U3esGCj22cTRyP1R+k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oorG5oiXFKIrk0bzfX2/9bfrirDfv8mqWD1b+B31keNeD39ucS3WzFLAFwW4Tff3mp4mbbTajgSLXlwKfLlkDxvow8ONvgN6acntBE0n3eG7JaIBkVQtadVSJYAkLw311uVyTOh9sdoQZ5+OjYy8W+w5THXa0dxkqLPG3r2fo8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=TaVt67gg; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7e6ed072cdaso2514009a12.0
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 07:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1729434969; x=1730039769; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kKUwNFi+RGRukUqB0kD8s+grnaOyo0LZlXvjUDFIUlI=;
        b=TaVt67ggiO8TII9/hxMikq/0rOqWFNrSgEyb65y38OwGJlJbAPCDO1m15+dYaXOcPV
         jZ1nA/l3+s13FQzChmbtX2H0ookV8ruvTAvoHyp2M3bglha1tq/FyXlA91QvCzjU/Kg3
         fwsSSnt160hEig656Kb4t/pR/kKcV83K1979UlwajpDRgs/ByAhscugJBDjkAlP/NkWp
         1qEfYz0/2/+Ug7cHaL6y8dtxcyk20qb4zB1P7lZbttXlRiFtz7J3Dr6Vub4AnN3Gah5M
         26xeB3mWfuJDWOhxSCxMJZiiixBWgr4tIQ6m7PWmj4CzwgagpzPZZyWgAXFxRdnVovnQ
         7MuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729434969; x=1730039769;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKUwNFi+RGRukUqB0kD8s+grnaOyo0LZlXvjUDFIUlI=;
        b=dn+yol5+rJeNeF8gm+i6V6HY2hSR57tY0HyaR+A3qDRIsvHglVSGxzY/2BmvYXD3DH
         sIarXsCQSU2flOsrsABWdoqhPUKfV8W93yPof9vUUb6t9y7z2s1POMmb64HZwIp5Hnj+
         sTdOlwEz+1OlLhgGxx2KOPfX/8xDtbNbgIsYIuVtDCutRt90LtAyAz97AcpcDpkYlWiU
         cP9eOav1yYIZftUt6XyvZ4qv2iGIl3XvLHQnS94x7tj75IsmAZLvJ/s9PAPYmlji9Z95
         RClmxymH7ah6506+USdMA6HULl2qDPL6pR/asdbH1J2eXkMDyni12fZ+bmaxUlS4wlzf
         IblA==
X-Forwarded-Encrypted: i=1; AJvYcCWD1QlC3Z6BOY/gWo5PQxShHlutFDi2wCzsPyLdym+fO3RN6VB3SyTSGCFXeIp+3JNlOHlpfEcAjAJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YzY515gsE/Df9IpkBe75rtIJuNR2LbuAsDNEA5dIyvtSXMiHZ+N
	/VSXiFTigZiqVCs3PXlHXGrbGkI/9GetTvfVH0t2c81EyvkoPa64lA3V9zg/OBw=
X-Google-Smtp-Source: AGHT+IGJNYH1gN14k1HjiG8KMaOw8wGH7bmIO29hzeC6OSNwC+ZYDPZ5SQj59jaNoa9SfDiMXNrNKg==
X-Received: by 2002:a17:90a:e392:b0:2e2:cd5e:7eef with SMTP id 98e67ed59e1d1-2e5618d9edamr9931854a91.27.1729434968747;
        Sun, 20 Oct 2024 07:36:08 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e5ad4ed825sm1572538a91.35.2024.10.20.07.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 07:36:08 -0700 (PDT)
Date: Sun, 20 Oct 2024 07:36:06 -0700
From: Drew Fustini <drew@pdp7.com>
To: soc@kernel.org
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [GIT PULL] RISC-V T-HEAD Devicetrees for v6.13
Message-ID: <ZxUVVk9gWJAVrp0g@x1>
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
have been in linux-next since October 15th.

Thanks,
Drew

The following changes since commit 8e929cb546ee42c9a61d24fae60605e9e3192354:

  Linux 6.12-rc3 (2024-10-13 14:33:32 -0700)

are available in the Git repository at:

  git@github.com:pdp7/linux.git tags/thead-dt-for-v6.13

for you to fetch changes up to 2a3bf75a9408c40403aab39336274c8010b4c815:

  riscv: dts: thead: remove enabled property for spi0 (2024-10-15 10:01:18 -0700)

----------------------------------------------------------------
T-HEAD Devicetrees for v6.13

Add nodes for pin controllers on the T-Head TH1520 RISC-V SoC. The
yaml binding and pinctrl-th1520 driver has been merged into next by
Linus W and will be included in the 6.13 pinctrl PR.

The TH1520 GPIO controllers are already supported by the gpio-dwapb
driver. This PR improves GPIO support by adding GPIO ranges and GPIO
line names for the BeagleV Ahead and LicheePi 4A boards. Support is
added for the built-in LEDs on the Ahead board.

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Drew Fustini (1):
      riscv: dts: thead: remove enabled property for spi0

Emil Renner Berthing (7):
      riscv: dts: thead: Add TH1520 pin control nodes
      riscv: dts: thead: Add TH1520 GPIO ranges
      riscv: dts: thead: Adjust TH1520 GPIO labels
      riscv: dts: thead: Add Lichee Pi 4M GPIO line names
      riscv: dts: thead: Add TH1520 pinctrl settings for UART0
      riscv: dtb: thead: Add BeagleV Ahead LEDs
      riscv: dts: thead: Add missing GPIO clock-names

 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 86 +++++++++++++++++++++-
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 39 ++++++++++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 30 +++++++-
 arch/riscv/boot/dts/thead/th1520.dtsi              | 70 ++++++++++++++----
 4 files changed, 202 insertions(+), 23 deletions(-)

