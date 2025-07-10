Return-Path: <devicetree+bounces-195106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C65CB00858
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 18:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 057761C851C3
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 16:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3292EFD8F;
	Thu, 10 Jul 2025 16:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RYn+Kzsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA7217A303
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 16:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752164214; cv=none; b=ahgtWhQComzXEtklHwz4Nvt+r3jjRIJn2XBMFqTBBlf5iPBfA96mejaRUBuAAWBwiBoUkSI2TJqE/cPZkCLc7YHY0GlESCEIFDqT7iOkM5Ms8r32yhkkD/+JC94nyB4Q+x0aHx3KX4BvYs3EM6MYnAgJM5LXZG1S9FmUIQuTTOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752164214; c=relaxed/simple;
	bh=09k8nauOQI+SPJuQ2FMg+lvL3iW+Ogwh/RRpwWFIjkc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TzRITsUffLR71XN3y/9IsvlVmxN7o/uO1U/a+2aJOPn9mThMot1stYy58Yn730EJghYJQ9fAb4QlDJeMeXxxDSVwRpfvcddArm4U8MxZldGQcD9MdX/Jwhe8t1uKMxYizLz9g37cos1hqY2uL1cvUu3zJ/vEGLYfgxYnKAWZBKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RYn+Kzsz; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-3a51481a598so709673f8f.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752164211; x=1752769011; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vh2A4NxX3SzhrObk7arX5jA4Dh37ZpCGm1SS0zq8Pao=;
        b=RYn+KzsztFLgbHqQB5w5aW/rfDQ+0FB2ClHWig2K4ldBiGA8JtlQOW+SshApfEUCvP
         RcbbJYxv9qdGGnzundrVnRlzNtvv5gD3+vwWVNBWNFKrKMdexiFULp5vpMyqvJKsbyXy
         mr3ux8FvgmTLd0jE/gkEJ+M+1wv7iCbGGdbfO0osmwOuuyN2TL7TocpWTrHjfYpzIlxq
         2w2ngRz/7llY6cjuOVq0JTVftmLSIDE+xs++5yDdBxNDhzXPS1duCasQnIM2vfixSIua
         zzmgc5PJkzDP76StNiJGBNBrF0YAPJrz2Y3smtGlK0mtPbqCbUnoMjcT1Hs43/g/6k1M
         G54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752164211; x=1752769011;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vh2A4NxX3SzhrObk7arX5jA4Dh37ZpCGm1SS0zq8Pao=;
        b=lus+vtNvf6KnASNY3GEKM8XQTztx8tbKPQEBjM/OTcXTrJIC6twcjN0Mf1pkytnvnD
         +vuZWv83Bao9igKoU1LYz3lxaDZfmNMo11qxN9pNnU8MLktie1sWe7eAscwuDajxLRGd
         npfaplAfQxKrwFZVTTqzT6BfBWKoTxHT9qrZKAAGY2jRKlZknem0LwaMd8PXmgzAwkm7
         htbGrDMSEPnH9MZP7I9t+GliUmziZ1tAA/e8qEjzFl6q4c1X1tEZVu1RxWX3YTG4wIZf
         X0qb7MDmK+F+Iysly+Bw/lTMozuJ/AzrUfX5l+WMEIQumEgri/YOtlm7k/YFG7SDSkSH
         DMsA==
X-Forwarded-Encrypted: i=1; AJvYcCXI7KDW/sI9eQbjfY7QfIjzyXmQ4zCjSWkz6L8fI3AWT7gFASAh/qsqxpub3Dztf/SWwXqr2aof8dt6@vger.kernel.org
X-Gm-Message-State: AOJu0YyGwsgFphYk41MT2GQx7dsHLIzLm+6dtQL/lJFEwOwY9MCv4+X+
	tWZ3ICvzwyQB0U+GQ4qL4DQYO+hIx2EbIU5tNftufeRk2nS4PYtf3lIf9vjkJBe+5gk=
X-Gm-Gg: ASbGnct0USGfG82oXwzG6T+b3C9AcHvDYAqbgUF3CFpWG5eBg8eGcNDy1YpVnGcdKgQ
	APQBjzVao458gVqTGeXZWfirCH7LJTHrozL0GIupcai7D8+yRLaUd2ua7nzjwq5iXMMRYhaRF89
	UCkBi845Vbj40nzc8zthj0ShQ+juMNLet37hoEYGvwnLm6YkdZVPipx4aoom2ZApEyEPOYokH9X
	swRPhlGvdcF32eJrWEytL2nImmh2LQYBVQWE8TMICKbcPSZJUQaFUjmnO4BLHscbyt/F/sSzMeh
	Z6ylAAI/IqzeZT/Somd3L1u8gkU+ei3ogXmxtvdtJOHjlXvgS00WHyfm3nxNc2ofIKfKuWvsyd7
	3qnYvRr4w0ckIFMbvvI3Jc3u/IRrAuBHSBobtjPE=
X-Google-Smtp-Source: AGHT+IERdBO0d8lPpetUFVBGxZDmPMxF4u7RG24UaG947RWVv9nQ3kmWBfXeC2Ax/LUwUkeRu0REmw==
X-Received: by 2002:a05:6000:4402:b0:3a4:ddd6:427f with SMTP id ffacd0b85a97d-3b5f18d3d1bmr90390f8f.35.1752164210220;
        Thu, 10 Jul 2025 09:16:50 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm2314207f8f.34.2025.07.10.09.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:16:49 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Thu, 10 Jul 2025 17:16:46 +0100
Message-Id: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG7nb2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDc0MD3QrDVN3k4kwj3YKMSt00MxNjkyQzU8MU40QloJaCotS0zAqwcdG
 xtbUASxDxul4AAAA=
X-Change-ID: 20250710-x1e-csi2-phy-f6434b651d3a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3679;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=09k8nauOQI+SPJuQ2FMg+lvL3iW+Ogwh/RRpwWFIjkc=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBob+dwghGiTiZwUODkbb3BqmCZMxbX8rhID17lv
 e3N3Z1CtjWJAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaG/ncAAKCRAicTuzoY3I
 OrOqD/9kP6o7zHrhn9IppVvEfzzjSS6CG4hFOsGvB8sLItvuICt3F8CJOqCLRHRaLmEwdzLzw5I
 BCbuYebi4e4TcpD+ihirP3CUYJ1vMgBq4HVHK1E3LJ3DuityYMCJRuHBVsbPb4HYNDKSa0ocMAe
 eyghoWqK8PW/fRxgrLfY2c3JO3yVsBwRRXn40UCHZ8we5CgfDQ8GKTQhWJturXeE/QfW14JY9H5
 JXAwTkzVAw/NNb0AUL4QsHDMslHv5FcOsXTdqzVuzrTcYwyVfoNkmY4BuZzFZjvwGefBbrlLHvF
 qX4g0luzZx4LOqtxVGwEp/wylhtYzQDKx9H7PJ5nWn+W74nySj8FAqRsQpOTfECqw4Vtg0HxYpV
 BewQjhfIakBxPs56w7R6mWWa/h+Tj4eNJbzpxU3Yqd54eQskzgO0OqD98MOl4hA1nLzRElgCSYG
 H4xcJKKJyUAEjPjwtovKJy2myujH8JfvuQKuo2cLeWR5eq6RftXaNOKsWVbquEPoFDjqx/1+j53
 U565Yj5lhLsb7swxkY87Pkf5y16frcbZ701jrEciGAEwuQOygNb2tapF4eo0zEha6trJn9aKUUc
 LAzWu1/aWAuUVOhNr2GokB0HpobvfDDNKrwnmKm8gjxPQcVvHlPlxXpabrFARdniYpgpVigzZr7
 8tJJDqzgJ90Nj5g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

This short series adds a CSI2 MIPI PHY driver, initially supporting D-PHY
mode. The core logic and init sequences come directly from CAMSS and are
working on at least five separate x1e devices.

The rationale to instantiate CSI2 PHYs as standalone devices instead of as
sub-nodes of CAMSS is as follows.

1. Precedence
   CAMSS has a dedicated I2C bus called CCI Camera Control Interface.
   We model this controller as its own separate device in devicetree.
   This makes sense and CCI/I2C is a well defined bus type already modelled
   in Linux.

   MIPI CSI2 PHY devices similarly fit into a well defined separate
   bus/device structure.

   Contrast to another CAMSS component such as VFE, CSID or TPG these
   components only interact with other CAMSS inputs/outputs unlike CSIPHY
   which interacts with non-SoC components.

2. Hardware pinouts and rails
   The CSI2 PHY has its own data/clock lanes out from the SoC and indeed
   has its own incoming power-rails.

3. Other devicetree schemas
   There are several examples throughout the kernel of CSI PHYs modeled as
   standalone devices which one assumes follows the same reasoning as given
   above.

I've been working on this on-and-off since the end of April:
Link: https://lore.kernel.org/linux-media/c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org

There is another proposal to have the PHYs be subdevices of CAMSS but, I
believe we should go with a "full fat" PHY to match best practices in
drivers/phy/qualcomm/*.

Using the standard PHY API and the parameter passing that goes with it
allows us to move away from custom interfaces in CAMSS and to conform more
clearly to established PHY paradigms such as the QMP combo PHY.

Looking at existing compat strings I settled on
"qcom,x1e80100-mipi-csi2-combo-phy" deliberately omitting reference to the
fact the PHY is built on a four nano-meter process node, which seems to
match recent submissions to QMP PHY.

My first pass at this driver included support for the old two phase
devices:

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/a504c28d109296c93470340cfe7281231f573bcb#b6e59ed7db94c9da22e492bb03fcda6a4300983c

I realised that the device tree schema changes required to support a
comprehensive conversion of all CAMSS to this driver would be an
almost certainly be unacceptable ABI break or at the very least an enormous
amount of work and verification so I instead aimed to support just one new
SoC in the submission.

I've retained the callback indirections give us scope to add in another type of
future PHY including potentially adding in the 2PH later on.

This driver is tested and working on x1e/Hamoa and has been tested as not
breaking sc8280xp/Makena and sm8250/Kona.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (2):
      dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY Combo schema
      phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver

 .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     |  95 ++++
 MAINTAINERS                                        |  11 +
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   6 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 491 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 281 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 101 +++++
 7 files changed, 996 insertions(+)
---
base-commit: 2b0b621d5db55cf01bb200e6e6976b4ff4810544
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


