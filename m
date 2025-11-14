Return-Path: <devicetree+bounces-238412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B59C5ADDF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:02:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 153873449B5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925F61D5174;
	Fri, 14 Nov 2025 01:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="Ow8U2Xbj"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012030.outbound.protection.outlook.com [40.107.200.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3647262E;
	Fri, 14 Nov 2025 01:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763082138; cv=fail; b=DL41NVbemziXvkL6KSCL81/+4DYN7kS3Q/8EgiARTiEhxuF181L2vMwci8r47DbJrIfIXxp3kcyGy37i4MoSIOTNtqZYLxkReMuuFk7qF/ozKdKKI3lR4pzwi1KZxYZRkHVSBv+0v5dnFG3P6vWZCTXoGM7t0OeZSWVl/Y1Wy24=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763082138; c=relaxed/simple;
	bh=2rJ7JFtyFPTxB8i7uxqnOoFBJL8e08pl68/3698qC18=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=eRsgbJz6WDDrc0gQqT6dFkLXwwcFWM2zngD4I2UiyV3pFB+43YBvMnQ0m3iCRDUf2VAaJivCc3wDJ3Ls0djZlGYSNWeP49foq6U4Mwa0Gv7Ev2oQPEx3wPwkp4KKTr/0lgL3Grk+/ReXFuMFfaZYUqVJNByqES5j0+PaczX6MvY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=Ow8U2Xbj; arc=fail smtp.client-ip=40.107.200.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nb+PcW0b/1vBlZ6OvBN5snQiAhhUoMSHdBT36Q4eman9quOqd+FlwpOqiq0wDb1CK2Fs/3NnT+OIjPJAU/j8uJ0SmEFxsJD3JZo3EDCOc23rai6bQ0wZRwf/eY7jfEXUrviJoWN4cS/K8p2TSc19vl7N2xsAytWtUV0OmEebbZTcJPFsosyegjFkS6RVsid9texIJ/LiEyilrtoxTbxGyxHItAwawrr9CNQ7ZR6ydiTZySDOcV3cn2cukHCONY4NG3cv3epwMVXh4kdhqJQMNr/2A2b8G2rmMowq6/96iRZXy12Q5yvkDbXCycjdAMX/9bm9WSsQ12cO1xnINAut0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Hj/LD5XY1FZi2lDnpdxF/U7TDOuYCMmlT9tVFe1T/0=;
 b=jhE4NTe8xNUGLIhxSSkN6Fb2/pus3/Fpir72AQyIybggskPftgoTbyz7pf2fLJHZeeFh7O02g4UW8I+7d4gtrN/szoK5JM7tNs1IlQHB2hQqglgrfoftLcbBoQJs60+DBG0aL6kisQB7OEkJAM+ESp43Qs8PMwwVwtbLpkKbZabbGE6ob2e4qeBiWadnpWEqrQewFT+QJOnDcRoW8+K75Q6YMSLE1ESibI6LT4dJeiGWf8kFYBe63XwHBzjqGPtVL2gwPPQ3ul4GFvLmTf1D2ua6U2tJE/od2grPE+jxOodyyKNGcDfFbUoqawFQiDaUYCO4Ng9qDs+S6pDjMDF1NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Hj/LD5XY1FZi2lDnpdxF/U7TDOuYCMmlT9tVFe1T/0=;
 b=Ow8U2Xbj1vjwxiLp+4xsqnRZcqya59Dt5dk8KDc8FzJDxgrokGCUJHHFZe74uL0v692yeGPsTz7ahbf54LDrBWqJvAbg9mUMrLdKMiSt4inHLISl7Cayqy2yApTWoNOaRWnprwzyLTIOUbwdkkpsloFjF8d39A69WAaWYTE7ZrHFpJsIBw6/XCDccJwlwQK+FsEN2x6v2U8BrkehVA+PtDy50BwnOnejLzYf/qqDdDSdSPeZUcq0jEOusNVjo5d+70wuwhz+3ljqoonl2L4tPX7xp/ZcT8bivLjCRfXxIcQlbdFjKDG+mqb0h7950uDNZsi2TCFeZRsWJWDvA9sm4g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BL1PR03MB6037.namprd03.prod.outlook.com (2603:10b6:208:309::10)
 by CH0PR03MB6033.namprd03.prod.outlook.com (2603:10b6:610:bc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 01:02:11 +0000
Received: from BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1]) by BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1%3]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 01:02:11 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH v4 0/2] Add support for Agilex3 SoCFPGA board
Date: Fri, 14 Nov 2025 08:59:51 +0800
Message-Id: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0038.namprd11.prod.outlook.com
 (2603:10b6:a03:80::15) To BL1PR03MB6037.namprd03.prod.outlook.com
 (2603:10b6:208:309::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR03MB6037:EE_|CH0PR03MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: fec6526c-d714-4f0a-b65f-08de231970d4
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MDVOQUtyZVN1dGJveEVQTFQxMHZoYjJBU3pDb3pOa0huRE9NT1VwVmhnZmhy?=
 =?utf-8?B?T0IrV2hQUlNRaVRWRzU1WEcwVG9yTUt4U2tFK1dxZkd5dFIxRm9RYVJMbUdi?=
 =?utf-8?B?SVNQU2RmV0JQT1FLeVllbG14OXQvRllsS24yRVhlRk9CTVRpSHpSd0RwaEhZ?=
 =?utf-8?B?ditGTDZyMDgvSjdiMDg0a2k3R1hjSDRCWVBNODBsWUo5T3VXa09wNXdkRVRo?=
 =?utf-8?B?LzhmY1VBNzFuVTk2ckRibG1zLzVzOVQ3VllnOEJ0WEljOXRhR0V2TW94TmdF?=
 =?utf-8?B?Q3M0S1UrdnRINFh6ZUJrdU9qT2l3Yk9vVGxwOTB4S2ZwbVJjRjlRa1RtQTlC?=
 =?utf-8?B?U3NrdTE3ZisxWkdXMTNRVks4V3d5alFYdUFpSWZyRi9lZWtPMWZ1NGF4eGI5?=
 =?utf-8?B?NTJkQnB5Tm90YTdUeGFDNkg4NGlCWmpGTWVhZC9jL2dDcmY3OERjQVhjeEcw?=
 =?utf-8?B?KzUzNEp4K0dQamNpekdibEV2VFkrWWhVMHdWL2kwZFBSUzlwMy9MOUdVQ3BJ?=
 =?utf-8?B?a1pXVkZhczlROWRRMlVUTHB4cG10QnpRL2grOXBMWXhYS05uUzd3WVhSZzVr?=
 =?utf-8?B?djR3bHpuNCtaWDBibHN5MDhIV25BQWJaNTVVeE5OK2xuYm1xcFZkczlQWWpy?=
 =?utf-8?B?YXc4ckFMR1YybmF3VXVGV0x2Yk1YNXVDUEwzWUozczUxcW5RZDh6ZWoybVZL?=
 =?utf-8?B?dGN1QU1GZ0lzcVorbTZETjJYNkJvVjhYaVdQWDdOUDkxdW9iSjRMSDVYMlJW?=
 =?utf-8?B?ZTI1SktiWDdvd1NGYkY2ZUJHd1grUGtBZ3FIYkNVQk85K0h5UkN5U0phSnZW?=
 =?utf-8?B?eGl5OGZJT25qMVE2MklWRDE3TndGY3JvVXlQS25IVFkwdHliZSszNGpJNTd2?=
 =?utf-8?B?blVGaHhNUWdyWEYyTk0wSkVyMUhoam1USnl2dW5RUWZUSmdFdUtzUFVzUmt4?=
 =?utf-8?B?MW9Qem42WVVFcVE1NThzY1hpc1NkZ2MvSTNoWkprTG5lQWJvQXEwL1Y2VVlt?=
 =?utf-8?B?RDJsZlY2SDV5ZGQ1a3c0emMzTEdtdmU5UStnL1BBbXBHdHR2QXFKOHNXNm4z?=
 =?utf-8?B?K2wrZkpMaExRaG10dHhNQ3hDZFlTdkMvRjZUU1pnK0tlSU52Q1IxYU1PeHoy?=
 =?utf-8?B?VkJSekkrbmsvamdyNEkyanhjTVYwVVBjM0lYYkxOS3FsaThORTM3eHdDVU9Y?=
 =?utf-8?B?cnh1WjZhMUxyOFcxdE1YcXZsWHkvRCtsaDlNNmNBRWd2eHZwQ25QazZ2bEZ2?=
 =?utf-8?B?TzZNdG00cGhQQXFpYm82cWNOL3pRVWdRUWVqZ2xFa3BoNFBvanJSMmw2Yndu?=
 =?utf-8?B?aElWczBIVGFRQTZScThPdWxvSFprY1BZYU91Sm4zbU1DeGFGQTdhd3Zxd1hl?=
 =?utf-8?B?VXNZRHFxM3k5ZnQwdjJHWkNrZGZ2Y1l0c1AwU0d0Vjh3Y1kwM1lOVUllYzFw?=
 =?utf-8?B?WmFUemhZemppeVVPam44WkprSWRQQit5N2VnVEYrSG1tcTlaS2xHNmFkZSta?=
 =?utf-8?B?VGZtaUFpdUsvN3IxYk1INHBYdnRaOE1HZkFWMUdKNk13a29Hc3VCN0FKdjZz?=
 =?utf-8?B?MzkwZm9xaDRDVlMxalY3SmZRUmE2NTE4NEtwMi9LQWlVU2lLYit5bDNLL2s2?=
 =?utf-8?B?cVR6eUhaK3NuTHlnOHZqYnhtV1hRNFRhVWFiVWl5ZTl0MmwwSTlTYmJvYWVC?=
 =?utf-8?B?L0Z6Ym1yVkNUaVNaelBMNVBqVm00Y0swdWFFZWovcHJJcGE1THJnVjdpYThi?=
 =?utf-8?B?eUZEdDIzYnJOckJwWHU4L3JyV0V2b0JOMlBlM2ZLWERNUWtzMGsxTEZxbXps?=
 =?utf-8?B?MzByeGtDaHh5YjZ0RUZ6SWRWNXFhSm93NDEvN3VYR1VCMURrZFNKYm5lOTdF?=
 =?utf-8?B?OW1ZNmRsV25qNVp1REpmKzRjY1RtUTRRb3F1Y2o4UE1GOFBvOGlHY2JUNkRr?=
 =?utf-8?Q?4CgQqrpW7yCtYkkokeYpzGlSd1oguiCg?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR03MB6037.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OUhXSnpCSllmQzMrUXhiWWd4TGlQQUpXcHFCaldFSzdKcU5zK3Jpdy9BTXcy?=
 =?utf-8?B?ajhocXJwYzhFNUMwUDRSVnQ4R1dyZ252bTBxNUUxS1crclhFM2VZdXRZNHZa?=
 =?utf-8?B?cmhTbjgwUk1OMWlTckFRcmxuUUJZazlCQmZqM0VwWUVFNnlXdEcxRWtDZE1E?=
 =?utf-8?B?aGRpSFJ5dkUvZlMwOVBYaUdPaGxsK2VMVGJEZlZFRitJQzZLMzcxS0czUVN0?=
 =?utf-8?B?TXRvU0RTWExKZ2Iza0QwcEJzVDArK2gyYjV2SjNUNm0rUGpRbG1aTE9vYVJE?=
 =?utf-8?B?WkRCZkZPbGJER2lodVhOK2hsU0lOeFhFWkp5cE9MK09nU2s0Mk56YTd2YThi?=
 =?utf-8?B?ZGZiNXpDdjBsRDA3eDhPN3MreDVmYVBjaXB3SUZiMmFJenIwaW8zUGo0bUJG?=
 =?utf-8?B?TkRDK3Rra1lObm8ydHI4a0NERG1SQ3B5S2RsWHZQZSs0YzNmc1MrVWpYdGlo?=
 =?utf-8?B?RzlrUGlHQmZodThkL1lOMzJzdm5Tb2dWNENxRTd5elZ4S3c1bThkaHg2UXY0?=
 =?utf-8?B?a3FFcmpDcy8rKzdNMDJSZWRNNmJEM3FCTWpVVWM2VnpGbk56enFRSFRScFg0?=
 =?utf-8?B?UmFBNll1ZE9QZlZxdjQwcnBQQ2oyaVVXckVsNGhkSTZ3aGJkRWpiRlBkSGpJ?=
 =?utf-8?B?V2xPRTVZTkI4d3VBd251TU9qeUlxeFYvNmJqSzhRSmt2bkFyeWFRVXlqNS9C?=
 =?utf-8?B?OW1sT0dqVXI4dFJCSDZXMlVGNVprVFRuYlh3U0orOUxkNWEwV2ZMaWNRNTlu?=
 =?utf-8?B?WThOakJuVTBHbU94QUViRUp3R0RVN1FoRWNBU25ZSWltVzAxRmI1N1RRNmdZ?=
 =?utf-8?B?c2JObGVKaTQ4WDdBb21IeUNTRVY3ZWNDNE1lbG9iRmJtcnI3REE2Z2svRU1t?=
 =?utf-8?B?U1MxaWN6Z0tvak1rdUVBbXo3aUFrSStBd0E1dENaQmNIczFhOGRzQy92cloz?=
 =?utf-8?B?RkRhWXlWMlFnZlJXeDJONEJVamdqSitBQURBM0JiOEc2ZVpaL1E2TFQzcXhv?=
 =?utf-8?B?RFlSWFVqN2RSOTNyWUVKYmZJSm1SMU04WTJtMVVEeXUra0pmQkRhZytXNzFH?=
 =?utf-8?B?RVVZcW82QWJQYjYycHFpMXUrVW55MFRwWkFya1hRSmVROTNtcnlLbmR0aXVk?=
 =?utf-8?B?UjFYejVWWG9EcjFMWERBelJzYTd2SHlwOHgyT2g3SkRDUWtSN0dYZzJhbUlT?=
 =?utf-8?B?RkR4R3J3QzBDd1h3Wk5lQVNrMXhoMTJkaXpUWHk3WHV4dXNia0tId2c3b05j?=
 =?utf-8?B?VlpMMUp6V0IvRVcrWFFIY01SVzBtNE8yUVIrY3F2L3lTTXN1eGpVSGhUQ0sw?=
 =?utf-8?B?NzNiMnEvd2pBRnZvbkY0bzRFWGxQUnFVYkxjcW5WYjhjNkFnTUtmL0RUZmNi?=
 =?utf-8?B?aDFUaUhnQjAzM2NrTlErVzYvTlU2dWRVdk9jZzlYQ0NDZGt6VEpiSkR4bDZW?=
 =?utf-8?B?L2hkbjBWQnBYeGRHUTlCZkJabUkyLzlKdWc0alFjbDIwbnpyNjkrVG94RmRF?=
 =?utf-8?B?K3RKOWhyc3ZMQ1liYnZnc3hQdlAwREhKaC9ORzdCemhHQ3dTMHJKRHU0aWNp?=
 =?utf-8?B?dXArN0JMcmk5YmV3TENYSDk1dmZrUHZ6VkNjMkNwRkpobWtTM0NYVyszTHZC?=
 =?utf-8?B?UFRjV0hYZmFMVHNHU0R5ZTA4WUdDSGZ1VVQrTElGTStGc0k3ZGU5NXRSRjdy?=
 =?utf-8?B?QzNjZjFqM2lGVkE2TklnWnppSzY0WTh5cWZnQ2ZsNjRmWFdrM3I1SE82eTB3?=
 =?utf-8?B?alVnQ0dMbE8rVUNDR0VWOXo5TUtiQ0U5U29NZjJKWmZYa3c4ZWVjeUlmWWNB?=
 =?utf-8?B?MmY5ZWpDWHB1bHlrV1VYSVR5OUhqR3AyTnFqVDJHTHVaN3hpcTNIWUgvaWdS?=
 =?utf-8?B?ek1za3N4UC80YU40R3RRSWI0QTBJNWJiZDNBWjN4cTZ5OERHQW42QmViVjNL?=
 =?utf-8?B?VWpkeXBuQkJSKzZqNlM4bnlOOVFoV3hRc3VRbERtK2VvSkU0bXpHYnFXeDJF?=
 =?utf-8?B?UmVRZnA4djQ1R1pENkxIVWxlWi9Hcy9KN2FNdVBLVWlXelJseUZYT2VBWVJI?=
 =?utf-8?B?dXJWcVhBNGRPVVNDaHJHaFB0QU1WeDFCWWpuNVN1Nmk2TjlvUkJTZVRwSUN2?=
 =?utf-8?B?eFZSQUtWc2dxamdBNkRpS2ZkYW1KaG9sNG9QNS95ZHJNQ2oyRjlwL1k1Rktw?=
 =?utf-8?Q?kzsi23KvHQrwqldMNhPMS/k=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fec6526c-d714-4f0a-b65f-08de231970d4
X-MS-Exchange-CrossTenant-AuthSource: BL1PR03MB6037.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 01:02:11.0475
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IT0TAhRl+fRIXuc+6Lw+HjW+N5W1gBjHy6ThDrmkfNzsBRrxD8TUmgL29ZCWo8+ld37B4J5CBbhR1ivVJMx6zmYyuB/GQwkzHxPkfhjPumMxhTZDjZflmIez9RWidQuX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6033

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

Agilex3 SoCFPGA development kit is a low cost and small form factor
development kit similar to Agilex5 013b board.
Agilex3 SoCFPGA is derived from Agilex5 SoCFPGA, with the main difference
being the number of CPU cores — Agilex3 has 2 cores compared to 4 in
Agilex5.

https://www.altera.com/products/devkit/a1jui000005pw9bmas/agilex-3-fpga-and-soc-c-series-development-kit

This series includes:
 - The addition of the Agilex3 compatible in DT bindings.
 - The initial board device tree support for the Agilex3 SoCFPGA.

Note:
The patch 2 depends on the series: "Add iommu supports"
https://lore.kernel.org/all/cover.1760486497.git.khairul.anuar.romli@altera.com/

Patch series "Add iommu supports" is applied to socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19


v4 changes:
 - Retained v3 Reviewed-by for dt bindings patch.
 - Update commit message formatting for dts patch.
 - Use agilex5 dtsi instead of creating new agilex3 dtsi.
 - Update qspi node parititions in dts patch.
v3 link:
https://lore.kernel.org/all/20251112105657.1291563-1-niravkumarlaxmidas.rabara@altera.com/

v3 changes:
 - Add missing agilex5 fallback in dt bindings

v2 link:
https://lore.kernel.org/all/cover.1762840092.git.niravkumarlaxmidas.rabara@altera.com/

v2 changes:
 - Add separate agilex3 compatible.
 - Use separate dtsi file for Agilex3.

v1 link:
https://lore.kernel.org/all/cover.1762756191.git.niravkumarlaxmidas.rabara@altera.com/


Niravkumar L Rabara (2):
  dt-bindings: intel: Add Agilex3 SoCFPGA board
  arm64: dts: socfpga: add Agilex3 board

 .../bindings/arm/intel,socfpga.yaml           |   6 +
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../boot/dts/intel/socfpga_agilex3_socdk.dts  | 132 ++++++++++++++++++
 3 files changed, 139 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts

-- 
2.25.1


