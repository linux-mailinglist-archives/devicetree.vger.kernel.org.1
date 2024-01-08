Return-Path: <devicetree+bounces-30086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2738267BF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 06:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF625B212E9
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 05:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099AD79CC;
	Mon,  8 Jan 2024 05:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="tRLrpqRc"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2089.outbound.protection.outlook.com [40.107.93.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA2C79D8
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 05:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFuil/ez96AGYt2lMGv1Z/irrWP+we1eGyAv96jfylrknn1F1BIEul4BlxK+bhj8CfsezQq8sCCG1B87LA7G3EbIsXCbZJaeScMvevbOPNbmZxPE0tyW7HLkj29LsMlkwqZSWxPrDDKF1p1MTjs1BA2CdAAdpzm06YHm3P4KuOrJH8Jy3HYXmsz/gYH8NVGm86PaS/alz4OU8BfjoZxPxl+7dBZM1tVda18ZTIZfADqzMPs2gYsTzm0YnzjsVVA2G1D7A1c7i8Xou6gfCJECHPqAN5bMgOeUXnCUL+2AxprRb3mN3vKnLuCDKrDySvly+B6NUNLvIvdbd7N7X9h+rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrGVU7GvHLadw2TIfRmvGUciZR+x6MZRn3lagQGmkx0=;
 b=CUka+H+okP8OZZptxwqKxIzdek4mvzeC2pOR/km15JEXKxvOtyUP3fLUYTkaFB4NdWJfjPSC9h6YWOvmDw49ccAYtUd3aPlUiV5+/jvifQHIFGxS/Kolw8bv7IqAjJ9QBt8QLXVkVr+SK+6TQaIqTF4v12Hp1XnMvopVUvf+4TAkNVDfDdrKpw0n6qEFmsoGPXbHu//uB23Oqe3X7iLi2bLF9yseVK0nPscBMynayTai2bhs2gwSdBLrZRTmIU1nAquU8l/geMXJ9T1UuHzyaYItGVsq9TvtRoEAeTxezaxE9RxJicFGImMAiC+gRVH/XLhFOnZlL5dy8PIojHIcjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrGVU7GvHLadw2TIfRmvGUciZR+x6MZRn3lagQGmkx0=;
 b=tRLrpqRclCT6jcFHieGmX3x2QV3T+GZF3ieuzH0FbOEturGtAff9nZEn5uugsa2trPsvojBUofByC1TyH9WnMvTUEhdeFHi4RKItaiWp3M5T/9b+cwF3tYgO84RCcmWaVi3LzF+LdCAfDLwTdYUBdneR2hXFFdyVGfCRi3G1TsU=
Received: from DM6PR13CA0030.namprd13.prod.outlook.com (2603:10b6:5:bc::43) by
 DM4PR12MB5071.namprd12.prod.outlook.com (2603:10b6:5:38a::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Mon, 8 Jan 2024 05:26:51 +0000
Received: from DS2PEPF00003446.namprd04.prod.outlook.com
 (2603:10b6:5:bc:cafe::c) by DM6PR13CA0030.outlook.office365.com
 (2603:10b6:5:bc::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.13 via Frontend
 Transport; Mon, 8 Jan 2024 05:26:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DS2PEPF00003446.mail.protection.outlook.com (10.167.17.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7181.12 via Frontend Transport; Mon, 8 Jan 2024 05:26:51 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Sun, 7 Jan
 2024 23:26:50 -0600
Received: from xhdbharathm40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Sun, 7 Jan 2024 23:26:48 -0600
From: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org->, <praveent@amd.com>
Subject: [PATCH V3 0/3] Add ZynqMP efuse access support
Date: Mon, 8 Jan 2024 10:56:14 +0530
Message-ID: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
X-Mailer: git-send-email 2.38.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF00003446:EE_|DM4PR12MB5071:EE_
X-MS-Office365-Filtering-Correlation-Id: 591ac3db-cfe3-4ec8-47eb-08dc100a6b2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Q3P1LFw/kOfC2zAVtDz6k3cI0oNf9KUQznJzk9J6MLRjT7dK89+dmhbwj3PXSZomNEsuzFxE9IRzNDm8GEadXy7LvR4lWZNzqM615zLqXHhyygaL7pj+jPHSO4Us5kswQpOTnBuWQq+1pkncnMcVJ2SCdS6//RejSZNsoP1Vg6B2MfEL9mbI/tC5h7RH7EVJdvjuOA85CkRvSP07esXqmEegJYy2gDco7Wl3klqj9mr6UtVWn43wPzQfaxAK8ruylMcJWI4Aa/Hn6R5XIVTz3E0BTzB8GHEXZATrrymRejecNJhdg7NRkHv51G8xCp7znFGwI2KfvkgET4MAWszFLA86kJzWDeTDN9JMW+UJv9Dw5l3/8CgK5NNdnv+N7waLcdcbpLS61jhK5C6XNE7nasyscPGYndORW3eRHw8Yvqp2z/OlteevLT3NEYAkikU5lgjsaTxoUD1Yry3OTCt9Rq57DDSu7R4slmHxiBQjF59WlTj2bojsIv6R8GcRAClk84aZ6ir9LPk5AFynMz+gnV9GDWL3a0KinQpC7K7Bo/3EbDrWDDKCQwcMLBZcp+6ntwuFvd2wde0eByeFoPBxIglSDOGaDJ755Q4ezaPVS/bjGt4Cnh3uX+YF0DXbQD41um6Cs/zHFtOfEN9amfvrLWS/C1dExLVIPQcGLMNBRUTk61o2co0cV4pSCqp+huKcTG721v0Wl545NY/QBaRDd/eiSDk3VYiqf6KnKTktDOtU7J5QDhX7TvqoLinpJXA2ZCNh3LG+DpagTUgPZGgKvA==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(64100799003)(186009)(82310400011)(451199024)(46966006)(40470700004)(36840700001)(81166007)(41300700001)(4744005)(2906002)(5660300002)(82740400003)(110136005)(40460700003)(36756003)(36860700001)(86362001)(356005)(103116003)(40480700001)(6666004)(316002)(8676002)(8936002)(4326008)(70206006)(47076005)(70586007)(83380400001)(966005)(26005)(1076003)(478600001)(426003)(336012)(2616005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 05:26:51.2480
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 591ac3db-cfe3-4ec8-47eb-08dc100a6b2a
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF00003446.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5071

Add following support
 - ZynqMP efuse firmware API for efuse access
 - Convert txt to yaml file
 - Update driver to provide support to
    read/write ZynqMP efuse memory

The first patch depends on
https://lore.kernel.org/linux-arm-kernel/20231004094116.27128-2-jay.buddhabhatti@amd.com/
please consider applying these patches accordingly.

Praveen Teja Kundanala (3):
  firmware: xilinx: Add ZynqMP efuse access API
  dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt to yaml
  nvmem: zynqmp_nvmem: Add support to access efuse

 .../bindings/nvmem/xlnx,zynqmp-nvmem.txt      |  46 ----
 .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     |  42 ++++
 MAINTAINERS                                   |   8 +
 drivers/firmware/xilinx/zynqmp.c              |  25 ++
 drivers/nvmem/zynqmp_nvmem.c                  | 215 +++++++++++++++---
 include/linux/firmware/xlnx-zynqmp.h          |   8 +
 6 files changed, 267 insertions(+), 77 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml

-- 
2.38.1


