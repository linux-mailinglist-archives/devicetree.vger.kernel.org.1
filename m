Return-Path: <devicetree+bounces-250018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A66E6CE5B8A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 02:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F4323002D62
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 01:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FA32397AA;
	Mon, 29 Dec 2025 01:56:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023081.outbound.protection.outlook.com [40.107.44.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1AB01CEAA3;
	Mon, 29 Dec 2025 01:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.81
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766973381; cv=fail; b=sQ2oAWCh5OliLsgBYpQSpwk5soT0zek+4JuTVu1XvF/p+/EUPvO8ttcdiZohrY0KQFE7dJIiZPIBLqkB0fAZTFS4MprjOcKUrZDXe9zfFLxotuDAjwBbmCehqWMOa/8wOnxt7HtTjgmGHvPjDH9SuNpdxHAhbOMOSCpYxQz83Qs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766973381; c=relaxed/simple;
	bh=ScZ7NSE66K1pxMS8K4Nh2yTySweqhzgCYLf9Qj2ejXw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kbXaWEjGn2/AzqyVBRd0mm7g3CBLHQt4p7ANanX0XzfHfhNdZ+E/rBKuugnbLh+MQpcAm20S3DTrx9jRac7CPPAIZDA7mnra6q8bwEM2OEwInM94l6FxbStEUb5tsKN7P3YcP6G+D/3fIxTMZqhmBpqcr6Z6H6cDvFqpNF+TRuM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QBbt411FHWVk7qj7jlRkVmLPSww7mQOA4kABgrfcLiX8eLDUEBj7luwitydvRAkHTB4AGxC3uPp4YKconNQFxZsrvhezxntDXeScpBwDereRMyYDmB0BaQq9tZcE68A/y7vYZJG/4qoBcLPUJbm5AGDq3wKhlY547NB5awSwqV3JHqKJ0LdMthTNxUhjsgmUwKwiAj+wkfcb0x/D6DaBTCP16MRBxmPoNoJSqJou+WDywqJC+hal1JGeQTZUpWjvWUvu+DQ1Ngb/B/3kslnvWx+iNTFzIbbxIw8lFlz6TIPKcp/DZUrAR3LTABDZcnT6Oki4TvRmafrXjkhZVuxWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nnad0PTSI3BBlV//NLw7zMvqm2xnorzLOZdNJnRBeIo=;
 b=ddrSHiyAf/h3WgxTKMDPXQiSqxZ6LB68hgO+lv4UpxhAt3DA57MXOFQ1wcE/eibrslN/IizrFzRSEQFf7kgq7DHRDB4V89bD/f22a4nOfVcszoz+hFLSf09dhM5OgSssXMZpGw509+3JQOhHP6pG1VrcU+D5F9zw+cp/m2TVrgjNnvaBoajXQsFbp5yNe/RFTYP4xLbyH8DMPrH6H6z8ZT98AX7Hh3zbPpXnSGJUfrbRHA9tGRCd2pyRko8/76/RmbP8bKZsyDJXsuEJI2lbY6ppETlQjB0VxtfuiAi75pzSCVm8hTt1lpBg6ePg2m8WQwpW2RvPYhOnk7dM9DwIFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR01CA0038.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::20) by TY0PR06MB6855.apcprd06.prod.outlook.com
 (2603:1096:405:13::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 29 Dec
 2025 01:56:14 +0000
Received: from SG2PEPF000B66CD.apcprd03.prod.outlook.com
 (2603:1096:4:193:cafe::9f) by SI2PR01CA0038.outlook.office365.com
 (2603:1096:4:193::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.14 via Frontend Transport; Mon,
 29 Dec 2025 01:55:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CD.mail.protection.outlook.com (10.167.240.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4 via Frontend Transport; Mon, 29 Dec 2025 01:56:13 +0000
Received: from nchen-desktop (unknown [172.16.64.25])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id E8CB640A5A1E;
	Mon, 29 Dec 2025 09:56:12 +0800 (CST)
Date: Mon, 29 Dec 2025 09:56:11 +0800
From: Peter Chen <peter.chen@cixtech.com>
To: Gary Yang <gary.yang@cixtech.com>
Cc: <fugang.duan@cixtech.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-cix-kernel-upstream@cixtech.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Message-ID: <aVHfu5mcX3ZVqQih@nchen-desktop>
References: <20251219133553.1440970-1-gary.yang@cixtech.com>
 <20251219133553.1440970-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219133553.1440970-2-gary.yang@cixtech.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CD:EE_|TY0PR06MB6855:EE_
X-MS-Office365-Filtering-Correlation-Id: 81b28e65-15bd-4a7a-46da-08de467d725f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ApHvO7DtgRwCf3b6ZzRx+c2td2kZX6QFDLsSZDKUZa8LhHEBnqYeYi2pr+7V?=
 =?us-ascii?Q?SUTPhtq0SAC1y7Dc1DJbMol2EcB0E3YvW3BjX1lnNiN/oCelGGv8PqR1jmvf?=
 =?us-ascii?Q?GzHz3f2ZsYAd1W1YK0T6BhecVbf7E1DCJe6U6+eTUaHh8/24XGwnXxY9Rj2W?=
 =?us-ascii?Q?z0ILcpeupOJc8FD38Uwa5Tg5ncCNeR/0rCYrJgba6LkztQJSikvbIbvUHUSq?=
 =?us-ascii?Q?EqMEQrp17EBRQrgPBHTuWrl7umwJxtyZIz0XZHILXHJxksiATZDres+8NGcm?=
 =?us-ascii?Q?XIJMlU3bJd/IuUC+mprAIeq8CQgswWvenXXmCORZQZz3mVuolEnyJmkziLDS?=
 =?us-ascii?Q?wKMu2CJdSeXgk7LEGE3NVAsqi+32HHceR5eX6/5wcV7P6AQoLLuWAFZ2ziwD?=
 =?us-ascii?Q?828CPoj5MfS9fKi6D9sYjDvDQBXUX2YmrYxGXlaCTrZz8oxPmtWb06QNzn/l?=
 =?us-ascii?Q?mXk8B+ZiPQ0B4ChPpTK0DsZzEJ0oarrTnz2SZiTfc/c9/hIKVuMTGna9cPdO?=
 =?us-ascii?Q?FfsZMBJSOM/dciUvaK6N2whzwTrxOnlQdA5RblyZsmO4j7DptTAKPwVMWb5H?=
 =?us-ascii?Q?Nci/wu2rUKRU9flkR3JTEo5E30ybjE0CCGka5CBiTRGa1t2IcTm4QqiXh/LK?=
 =?us-ascii?Q?+rG5ED4g/FPXqsaTChV5BOQqxFbQlsWHADuhKobQbaFGTy6wLAKOkEI3HPKK?=
 =?us-ascii?Q?ObYxvBZEFLKl/3poh0K0ZgMK2d3IJJZIR2T2b9IfOrqV8YKEiwHTTS+hWKk+?=
 =?us-ascii?Q?bHvey7Sgisv4AOWlgoZou2cNzpRxxLdsV+UZKwHddVsR6yoYEhqB0aH6hcV1?=
 =?us-ascii?Q?zobtuoPsM+YemeEDEzPpJ6U+rBxQm7fD9CJyFby0VM6XWgVIiOG2y14IP5ot?=
 =?us-ascii?Q?jLXYYv9iV2V3Yn3ekz662+3Scw8KI5/QgV4RmKtNdYwyYd2YkfBYzFgU/HRp?=
 =?us-ascii?Q?dkXOtdR9/jcoGqwEsP1/kaVUUn29rm8MxZhAegA2kfcZqUREs45xAon6Bgsv?=
 =?us-ascii?Q?1YYVOgAVmRHW4zMeYAZ8iTiEsyA4x+kmt9MYshic1hAPH2cu4GYrirYLNsW6?=
 =?us-ascii?Q?k6Ne6gcKxsCNB6OEBoY3ARFX0BbijPrcHZLYj4h8jIPIVlryJU1Z6M1LI7dF?=
 =?us-ascii?Q?v86KSgxFArxM4Belj7ugy9Tgvjd/fOJirDcnpBzBvkQzXjmQ3bH3vFOSU+Of?=
 =?us-ascii?Q?6Otg1ePyIKPhzoI1QmcbPzw/7J8lYVf/J4HhMFzCT59bQbH0noiZJcuNMa2s?=
 =?us-ascii?Q?VnJEPMvjJCuEMqRJDvsSg6SkYbixGYWHHoIDoUsDW/XXqRbmv+RNHgJ8ncjF?=
 =?us-ascii?Q?ggoIANVsFvj9zIj4YHsOe5QOHdU6ilV00dU1AHpoMVDswIv9P9aBIpFuwOSV?=
 =?us-ascii?Q?gTVsxtJkpWUY/chD/tTOrDeLqh+4lFYfZVSvy6tTGxjCKG0Cv+ih/G4o4yDE?=
 =?us-ascii?Q?tBwa03+jTb8R339ekkRIYRYTqwbkXv0GSf1AaKQu9Jukl743Xp18DrLPPIUJ?=
 =?us-ascii?Q?uq55lOvlZImq3jWBundKTAaCrL/gPcuG7WSCo8mBcUXFrttwr2wz96JJctDz?=
 =?us-ascii?Q?nmIl1Q1Wp/7jGJ2KY7M=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 01:56:13.4416
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81b28e65-15bd-4a7a-46da-08de467d725f
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CD.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB6855

On 25-12-19 21:35:52, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC,
> built-in 12-core 64-bit processor + NPU processor,
> integrated graphics processor, equipped with 16GB/32GB/64GB
> LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe SSD,
> as well as SPI FLASH and TF slots to meet the needs of fast
> read/write and high-capacity storage;
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  Documentation/devicetree/bindings/arm/cix.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/cix.yaml b/Documentation/devicetree/bindings/arm/cix.yaml
> index 114dab4bc4d2..e2cc0bb8b908 100644
> --- a/Documentation/devicetree/bindings/arm/cix.yaml
> +++ b/Documentation/devicetree/bindings/arm/cix.yaml
> @@ -18,7 +18,9 @@ properties:
>  
>        - description: Radxa Orion O6
>          items:
> -          - const: radxa,orion-o6
> +          - enum:
> +              - radxa,orion-o6
> +              - xunlong,orangepi-6-plus

The description is for Radxa O6, would you please add one description for
this orangepi-6-plus board?

-- 

Best regards,
Peter

