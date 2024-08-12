Return-Path: <devicetree+bounces-92953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5344694EF50
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 16:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F6EA283444
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 14:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0463A16B38D;
	Mon, 12 Aug 2024 14:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="KwREujn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178F717DE10
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 14:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723472166; cv=none; b=SJL56nhZ9VpvZ/3AtTG9mJm/7iG24GhIziP3pp3kNVlSmKJlQUNxz6DoIbOwnil25IqPHJt+rP+g2NMJe9dtTyMM1KcoSqjdDeoDLAf0cHCSyy/DvepcxHU1xdQuSPOlVmfQWnuHNdcCTKdSCIJCmXSKyfeQLou04sc1yplWkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723472166; c=relaxed/simple;
	bh=j6v7lTD1pCUL9Ydx0b3syzZyUX73yVXnWh0CnQpkixM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R3EYiLw7Q4LE9Yr+tT0BovpoBKsnUTFPcYu3tTnvAMaVkn9wFewGGan/DChr2YmQEUE38adsRjE1RP/U9j7+7WF/EJ6ypLAA+I9G7PiByHhGgRzzlyXCeAIxe6gqr4v9LiTL+j3Zie3nU2to6UPEltonIXxbzUXB33hCgqa7bWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=KwREujn8; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240812141555c98d75ac7fc18bf73d
        for <devicetree@vger.kernel.org>;
        Mon, 12 Aug 2024 16:15:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=SUxmYkjU52Zd0l8Y+msbh0zC3Tc3jd+DyqARUfWiOQo=;
 b=KwREujn8vgbWwSH2hoDnU+dPY7IhxRCht6L5Bsi1AczJ9+m5d3HE39FSHIZmK8JVCMwTbD
 jAAsI4TD58s7WFUDSlq8UGnWh6GGTC4tCjaLGiwM9JD3Jkb1GQsiRa7RjeEx+ipwxFvBw3yl
 oTh2syBlb+c4euHs8COS+c2C/v5vbyEZ9VI/GrNByHpUE7ijHHDmV/9bzoAK3603X/VNF772
 Hb7X9dxnoKau9p5vwGtNdoEE+BS6jUBNg/h9iDdJkc2SnvSFXuurLH67GjTfYf+QxZ6GuLRN
 jUD7gjtHLtdEnOIsf2PGapU1h46YV/ITmSMDZWzsmsl04ThQoM5XBvVg==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Minda Chen <minda.chen@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/3] riscv: dts: starfive: jh7110: Add sys-syscon property to usbphy0
Date: Mon, 12 Aug 2024 16:15:52 +0200
Message-ID: <699fd0f6b7271fa757d915516fed4df078fad5f7.1723472153.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1723472153.git.jan.kiszka@siemens.com>
References: <cover.1723472153.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Allows the PHY to connect to its USB controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 0d8339357bad..0c0b66a69065 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -606,6 +606,7 @@ usbphy0: phy@10200000 {
 				 <&stgcrg JH7110_STGCLK_USB0_APP_125>;
 			clock-names = "125m", "app_125m";
 			#phy-cells = <0>;
+			starfive,sys-syscon = <&sys_syscon 0x18>;
 		};
 
 		pciephy0: phy@10210000 {
-- 
2.43.0


