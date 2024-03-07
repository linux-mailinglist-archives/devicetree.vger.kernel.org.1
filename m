Return-Path: <devicetree+bounces-48966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEEC87478A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 06:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71B081C21703
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 05:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A9C17BB5;
	Thu,  7 Mar 2024 05:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-63.sinamail.sina.com.cn (mail78-63.sinamail.sina.com.cn [219.142.78.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DDD13FF5
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 05:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709788354; cv=none; b=L5iaNxpLIMTd3XibtoSkiE/I1y8HKCRl1hEYcFham+I1/u7wL7cSilTgklJCSu2phvFBznPK4TQ66keo85WVJScQcZFJWh6KNLAtllTBhJqWGJImKHlNGBgB/yZozorltS5PVPNg37kWA6sYs736NrQ+asNb3P2hmxJW+jDDQiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709788354; c=relaxed/simple;
	bh=h/K6J3J6NVa8QNKbOCikSU5cRzzRT4i487NnMKL31hU=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Fl3cYGXlCrrZNRtGwOL/jCD9pIgZ/lJUM8SOhY1MgwNuvOYVDld7d+FDBhQhtQWwfAs9enh0tVrIUhtxdWM/oTMd7iFCaf+goeELFdtFV7L3e357MJRGaMq1jpsSC5BRvcO+pRnikA4HWnqjB7ERkMOQcYbd1mJ+IwSZWkkSpqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.239) with ESMTP
	id 65E94CB900013490; Thu, 7 Mar 2024 13:12:26 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 6672B29C3930461E99E44569A3BDEAF9
X-SMAIL-UIID: 6672B29C3930461E99E44569A3BDEAF9-20240307-131226
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v2 0/2] ASoC: codecs: ES8326: change members of private structure
Date: Thu,  7 Mar 2024 13:12:20 +0800
Message-Id: <20240307051222.24010-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

We found that using 0x45 as the default value for interrupt-clk 
would cause a headset detection error.So we took 0x00 as the default 
value for interrupt-clk and passed the test.
We removed mic1-src and mic2-src, which were not used.

Zhang Yi (2):
  ASoC: codecs: ES8326: Changing members of private structure
  ASoC: codecs: ES8326: change support for ES8326

 .../bindings/sound/everest,es8326.yaml         |  8 ++++----
 sound/soc/codecs/es8326.c                      | 18 +-----------------
 2 files changed, 5 insertions(+), 21 deletions(-)

-- 
2.17.1


