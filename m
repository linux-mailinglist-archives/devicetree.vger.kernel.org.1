Return-Path: <devicetree+bounces-179187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F125ABF1D7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 12:43:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D1E3189685B
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 10:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 411AA25F970;
	Wed, 21 May 2025 10:43:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-83.sina.com.cn (smtp134-83.sina.com.cn [180.149.134.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E8825F7B7
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 10:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747824189; cv=none; b=Byq1UNVe9s4pIsdQSHw5+GEvH0p7vgmPrXSa9coPy6bRcqPBialqdegtxYWhJoWB1CYsWwa5uCCfTWo8nCJcZzLWvL45vuc5ckH6lPM1KyNxKEv1+pwY+uROurggRWZG77hCYaBgGML+tUaETjsngQkUUqsMt4+9nwKR+Hqtw/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747824189; c=relaxed/simple;
	bh=Ivb2ok1RNgLgwS0cQoqoiLI4W4kloKQfLCjkmUkdvik=;
	h=From:To:Cc:Subject:Date:Message-Id; b=kxzGQ9AJ66jMgzQIrmseijet+tXWpE4kqtXvx+Tg19yPHLiykUlxFZh+j5lwZ5Zu27tcM7rw0W1bdLfcFEYwIhgcDArhdvXKtFpBOZUlxx0i+qr/uyBa/o8ta3wCyBRKBD5WyEIF9huBk/ha4uhqY4hx8cSkDHpswSUwSi3JuKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.29) with ESMTP
	id 682DAE290000569E; Wed, 21 May 2025 18:42:50 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: D5731ACF33804336A801F7AFAAAA4B57
X-SMAIL-UIID: D5731ACF33804336A801F7AFAAAA4B57-20250521-184250
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
Subject: [PATCH 0/2] ASoC: codecs: add support for ES8375
Date: Wed, 21 May 2025 18:42:45 +0800
Message-Id: <20250521104247.6595-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8375 of everest-semi.


Zhang Yi (2):
  ASoC: dt-bindings: Add Everest ES8375 audio CODEC
  ASoC: codecs: add support for ES8375

 .../bindings/sound/everest,es8375.yaml        |  62 ++
 sound/soc/codecs/Kconfig                      |   5 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8375.c                     | 845 ++++++++++++++++++
 sound/soc/codecs/es8375.h                     | 118 +++
 5 files changed, 1032 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8375.yaml
 create mode 100644 sound/soc/codecs/es8375.c
 create mode 100644 sound/soc/codecs/es8375.h

-- 
2.17.1


