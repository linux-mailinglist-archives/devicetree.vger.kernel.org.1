Return-Path: <devicetree+bounces-103032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D35F979467
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 04:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B5771C21508
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 02:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCECC3D68;
	Sun, 15 Sep 2024 02:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="f78kTOU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E0428F3
	for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 02:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726368106; cv=none; b=L7/JlvZd6lwS40N/k7LcAABxnXJCV9h2s2j/TTn+xZM9/+ZfeXl4PehYzvbftTUD2aNEns6+Rt5YjW+nYiNUtGNYO0TIrqimtN654jlrcNuPJ7vuyirWPb1Y5OFZLSzPkNJM5EiZmHOC2axdIGn5w91CrVHSLnc1I020suM6ZWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726368106; c=relaxed/simple;
	bh=dBkE0l90XuW9ku8lR2aLbA2AZ34fzfyLgw4yMf3EPJg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ftMWDW3VPy7ahCYDsjqS6ormTYTXOJ+vNm5wnpxPlIP+WEtXx3EZUraEpu03n2BrFXQ3FtKyVTaVTD2f+rkBW3puK5SLzywy//jgWLj7conDU0EGhyYTYFMBdbGYlRHPzaZPCQ0dMhbpd590gQIokb1okrGEwvnnKw9E0CnYxkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=f78kTOU2; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6d3c10af2efso26925267b3.0
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 19:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1726368104; x=1726972904; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UEJl323ticb7+sWiCTe7PcxkTdrZnxPuus/Daby2Uv0=;
        b=f78kTOU2Tf7BaMB57cAXU9gMUOKb7RA41ttj/WEmeAybIDM/hhU0cWFt+k37BewfPf
         nv63rqMfdVC2RqUMGSMo2JgzV+3Wva/eT6/vq0ZY4ldsIqGnMJ4jwSyNsGx52nvRXR8+
         EZc+zGx4aZ+JabzVnD0mJDdm4gRr0F9T0TUjhqTNbyd9bz+kwsDG4onNzEwkeRpA77Hi
         JnTNXZU6i6SUUGianqnC/6N6N/AaWkCyE8Npa1k3diGEf2/w9JF+K0V/+4Nd901RA0hN
         pOPw2VX6PkJyZzGOitxGWy4c2IXVPcRzXx0deSAO90g4NPt434IlawEiBtOLXhdeENfF
         i+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726368104; x=1726972904;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UEJl323ticb7+sWiCTe7PcxkTdrZnxPuus/Daby2Uv0=;
        b=IwPc71uWODBfTPG5dCKD+oF1a5NyAG/Mw52fg3O6eGkEV9bKeAETBUYq/Dde1aV806
         DF8r+/bVQFmYTC862pHqsynAXyir6RsBB0PK4XqzZbO/8U6aUOQ0gaSZEDU4GfVvglGV
         wKoIk0QDAxrps1iVB7EHEaqoQ1lRd/XE26dHbAdNtxN2AwnY9fl1AmlDaHFdoaEknVzp
         cx2n3ozLFjWXAc9Lkw3wETw4EmycEFWaSm2S65bvXH+/GJMMxzmPLJSfjEl9MZgN2w7/
         znIEPPRrvddYz2Jm3kmFlU/h9Li+tmZlToCIeU9O5dJwVli9wxYSoNVmpWQxvcWLsrUC
         7P5g==
X-Forwarded-Encrypted: i=1; AJvYcCX+0mFmTN0xIFQK+rPn815Ze2oV0RhjYZ2C1ZK44jYOZ7AfzLEQriB5VtzObtsq6lVwPI0tmVsNaSIb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9H+O5JJbgZA+ay6dB78Z9hO9dX4cSLKm3GF6oLImjpS5ye27x
	V8LdZyaXJ4dfl6zqsQwDwZMMN9myGjy5adX8ZTSUqepdDAVoa1QED/4GEi/rJKw=
X-Google-Smtp-Source: AGHT+IHF8hUJc9aoaLr4B0Uy/HXuQcsgRKmJTkgXaVLV0JaGjzfaP6wbjAmg0K2wYknRt9JrSjNswQ==
X-Received: by 2002:a05:690c:fc5:b0:6dd:76da:dba with SMTP id 00721157ae682-6dd76da1a06mr19858477b3.35.1726368103699;
        Sat, 14 Sep 2024 19:41:43 -0700 (PDT)
Received: from [127.0.1.1] ([216.139.163.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6dbe2e0d924sm4129097b3.41.2024.09.14.19.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 19:41:43 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Subject: [PATCH v2 0/8] pinctrl: Add T-Head TH1520 SoC pin controllers
Date: Sat, 14 Sep 2024 19:40:48 -0700
Message-Id: <20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADBJ5mYC/3WMQQ7CIBAAv9LsWQxQWm1P/sP0UGGxmyg0QIim4
 e/S3j3OJDMbRAyEEcZmg4CZInlXQZ4a0MvsnsjIVAbJpeIDlywtopOcreR0Ci9mLsKgUrPWfQ8
 1WgNa+hzD+1R5oZh8+B7/LHb7d5UF46xvh4e9tmg7Pt8Sur0O6NJZ+zdMpZQfpzFafrIAAAA=
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

This adds a pin control driver created by Emil for the T-Head TH1520
RISC-V SoC used on the Lichee Pi 4A and BeagleV Ahead boards and updates
the device trees to make use of it.

Emil's series from January used separate compatibles for each pin
controller instance. Rob did not think this was appropriate because the
programming model is the same for each instance.

This series takes a different approach by adding a thead,pad-group
device tree property to select the pad group for a given pin controller
instance.

Changes in v2:
 - Add thead,pad-group device tree property
 - Change driver to use the thead,pad-group property instead of the unit
   address to identify the pad group of the pin controller being probed
 - Return -EINVAL if no pin group can be determined during probe. In v1,
   there was a bug that instead returned an unitialized variable
 - Link to v1: https://lore.kernel.org/r/20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
Emil Renner Berthing (8):
      dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
      pinctrl: Add driver for the T-Head TH1520 SoC
      riscv: dts: thead: Add TH1520 pin control nodes
      riscv: dts: thead: Add TH1520 GPIO ranges
      riscv: dts: thead: Adjust TH1520 GPIO labels
      riscv: dts: thead: Add Lichee Pi 4M GPIO line names
      riscv: dts: thead: Add TH1520 pinctrl settings for UART0
      riscv: dtb: thead: Add BeagleV Ahead LEDs

 .../bindings/pinctrl/thead,th1520-pinctrl.yaml     | 176 ++++
 MAINTAINERS                                        |   2 +
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  87 ++
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |  43 +
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  |  28 +
 arch/riscv/boot/dts/thead/th1520.dtsi              |  65 +-
 drivers/pinctrl/Kconfig                            |  13 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/pinctrl-th1520.c                   | 911 +++++++++++++++++++++
 9 files changed, 1310 insertions(+), 16 deletions(-)
---
base-commit: 5be63fc19fcaa4c236b307420483578a56986a37
change-id: 20240902-th1520-pinctrl-d71de44acc66

Best regards,
-- 
Drew Fustini <dfustini@tenstorrent.com>


