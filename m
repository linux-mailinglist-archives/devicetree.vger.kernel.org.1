Return-Path: <devicetree+bounces-153785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 771EFA4DCEA
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4AEA17689D
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95F61FECA5;
	Tue,  4 Mar 2025 11:48:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-39.sinamail.sina.com.cn (mail78-39.sinamail.sina.com.cn [219.142.78.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDDC1EE03B
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741088918; cv=none; b=pbMleuU2EEcYHE7dIRI/g65CMrMivQ+0hJuxO6Z9OBZ40d6GfzFVJP51Gp1N4dI9JYrdpn4GWLrldJwqFO6RxJEyDC0vQifdvt71j9j7Vgt4m4/S8s3uXzVymx7St6FUTG6IMUNumq7ylPMzx61D4mJMJDDz2qBOs/uwkPTCwZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741088918; c=relaxed/simple;
	bh=TcIHE1PQ2Gqkj0hPPhPlN5E1DbAckCjQ8OJImfs6nIs=;
	h=From:To:Cc:Subject:Date:Message-Id; b=e45xqADyLCN2lFD1dTZ+nKoF7axQFwJOWo5G0rp1dp/ibgFXHKhndMF6nBFbWjrKoVmZQ2ApDJqFRErL7gIHtt9w8++00v1LdAIVbsO2dhL/LeEdRQRwkDhg2sDgp3Hpi8rhAfGhDL5hyBL5fnPZ/IjPhNTczssgjJU4Ju87/FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.31) with ESMTP
	id 67C6E8690000342A; Tue, 4 Mar 2025 19:47:54 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 30C649CB614A4ECDB98AC46A2990247D
X-SMAIL-UIID: 30C649CB614A4ECDB98AC46A2990247D-20250304-194754
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
Subject: [PATCH v4 0/2] ASoC: codecs: add support for ES8389
Date: Tue,  4 Mar 2025 19:47:49 +0800
Message-Id: <20250304114751.54635-1-zhangyi@everest-semi.com>
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

 .../bindings/sound/everest,es8389.yaml        |  83 ++
 sound/soc/codecs/Kconfig                      |   6 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es8389.c                     | 961 ++++++++++++++++++
 sound/soc/codecs/es8389.h                     | 139 +++
 5 files changed, 1190 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
 create mode 100644 sound/soc/codecs/es8389.c
 create mode 100644 sound/soc/codecs/es8389.h

-- 
2.17.1


