Return-Path: <devicetree+bounces-151421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B69ECA45C2C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B75E4174A69
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8713F2459D4;
	Wed, 26 Feb 2025 10:52:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-60.sinamail.sina.com.cn (mail78-60.sinamail.sina.com.cn [219.142.78.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C551E1E06
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 10:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740567146; cv=none; b=UOALXNRm2ggCNyMsSNjmcYHQ/0kzO83jwRA8L7Fuvg80Ih5ZMIirHD4HtHg8V/J5tGLbkQb0hO+OfyIgrIo8v7p3csnTDfWUDUJ5GqI6pd45JaRtt1DBz+DeHCWep8KK+quglyDPL7mKzy7Pz06QH3S1aRYAvuCOEK6k1KYdBlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740567146; c=relaxed/simple;
	bh=ghC9vqNPJzkei9Zug19J2vWknOTg5ZDVCIur60SjExw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=eUcRW6nd4OqGD3UT32E/e/BM6qFLD8vPCAFJKgD9eYrdEEYmjgDu+MOuAONZuSoQYzI3ZOldUZM9JuD/XS226Vi6HASdESazQZ5HKIfkqruwQnMVuypfeZti6ViEiy2014nddwucsiOS3PVbdFLSFaPIpuFpMJMcasYZakraUx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67BEF1CF00003A73; Wed, 26 Feb 2025 18:49:52 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 27DDB0DFC561489B80BEEB61A4BB4788
X-SMAIL-UIID: 27DDB0DFC561489B80BEEB61A4BB4788-20250226-184952
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH 0/2] ASoC: codecs: add ES8389 codec driver
Date: Wed, 26 Feb 2025 18:49:47 +0800
Message-Id: <20250226104949.16303-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8389 of everest-semi.

Zhang Yi (2):
  ASoC: codecs: add support for ES8389
  ASoC: dt-bindings: Add Everest ES8389 audio CODEC

 .../bindings/sound/everest,es8389.txt         |  68 ++
 sound/soc/codecs/Kconfig                      |   5 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 977 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 139 +++
 5 files changed, 1191 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.txt
 create mode 100755 sound/soc/codecs/es8389.c
 create mode 100755 sound/soc/codecs/es8389.h

-- 
2.17.1


