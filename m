Return-Path: <devicetree+bounces-179784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE642AC1A49
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 04:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72F884A3102
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 02:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E7921D59C;
	Fri, 23 May 2025 02:55:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-88.sina.com.cn (smtp134-88.sina.com.cn [180.149.134.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AED165EFC
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747968949; cv=none; b=OcDMejL64JhBbctykmmInRrw1itpwxzTk3kP/ejcWze/e6D1rIbY8/Nyhp7TsUA3PLfiooafzU1c66/p2JwMWSnW4BU65xD9Q9druOTN3rIs/qEYZOoVvVMvO4n+30sG1JrTdehxoU+C+gWEia/d2oO2/t49ZJiCR1/4TvA41gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747968949; c=relaxed/simple;
	bh=qBJ2kAcdBrQpxlLTDIPnYHciYA93QxLSjDqWR8b1urM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=RFm2Gg6dVOlRnqnjH4ag4t+37II8MEmJwezvjAc3l84ckcwL9xUXR/AbSG6xb7s3uwwx852aVRjN8ZBnDp9jL5/6VBsky8Kvmjey9na+G/P91MdFddWPy1jKScJXfNW773PoywHlItfO1nNsvGo4rqhm8Oi05yh9MkXn9BWO5Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.30) with ESMTP
	id 682FE38700005A34; Fri, 23 May 2025 10:55:04 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: D6906CBCAF9D4E02BDB4CEF5B0E70A5A
X-SMAIL-UIID: D6906CBCAF9D4E02BDB4CEF5B0E70A5A-20250523-105504
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
Subject: [PATCH v3 0/2] ASoC: codecs: add support for ES8375
Date: Fri, 23 May 2025 10:55:00 +0800
Message-Id: <20250523025502.23214-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8375 of everest-semi.

v3 -> v2:
          - Modify some control-names
          - Delete obsolete terminology
          - Modify tags of v2

v2 -> v1:
          - Add the description of everest,mclk-src in the yaml file
          - Remove attribute es8375->dmic_pol which is not used
            in the codec driver
          - replace SOC_DAPM_ENUM_EXT with SOC_DAPM_ENUM which
            is used for ADC MUX
          - Modify some control-names
          - Replace a number with a specific variable
          - Delete obsolete terminology
          - Remove the default volume setting
          - Modify cache_type in regmap_config

Zhang Yi (2):
  ASoC: dt-bindings: Add Everest ES8375 audio CODEC
  ASoC: codecs: add support for ES8375

 .../bindings/sound/everest,es8375.yaml        |  71 ++
 sound/soc/codecs/Kconfig                      |   5 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8375.c                     | 793 ++++++++++++++++++
 sound/soc/codecs/es8375.h                     | 123 +++
 5 files changed, 994 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8375.yaml
 create mode 100644 sound/soc/codecs/es8375.c
 create mode 100644 sound/soc/codecs/es8375.h

-- 
2.17.1


