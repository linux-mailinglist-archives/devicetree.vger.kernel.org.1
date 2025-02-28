Return-Path: <devicetree+bounces-152535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C06E7A49686
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5567416723A
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 10:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2553E25DAE9;
	Fri, 28 Feb 2025 10:03:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-86.sina.com.cn (smtp134-86.sina.com.cn [180.149.134.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB6A25DAE3
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 10:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740736985; cv=none; b=QwdUL7eN8/BqTQIDI1eZs5E2xYWOgbRP2oDv1TPjDKVOACpyE2EiSOkPS5VFqElbqCWkzKlt1JnpIKd4qoeJa5FD/GXFLCLiA8wJo3VBDvIhP8cOwKZ4+tY8q8SNpXbONc+fqxmR2KTEPLF0w4knti5X/tXxt1+o3E8nYXasjPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740736985; c=relaxed/simple;
	bh=WJ600dmDvIC+s3oNklTRVhHscrZshNPaIv5KB+dawIo=;
	h=From:To:Cc:Subject:Date:Message-Id; b=FNab5x6MyEqN9fOKGypFIo9jOtBADgdSnQtQ0H+fS5U4uAMKOoNDdoMgldQc4J51LdLQTzh+6R0BVDYBLqxFUIAY4GTvxA90rvq2kX0lgv1THBqkpXDn0iKoJv/lI78t1Bje3erEbH+jDO5SgVkn/fwODrL07e7Jfcn1xjhwT+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67C189C6000068CE; Fri, 28 Feb 2025 18:02:48 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 7DF15ACF67644A689D332B8FC5E5015C
X-SMAIL-UIID: 7DF15ACF67644A689D332B8FC5E5015C-20250228-180248
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v1 0/2] ASoC: codecs: add ES8389 codec driver
Date: Fri, 28 Feb 2025 18:02:43 +0800
Message-Id: <20250228100245.127413-1-zhangyi@everest-semi.com>
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

 .../bindings/sound/everest,es8389.yaml        |  98 ++
 sound/soc/codecs/Kconfig                      |   6 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 985 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 139 +++
 5 files changed, 1229 insertions(+), 1 deletion(-)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


