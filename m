Return-Path: <devicetree+bounces-120419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A31E09C2989
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 03:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33606B2256F
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 02:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DA84779F;
	Sat,  9 Nov 2024 02:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="vFl+eHLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD623C463
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 02:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731120148; cv=none; b=jPRS7IucPphikrzj4BhZJKb570+yyGWSgwGiJ5TDEOi1KwEMfQpA9TiIuFeTrzGQf+AB6sjfcUAo8MIU1je2YNO3S7RWbE88WxM1F5Fb5eL4cdA5PvRlE4OvzTbptXpr+hPl//r3LEFw4BlQesWkl5Zqpozy2wAyEBzA7AGqeQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731120148; c=relaxed/simple;
	bh=LjsF1zz6XeiMc++G/iNkdGaH6gH8mm4kG1ByozwHDaM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LZuSj+LbBfup1G/ZQ/Drv38dcnb5Xy8csmtt+EBWuEvSntULolcEA47XL0KnMRpuU+d1KPw+pgpJJB/NvH6jQtOjJDIrBznUaD2KP8XedM4nzRnvUsbByGNEwhmar6pT7XvYue/n1Sccpc75cSqLNWXkcAP+IcY1EUIfpngGVF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=vFl+eHLX; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20c6f492d2dso31059405ad.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 18:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1731120145; x=1731724945; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l/kq/jig55oiRh/bx6L5lLBF6mfYKjE94DkUXbQGw1U=;
        b=vFl+eHLXmtuwIcFIBfgemKqP6GQppoJ/kNgsRKWVc63ep+Dtr4FEhACj6vOcI3ACQy
         lVY2pCVmyn8mG/C/h33DgNErCc/UH4fO5cCr4QEfBeMrW2XpHlCdLpfNnL95u80zI5bR
         NtqsNzJ8cn6+n/r8VItWx8ooD0m36Fptks8TEavi+67z1MvASZsFbT+4QXnkD3uUzIhX
         i7ZrCXecZCdYjs9VGFAiemEw0iiQsN55B5j7twPChGZtVmpdU5SwdXO5TT5eAc49G05B
         JmT005zMuTX7qaxQh8eBGGmk1F6dyUZmjmuhxroMYZ+LRQPVGFgEH41HjJEiK2zXpryU
         6mpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731120145; x=1731724945;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/kq/jig55oiRh/bx6L5lLBF6mfYKjE94DkUXbQGw1U=;
        b=bXXZdrbZJSkhUGS2fAj+T9tqiFEDtTpZj9I7cXK6gkxOAH/JRwuxgm3lhjLyz5lC6t
         6nfwILAt9RTdfhLHU+vFGowu5ikXtKYl4AXXq70tRcBjP2h0s0hRjk1BnEmeBcauKl2e
         TuulR7qqdgQj0rz7avasMx/UWLAzL2HzH3DYpn9G+h8BDx47kDmQH+N87vgNzOnMUKYB
         0cKdG/ZShJDTdxb5kWzR79RzieY5nq1PRNX8qg8xpKUGpn0tLrbh/rMmItuyijbCxRrE
         D2fdJrRpcNhEvaDydb+KJm8vD9K2H0w6zolTQDmu9tKJQVSF9Sm6kS5ymlt1ghQLDoKo
         3Tkg==
X-Forwarded-Encrypted: i=1; AJvYcCWajBmj9CPxX2qSwYFJLPuDner078FUGTw3VFz1w9XyVgLExobUy/EXyAbDZ6uj0NCK8KCcjfvO/iZR@vger.kernel.org
X-Gm-Message-State: AOJu0YxPdEIwy+XKeBCHa2x+yZPYrEx6VNJKYTI996fVjyWFep/w3OEL
	fWX8fOmdZ9HTLpZbMnQwgb+4T1s2u/EPPq81L7PH+i24jkCf1zhheCylP1kj6oM=
X-Google-Smtp-Source: AGHT+IEaqnxKIzWBmEEzYyvufch5G8Tuk0X5vXmjpFy2gAQctA1w0BMtU34C3aumXJGf7VQyRyPOsg==
X-Received: by 2002:a17:902:ecc2:b0:20c:aa41:997a with SMTP id d9443c01a7336-2118354d664mr70046865ad.34.1731120145214;
        Fri, 08 Nov 2024 18:42:25 -0800 (PST)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e6e0acsm38035835ad.257.2024.11.08.18.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 18:42:24 -0800 (PST)
Date: Fri, 8 Nov 2024 18:42:22 -0800
From: Drew Fustini <drew@pdp7.com>
To: soc@kernel.org
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: RISC-V T-HEAD Devicetrees for v6.13, part 2
Message-ID: <Zy7MDgtCtPkxLbjm@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd,

Please pull these thead dts changes. I've run W=1 dtbs_check and the
new ethernet support has been tested in linux-next.

Thanks,
Drew

The following changes since commit 2a3bf75a9408c40403aab39336274c8010b4c815:

  riscv: dts: thead: remove enabled property for spi0 (2024-10-15 10:01:18 -0700)

are available in the Git repository at:

  git@github.com:pdp7/linux.git tags/thead-dt-for-v6.13-p2

for you to fetch changes up to 7e756671a664b73b2a3c0cc37fd25abf6bcd851e:

  riscv: dts: thead: Add TH1520 ethernet nodes (2024-11-06 17:03:42 -0800)

----------------------------------------------------------------
T-HEAD Devicetrees for v6.13, part 2

Add gmac, mdio, and phy nodes to enable the gigabit Ethernet ports on
the TH1520 SoC-based BeagleV Ahead and Sipeed Lichee Pi 4a boards.

The dwmac-thead driver and dt binding have been accepted by netdev and
are in linux-next as well as the dts patch in this pull request. I have
tested next-20241108 on the Ahead and LPi4a boards, and Ethernet works
correctly.

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Emil Renner Berthing (1):
      riscv: dts: thead: Add TH1520 ethernet nodes

 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  91 ++++++++++++++++
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 119 +++++++++++++++++++++
 arch/riscv/boot/dts/thead/th1520.dtsi              |  50 +++++++++
 3 files changed, 260 insertions(+)

