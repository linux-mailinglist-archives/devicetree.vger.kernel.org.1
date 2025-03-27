Return-Path: <devicetree+bounces-161118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C857A72A36
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 07:36:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C714176E1D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 06:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DF31C174E;
	Thu, 27 Mar 2025 06:36:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-87.sina.com.cn (smtp134-87.sina.com.cn [180.149.134.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C44276410
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 06:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.87
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743057377; cv=none; b=fxGkfitDnyOT6lr1aEfIgN+kwvuVxUPjAoO+HJ4UoIVxFV4hpDvfkk2B7mDt9wxOYdiToVt4hLBcT2no+fz2COomYc2tUrwU4TICYXbmpHUrH561MDGs8JP7OndRUTpdEvSoAjwhuNK/dmz7TThDPBIXJxpiX3sHsyF8lIZHqDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743057377; c=relaxed/simple;
	bh=tgDgvK8zxlfADTgKXtWW6nHjzte5rxlQFMQvWzouIlw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=l0n1V+7g1zUcmV8UjdSXrjAiZn+59n2DUnEaZjhhZ80HFYVz6LmsPCeMzq4AOAVzCFaY95zFD0jtZCarGlolOLKzJdCRtlG0/Dowd2c2Ne8RjPUM06XmTfvpfKtOni7953DPtLEinPe/QjSZGnfWL3w7ydARBp7OB9CJe6SDZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.242])
	by sina.net (10.185.250.30) with ESMTP
	id 67E4F1B3000042DA; Thu, 27 Mar 2025 14:35:32 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: E80A13B330964B8798E3ABEC530006F6
X-SMAIL-UIID: E80A13B330964B8798E3ABEC530006F6-20250327-143532
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
Subject: [RESEND v5 0/2] ASoC: codecs: add support for ES8389
Date: Thu, 27 Mar 2025 14:35:29 +0800
Message-Id: <20250327063531.47005-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8389 of everest-semi.

Differing from v4, I added es8389_set_tdm_slot.
At the same time I removed some unnecessary properties in the dts

Zhang Yi (2):
  ASoC: codecs: add support for ES8389
  ASoC: dt-bindings: Add Everest ES8389 audio CODEC

 .../bindings/sound/everest,es8389.yaml        |  50 +
 sound/soc/codecs/Kconfig                      |   7 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 966 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 140 +++
 5 files changed, 1164 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


