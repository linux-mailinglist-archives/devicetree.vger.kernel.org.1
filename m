Return-Path: <devicetree+bounces-23695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B404380C0D4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 06:48:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F63D280C02
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 05:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202C11D543;
	Mon, 11 Dec 2023 05:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wiwynn.com header.i=@wiwynn.com header.b="PcvJX8Zq"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2059.outbound.protection.outlook.com [40.107.215.59])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E13A12E;
	Sun, 10 Dec 2023 21:47:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TjlespOSmn7J8r9W1sqo7hEvY28NXJGgvq73oGuj90xAJjqAzSvuO7BxZOzIJzLIwh+QJRSj2VNBXqlLV5+IQpNmIWZp6DtABNuZJrXubQeHQcn2e2plSd0o8QVTxAbcdKOc8V36sx/6yGvtOI40IfETtqpd7S7eLMfqKt2eyQvWkYIOC3Lb+F+AkTW5RhcxLNz1LJldkwrRtv0UnJYZk/JUs0ZkH1PyG8dOqB90019r6pBY/Xc/E7gm7HV0WDDoOvLUHmieE2WJYj0F1j6gjoTWBySjLPdCJ0hYfe85zVKw7KeJzOKgxbZFs2fNE1Pq7m4kTsupCq+ADClxG8lOYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zsmK47O4uAWeM7dDfAnIa4yPQrzYmWUcPGa4gFr5YYk=;
 b=iES2U5SREbKw2CiG8T/gXtRFpBv2UIVCBKbT0srAo5dbj+DGfH1j1BfJZTG66XSc80zIDijzEKXVn920IJq0orT3JFx9QgOBChDjK2De8vG65n5G7KyNMZlOvFm6Z+MoHpdmaZvRgY9m1zcBGJMe5sd4pOL+vuVedG0qGrx4qt6833+7eUaNb2xoxNHXyNSGBs22o2RmCqvUZZWZXH2+aUcJYBBKHaaqYXQJ4gHdA/zs69F5HtPEfDnj9JM0fJv+U+9MTTWrWRLGiN+3D3JM1haAiQCgIEvnS2gTFQIvTJX9UCMQ7hNT6sEeTjnxenKt4yc/WClJyBi32OcYPYIwZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 211.20.1.79) smtp.rcpttodomain=stwcx.xyz smtp.mailfrom=wiwynn.com; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=wiwynn.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wiwynn.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zsmK47O4uAWeM7dDfAnIa4yPQrzYmWUcPGa4gFr5YYk=;
 b=PcvJX8Zq7316BuYm+Tae8PiX0IKyysO9oSt/0WLadv2UJPvkS4W0svVlSE4xtfJbgyRe7AEc9yUQmQI6JJS0P5V0kWVltxqVZ8deGNYg9NseOYlc8Mon8PQ6U67bLYgCR0xTFTyt2UJiUFmIQsYDSqqCN3uFtGPWa+X2ehwVa9nzkwBzh/wQErfiQfi9grhgqTfw+z/dCxCv6weGFPPT7++78oS6kUtGJb+ytfDYhoGvtNOp7YubnkxvYRmBncETG27LqQ5KLQf74Sx9DjnzhdKMOJbm0qRf1vlCHIorblRVkY9lNG+PG6O93XBssFIZH3gp1XJAEi14LkB4fh8DuA==
Received: from SG2PR02CA0060.apcprd02.prod.outlook.com (2603:1096:4:54::24) by
 SEZPR04MB6121.apcprd04.prod.outlook.com (2603:1096:101:98::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.32; Mon, 11 Dec 2023 05:47:48 +0000
Received: from HK2PEPF00006FAF.apcprd02.prod.outlook.com
 (2603:1096:4:54:cafe::38) by SG2PR02CA0060.outlook.office365.com
 (2603:1096:4:54::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32 via Frontend
 Transport; Mon, 11 Dec 2023 05:47:47 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 211.20.1.79)
 smtp.mailfrom=wiwynn.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=wiwynn.com;
Received-SPF: Fail (protection.outlook.com: domain of wiwynn.com does not
 designate 211.20.1.79 as permitted sender) receiver=protection.outlook.com;
 client-ip=211.20.1.79; helo=localhost.localdomain;
Received: from localhost.localdomain (211.20.1.79) by
 HK2PEPF00006FAF.mail.protection.outlook.com (10.167.8.5) with Microsoft SMTP
 Server id 15.20.7091.18 via Frontend Transport; Mon, 11 Dec 2023 05:47:47
 +0000
From: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/14] ARM: dts: aspeed: yosemite4: Enable watchdog2
Date: Mon, 11 Dec 2023 13:47:19 +0800
Message-Id: <20231211054730.208588-5-Delphine_CC_Chiu@wiwynn.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211054730.208588-1-Delphine_CC_Chiu@wiwynn.com>
References: <20231211054730.208588-1-Delphine_CC_Chiu@wiwynn.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HK2PEPF00006FAF:EE_|SEZPR04MB6121:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: fb2f9f8a-452a-4768-65c5-08dbfa0cb469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	k+x47T5z7wqcx6TSGccCLjiPdyuBy0W63xCADK83cPLdqJHmI7x3s99RzZP5IaM8dqmGPUpJJjWjvZAQc6ivy31dnp/d3BuR/mZi82CCzOys/raFhXoyNDIrQG10V2LuZKc8BjEjeQ9HhPSwRtgLVX/lIFxH1rLEs/wch3P7aMeJUY6K7PtFOkjHLWpNWYPAH6i8yHbPJce3DEWD/IC31AwuprgoxrgGGAVU8Zd4eSawRcD63VHYjoMKNoR2jyXWblLOGZtcDcSyrr8yMb9h8DqAh/L5I5gEW101CkhXn4a7vqjobGBxPcLytqQYWDK9gRyiHa7Yq40w4IyJixXmQWCLytHjbqgJiSn9vuYtXlioMveZOjxHCMZrhleYXFOLdVEtZTyh5mGev56IOAIdCNi7xBPVuoVihYmQ6AiWV8tF/oZrpsnK7AZ+4qJM2m2SkvnPbggD3wsGU61Vb3+ZF3tnfOqq56qypr2KOh+ZjjZx8W1VsuGmCFy8P+VUMMY21eKUT+psedEF+xEqmdH3qmtuUGKnD33LloRBMq3sH4eARyLUO0doXX2EgWF6WTLpHwMmCEX5N4gcfhm1vAgocfDzBnQC1uaI3SvpttME8I73HNygt16NKEoP06bbqHThRMVN0UTUp4CVb2zCjjf9wl2Coaq6Eg58Pq1cTciQMYNuwvZ+58TjDE86xaaXKS+IKHvKRmgx47mUde/RZMOwZA==
X-Forefront-Antispam-Report:
	CIP:211.20.1.79;CTRY:TW;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:localhost.localdomain;PTR:211-20-1-79.hinet-ip.hinet.net;CAT:NONE;SFS:(13230031)(6069001)(4636009)(396003)(136003)(376002)(39850400004)(346002)(230922051799003)(451199024)(64100799003)(82310400011)(1800799012)(186009)(46966006)(36840700001)(6512007)(6506007)(36860700001)(5660300002)(1076003)(47076005)(336012)(26005)(2616005)(956004)(36756003)(9316004)(4744005)(7416002)(70586007)(70206006)(6486002)(40480700001)(2906002)(82740400003)(81166007)(41300700001)(356005)(478600001)(86362001)(8676002)(8936002)(4326008)(36736006)(110136005)(316002)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: wiwynn.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 05:47:47.4227
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fb2f9f8a-452a-4768-65c5-08dbfa0cb469
X-MS-Exchange-CrossTenant-Id: da6e0628-fc83-4caf-9dd2-73061cbab167
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=da6e0628-fc83-4caf-9dd2-73061cbab167;Ip=[211.20.1.79];Helo=[localhost.localdomain]
X-MS-Exchange-CrossTenant-AuthSource:
	HK2PEPF00006FAF.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR04MB6121

enable watchdog2 setting

Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index 0449a7e36ff6..0e9095c83a59 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -120,6 +120,13 @@ &wdt1 {
 	aspeed,ext-pulse-duration = <256>;
 };
 
+&wdt2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdtrst2_default>;
+	aspeed,reset-type = "system";
+};
+
 &mac2 {
 	status = "okay";
 	pinctrl-names = "default";
-- 
2.25.1


