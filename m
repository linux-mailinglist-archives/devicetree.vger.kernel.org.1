Return-Path: <devicetree+bounces-240394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A98AC70B0D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:48:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7586934D3F7
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E62B34F490;
	Wed, 19 Nov 2025 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YTo+lTKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505331D5146
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 18:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578051; cv=none; b=GIRe59E0rjqkpMKTWCoFm766+pR+Jg6YQ6coe6hohdmvw1qT4c1uoAXIzuAQasvd6W93BrM5jkecyW+P7aub1xrWbBg5ITLtNOa1QXErZjdgyhnuJygEoYC+heOkGsCPm7G8fkucJyoidYMQgCRIqvANIBCXQ/N9vQSe3YFrnAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578051; c=relaxed/simple;
	bh=+hRqRvA5Ob6QZcAxsY5uZZs5qvLXUDj57wjaBm65mbM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=ZeZyLHQaKW89YdOZAFSHbh+ZWGebjVvAvlZJhYURmH7fXJNjYWmC77ta7mKFs6GFMfvqMfjbgFTjF+O4COgoUoDof/bqALUU9x2BHw/mPn7ky24bnDBE/NNgwSjDxEWXEueMi4cj8q+MLjqrzJ/0zeMnZVQJdVwONERPesBWN0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YTo+lTKo; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47789cd2083so574895e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763578043; x=1764182843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=CmYSXdfN2Ja/nm2Msv1+BGjsxCvmxF+b0Biwj6Rcb2Q=;
        b=YTo+lTKoxd3FdmeVqyfLEfzjm81Hg5ZMNaAcj2hAaCFePLaSxMOvTzsFuJSA4Z/cpB
         qPwBDi+Pz8/ToSJzDvH6ErjtmE5pGMaXBqIDDGbBEiElPNcBfqbmReIDHm66rPEdYNHp
         4ToityM/qUBwcqfRg/bd5vNrVEozBOlO02iwnaZ5FGh3W5HZ/50X9CvYDXav8jV6log0
         F7Dcbbk7gqhOksRJ27g8NOAKymQ6OIRntn9B8Px//ymGX+VrM89owZnHpYS4j6mVo25A
         5dq/xRBrZEC1hXQ0UB2ZUAb1Q6KrEhmXQJbhJ5P3R2ydRRbT6ChDKoNGxxBxGysRzdUq
         pEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763578043; x=1764182843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmYSXdfN2Ja/nm2Msv1+BGjsxCvmxF+b0Biwj6Rcb2Q=;
        b=PJABJaJGqei6CATG7uPFnrcSP/fhfu+ihg1TMnbPcOyRSGsmuJMdJ24djDaIx6oIx4
         sQNZDWCJMzId6SnNP7pi/RGcDjldCMYSCnfxcLVZY1jFH1T0I9dUtX5JaBVIu0JKkTcK
         7hSugDncmLVqeb26oLToCKtSWLHra/z5r6l8j2PxbTup/qhb9NX+X7xqFvT7QsxSRnj7
         RhMqMPaQdOyykTOXeW3e0tgi50Plb/ZjZrfkIkiu2+41MZI7XT4/PNYj4EFOKLzmf7xn
         NE9BPlzEINDomfwKWLTZwpA6Y4w6Y8JO3rfeslgX6/yVJBzaKYZ/Y7VDZGPhvKdjtbGx
         RilQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0D8uQIq2LUNq4YOIOsWn4zTNmkG+20m7dURDidGXtA+mMvgnY41FBvGEhmCuiGMkQsYKydHI1Av/w@vger.kernel.org
X-Gm-Message-State: AOJu0YzzV146MazFKcWmjX94ReT6LiWEoEgvXd+lvq2GnqpUunZyUHPe
	HQ3E5MIUmn4IEMOr2J+heXB03Y/3gQMD3xEVjcTMfgDGD9a6dEByvVqr
X-Gm-Gg: ASbGnctElorUCjUYXcWMKwieB/NtNRLShs3+b3KrJCjklGn54K1iT832OA1j+C+D7jk
	TY35h8bAM0jiSzNMedqbGUw4t3YDIhPmYtvwqWVWDaEcFjBjMUICFIjbS+GalyJhUYXtfMsPTIa
	eHIMKmRwUipp+ge/d+9tgcqhT+n5V7VoGtrxNHUZkGI0tsN8w28z9DT1X/X0m++9TF4S/6zjcXS
	DJt0b7XTQE54hKzgfR86LZ1plZPOMHTlSNoMvv2HKoUKtlScePd9l7XdyzOtMoWLWnul8BsD0Gb
	jOeo3V/oBmm2nc4YhJmBd6oyxUG/fl6XIuNibyAj9Jf4dbjmuFE986mvcQB+qhw7LsZhsN2OyoI
	jrO7kE/kybdZ8iQ8j0ogDK35Pq415majIormn+7Kq8TkMb3U2a1amAM1mxZIfeHn8wQKFszTQVD
	HWiNrrE1we2/A5357xmzNItsHzPQ9pxk2nkvHlj/Ot6f3p5DWjIBXWZTAJfNtoCVLQZIDX6TIZt
	ymL5F8mke7aiEzf+zRovRVJ6ptnR6aw0+U=
X-Google-Smtp-Source: AGHT+IFnLZhy+yX/aZGJYa09bejnAMrPid7rEcBMkFMdth51macEXUw6ZxkmvFTNhRjmgTb5LJTjzw==
X-Received: by 2002:a05:600c:1d05:b0:477:63a4:88fe with SMTP id 5b1f17b1804b1-477b8a5189cmr3256465e9.2.1763578042850;
        Wed, 19 Nov 2025 10:47:22 -0800 (PST)
Received: from iris-Ian.fritz.box (p200300eb5f27c400b58af32dfc3cbd97.dip0.t-ipconnect.de. [2003:eb:5f27:c400:b58a:f32d:fc3c:bd97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm4909795e9.8.2025.11.19.10.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:47:22 -0800 (PST)
From: iansdannapel@gmail.com
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	mdf@kernel.org,
	yilun.xu@intel.com,
	trix@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	kever.yang@rock-chips.com,
	dev@kael-k.io,
	iansdannapel@gmail.com
Subject: [PATCH v5 0/3] Add Efinix FPGA SPI programming support
Date: Wed, 19 Nov 2025 19:47:03 +0100
Message-ID: <20251119184708.566461-1-iansdannapel@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ian Dannapel <iansdannapel@gmail.com>

Hi all,

This is the v5 version of the series that adds support for programming
Efinix FPGAs over SPI using the fpga-mgr subsystem.

The driver implements the passive-serial configuration
protocol and allows loading full bitstreams via an SPI controller. The
binding describes the Efinix Trion SPI interface and documents the DT
requirements for enabling the driver.

All v4 remarks should now be adressed.
Please let me know if further adjustments are needed.

Testing:
- Verified on an Efinix Trion T13 custom board
- Tested full bitstream configuration over SPI at 25 MHz

Changelog since v4:

dt-bindings: fpga: Add Efinix SPI programming bindings:
- efinix,spi.yaml: remove unused binding efinix,fpga-spi
- Rename efinix,spi.yaml to match a compatible (efinix,trion-spi.yaml)
- efinix,trion-spi.yaml: remove notes not relevant to hardware description

fpga-mgr: Add Efinix SPI programming driver
- efinix-spi.c: improve driver description header
- efinix-spi.c: replace hardcoded numbers with macros
- efinix-spi.c: use spi_message_init_with_transfers instead of spi message init + tail
- efinix-spi.c: rework write logic to avoid deasserting the cs or resetting the hardware in between write chunks

Ian Dannapel (3):
  dt-bindings: vendor-prefix: Add prefix for Efinix, Inc.
  dt-bindings: fpga: Add Efinix SPI programming bindings
  fpga-mgr: Add Efinix SPI programming driver

 .../bindings/fpga/efinix,trion-spi.yaml       |  77 ++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/fpga/Kconfig                          |   7 +
 drivers/fpga/Makefile                         |   1 +
 drivers/fpga/efinix-spi.c                     | 256 ++++++++++++++++++
 5 files changed, 343 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fpga/efinix,trion-spi.yaml
 create mode 100644 drivers/fpga/efinix-spi.c

-- 
2.43.0


