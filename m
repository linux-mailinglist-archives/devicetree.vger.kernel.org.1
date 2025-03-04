Return-Path: <devicetree+bounces-153567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CBBA4D12E
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 02:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36EF0174105
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 01:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF4E13AA27;
	Tue,  4 Mar 2025 01:45:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-88.sina.com.cn (smtp134-88.sina.com.cn [180.149.134.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704D813AA38
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741052741; cv=none; b=SY1HGt3SllASBZjabmMqP2B2lI8IMQhzNeKWYzoWamII0PENuYc4UhsGrz1q6Bc/QtPAtFzs/en2Qqau01RdxM8YiG4uo51p+tc78lT3ZotNMcL93UBzG75QNeQ4EEKTsDrjcJYmVAAaqUHSlaDvczRh7De0WjZpDVOO9ir8zTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741052741; c=relaxed/simple;
	bh=2Wdf/nXJmhdP5txUmExG42pFrA+HefZUHyWrocj+shM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=tRYUHZNf3qtMOIXOIk+j8HQpaY3F/zG0GmU4F77anxSo87aF0WbTaMj9UoMbKgzmv0qqng+bfcknvArBHdlLwlf4ziyaONevyo2Vc7O0ZnDk1PEoN0fAIOSy0W12M7tsMMIksCoFT0oIEqizd8YOZ92lrEFJgyZtUJ6FjaC1Jhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67C65B3200001EC2; Tue, 4 Mar 2025 09:45:22 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 0C7642DBC62D4C5F8681AC6426877103
X-SMAIL-UIID: 0C7642DBC62D4C5F8681AC6426877103-20250304-094522
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v2 0/2] ASoC: codecs: add support for ES8389
Date: Tue,  4 Mar 2025 09:45:18 +0800
Message-Id: <20250304014520.83292-1-zhangyi@everest-semi.com>
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

 .../bindings/sound/everest,es8389.yaml        |  78 ++
 sound/soc/codecs/Kconfig                      |   6 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 971 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 139 +++
 5 files changed, 1195 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


