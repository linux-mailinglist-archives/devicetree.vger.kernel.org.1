Return-Path: <devicetree+bounces-12395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A557D93FC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:40:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61D821C20FB9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485FE168BC;
	Fri, 27 Oct 2023 09:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="aUXG/jKO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCDD1642B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:40:06 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84FFAC2;
	Fri, 27 Oct 2023 02:40:04 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39R9dpHB001877;
	Fri, 27 Oct 2023 04:39:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698399591;
	bh=pFbuO1kEeQo68IEYncAmtpSTE3i6Oh8ByMRmVl1aToU=;
	h=From:To:CC:Subject:Date;
	b=aUXG/jKOp/8grhQWT+5Uossxy7/0aqKm/3I/hZMv8SIlDkOjaUAT/z6wzyWk3Xs7f
	 6PwncuDYEFWRQN9S4/YwFMQlneyz2bzbV/Q0f/Wi/RiQfjMZE41DtBWa7rkV/wd/CH
	 qjLRM+RFuG96jJ0Bq40wxVh88At4cUfmnfRV/Lcs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39R9dp0J047430
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 27 Oct 2023 04:39:51 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 27
 Oct 2023 04:39:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 27 Oct 2023 04:39:51 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39R9do9D030817;
	Fri, 27 Oct 2023 04:39:50 -0500
From: Nitin Yadav <n-yadav@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Add eMMC support for AM62a SK
Date: Fri, 27 Oct 2023 15:09:48 +0530
Message-ID: <20231027093950.1202549-1-n-yadav@ti.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This series enables eMMC support on AM62a SK.

Nitin Yadav (2):
  arm64: dts: ti: k3-am62a-main: Add sdhci0 instance
  arm64: dts: ti: k3-am62a7-sk: Enable eMMC support

 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 19 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts   | 25 +++++++++++++++++++++++
 2 files changed, 44 insertions(+)

-- 
2.25.1


