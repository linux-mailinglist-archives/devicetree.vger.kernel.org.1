Return-Path: <devicetree+bounces-106563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ED498AD42
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E0581F22ADC
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 19:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F4119DF40;
	Mon, 30 Sep 2024 19:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="GK57HEqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB73319D8A8
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 19:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727725870; cv=none; b=nHKt5lns5asgyJLAWUrrqimAbvVadsfoJJTKcJPY/wZzm+iPuwqMDIJUPNmhiy++4bDceK0DJcEEcIBrupI2hK23EStD5+qi58/YjEuoQcNnv5pdO4PLObFY6132LMH//icrcXr9DUD48fl17g0loR1VGKvMHq1hrqMIdxNkW+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727725870; c=relaxed/simple;
	bh=QrL/lV8ct5As4OXq5hfGZA+GKDxZYuXtwV7phco8Mg4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PaLnXaeksYWOlaXcQCKQ5p4LLV6XPhdX9lL7bV3mLSUg2O9tTiJwlWsy1cU+cGOvjG3NiKb6cPqokNMYy+vT8AWuS2fjTaNMGDwKZK+o593L9hpBifPmaBR9/qUHWGqMGq9BY3z5XiO5dQwk1o/gA9RV20ZqPmcSbYW/1G1Q1x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=GK57HEqt; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-71dba8b05cbso69121b3a.3
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 12:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727725868; x=1728330668; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yln5HQpd+jTguQQBAuIPN7v4ItFqnLr6QvDPCaJ0BvQ=;
        b=GK57HEqtJjKsF9hkdhXZSOHIW4yVDk0h9qrsYdaaiOZQ6BLRUjRj78LLLJ3yA/PClq
         LskVO4WbrdZn2MuTk3qsk/O6gwIGI7qCL1fXZBzYJC94ng5Rb5+uRCJ5mFqo8JAf5bCU
         NuadGsoDAfi9kwGfRUSNtuCPAQaOvSKdwCXi2AMiDwR7OM3YdXak7NWl6FwhwRQbTBNt
         kHq79BGz5yMD8Pzc3UUC5kn/jycBFxNMbyMsubJpVEZo/t3Y+AnOuUKiLXOeYzPMv2+L
         pcy0dq1HUXtQrFhpmY52KyLTyQuMw43RIv6VkhqkXOnXqhpW12+MNE3ajoranK++yRHe
         WUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727725868; x=1728330668;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yln5HQpd+jTguQQBAuIPN7v4ItFqnLr6QvDPCaJ0BvQ=;
        b=Tf61mhkkQs9mN3wTqbo5sdqorbeds3qyAFOZUyDCnhVloi7IwVfkNlHriO126Rt1Hc
         Oa65/EHNvBmcZD/+AWdOfZORR82VvZDYQUa8rXllp31fOXrfZP+5HQptqAQzZG/JiFt+
         5c9pKUH2irdBH9imte32h8keyBfvIL9Ad5+nMd9mqV5txbaYtMSV9c6NCpwmKnUr7UsO
         oG3Y6d1HI6OL3B4MQ2bHIvNRGOtOVSsTwxMKVigC5CfSh2CS2cQA1zM79VZQSFGmiJrm
         L2n1Pq09+duWJA2khPnRiXLV3vZJyUwRBUH97R7z1kS0WXVur+QnxAazDTMi65eNcMca
         /kJA==
X-Forwarded-Encrypted: i=1; AJvYcCUR0unnYuugMO12k3it+f7+Jnbun6ND3AIaJiCPy0sTS/8J4Ur3L0pXjKaRqS/iLQxuP5BF7we4+55/@vger.kernel.org
X-Gm-Message-State: AOJu0YxVcBARh1EY2dXKyZGo1ebvLuN6rDQJkGNkzyCHf/BQaoc5kO5O
	Mgem9Gur1EWqw4c+GnpLvxmUshYkLf6NIDmFZMWiwYb9U2s0oluE1P+Jy71FtqQ=
X-Google-Smtp-Source: AGHT+IGjSiRDXQRXRfRw15I52J+IDAcx49BXevj+SDiQr0UdMIcFCaHqsd9DDGnyWkz+MxRQ5YxVJg==
X-Received: by 2002:a05:6a21:e8a:b0:1d0:3a28:7589 with SMTP id adf61e73a8af0-1d4fa6c392bmr19195635637.24.1727725868006;
        Mon, 30 Sep 2024 12:51:08 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26529d4bsm6630213b3a.158.2024.09.30.12.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 12:51:07 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Subject: [PATCH v3 0/8] pinctrl: Add T-Head TH1520 SoC pin controllers
Date: Mon, 30 Sep 2024 12:50:50 -0700
Message-Id: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABoB+2YC/x3MQQqAIBBA0avErBN0tKCuEi1CpxwIE5UIpLsnL
 d/i/wqZElOGuauQ6ObMV2jQfQfWb+Egwa4ZUKKRk5aieDWgFJGDLekUzqAaNW1olYIWxUQ7P/9
 wWd/3Ax8jooVgAAAA
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

This adds a pin control driver created by Emil for the T-Head TH1520
RISC-V SoC used on the Lichee Pi 4A and BeagleV Ahead boards and updates
the device trees to make use of it.

Changes in v3:
 - Add Rb from Rob for the binding
 - Rebase on 6.12-rc1 which enables AP_SUBSYS clock controller in dts
 - Update dts to use AP_SUBSYS clock controller instead of fixed clocks
 - Remove unneeded defines from the driver for dt unit addresses
 - Link to v2: https://lore.kernel.org/linux-riscv/20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com/

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
 drivers/pinctrl/pinctrl-th1520.c                   | 907 +++++++++++++++++++++
 9 files changed, 1306 insertions(+), 16 deletions(-)
---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20240930-th1520-pinctrl-d42163ea2c11

Best regards,
-- 
Drew Fustini <dfustini@tenstorrent.com>


