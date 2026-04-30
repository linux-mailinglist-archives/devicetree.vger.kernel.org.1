Return-Path: <devicetree+bounces-292035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BMQIsnV82mM7wEAu9opvQ
	(envelope-from <devicetree+bounces-292035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 00:20:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1624A881F
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 00:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47060300B1B5
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 22:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCDA3B19C9;
	Thu, 30 Apr 2026 22:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="exk7D8tz"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3537E287257;
	Thu, 30 Apr 2026 22:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777587641; cv=none; b=OpyoFKvmeQgOKK+zUb69CU/YzCzP/3rD2/dOrhva+KEx4fT+zTKsxxFOEPDEiLY9/9wchc5lTY6EdmYV2lQDV32dc6Oa9K41E/FjhWMpk5en8T0zvKaWSyMS1n2Xayc1eYLUpZrLWqNRuEYCzcjX6yQjxQZodUXb34Ddh5KhqsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777587641; c=relaxed/simple;
	bh=cpcF5zUbexmKNtAoNveJG8/W7/tWjI3iG9vDWZ5yK84=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L5Ftc0z7OTyOl4E0PeKzrIDzXilpfB2r1d/Rzztlf57wRuno55APctRMPEU2HbJqa+9pi6l6f81Y6z9hTFgFP+XL6HUzDbWnXhG7bPGYBuvKls8zWLsEzaWM+uAhMWOdbvtmZ6MybEs1D2yT1aqv+C6C5USMxzPT7D3YAQ9XPLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=exk7D8tz; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777587637;
	bh=cpcF5zUbexmKNtAoNveJG8/W7/tWjI3iG9vDWZ5yK84=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=exk7D8tzF3LNnFdk3smrtotA/j11atwaTApdGB8UJvuFQR53AbKn3LhQfEcK1ZHjc
	 y6k61hJerZ9sNtdTvijUX9/KcXdS4njhUZmzqxnhLQdWW/Kzz3Gl1erCD0CC4kwFjf
	 WwtCp/7iwZ/5rV2jjEVWfI+JOBJhAVTxWLQGtDWnDfQa9HFpCmjI6hftkpFBhVeAlL
	 BZgq86PaWvZEoki7ORLgCy+3NTSAbtxHmnt3tJASsbyLOZG47GfDCysEXWCVohwrOZ
	 Cgabh1P/Rwp2Efs8H5doqkWmG3Ar8bMksyNyQzv0UPudMszQjUPUEuIUCjostfFdoR
	 8VB6DqST9x1RA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5E6CA17E12E5;
	Fri,  1 May 2026 00:20:37 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 10AC048002F; Fri, 01 May 2026 00:20:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 01 May 2026 00:20:29 +0200
Subject: [PATCH v2 02/12] drm/rockchip: dw_dp: Release core resources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260501-synopsys-dw-dp-improvements-v2-2-d7e7f6bac77f@collabora.com>
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 linux-arm-kernel@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3483;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=vNsF0Md05O3s39Img/mjC1c3hq74IIYjs7Fbd6owcc0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnz1bRJMtB3Lu8wN5zXTxQapdDYqzOvfzlDY
 hP1cPoCv/XrlokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp89W0AAoJENju1/PI
 O/qaMRIP/i1c299tP1z4DDXkqJ91EmVeJ84znCoY5fMZz0W8jplMsHWDE8bVHyR42RP22IG67+4
 QYPbP2CGfyD+x6Qj3mh1DWpqnXWR0uJHePi4iAkMu4qNJbjxwM5Ub8i8ANoJW48p9+TpUiuKVRF
 J9j5NFREtmqNs+hYBoIAmej5xrflYPm6DbIFmyZo5BWcJToZctOWsIImlLfsT094klpaSwrtDzb
 7Fj12udVSjr2dvHeAOGf85sRVd4Asf+l5H/v+tZg78+Nfnc6XldRTVTRq/m/hleko34hHmtZLXp
 vhV/TH7jRNbKs0UPjgSA2wD4YNEu6XinaHeoQFKD6bIRwWnzuSngt4k353ap1jABD/9VJVTlQsI
 ExzPT2VVcRleNh6km1MVwO8yGOn+yCeP4SyIsEtoOMkhlFF1tHBlzxcb2+FJYe34ZYxiFn+xWOm
 NO0hZsMcPzxLkM5ncA9rMK3NSEPATelRi4r5cKdB7KdHuq6C/e6k1SNIYvkKfk+vDfSCFoEXh3F
 BV0BSSWG0zV60u9VrPCX4Ize2Ar9NBa2VR418tHd6bUp/4J5M/JTbbY3U7/uzVKg+X04E7ZsYM6
 PvRzN5B9q4ovRjEtQHprZr6xLVmMDYvieOAcfmpqI+N7x0PpjAvJHafwtFO2qjWY9QAliYOxD68
 1zkJKU9yJZdrVdUrv3sQynA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Queue-Id: 2C1624A881F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292035-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,oss.qualcomm.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Core resources such as the DisplayPort AUX channel get initialized and
registered during dw_dp_bind(), but are never unregistered, which may
lead to memory leaks and/or use-after-free:

[  224.661371] BUG: KASAN: slab-use-after-free in device_is_dependent+0xe0/0x2b0
[  224.662015] Read of size 8 at addr ffff00011aee8550 by task modprobe/658
[  224.662612]
[  224.662752] CPU: 7 UID: 0 PID: 658 Comm: modprobe Not tainted 7.0.0-rc2-next-20260305 #14 PREEMPT
[  224.662759] Hardware name: Radxa ROCK 5B (DT)
[  224.662762] Call trace:
[  224.662764]  show_stack+0x20/0x38 (C)
[  224.662772]  dump_stack_lvl+0x6c/0x98
[  224.662777]  print_report+0x160/0x4b8
[  224.662783]  kasan_report+0xb4/0xe0
[  224.662790]  __asan_report_load8_noabort+0x20/0x30
[  224.662796]  device_is_dependent+0xe0/0x2b0
[  224.662802]  device_is_dependent+0x108/0x2b0
[  224.662808]  device_link_add+0x1f8/0x10b0
[  224.662813]  devm_of_phy_get_by_index+0x120/0x200
[  224.662819]  dw_dp_bind+0x34c/0xb10 [dw_dp]
[  224.662830]  dw_dp_rockchip_bind+0x194/0x250 [rockchipdrm]
[  224.662864]  component_bind_all+0x3a8/0x720
[  224.662869]  rockchip_drm_bind+0x120/0x390 [rockchipdrm]
[  224.662899]  try_to_bring_up_aggregate_device+0x76c/0x838
[  224.662904]  component_master_add_with_match+0x1f4/0x230
[  224.662909]  rockchip_drm_platform_probe+0x420/0x538 [rockchipdrm]
[  224.662939]  platform_probe+0xe8/0x168
[  224.662945]  really_probe+0x340/0x828
[  224.662950]  __driver_probe_device+0x2e0/0x350
[  224.662954]  driver_probe_device+0x80/0x140
[  224.662959]  __driver_attach+0x398/0x460
[  224.662964]  bus_for_each_dev+0xe0/0x198
[  224.662968]  driver_attach+0x50/0x68
[  224.662972]  bus_add_driver+0x2a0/0x4c0
[  224.662977]  driver_register+0x294/0x360
[  224.662982]  __platform_driver_register+0x7c/0x98
[  224.662987]  rockchip_drm_init+0xc4/0xff8 [rockchipdrm]

Since a previous commit exported dw_dp_unbind() function in DW DP core
library to take care of the necessary cleanup, use this in the
component's unbind() callback, as well as in its bind() error path.

Fixes: d68ba7bac955 ("drm/rockchip: Add RK3588 DPTX output support")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index a9a8bf43aa1d..150c2da8fee5 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -107,15 +107,26 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 		return PTR_ERR(dp->base);
 
 	connector = drm_bridge_connector_init(drm_dev, encoder);
-	if (IS_ERR(connector))
+	if (IS_ERR(connector)) {
+		dw_dp_unbind(dp->base);
 		return dev_err_probe(dev, PTR_ERR(connector),
 				     "Failed to init bridge connector");
+	}
 
 	return 0;
 }
 
+static void dw_dp_rockchip_unbind(struct device *dev, struct device *master,
+				  void *data)
+{
+	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
+
+	dw_dp_unbind(dp->base);
+}
+
 static const struct component_ops dw_dp_rockchip_component_ops = {
 	.bind = dw_dp_rockchip_bind,
+	.unbind = dw_dp_rockchip_unbind,
 };
 
 static int dw_dp_probe(struct platform_device *pdev)

-- 
2.53.0


