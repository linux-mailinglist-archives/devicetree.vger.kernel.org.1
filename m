Return-Path: <devicetree+bounces-257726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMLcBmdFcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DBE50524
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8E75F80108D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789623587DF;
	Wed, 21 Jan 2026 03:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="oRjIIg6q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9514358D12;
	Wed, 21 Jan 2026 03:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965409; cv=none; b=cWRmQEYPVOXYmMlqcdfuEHvpMtBTq5AhHUeh+/hL6zjyrFdmty4W+LGTkd0+pyieUZbOnPKUZT7BOGfa5Os8OXwZJc0JXNRO5bNXg1JHImRihuEyX2l00aZUqIkzZMEThY6No4NT+WenMEhaypUVpORExd0CWmi+stsBBGm6w/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965409; c=relaxed/simple;
	bh=3HmJfCffrUe1ZBIo9h7t9Lz7UpaJuF6w6P21KpnlI0A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=iTtdsdcdwDoc7UJFar9cskDLoGAOe22DRubR3ljsfQkrEJjwgDkXcXXToO1Unh1QwkBa0nKu3EnQ4vqQ/7kwXH14AOrcGW1oTX9dl2WaWUTrkc+FwC5tBty5tfXlNAdPghAhjIZTWyZ0LgQcGJNrwF23uzelW/RDjGlPonAiPY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=oRjIIg6q; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768965385;
	bh=ctNKz6GvD5lNelhXcStrNf6BJ2QP0yZh2qHptZE/lF0=;
	h=From:To:Subject:Date:Message-Id;
	b=oRjIIg6qPg9Fdqzv6VYv8vQ0TxbgAvKL3CtOOaM1DlI9AOxHRqEuU7kXOB4lqtpYi
	 0QW6FOXw9ZazdbSThiZRm0JxZ4LuKqmwaM6P5Y/xtuNLDvii5I23jkqqqehJu5Ylbz
	 ClOwL1yXYMXeb9CQNpamT+q8MYdpBQ8+ZU4RLhIA=
X-QQ-mid: esmtpgz12t1768965384t76fb5e45
X-QQ-Originating-IP: B2IrWSjdGtlvJ617ZVrhL2KEc0TQ5HHEsEwPVrRu0Jw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 11:16:18 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3622662477851760804
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
Subject: [PATCH 3/3] arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for ROCK 4D
Date: Wed, 21 Jan 2026 11:15:48 +0800
Message-Id: <20260121031548.402-4-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121031548.402-1-kernel@airkyi.com>
References: <20260121031548.402-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NuZvjORXcxgLpzKPlhu92FmVX2PxvQ3KdEeCT8k9K5Ye6qb4nDtzUoCm
	GWWurq5m/Hqz5STTDy/9drUJsickFYvep6kfOwIkSfJ3RNughvCW4IfvVM3reUebUA+YMXt
	T+oQwh2wfrHQb1SzIRTFmBR1NpXN/Ht89aOWSx0L0LVtcSsg0uWGCMbOZbbE9yf3kjAEhry
	RLE3T8GTRbUt0ay9+q1AC/en6JjhLIkb/vD8r6nxZ25plWilMFIOZ+q6Zk3qqBq34+JarrQ
	RYkrk/hI4Tcz3aqlB+BTw7680BTFT0+adUSLtKDJb5YXHJjnTtLZ8w+TO3aBJu9m/+r7ftw
	GSuRKVW8IXovTaT/L8Pclhah+OFZzmxqS0UDgALnDi7Cdwv03ajesTf2C3df9vqgHwaUHxi
	NUF3l6HsJxbkim59cAlYUnkqi/4f1QsE0nw/v5qHie3YHqNpuXBGROlfv7jdbtamtt690/a
	JT9n27T/Msq7gJyVw9OvJgBdr1LDf/f361d6heoIAX18OGOleaTDe+B2WReM5n/kLglyffO
	C1P+/ZFnUtOzfv+M0IPN6FdTS+3IOKOhOnIJTcuTn9XEQZuLtedhG+0buPguxauBjo2z8L5
	ez9yVHDa9agamLQaSmULZRyzGPdcxhw599cF2RAsbq1yztXs2dHoDn4uEjxRcG/R/Lxttan
	qkWUEjeJgFGx/SUo5zZ+Hfpdx/V+Ay+AC19PzsHMsKDfi2IYCbSKSf+M/SS43Lj/Q3wTOSb
	/fRKbQX2ynQ5TbccvTDQx1ecBpe3HgM9ZgbWM+40LZA/peT3rL7+HbP+zln5tUhdD2s0r/t
	5CtSUiL+xn3AyaJYPh4LyoG3XHQ2FSCluLap4SsBm+otutkAfKByUAxUGFr0UjgDDUeXSPy
	dG96zIxy0TTjr4IvLkpkv+wxNeUf4pD52lHwEaS2an3qWl9hjMcDCY57S4d5Hd/IxKA17DD
	z6URXp+JL+MKl59T7CeLGwQfLEV8ZzNbz+JNpz/7FV9dGyITiQWxcFsmP4VQ/rIQ8IFKZTC
	oi4QJbMU+Jtu8KAC/uheQOIwR3zJbPA8gEmYe8GQ==
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
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
	TAGGED_FROM(0.00)[bounces-257726-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,rock-chips.com:email,0.0.0.1:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 81DBE50524
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
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 3e9c294cab91..70018c34cf08 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -329,7 +329,7 @@ &cpu_l3 {
 &gmac0 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-id";
 	pinctrl-names = "default";
 	pinctrl-0 = <&eth0m0_miim
 		     &eth0m0_tx_bus2
@@ -338,8 +338,6 @@ &eth0m0_rgmii_clk
 		     &eth0m0_rgmii_bus
 		     &ethm0_clk0_25m_out>;
 	status = "okay";
-	tx_delay = <0x20>;
-	rx_delay = <0x00>;
 };
 
 &gpu {
@@ -772,6 +770,7 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
+		tx-internal-delay-ps = <1950>;
 	};
 };
 
-- 
2.51.1


