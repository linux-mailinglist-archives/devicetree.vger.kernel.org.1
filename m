Return-Path: <devicetree+bounces-257724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLmeMj9FcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E745050E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACF05701784
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2012B352C2E;
	Wed, 21 Jan 2026 03:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="o7dX+vQT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65D2AD20;
	Wed, 21 Jan 2026 03:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965394; cv=none; b=D4gZ2u7rEnY0fxtzWMPB56takSd1N/fEpH00u0dW45TJal8a1ONY5uaJmR5eom4MOwinwkMkgNJV/HQ1t3wbnH28Dq2f92AVLMF8/3wQSEMY8H/rhHWUOz2F+wNY9TXY2dx8OG4xXtuS6BanwH4rf7nnEyYXMLdstb/OUk9p+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965394; c=relaxed/simple;
	bh=VjEzpqgbhPlWSq0B5oE74VPkyOKTpSAfaYkarAakCQc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Die9+BMTe/SGYgxbVFPFzj75iiKFZszgsAMqlGtrl+YfN5Ermom+VZZNGsE1AR5rcLUpoYcNp1Up/U3ysuDU6plkAPCH9BdicW3kBuRdWa9c+gGf+JEA/4U/ubi8K8DuKsXG/NHp/ZW0KNPl8byzSoAQLFmc1MSg3ZkmVsNOBuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=o7dX+vQT; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768965369;
	bh=vF9xBEexMFrVhcYjmid4zoQnxl0AqiI6XxlKJK5Uvco=;
	h=From:To:Subject:Date:Message-Id;
	b=o7dX+vQTatc6169fpTWKTUs69j3+jvBPsPaEyN1VSu6prTxXwe9nCnZCTP+tNJ/z/
	 Q+8KAMCM0e4aBfzJHC9ijO3la2uA7oayrb2WYyxypFCA7sGPhEfnbQQ0qAQ2kFejHy
	 e8A3qre+dFysxh45Mw4uTd65PZKLCohWZJQ59l+Y=
X-QQ-mid: esmtpgz12t1768965368t8de48cbe
X-QQ-Originating-IP: 9ln4DdrihkMVwVkbbbpi6NuAAqxwyC1I6z53O7jLqt0=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 11:16:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6010837920077048805
EX-QQ-RecipientCnt: 17
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for rk3576 evb1
Date: Wed, 21 Jan 2026 11:15:46 +0800
Message-Id: <20260121031548.402-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121031548.402-1-kernel@airkyi.com>
References: <20260121031548.402-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N+/GyfuFbcLiejvXDXiYPk2LsssHYAV0QJgFazQWQRCIcJ12OTAi2VyU
	Kds1hs30czLpiwx0m4ywtWHLjCpvJ234oum16EjABN92mvkN39q3gqKuDgTwfU+D0BOmI+p
	QUhPWZ75lcASFRdM8ozRs4U/gxPpuIvo0CJAec1IfRR6gOHo4GXNpaAJBeGUSXuwJNWjL4L
	YXA0PRwZS8N07L+mCykTyAgl++djQqbLSK/MWBMdM0wwr3MElgjUDmVumS52b9kiRZGlr5Q
	46VoVesOomWGbh5oKLv1/7dzBlGRZDlSB0vyPtk0JMFY+9S1wuni7f8okN4Gzy1nA7hdRAZ
	lieBBuPJLU0Egha0Xtl+02FMFtyJZkpsSpJjVEsxEpvl/wjcIRoGZ31H7nhZ26zv4qjl9Cn
	TpAjK/hbnmb0JPiot81JGJTNT2w0jhpKAbXx+CNQm4BWInVoilcvdviUe04Me5BjrvY5u45
	D9L8kGu8lOcZwH3FO+WgGdKSRZbhkQjExnIRdPgQb9fQZU9F6otgQwN9t5Twah8mWWrus5u
	CyWb98owlIKELbxypxpkdGpmVqWbc1t1gJMmrFrqVJZ2O2SngJIKjYYUbbvhwOmWyfmENJc
	aP55aJpD85ZIfJNEi5NGLBmtErEi5r/Jvr4zn8rR+f0tBheSdSiN2TO0EI34OQ2pr20ATlf
	FgNNcAbE0IajZmOvP6ymX3K+oUBam7j0NGaF46MBRgPLZvzXKTV3lqE1J1FYaePGaTztvLn
	u8YnC20ndWZ0Wac9RbUiHwG4WqzkcwoxFdHrgqPm0bAyv/qRrej7LQUB3GzsOy+BaDxXDgq
	nQT7TQ63HTOLofCX90knQaeIGlnJWrZJwRlIdqSh088Hl3y0oq5Z4Mp3ilBt61VqPhCWoVr
	cIcVegQkd7VVgkr5oVUM04MYjAfXV2fjPkdQ0VCuosFnI6wZ90fbI3ysRBLyes+Xzo/gyuU
	u2MgT2X0jU70Kmswz1jkb3QF/4DEF9jWT+Ulixz8T0u9+E8wUpSFAFZsWxdIxv7WPppks+r
	fNnf1p6LVkF/TuL99Wk0+b/JJ83/0=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257724-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,0.0.0.1:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 40E745050E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

According to the description in the net documentation, PHY modes
"rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
to be delayed on the PCB.

The Rockchip platform has long used the above mentioned PHY modes and
private delay prop to describe the internal IO delay settings of the
chip, which is inconsistent with what is described in the documentation.

Let's describe this part of the delay in the PHY and use the more
reasonable "rgmii-id" mode.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index c5584c26db52..3ee76bafafb5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -266,7 +266,7 @@ &combphy1_psu {
 
 &gmac0 {
 	clock_in_out = "output";
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-id";
 	phy-handle = <&rgmii_phy0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&eth0m0_miim
@@ -275,14 +275,13 @@ &eth0m0_rx_bus2
 		     &eth0m0_rgmii_clk
 		     &eth0m0_rgmii_bus
 		     &ethm0_clk0_25m_out>;
-	tx_delay = <0x21>;
 	status = "okay";
 };
 
 &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-id";
 	pinctrl-names = "default";
 	pinctrl-0 = <&eth1m0_miim
 		     &eth1m0_tx_bus2
@@ -290,7 +289,6 @@ &eth1m0_rx_bus2
 		     &eth1m0_rgmii_clk
 		     &eth1m0_rgmii_bus
 		     &ethm0_clk1_25m_out>;
-	tx_delay = <0x20>;
 	status = "okay";
 };
 
@@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
+		tx-internal-delay-ps = <1950>;
 	};
 };
 
@@ -737,6 +736,7 @@ rgmii_phy1: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
+		tx-internal-delay-ps = <1950>;
 	};
 };
 
-- 
2.51.1


