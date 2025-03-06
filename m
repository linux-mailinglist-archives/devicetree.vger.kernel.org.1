Return-Path: <devicetree+bounces-154752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF754A545F9
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09AAC188E45D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 09:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7677A208992;
	Thu,  6 Mar 2025 09:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b="Af/Yq6H1"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0282080ED
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 09:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741252307; cv=none; b=KDynqNknWnAvVT+9FgZB7D/R4VOeKVAZYni8Qfxmj4qrsI59jRlbWq3hzUEhsA+yjnSyBSmUsRGeTfJ85ugqqgUz5c7NqIUOLPUJ85g0U9KqDJ6YOx0m5TIwO+qwURw1WpVhmVHyuE6LUK2fnPnGxm/FFJ8CdU9hre0QgTB7fq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741252307; c=relaxed/simple;
	bh=2ycuyWx84X+aaiBJSLdUwQq66y+9URS3QM3oPMQ/Bnw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jYrZXy0QHxia3wqATtYwmrGG+Wb2ke5Awc6NJN+4xbmgJ/UEY/aLd8K5Br0T0SwzB3TuNIRGgXODiPeL7WgskTfiIp19dTGgmygYEkuzX+y/J32eURmbgGKEIe/QzqLvw2zYXCWv9qsNgG88UoM6B3MeUZ5dm4aspsK98zwzYE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b=Af/Yq6H1; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 2025030609113475e3875540db5d8308
        for <devicetree@vger.kernel.org>;
        Thu, 06 Mar 2025 10:11:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alessandro.zini@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=551wx5oTEqfZyjay5LJbEZtGjB9vzpZh1VRl3hD8kLg=;
 b=Af/Yq6H1MQjdSf52ulEnsWhK6tfSzLeb/Lz3pfIb8I4aRvtYEdIVh2CglTXnHtnS7QKRXZ
 AsXlbKT7ImaVTPTT/2H8rUJcXLpNdtCU6gtJ931JJgdkXUx4vZ2fh7bBEG65d47/+MGWi4yY
 MSe0whRMPE8sG0XVYxKYkIIbcgsZSmTOlAKlX4fgJGnovt96hLCJsBLvRh7cJRbmhiHzV0T7
 zzdFNZ73Fe4XSSbN/5/P3euVbusEtY79E5D0OVanGv4/K4Z4Sakf5i70W0HW2lbXHBQUkPXV
 NhRKDE8zIhgbJH3hxQ3bRPhaNIpGhrI50eJqX3CN1iLgSnCBd/ByGt5g==;
From: "A. Zini" <alessandro.zini@siemens.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Andrej Picej <andrej.picej@norik.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Alessandro Zini <alessandro.zini@siemens.com>
Subject: [PATCH 0/2] Introduce h/vsync-disable properties for ti-sn65dsi83
Date: Thu,  6 Mar 2025 10:11:31 +0100
Message-ID: <20250306091133.46888-1-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1327013:519-21489:flowmailer

From: Alessandro Zini <alessandro.zini@siemens.com>

This patch series adds support for disabling the generation of h/vsync signals
on the ti-sn65dsi83 bridge.

This is required on some panels which are driven in DE-only mode but do not
ignore sync packets, and instead require them to be low-voltage level or ground.

A discussion (1) on TI's E2E forum confirms that this may be required for some
panels.

(1) https://e2e.ti.com/support/interface-group/interface/f/interface-forum/1475734/sn65dsi84-disable-hsync-and-vsync

Alessandro Zini (2):
  dt-bindings: drm/bridge: ti-sn65dsi83: add h/vsync-disable bindings
  drm/bridge: ti-sn65dsi83: add h/vsync-disable support

 .../bindings/display/bridge/ti,sn65dsi83.yaml    | 12 ++++++++++++
 drivers/gpu/drm/bridge/ti-sn65dsi83.c            | 16 ++++++++++++++--
 2 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.48.1

