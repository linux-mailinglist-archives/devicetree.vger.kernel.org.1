Return-Path: <devicetree+bounces-251418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A3CF2C3E
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52C113062E27
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C185D32C937;
	Mon,  5 Jan 2026 09:16:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-82.sina.com.cn (smtp134-82.sina.com.cn [180.149.134.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EAE30E83F
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604601; cv=none; b=Z3L8J6h33PzGW0vmYv4sqxDOKAbuE5HEQ16SLh7gTCmLVlE/9r/0MydUi7kWbV/CxLlYF2VBSB3NF1uZsrXYgvaU5uYsMFO3eS6/eHri1QkccOT5wasMrrLHkQUuv89FrKkRYanDbhztJTQE8vglcC3cPwKoAvHttJ2lDMpI/R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604601; c=relaxed/simple;
	bh=7504Prx6MabqX4khxVDArXtlv5QqHMrycEPtlpv/YPM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=FhXDGhhbNl27GMm0kyL+kX0FhIYLwqoC2Jqy3wTlUaD98MLf9Kphl7/5F98V0MblX8XfpYI4a9Olzv4yFNcBBZTZE1cwmShAdymP3mZQkEASjyTY6DM8TWvlNhdkWF89btLQZcOMJKutFFMkiHYXclXWrkgUNT/Mi5t7ghmOqyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.154.36.64])
	by sina.net (10.185.250.29) with ESMTP
	id 695B814B000044A1; Mon, 5 Jan 2026 17:15:56 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 9395A4DC23404802A895AD05B82B1210
X-SMAIL-UIID: 9395A4DC23404802A895AD05B82B1210-20260105-171556
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
Subject: [PATCH 0/5] ASoC: ES8389: Add some members and update configuration
Date: Mon,  5 Jan 2026 17:15:43 +0800
Message-Id: <20260105091548.4196-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

To improve the codec's performance, add members related to power and version,
and modify the configuration.

Zhang Yi (5):
  ASoC: dt-bindings: ES8389: Add property about power supply
  ASoC: codecs: ES8389: Add members related to power supply
  ASoC: codecs: ES8389: Adjust wakeup configuration
  ASoC: codecs: ES8389: Add members about the version
  ASoC: codecs: ES8389: Update clock configuration

 .../bindings/sound/everest,es8389.yaml        |  12 +
 sound/soc/codecs/es8389.c                     | 246 ++++++++++++------
 sound/soc/codecs/es8389.h                     |   8 +
 3 files changed, 180 insertions(+), 86 deletions(-)

-- 
2.17.1


