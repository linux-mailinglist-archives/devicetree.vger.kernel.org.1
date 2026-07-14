Return-Path: <devicetree+bounces-326443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4eOYMfuRVmqC9gAAu9opvQ
	(envelope-from <devicetree+bounces-326443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:46:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4293F7586CF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:46:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="jyyx/X+x";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326443-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326443-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5493D32748FB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2F942901D;
	Tue, 14 Jul 2026 19:26:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDE641F376;
	Tue, 14 Jul 2026 19:26:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057180; cv=none; b=VirGBdY4P6KxeXehwIHDSfiNryOHLsYyLCHoSiE+ekH4t8SumNrKmGhaKZ6Fe6ssFlgcM/bb3488mmqNxm1/pWLcTg4HSkJPnVqv5DoJLyiMEpUS5wQAG+osF3RH/mrxsKqC5FMET6K2E+4KtOXmslK8P/6LDSk5VgBXTT5vAKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057180; c=relaxed/simple;
	bh=Ep9LfshdUCiz57F2wiWMQojwm5vywCvStO96ooENntY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NsRSe18LXr0qOxsjGw1Dk22zlZPVQLtA0oXg096ZC2oX+ZEWCCrp9DyXR6uGrW/chKR5EdQ5/h5Oycz6l4JX6UVVSZuoMf1h2l5FS96RPZzB8g4gL9Y5nU4Tnb2vUbtAakiVDp+sS0QteYQH95VD/w9l8EMei5h4gQr8hWBVovg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=jyyx/X+x; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784057169;
	bh=Ep9LfshdUCiz57F2wiWMQojwm5vywCvStO96ooENntY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jyyx/X+xzEP26a9sNzO0v8u0XmMW+BmL+nvPrLpTRdW5UeQnxQT2Bq0K48yJoueCE
	 6nXUU9+Dv0b7svO7r6HniFAUDb/dTo4nYgmq73vbI+payq49kX0zdvI0DwwpE05B/t
	 I7GwbOmkIc3iOm2W0wh9+ZPDA2wR1yXD/f0PlnHhoRt7bCi1E8t3QV79smretDEd2c
	 n0aTsbUshG9/AB6JcY3jwb0b06xchP+AbESgRORLdhgyizbnqp7AsVWqWRQ7ajix9w
	 VE9NKJ8hvK4cu7wlzrchG9AXCJHpmPIYXqoK4/Jmhaz89Qk8XF9fncmEYlHIoVs2/8
	 xZMxy7Jes42rg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9267817E0FD2;
	Tue, 14 Jul 2026 21:26:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DDB25480048; Tue, 14 Jul 2026 21:26:08 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Jul 2026 21:26:12 +0200
Subject: [PATCH v13 11/35] phy: rockchip: usbdp: Support single-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-rockchip-usbdp-cleanup-v13-11-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5347;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=2BkvTykcKr7BvitoKotGuLhZY4DKXqVuMgC2j8XHkSg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpWjU9J+rvUof4Rlzz3U7ACd1RvyOtVppxY4
 b3Jdh3tSQMSTIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqVo1PAAoJENju1/PI
 O/qa9HQP/3XDIp8h8pyVDDXqiD4W/Lh5fJWXiDIoEaRHKhyZ3TXOt+1PdLiH567y9fDAqHmYehT
 mDy8LBPZvs9KHui5ioWrSH2UFqyLhyAWTxieAaA60/oZtNBibcLR8PvUVcvDiT2N1g2l5cjKm6F
 dzOSaSdgEWnuFfbf5WfzhhaWUelWZSQsHAC3NysXXwI7DasfbCc/A/EmhbM3S+TinM4g3dOCne0
 mtK6SM1A5Igj93EyDuCAfHpBw3EAE8nSbtN4EHqQzdc33bRGxQoxpZgQo9JOmYhgexTqzJPW9tk
 u47GynAYX3D9d0cMbK9GbWFc9sRpxzMlL/6o7Y0ndfXiOscwIZAX2/2PNA+9EuHQyCX+NML+HvG
 +uFjtmQHANtspWNOoaBW7t+LcZyXLhIot233nfPHIQiu17v7Ocp1XwGv1fc3r4BHZMJxfA5claG
 BeOz+KnxajHvsTHxIsjtI/QC+MOUSEHGIVPKTHE1Lvxr62qQdefJlSkC39ysZAQF5IEsGvj7R7E
 Vufuc483rlJ+kcEHqko/RIlHPG7C2CNOzkY+sOJh4G6Agrbh6J8dV6fqacgYhavs48L+PQ6veKD
 rfV78GWa2Cb9acyk1P6XB1lW1EVO6sri9cH24Sa3jqag9reD4b/K0P1EgpUZPaBeWwT5fpSXRON
 OeHOkQXpnjDsrTTqXdAswyw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326443-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4293F7586CF

From: Zhang Yubing <yubing.zhang@rock-chips.com>

Implement support for using just a single DisplayPort line.

Signed-off-by: Zhang Yubing <yubing.zhang@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 64 +++++++++++++------------------
 1 file changed, 27 insertions(+), 37 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 7540c897dde1..c4d62b234ea8 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -193,6 +193,7 @@ struct rk_udphy {
 	int id;
 
 	bool dp_in_use;
+	int dp_lanes;
 
 	/* PHY const config */
 	const struct rk_udphy_cfg *cfgs;
@@ -535,6 +536,13 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
  * <0 1>                  dpln0         dpln1       usbrx         usbtx
  * <2 3>                  usbrx         usbtx       dpln0         dpln1
  * ---------------------------------------------------------------------------
+ * if 1 lane for dp function, 2 lane for usb function, define rockchip,dp-lane-mux = <x>;
+ * sample as follow:
+ * ---------------------------------------------------------------------------
+ *                        B11-B10       A2-A3       A11-A10       B2-B3
+ * rockchip,dp-lane-mux   ln0(tx/rx)    ln1(tx)     ln2(tx/rx)    ln3(tx)
+ * <0>                    dpln0         \           usbrx         usbtx
+ * ---------------------------------------------------------------------------
  */
 
 static void rk_udphy_dplane_select(struct rk_udphy *udphy)
@@ -542,18 +550,18 @@ static void rk_udphy_dplane_select(struct rk_udphy *udphy)
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
 	u32 value = 0;
 
-	switch (udphy->mode) {
-	case UDPHY_MODE_DP:
-		value |= 2 << udphy->dp_lane_sel[2] * 2;
+	switch (udphy->dp_lanes) {
+	case 4:
 		value |= 3 << udphy->dp_lane_sel[3] * 2;
+		value |= 2 << udphy->dp_lane_sel[2] * 2;
 		fallthrough;
 
-	case UDPHY_MODE_DP_USB:
-		value |= 0 << udphy->dp_lane_sel[0] * 2;
+	case 2:
 		value |= 1 << udphy->dp_lane_sel[1] * 2;
-		break;
+		fallthrough;
 
-	case UDPHY_MODE_USB:
+	case 1:
+		value |= 0 << udphy->dp_lane_sel[0] * 2;
 		break;
 
 	default:
@@ -566,28 +574,6 @@ static void rk_udphy_dplane_select(struct rk_udphy *udphy)
 		     FIELD_PREP(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel) | value);
 }
 
-static int rk_udphy_dplane_get(struct rk_udphy *udphy)
-{
-	int dp_lanes;
-
-	switch (udphy->mode) {
-	case UDPHY_MODE_DP:
-		dp_lanes = 4;
-		break;
-
-	case UDPHY_MODE_DP_USB:
-		dp_lanes = 2;
-		break;
-
-	case UDPHY_MODE_USB:
-	default:
-		dp_lanes = 0;
-		break;
-	}
-
-	return dp_lanes;
-}
-
 static void rk_udphy_dplane_enable(struct rk_udphy *udphy, int dp_lanes)
 {
 	u32 val = 0;
@@ -657,6 +643,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 	}
 
 	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
+	udphy->dp_lanes = 2;
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -895,7 +882,7 @@ static int rk_udphy_parse_lane_mux_data(struct rk_udphy *udphy)
 		return 0;
 	}
 
-	if (num_lanes != 2 && num_lanes != 4)
+	if (num_lanes != 1 && num_lanes != 2 && num_lanes != 4)
 		return dev_err_probe(udphy->dev, -EINVAL,
 				     "invalid number of lane mux\n");
 
@@ -921,9 +908,11 @@ static int rk_udphy_parse_lane_mux_data(struct rk_udphy *udphy)
 	}
 
 	udphy->mode = UDPHY_MODE_DP;
-	if (num_lanes == 2) {
+	udphy->dp_lanes = num_lanes;
+	if (num_lanes == 1 || num_lanes == 2) {
 		udphy->mode |= UDPHY_MODE_USB;
-		udphy->flip = (udphy->lane_mux_sel[0] == PHY_LANE_MUX_DP);
+		udphy->flip = (udphy->lane_mux_sel[0] == PHY_LANE_MUX_DP) ||
+			      (udphy->lane_mux_sel[1] == PHY_LANE_MUX_DP);
 	}
 
 	return 0;
@@ -1050,18 +1039,17 @@ static int rk_udphy_dp_phy_exit(struct phy *phy)
 static int rk_udphy_dp_phy_power_on(struct phy *phy)
 {
 	struct rk_udphy *udphy = phy_get_drvdata(phy);
-	int ret, dp_lanes;
+	int ret;
 
 	mutex_lock(&udphy->mutex);
 
-	dp_lanes = rk_udphy_dplane_get(udphy);
-	phy_set_bus_width(phy, dp_lanes);
+	phy_set_bus_width(phy, udphy->dp_lanes);
 
 	ret = rk_udphy_power_on(udphy, UDPHY_MODE_DP);
 	if (ret)
 		goto unlock;
 
-	rk_udphy_dplane_enable(udphy, dp_lanes);
+	rk_udphy_dplane_enable(udphy, udphy->dp_lanes);
 
 	rk_udphy_dplane_select(udphy);
 
@@ -1341,6 +1329,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 		udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
 		udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
 		mode = UDPHY_MODE_DP;
+		udphy->dp_lanes = 4;
 		break;
 
 	case TYPEC_DP_STATE_D:
@@ -1357,6 +1346,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 			udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
 		}
 		mode = UDPHY_MODE_DP_USB;
+		udphy->dp_lanes = 2;
 		break;
 	}
 
@@ -1501,7 +1491,7 @@ static int rk_udphy_probe(struct platform_device *pdev)
 		ret = PTR_ERR(udphy->phy_dp);
 		return dev_err_probe(dev, ret, "failed to create DP phy\n");
 	}
-	phy_set_bus_width(udphy->phy_dp, rk_udphy_dplane_get(udphy));
+	phy_set_bus_width(udphy->phy_dp, udphy->dp_lanes);
 	udphy->phy_dp->attrs.max_link_rate = 8100;
 	phy_set_drvdata(udphy->phy_dp, udphy);
 

-- 
2.53.0


