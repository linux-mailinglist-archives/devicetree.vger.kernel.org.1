Return-Path: <devicetree+bounces-176980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 18645AB613C
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 05:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0C941B44948
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 03:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6D01E3DCF;
	Wed, 14 May 2025 03:34:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-86.sina.com.cn (smtp134-86.sina.com.cn [180.149.134.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9F814900B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 03:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747193653; cv=none; b=M+FViE4MvbWHfl8FFkLOK0qJrRfpdcgfoPnL1vpy/Zu0ARqCDlmvM8QqH9ifQuf5S9JTJubfCF8d/ThS8aqXKSwrFuVqOaO5ZNqDD47dyBrxoziGuRMLTNU5m8yI+2J6s/KzQaytGbG4FTgc/ZV04ePuUWncOSFR11b9stTTNnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747193653; c=relaxed/simple;
	bh=NzYQEUI5IMYQzbPwxOcL54RLdpv557uWokoO6HoPeRA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=AF1tZm4XHBIzwY2mQw1abvZtV47DeXHmekhnr0AZcLWK/dvMNxEAioNNXkBXqrhInW66hymVFWJsQIi9bpM2FShQdzoNxtw9WRv2ifgH5ZfvlgL6jBRzHP/OEAjJBL/sWj35ia+UMtfNKUwVkcJ2rP1iAUzCs1HaqhS4iDedUfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.30) with ESMTP
	id 68240F0900001008; Wed, 14 May 2025 11:33:29 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 6EDDD39DF69646D1829F765E0E492FAA
X-SMAIL-UIID: 6EDDD39DF69646D1829F765E0E492FAA-20250514-113329
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org
Cc: amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [RESEND v7 0/2] ASoC: codecs: add support for ES8389
Date: Wed, 14 May 2025 11:33:25 +0800
Message-Id: <20250514033327.32641-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8389 of everest-semi.

v7 -> v6:
          - Modify the order in the Kconfig and Makefile
          - Remove ES8390 in description of codec driver
          - Romove unused variable in the codec driver
          - Modify notation for declaring variables

v6 -> v5: add "Reviewed-by" at v6 2/2

v5 -> v4:
          - Modify kcontrol on DMIC in the codec driver
          - Modify the way to set the slot and add es8389_set_tdm_slot
           in the codec driver
          - Modify the problem ablout making the use of a MCLK depend on
           the configuration of a TDM slot in the codec driver
          - Remove the "everest,adc-slot", "everest,dac-slot" and
           "everest,dmic-enabled" in the codec driver and the yaml file,
           because they are unnecessary. 
          - Remove the "prefix_name" in the yaml file.

v4 -> v3:
          - Remove simple probe enter/exit debugs in the codec driver
          - Modify the problem about double free in i2c_probe
          - Modify the problem about coding style and wrapping
          - Modify the problem about Bindings are before the user
          - Modify the ref of "everest,adc-slot" and "everest,dac-slot"
             in the yaml file
          - Add description of "prefix_name" and "everest,dmic-enabled"
             in the yaml file

v3 -> v2: Modify the format of examples in the yaml file

v2 -> v1:
          - Remove a empty switch in the codec driver
          - Modify the format of examples in the yaml file

v1 -> v0:
          - Modify the register names in the codec driver 
          - Use yaml instead of txt to describe dts

Zhang Yi (2):
  ASoC: codecs: add support for ES8389
  ASoC: dt-bindings: Add Everest ES8389 audio CODEC

 .../bindings/sound/everest,es8389.yaml        |  50 +
 sound/soc/codecs/Kconfig                      |   7 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 962 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 140 +++
 5 files changed, 1160 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


