Return-Path: <devicetree+bounces-155325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 842E9A56381
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 10:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFD2F188C8F6
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6E591FC0E3;
	Fri,  7 Mar 2025 09:19:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-89.sina.com.cn (smtp134-89.sina.com.cn [180.149.134.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6461F4164
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 09:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741339175; cv=none; b=bYCk8kZe+8gHezw2MYiNLsFE+o14qfow1WsHuJvTeUjivrG3NFmaHsdHW+XpwluSUCxehIPccBbKWUo4kSMVh4Dx9jyUO64gBiHZWb/ohZhsfaqqqySyCASnyW9UdyaWMX4DN+GeoIRNoVSViqjO7ypfD6lBLgCyohIF7rgCUZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741339175; c=relaxed/simple;
	bh=iQm8sWQLixhrBmZI1qc0O/vS2hKCX3hKr9bQSgEnE9A=;
	h=From:To:Cc:Subject:Date:Message-Id; b=YyHNsEhHeESKfg4U1TgiepMqJH4A92X+PxeduGl1Te9+OD3jffDbk39FbQCcVZfRBthEC3Y53XSufZlLtENHeO9oOtwkcsIapdCa8fa1qj2dqmjlURQz0COOYbrhrbqrYbVU1DnjO36OHEGjBwyNDhfsN9kieIOZ3xmb7mXCW20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.31) with ESMTP
	id 67CABA1500000B5C; Fri, 7 Mar 2025 17:19:19 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 965132DDB5D9483B94DFB473ECF3E9BB
X-SMAIL-UIID: 965132DDB5D9483B94DFB473ECF3E9BB-20250307-171919
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v5 0/2] ASoC: codecs: add support for ES8389
Date: Fri,  7 Mar 2025 17:19:14 +0800
Message-Id: <20250307091916.100164-1-zhangyi@everest-semi.com>
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

 .../bindings/sound/everest,es8389.yaml        |  50 +
 sound/soc/codecs/Kconfig                      |   6 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 966 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 140 +++
 5 files changed, 1163 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


