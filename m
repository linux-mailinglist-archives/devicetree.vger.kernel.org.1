Return-Path: <devicetree+bounces-37848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E238467CF
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 07:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE2531F24938
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 06:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C9B1754F;
	Fri,  2 Feb 2024 06:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="Z+3rRRXX"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2114.outbound.protection.outlook.com [40.107.113.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE70CF51D
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 06:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706854195; cv=fail; b=NRqutSwGMgtmkpO9Adt3nkA9C1aNGieDf1bzizQAlwrVp1CCzS1rAlw6ZkjE6q0f7IA3I+sXhXJhURyzjenqC7lMlDCp+ZktQh00m2I7dMYV/RCz2Z2FGmgUjXv0TsEk1Nj46N5t72cBGZ+eQb6efesjs6cQCOC+amC+IMupZ38=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706854195; c=relaxed/simple;
	bh=Qgo7rUrNU0jnnU0pX4qaP3pt3jObpjD5FbFUPQ0VASs=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=KGXiuPoq/plGW3MQ3hLuSYStHMmtdrUwc8g77Pnf7lBcgZYgfa4LjXMjQqtVLAihBILB3fxVcmWOOwLZKXqg5Qrqbz2C21wwn9lTSxQxXBgrZ3qaWucz9UaL+75FHYcbKtoT/L2FvE8Q4GwWEnaakksKmOQghHCzlgDd2gE3bC8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=Z+3rRRXX; arc=fail smtp.client-ip=40.107.113.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSQ+xl8We+202LOMYWUmQJPPzx3uhyZB8J+9+MhDxr0dhXmT9iQv9O9ZyUSBQ2SU8DGPhAIcYrSlRPqydqM0NPbho/cSWOQgsMvuOxSODI/MM62Bjmf3eJWhxVhFIc/cRGj/mU+vloaXgG/S7+D8MXUk59WWd+1rZ8u1MFZy8bJhStP0GI8h7/9k7RpanIaP5560N089c7/fQpExizpPY5TaTOBFYuOrGSw1GBVNmJoeIkHIAtbBNs1ibXNyRDn87oxoX6HynNopSDvuWU6StfEr8ZMO8V5QeUpKF/GGo1iTKLojwOtPWSh78QhD3ieagz+7nLWhJFOTLkAUoIEfDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sC8NJZXzaw10HgJvbEYVUM3Eh4cnhfnwAQpzbtaTcno=;
 b=eaJ58sTm5p8+escWPI6W+nYucTW+m0ClDb6uDOB1Ir7FVXd5azLy0o2jeOEkVSvtwBu4JIOCGOwfP5IQj33puMlm36E1U1anXGDIjJn7awMPou/1dGBUTQQb3ch8zapnUglxMji64Qcrnr8lYfgtESd9k30lWVmTumWRz4Xd4yvjsuYBlYZjAmWsB+9qV/FNZd45xO2gITLWwzh2v6NsMuNSk178QswTV+wOCOKifcGNioUn33cGPVA9rqB85/mmcfK+EpI6uXa+t/KBk1VHLzZ2FbFsUhewhVc6bb0QniSgSNJ4v8VwRde+gqjkPHRBEMrCgS8nzyG9/2ou/egGqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sC8NJZXzaw10HgJvbEYVUM3Eh4cnhfnwAQpzbtaTcno=;
 b=Z+3rRRXXRiyioAEs/O9EwRhrl2w4rTsgVrSFXpSnqZjkNp4M7OAflNk6ealudb7r8FT6Qhc4CQoEusqTMuaa2/J0WACRQMI3pje35k8yVzmyyN3r/CS16jmc4Qn1l4aQ7shSxZXCs2Dw53J0xUppYokie1cRXTz5mQdEKTCE0Mw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by OSRPR01MB11634.jpnprd01.prod.outlook.com
 (2603:1096:604:22e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 06:09:48 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 06:09:48 +0000
Message-ID: <87jznns8gk.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Sakari Ailus <sakari.ailus@iki.fi>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 0/2] of: property: cleanup of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Fri, 2 Feb 2024 06:09:48 +0000
X-ClientProxiedBy: TYCP286CA0049.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b5::7) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|OSRPR01MB11634:EE_
X-MS-Office365-Filtering-Correlation-Id: 85b0ec35-79bf-4146-99a7-08dc23b58f5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Hu9mz+lXRFfJHGAYJIB7fYQ9yDLFKRDGgUMgg0Zm9xKyhGabvHidcOiwZIG53ouktAk9HaxldiRj+/BnFT1qRKzAnNBnzFN8Nj8cDMLojKRv/OcyNeE/yffzFpZUS/LHTyc9H4ALJgKPvvDDFEY/SOysMw6xul3zkget+zhuUS6rHr6deA/o+IA8kIwH3namTJPbySUT1fEjL5em1yinEa9oQEVZf81R98ORBHkhD3Ihz/EjR/9ABt4hE/OaTF+3wxqBYUATKwT/04jJwcUAjkgQA2GoS9WXMfZKQ6pfeFccRqNUFIioW6D6XTKu56d7/DCuD3UCc6zrMHe1qcMzGjVRCTDorhF6oRTn5ncuNBnPDrWSmXPN5WoVXCFPrUymzZjKYXcbILHcziuumNR/p5gIMRYlEmsrlcUYWHijY84bNsTqhMpa+oUhR+t+FDYXIESfru/4Si8M3NW3fHm6wPyOp2bjQifsl0wQsMFang8S8C7ipCzVQ0MAq2IvXFd76gCzIn0i1xRfGbHh07FNsi+2gHZJCBJs7x91cLrg6j/BZWZImVl5NZWUj56NBizwu6tzc2s7NZv9GTUyp3Q/M5+Be7LyrwQkwvfg0t/AcN8=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(39860400002)(136003)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8676002)(4326008)(8936002)(5660300002)(2906002)(41300700001)(478600001)(86362001)(110136005)(66946007)(83380400001)(54906003)(66556008)(36756003)(316002)(66476007)(4744005)(38100700002)(26005)(2616005)(6486002)(966005)(6512007)(38350700005)(6506007)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WVx40P85MaDTkU4xiF/S0qwbTDK7oGjx7iaZndAVdTaaVGqyZi69Q9EwarGK?=
 =?us-ascii?Q?ZqNIVl1Ris6VDkuH/TTBqe4euzrxvIA2K9LuDQrXTrKLD2kvGf4op0j73m83?=
 =?us-ascii?Q?XGaR7zAcOi1a4A7eSFPnz1wcxZ8BXIAaBSZk4b5t/R4b7rziHHf1zrvf19Aq?=
 =?us-ascii?Q?b5ywCrtwAWgDrNpqYeLl7jvbX3pbKs0PX9R/rtXas/cFz+tSpbIegi50raNu?=
 =?us-ascii?Q?X3Wbr5RNabF7RSN+ADAj/A/xp7RF3cMVLVztjDewZqadw80LGVkVymz4Q6Rr?=
 =?us-ascii?Q?Q9KeA+98r9TRPI2brXQfFk2rQPVIF5PAm4wIXEeIMKnb9u7syOen4E2/1Uut?=
 =?us-ascii?Q?RkHJArwDMWDdZ6MyMr1aZocuD1c3jNEEpigexK92t04G5ZIfmT+l+CNTX2rd?=
 =?us-ascii?Q?cQNyScH9vXqR36juKuSXFLMtgjyKpfw1AGyud7/kjffYF2GJ+xvG/M21juc2?=
 =?us-ascii?Q?5tdTmFKjRgXjckhJWo+5B++8bX1rFDzNhaf4fDrHJgoiLQg1OH4t3y7dkkPV?=
 =?us-ascii?Q?xzONqzx8Mtxnjhw7eReuG++ttzEMGk6JLwmKHggmQ8YbIFYfaGc/qNtruacD?=
 =?us-ascii?Q?dglpO+cI21e+4b/mlNIlvdMpQRqyJNiWElBSM5pZytWG7U5j+tCWKDrnBT1C?=
 =?us-ascii?Q?p3tvKbPL2eKrszzVWzrwckXD/Uil253fASvoeUtNlGBlReQF06li8dTqRYc5?=
 =?us-ascii?Q?k5Z0iyRoQToxedvjDzIVnB+7yzQYyeodIE3EHmuhYZ525C9EAkSyhjPXJ4dt?=
 =?us-ascii?Q?VnUQf5ZYXZ2pk8vihZoZVhRzoiDHbCx7FC1hWSXJsE3aHcYc6+IR1YLAQgnp?=
 =?us-ascii?Q?ug+8abrZ+5U9EdWH+ihV9RO8pbdQtQ+fAdLFjWCHEQzhRdPVC5GRzGrqqvn0?=
 =?us-ascii?Q?rVe+0sVlzaTB7ZY6qNe8YWC0S91CXhCmK9aeojasJly/ctUzbWmGtBLPFKw5?=
 =?us-ascii?Q?kSjiSeEgNIzX7mIMUle3Jruz61QYIwJxjOLQmue05CGXGRSZ5tQoVAdg8a7r?=
 =?us-ascii?Q?WGy+wlGgUa3tkacDZJAViHZwHLj5cka96onuq6CU1LtNwumxxUnkSLGMrvCL?=
 =?us-ascii?Q?xEH3j3ILCxpEPnV8ZYBtskqMOLx0fpfBM9sfrd4/jlqrU6e5UooxrNR16p3H?=
 =?us-ascii?Q?unBfzLvojykt6afVQBFUU41KxN9VDmh8kYrSdP5wxb2F48uPTSeWmBjJllfJ?=
 =?us-ascii?Q?b1PFVEF8iVfE1ueWxDIOTipQv3K7aEDH5fwkDTgLkUf2yRv/dgczpyQKa2j8?=
 =?us-ascii?Q?O0c7RHQ08N2mk83m6zPxEXGIFRIJmXWXOsee80JRm8a4v10UaUHkIpDCkoSQ?=
 =?us-ascii?Q?HoiE5I2VrjKtb/ixLBgVf+aNYsFubOitvgwsyt0OspTyLWU0OXLrHkiDJWtP?=
 =?us-ascii?Q?2jzTd9HXQ/jqpZKZBVVUR73omKHyydlg+n3bV8X8JYI6Y7ttLWgzwdaj4zX8?=
 =?us-ascii?Q?Sh8M/upTFqkaLzOZB9vV4efs9r72bf6pGKcRg6psOMEEZ2bXnVDLSZTaX8xY?=
 =?us-ascii?Q?umXczdJtRaXjkecP2IC2t5s95ROkfqifsY5ntfw87iMk2/IZKsNcKSjf2tcK?=
 =?us-ascii?Q?7lk10CwO2pRJ0K4sQv0THoJwFlzsfMKeqBWdbnby/hVLMzbd9RAL1WC3Jw+F?=
 =?us-ascii?Q?UgEI9TyGlQSNa9e5Jl4CAgE=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85b0ec35-79bf-4146-99a7-08dc23b58f5d
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 06:09:48.2060
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RoNrPFLL4X9OYOQEZLs0Up/I5Z+CcZijlnubBIP2QGaRyyek3QG4RymSjbiQR2ikh6Df0G46vxs5D7B4dFASBqH5xhCFrRQzGK4OsLkblnl9toSvd2kJ4mntgfOzj7jQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11634

Hi Rob

I have posted patch-set to add port base loop [1],
and got many request / opinion.

Because too many reviewer / maintainer are related to this patch-set,
thus many request / opinion can be comming,
I decide I need to separate this patch-set into few stages, like below

[*] this patch-set
[o] done

	[*] tidyup of_graph_get_endpoint_count()
	[ ] rename endpoint func to device_endpoint
	[ ] add new port function
	[ ] add new endpont function
	[ ] don't use get_next_device_endpoint() step1
	[ ] don't use get_next_device_endpoint() step2
	[ ] don't use get_next_device_endpoint() step3

This is 1st stage of it.

[1] https://lore.kernel.org/r/87o7d26qla.wl-kuninori.morimoto.gx@renesas.com


Kuninori Morimoto (2):
  of: property: add missing kerneldoc for of_graph_get_endpoint_count()
  of: property: use unsigned int return on of_graph_get_endpoint_count()

 drivers/of/property.c    | 10 ++++++++--
 include/linux/of_graph.h |  4 ++--
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.25.1


