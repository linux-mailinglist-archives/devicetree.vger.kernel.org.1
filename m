Return-Path: <devicetree+bounces-246162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5DACB9658
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 18:02:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51CF2309205C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 17:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C51B2F7ADD;
	Fri, 12 Dec 2025 16:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="AxP0IimJ"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011008.outbound.protection.outlook.com [52.101.62.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471B72F7AD3;
	Fri, 12 Dec 2025 16:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.8
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765557948; cv=fail; b=TA6Fm99IIwd5TFZx5b4N1HQ+2wdYsP8bw/rz7PjKJ3IDF8rGGRYnSH2Xun0BBl3eHViESbfC4jzCpwbceTp2FutF3OEaleu5L+M7CvWZtVquuim4NhyZ5xYQwlWUxHikkL0aPqhUqdTtYJACdM6i5UE7SZx+7qnyl4qWoQf3QsQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765557948; c=relaxed/simple;
	bh=vde7qVgygQcTwa+1vsmzRwAmhhc70B+d4nxhyAjLfjs=;
	h=Message-ID:Date:Cc:Subject:From:To:References:In-Reply-To:
	 Content-Type:MIME-Version; b=WCuRWAy6Ooe3mUJkTS4FUUr1XgeUJ4t7pB8bTz8EJZizxL/YihTQ6FGwJZG72MjXKz9yaxFMJZlaloUEUofx+BPcPG7lY8qRFYAKn2uQk2/iRXJcgafw1EhbSzgVXl+R2E5Oc9IvbLtqclqn9/ufJIIvh8OcheTs91fpJBNkwrc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=AxP0IimJ; arc=fail smtp.client-ip=52.101.62.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TUd1YNaP0Q+MVVKc8Q6foCp0KmwHDoAXcyA2ZNpxoP4H18vQxzFHMh6FkSxhxKk6lVwuVgbEU0s4WAib51+v41keA6I1TDGSMkVp7rgqLt4kPkd8kZ8ZuSKUAHpUJxMtfcA8hzGNpvDFpk1465Dqg+iJ6WiSBKL0+1OhCVlY4xZrGBsFPYhQaDV5hnPkupaXN4PbYkpxaZvUSM2V4KvA9t3EGNvRbqEbq8rR55oqKdxfUtFY7TweRGcGge09AQ9+K9znko6sfnBG/A7xvrA2Vz+bok2U1RfJ9wT0JApWVOhrbZxFxEIc1kX6+b6p7QKnyZKyTc64mZmNyKqcHLEAxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gjPxq5SmeoC5yycbAaqKv2i3Ff3p+320g42uqxDRstQ=;
 b=Ybd3MdymY4Em4WFRIr0aHuv3vIWqd4+u76DJ/Z7f84kLbulbiDf1l2lqLRJi5yZJsA6QzpRgvfTT6ILCjJqB6aXHKJzjB/3P3kue1+PVlCCBr/R8uA/sehLzmNHuAF2GSTJ9wfylIRpqcYXXk4xUmWbtzWuvjhwh+wxvISwmJ0btESoYjp+9MUvN+t1iMkWrZXTe/9NrNrTcpj8UqxQShswOJkFDA2EsBjW63dhyUb02ZoFGO/yilkEjBrm6+109O2RE4yH1zB2chOeCFFvkGVwwBMTGjEmS3v61g8nItYSMzVYWuReTONKNJnDWA7nAcjR9iEbYwHFE9j+yr+6nLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjPxq5SmeoC5yycbAaqKv2i3Ff3p+320g42uqxDRstQ=;
 b=AxP0IimJgZG9gl19FiKi407G894MStHL8MpCFT2rmaYJDcHOxQS/1v1fo8Q0+/dsjlnBoiY5a4h8lOye8FhKt2VFhyp/kY/56oEs/2PU0BnXQ5T6TMJyDCx5EDacFmAiNN/IWBaEvw/YDnnjxlXJSHFNSWKxdLFlBX5/R0+F0r0EVp5AzqYVOiArnGRiMxijO6DdWqfqzoFLuUoXGE6qsVybLysoAIK25UEf2sfnpLQSj2gKM1hgsdiLdqjJLeRsoxXjvHAwItReEF6gdBQgMVwQX79o+tpFQNgG95B4ZNwey1KPtf+zLvD3ffZl2qIJ46IF2bql5+w90rbIOMmniw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by MW4PR03MB7011.namprd03.prod.outlook.com (2603:10b6:303:1a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Fri, 12 Dec
 2025 16:45:41 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 16:45:41 +0000
Message-ID: <df0aee42-cf73-4a49-911f-0dddc4984876@altera.com>
Date: Sat, 13 Dec 2025 00:45:32 +0800
User-Agent: Mozilla Thunderbird
Cc: Marek <marex@denx.de>, Simon <simon.k.r.goldschmidt@gmail.com>,
 linux-drivers-review@altera.com,
 Muhammad Amirul Asyraf Mohamad Jamian
 <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
 Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: Re: [PATCH 0/4] Add Device Tree binding and nodes for Agilex5/Agilex
 SOC FCS configuration.
From: "Wang, Hang Suan" <hangsuan.wang@altera.com>
To: linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Thierry Reding <treding@nvidia.com>, Lee Jones <lee@kernel.org>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Andrei Simion <andrei.simion@microchip.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Mahesh Rao <mahesh.rao@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Language: en-US
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2P153CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::18) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|MW4PR03MB7011:EE_
X-MS-Office365-Filtering-Correlation-Id: e3ae202c-8de0-48fb-8c73-08de399de275
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NGZlOHl0ZFBmbWxNaFhDMitLZk5PblV3UGFDbnlQK3RRUkdLdXl1MlptQWM4?=
 =?utf-8?B?T2ZhNDF0c3p2ZHVJWjRLTEN3aEI1Zk9CMnhWbDdYbnRBU3dFcWtzOTh4bTZn?=
 =?utf-8?B?cVdvMThXeTNmQzhBR3Fjb1VHRG1RL24yNDFRbHZ0MWphc2xzYVlid1pvcWhK?=
 =?utf-8?B?RFNlS3dwSHlIMDBaOTVqTGFFYi9BdHhKVko2QmcwNXg4R1Z1MTdwT2RMcTR1?=
 =?utf-8?B?VnJJTXd6Z0NtZmhNWEo4bFg4RmRuTHNpR2RHSlQ1MXBSYW5Ec0hjblRCTkFM?=
 =?utf-8?B?ZjhkL0k0TSt2SmhlcWhTdEwwM01jRjBuaVlYeDBJUzdFaisvVlJtcW1ESllp?=
 =?utf-8?B?MEtCeklNMU9GbkwrVE52NEs2OXdoSkplOG9oWndzeXB0aXNsM0h4SUcvSlRi?=
 =?utf-8?B?anlSdkxtZ0dlbDV0L2VHOUgzZ1VZK2RBdlZxbm5HUXZlRWw0T2I2aXAveUlq?=
 =?utf-8?B?aGFjak84QTZyaWtzZWxXTXFiK2NCKzg0K2hlRTJKQi9PMm0yMTBwOUdpTzk3?=
 =?utf-8?B?OG1pVnBYYUFqSEhNWXpCaE9ESkFWRUxXZUdjZUN3V0lSRG9SK0hrOWZQZm5Z?=
 =?utf-8?B?K0QxZjFibGE0a28xV29sOFY5K0FGbmJwTjAydG90bExiWTVNaUpDMDhtaUlZ?=
 =?utf-8?B?ZmQvN3lpYlRTTnA4UHhORHJ0RklXMDVBcFBkdVovQXZ2TkJ4azV1cmlwVHky?=
 =?utf-8?B?bXpwZW9Qd3lDaXVrc3hEVHpKQUNpQ0E4cEc1TGEyVnV6K1EwekZObjNxTlMv?=
 =?utf-8?B?Wm1DVUlvVHpRRUxWOGM1RlhSMFhsMFM0MzU1VXgzVEZ0b1MwNitmcy83akZK?=
 =?utf-8?B?ZW1VOGhhWE9CRXhnbkhva2l6T0VDL25QcUFnTHFyc0FHTG5YaFM5dllMamo1?=
 =?utf-8?B?V0hJRCtwc2Q5T2FTbjhoZEFOVVNPcGhqZmpzVXFhVlpTL3JoKzgrcURLamZw?=
 =?utf-8?B?MThDNldPMFJaU1cxbGdHZFdJN2ZRWmJrYjI5S1UrdTA0c3RSWEYyY3lhQWlx?=
 =?utf-8?B?L1FudHBpRi9sN3dPQVhzUzNNL1JuUUx3SjVrLzNkZWExalBOek14a0QxRFBz?=
 =?utf-8?B?SjRucEd1Vm1hdFo2WlRZVE1FcGY4bURzVmVla3NZd1ZhdEdZTEY4a0hqcFNQ?=
 =?utf-8?B?MW5meDYvQkdtR1MzNFRYZ0F0aW1IYVdWZ0N5dGVoYUtvQUJqTUh2aHR3bTl0?=
 =?utf-8?B?UDNUZXhaS0xWemlzZG9hVC9kOXBJaUhwSkhkRW9hRG43VWx6c3IwSFZkZzVq?=
 =?utf-8?B?L1R6K0hPbmptdEhTcGxhOXVGZHcrNzNrMkZqZ2pRaUFQQ1lUeGxNaEk5dnZS?=
 =?utf-8?B?Y1RaemlRQ005aHRmSFMxYXRiTCs2NUVzSnMxL0MzOVprOEg0ay9uRmhINC8x?=
 =?utf-8?B?UGJKT2VvVGk3K2dMYmw5aXV1WmJCU3o2cUpJN0hnbkx4OXFIMXdkVnpySnda?=
 =?utf-8?B?MVpIdHJUeWY0SFc1OUtYaENhSkFWelNZWjFiR3d3d2c0L0RlWlBVVjhNVTdC?=
 =?utf-8?B?ejB0anllaEcycFY1TWtYQjFrMFVURWVpR01DbXZzeE4rbDhBdUozSGJoYUdz?=
 =?utf-8?B?SGpJMW1ocS9tV2FQejY5cldVZWZkck5jaG5tQ21hZ0tvNDc3dTREYXlPYmNT?=
 =?utf-8?B?c2ppK281OUg0K3hXQ0VLaGZKMjBkdWg3ejhPSEwvWjB3UXl0Yy9WKzdNSFdm?=
 =?utf-8?B?cVRaS3FTZW5nUEJiNlI5N0FuMzRwdUttb2R6ZFhEUFAxQXY3U2drL01ZMUhq?=
 =?utf-8?B?RGI3aC9UeTAzVFNJbzJjbUY1QVVpZzJiNURlUDBYcHRHKzFUN05leHhqeTB3?=
 =?utf-8?B?YXZvLzREUGM1MGgwYWNIQ3dTNEJnWXFReENSNjhDNm9ybHgzRWtmVjk2aXlU?=
 =?utf-8?B?UkY5cWxGU09URklRQ003OGpGYWhjNXV5NDlRcVZCaXM1TkgwOGszRE5nY1A3?=
 =?utf-8?B?aEFxaGtUVEdoMWIxUnBkTytaRnp3NEFTTVBvT1ZEWGJWM2NNc25VbHplRVlD?=
 =?utf-8?B?dE8vb2JuT2JyajJiU1lUME9uM09DTEc2bzZ0QWJ2eU9lSis0L00xQ2RVc3dM?=
 =?utf-8?Q?oKqhoR?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZVlkQm1sNUdDd0wvemF5NWFGclVlU29VNFpxTW8wZkErNW5ITFgzbXRlS0dw?=
 =?utf-8?B?OTJZWXRsNC9RUHRtaWRITVkycUk4OWZlbGgxSEZKV3B0dFF2RGd6YUVSNGp5?=
 =?utf-8?B?WCtoTXc2UHJTZnk3aFBSZUxhN2p4bnRha0EzVkg3S2M5U3h0RFZuVFNPME1Q?=
 =?utf-8?B?bEdOdmo4V2ZXV01kMkJvazcrTlZoaERpOWlsdnhkTWxXeWRZVkV0V0lnZm9x?=
 =?utf-8?B?S2pZdk44MjBmMGRjdWdSZzhMVW9rZXdGL2JZV3crSG51UERWU2RQcHFTaXdv?=
 =?utf-8?B?RU1xMDhhSmFsSXRVSk5kdkZYUlhGbjBjSVZYWHNLZTRBMWpCRkFxRTBOazYv?=
 =?utf-8?B?cGtPVW5UYkhNa1ZZZW9jMllFdmhzc3VrTUhiK21uZGxPc1g0SE5uVkhQWS8v?=
 =?utf-8?B?V0pLS3d3WHIrckFyN0w4eVpYcWJFdmdObllCRUlTenh0Z0l3anQwRUN1OVda?=
 =?utf-8?B?YzZEaUMvNmkwQUFuczdFSXhmRFAzeXpvWGFWVHJvQythb29VblhtdllZdHIy?=
 =?utf-8?B?VHNqZVdNUjd2amNXbGt6dzBWbXc4RngzOExtVjg4WXM0eUxiOCtVd1RjRTh2?=
 =?utf-8?B?RUtZL1loOG5Ya0duSEdEdC8rb2JEOWhjVC9TdUhSRjZRbktMMGtweFE0Z0pl?=
 =?utf-8?B?Y2NJUFFibjJCNzQwOXFIdi9jUG91NVZFMnE1ZEZHam0xMHZ1bDVkT3krTHNR?=
 =?utf-8?B?SnR6VHR6cHUwVFRKY0hLeCs3MUpoRVJRUjlMb013Zm0yZGxyVkxDWEE4Ylhn?=
 =?utf-8?B?MTd1YUd6OWViRVlBT3VITm5yMGswNWdRdms0azJiQ2xSZ3M5U05nckhwaVJm?=
 =?utf-8?B?cnlJVWJ3dktHOEJiZ0xQd0tjYm16eDhMU0lSVFVwcWJBMTd1Q0RkM3JkM2NB?=
 =?utf-8?B?dG9QQUl6YXBDcVZ5Vzg2ZkM3WWs1K1E0a29XbkNjL1dyRkF2cTYrL1IwTlBv?=
 =?utf-8?B?K3Rtd0hNdzkreTk4QkxOMlJib3BOVEh0SXpERFJBekZBMmdqTVFQenVnSVFx?=
 =?utf-8?B?bUZ6aXJmR1VraW1vLzVNRlMyb21SaDloaWp4T3FHMEorSGpwWnhRZWZwMmZY?=
 =?utf-8?B?c2dGelc5ZndUL1lhbi82eXpTek9HYytzWjJwbklmOW9MQ0x4anpETVNWQWQ2?=
 =?utf-8?B?bDB1UmdSWWtZbGRmenFMeVJmckVFUENYTEpSS29BVG9KWEU5bkFoUjd0UXl2?=
 =?utf-8?B?Uk1FOHd5U1dqaU5mZUxxSjQxVWdWVXFWOG4rTkdjTVc4RW1URk1zQUdvZVhi?=
 =?utf-8?B?TXEwd3dsNXcxSU02clJwM3RpUXQ3VXBCSVR3a1IveHczYkh3OWxiSHdlbkt6?=
 =?utf-8?B?MkNiaWVXVmxDamZXTGJTY0VCNTRoQUVyNU1jU0I3bmt1SnFvOGNndlZxdm04?=
 =?utf-8?B?VGhvNnNHZHQ1cVZXRlpISGg2amw1Z2xneEttQ1V5SUJtN1NZTVVQTFNyZDNW?=
 =?utf-8?B?aStNaE9kTTM0MzRzUnFPQ0xvTWxneHRlYUI0WXpjYk5SWndZV1k2THM0ZjBt?=
 =?utf-8?B?NEhJTWFuMDlxNzdNQ3FaWnArYzJDSFpwVTdibTN5eUwrVXNBeGQxN0l3KzlX?=
 =?utf-8?B?RmkwdnhYK3VMb1JOdGZZVXgyazFQK2d2SHhzNDQyQmdGaUJmODhYUWErOTJi?=
 =?utf-8?B?RWZZQ3FIaHE1NXBYMXgydXBIQTZrRndLcnpPdTV2QWNmanRIK3hTU0dFeWRY?=
 =?utf-8?B?a3ZVaEk0WmhNaTZBTFduL3c3QXB1b1A4aWlRV3VEdndJYXAxTGwzSlFid0tp?=
 =?utf-8?B?N083NEtrZjY0eU8xQlZLSWRmZm9UYisyc1RqTllGZk15Yll1MkJNcjJEaVJh?=
 =?utf-8?B?YXczRDJlTk1qaXVMdk5haWpzUWVyVVBsMWxLeXh1S1cwWDVVeUR4QWNwOWxU?=
 =?utf-8?B?dTNpUjJkdGFUbGVDaC9uNzQ1eU0vQ0dENkN3OXJwcGVtdVNJdHQwZzNQSzgy?=
 =?utf-8?B?bjFmZURmemNxcmhVSWRsV1dNMUliNUd0Qk15azAzcmJ5dWVMQ3RES09VNkNa?=
 =?utf-8?B?K29iaDhvZEVHQytFUE5Tc3hHVWZFRTh4L3BBU3lvZmR4OGhITlVpNFVtcXNv?=
 =?utf-8?B?M2hLd3hnVTVMWVFaTnJyS0MyWEs0S0hnVVNpNlg3TDRVS3liOFQzdld2Nnhs?=
 =?utf-8?B?L2VGSTBta3lLUDJNNy9ETURUMVdYbFFsTjEwSHpES01OcFNUTkxmNkpYc2RG?=
 =?utf-8?B?Mnc9PQ==?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ae202c-8de0-48fb-8c73-08de399de275
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 16:45:41.3193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O3uxl0lt9ko1OBTDUoEXiMZwqZuG1Nq/qTVxRoK0hTOfMnslQ9zP+M+ifuV8dA1CuDo56H5YkRdvTSrrh6cu0UFB6z5n1C1C2adXV7EXW8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR03MB7011

Please disregard this submission.
Apologizes for inconvenience caused.

---
On 12/12/2025 7:35 pm, hangsuan.wang@altera.com wrote:
> From: "Wang, Hang Suan" <hang.suan.wang@altera.com>
> 
> This patch series introduces necessary Device Tree (DT) support for the
> Soc/Hardware FPGA Crypto Service (fcs) functionality across the Altera
> Agilex SoC families. This feature allows the kernel to identify, interact
> and communicate with the high-speed FPGA hardware without interruption or
> software overhead.
> 
> The series structured as follows:
> Patch 1: Introduces the core YAML schema binding for a generic agilex5,
> soc-fcs-config miscellaneous device.
> Patch 2: Add fcs property to the existing stratix10-svc firmware binding.
> Patch 3&4: Add the fcs nodes to the respective Agilex5 and Agilex DT files.
> 
> ---
> Notes:
> This patch series is applied on socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
> 
> ---
> Wang, Hang Suan (4):
>    dt-bindings: misc: agilex5-soc-fcs-config: Add binding
>    dt-bindings: firmware: stratix10-svc: add fcs-config property
>    arm64: dts: socfpga: agilex5: add fcs node
>    arm64: dts: socfpga: agilex: add fcs node
> 
>   .../firmware/intel,stratix10-svc.yaml         |  4 +++
>   .../misc/intel,agilex5-soc-fcs-config.yaml    | 32 +++++++++++++++++++
>   MAINTAINERS                                   |  5 +++
>   arch/arm64/boot/dts/intel/socfpga_agilex.dtsi |  4 +++
>   .../arm64/boot/dts/intel/socfpga_agilex5.dtsi |  5 +++
>   5 files changed, 50 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml
> 


