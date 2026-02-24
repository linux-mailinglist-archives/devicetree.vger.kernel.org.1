Return-Path: <devicetree+bounces-267769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIWELwtknWksPQQAu9opvQ
	(envelope-from <devicetree+bounces-267769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:40:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6011D183E2C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7F91D300C30D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F76366DBD;
	Tue, 24 Feb 2026 08:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="MYZfTPRG"
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.65.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9DB366DA9;
	Tue, 24 Feb 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.65.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771922437; cv=none; b=I2vHaA4CBoLHiZjxB1am1j6iIKCCp/GU83AJqbTtNjvZHNNMKjExBsGHdMFOR3CqsvXOmIQNkZSaPOhlBSt2r1o6/ZUEGNiz409KfTeTBawOMzFIdhjS/rW2PhV5WIo43BWeWfAJ6riPvyzFkLzdCcbNHi692VhtK3RvLiPjHWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771922437; c=relaxed/simple;
	bh=P/XR05RnvXMQUotA4wyF3oinkjQ4EqUNom/OuxqgH38=;
	h=From:To:Cc:Subject:Date:Message-Id; b=sInNkw+BhYRr0Z5fpXeTvisvSg9iU/BncVMLA4Za0gPG1Y8wNrKp4cqIuCg60qQr/TJ+KE4TF/XLaGGrGfY6a1t9bybaBMvizg0pAeaG0J+38fXTCvJf2kAggqXdL9yMuTypDceI87pyIxMP2mPXz94RZX+kjn7I0F8r97U1Jfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=MYZfTPRG; arc=none smtp.client-ip=114.132.65.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1771922326;
	bh=xMQ+DHjakSDtXac64/7KfFCwZ1L4pq/RTh2zM7Fd/uA=;
	h=From:To:Subject:Date:Message-Id;
	b=MYZfTPRGkProJpwObrXrpdzS7Hz30VbQ/M5wB+ja5Rp54Wp9IBSw65A/oEWfBMB0j
	 WFfCiRBkPhxTCKDReHyaPMEFrsdrTXglTkBs1ZaCEitSdaglucYAi0gRxLiD73WkAo
	 8YQysRVJX5vR8mwPZOjznNrP7Ci3DMfMpPbYHU90=
X-QQ-mid: zesmtpsz3t1771922318t09647f08
X-QQ-Originating-IP: nD0/7aqmIlm4w8EtxVu9RwDBosldNey/sa8Ya3axcG0=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 24 Feb 2026 16:38:35 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12253562334839428720
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable displayport for rk3576 evb2
Date: Tue, 24 Feb 2026 16:38:18 +0800
Message-Id: <20260224083818.109-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N+/GyfuFbcLiejvXDXiYPk2bixzvWO3kJCN+CvQLNaNY4v3FxRPPKbYE
	MxGCX91TVSMBRwNAhz28ekTtYVWXXY6B7a3j+N9zGnBAym8RDhB3A+b8+2IDgrOOS3SZeMX
	x8Ak8jn2PIIWVysK4dbdl8PDG313lUQc/llzPmgEVlb5lyA5t+pKxpj5aq2rud7eob8+JqN
	asjzb+hf2hBKyVgOkvuoKTiYgxLFKUdT6xzOD4alTszJxP9jBpWki3uV7vi2cj2PYgwAGwa
	PK21mOKEJ5fVG5zP68KUINw3hB1Gb5Rxo/8VsuLoB4dnT4sLWcHNRBx3lmyXHwFtVG/mGzy
	d/tcAJvzsjbpgqVh9q/ODK1Z4BQx/B3LiNKWbVjITCohLG9JZHSsd/PUBZsELBoHcOMpLYB
	wbnfYOATexe+abpNUa37786n0+B+MuOuDYhzgaj7d05PmCQu1KvgbqQB/o/rrNlQfgxbBr5
	YTwKmtN+OrOxjZS/gn7TmahBX+cbqlVwfe1TJo/ryukqUf+WGyeBamOL7JsxO4fG3eC0/FX
	sMPa/h3iWtALBKEsyTfvjG0kabh3NROyqVPaQJXfJlPoUqlRFSw3Wh4qcjW0Y4yd7fyltHn
	xZmHjt1Gl3FtKIBTWjU0E6hJLu4nEu/QPGjsRRUPQapG6wHkzZY3fG1nHndXuxvJKvRlZ4Q
	Dr1zRloGtPg0wsZT4lm8Gk36LuVB/gMY6jT99iVNZGHPqN2gHQmKzZ8JU/UzIH/5o5fzsTg
	zdM/f6RID0I+vH/KXnG5mUiXAlWsj038riEdRh+6AZ7P4vB7Xkvy9uFNY98/6Lj1towSudK
	9M+9TOlDemHQFmI0+ht0leY7WPYMzfhI0nF7YWb6uNjfzPrST7SCo4rY8X+1ZiCmrduaYhw
	GUhRY+HUy+LwlxTLcLwgibHkl+lNEVYMfTdEMo61x6PL0VRDe83OUXMuOVuT3hEICG9LXdF
	OAohq0PNBt9UtnNjXvVWxMh7OAtOaywsuiUnqn5jeqrjxke7fDHFHns/f2n9G3wIzyQ0=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267769-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[airkyi.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.1:email,rockchip_vop2_ep_hdmi0:email]
X-Rspamd-Queue-Id: 6011D183E2C
X-Rspamd-Action: no action

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The rk3576 evb2 has a full size displayport connector. Enable it.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
index 028fb0a830b2..6bdc232ab267 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
@@ -27,6 +27,19 @@ chosen {
 		stdout-path = "serial0:1500000n8";
 	};
 
+	dp-con {
+		compatible = "dp-connector";
+		dp-pwr-supply = <&vcc3v3_dp_port>;
+		label = "DP OUT";
+		type = "full-size";
+
+		port {
+			dp0_con_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -312,6 +325,24 @@ &combphy1_psu {
 	status = "okay";
 };
 
+&dp {
+	pinctrl-0 = <&dpm0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&dp0_con_in>;
+	};
+};
+
 &gmac0 {
 	clock_in_out = "output";
 	phy-mode = "rgmii-id";
@@ -1005,6 +1036,17 @@ hub_2_0: hub@1 {
 };
 
 &vop {
+	/*
+	 * If no dedicated PLL was specified, the GPLL would be automatically
+	 * assigned as the PLL source for dclk_vp1_src. As the frequency of GPLL
+	 * is 1188 MHz, we can only get typical clock frequencies such as
+	 * 74.25MHz, 148.5MHz, 297MHz, 594MHz.
+	 *
+	 * So here we set the parent clock of VP1 to VPLL so that we can get
+	 * any frequency.
+	 */
+	assigned-clocks = <&cru DCLK_VP1_SRC>;
+	assigned-clock-parents = <&cru PLL_VPLL>;
 	status = "okay";
 };
 
@@ -1018,3 +1060,10 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};
-- 
2.51.1


