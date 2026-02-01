Return-Path: <devicetree+bounces-261541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P5aByAMf2lziwIAu9opvQ
	(envelope-from <devicetree+bounces-261541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:17:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFE3C5391
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:17:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB9DF301185A
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 08:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA31308F03;
	Sun,  1 Feb 2026 08:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="YowDe72V"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BAB2E7F22;
	Sun,  1 Feb 2026 08:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933751; cv=none; b=pq+9WOflVqlf4vclUZt6jcHB68jmFM9/kz5LpepDmCZ/PMIhLg/NO+fPS5HCXZeIAZWb4YMFkAUDSN4EsJ0UyzgbWkxxIi9zkd/F840ftEZ0eVq9djVrQsuTqgZQztEudabR9PYKTEzRulqe9FenryY94P42Oesl4gSj01xAN7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933751; c=relaxed/simple;
	bh=IQ3VBUyHfRI7AVat1eAyS2GBBUMGItL1ljmcK0zzFgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pnwmjQyn6UHxvtxR6Qg4SdZi9U2befFg6W+bW8gEEY7nNd3xuGiKHbGK6tql5IbJCKdH3LwbQ6+82zceRMqxUUW+JoWG9fpqR5sX/Ng2MPpwOO+MplANTWL4dT9jd1qc/M5MKZevnc75yU2lcyIVJX9Tz+h2SM1F5h7qygwIyRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=YowDe72V; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Wz
	wM2ArMD64npYqUjIHiP47mOx5vlp8sCjNTdzEO+7c=; b=YowDe72VbC0QRdtzls
	NIU16lU7EazsP1tVL4QdW3Ytf0V+Dq6+cqV/FrxewBw7Rv8ux4ZQ8TYm4OjZjfUV
	NyGRBELUKQG/qmMV86G7mlFdX6i9HmvOfO/6AUhFrAGfLt6kZgwL1LLLrm4/hUiA
	KDGngVpxpewz4f1yABpFnFyrQ=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S7;
	Sun, 01 Feb 2026 16:13:53 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: alchark@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	airlied@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	nicolas.frattaroli@collabora.com,
	robh@kernel.org,
	rfoss@kernel.org,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add DisplayPort dt node for rk3576
Date: Sun,  1 Feb 2026 16:13:31 +0800
Message-ID: <20260201081338.407999-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260201081338.407999-1-andyshrk@163.com>
References: <20260201081338.407999-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3Hz40C39pmxGTKQ--.55310S7
X-Coremail-Antispam: 1Uf129KBjvJXoW7uw4fZFWkAryfAryDZFW5Jrb_yoW8Wr13p3
	ZrC395X3y8Wr12qwnxt34vvrZ5Jan5JFs0kr17JFyUtr4Sqry7Kr13Krn3A34DJr47Z3ya
	vFsavry7KFs0y3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jqa0PUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxQENa2l-C0HQSgAA3k
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261541-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	DKIM_TRACE(0.00)[163.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,rock-chips.com:email,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,27ed0000:email,27e40000:email]
X-Rspamd-Queue-Id: 6DFE3C5391
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort on rk3576 is compliant with DisplayPort Specification
Version 1.4 with MST support, and share the USBDP combo PHY with USB 3.1
OTG0 controller.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a86fc6b4e8c4..a153c3976cb3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
 			};
 		};
 
+		dp: dp@27e40000 {
+			compatible = "rockchip,rk3576-dp";
+			reg = <0x0 0x27e40000 0x0 0x30000>;
+			interrupts = <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>;
+			assigned-clocks = <&cru CLK_AUX16MHZ_0>;
+			assigned-clock-rates = <16000000>;
+			clocks = <&cru PCLK_DP0>, <&cru CLK_AUX16MHZ_0>,
+				 <&cru ACLK_DP0>;
+			clock-names = "apb", "aux", "hdcp";
+			resets = <&cru SRST_DP0>;
+			phys = <&usbdp_phy PHY_TYPE_DP>;
+			power-domains = <&power RK3576_PD_VO1>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dp0_in: port@0 {
+					reg = <0>;
+				};
+
+				dp0_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		sai7: sai@27ed0000 {
 			compatible = "rockchip,rk3576-sai";
 			reg = <0x0 0x27ed0000 0x0 0x1000>;
-- 
2.43.0


