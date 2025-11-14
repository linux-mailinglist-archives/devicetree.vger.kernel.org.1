Return-Path: <devicetree+bounces-238414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EE1C5ADEE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 80BD734A0A0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD87922425B;
	Fri, 14 Nov 2025 01:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="hJQPJBH4"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012010.outbound.protection.outlook.com [40.107.200.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C439F254B1F;
	Fri, 14 Nov 2025 01:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763082144; cv=fail; b=m3CH5o49BazcDu2YRpyAWUVnU4P4nhgfdV2znc/4goB++1Fa44cPPIoQhOhxAhlbQy/6TDL6306DAv11y4IyrhbSuvWJTF8rstsuqBkO6fC/LIdXa1AEI5K86mOMbrbDexSCF09+F1KljLseqjHI3lXOjEwhIOrDu/PME8alNV8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763082144; c=relaxed/simple;
	bh=WsJaWpsJ5tGCveihczRZ6b9kx+BJItMhjzqLngDELJU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LOxfeTc/TQIhCtIA13Ee9u3grse4m7/ESmf4PCcg3mzw1Xv1F2JptLRQFhY/6796lqyPFsRHiALo/1nCIshITOZs0xMX0hZq6I5VVHooHHbo9Gh4fO8aBsD7HUADkX68B0VIPudhGYkkL/NL7QWgRFgIBsfvp79pmTQUfYXuL7o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=hJQPJBH4; arc=fail smtp.client-ip=40.107.200.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aBtYz0yLwPcbMLYB+nldpBy7vCnVwC/Qdpy/+COk+m7cmPCthaQD+ga4hrO08qQZaZV0W+G1Lf6Ux3Vr6gFdRs8Nqy4rf7K1yyt8D45IlHdyQO1tYyTSmI+QSVL8v6PoKHWRvFk4Yl0GAlqaXYpe8fRqNtV7Yq+Op470KQsK9sb5HN6mHP7Mi6c1doVT72+xZo+7k8M++YK0WPwl/nuSr5OePBMSGUd7lUKKmaaNla/SbmSlfhJiwVgPhHHIHW6mWmQz68+2jM6ckoEjaBCfhxNyFWIumPYrsg4G3wAFtnnIgn1sptxSzQ+oJppLGeWx94jZkdDGqzTeyPbNAol2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UF0ll1Y9CP0XqMCMC+4om85HFxgmrSYiGkaW8vkbM/E=;
 b=Abzz4Q+0j4Qz1GlBd0/6s0bO3cmw7h6wmrK/LRzajuhTLXjz0UUVhy9LJkASgkuK+dRKtSAnM0fujpiZ98YJtFA5D8VAHOUfiOVa+iEhs6eRWKlR4ONSfr1GZ2+Y7o0K5kx9m9MYKfZJ0MlzUdJ3fS3dmSg54BsSS0EKNLWysV/1e54foaAM8I48enJf0Nml/9ttSgwRyRmbz4dB2wWVVFRppl86B4i/mYVNyDlpdFbgb+wS+HliOgKv+PJ6Knci+7VKnEU7EA9cD7BtGxNGgGwilXQLSQd6djeONj4zNu9Ytdsck2TcW5AbzUzkAvyWfFlRsmN28jVbBh2ov+b++w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UF0ll1Y9CP0XqMCMC+4om85HFxgmrSYiGkaW8vkbM/E=;
 b=hJQPJBH4fzS1a2vCPGOci1WWSbmt8H4BpnrZbCP5nI3YysiI7qiPpdWD/denvdKlrdzkpQPbaxbDjDbR/feLc9Q+nNWHj4axdCt9qrxObwgST9GmNfbokalwWtWRGTEX+818COvVHG6XjkcQmBbX7l2R+Zn6beeiu/ag4EGL58+PllEx3omkxv96zgu5bxeYvOdpToPu2XxOauExEng5Z9DBLdkIhw9SeR8xjRTqCOeKXQeg9m18NMWjRW9hW8oUNTIxvpQN51ecQKeS/8wNnrPuAoKyBwXr3j6N2R78mKBp2Bj6mAfT4eVeeH6Iq1GOSoUn5/3HwTmFHE7kUFwF5A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BL1PR03MB6037.namprd03.prod.outlook.com (2603:10b6:208:309::10)
 by CH0PR03MB6033.namprd03.prod.outlook.com (2603:10b6:610:bc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 01:02:19 +0000
Received: from BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1]) by BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1%3]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 01:02:19 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH v4 2/2] arm64: dts: socfpga: add Agilex3 board
Date: Fri, 14 Nov 2025 08:59:53 +0800
Message-Id: <20251114005953.1333288-3-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
References: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: 54204099-3502-4d10-d78b-08de231975bd
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?akhXem00dTkyUThBK29YTGNqKzM5YWRpY2tRZGlpdTJZQ2hkQyt0YzdEVitX?=
 =?utf-8?B?d0s3b1pBdzJCWGdxay9ocHlZcWVPUDZBOXFmL0xPdFhpNkNUZXl0MzVudVpz?=
 =?utf-8?B?amNDUWQ0bXl4eExmb3prODBHNkJpUVBLZ2xUOXozOUx6SHhDUzkxVzZ6WDh4?=
 =?utf-8?B?MDdCZnZpNU9rWjdQZUVhNlp2YWRtM0FjYlhNa1NmY0k1dmFpRmZTWitPd3Vo?=
 =?utf-8?B?UGdtdzdlUXluN3ZoSHNsam9zdlppbkROVDhjcE9EZWo2b2hNQW5VUGpMVnJT?=
 =?utf-8?B?TjRVMkpPQjhXWGRkZmk5aXk2NHBXcGZSeDNjN2VSRW9VQVY4c2NiU1JXUEdl?=
 =?utf-8?B?R3VVRndFYXBvSmk4M3BOc05vNHpRY3JDMzdlc0tITU53Z2UzY1ZDR3hOcjdD?=
 =?utf-8?B?Sk9DcU9KZWJDVnlydjdkZmRLb1dBT1puUm9KNTZZQ2Z1WDhSTTVnVHZPMzNj?=
 =?utf-8?B?b1ZaVTNxWUZQQ3A2NHE4aUJSZWd2Vm5VVFVaOFEweGR0QlRSb3VNOXVYOWFn?=
 =?utf-8?B?cVkycC9NbDZHYU9LT2tMSDRlNllWcWliMXp2T2lJNldwK0FjRjlwV0tFMng2?=
 =?utf-8?B?YlpsOFJvaWgzQ1FyK0FUdHFyOWJvRlJYbldaRGlBM2EvdmYrSGh1dlN3Vk5V?=
 =?utf-8?B?d2hRc0Z3VEFkMHkrUzI1Ym9Wc2prWDd2TWg3YitxclVsZzVTVHVGTWpVSnI2?=
 =?utf-8?B?bUp6SCttYzl1RENKeEVlTzNaZVYxZkF1VVdleDA3WERWejU5M3YwbXdlem1S?=
 =?utf-8?B?M0FwRkFKTVBpeUhOM0pzcWRHc1liaGthK2dFdktpdVBqTk45b2tiWDVTNWNv?=
 =?utf-8?B?Q3hTQmtiU2RjZ282STh4YnBrU1Q2U2lTT1RGT29RMGpnTUM4ZCtxQlAzSzRw?=
 =?utf-8?B?bXlLMGpERUN2TXcrcFpDUVNpT0NLbTlEMEtleUIvQ1VrR05RZTNaVm5MdU91?=
 =?utf-8?B?RXFpMEp3K2o4UmwxbEdWcnNTbXplZDJSR2JNdnAzYWpLZHNFZFlYOVUvWjA1?=
 =?utf-8?B?RHNCN0NWdmgwb3VaZGFGaUo2aVBFM2dsaXJyQklGM0QyWHdCVVZOYk1qdGhW?=
 =?utf-8?B?N2dLVnpkSUp4QkFsWnhzdjl4c2hmWHoyTENBVVd0T1BBTWNCUzRhV2F3bXVs?=
 =?utf-8?B?ZXNKRlhXZkpVQW8xZjhWMEJCSGRmZjlURDk5TWpFWGJURGdEZHhaODZLUXJF?=
 =?utf-8?B?NGw1V2czc0N5MUFDb0NOT3Y4ZTFYajJ5ZUhaa0d6aWVhUXNsL3RkajRvaXls?=
 =?utf-8?B?dCs2QTN1T09hUVl5VHZJRTRpRDRqaVJQbXo1ZUlyZHVFenNWR1pqdVB2M3Rr?=
 =?utf-8?B?WS95NlA0cnYwUExOSUtXR0FGZHZ4bkd3V0lCODIxWE91YmhvWHhMQ1N2d0VI?=
 =?utf-8?B?NmNiS3h6T0VMR0s5RUsxS2JITmRqTjg0VXlFMHpIRzhRQm9JaHpKVFpXKzZl?=
 =?utf-8?B?NmFmeW55Q2pCOG4zazMwOXRFSHpadXppWDFvZE9QZHl6Y214VUFNeVMzREw0?=
 =?utf-8?B?WEdGSzM1a0UxNVRRQ1FhUWNjM3lOa1VUcVpLcXpuMitvOHdncHR3bCt3Y2lW?=
 =?utf-8?B?Zk9wbXpZWUhoUmc0VjY2aVJCYnVPekNZcGpjQUdJSXlBNGVjazlKd1RuQ3dn?=
 =?utf-8?B?NzR5djRsWEhwNmQ2NmwyR0p3UU9oUzl3YXd1YjB6UkkyNzZqMG9OeHNBOFRz?=
 =?utf-8?B?TVZ5WEhaZHFJTzVzNWtsTEp5WlRVOUc5MyttMHQ0dFZDSmlQNDcwejFhVGZx?=
 =?utf-8?B?M0E5RmVlbVZQd3BoV1Jmb2t3KzZweHJzTjd4ZzRvdjhlUFpMNG5WVUxTRThN?=
 =?utf-8?B?a3hLdEp6SDZHSDE4T0VobzRFS2VSQ2dJU1lkU1ArbzV3d3A0bkQxV29FUXFp?=
 =?utf-8?B?dXlzUFo3ZFU4Tmx4RkcxRTE1czJ5R05COHRGR3lSZ3VSclgwTEZEOTNjZHhs?=
 =?utf-8?B?ajdDS0NyYkllamYrZ0M3aytkYTZuQUVMMWUyNXFZUDdZOVQ0SzFmTzMvc2tZ?=
 =?utf-8?B?d2Q0SjlkSmRBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR03MB6037.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Z2RoTmNYL2g2ZXpiYjlvU0RhT1Jic3pnZlNwNEpZUW8zQUVFcjZaY1NuRnZr?=
 =?utf-8?B?MHd3Z3RneldJQlpPVjU3Rlo0UXhTSm9Ec2ZOdktNWGdpNUhFeUI5SlduVlMv?=
 =?utf-8?B?NmJzT3p4RklTM0NtelRHeEUzTUhDZ3MzczdFbERkQXZtR25IdkZFWEZaTGVN?=
 =?utf-8?B?THdMN1FNb2orWG10bFI1NjNkVkNjS1B5RU00bFJQY2VaTnJabVMrWFRjMWpp?=
 =?utf-8?B?a3o5VDBYWVZWcmdhWlo1RkNncndObDE4NytNSTFBcjhBQy9NTzViWkV3Y0ln?=
 =?utf-8?B?bGsvZlFWbENZeGFkdU83T1hFWUF4cVM0ZEY1MFliRWYrU2NOc1V3ZllTK1ph?=
 =?utf-8?B?azFzSVBoRnhrNGtQRDFDY2cyUXBpekZ1S2hxdENaay85MzJwOFlEVXhjZ0lM?=
 =?utf-8?B?UE9wRlVlNnJMNjh5M0JDUXhpMHFSQ2dQZmtTSVcyY0lRUUIwT0gwc0dMK0Jh?=
 =?utf-8?B?dVlEY1ZobUxCS0I3S3JlUzVaano4a1BuMkFGUHRERXVpbVFUVll6Q2hveHFv?=
 =?utf-8?B?ZkhPbHhvOTM0NUwzcC9NVzcvMjFyVGdnSThOemhHQTFwMVVPTlQ5OVJRb3Rj?=
 =?utf-8?B?YnJva05LTGhESzQrdkE3dnIrbURUa0dDWVhNNFBlVkdqRWxXN2Fjdk83OTI1?=
 =?utf-8?B?cnhOclFYSndtMkhyc3Q0Z2paMU8wTWl3ZjVETTVNZkV3NXJ5WFdUQnFubGVy?=
 =?utf-8?B?VExuaGR3NFFmYzFLK2s4TG5PWEd1L3hNcTNFTHcydXZJZ0pWS04rcnhnczJ4?=
 =?utf-8?B?WnF4a0ZlRTFjOUY5U1lrcjJEdzkwQlNwN3VPWmtreWJvOGdpVXcwNmdpOW5M?=
 =?utf-8?B?K1RrS3hjdkpteUlvQU1Lb21LZ3VkUG9ZL1pKUWk0ckZUdFJhQXFJUlZnNjJP?=
 =?utf-8?B?Y2xHV2RZRlZ3UjZ1cEw2MHA0NjJFdDIweEF4MmtBR0Q0am5URlNPZWN1a0ZP?=
 =?utf-8?B?akRrS3dkbFNwZStDMDdqSlFZOHFaQzNhaE0rTk1oREFoMU1JalpycFh5YWND?=
 =?utf-8?B?RnNTUC9YR1hWMThSUnpvRzdQTVBFOGtpd2dYZ2hBeitiTTIxaGp6eVNMUGhj?=
 =?utf-8?B?dUJQcnZiL0oyWUdrRVIyYnVkQkg4QXNRUkdMbE1pUFo0dUhNSG5OZmQydUQx?=
 =?utf-8?B?V3d5OTQwTm9tTDVzMW9rRzRFdStMUGMyZzZZcWlJVlpNeElEcm9vNEJ6UzRi?=
 =?utf-8?B?ZnhoenhTUUJxWTZYUXBQWU84Mnh2TGJrTG5FV1VURFJuMVU0S0paNEFOVkJV?=
 =?utf-8?B?c3NiZlJLZ1c1TmIraVhVUUN0dmZyVVBCc2xVOEdVTS8yOWVsVlZDWHRET1BH?=
 =?utf-8?B?NHU0ZHk4VXJ6SUsrYlp1RzBJRnVXbStKTVZadFBMZXU0eGxCVW1SZERKVXVt?=
 =?utf-8?B?VUVyeS9PZzk1aW1hZWNVY2R2TVU1VkhObE55a0tUYkcvWFovbHcxRElNZkdE?=
 =?utf-8?B?WWRQMnI3ckdNR3ZXNGVsdGhRWHYxRmFUdXR5WEhncG94V0N6Q3VDaDVVZkhr?=
 =?utf-8?B?NTlTamdXQTM1aFh3eWpCOHRNaG9TUmtFbFd4K0hCc2pFQW9jcm53OURUb0J4?=
 =?utf-8?B?TDJDYjF1QnE3L3FheVNWa3pWK1I0aGJxYUU1MmplVm5kb2NvSXhXSFJMQmNV?=
 =?utf-8?B?WmxiUkRjM21YMUlsVHA0V25jZXQvbTk1UlV5VjcrTk1SWjhQWW5FK1Z3ekVk?=
 =?utf-8?B?ZEQ2eHFXK2RRalhxeFdFbjJRdXJMTmxjNDJrK0hIcG1Yb1daT3N5QTRzdHZS?=
 =?utf-8?B?VFplYVRINEI5WGRCbjU0SVV4a1dwSWpXR3RxdjkrRytTb3IyZFBUVnNlVVIv?=
 =?utf-8?B?RlpGZVd6eGhSekMxWDBhcTViVmpZUU1aajZmRVg3SnF4U0VRVDJZSEszZ3h5?=
 =?utf-8?B?UklDa1llMzgyc1dneGlXV2tqWGxNUTYyZmU3QWNIODBoWE9kVlRucGJ3OU1y?=
 =?utf-8?B?WXg1eHZtYkg5RDJEUWp4N2Z0RGVGYXcyajRLcC9KKzQ1VDNzdCs1Zm5OOE9U?=
 =?utf-8?B?cHNuUXpIbVVWa09vVmtKRW80bFkzaUVOVTE0STdDUTJoNlkvY3dwTitwcjc0?=
 =?utf-8?B?eU5lUDlRVE03YTBKckNoM3R2Zk9NMFpVSTJNczFhSnJzZVhNekRkWmtVNXJU?=
 =?utf-8?B?K2gzMHdPMmg4c00xdlJWK082UFRGcG43N2V4SDJacTdUb0lYOWpDQ3JpNnRh?=
 =?utf-8?Q?MkeDOWbFVHptStjlV7LCKZsXMhgojdKvvI9eL8ZgoJbA?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54204099-3502-4d10-d78b-08de231975bd
X-MS-Exchange-CrossTenant-AuthSource: BL1PR03MB6037.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 01:02:19.3139
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dyS0doRNdYdrRTRDjdDhUJNrpyL7f3jvNBv6yDdRdXkLkMY6mxO/AiQ5UONZdCwfrh/fLVok37mAQMlunSFOhBmK0sKHbQG1969V9gj76slxrcmqVLZsECXBnOkMFotc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6033

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

Agilex3 SoCFPGA development kit is a small form factor board similar to
Agilex5 013b board. Agilex3 is derived from Agilex5 SoCFPGA, with the main
difference of CPU cores — Agilex3 has 2 cores compared to 4 in Agilex5.

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
---

v4 changes:
 - Update commit message formatting.
 - Use agilex5 dtsi instead of creating new agilex3 dtsi.
 - Update qspi node parititions.
v3 link:
https://lore.kernel.org/all/20251112105657.1291563-3-niravkumarlaxmidas.rabara@altera.com/

v3 change:
 - Add agilex5 fallback compatible string.

v2 link:
https://lore.kernel.org/all/97fea9a15bfe2a3d52d5b75bee6bda25615422e7.1762840092.git.niravkumarlaxmidas.rabara@altera.com/

v2 changes:
 - Use separate dtsi file for agilex3 instead of using agilex5 dtsi.

v1 link:
https://lore.kernel.org/all/aa19e005a2aa2aab63c8fe8cbaee7f59c416690f.1762756191.git.niravkumarlaxmidas.rabara@altera.com/

 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../boot/dts/intel/socfpga_agilex3_socdk.dts  | 132 ++++++++++++++++++
 2 files changed, 133 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index 391d5cbe50b3..a117268267ee 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex_socdk.dtb \
 				socfpga_agilex_socdk_nand.dtb \
+				socfpga_agilex3_socdk.dtb \
 				socfpga_agilex5_socdk.dtb \
 				socfpga_agilex5_socdk_013b.dtb \
 				socfpga_agilex5_socdk_nand.dtb \
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts
new file mode 100644
index 000000000000..14b299f19f3a
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2025, Altera Corporation
+ */
+#include "socfpga_agilex5.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex3 SoCDK";
+	compatible = "intel,socfpga-agilex3-socdk", "intel,socfpga-agilex3",
+		     "intel,socfpga-agilex5";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	cpus {
+		/delete-node/ cpu@2;
+		/delete-node/ cpu@3;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led0 {
+			label = "hps_led0";
+			gpios = <&porta 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		led1 {
+			label = "hps_led1";
+			gpios = <&porta 12 GPIO_ACTIVE_HIGH>;
+		};
+
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0x0 0x80000000 0x0 0x0>;
+	};
+};
+
+&gmac2 {
+	status = "okay";
+	phy-mode = "rgmii-id";
+	phy-handle = <&emac2_phy0>;
+	max-frame-size = <9000>;
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		emac2_phy0: ethernet-phy@0 {
+			reg = <0>;
+			rxc-skew-ps = <0>;
+			rxdv-skew-ps = <0>;
+			rxd0-skew-ps = <0>;
+			rxd1-skew-ps = <0>;
+			rxd2-skew-ps = <0>;
+			rxd3-skew-ps = <0>;
+			txc-skew-ps = <0>;
+			txen-skew-ps = <60>;
+			txd0-skew-ps = <60>;
+			txd1-skew-ps = <60>;
+			txd2-skew-ps = <60>;
+			txd3-skew-ps = <60>;
+		};
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&qspi {
+	status = "okay";
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+		m25p,fast-read;
+		cdns,read-delay = <2>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qspi_boot: partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x00c00000>;
+			};
+
+			root: partition@c00000 {
+				label = "root";
+				reg = <0x00c00000 0x03400000>;
+			};
+		};
+	};
+};
+
+&smmu {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&watchdog0 {
+	status = "okay";
+};
-- 
2.25.1


