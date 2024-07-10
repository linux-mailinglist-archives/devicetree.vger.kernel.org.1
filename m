Return-Path: <devicetree+bounces-84695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B9C92D2D3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 232722831F1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 13:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BEC193468;
	Wed, 10 Jul 2024 13:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="w6whZI7u"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A3B19309B
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 13:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720618214; cv=none; b=GrQAZmPFGPJ1Kz8V138ZBwA/VC43XcTA/c0dr60hOJ9KjAL1ASfv4RtQCRhat59eqRj4DJCo8QAuzwedMSXlB0EN4lajv/QIGUZKtIsSSZHVb3Wktx7dRwCWmM1c28+aVVSQ2dR8WWXlY9xxivC5tcdklP+ZctkZcTFtt5Mp0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720618214; c=relaxed/simple;
	bh=IiBMrcVJhAC1z20knDHScRDU6FsVhK/WF6l8bU2C5sU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SbjPRy82iX0WODanxy4rykZQSlhl/wM3lJgUmIRlpldtBx+n15sUYqsOKeLPmHw7NxfzLcCewJHgMNelJOLp4P3RzEzUgM1cboSj46M8WSg8shglL//O13xLyIbBDPddq/mdtKoWF3QheLgv3oKmYif4/t1/Q1tcXyj4xDA7Jco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=w6whZI7u; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720618211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=W7GDLIJzDEbcqmiflPOe8bUQkY3bx/EAeBq+l7AHF5k=;
	b=w6whZI7ugdXp4drL5ritcRCNJGJC1Jnp31cDfhWb8zEYFeLM+CjuexOh2y2WS/2ufzdy0j
	8Gmc9w7txBkTMuCAZB9oNoYIAzAk+d1gi6DDJRLo8tCT9TXjX405fvxmOVxvfupgOX8aca
	G6Ii6bpgeLoX+easuv4HVAmxOBj3rFNHK8C8kIXWDi5I6+eIbtISFcL6rZIkCIeLLGWMze
	3O34zAonH2GRv2OSWcn/ypO6Snxc5v23JK6+ZrXLRaqbcR9h4mJUBbmfI8d+AnG89swE+c
	evhX4AnlOaLPyE0Cpya9Csh7vkcZDgeMfSr/t56lG9OAH9RykaNnoNkQd63nzA==
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jbx6244@gmail.com
X-Envelope-To: wens@csie.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 2/2] arm64: dts: rockchip: Add sdmmc/sdio/emmc reset controls for RK3328
Date: Wed, 10 Jul 2024 15:28:13 +0200
Message-ID: <20240710132830.14710-4-didi.debian@cknow.org>
In-Reply-To: <20240710132830.14710-1-didi.debian@cknow.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Alex Bee <knaerzche@gmail.com>

The DW MCI controller driver will use them to reset the IP block before
initialisation.

Fixes: d717f7352ec6 ("arm64: dts: rockchip: add sdmmc/sdio/emmc nodes for RK3328 SoCs")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 95c3f1303544..16b4faa22e4f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -910,6 +910,8 @@ sdmmc: mmc@ff500000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_MMC0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -922,6 +924,8 @@ sdio: mmc@ff510000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_SDIO>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -934,6 +938,8 @@ emmc: mmc@ff520000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_EMMC>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
-- 
2.45.2


