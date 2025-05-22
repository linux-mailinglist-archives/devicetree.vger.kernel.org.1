Return-Path: <devicetree+bounces-179505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2FCAC09EE
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 996AF4E7D27
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 10:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0FAF289822;
	Thu, 22 May 2025 10:36:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-79.sina.com.cn (smtp134-79.sina.com.cn [180.149.134.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA732874EE
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.79
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747910160; cv=none; b=UGkI295CRNkU4D0MXidyM9r/yglx33c717PiX9oM37hekp+bLiro2chryk9IPQrw8eNhrgAn5WF0EaOI5m4kcGSMJVgf4+rIvBdAL/QtPVkdJyO8GJsMljacfmXPcr/iAWl+cgnWThay5itW+zU7kfU5I8PzJyT4A7gUEtq0Fyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747910160; c=relaxed/simple;
	bh=EYqSEoUpJAXKNAC/FNIXD4bIkfyj6HFsAf+a5ekxElc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=pCKUbGbiOAW/7Fx8utSMQh5ZtsreUuYgG5Nq79qHcDR4D0plQlKwyqYlv7a7uB+cF1tPfJ3eze+ty3BpZJMuHxU1z/k+4hDf2wguyDZ5TK3WxJ8uNBQwg3hP/cROT/xgXyBk4lm7IlCO/3weMvWb8N9FK8tZmU0vWFGjHtR9ADU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.79
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.29) with ESMTP
	id 682EFE05000009F7; Thu, 22 May 2025 18:35:51 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 27071B3F91D74D74802D3848FEB6AD01
X-SMAIL-UIID: 27071B3F91D74D74802D3848FEB6AD01-20250522-183551
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
Subject: [PATCH v1 0/2] ASoC: codecs: add support for ES8375
Date: Thu, 22 May 2025 18:35:46 +0800
Message-Id: <20250522103548.20134-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8375 of everest-semi.

v1 -> v0:
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
 sound/soc/codecs/es8375.c                     | 797 ++++++++++++++++++
 sound/soc/codecs/es8375.h                     | 123 +++
 5 files changed, 998 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8375.yaml
 create mode 100644 sound/soc/codecs/es8375.c
 create mode 100644 sound/soc/codecs/es8375.h

-- 
2.17.1


