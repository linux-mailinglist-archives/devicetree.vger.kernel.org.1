Return-Path: <devicetree+bounces-292776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sL3TIh0A+WmY4AIAu9opvQ
	(envelope-from <devicetree+bounces-292776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 22:22:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD154C3878
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 22:22:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 153AC3042C5F
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 20:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF273DA7E3;
	Mon,  4 May 2026 20:21:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06C2D593E
	for <devicetree@vger.kernel.org>; Mon,  4 May 2026 20:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777926114; cv=none; b=Mwli1dYQ2B1f0BKgMS12yDwM3pVj5PUP5ZA9r2cCjktimiYG9ljJXbRe4WsqJaCwAvlUBj1GndL6cCHf+qAYPvYQaXbF9dqlVAo5zYqVN+u082qxrq0/lSINIiq/H6CIK5AxO/8qL5kBuPeX3QTkCPI51e4RKPH0xXOVn7JiSrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777926114; c=relaxed/simple;
	bh=kimmPxIEbJIWotQ/PJtFA8ikdt7CwSJsNgiqfEh15b8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NWGvqdkFPAgueKtfliThzAS7bfz/xys+7dKiXOs9894X0fGEGcuN9aKrGSS3UlVMbGM6ldswvX5HHZaZvOmjRZwhDMivI6dVLwrmZJbKYLYtt43IVO3/r1+7iXyjiyJ4vOUoI+KiqaU6SN1+q/hREzA8SVVmkO4wKt3dpnpDHC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1wJznX-0007WV-HU; Mon, 04 May 2026 22:21:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 May 2026 22:21:43 +0200
Subject: [PATCH 3/4] ARM: dts: imx6sx: remove LDB reg property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260504-v7-1-topic-ldb-fixes-v1-3-0125d937ff7f@pengutronix.de>
References: <20260504-v7-1-topic-ldb-fixes-v1-0-0125d937ff7f@pengutronix.de>
In-Reply-To: <20260504-v7-1-topic-ldb-fixes-v1-0-0125d937ff7f@pengutronix.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, laurentiu.palcu@oss.nxp.com, 
 victor.liu@nxp.com
Cc: kernel@pengutronix.de, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: 1AD154C3878
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,denx.de,nxp.com,pengutronix.de,oss.nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292776-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.18:email,pengutronix.de:mid,pengutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,20e4000:email]

The iomux-gpr syscon device has a very loose register definition. Many
registers have a multi purpose, e.g. one register controlls the WDG
behavior and the CSI2 mux settings. This would lead into multiple
sub-devices which use the same 'reg' which is wrong.

Instead of specifying the 'reg' in the OF each sub-device driver needs
to handle the correct bits on their own. Therefore drop the 'reg'
porperty from the bridge node as well as the @18 register suffix.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
index aefae5a3a6bebd43c67070376196db559d0d20cb..4b974b54195950e8bd2ef6d590f3530b2a43106e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
@@ -850,9 +850,8 @@ gpr: syscon@20e4000 {
 				#size-cells = <1>;
 				reg = <0x020e4000 0x4000>;
 
-				lvds_bridge: bridge@18 {
+				lvds_bridge: bridge {
 					compatible = "fsl,imx6sx-ldb";
-					reg = <0x18 0x4>;
 					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
 					clock-names = "ldb";
 					status = "disabled";

-- 
2.47.3


