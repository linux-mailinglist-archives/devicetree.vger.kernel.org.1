Return-Path: <devicetree+bounces-257725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DOAIUpFcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393150515
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B2D05566D69
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC453563FF;
	Wed, 21 Jan 2026 03:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="nUwFejXV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C663587B0;
	Wed, 21 Jan 2026 03:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965399; cv=none; b=Z61TIJWUxIskY9qroBXM++2mkRqp9PHYF8FDOgCIf0kKO2Z1Oyir1HczCb6cRQS9AOJ1GffGur0iyhKOKhIQeVH5QYbVDadfdCLOENXvvkXW52tUzC0kYoKJzg9mkpPvGvcwu59/fWFJ37HBc7eDU4UQTuTbEvNEoprKSGZry2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965399; c=relaxed/simple;
	bh=7oxcn5fsjigsdz/GrR5FhDMpAiMvzV6DeC6wKedg8Cw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=MVERrVtApxJdChbDg7bmVFy1G7Xw+v4FZCqTwHx+hBu62NZGbFPXgq22D+zDfuONeQhnAvPTctX1UKi5ELzMcuGvqq7BasXI1Ns+611SdLoRuvFovKrwVkdCAb5EC9gKn+nD7WGnCPlIERKJKo5J6AECmZupzJNqwwbNDT3LWEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=nUwFejXV; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768965378;
	bh=+7ef0kRiiQt4A42xSOCDW234pfzMWnquuL8cWqdlfIU=;
	h=From:To:Subject:Date:Message-Id;
	b=nUwFejXVp7cpO2EfX8TnmM2u7Bzv6Ky//Uzbqwn+w1V4wOMuCE0Ona8Yd9AuD6cHl
	 DQluPjXxlsWxNVzvQySNCMYHQvvL+BFEegVOPLwHpwb8YK0gsyFATXp5IUJLtEVaxQ
	 3gXNhrPIjwjWkzHwhu2mSn2d+cdI0h5B0G7oOv+w=
X-QQ-mid: esmtpgz12t1768965377t5427cce8
X-QQ-Originating-IP: 6vOSUOst9aL6W1nwt6MmCRWo9HAZ1hehzumRBuhyWPo=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 11:16:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16986462623485192806
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
Subject: [PATCH 2/3] arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for roc-rk3576-pc
Date: Wed, 21 Jan 2026 11:15:47 +0800
Message-Id: <20260121031548.402-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121031548.402-1-kernel@airkyi.com>
References: <20260121031548.402-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MMnP0fEUKo/h1gszTyQemga6XEBbj18HMfJzoA836+qw3OiZnnwM82Lv
	dHcS2Z5RfVleXuQQVB32cFmvzZSJpFbYP3zs3ufvtqd4CkGM7efhA9Fo25uzQULFEdaT6d+
	n0lL4MMOhB3KDdFUzbv20t/etUV6UT+2jdXHzX+vlKLqPUMC/foG9j/W0mFV+2bLxNjyKnO
	CcZ/5o2qcAisS3uqQSNx/yqp9H8u4Yp0xGZtYtJxX7ExVYFSZG50CiBLnzaHl24Ufd8+UD0
	jOdcdWMimYxAC09Q/2TcX4dWDdbBFKXt87R7dPOGN74YT/J4yGOGrRLNV48zGRYtmD4YcAv
	01RetXZdn6ePdEhwZK+9syE8geEIha+bNnEJUCM3bCedXLsgKsr0c3mqq79T/z54su3v6XL
	kfzgv5+MhhynB4IaPaveFVmT9GNDhQ3wP1dS3dTwDf6UysZdCG75xlmdpTfJFqyjkko3afu
	49XMKaSTC5qtab+NZMqQLBveHCcOGXv2mb/WvMM8VboGI/HGk98t7CwJppuRCEyVVzRRmQ9
	LD62KYuMRNPONEi5rbN0AB1beI8Ds+VlnYXRXgTlNW2q5iy7/SRzG8W+L64TQ3rP36TlAmN
	LTg8eKuQqLdeVpVbRPckUIERFr3MhLbBxyOkjmm/yOX3TArrlbTNSt65J4vQVU+6Cc1+/PV
	gWo/IwyWAWLbgXaGIIJU8jczLt5ziF3joyJsZtOUA4vLSVIeLB+E9HN+96t8tNbkm8cX1fn
	ZckBZLXZitMWwj9pLkOWF9Kb464WxuTseH4AWcNTF1RMN7a3OLyUzajPe6gWy6h57ztCQnU
	efyD8t2ZgBR22F1iDWaG5fHA90DPEqnrODtQO9vP2tNOCjlt+hWI4nfzHB9bIvSqvpROQ4H
	R8LMtzmnyjSGkukP+nKK0H3ta1cIZvnIx6Lwcz2ie9pmIVV11x9aAoAC6XeCcuLV34Gma/C
	dNBLkAyDclrIJWq5j7PFSPFKEsSsG40nauuEGkphOiPcb4QEtpouEpkx5FNpBE4u3Q9Bo9f
	W3F9vsNc2QO6uo/a4ZCYXt1ZFxkkNJ1yBHq1D2dg==
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
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
	TAGGED_FROM(0.00)[bounces-257725-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,0.0.0.1:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 5393150515
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
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
index d0ab1d1e0e11..edef483d37c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
@@ -275,10 +275,8 @@ &eth0m0_rx_bus2
 		     &eth0m0_rgmii_clk
 		     &eth0m0_rgmii_bus
 		     &ethm0_clk0_25m_out>;
-	/* Use rgmii-rxid mode to disable rx delay inside Soc */
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-id";
 	phy-handle = <&rgmii_phy0>;
-	tx_delay = <0x21>;
 	status = "okay";
 };
 
@@ -313,6 +311,7 @@ rgmii_phy0: phy@1 {
 		reset-delay-us = <20000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
 		reset-post-delay-us = <100000>;
+		tx-internal-delay-ps = <1950>;
 	};
 };
 
-- 
2.51.1


