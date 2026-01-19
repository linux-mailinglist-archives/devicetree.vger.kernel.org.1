Return-Path: <devicetree+bounces-256609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C736D39C36
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B8BF300D145
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA01721E098;
	Mon, 19 Jan 2026 02:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="qKIufIGX"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE3721FF23;
	Mon, 19 Jan 2026 02:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788202; cv=fail; b=hBqHG4LxKOt4HUvkmrChSEXm3yr5UjOxfXF5arCggJHpiOPL5uFnO9zxNdv44J+i84RZSrNPIo5ClP98TaH2wSHxzdpmMm3kvPy+0gSIyQtRnuvvtDYNW2sQPZLcCvSTQGEeq8qnKY1OkA/gnLO4Myq3HKU4idX5W0ntURnZ5j0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788202; c=relaxed/simple;
	bh=TTagsMJj8T08reWH5DmaelVSCp/AiN0Ct9/084V9RVw=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=akkSZ8OssTBCiBlf3i5Y2wonybaDhxvAXirDhd2Xahk3FIQ7w9yFEAo+9gosive6BQj06JxrOrrwFTzLOYDaqnp66VkUIj7YSt2W2kK0YwrNpv/WDam3kgoCShALBPL+HvYumUXyPJS0Rj7UsM1tEqIoV431SGJTBXdpfrtGEv8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=qKIufIGX; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mtEvXApOC3poVpeTXhXV+fI5f1KUrpz0mfS455iBt9YBYN1/gpcVS7sv37BT880s2ycxG8xPDliwnvarj6YFU8yUHp0dl7QsOk0V3GoQoH+gStAxqNVDfV+50xhiIDpWnLz4U58WjbwKe+ntq8iEA7A0YVGnj4SuMPSfrsdVONPH/UWezdp2LEijUKk3ASY+fv5jnhTZHlnu2kWV29dFcppVFKq19ILn9Y8qTBI4opVPqI4F3whjcTHSSyyrPEUKW4URUNFnGpTrvS2lTgvGvLPrOmWQ8we7WjIhO1qX77q0VV0CwbgnuV9hsH8hMVIvjMoxBqQYuANafqoJTrxD6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FDyDyFO9ZtnARXFUNnGuXvy1Xt19/Ye0dWj07WbGZSQ=;
 b=Lz0sbQgkXNQvimDUd5JxVW733pd7bSquxBPubgeZwaMvMC/QJE4wgl3/zfUJBG7UCdW2LE3fN6b6MOHglKG1B0FERBw0x9g6IdDvoqXxEpKgwyGC8T688/dYPKGpjlXjZu9tApGc7nbhdsIQiok4fUnAJ+kC4f/8nbVbEGuX+2qgV4hJ63x3eMBG+dbXJXVvyHA2ihVqhEepnmVMDds5sVu67qpQM/WODPfvOJGd9BspwjZLhUvm2P+NKbWbOU2MuJtpBm8w8zyTcbu7HvkUVaWSXGWKHMLMtcM/5xO2Tsbqs1lKw7fO4aXTCgKSx4+/9Yp7CIn3BSAnwGjQYnUjJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FDyDyFO9ZtnARXFUNnGuXvy1Xt19/Ye0dWj07WbGZSQ=;
 b=qKIufIGXQXwMn6wixf2e7l3b3mz/GOkvljQvSMmuuPIVvM7DjGuSBhA+il5oBrgmkDTSgjucQBQWYG+TpM5u4TamSw1US6hxfcfdx7NAF8xqEcBhbcv84VsU1w+dJunthBLRPtQneqGLY55cmtZrVYp+L+qY2x1iHNUZLde6KJE0ZNspZ/pYgRfsfi1uOicmSwKjvmWUsj4fVlwbvJbFrTlmeC/QLiwGDSkco1kPcpnvXKQub7Qyog/HRxkYpSAi9HT2xeVZgFu6C5koMiKRWczxylP0ytoKU1TSMG1+6ntEIL9/KUSkBaPuob3PeD8RyqZ4yPHSmSIx1Kd0Rc3mEw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:17 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:17 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 10:02:54 +0800
Subject: [PATCH 1/5] of: Add of_property_read_[u32,s32]_default
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add_dt_default-v1-1-db4787ea7a9e@nxp.com>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
In-Reply-To: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG2PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:4:91::20) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DBBPR04MB7658:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ffed54f-51a8-4b26-12fb-08de56fee9c7
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NjBqQ1RzdkhoSEJ3UmhKWUF1MllYZC9PZ3FLeUdMTGgxb3p2QlFHL09ydVN4?=
 =?utf-8?B?SmpVbU9yZnQ2M2xWdEVVWGdieUxCVWtHT0pNaHhMcUZab1J4U3ZxbUFFUWIw?=
 =?utf-8?B?OCtoTHlUdnBPS0d6TWhWdVpLUXNGRVE5eGdiQWtGTmJlSWUvSnBSLzNQYTRt?=
 =?utf-8?B?cTdOTzZiNVRSNUJ2UDgrNG9FTGFqb3RVdFE4ZUlBTFdkL2o4b0pST09BR2Vk?=
 =?utf-8?B?bjZEclo2QUdxbmJJSmJHSEIvbmFWYmR5alpGY0RZdUFCYm1SaEwwS3BwQ0xm?=
 =?utf-8?B?NkM2U2RZTE1TKzRKVUFHSFV5UzF0ZTRuTHNOdGQ0eWJNVXEzSU54R2h2TVQ3?=
 =?utf-8?B?VjFsQXF5bzY0Zk1wNmNwQlhqc3VCWEx3N0hidXpmam9ONGtVcVRsNE9nOGl5?=
 =?utf-8?B?dXJlRHFNaU1BdWZSSi8rME5VMlBERXFVS3pFNnNmWDlmL29XZFJieUJKNmk1?=
 =?utf-8?B?NWhhM2s1ZHVnMlJRYm5NcXBQdmhrVmF1ZGNZMExvL2tnK2xURkZWSTJFbzN2?=
 =?utf-8?B?aVBVeVJXWVl6R1hMNXQxWG4zc3BUc3lkNHJmYzlHNmtmWVk4TVVZQ3MxWDc1?=
 =?utf-8?B?NXUyeDRRUGZoUU5BRk5HNFgvUkJ6WGVtYkFCSTlQa2pmVTBIaGQ2d1paYUEy?=
 =?utf-8?B?eFhnbjhjQ2Z2QTJZWlpJQ1NBd1M1K3ZQMDJFQjV5YTNmNGlXSlAvRU10N1V3?=
 =?utf-8?B?dnFxMU45bDUwVThtUTJkSkVCNjRSZDh5R01xclBBU3lienh1aHFyZGJiVUo0?=
 =?utf-8?B?VkFsTmwzZEtWQ3dBNDNLZTdrcXQrUmJlcmRoQlhxcFVMNUFwRS9jbitFUzdP?=
 =?utf-8?B?S3NOaVdpTURITUwreWZtNUFJandZT0R3NmJqOUpDNEMxK1oxbC9kOWZROEJQ?=
 =?utf-8?B?NWd0RTFab3hZZ0pBUzI2clgwK2dxSG82eFZBMVRydlk1OXg2WFQ5cmREbVFp?=
 =?utf-8?B?ZG4yK3dITDhYNkZyRGxoWGhoRCttdktTcm92eW5LTit5djZBS2JjQkpjV0RP?=
 =?utf-8?B?Q2Q2VmdVOU40ODBQUmQrWWtDdWRsU0tWOUIrc2cvV3N4N3FpV3FJeklWNzA2?=
 =?utf-8?B?Q1BUU25aZ291OEtRQ0E1ZmFTTTNodWxEZis1WWtxRmFNUTVGVWdGUE1oSnll?=
 =?utf-8?B?NmJuWHdzdTVlbi9TaThSQk0rNkhvaVFjMWVDVjBnSFhMZGhBSnNweHpyQkta?=
 =?utf-8?B?WlY5MDdFMmF0YjBFc3JHVm5UYW04Q2N1TVErRXZCL0lCOTNINEY1MkEzWnB6?=
 =?utf-8?B?UXM3cGJoRjBkN3RyV1BRcXdFMnhaeFU5YmpCRGVmOHNuQnFMcHJpbWg2Y0t6?=
 =?utf-8?B?ZlZLbXFvUHc4OW12MUVGakdnWDhjZ1BqcHVXaDVHaFJFelpWQkJNME50MVpC?=
 =?utf-8?B?OGE1TW1aN3FJcDlNbGxBK2ljeFd5UHNNdmpUdlVtQWFwdVBRRnVnOWkvR2JV?=
 =?utf-8?B?dFo4aTVsK0s1SDBVdUZGYTFWOTFnaEw2U3NOUmcyMWthQ0U0QzhJRFhNTTY5?=
 =?utf-8?B?SVNkQVFPR28yNEFhWHVHWEFza2t5MHRlUElXUXFUeWxSSmh6WWwwOCsydFVC?=
 =?utf-8?B?WXovNk9GZXFsRG5XcHF3ZTNnRWFCMTdKeUVSQkt5YzVxcjZCQ0NLZ3FUc3Fv?=
 =?utf-8?B?dmNtbmlZQkJhQ3VmZGs3M2FTQXA3QTZKYWZONkRMd1dhQzhDSXhXZ1VoTUJu?=
 =?utf-8?B?QWZkajFVd3YwU2YwS3h4SEt0YXhEY2x3TUR0K0RQUkpQRXp5QWNadHk4MkFj?=
 =?utf-8?B?SU9sOGtmSzg2M1kwMCtFcXNNaCszRVRwSmZ0MmtCZ2EzKzBSZ01SdytwR3lE?=
 =?utf-8?B?azJieFRaRzBLUTlXcjFkYkNiTkhFWjNYMk85dFFkYWFHdjdOTEYvQ0J2VXda?=
 =?utf-8?B?bS9yYkZZWFViTzhna08ycTR2VlcxVGpHNkwybHRUUlRObk1IbkhkWGxzZEhM?=
 =?utf-8?B?dUhyVTVGK0ZtblQzUm5VNW1laFhQcFV0bnhPcEVSNndnM1pwQmRyVTVNUEFX?=
 =?utf-8?B?RjFiekVVZ0FHRjB1VjhSMG05R2tzVTFZbm9kb3NhclArVHFxM0EvWjFmOGNI?=
 =?utf-8?B?VEVMcUpoQWR4dGxGL09nR0tEN2hPdS9yQnFSRzJDcFZ6UHZxclczUy82ZGl5?=
 =?utf-8?B?S1hHRGdhYkFMTVplbitCbU5tSmUrRU1OK24zUDBqVWlPY3p5TDBzK08wN29G?=
 =?utf-8?Q?enS4VIMvCue4m6ljeynPbPQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cVBhNEpWVUlldDBvNTZxc29zU1YwNUlxZ2VHR2w3VFdtcis1c3BGbCtWZ2hV?=
 =?utf-8?B?RE9jc0orZVhvaXowam1IVEpoSTlRWnNOYWo5YmNOOTc3Zkh5Tk5IaENOdDJG?=
 =?utf-8?B?OEUrNUJxY0dqUlJoNEpxM0VMbGdPMzdkL1JWSlVBTitRRlBtSHlBeDB6T2Zm?=
 =?utf-8?B?cTQwNDRPRUZ0eFJVRHQ1ZDBhZkRFVm9hMXFXT1lIRmNEUjdJRTZrS05VUUlN?=
 =?utf-8?B?Q0pXTm9YNHhyK3JzRkpaZ29mcFYySzNiWittOVVDWnFjSmVGRGw3dFlrNXE0?=
 =?utf-8?B?aWtrcjMrSW9DbWpLS1lEYUlrY2pBMFZRM096SHRnbXV5VlpxdDVJekM3a0N3?=
 =?utf-8?B?WFIvRDhLNjJBT21QdUJZWlc2cXljbTJCQjBEQXVjVXprR3ZHVUhycXdrUkI2?=
 =?utf-8?B?dG5WY2NmelR0OExMZVpkc3dFdzVNaTBzZm9TMWFTRXZwL3hWU3dYMElBdFhQ?=
 =?utf-8?B?T29TUnBaU016Ymo0bkJPbmEvck5wQ3RKVXlBVUdpQTYyck1RaTduQ0p3VFZK?=
 =?utf-8?B?WnV1NVpHUm1BM3dnSUl2OTZsRzlLdWVZWXlZQVdDY0xWYmNCU0lXd2lqYUJI?=
 =?utf-8?B?aGVLdDBDYWdNbmJzb2RxQVJxa3ZRcTRNU2FaSlJNekNZNllNcVpwMUgwMGFL?=
 =?utf-8?B?Q2QyRVFGOUtsL0plRkdHbENGdUpCYVVScytTTFhzeFdwR244dWYxZldNU3VO?=
 =?utf-8?B?Z3o3R3h3NTlOVzR0d0lPUU10a2hrTzhhMksra1dRRDFHOEJGd0V5UFhhb2Fz?=
 =?utf-8?B?YUtEQ1ROTGZvVFFYdmRiL0htaG5GU01vM05zcTh4Znp6eW8xV0E1OHBUeEFu?=
 =?utf-8?B?ektnN2cra2Z6TUlvR29HUXRaT1Y4cWFRZTBUcVZWUG92U2szc3U4cElwT0gr?=
 =?utf-8?B?WW9WNTlwWllJQU5wTDMyOUdXaTR5YW9wYzNCbWVTd21BQng0cGdRQ3UxaTd0?=
 =?utf-8?B?Y0VaMGJHdEpMcFllalR4dmhYV283bDhsRUdWQ0IwQkdjbXR5WlBhTlp4aHE1?=
 =?utf-8?B?L1I3QWhxSGI4RCtJTDhvTjZicVVjeG1lbytnYzhyR1gvbFJhaVVqQkIzSzZR?=
 =?utf-8?B?cXdUaWowTzVRQkpUc3ZVYmdUUUpZcVE2WDFMVm4yTDM3VC90aG1Sc3hEU08v?=
 =?utf-8?B?alh3TVVnbFVSaDVKOCtaL3QrRGVnZWFHZkZCSUZHb1NIR2pVRzBCb21lbzVJ?=
 =?utf-8?B?UmkzZkJJT1hKbGc4dlBjbFFMSEZodTZFL0VyY1pPT2wxOWNIM3JxR2FNUFZR?=
 =?utf-8?B?NXN1aXVWNHZabGV5SmhGQ0ZLSU4xYnRtWk1YTk94SVlzNzJoK1FBQkFoaFJG?=
 =?utf-8?B?OXpIeTRLODNvbGxSZFpCSnR2c0sreE40ejdGMDFYd0ZNZ1pESjhYUE1kK3JY?=
 =?utf-8?B?SU5GYnUwOHpNU0tyVzJhc1RUNzFyeFMwQXlQVHhweDFTVWRhQzRmeTdscXJ3?=
 =?utf-8?B?OHlGZFIydW5PakdQbVAyZ0Q4QTFjMCtkWm5vZ3Q1U2tzWTVUMERqemJ1eVRv?=
 =?utf-8?B?OC82dXZROTJMWFZKc1lYdkJpNWtlbS9mei8xWlQyakVod0ZYczhlNWlubURI?=
 =?utf-8?B?QkU2em5DRzN2azBmK0hTSG1JK3hvdmJCaHIzMHdLY1FGUmdmNFdNeWRYZ2Vp?=
 =?utf-8?B?Z2M1TEZBTHhUY1V6ZEkrbkswNjF0Y25QNGJLY3NEOW9qS2hteHlFUk5SOUo3?=
 =?utf-8?B?L2l4RHptbHJtSUNod3ZObDFCTncrRzY1TWhoWVE0MmZQZzJIOVdzbEVKZjZX?=
 =?utf-8?B?MGVxZ1hTMktGa3R0cFFlbjd2MVZWb0VmanROZC9ibGVVVU1Uc3NIZy84b3hw?=
 =?utf-8?B?bENSSU1TMy9GbDVRbUkwc3hPcFF1MlE0cjZKUUdjV2cvVlN2SFJQL3JXRGt6?=
 =?utf-8?B?dms4b1YvZGwzUTQ2YXR1SmNDRHNiNDBiWEhKZFNlNEpYK1lMdWpsSStDb1c2?=
 =?utf-8?B?K1JHcjA2RHNaZ251ejI0RjRhUStNRE83VTN6bjc2VTltSVVXQW9xTDhXN1Vz?=
 =?utf-8?B?cWg0L1RWKyszdStXUTBadk5Kbk9iak5qdDZqVGQ2eW1IajNpSWUvMXRVckJo?=
 =?utf-8?B?dFBPZU1zWDRZOXBqak9EWkRVRU4xNGNlN3lqdzhGSHFDbElmUWNuOUoxRUNX?=
 =?utf-8?B?cVdmUGwvWjJLNndHeXlOVmtETHVKOG5Uc1RRbVR5aEdXZC9qSkZrQmlISDY3?=
 =?utf-8?B?TTEzZjhlN013WGdkeHZZNEJ6Y2NjZ2JTalJvU1Z2MTVIb21SUGhGam5kY2Z3?=
 =?utf-8?B?MGRFckQ5OVpCRVdSMlJldk82dCtGaFQ1SEx2Y0t6S1c5NzNWNkQ2Um9CK1Nk?=
 =?utf-8?B?NjVONWgvSXB0cEg2Z0RTMjk0d0FMTXk1eWxMUnk1dHJrOE5xdkZsQT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ffed54f-51a8-4b26-12fb-08de56fee9c7
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:17.8362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8qweGhhfTIaBjrfNbrZ3bKwn5e9c5czZm8udq2f6TGqOshi8CqepwkXcPkiKgG/gVUoWSbmRHCWMdVlLogg8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

From: Peng Fan <peng.fan@nxp.com>

Introduce new helper functions of_property_read_u32_default() and
of_property_read_s32_default() to simplify reading optional device tree
properties with a default value.

A very common pattern in drivers is to provide a default value and let
of_property_read_*() override it when the property is present, e.g.:

    Y = Y_DEFAULT;
    of_property_read_u32(np, "prop", &Y);

or equivalently, checking the return value explicitly:

    ret = of_property_read_u32(np, "prop", &val);
    if (ret)
        Y = Y_DEFAULT;
    else
        Y = val;

Both forms express the same intent: the property is optional and a
well-defined default should be used if it cannot be read.

With the new helper, this can be expressed more directly as:

    Y = of_property_read_u32_default(np, "prop", Y_DEFAULT);

The helpers intentionally ignore the error code and return either the
parsed value or the supplied default. They are meant for optional
properties only. Callers that need to handle or propagate errors should
continue using of_property_read_*() directly.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 include/linux/of.h | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index 9bbdcf25a2b448ba4ec5ddee8b35a105ca4aab8b..ef9f63755b20722969b682eae98a0dbd8cb21d58 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1450,6 +1450,25 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+
+/**
+ * of_property_read_u32_default() - Read a u32 DT property or return a default.
+ * @np:		device node
+ * @propname:	property name
+ * @def:	default value to return if the property cannot be read
+ *
+ * Return: The property value on success, or @def if the property is missing
+ *         or invalid. This helper intentionally ignores the error code; it
+ *         is intended for optional properties with a sensible default.
+ */
+static inline u32 of_property_read_u32_default(const struct device_node *np,
+					       const char *propname,
+					       u32 def)
+{
+	of_property_read_u32(np, propname, &def);
+	return def;
+}
+
 static inline int of_property_read_s32(const struct device_node *np,
 				       const char *propname,
 				       s32 *out_value)
@@ -1457,6 +1476,25 @@ static inline int of_property_read_s32(const struct device_node *np,
 	return of_property_read_u32(np, propname, (u32*) out_value);
 }
 
+
+/**
+ * of_property_read_s32_default() - Read an s32 DT property or return a default.
+ * @np:		device node
+ * @propname:	property name
+ * @def:	default value to return if the property cannot be read
+ *
+ * Return: The property value on success, or @def if the property is missing
+ *	   or invalid. This helper intentionally ignores the error code; it
+ *	   is intended for optional properties with a sensible default.
+ */
+static inline s32 of_property_read_s32_default(const struct device_node *np,
+					       const char *propname,
+					       s32 def)
+{
+	of_property_read_s32(np, propname, &def);
+	return def;
+}
+
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
 	for (of_phandle_iterator_init((it), (np), (ln), (cn), (cc)),	\
 	     err = of_phandle_iterator_next(it);			\

-- 
2.37.1


