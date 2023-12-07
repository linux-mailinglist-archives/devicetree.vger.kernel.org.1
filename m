Return-Path: <devicetree+bounces-22578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161B8082C4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCB87B21AF2
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17ED1E4BE;
	Thu,  7 Dec 2023 08:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="EAZ4Ynrt"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CB1FDD;
	Thu,  7 Dec 2023 00:19:40 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B78JRlG023032;
	Thu, 7 Dec 2023 02:19:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701937167;
	bh=p64t0LpyP+mTWKJIksyXsG5GjWxsqU875gx2h0FCsw0=;
	h=From:To:CC:Subject:Date;
	b=EAZ4Ynrtjhe/fWr4Y7sXo8HMo8B9c5o433dNLpKzR3wFLCiTSPnb/Zgd53Vik4VK6
	 QVuV+ZW0HyQqVXFkrGyc9poEZL5RB1ExCLGWJYsLvXsUD0PaCuf5eKZo8WTGFR8MpZ
	 P4DnsDw64/qv6SKWlNxE0xW0Eh1a1VJEON0JijyU=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B78JR6R079645
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 7 Dec 2023 02:19:27 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 7
 Dec 2023 02:19:26 -0600
Received: from fllvsmtp8.itg.ti.com (10.64.41.158) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 7 Dec 2023 02:19:26 -0600
Received: from fllv0122.itg.ti.com (fllv0122.itg.ti.com [10.247.120.72])
	by fllvsmtp8.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B78JQYp082677;
	Thu, 7 Dec 2023 02:19:26 -0600
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.31])
	by fllv0122.itg.ti.com (8.14.7/8.14.7) with ESMTP id 3B78JPlq009733;
	Thu, 7 Dec 2023 02:19:26 -0600
From: MD Danish Anwar <danishanwar@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>,
        MD Danish Anwar <danishanwar@ti.com>
Subject: [PATCH 0/3] Add AM64x ICSSG Ethernet support
Date: Thu, 7 Dec 2023 13:49:14 +0530
Message-ID: <20231207081917.340167-1-danishanwar@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi All,

This series adds support for ICSSG ethernet on AM64x. 
This series is based on the latest next-20231207 linux-next.

AM64x EVM has three ethernet ports. One is dedicated to CPSW and one is
dedicated to ICSSG1. The remaining port is muxed between CPSW and ICSSG1
ICSSG1 ports. The ICSSG1 node is added in the k3-am642-evm.dts. By default
the muxed port is used by CPSW so 2nd ICSSG1 port is disabled in the
k3-am642-evm.dts. But overlay k3-am642-evm-icssg1-dualemac.dtso can be
applied to use muxed port as ICSSG1.

Thanks and Regards,
MD Danish Anwar

MD Danish Anwar (2):
  arm64: dts: ti: k3-am642-evm: add ICSSG1 Ethernet support
  arm64: dts: ti: k3-am642-evm: add overlay for icssg1 2nd port

Suman Anna (1):
  arm64: dts: ti: k3-am64-main: Add ICSSG IEP nodes

 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      |  24 ++++
 .../dts/ti/k3-am642-evm-icssg1-dualemac.dtso  |  80 +++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 107 +++++++++++++++++-
 4 files changed, 212 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso

base-commit: 8e00ce02066e8f6f1ad5eab49a2ede7bf7a5ef64
-- 
2.34.1


