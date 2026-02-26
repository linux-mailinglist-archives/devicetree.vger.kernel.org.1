Return-Path: <devicetree+bounces-268737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMB9JIsfoGmzfgQAu9opvQ
	(envelope-from <devicetree+bounces-268737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:25:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E961A4327
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:25:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5134230CA24F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D2F3A1D01;
	Thu, 26 Feb 2026 10:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="p2qigWXH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997842749E6;
	Thu, 26 Feb 2026 10:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772101375; cv=none; b=FlRKGSPJl+VH5NuAbpnPvds2Llgz46JpZXZIfm8X8P5lKXeaHVv2LByoOimTEcrLlc9vdzn0B8mw6uCEIMOjQYAHUQ/qASrNecS9UqymGt7DaP3lQPbnfCmcNgeqajf3dhTkh3/FZC+wgBfoROK+7k9637NC/AA8buQqe719rzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772101375; c=relaxed/simple;
	bh=KXOb7mwov2VNTHtS3awXCYSoYaX0yhbMF0T6JBityQc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=HxqjF4uRbOeD4Z1ZxRzvmR5P5sG+Lx64h8EvL49a5kFUuQ+TWXoj00S9BkLeTScxRY5G4HJ+C3u6E9g97sQv2WYXxPo0fbAwiQLzy5ZByf+DurA/NTCUyOXj4KCPtZAtRHA0qbzLqN/+ttNfEQIqS+kak6ay9hbsNoDXLoAf5iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=p2qigWXH; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1772101267;
	bh=DgV+mvUm8IpJAe3V6psRYsqd1U0j6hMyB1pSTvra9qo=;
	h=From:To:Subject:Date:Message-Id;
	b=p2qigWXHVToOrq5yAWU+jXL34ZD65EnL2BCJW/55cIqspm8WvKStsWBIODNBnPZ68
	 NGQTbgxTysX0VW3bvGNBN86OWpVku9QMaCi5jUqt8V2ci3MmRGmPqRfuVqNGXNfygG
	 ub+ftJOlve56kJdQPPBeOHVaqWHPX0jvCduBYvWY=
X-QQ-mid: zesmtpsz3t1772101259tc37fa72a
X-QQ-Originating-IP: XUt32+iXhT/CTaIUR8BrzXoFV26VlyMPKSo76kiWS8o=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 26 Feb 2026 18:20:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16148220032706749095
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
Subject: [PATCH] arm64: dts: rockchip: Fix sdmmc pwren pinctrl for rk3576-evb2
Date: Thu, 26 Feb 2026 18:20:52 +0800
Message-Id: <20260226102052.63-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MxdW4jxL6NvXtbscdy2cNxr11uxIvhz3KVTIttkwLxU6wTFpLvIv6Xyj
	W6wBSW5kwjjJ01piLqQ9N0MMVyKo3PN+Rz+jwjFfDCyjNg+EABTLRE3AnKLguCeFkwTVtWO
	O8yxKE5Uu3nEoMdJSPgX5+7X0iy8ZlpKdyA6W8fNb26lLHEtR4NvqZfBqPzeEquRCRjtW6X
	ga7QjruX1S7/60jTVf4ruJxAtA+v4WSERt79tW11rB54+qji2Q3GpL/oukJt79Rq6CEZL3m
	UiipNEY87ejrGpnmVyO3qTZRp8r+4RxCHMFs6Q7FmCksmowgZch3pGc4c6XBeKNUZirk6RP
	h2xqcdlSQjhxxQ4RtrHaCG1Wj+cPeMjtPqyDmgX4HhCGG+Cuja77wrd6RkRuEiRDogX6lpb
	62YP41CU4QQAR87knathLMnbR1v9SS15RfIZnfSXHSSPyq+vWs0YPhU9u3JcVQLRsPUn76Q
	siaF8pk89flJoIuZFDURLSHalHt+wC7QMpbDp54USPbR9ZhPtA+8jSAxQHmFVC09K3M0pYQ
	a4lMoBWdd+zPu082NglpM3HpU5+B2vqeTDSZp7eZGNNyTZQo3T9CEWkzqrx6A7FGs9JoRTe
	Ynn+zGA9v1HTHkn1mgOIEYTE9WiLNJy8JWsvJEZWMYKvI6b6mozeNO5IpDfy2/Mcag6rYiv
	ziSxq07WDSfNz0Xaxk3piGBCb/CqKyI8E/tKWlkFOboGf3TCUJrVvIOlW46Ew7QnZLQYJp9
	BcdJjkPvrnimfwu5v/wgVoT6wPdPUaFUpw6+7lJly7BRj6y8FPDVhnDkxR7HB8px0ackaxO
	K6qZNa6tVqd0vbACYZOIxxMqzt1O7yZEmSfzRB1LloUKFAjFdualZxsX/uh1zsMROaherTH
	7AOsDfgnqCjmG7ZvvQiu2hD4Z/rN4bax9SCgUdVxD2TH15cIaCQJ985rRymMwxwQFPLWBGs
	zguzUujTdVIjxwOwsrlvd6ipnIiGkiy8it8delPd9lwOoZUaDPH2QaEW4xy8v+Lvro4+VGV
	VyL8H8QQ==
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268737-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: E7E961A4327
X-Rspamd-Action: no action

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

In rk3576.dtsi, sdmmc0_pwren is configured as part of the sdmmc pinctrl.
However, on the rk3576 evb2 board, sdmmc0_pwren is used as the regulator
for vmmc-supply. Therefore, we need to reassign the sdmmc pinctrl and
remove sdmmc0_pwren to avoid conflicts.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Fixes: 86a82f7a7eed ("arm64: dts: rockchip: Add rk3576 evb2 board")
Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
index 6bdc232ab267..98d5d00d63b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
@@ -951,6 +951,8 @@ &sdmmc {
 	disable-wp;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.51.1


