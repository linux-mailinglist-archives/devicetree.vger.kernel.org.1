Return-Path: <devicetree+bounces-240868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCD3C76DAA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 02:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F31CA34717B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 01:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B86925C6F9;
	Fri, 21 Nov 2025 01:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="HWsP0ZYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from insect.cherry.relay.mailchannels.net (insect.cherry.relay.mailchannels.net [23.83.223.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A1F41A8F;
	Fri, 21 Nov 2025 01:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763687545; cv=pass; b=Pcf8/m2+oUewKSiKWJtd+O7HyQvVRUPcQgqpA0erFIDRb3eo0pwsLfVAV4I57s2qmZHe2Q7/tlLUjdYwYCTXguJAjvNYJ+79ZjewuM7GEPJcoDysHc25hthj3vVtYDf0FVeucgeMbSZOQz6nb2SZ7Lyh1R3DieyDxAhuorwOrLE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763687545; c=relaxed/simple;
	bh=PC3NetUgot+pPpA6tL4A/L0nQZU28sMTw+UgNRPp6sk=;
	h=From:Subject:MIME-Version:Content-Type:Message-Id:To:Cc:Date; b=IITkA6P1cuS2I0sJExMgyaTtvrI/F9KULy9SkOG9aDo/Qlw1Q8+6NunRD0PKiDYZ7YvT3JYx4DU33t2eVvAdseHpA02oX0RmQ94YgVjX4K6iOLB2LwYt7qRrjPtwkxEel2u1rHk3rRwf3eVvvCMqZQRnVcg8K2/cVnjSTQoJ46I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=HWsP0ZYQ; arc=pass smtp.client-ip=23.83.223.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 316AA8A16BC;
	Thu, 20 Nov 2025 19:00:39 +0000 (UTC)
Received: from de-fra-smtpout3.hostinger.io (100-98-121-252.trex-nlb.outbound.svc.cluster.local [100.98.121.252])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 390268A103B;
	Thu, 20 Nov 2025 19:00:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763665238;
	b=Pinu1RcfNLrxVbkFsgs/fr0F6O4bVKf2NMgdl3RRqRClEevkJXGYqtBTfQ7UgQzqjozbva
	cEpwFe3jgX7Oprg8L67MWomD4m2mo8zj7sNX5roeiNk1JRdosOkjaJ3xpkywaLVDpw+hbe
	iP4pLpCt9tb3mHTp+ESfm7+HDRzZR3XD9LRyhQM0SoaMchrehdQ7WLpkmsaxckCQ/z3gOw
	WqX7CScx8XbnyNSvCF2ljV7s66v9t4wwxhTGXuJfH+V6Q73NP+lwFkZEwBWlWQrF7VsbLY
	Wng4ceayU3b3NtGCQIDdA9vHtYZBhbW7TKZD715Clb0AMkBJ1ggqxqS2MHB7ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763665238;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=GMZhcN2wxaEKVyD7wZBJpczX20+L4j02F2j/QYQHmSI=;
	b=E/8+lqlf+TdlZESIRmIAWd4yeKS/CZ6iXBndssNtiDFxvKr4mstPh0PcmqkpJtaCwscqfp
	b4MQGjT4kPcUyaEalfPWEIn0vwDRnSMLiQGhw75mf60CWjAjwvp3MkIuDF9XKhI10r4NLY
	dI63RejyCRG9/82fYsXoYB6hpRCgcBMTxZfqL5+tV36h9wndXUOC39g1FYdxoE8x46y3yN
	WL8z62YSSw97ChacfwcaH89MsC0gc/flQVGrS8pBrPspWDYBmQCA8/CoBLpMe8DQvC3blx
	L0jRIGXYRUhNcpeOvrEIe4D0R6g6EEJuoKdxNljqN6l8h5msg543c3B6rlMIaQ==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-26rgb;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Good
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Interest-Hysterical: 22b0686558f57138_1763665239002_1388945392
X-MC-Loop-Signature: 1763665239002:2199312045
X-MC-Ingress-Time: 1763665239002
Received: from de-fra-smtpout3.hostinger.io (de-fra-smtpout3.hostinger.io
 [148.222.55.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.121.252 (trex/7.1.3);
	Thu, 20 Nov 2025 19:00:39 +0000
Received: from [127.0.1.1] (unknown [IPv6:2001:861:4450:d360:c7dc:44be:8206:c29e])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dC7365stJz3x6l;
	Thu, 20 Nov 2025 19:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763665235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GMZhcN2wxaEKVyD7wZBJpczX20+L4j02F2j/QYQHmSI=;
	b=HWsP0ZYQsCCSTxee4G+n5ylXSOBS5OS8dqQ+DAtIhrb3YnslYCVaAFMWYDSMxFSXLq7bij
	GYOAmbpyOp1W1HfDfx6ZicPRrdu6fKDSsSvzQ2GrU7cttk2SsxyZLOmHHVN5IB18l2qp6X
	O3bcqrNjEeW8pnWHiqJiVPNNZ7xn9K2uMiY+wqgHLSHW09Jp2AkD3pI2KtY9ZOcH5lDn+W
	0ekjeFEiqMTHwSOhwjWzdCQG+a2Z5n5Eniw5DQ3GpZ2CgyVfEFhVVquZ7xhgC28QGCpgBR
	QLMis6e8RvKckcUNhTTAQ0HE0b0ARhBCqK1sd5q3luZCrmlCaAm2NiMG0TzDPQ==
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
X-B4-Tracking: v=1; b=H4sIAEFlH2kC/x2MUQqAIBAFrxL7naAbSnSV6MN0rYWwUIhAvHvW5
 7zhTYFMiSnD1BVIdHPmMzZQfQdut3Ejwb4xoEStFEpxpm+9eBAU7Xo0jw5FIONRkzOjstC+V6L
 Az9+dl1pfumRWW2cAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Opdenacker <michael.opdenacker@rootcommit.com>
X-Mailer: b4 0.13.0
Date: Thu, 20 Nov 2025 19:00:34 +0000 (UTC)
X-CM-Envelope: MS4xfHb745rDjt/k1t+lwLX1j6r2lQ0FyP0JBNZJ9Rco4lVGhWAvkfCvrH+mu+i/HGCGMq6dKg5J231vsJISCX06IuIdpXLRN5pa6+A2ANlxOJAfp2oiXueM i4kiE8ZrScUheCyk3ivf+CCWSkF/dISuW/0DHRAjjMRZHmUch/yvM/LOki9/FSW1xXBN4WwpyufEVuTjcs0Y/DfUhmDgoW4yyYGGc1ZIO24RoVDMOJmQ8kXm 8I6E65Ms4WSGkDns114yDKPcMu61Zta1YCkWp4qdsOL8PJlhWuClrPCXZod8SNuqyg9+BCVOz+/LVDa+fzOjjfaxeMNaKwYu4FpJwAn/Ap6IBcvzTPppKJeN s5qA+v7LF/dXiBaC1dGoIVhhd6MdRez2QBIpm+n1xzs2DG4RAaEqXMCl7tZUw/p7HT2GrMTXVZnqe4/pizo4pjfI5xRRV4wuYcbuUqMiheZGpyTLkpBQAUM7 pjbQdtkl2Pn2R0j3VJOAM5G8f9h3YmJTL0mGdvrav1n71Mo06w1Ht02KjQYMqOHuAFDjGkP2IdR81lrzmwZZS6Y+eT3TAF+5w4v0B9DTuOJWp17n557WHNpI EN0=
X-CM-Analysis: v=2.4 cv=etGNzZpX c=1 sm=1 tr=0 ts=691f6553 a=CjJ265PZljfpLgeKkM6P3g==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=5dAzR5NRAAAA:8 a=d70CFdQeAAAA:8 a=vGUGW7KHnbn2mzzjei8A:9 a=QEXdDO2ut3YA:10 a=ZKAZAlVgJm32z6MX8p4a:22 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Enable the "i2c2" bus on header pins 3 (I2C_SDA_M1)
and 5 (I2C2_SCL_M1) of the Orange Pi 3B board.

As documented on http://www.orangepi.org/img/pi3b/0719-pi3b-19.png,
such pins are the only ones offering I2C functionality
without conflicting with other SoC blocks.

Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
index d539570f531e..e2f0ccc6dbe7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
@@ -435,6 +435,11 @@ regulator-state-mem {
 	};
 };
 
+&i2c2 {
+	pinctrl-0 = <&i2c2m1_xfer>;
+	status = "okay";
+};
+
 &i2s0_8ch {
 	status = "okay";
 };

---
base-commit: 8e621c9a337555c914cf1664605edfaa6f839774
change-id: 20251120-orangepi3-enable-i2c2-fe6d25ec681a

Best regards,
-- 
Michael Opdenacker <michael.opdenacker@rootcommit.com>


