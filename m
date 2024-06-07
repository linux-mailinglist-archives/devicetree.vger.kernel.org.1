Return-Path: <devicetree+bounces-73664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E6F900318
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 14:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FE4328475E
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 12:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14D8190677;
	Fri,  7 Jun 2024 12:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwrRI8y2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B5B187323;
	Fri,  7 Jun 2024 12:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717762388; cv=none; b=aJ+3EZpd2zJkC/Ct7oBHnozauqDn1/ZQsXb5WGc2IH/cMoUTAMpwOzcmJJdhmh4LlY6NUVB2bzAmvuATpkkDOxx+RilR2mHRxlvfqS+9XTX89Eaa5lYkTarNfZedtycKsELM1EVgq2+yW4cUY08C0dKGMdQRE9+pkXAyy2YoUN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717762388; c=relaxed/simple;
	bh=gF5n+zRaU3uzxOxtiMM2LdGmFoHvX4eM2/oevn8fkbA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JOtM1ay82FwtcASJ4nQQZciL5bacYED16mbGLnNElyO2A4VRMR80menS0VC3zssUKiOV7nLCPFMIUxDL0AgNT9hcKsI4BhGMxNijolH7SVIxsQztI3J4XnRakZtYIi9Pi2epc1DL9bMRancWMyYzlsonRm6cwCjrEBF+vRkiDfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwrRI8y2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F4C5C2BBFC;
	Fri,  7 Jun 2024 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717762388;
	bh=gF5n+zRaU3uzxOxtiMM2LdGmFoHvX4eM2/oevn8fkbA=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=AwrRI8y2rLlk70qtMvL0YNffuEVQsM70xtvUu7fwILFhRUaEHT3kPyhRwLqGJWTQq
	 DLc86kxEfQBaTwcc+s9rcshNa3OP3MawgKl1Wbjenh2zFrFqg5Acmyem89amPieSbK
	 eCBlgIhbuDvyRx4PSLZ9Bj4ReavD/jua4urMRie+u2xx6CttVoOO1OLnwhBXGlE522
	 riH2NwzxRJY9kaVXP2nUAEz6meIBw6XNqUfTY84DMZPHiSzgTcrasxsa7XR+LFu8nj
	 KiBzvfKAUBVJ/q0tGmE6BbBiifehmgK5tiDBjJTQNJxMf3Mcz0M1DED/WBTg6ycDD9
	 rqhkTw3rSitEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28096C27C55;
	Fri,  7 Jun 2024 12:13:08 +0000 (UTC)
From: Keguang Zhang via B4 Relay <devnull+keguang.zhang.gmail.com@kernel.org>
Subject: [PATCH v8 0/2] Add support for Loongson1 APB DMA
Date: Fri, 07 Jun 2024 20:12:22 +0800
Message-Id: <20240607-loongson1-dma-v8-0-f9992d257250@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACb5YmYC/12OzY7CIBRGX8WwntvwIxRczXsYFxRuWzK2TEAbt
 em7D7iYNC6/xTnfWUnGFDCT02ElCZeQQ5zL0F8H4kY7DwjBl0045YIxTuEa4zzkODPwkwWmhO1
 RtlR3hhTmN2EfHm/f+VJ2n+IEtzGh/bdQwzXjzEjRSH5UVAODHxzu5ax51cvvYbLh2rg4VeMY8
 i2m5ztwUdVbLUcqmPpoWRRQMNQjd8K58rIT1Zal3dHcfNJtoUXrO6lLk0e5p7dt+wNv2zmPKgE
 AAA==
To: Keguang Zhang <keguang.zhang@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-mips@vger.kernel.org, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Jiaxun Yang <jiaxun.yang@flygoat.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717762386; l=2538;
 i=keguang.zhang@gmail.com; s=20231129; h=from:subject:message-id;
 bh=gF5n+zRaU3uzxOxtiMM2LdGmFoHvX4eM2/oevn8fkbA=;
 b=jhRwfB+vpFFBOmYUzSKsBu7OoBFlD0dWV9a6WDqY9cVvwsGut+NtK4HH/lnWannivrsr60YEF
 EEilt2pYzBFBsDacigUIn5g+pbjy1zwbxhOtweHvvZLG6VWJcV4NRUu
X-Developer-Key: i=keguang.zhang@gmail.com; a=ed25519;
 pk=FMKGj/JgKll/MgClpNZ3frIIogsh5e5r8CeW2mr+WLs=
X-Endpoint-Received: by B4 Relay for keguang.zhang@gmail.com/20231129 with
 auth_id=102
X-Original-From: Keguang Zhang <keguang.zhang@gmail.com>
Reply-To: keguang.zhang@gmail.com

Add the driver and dt-binding document for Loongson1 APB DMA.

Changes in v8:
- Change 'interrupts' property to an items list
- Link to v7: https://lore.kernel.org/r/20240329-loongson1-dma-v7-0-37db58608de5@gmail.com

Changes in v7:
- Change the comptible to 'loongson,ls1*-apbdma' (suggested by Huacai Chen)
- Update the title and description part accordingly
- Rename the file to loongson,ls1b-apbdma.yaml
- Add a compatible string for LS1A
- Delete minItems of 'interrupts'
- Change patterns of 'interrupt-names' to const
- Rename the file to loongson1-apb-dma.c to keep the consistency
- Update Kconfig and Makefile accordingly
- Link to v6: https://lore.kernel.org/r/20240316-loongson1-dma-v6-0-90de2c3cc928@gmail.com

Changes in v6:
- Change the compatible to the fallback
- Implement .device_prep_dma_cyclic for Loongson1 sound driver,
- as well as .device_pause and .device_resume.
- Set the limitation LS1X_DMA_MAX_DESC and put all descriptors
- into one page to save memory
- Move dma_pool_zalloc() into ls1x_dma_alloc_desc()
- Drop dma_slave_config structure
- Use .remove_new instead of .remove
- Use KBUILD_MODNAME for the driver name
- Improve the debug information
- Some minor fixes

Changes in v5:
- Add the dt-binding document
- Add DT support
- Use DT information instead of platform data
- Use chan_id of struct dma_chan instead of own id
- Use of_dma_xlate_by_chan_id() instead of ls1x_dma_filter()
- Update the author information to my official name

Changes in v4:
- Use dma_slave_map to find the proper channel.
- Explicitly call devm_request_irq() and tasklet_kill().
- Fix namespace issue.
- Some minor fixes and cleanups.

Changes in v3:
- Rename ls1x_dma_filter_fn to ls1x_dma_filter.

Changes in v2:
- Change the config from 'DMA_LOONGSON1' to 'LOONGSON1_DMA',
- and rearrange it in alphabetical order in Kconfig and Makefile.
- Fix comment style.

---
Keguang Zhang (2):
      dt-bindings: dma: Add Loongson-1 APB DMA
      dmaengine: Loongson1: Add Loongson-1 APB DMA driver

 .../bindings/dma/loongson,ls1b-apbdma.yaml         |  67 +++
 drivers/dma/Kconfig                                |   9 +
 drivers/dma/Makefile                               |   1 +
 drivers/dma/loongson1-apb-dma.c                    | 665 +++++++++++++++++++++
 4 files changed, 742 insertions(+)
---
base-commit: d35b2284e966c0bef3e2182a5c5ea02177dd32e4
change-id: 20231120-loongson1-dma-163afe5708b9

Best regards,
-- 
Keguang Zhang <keguang.zhang@gmail.com>



