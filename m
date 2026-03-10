Return-Path: <devicetree+bounces-273448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PfuF2vzr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:33:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 763552496BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0A4930CD706
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18CEA372677;
	Tue, 10 Mar 2026 10:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="lzLukqo7"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011020.outbound.protection.outlook.com [52.101.52.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDBE371043;
	Tue, 10 Mar 2026 10:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138791; cv=fail; b=B46U6V8v26L29HM6X8ee70FEN1rIC/BYdJFnRAXnC+6RRMvk/kL5BaTU7Tl1qbA8jycIhhfIxhtFtv5WpqdVv31OM3gEsO7HTj4XF2vAlBdY4fjtW0B6GuSs/t9qn5REufJ7YrOBkJ9zU72Y6hdEN62NFkF50kleKDX/hg2ZEPg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138791; c=relaxed/simple;
	bh=QjkisA38TBz0iFVVjBH0gBtvTf2LAkvpSE/Kzh1Z8Q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=S5cQu33FcQcX2bsGI+8vy7I2Uhb9EE08gD5y6yEuRdtE3GkIX6fNVrbigo7qcRW3j/i31KsoQMgHj06JEklfxQhzV5F8HriXbY0X0vgcuLbrjRo5o+7V63Y7lSnbfqH6K88oRXpkvOeTuSdLSyM2+XHtsZe8WVGRCe/yH48U9SY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=lzLukqo7; arc=fail smtp.client-ip=52.101.52.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSDZmznF3wYbm/CxwJ5DnFYGzlyOoKoCNLq09Y0VekfbJ6XEufxUSXLkVEDSTnvcwXjIvcF33xCXbiex3ljCvMKiLh78R8AR5XRi4uwFtXMMLEJBk7El+O91nZxkWyqW/7vnHXyk6nCe/toRLhF+J784aBqYY6YjiahJuY6tXmpedEQtXizSwS1ANiTKHiBwRh4KIRaM+UBbn5XscIy/i0MOQyrHZLQnzFLkqL+CWaLeGDmDYZYirdTKO35a3QDnyancXzbNYZTvVptkVTXRrzAsYOa5rwSZxmojYpfwrKEo6/yKRKjAsqgI+My+tNHUNNYEkEw0Yyd6bN8z9xnqZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PoTT90q9wcR7jWtc52LXPjNTt4k/OTLh0LDj06sPSFg=;
 b=BKhc4HY/AT8nBr7dolX7bbQzrljOFifQDxIbAUnhrOmWRx68nGgyUUo29tDWRsK+g2kJAFkuzTAopiGewia1sQ+QSp6nRq+S3+KbffEaahnKnZvUDxrmXpR6Efhtv7zPutyhvTeI6JuRczKyarNZZBmkOEr77RFw3wguYsjYAvAhytc14Lso5rATjbDNpcblBl6cc5QvOqvr89Qib1rhMGAkQdIkruh13cepFGE5D6K3dEW36mZ7BIVeGS58endHolxEQwtXWQxLCzA8KgpwPKlG71yfLPmWPoKpyDkUzsnNdu+4OwDzox7FetCAr51/v2KzX++QyjOnKKlJGIqliQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoTT90q9wcR7jWtc52LXPjNTt4k/OTLh0LDj06sPSFg=;
 b=lzLukqo7DtrCsZF3DuNe9WPN/Yfsu0Ke9MSpCBwaWWq3Ad7G8bZsIxYcRDLM86bc6r6vjU1zGxFbVRTpoT2KldEynDbO0WVvS7amkFigh5zjpjH61GU+avAY5putdLpbZsacTufz5nVjD57JuJTDbMbqqWU/25PbteoNj+enszM=
Received: from BN0PR04CA0077.namprd04.prod.outlook.com (2603:10b6:408:ea::22)
 by BY5PR10MB4257.namprd10.prod.outlook.com (2603:10b6:a03:211::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Tue, 10 Mar
 2026 10:33:05 +0000
Received: from BN2PEPF00004FC1.namprd04.prod.outlook.com
 (2603:10b6:408:ea:cafe::1d) by BN0PR04CA0077.outlook.office365.com
 (2603:10b6:408:ea::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Tue,
 10 Mar 2026 10:32:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN2PEPF00004FC1.mail.protection.outlook.com (10.167.243.187) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Tue, 10 Mar 2026 10:33:03 +0000
Received: from DLEE214.ent.ti.com (157.170.170.117) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Mar
 2026 05:33:03 -0500
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE214.ent.ti.com
 (157.170.170.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 10 Mar
 2026 05:33:03 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 10 Mar 2026 05:33:03 -0500
Received: from [10.24.50.162] (uda0510294.dhcp.ti.com [10.24.50.162])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62AAWwR52902597;
	Tue, 10 Mar 2026 05:32:59 -0500
Message-ID: <0b3ee45b-a83e-40bf-a463-bd7b36906245@ti.com>
Date: Tue, 10 Mar 2026 16:02:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: ti: k3-j721s2-main: Add DSI1
To: Dominik Haller <d.haller@phytec.de>, <adrien.grassein@gmail.com>,
	<jernej.skrabec@gmail.com>, <onas@kwiboo.se>,
	<Laurent.pinchart@ideasonboard.com>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <robh@kernel.org>, Nishanth Menon <nm@ti.com>,
	"Vignesh Raghavendra" <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>,
	<linux-kernel@vger.kernel.org>
References: <20260130205820.83189-1-d.haller@phytec.de>
 <20260130205820.83189-5-d.haller@phytec.de>
Content-Language: en-US
From: Beleswar Prasad Padhi <b-padhi@ti.com>
In-Reply-To: <20260130205820.83189-5-d.haller@phytec.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF00004FC1:EE_|BY5PR10MB4257:EE_
X-MS-Office365-Filtering-Correlation-Id: a67b70d3-3502-4503-777b-08de7e90694f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|82310400026|36860700016|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	LgduKC3ohNGmyXvt0iitGgPmlbUeKi8lKZvKs5/rE4mzjc+RyokdzAyeQJBzfHjb4NxumOHv8sTlldM5MD5DQ8vySS2MDBIKlJiR6SLH58ewODwcDeRwN/8SFbAFtk7f8syQEWXWkstlr4WwxxyOWPVmby2eYNbEP+s2W9duG+tIGgwgyEzFxcmno4T62ntktiiWHmLsYrZ5XfRH0l8YfmVaXHQ1bksWW15yg+hgNfvv/tv689a8PjuLgUgRaH0cnY01hm+v4IG4poXCPzdjLG7phoED3owfLn0yMXbGkaLTPVjeLl2/4zqhoPWp+eakjkOveMYa95MDr/d2t+wGe8m1QDVLK1h8f7sR00KYYNOLdJgyH+Ld2OXnCsrsAlea+bu+3UlNS6Gy8JO/MdPjbomjGAE0SRp3UTKQ5kLdr2uiqmwpSwU52R/ddWPb6Yhg4sE5/2TxwAzktyhoUqhDysKxq8XcGU4uEgvfFIqV9H5D9DHqsorpdtY8V4c43PHEGYLo/oOxXrG6lSVVxPELSnmG6xR0AXF39YPPQMb6fsGBySgooKITcQgzIQurZPs/yhBPRDm2eWdoTCh3c7tUko00mTLCR9XZ0xNEq7VZPXHbqIx4BsR5HqzKplq7sYt9ooxtmyxiequZ6bZSnEkdcx7WV8sdgLXisaJ/MMXQbvqLy89ryUm4LyHs5P+9Xeti13cbVwk4j9FQGFcxYxUiuqCwRFrlch07s2m9BU2V44I8P+4+D8cjdI/UHMWmRg2rQ4+UZtl+C/3S0svCYePME1FOimSWg6ocCLt9W1CorJ7vc9ZunWBTCJi+FH46fh/0
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(36860700016)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	17OWIspPzF6gwX8hSv3WRdLqConkas7uU9itavs3djen4WEAtxA5pwbfdvY/DA/MMheZ8UyFXcMQRxYfmIHr84XkpIvqXwLF1rFGSvxizEHjQ5USDhrr8+DfpW/r1F2IiYMXuQvvGrIIqiiCLTtslPG5HLctSPSXX1DyWkAnHSJebPHjQVw9n9wbBDjCfShZvmmUH8GkLwI1YckSSAdrn6L0HdcNas8PtLEAyFOeYJMEquXbCx/huLnW/iBkIWXiLf0tfWdJEdQkcfQFNELAlP1OHfrtjYUdMDR1QMj3TUNBZubikoE5AzMdRkrHy4BFMEJzLY6MYMbnTCuX9fKOiDcBjY7tSf+nYeOpVqbTE3nfzBJC3+8L90gO5AJlJRslP5OoRNNxMpyTENFaeGVkVI3X9Q4/Vt6YvDGKWdfU9e0aleldNGTvmnMEMmsd6TL9
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 10:33:03.9283
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a67b70d3-3502-4503-777b-08de7e90694f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF00004FC1.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4257
X-Rspamd-Queue-Id: 763552496BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273448-lists,devicetree=lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[phytec.de,gmail.com,kwiboo.se,ideasonboard.com,kernel.org,ti.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[b-padhi@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,157.170.170.75:received,2603:10b6:408:ea::22:received,10.180.75.9:received,2603:10b6:408:ea:cafe::1d:received,10.24.50.162:received,198.47.23.194:received];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action


On 31/01/26 02:28, Dominik Haller wrote:
> Add the second DSI instance and its corresponding phy to the main domain
> include file.
>
> Signed-off-by: Dominik Haller <d.haller@phytec.de>


Reviewed-by: Beleswar Padhi <b-padhi@ti.com>

Thanks,
Beleswar

> ---
>  arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> index 80c51b11ac9f..80a32c451d1b 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> @@ -1815,6 +1815,19 @@ dphy_tx0: phy@4480000 {
>  		status = "disabled";
>  	};
>  
> +	dphy_tx1: phy@4481000 {
> +		compatible = "ti,j721e-dphy";
> +		reg = <0x00 0x04481000 0x00 0x00001000>;
> +		clocks = <&k3_clks 364 8>, <&k3_clks 364 14>;
> +		clock-names = "psm", "pll_ref";
> +		#phy-cells = <0>;
> +		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 364 14>;
> +		assigned-clock-parents = <&k3_clks 364 15>;
> +		assigned-clock-rates = <19200000>;
> +		status = "disabled";
> +	};
> +
>  	dsi0: dsi@4800000 {
>  		compatible = "ti,j721e-dsi";
>  		reg = <0x00 0x04800000 0x00 0x00100000>,
> @@ -1841,6 +1854,32 @@ port@1 {
>  		};
>  	};
>  
> +	dsi1: dsi@4900000 {
> +		compatible = "ti,j721e-dsi";
> +		reg = <0x00 0x04900000 0x00 0x00100000>,
> +		      <0x00 0x04720000 0x00 0x00000100>;
> +		clocks = <&k3_clks 155 4>, <&k3_clks 155 1>;
> +		clock-names = "dsi_p_clk", "dsi_sys_clk";
> +		power-domains = <&k3_pds 155 TI_SCI_PD_EXCLUSIVE>;
> +		interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&dphy_tx1>;
> +		phy-names = "dphy";
> +		status = "disabled";
> +
> +		dsi1_ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +			};
> +		};
> +	};
> +
>  	dss: dss@4a00000 {
>  		compatible = "ti,j721e-dss";
>  		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */

