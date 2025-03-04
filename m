Return-Path: <devicetree+bounces-153607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C448FA4D3D8
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 07:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38FEA3AE583
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 06:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67401F540F;
	Tue,  4 Mar 2025 06:28:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-66.sinamail.sina.com.cn (mail78-66.sinamail.sina.com.cn [219.142.78.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA681F4E2F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 06:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741069704; cv=none; b=trRJAgNs3MzLvWax42DTvAIykGACP7ry1g3zfVKlv7IxpJ0eIZNrDq7bzpmZCuNhIvFUrkleWEV6cQPyJuxncJp+fwih2ih6rR5/ryvPnHTI87kPhseCoLRX2bTu5Prq4Ydfh9Csvh2IyABx+rBFbHICt2AJYOt6KtsydWXGzng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741069704; c=relaxed/simple;
	bh=p7UcvrmLrFb5QFopWcUy3pdx7/ZuRSmSns7L/OEbAPA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=IpMVaOYozfFth+QGordXPMD3APOwcFs6qvKzn+oK7tmEQN4dkpeMFavNOjzWq9MESkHiDcWSu/YVAgkGyOiiYzZayEJWuXTsIe4kgJdbDF7BtGCDdnD8ryCkwmxFABSzwQGNGUrcGApNBW7KRCJtrJY2Vfvmg+rXM4Vo8Y9Nw54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.32) with ESMTP
	id 67C69D5A00005F29; Tue, 4 Mar 2025 14:27:40 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: CD134A4D078D477EA9B6F133B72FC3D5
X-SMAIL-UIID: CD134A4D078D477EA9B6F133B72FC3D5-20250304-142740
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v3 0/2] ASoC: codecs: add support for ES8389
Date: Tue,  4 Mar 2025 14:27:35 +0800
Message-Id: <20250304062737.51701-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The driver is for codec ES8389 of everest-semi.

change in v3:
- Added reg_format at everest,es8389.yaml

Zhang Yi (2):
  ASoC: codecs: add support for ES8389
  ASoC: dt-bindings: Add Everest ES8389 audio CODEC

 .../bindings/sound/everest,es8389.yaml        |  82 ++
 sound/soc/codecs/Kconfig                      |   6 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 971 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 139 +++
 5 files changed, 1199 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


