Return-Path: <devicetree+bounces-243463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6702BC97D63
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:23:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1AC103424A6
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDED52C08AD;
	Mon,  1 Dec 2025 14:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="oyz6/aIu"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-211.mail.qq.com (out162-62-58-211.mail.qq.com [162.62.58.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55AF314D2F;
	Mon,  1 Dec 2025 14:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598980; cv=none; b=DEoPZzqyN++n8rccHhympTtykWf2F7B48vMmVMi5g9rggRklc9hk9y8mz2UZ1X7m+2hvdRuLV+cbYovEEpTEpnVS/otptDdZsA38P4Y7gm2L29rS5ZdIaRDHjtTCmVWzAnlxeNRAulvviHy0d2OqcMlcug3SBHz0sD/1AWckfJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598980; c=relaxed/simple;
	bh=0aem1gN29wne2dKRIviJXo+EE8pjoqiXnB3zRCmbW2A=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=OKzhbFrHPO1QXOWdiV+bc2isQJA/Ek+8HQlHjayWQDSTz6R/YHbU8L3XrehvI1fDXHLNlp7hCqNbjDj86BkNUcjO+P9NutuTbhGqXHljlVs2+8RGiEl8xdkKJ3L+j93+P4ZjWH+0/tMzgRXJZY+mA4E9IpCC+S9AMQ5G2lis4ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=oyz6/aIu; arc=none smtp.client-ip=162.62.58.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764598973;
	bh=NDRj6dw+nV9Wzv1PG5m4CN+xIzH0VK/FEarvy6FM5GI=;
	h=From:To:Cc:Subject:Date;
	b=oyz6/aIuvq/6IPu6YB3gtNbJCn1H/T47uhMAyW4XWzTj6O0Za3tEg0HxwJf+2QDv8
	 kqpvE8DwtE2uaX9XsOXyys/FGNJeL3M4FR/ztjNJbXxo9uDEt2Flhv3b/W/0mWRJR8
	 x+695qleMQwE3Qb+6bBwjvou7Tx8e/cmCqh++Qyw=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
	id 4E009A2B; Mon, 01 Dec 2025 22:19:32 +0800
X-QQ-mid: xmsmtpt1764598772tkxq52403
Message-ID: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
X-QQ-XMAILINFO: OOO9dHjlsLs7i235ZE2+oOOr+ei3ym18iyNJDvzURHMivU20CRcxf2RKJJjEDj
	 Vyx9pl9LxJGO7y0L6/YpPu72fbxXejz7izGOd2HxeEujeNMsF3eltuu7dplURQjX8W28+mSZZtoB
	 7m0ka+XNiOepvKimzKRR+2pzF0U+4YgTPXuj9HyKSXwGL2q85ftI9f9+TuXDHOLNn62ibjkL9zVU
	 9G6X3JwKi7qNl9bhFBskTsP7YR2iKJLWG0SIxkYYc37+cFS2aQr0ras00/TZQua3m/b5UVggFQ6S
	 U2OdKJZPQz5klH4KNEsqlQtnOaF/XF59Qb1PaXbRy7HStYUHPd70pwcLQKfPfuYO+Tgmyo88MZwB
	 nApeUvOQRQvGjalrkxpNA8ZTiHDRQ1bBpuT8jq/yr1AJFjNbmG+YCX+4t4AEtewx3xfP0B4iNIWD
	 SzOOBt8/+2eVNEO195WIDyETaF+s2EaULIcbg90+qYlt8eIykam2CYpaXNnqWbpLE84CVAi3e2CC
	 6gNjpYqf4qilCELaiAFpJZJldD9SQWjDhrWPIpjE9hdQx5amEV/1gp+7YFJojaiFPFDJB4rwrxNS
	 kjqvfE2lkENiZj2OyyK0raGuI1JLaDuBUbKAIDKDn448A+g9Yzp/K+iIHlynU7yXOAmkwtYXuIJL
	 FK2lMXQPuB6itiz6grbSUaCx8mD/3ooWOdBkE2QicXwSS199SC4WYuMx+cWtqLwTcmZLYa8W9X9t
	 ZIHOdoIuNv35GNYzieqOS9D+7eDhEM9xdrW7tSoFSWBLg+hjlN5w8TlBOvbF7KW5jnOeBSQy22kp
	 +lkShiHRWDC+6bRpns+C5UTdCS6JqX4kvlugE8akgf+b0tE4Fj6uisj5E6mUHBtA281W3buAQN8S
	 0kpKmi7yu6GJ3e5cl48j9hps9EGl+MXfIWy7AFaKRLf77mhh1HnGuVPQLOdd4opX5BVNddBAAVKH
	 wWpUaL2ohTTOEzf08R/FCOHgcMICvjhanpZtlpoYag8bJVvgQUYKlr86EstErAXeMBfboGJAmlu7
	 GvsFsXUU+AgeS70pho1Te1paPB1Ow4jWiHtM13gN+NhrCt5wv6BXDZBLRW+RusG+Fr+xZIGz0Twu
	 WWWPKLKmzcVDIk8fY=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH RESEND 0/2] Add HannStar HSD156JUW2 panel support
Date: Mon,  1 Dec 2025 22:19:17 +0800
X-OQ-MSGID: <20251201141917.31108-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The HannStar HSD156JUW2 panel is a 15.6" FHD (1920x1080) LCD-TFT LVDS
panel. Add a binding and a panel entry under panel-simple.c.

Renjun Wang (2):
  dt-bindings: display: simple: Add HannStar HSD156JUW2
  drm/panel: simple: Add HannStar HSD156JUW2

 .../bindings/display/panel/panel-simple.yaml  |  2 ++
 drivers/gpu/drm/panel/panel-simple.c          | 28 +++++++++++++++++++
 2 files changed, 30 insertions(+)


base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
-- 
2.39.5


