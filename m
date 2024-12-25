Return-Path: <devicetree+bounces-133928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E74C9FC4CC
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 11:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F6607A176D
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D218B1AD3E5;
	Wed, 25 Dec 2024 10:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Ygryc+bE"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B28C19007E;
	Wed, 25 Dec 2024 10:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735123115; cv=none; b=M+TVUDwGu2nus9BY+LIPicebqbUe6VSQR44Q1nC0KRcwYQiUrCuOX1ooYq+HMVtNnrJpz2zADNSFwZTKHdztTKrmEg1at+JFq5SRGdoVfVbRNTQRqYWZXKwn0xCtNpqvy1QZa5GaG62vjogGz2bEnxQ9z/Gc6GXU+y7MC56/SY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735123115; c=relaxed/simple;
	bh=1BTq0wiOuYJOLSgaHuC9TTvfRo95oXIB80+2BwP4QLg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LDy6Y8Rjd7j+DCuAmbgASmXzi+Z6UczpnI/6irGBQfIDP663Nu+kIntVeVJHgyS5eaUvxolK53kVtZNMdYri7F3U5WRbnnNev1c+EQ90aWGxq+89KEVRF6hjKfuAufkrs5CP2DMEMUDN+1kG2LHLx+rUkcE+DDNZtDtQIIaKvb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Ygryc+bE; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=bpcK5
	Qjhe/tAh2DN8xdikTX3IMR0Jsw2fHaDKM8SIj4=; b=Ygryc+bElwnp9afz2vtH+
	K/rojF15MCT8NvJP23Esa1af7s5AsNf0MpJ0rCL64g1vaRHzFV0vWKgypgIRzJKk
	VIbswHTwIz++ACYkXyRYqRu94786OMUt4CH/3sAMY2ABqXdIcXvgrWkjC3R/ghjY
	/dVf/wXX3cgWRVSDx31RM8=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgCnfIF24GtnkqkWCg--.3201S2;
	Wed, 25 Dec 2024 18:37:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: cristian.ciocaltea@collabora.com,
	krzk+dt@kernel.org,
	mripard@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 0/3] Add HDMI support for rk3576
Date: Wed, 25 Dec 2024 18:37:28 +0800
Message-ID: <20241225103741.364597-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PygvCgCnfIF24GtnkqkWCg--.3201S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF4UKr13twb_yoWxKFX_Ka
	4fW345uw18u3WYyasrtw4Iga93Jay2gFWrGF4jgFnrXFWkJr48Xrn3C3yYqa4UZF1Yyrnr
	JF4FqFy8CFZxZjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1ZYFtUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw7AXmdr1DmOeAADs3

From: Andy Yan <andy.yan@rock-chips.com>


RK3576 HDMI TX Controller is very similar to that of RK3588, but with
some control bits for IO and interrupts status scattered across different
GRF.

PATCH 1/3 is add platform ctrl callback for IO setting and interrupts
status handing.
PATCH 2/3 ~ 3/3 are add support for rk3576


Andy Yan (3):
  drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
  dt-bindings: display: rockchip: Add support for RK3576 HDMI TX
    Controller
  drm/rockchip: Add basic RK3576 HDMI output support

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 224 +++++++++++++++---
 2 files changed, 196 insertions(+), 29 deletions(-)

-- 
2.34.1


