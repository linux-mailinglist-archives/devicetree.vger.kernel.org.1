Return-Path: <devicetree+bounces-130697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B39F0A96
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E002D28141D
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E001D9592;
	Fri, 13 Dec 2024 11:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b="mWB3FCPb"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2137.outbound.protection.outlook.com [40.107.255.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358321D63E0;
	Fri, 13 Dec 2024 11:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.255.137
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734088480; cv=fail; b=bfUH5M66nFqtsiPWj9YTkjaDn5OLTuxzFM29TSdcwVVBchx/u2QgzTjQq8xxA3xQJppibzNw3fiHnPABXo3qgWCmOVXgYT94/THOT0quHG9nSxZqvc3JRBTQbvGp1syFWWXQfn/ra/oN+JnchzLnrIFxI/7xHMht1gAH9MqcFTM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734088480; c=relaxed/simple;
	bh=S9sonGrDZPD79wmABhxOU1XzFXxHCtoa7ou09yQxkdw=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=uKz+iXVAD4AUcNuIex3r2v9q35tP+97XmsoF9Sgw33TUz/c/+y7NqNdKnxJD+TDLSMFbTPx7nZM+GztRVFHg1rDBAUt+qKV42tAAALN2k6gF2WlA1y2XaPFa3tPdNHN46Va74ridRe1DdPgN/Qy6AovDJ8tQsp9WNuau+tNM1d8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com; spf=pass smtp.mailfrom=amlogic.com; dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b=mWB3FCPb; arc=fail smtp.client-ip=40.107.255.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amlogic.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PygxQyQav9VBK4nkPK4Ym66QbjFV8kVEfiOdiiRe+2g7kaj6rVVeVTcw0qMoRYA3/GGaCYs3ZoO/nFzlPBukA/GzojMkCwkXIyM/SdPpP62amZ7qzGRCG5hXBwwpOxPkuxDCSSt2Y61/aWEBbj+Qv725XpRjdBwOO0lZ6htGgvcu0KXi8atrDsO4QQNewI5MV7z0OzLMtb5TC/Ll+SKLGNxEbl3eTQqFh3Oc7eQBpbbfdpHtH0MQH0K3tcuEl5YZAiuyBi2uJ9YQKNVBQiKJIdAfMc7LIUDhc+lqCVFu7xkgmtf7qEbfztIDLIQbh8o8gzxOaukPTJWG93Y9NUC46g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTgdNf22tBveF6yiN8P4WuqScLE9awCbNfhV2Dnztb0=;
 b=n7rw/Q2DKjG5dCV6kDtkVOxh43/EgL872a0/Mo/pS8u+P0/RFR7EXK+6l6H0ht1Dj6p0V5HT5SNS7xRFtmIkooXWgk1PRjZ4FdMmEd9quap2QFUSM0hpIN7dQD04FCmk9b61PpHlxVJjhE4X3k9jCZVJqlzE2mZlEYg9EVYM2qRR1mrQbPqjBcmnwoU7p/Rxs+BAUs3f0Yw+Wzs+yZmtXViPU5TAN2/Ty5K3IHsKr+Ca6dhVWQgPiwWLpTyWx6eq1Z4DTeC9tLZdrHcQHyBfWau1cpKorGERY+TnBiHhZY7VoK1U+ytrTcr+8Ri7G+/Z4WHfHS8v4Xl9P9DfPwyd/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amlogic.com; dmarc=pass action=none header.from=amlogic.com;
 dkim=pass header.d=amlogic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amlogic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTgdNf22tBveF6yiN8P4WuqScLE9awCbNfhV2Dnztb0=;
 b=mWB3FCPbk0Bf6Fh1krKcnOX7eth+cePhBkM5VODNOzRY35luIh8KcKbhYXFct9bLGkZBQlWbFvh166SkesFqoBEqlk/Lqe2EkkCrbuYl6G59uyNrGKvf8eoRkifG3s32HG4KvMBrQfUDvqKYTPPOPlX60edaLq9yx5o1opt0bW6NfysG4rX8NCdI+heMdTgC9Zu0LVchzrGyHWdJo/KDLN6ZoZXbiw5g4fbjkuIXDbfeatP9132FxLXwiK+a6mg97cFLQw0mk+Pi+xMaZjyjyVn/4Bv8f8s/3P2wccPtczqNSGNkadAzIC85sMw8mQ/5ayM2u7FBBwsywlAqvNo8tw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amlogic.com;
Received: from TYSPR03MB8627.apcprd03.prod.outlook.com (2603:1096:405:8a::9)
 by TYZPR03MB8440.apcprd03.prod.outlook.com (2603:1096:405:78::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Fri, 13 Dec
 2024 11:14:22 +0000
Received: from TYSPR03MB8627.apcprd03.prod.outlook.com
 ([fe80::cf16:aa54:9bd5:26f]) by TYSPR03MB8627.apcprd03.prod.outlook.com
 ([fe80::cf16:aa54:9bd5:26f%6]) with mapi id 15.20.8251.008; Fri, 13 Dec 2024
 11:14:21 +0000
Message-ID: <3464229c-28a9-4387-bfea-bc4a288f0c69@amlogic.com>
Date: Fri, 13 Dec 2024 19:14:16 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/10] media: platform: Add c3 ISP driver
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kieran.bingham@ideasonboard.com, laurent.pinchart@ideasonboard.com,
 dan.scally@ideasonboard.com
References: <20241205-c3isp-v4-0-cb1868be0105@amlogic.com>
 <20241205-c3isp-v4-8-cb1868be0105@amlogic.com>
 <ortnmxvdqblvaeiqdj56vbjooewqteap42lhbdgzbzwg3hiohe@v62zub6mc3ow>
Content-Language: en-US
From: Keke Li <keke.li@amlogic.com>
In-Reply-To: <ortnmxvdqblvaeiqdj56vbjooewqteap42lhbdgzbzwg3hiohe@v62zub6mc3ow>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SI2PR02CA0021.apcprd02.prod.outlook.com
 (2603:1096:4:195::10) To TYSPR03MB8627.apcprd03.prod.outlook.com
 (2603:1096:405:8a::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYSPR03MB8627:EE_|TYZPR03MB8440:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ae6e92c-8e1e-4536-2562-08dd1b674adc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|4022899009|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QzFaRlV4dFBKWWJScTlvZi93eVVzS0ZmcHowelFhR2dyOXdyZGttOFNwd0p2?=
 =?utf-8?B?M05yY3VPY21jMStBUWM4bW8zUldXdU1pRTZMOTIweXFCY3NyRkJkUkx4ODRs?=
 =?utf-8?B?bi8vYW9rdlM4OVJyd0dPNE13dlNjN0JBTURNMjM0Z2hXSTBNVVgwbHBUVWQ2?=
 =?utf-8?B?RGFYWUcvR2Z6Sk9IL3grajZLY3JEMFc1c0loaTdzdWlnZnkxbEpaWEE5ZURP?=
 =?utf-8?B?S1V3eDlyTXE5Q3RodTdRVEJ4TkVLYktsUWJvd01LSFFHOXdHUGo3ZGFQZmJI?=
 =?utf-8?B?MzRmWW1NbkpYZ2FMN2JsMUZJc3RzWUZML0pBaDkvRFJNT05nM28wY2I5YzRu?=
 =?utf-8?B?Q0x2WEhkZnZpS0ZkK3Z4MnJ3L3pZMGZRSnR0VEdLdE1ONFhibGxRRVRoUEtt?=
 =?utf-8?B?V0lpRkVPK3Ric1dTeGNzN0d5VVh3M0ZwUjVjOEFmckx1YmJNclJlQXQ4SjA0?=
 =?utf-8?B?YW1mRkFIdGJoVjVZOXQ1UUNJazA5ZmgwMHNNQm9qc3g4SFFhZm80TWRIRmdT?=
 =?utf-8?B?MFN1QUJUeVFpZFY5Uk91UjBCYlRqWkx3MEN6d21KVm5NaW5GbDJDWVBTU1h1?=
 =?utf-8?B?QlhBU3pTOFBVZEQ3Y04yMURqQ05jSEdKUWw0ZnVoU0xUa3RXR29UOFVEZUFK?=
 =?utf-8?B?SXoyNFZKQ0VFNUM2emRPU1lxb0tWSm5pV3p3R0ptM1JUb1VBSlZVNTlNRUFn?=
 =?utf-8?B?Zlo1ZkJTTHFvajBVMUJUNTdzQjNzd1lGSkJmSlJvcFBIV3lNRGloZFlCbzNJ?=
 =?utf-8?B?bEhvQjZud1RSVDBiUUdSREVVNWhmZW1zNllVSm82OEluWWQ4ZncxQlZDNksx?=
 =?utf-8?B?d0pNOXJVZE1ZTCt5U2I5bXFmRWlLcWxQOVFjOC91MTBKdFA4Z3VEUURZMnha?=
 =?utf-8?B?b1g1RXd6amNQeExhVE1Kd1VVMmIyKzh0amZxaWhzdGU1RmhLb2trUWpVWE9C?=
 =?utf-8?B?NXFwNllXb3MwU2JHeDVVODduTmRwVjZrM2JwMmZtU2dnK0p1OCtKSWR0bktY?=
 =?utf-8?B?aDMxa2hQL3o3cDR3b0dvcUhpaUJJSWZMMzM3cng1bjk5THA1T3VNY3V5WjRE?=
 =?utf-8?B?SVdmVkJ1S1VmdUMwa0VTL3hFbmlTTkJTOGlieTBRQkxOWExzdlc2TGtoS2wx?=
 =?utf-8?B?Y0VuRldqTzNxa3dJOFMzb2tLcVZ4U0RmWCtGaHpTTGRpSk9lb2pNaytBMHpL?=
 =?utf-8?B?dzl3SlVxeXF1b3ErMjdDOVdYSHBxbXM1RU9xMlVlWXhacVdhandUcWdCMVdz?=
 =?utf-8?B?MGdpbEFFQnFXdElaQjR4Si9lZDI2dTdtK2lidFhDcTl0UFU3dit0cXR1eG1I?=
 =?utf-8?B?dGZnNjVVSkl1UkJRRS9GVk4vcmxkL1h5dXg1V3M1Mng5alo1N0gyaFdiQzg3?=
 =?utf-8?B?Y2dqcEluaVBQQWozM0phTGFvL0VuZk9kYWJjNDRSWWhack84ejkvRjdiVW5J?=
 =?utf-8?B?bnhOT0NPbEtBOWhnMldROG5JWTB1T3czNUs3MHhraEFYeHByTjlRSWxoam9M?=
 =?utf-8?B?aE80UWpLUUY3Tks4OVdZeHU2QU9UN2hoWkVEUWFPNUdsemRHeXNkc3JjMVQ0?=
 =?utf-8?B?ak5PaG14OXpxdWVneWRJMis4bm9VM2taTGdhU2VCbUl4NnMxU1QvS2k0OUNK?=
 =?utf-8?B?VWFlUWFjZVg1KzJ1NWE0UDZiUVpPanlFZG16VnhqZDZ4aG9Xb2RSbEpxN0xT?=
 =?utf-8?B?bEZ0TjI2blFTTnBGWkZRVWJQVHNueEJuZ2JBMTNlTVl1VG5vWXp2OWtUS2xI?=
 =?utf-8?B?TUc4OFZPRlVVbXB1TjlST3FZczJWVXR6eTJjOGh1TnVaZ0t6cHpGZ25GcEs0?=
 =?utf-8?B?a1VybEVIMk0yTzFWWVdmMTV2YUUwVTBsVnRsV3h4N2dSTGxZVkFEbEM4SENi?=
 =?utf-8?Q?33Cc3sjc9tKH4?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYSPR03MB8627.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(4022899009)(1800799024)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WXBUb2x2OTNROUxZdFNpQWI2V3d5RVZWN3ZUa3dTL0VRWUdiZzF5OTJRTXJm?=
 =?utf-8?B?aWttZEZQTFpFSUdwZnBkVkJUT28zMjFjRXRTUzhPZlF5RU1mV01xWDVxa09Z?=
 =?utf-8?B?K0FXR1pHWHBjQVJBQlU1T3gyT1JYZGN5TkVhUUgrRjRENkxZbDIvNjJ4dzJC?=
 =?utf-8?B?YmdobTRmTlpGQ29HUlUxdnpUR2RUMEVjQmZmQW5Dcnl0dVY0dDdlWEhGaXpw?=
 =?utf-8?B?VzhRcWFsTmFJUE56elh3RDhVd2hUQVBGbTk5eC9Lbk9iWTJmNEFYek5zb3Vj?=
 =?utf-8?B?ZWFWTnZ1ZzBBdGxHTjZIMlk4TXltUndHRmFGMW5lS1JtNm5JMG01TlM0cENs?=
 =?utf-8?B?RDJNSzVaVHpnUlBzK0lBWGhQVm5JUE5BdUx2WWVIeWtQQnZlRTJjNnQ4c1Rn?=
 =?utf-8?B?RlhwYkVjbDNOSzBubkgrSTAzSHl0TkRmeERveEUrMFU1WUNiZFFjazlCeVRt?=
 =?utf-8?B?SVRVcU5URCsyS1JGY05TN2ZEQnNEeHd0Sk5TMW8yNVgrWU1yMVNKdzFtZ1h5?=
 =?utf-8?B?RG83YWZmWlc5QXNQRmxFbEtSZTk0SERqU3FsbWdTU3lkV3V2b2c4ZXI0aWhG?=
 =?utf-8?B?b1pRTEQweWNGdVNJNTYzZXNpcGhRUGwzN0tkUkNoVEEyS043VlltMjRkRVEx?=
 =?utf-8?B?KzM5YUtWQ0pKRjVacmRkbFgxbmVVbnNzaTloQ3hoVTFHQ2pibng2TVZPZGxs?=
 =?utf-8?B?MXpGTFNjZ09TTStMMnVkRk9TV2tlSmFXTFlBQ1JHYlZ0WDNNeHhxa0FkRmpp?=
 =?utf-8?B?alErL2x2dHhsMlF6V2MzOXdCaS8yd2tXVkwwODV4Y3NzcUt1N2lWODNPSGRT?=
 =?utf-8?B?dTAzL3I4VlU4THJYYUxjOWRFM0pxZitNa0UxUWVPZ0JEVGZDTzBGQ1VZS2dS?=
 =?utf-8?B?WkRYcUNzTVU4elZ6VUI0TGJnR1lFSkpLQURPemFVaEZGaWN3SUJaVmdvV0t3?=
 =?utf-8?B?a2hCVHhuTXAyWk1qWmUyOVRCZWRmRDBtVjdzOEFadnV0eE9RTzVLcjUvWG5u?=
 =?utf-8?B?Nk11YW4vS1czelozcU04cldYUFZJSEZnVU9YUVJSSkkxNjJhOTVEdW5ZbVZQ?=
 =?utf-8?B?bkxYOXZSb0h2VzBmZGY5cG1BOXNnOWR4REM3V2dPR3Z6SlAvUFVIT3ZpbDVU?=
 =?utf-8?B?WkpJRU11MjU1SytnNVhXNnZjOUVnTDJreUQrMFdjeXYwT2VSUVVWZlBiN1pm?=
 =?utf-8?B?SndyMjRNRXZNVzVDamFtWExwV0ljL01mMnJwRkVVNWdMWDhiNWcyMXFiUVJ1?=
 =?utf-8?B?VU8rZ28vN0dLMFJDK09SUXM2K0hwMnFxamNyeUJwYXQwemNqZkxvTExKeTRt?=
 =?utf-8?B?enMxVWZHbnp0OWIzb1l2WlBQWjZNR3R2NytXOVhwZXY1VHJDaENoMmZFQSty?=
 =?utf-8?B?Y0x4cFMyQ0RkZ0Z3YjVQNm5EcWg3NUx6UktaWVhIeW5id2JlSUpOMVdrUHNS?=
 =?utf-8?B?TmxmU1NLR1Roemh3YzNuVC8vbXJyTytVRVExK3A4UnV5Zzdoa3JYMno3Nmgv?=
 =?utf-8?B?c0xGWE1aSmR3a2x2bU82eXJqeVNoMGJzampxMUJ1a2wvaFVYTm15L2lFVGhB?=
 =?utf-8?B?R2FUdmFxOERCWnJGTnNsbHNqRmY1V3Nzb0k1WUpXTjFMRExWRVlJMWxCQWFt?=
 =?utf-8?B?WUlkK0pnNHgxOVN6RnFQVFUxOHJpUTRqdE9QYmJVeHE4RnA2UzNmaklQWlcx?=
 =?utf-8?B?Ym4yY0ZFT01Ed3BxcmFqc3BTdVhPRVNVMGlwYUlvNmtMRmh6UUYzMEtJVldo?=
 =?utf-8?B?bUthREoyZ0h4eVF3clpwcEd3WEtOem93RVl0T1dJaEhVVjhrTkVlNURtc244?=
 =?utf-8?B?Y1VmSG1ERkVwS0RscWtCejFNSXJzSXRvQkNlU0VaRUdVMEF1ZWtwRHAxTFNK?=
 =?utf-8?B?ZXM1cDNnMFNLbjNNU2xWQ21KQzVZZzBtbU5KenJWR3Q5YWszUnBPaWd3Qmxq?=
 =?utf-8?B?akJRV2tZYlVIWWZkK1ZjUTdJUzFuMmtIVkRTdHdrdGVTajBmekwvV3pzcVU1?=
 =?utf-8?B?bmpmZVVtODBncUUxc2tDTzJWK281NFZCRGtTRDhjdGVuaGxacUl3YXZhRmRB?=
 =?utf-8?B?OWxuaVk0MnpkeWZiaDkrREdqajVXQ3JSSExVWnY2djVQazg4eTRCenIrNlht?=
 =?utf-8?Q?1nnRhRPI1nLiCQjztoOwQpawV?=
X-OriginatorOrg: amlogic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae6e92c-8e1e-4536-2562-08dd1b674adc
X-MS-Exchange-CrossTenant-AuthSource: TYSPR03MB8627.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 11:14:21.2739
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0df2add9-25ca-4b3a-acb4-c99ddf0b1114
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lCO4CcSx94JNF5ifYU0q2Y7QpqFaotSIU44TSUKhjnLWlgUUh1D637rbLJm62z8E4RKRAtuTXOvAZrTBXkbY3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB8440

Hi Jacopo

Thanks very much for your reply.

On 2024/12/12 23:39, Jacopo Mondi wrote:
> [ EXTERNAL EMAIL ]
>
> Hi Keke
>
> On Thu, Dec 05, 2024 at 05:04:34PM +0800, Keke Li via B4 Relay wrote:
>> From: Keke Li <keke.li@amlogic.com>
>>
>> The C3 ISP supports multi-camera and muti-exposure
>> high dynamic range (HDR). It brings together some
>> advanced imaging technologies to provide good image quality.
>> This driver mainly responsible for driving ISP pipeline
>> to process raw image.
>>
>> Signed-off-by: Keke Li <keke.li@amlogic.com>
>> ---
>>   drivers/media/platform/amlogic/c3/Kconfig          |   1 +
>>   drivers/media/platform/amlogic/c3/Makefile         |   1 +
>>   drivers/media/platform/amlogic/c3/isp/Kconfig      |  17 +
>>   drivers/media/platform/amlogic/c3/isp/Makefile     |  10 +
>>   .../media/platform/amlogic/c3/isp/c3-isp-capture.c | 790 +++++++++++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-common.h  | 352 ++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-core.c    | 553 ++++++++++++
>>   drivers/media/platform/amlogic/c3/isp/c3-isp-dev.c | 459 ++++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-params.c  | 942 +++++++++++++++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-regs.h    | 599 +++++++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-resizer.c | 779 +++++++++++++++++
>>   .../media/platform/amlogic/c3/isp/c3-isp-stats.c   | 319 +++++++
>>   12 files changed, 4822 insertions(+)
>>
>> diff --git a/drivers/media/platform/amlogic/c3/Kconfig b/drivers/media/platform/amlogic/c3/Kconfig
>> index a504a1eb22e6..d355d3a9358d 100644
>> --- a/drivers/media/platform/amlogic/c3/Kconfig
>> +++ b/drivers/media/platform/amlogic/c3/Kconfig
>> @@ -1,4 +1,5 @@
>>   # SPDX-License-Identifier: GPL-2.0-only
>>
>> +source "drivers/media/platform/amlogic/c3/isp/Kconfig"
>>   source "drivers/media/platform/amlogic/c3/mipi-adapter/Kconfig"
>>   source "drivers/media/platform/amlogic/c3/mipi-csi2/Kconfig"
>> diff --git a/drivers/media/platform/amlogic/c3/Makefile b/drivers/media/platform/amlogic/c3/Makefile
>> index 770b2a2903ad..14f305a493d2 100644
>> --- a/drivers/media/platform/amlogic/c3/Makefile
>> +++ b/drivers/media/platform/amlogic/c3/Makefile
>> @@ -1,4 +1,5 @@
>>   # SPDX-License-Identifier: GPL-2.0-only
>>
>> +obj-y += isp/
>>   obj-y += mipi-adapter/
>>   obj-y += mipi-csi2/
>> diff --git a/drivers/media/platform/amlogic/c3/isp/Kconfig b/drivers/media/platform/amlogic/c3/isp/Kconfig
>> new file mode 100644
>> index 000000000000..de68d19ca2d1
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/Kconfig
>> @@ -0,0 +1,17 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +config VIDEO_C3_ISP
>> +     tristate "Amlogic C3 Image Signal Processor (ISP) driver"
>> +     depends on ARCH_MESON || COMPILE_TEST
>> +     depends on VIDEO_DEV
>> +     depends on OF
>> +     select MEDIA_CONTROLLER
>> +     select V4L2_FWNODE
>> +     select VIDEO_V4L2_SUBDEV_API
>> +     select VIDEOBUF2_DMA_CONTIG
> also
>          select VIDEOBUF2_VMALLOC
>
> for the params node
>

Will add 'select VIDEOBUF2_VMALLOC'

>> +     help
>> +       Video4Linux2 driver for Amlogic C3 ISP pipeline.
>> +       The C3 ISP is used for processing raw images and
>> +       outputing results to memory.
>> +
>> +       To compile this driver as a module choose m here.
>> diff --git a/drivers/media/platform/amlogic/c3/isp/Makefile b/drivers/media/platform/amlogic/c3/isp/Makefile
>> new file mode 100644
>> index 000000000000..b1b064170b57
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/Makefile
>> @@ -0,0 +1,10 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +c3-isp-objs := c3-isp-dev.o \
>> +            c3-isp-params.o \
>> +            c3-isp-stats.o \
>> +            c3-isp-capture.o \
>> +            c3-isp-core.o \
>> +            c3-isp-resizer.o
>> +
>> +obj-$(CONFIG_VIDEO_C3_ISP) += c3-isp.o
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-capture.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-capture.c
>> new file mode 100644
>> index 000000000000..e1bbb3fa8da2
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-capture.c
>> @@ -0,0 +1,790 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/cleanup.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include <media/v4l2-ctrls.h>
>> +#include <media/v4l2-event.h>
>> +#include <media/v4l2-ioctl.h>
>> +#include <media/v4l2-mc.h>
>> +#include <media/videobuf2-dma-contig.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +static const struct c3_isp_capture_format cap_formats[] = {
>> +     {
>> +             .mbus_code = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .fourcc = V4L2_PIX_FMT_GREY,
>> +     }, {
>> +             .mbus_code = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .fourcc = V4L2_PIX_FMT_NV12,
>> +     }, {
>> +             .mbus_code = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .fourcc = V4L2_PIX_FMT_NV21,
>> +     }, {
>> +             .mbus_code = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .fourcc = V4L2_PIX_FMT_NV16,
>> +     }, {
>> +             .mbus_code = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .fourcc = V4L2_PIX_FMT_NV61,
>> +     },
>> +};
>> +
>> +/* Hardware configuration */
>> +
>> +/* Set the address of wrmifx3(write memory interface) */
>> +static void c3_isp_cap_wrmifx3_buff(struct c3_isp_capture *cap)
>> +{
>> +     struct v4l2_pix_format *pix = &cap->vfmt.fmt.pix;
>> +     dma_addr_t dma_addr;
>> +
>> +     if (cap->buff)
>> +             dma_addr = cap->buff->dma_addr;
>> +     else
>> +             dma_addr = cap->dummy_buff.dma_addr;
>> +
>> +     c3_isp_write(cap->isp,
>> +                  C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_BADDR, cap->id),
>> +                  ISP_WRMIFX3_0_CH0_BASE_ADDR(dma_addr));
>> +
>> +     if (pix->pixelformat == V4L2_PIX_FMT_NV12 ||
>> +         pix->pixelformat == V4L2_PIX_FMT_NV21 ||
>> +         pix->pixelformat == V4L2_PIX_FMT_NV16 ||
>> +         pix->pixelformat == V4L2_PIX_FMT_NV61) {
>> +             u32 offset = ALIGN(pix->width * 1, C3_ISP_DMA_SIZE_ALIGN_BYTES) * pix->height;
> I'm sorry but V4L2 has a requirement about 80-cols stricter than other
> subsystem (I know..)
>
> Could you run
> ./scripts/checkpatch.pl --strict --max-line-length=80
>
> on your patches and see how you can fix these ?


Will check this issue and adjust max-line-length to 80.

>> +
>> +             c3_isp_write(cap->isp,
>> +                          C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH1_BADDR, cap->id),
>> +                          ISP_WRMIFX3_0_CH1_BASE_ADDR(dma_addr + offset));
>> +     }
>> +}
>> +
>> +static void c3_isp_cap_wrmifx3_grey(struct c3_isp_capture *cap)
>> +{
>> +     struct v4l2_pix_format *fmt = &cap->vfmt.fmt.pix;
>> +     u32 stride;
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_8BIT);
>> +
>> +     /* Grey has 1 plane*/
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_X1);
>> +
>> +     /* Set Y only as output format */
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_Y_ONLY);
>> +
>> +     /* The unit of stride is 16 bytes */
>> +     stride = DIV_ROUND_UP(fmt->width * 1, 16);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL0, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE(stride));
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL1, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_MODE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_8BITS);
>> +}
>> +
>> +static void c3_isp_cap_wrmifx3_yuv420(struct c3_isp_capture *cap, bool swap)
>> +{
>> +     struct v4l2_pix_format *fmt = &cap->vfmt.fmt.pix;
>> +     u32 stride;
>> +     u32 swap_uv;
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_8BIT);
>> +
>> +     swap_uv = swap ? ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_UV :
>> +                      ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_VU;
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_MASK, swap_uv);
>> +
>> +     /* NV12 or NV21 has 2 planes*/
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_X2);
>> +
>> +     /* Set YUV420 as output format */
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_YUV420);
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_CHROM_H, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND(fmt->width >> 1));
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_CHROM_V, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND(fmt->height >> 1));
>> +
>> +     /* The unit of Y and UV strides is 16 bytes */
>> +     stride = DIV_ROUND_UP(fmt->width * 1, C3_ISP_DMA_SIZE_ALIGN_BYTES);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL0, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE(stride));
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH1_CTRL0, cap->id),
>> +                        ISP_WRMIFX3_0_CH1_CTRL0_STRIDE_MASK,
>> +                        ISP_WRMIFX3_0_CH1_CTRL0_STRIDE(stride));
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL1, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_MODE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_8BITS);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH1_CTRL1, cap->id),
>> +                        ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_MODE_MASK,
>> +                        ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_16BITS);
>> +}
>> +
>> +static void c3_isp_cap_wrmifx3_yuv422(struct c3_isp_capture *cap, bool swap)
>> +{
>> +     struct v4l2_pix_format *fmt = &cap->vfmt.fmt.pix;
>> +     u32 stride;
>> +     u32 swap_uv;
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_16BIT);
>> +
>> +     swap_uv = swap ? ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_UV :
>> +                      ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_VU;
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_MASK, swap_uv);
>> +
>> +     /* NV16 or NV61 has 2 planes*/
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_X2);
>> +
>> +     /* Set YUV422 as output format */
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_CTRL, cap->id),
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_MASK,
>> +                        ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_YUV422);
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_CHROM_H, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND(fmt->width));
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_CHROM_V, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND(fmt->height >> 1));
>> +
>> +     /* The unit of Y stride is 16 bytes */
>> +     stride = DIV_ROUND_UP(fmt->width * 1, C3_ISP_DMA_SIZE_ALIGN_BYTES);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL0, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL0_STRIDE(stride));
>> +
>> +     /* The unit of UV stride is 16 bytes */
>> +     stride = DIV_ROUND_UP(fmt->width * 2, C3_ISP_DMA_SIZE_ALIGN_BYTES);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH1_CTRL0, cap->id),
>> +                        ISP_WRMIFX3_0_CH1_CTRL0_STRIDE_MASK,
>> +                        ISP_WRMIFX3_0_CH1_CTRL0_STRIDE(stride));
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH0_CTRL1, cap->id),
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_MODE_MASK,
>> +                        ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_8BITS);
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_CH1_CTRL1, cap->id),
>> +                        ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_MODE_MASK,
>> +                        ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_16BITS);
>> +}
> I feel like the above functions could 'easily' be unified in a single
> one that computes the right parameters using the pixel format info.
>
> Feel free to expand 'struct c3_isp_capture_format' with all the info
> you need to compute the correct register values if you think unifying
> the above functions is helpful
>

Will try to test your suggestion.

>> +
>> +static void c3_isp_cap_wrmifx3_size(struct c3_isp_capture *cap)
>> +{
>> +     struct v4l2_pix_format *fmt = &cap->vfmt.fmt.pix;
>> +
>> +     if (fmt->pixelformat == V4L2_PIX_FMT_GREY)
>> +             c3_isp_cap_wrmifx3_grey(cap);
>> +     else if (fmt->pixelformat == V4L2_PIX_FMT_NV12)
>> +             c3_isp_cap_wrmifx3_yuv420(cap, true);
>> +     else if (fmt->pixelformat == V4L2_PIX_FMT_NV21)
>> +             c3_isp_cap_wrmifx3_yuv420(cap, false);
>> +     else if (fmt->pixelformat == V4L2_PIX_FMT_NV16)
>> +             c3_isp_cap_wrmifx3_yuv422(cap, true);
>> +     else if (fmt->pixelformat == V4L2_PIX_FMT_NV61)
>> +             c3_isp_cap_wrmifx3_yuv422(cap, false);
>> +
>> +     c3_isp_write(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_FMT_SIZE, cap->id),
>> +                  ISP_WRMIFX3_0_FMT_SIZE_HSIZE(fmt->width) |
>> +                  ISP_WRMIFX3_0_FMT_SIZE_VSIZE(fmt->height));
>> +
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_LUMA_H, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_LUMA_H_LUMA_HEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_LUMA_H_LUMA_HEND(fmt->width));
>> +     c3_isp_update_bits(cap->isp, C3_ISP_WRMIFX3_REG(ISP_WRMIFX3_0_WIN_LUMA_V, cap->id),
>> +                        ISP_WRMIFX3_0_WIN_LUMA_V_LUMA_VEND_MASK,
>> +                        ISP_WRMIFX3_0_WIN_LUMA_V_LUMA_VEND(fmt->height));
>> +}
>> +
>> +static int c3_isp_cap_dummy_buff_create(struct c3_isp_capture *cap)
>> +{
>> +     struct c3_isp_dummy_buffer *dummy_buff = &cap->dummy_buff;
>> +
>> +     dummy_buff->size = cap->vfmt.fmt.pix.sizeimage;
>> +
>> +     /* The driver never access vaddr, no mapping is required */
>> +     dummy_buff->vaddr = dma_alloc_attrs(cap->isp->dev,
>> +                                         dummy_buff->size,
>> +                                         &dummy_buff->dma_addr,
>> +                                         GFP_KERNEL,
>> +                                         DMA_ATTR_NO_KERNEL_MAPPING);
>> +     if (!dummy_buff->vaddr)
>> +             return -ENOMEM;
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_cap_dummy_buff_destroy(struct c3_isp_capture *cap)
>> +{
>> +     dma_free_attrs(cap->isp->dev,
>> +                    cap->dummy_buff.size, cap->dummy_buff.vaddr,
>> +                    cap->dummy_buff.dma_addr, DMA_ATTR_NO_KERNEL_MAPPING);
>> +}
>> +
>> +static void c3_isp_cap_cfg_buff(struct c3_isp_capture *cap)
>> +{
>> +     cap->buff = list_first_entry_or_null(&cap->pending,
>> +                                          struct c3_isp_buffer, list);
>> +
>> +     c3_isp_cap_wrmifx3_buff(cap);
>> +
>> +     if (cap->buff)
>> +             list_del(&cap->buff->list);
>> +}
>> +
>> +static void c3_isp_cap_start(struct c3_isp_capture *cap)
>> +{
>> +     scoped_guard(spinlock_irqsave, &cap->buff_lock)
>> +             c3_isp_cap_cfg_buff(cap);
>> +
>> +     c3_isp_cap_wrmifx3_size(cap);
>> +
>> +     if (cap->id == C3_ISP_CAP_DEV_0) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF0_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF0_EN);
>> +     } else if (cap->id == C3_ISP_CAP_DEV_1) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF1_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF1_EN);
>> +     } else if (cap->id == C3_ISP_CAP_DEV_2) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF2_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF2_EN);
>> +     }
> You could spare the {} for single line statements
>
> Could this maybe be simplified as
>
>          u32 val = cap->id == C3_ISP_CAP_DEV_0 ? ISP_TOP_PATH_EN_WRMIF0_EN :
>                    cap->id == C3_ISP_CAP_DEV_1 ? ISP_TOP_PATH_EN_WRMIF1_EN :
>                    cap->id == C3_ISP_CAP_DEV_2 ? ISP_TOP_PATH_EN_WRMIF2_EN : 0;
>
>          scoped_guard(spinlock_irqsave, &cap->buff_lock)
>                  c3_isp_cap_cfg_buff(cap);
>
>          c3_isp_cap_wrmifx3_size(cap);
>          c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, val, val);
>

Will use your method.

>> +}
>> +
>> +static void c3_isp_cap_stop(struct c3_isp_capture *cap)
>> +{
>> +     if (cap->id == C3_ISP_CAP_DEV_0) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF0_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF0_DIS);
>> +     } else if (cap->id == C3_ISP_CAP_DEV_1) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF1_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF1_DIS);
>> +     } else if (cap->id == C3_ISP_CAP_DEV_2) {
>> +             c3_isp_update_bits(cap->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_WRMIF2_EN_MASK,
>> +                                ISP_TOP_PATH_EN_WRMIF2_DIS);
>> +     }
> same here


Will use your method.

>> +}
>> +
>> +static void c3_isp_cap_done(struct c3_isp_capture *cap)
>> +{
>> +     struct c3_isp_buffer *buff = cap->buff;
>> +
>> +     guard(spinlock_irqsave)(&cap->buff_lock);
>> +
>> +     if (buff) {
>> +             buff->vb.sequence = cap->isp->frm_sequence;
>> +             buff->vb.vb2_buf.timestamp = ktime_get();
>> +             buff->vb.field = V4L2_FIELD_NONE;
>> +             vb2_buffer_done(&buff->vb.vb2_buf, VB2_BUF_STATE_DONE);
>> +     }
>> +
>> +     c3_isp_cap_cfg_buff(cap);
>> +}
>> +
>> +/* V4L2 video operations */
>> +
>> +static const struct c3_isp_capture_format
>> +*c3_cap_find_fmt(u32 fourcc)
> fits in one line


Will fit in one line.

>> +{
>> +     unsigned int i;
>> +
>> +     for (i = 0; i < ARRAY_SIZE(cap_formats); i++) {
> nit: you can declare i inside the for loop


Will use 'unsigned int i = 0' in the for loop.

>> +             if (cap_formats[i].fourcc == fourcc)
>> +                     return &cap_formats[i];
>> +     }
>> +
>> +     return NULL;
>> +}
>> +
>> +static void c3_cap_try_fmt(struct c3_isp_capture *cap,
>> +                        struct v4l2_pix_format *pix)
>> +{
>> +     const struct c3_isp_capture_format *fmt;
>> +     const struct v4l2_format_info *info;
>> +
>> +     fmt = c3_cap_find_fmt(pix->pixelformat);
>> +     if (!fmt)
>> +             fmt = &cap_formats[0];
>> +
>> +     pix->width = clamp(pix->width, C3_ISP_MIN_WIDTH, C3_ISP_MAX_WIDTH);
>> +     pix->height = clamp(pix->height, C3_ISP_MIN_HEIGHT, C3_ISP_MAX_HEIGHT);
>> +     pix->pixelformat = fmt->fourcc;
>> +     pix->field = V4L2_FIELD_NONE;
>> +     pix->colorspace = V4L2_COLORSPACE_SRGB;
>> +     pix->ycbcr_enc = V4L2_YCBCR_ENC_601;
>> +     pix->quantization = V4L2_QUANTIZATION_LIM_RANGE;
>> +
>> +     info = v4l2_format_info(fmt->fourcc);
>> +     pix->bytesperline = pix->width * info->bpp[0] / info->bpp_div[0];
>> +
>> +     /* ISP hardware requires 16 bytes alignment */
>> +     pix->bytesperline = ALIGN(pix->bytesperline, C3_ISP_DMA_SIZE_ALIGN_BYTES);
>> +
>> +     pix->sizeimage = 0;
>> +     for (unsigned int i = 0; i < info->comp_planes; i++) {
>> +             unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>> +             unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
>> +             unsigned int bytesperline;
>> +
>> +             bytesperline = info->bpp[i] * DIV_ROUND_UP(pix->width, hdiv) / info->bpp_div[i];
>> +
>> +             /* ISP hardware requires 16 bytes alignment */
>> +             bytesperline = ALIGN(bytesperline, C3_ISP_DMA_SIZE_ALIGN_BYTES);
>> +             pix->sizeimage += bytesperline * DIV_ROUND_UP(pix->height, vdiv);
>> +     }
>> +}
>> +
>> +static void c3_isp_cap_return_buffers(struct c3_isp_capture *cap,
>> +                                   enum vb2_buffer_state state)
>> +{
>> +     struct c3_isp_buffer *buff;
>> +
>> +     guard(spinlock_irqsave)(&cap->buff_lock);
>> +
>> +     if (cap->buff) {
>> +             vb2_buffer_done(&cap->buff->vb.vb2_buf, state);
>> +             cap->buff = NULL;
>> +     }
>> +
>> +     while (!list_empty(&cap->pending)) {
>> +             buff = list_first_entry(&cap->pending,
>> +                                     struct c3_isp_buffer, list);
>> +             list_del(&buff->list);
>> +             vb2_buffer_done(&buff->vb.vb2_buf, state);
>> +     }
>> +}
>> +
>> +static int c3_isp_cap_querycap(struct file *file, void *fh,
>> +                            struct v4l2_capability *cap)
>> +{
>> +     strscpy(cap->driver, C3_ISP_DRIVER_NAME, sizeof(cap->driver));
>> +     strscpy(cap->card, "AML C3 ISP", sizeof(cap->card));
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_cap_enum_fmt(struct file *file, void *fh,
>> +                            struct v4l2_fmtdesc *f)
>> +{
>> +     const struct c3_isp_capture_format *fmt;
>> +     unsigned int index = 0;
>> +     unsigned int i;
>> +
>> +     if (!f->mbus_code) {
>> +             if (f->index >= ARRAY_SIZE(cap_formats))
>> +                     return -EINVAL;
>> +
>> +             fmt = &cap_formats[f->index];
>> +             f->pixelformat = fmt->fourcc;
>> +             return 0;
>> +     }
>> +
>> +     for (i = 0; i < ARRAY_SIZE(cap_formats); i++) {
>> +             fmt = &cap_formats[i];
>> +             if (f->mbus_code != fmt->mbus_code)
>> +                     continue;
>> +
>> +             if (index++ == f->index) {
>> +                     f->pixelformat = cap_formats[i].fourcc;
>> +                     return 0;
>> +             }
>> +     }
>> +
>> +     return -EINVAL;
>> +}
>> +
>> +static int c3_isp_cap_g_fmt(struct file *file, void *fh,
>> +                         struct v4l2_format *f)
>> +{
>> +     struct c3_isp_capture *cap = video_drvdata(file);
>> +
>> +     f->fmt.pix = cap->vfmt.fmt.pix;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_cap_s_fmt(struct file *file, void *fh,
>> +                         struct v4l2_format *f)
>> +{
>> +     struct c3_isp_capture *cap = video_drvdata(file);
>> +
>> +     c3_cap_try_fmt(cap, &f->fmt.pix);
>> +     cap->vfmt = *f;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_cap_try_fmt(struct file *file, void *fh,
>> +                           struct v4l2_format *f)
>> +{
>> +     struct c3_isp_capture *cap = video_drvdata(file);
>> +
>> +     c3_cap_try_fmt(cap, &f->fmt.pix);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_cap_enum_frmsize(struct file *file, void *fh,
>> +                                struct v4l2_frmsizeenum *fsize)
>> +{
>> +     const struct c3_isp_capture_format *fmt;
>> +
>> +     if (fsize->index)
>> +             return -EINVAL;
>> +
>> +     fmt = c3_cap_find_fmt(fsize->pixel_format);
>> +     if (!fmt)
>> +             return -EINVAL;
>> +
>> +     fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
>> +     fsize->stepwise.min_width = C3_ISP_MIN_WIDTH;
>> +     fsize->stepwise.min_height = C3_ISP_MIN_HEIGHT;
>> +     fsize->stepwise.max_width = C3_ISP_MAX_WIDTH;
>> +     fsize->stepwise.max_height = C3_ISP_MAX_HEIGHT;
>> +     fsize->stepwise.step_width = 2;
>> +     fsize->stepwise.step_height = 2;
>> +
>> +     return 0;
>> +}
>> +
>> +static const struct v4l2_ioctl_ops isp_cap_v4l2_ioctl_ops = {
>> +     .vidioc_querycap                = c3_isp_cap_querycap,
>> +     .vidioc_enum_fmt_vid_cap        = c3_isp_cap_enum_fmt,
>> +     .vidioc_g_fmt_vid_cap           = c3_isp_cap_g_fmt,
>> +     .vidioc_s_fmt_vid_cap           = c3_isp_cap_s_fmt,
>> +     .vidioc_try_fmt_vid_cap         = c3_isp_cap_try_fmt,
>> +     .vidioc_reqbufs                 = vb2_ioctl_reqbufs,
>> +     .vidioc_querybuf                = vb2_ioctl_querybuf,
>> +     .vidioc_qbuf                    = vb2_ioctl_qbuf,
>> +     .vidioc_expbuf                  = vb2_ioctl_expbuf,
>> +     .vidioc_dqbuf                   = vb2_ioctl_dqbuf,
>> +     .vidioc_prepare_buf             = vb2_ioctl_prepare_buf,
>> +     .vidioc_create_bufs             = vb2_ioctl_create_bufs,
>> +     .vidioc_streamon                = vb2_ioctl_streamon,
>> +     .vidioc_streamoff               = vb2_ioctl_streamoff,
>> +     .vidioc_enum_framesizes         = c3_isp_cap_enum_frmsize,
>> +     .vidioc_subscribe_event         = v4l2_ctrl_subscribe_event,
>> +     .vidioc_unsubscribe_event       = v4l2_event_unsubscribe,
>> +};
>> +
>> +static const struct v4l2_file_operations isp_cap_v4l2_fops = {
>> +     .open = v4l2_fh_open,
>> +     .release = vb2_fop_release,
>> +     .poll = vb2_fop_poll,
>> +     .unlocked_ioctl = video_ioctl2,
>> +     .mmap = vb2_fop_mmap,
>> +};
>> +
>> +static int c3_isp_cap_link_validate(struct media_link *link)
>> +{
>> +     struct video_device *vdev =
>> +             media_entity_to_video_device(link->sink->entity);
>> +     struct v4l2_subdev *sd =
>> +             media_entity_to_v4l2_subdev(link->source->entity);
>> +     struct c3_isp_capture *cap = video_get_drvdata(vdev);
>> +     struct v4l2_pix_format *pix_fmt = &cap->vfmt.fmt.pix;
>> +     struct v4l2_subdev_format src_fmt = {
>> +             .which = V4L2_SUBDEV_FORMAT_ACTIVE,
>> +             .pad = link->source->index,
>> +     };
>> +     const struct c3_isp_capture_format *cap_fmt =
>> +                             c3_cap_find_fmt(pix_fmt->pixelformat);
>> +     int ret;
>> +
>> +     ret = v4l2_subdev_call_state_active(sd, pad, get_fmt, &src_fmt);
>> +     if (ret)
>> +             return ret;
>> +
>> +     if (src_fmt.format.width != pix_fmt->width ||
>> +         src_fmt.format.height != pix_fmt->height ||
>> +         src_fmt.format.code != cap_fmt->mbus_code) {
>> +             dev_err(cap->isp->dev,
>> +                     "link %s: %u -> %s: %u not valid: 0x%04x/%ux%u not match 0x%04x/%ux%u\n",
>> +                     link->source->entity->name, link->source->index,
>> +                     link->sink->entity->name, link->sink->index,
>> +                     src_fmt.format.code, src_fmt.format.width,
>> +                     src_fmt.format.height, cap_fmt->mbus_code,
>> +                     pix_fmt->width, pix_fmt->height);
>> +
>> +             return -EPIPE;
>> +     };
>> +
>> +     return 0;
>> +}
>> +
>> +static const struct media_entity_operations isp_cap_entity_ops = {
>> +     .link_validate = c3_isp_cap_link_validate,
>> +};
>> +
>> +static int c3_isp_vb2_queue_setup(struct vb2_queue *q,
>> +                               unsigned int *num_buffers,
>> +                               unsigned int *num_planes,
>> +                               unsigned int sizes[],
>> +                               struct device *alloc_devs[])
>> +{
>> +     struct c3_isp_capture *cap = vb2_get_drv_priv(q);
>> +     struct v4l2_pix_format *pix = &cap->vfmt.fmt.pix;
>> +
>> +     if (*num_planes) {
>> +             if (*num_planes != 1)
>> +                     return -EINVAL;
>> +
>> +             if (sizes[0] < pix->sizeimage)
>> +                     return -EINVAL;
> I'm not sure this is correct. This capture device supports formats
> with multiple planes, you should verify that *num_planes is equal to
> the number of planes of the currently applied format and that each
> plane has the correct size


This capture device only supports 'V4L2_CAP_VIDEO_CAPTURE', so only need 
'*num_planes = 1'.

> And, if you return here


The reason for doing this is to pass the test of 'v4l2-compliance 
1.29.0-5246'.

>
>> +     } else {
> You can skip the else {}
>
>> +             *num_planes = 1;
>> +             sizes[0] = pix->sizeimage;
> And here set the number of planes to the correct number and set the
> size of each plane ?


The reason for doing this is to pass the test of 'v4l2-compliance 
1.29.0-5246'.

>
> And now I realized you're using the single-planar API for buffer
> management
>
>          vb2_q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
>
> I was expecting it to rather be
>
>          vb2_q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
>
> Even more so as you support multiplanar YUV formats.
>
> Any reason why you chose to use the single planar API ?


I think the single-planar API is a bit simpler.

Will try to use multi-planar.

>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_vb2_buf_queue(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_buffer *buf =
>> +                     container_of(v4l2_buf, struct c3_isp_buffer, vb);
>> +     struct c3_isp_capture *cap = vb2_get_drv_priv(vb->vb2_queue);
>> +
>> +     guard(spinlock_irqsave)(&cap->buff_lock);
>> +
>> +     list_add_tail(&buf->list, &cap->pending);
>> +}
>> +
>> +static int c3_isp_vb2_buf_prepare(struct vb2_buffer *vb)
>> +{
>> +     struct c3_isp_capture *cap = vb2_get_drv_priv(vb->vb2_queue);
>> +     unsigned int size = cap->vfmt.fmt.pix.sizeimage;
>> +
>> +     if (vb2_plane_size(vb, 0) < size) {
>> +             dev_err(cap->isp->dev,
>> +                     "User buffer too small (%ld < %u)\n",
>> +                     vb2_plane_size(vb, 0), size);
>> +             return -EINVAL;
>> +     }
>> +
>> +     vb2_set_plane_payload(vb, 0, size);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_vb2_buf_init(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_buffer *buf =
>> +             container_of(v4l2_buf, struct c3_isp_buffer, vb);
>> +
>> +     buf->dma_addr = vb2_dma_contig_plane_dma_addr(vb, 0);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_vb2_start_streaming(struct vb2_queue *q,
>> +                                   unsigned int count)
>> +{
>> +     struct c3_isp_capture *cap = vb2_get_drv_priv(q);
>> +     int ret;
>> +
>> +     ret = pm_runtime_resume_and_get(cap->isp->dev);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = video_device_pipeline_start(&cap->vdev, &cap->isp->pipe);
>> +     if (ret) {
>> +             dev_err(cap->isp->dev,
>> +                     "Failed to start cap%u pipeline: %d\n", cap->id, ret);
>> +             goto err_pm_put;
>> +     }
> You could pipeline_start() after pm_runtime_resume_and_get() and save
> this jump.


Will firstly use pipeline_start() and then pm_runtime_resume_and_get().

>> +
>> +     ret = c3_isp_cap_dummy_buff_create(cap);
>> +     if (ret)
>> +             goto err_pipeline_stop;
>> +
>> +     c3_isp_cap_start(cap);
>> +
>> +     ret = v4l2_subdev_enable_streams(&cap->rsz->sd,
>> +                                      C3_ISP_RESIZER_PAD_SOURCE, BIT(0));
>> +     if (ret)
>> +             goto err_dummy_destroy;
>> +
>> +     return 0;
>> +
>> +err_dummy_destroy:
>> +     c3_isp_cap_dummy_buff_destroy(cap);
>> +err_pipeline_stop:
>> +     video_device_pipeline_stop(&cap->vdev);
>> +err_pm_put:
>> +     pm_runtime_put(cap->isp->dev);
>> +     c3_isp_cap_return_buffers(cap, VB2_BUF_STATE_QUEUED);
>> +     return ret;
>> +}
>> +
>> +static void c3_isp_vb2_stop_streaming(struct vb2_queue *q)
>> +{
>> +     struct c3_isp_capture *cap = vb2_get_drv_priv(q);
>> +
>> +     c3_isp_cap_stop(cap);
>> +     c3_isp_cap_return_buffers(cap, VB2_BUF_STATE_ERROR);
>> +
>> +     v4l2_subdev_disable_streams(&cap->rsz->sd,
>> +                                 C3_ISP_RESIZER_PAD_SOURCE, BIT(0));
>> +
>> +     c3_isp_cap_dummy_buff_destroy(cap);
>> +
>> +     video_device_pipeline_stop(&cap->vdev);
>> +     pm_runtime_put(cap->isp->dev);
>> +}
>> +
>> +static const struct vb2_ops isp_video_vb2_ops = {
>> +     .queue_setup = c3_isp_vb2_queue_setup,
>> +     .buf_queue = c3_isp_vb2_buf_queue,
>> +     .buf_prepare = c3_isp_vb2_buf_prepare,
>> +     .buf_init = c3_isp_vb2_buf_init,
>> +     .wait_prepare = vb2_ops_wait_prepare,
>> +     .wait_finish = vb2_ops_wait_finish,
>> +     .start_streaming = c3_isp_vb2_start_streaming,
>> +     .stop_streaming = c3_isp_vb2_stop_streaming,
>> +};
>> +
>> +static int c3_isp_register_capture(struct c3_isp_capture *cap)
>> +{
>> +     struct video_device *vdev = &cap->vdev;
>> +     struct vb2_queue *vb2_q = &cap->vb2_q;
>> +     int ret;
>> +
>> +     snprintf(vdev->name, sizeof(vdev->name), "c3-isp-cap%u", cap->id);
>> +     vdev->fops = &isp_cap_v4l2_fops;
>> +     vdev->ioctl_ops = &isp_cap_v4l2_ioctl_ops;
>> +     vdev->v4l2_dev = &cap->isp->v4l2_dev;
>> +     vdev->entity.ops = &isp_cap_entity_ops;
>> +     vdev->lock = &cap->lock;
>> +     vdev->minor = -1;
>> +     vdev->queue = vb2_q;
>> +     vdev->release = video_device_release_empty;
>> +     vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
>> +     vdev->vfl_dir = VFL_DIR_RX;
>> +     video_set_drvdata(vdev, cap);
>> +
>> +     vb2_q->drv_priv = cap;
>> +     vb2_q->mem_ops = &vb2_dma_contig_memops;
>> +     vb2_q->ops = &isp_video_vb2_ops;
>> +     vb2_q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
>> +     vb2_q->io_modes = VB2_DMABUF | VB2_MMAP;
>> +     vb2_q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>> +     vb2_q->buf_struct_size = sizeof(struct c3_isp_buffer);
>> +     vb2_q->dev = cap->isp->dev;
>> +     vb2_q->lock = &cap->lock;
>> +     vb2_q->min_queued_buffers = 2;
> Now that you're using a dummy buffer you can drop this


Will drop this line.

>> +
>> +     ret = vb2_queue_init(vb2_q);
>> +     if (ret < 0)
>> +             goto err_destroy;
>> +
>> +     cap->pad.flags = MEDIA_PAD_FL_SINK;
>> +     ret = media_entity_pads_init(&vdev->entity, 1, &cap->pad);
>> +     if (ret < 0)
>> +             goto err_queue_release;
>> +
>> +     ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>> +     if (ret < 0) {
>> +             dev_err(cap->isp->dev,
>> +                     "Failed to register %s: %d\n", vdev->name, ret);
>> +             goto err_entity_cleanup;
>> +     }
>> +
>> +     return 0;
>> +
>> +err_entity_cleanup:
>> +     media_entity_cleanup(&vdev->entity);
>> +err_queue_release:
>> +     vb2_queue_release(vb2_q);
>> +err_destroy:
>> +     mutex_destroy(&cap->lock);
>> +     return ret;
>> +}
>> +
>> +int c3_isp_captures_register(struct c3_isp_device *isp)
>> +{
>> +     int ret;
>> +     unsigned int i;
>> +     struct c3_isp_capture *cap;
>> +
>> +     for (i = C3_ISP_CAP_DEV_0; i < C3_ISP_NUM_CAP_DEVS; i++) {
>> +             cap = &isp->caps[i];
>> +             memset(cap, 0, sizeof(*cap));
>> +
>> +             cap->vfmt.fmt.pix.width = C3_ISP_DEFAULT_WIDTH;
>> +             cap->vfmt.fmt.pix.height = C3_ISP_DEFAULT_HEIGHT;
>> +             cap->vfmt.fmt.pix.field = V4L2_FIELD_NONE;
>> +             cap->vfmt.fmt.pix.pixelformat = V4L2_PIX_FMT_NV21;
>> +             cap->vfmt.fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
>> +
>> +             c3_cap_try_fmt(cap, &cap->vfmt.fmt.pix);
>> +
>> +             cap->id = i;
>> +             cap->rsz = &isp->resizers[i];
>> +             cap->isp = isp;
>> +             INIT_LIST_HEAD(&cap->pending);
>> +             spin_lock_init(&cap->buff_lock);
>> +             mutex_init(&cap->lock);
>> +
>> +             ret = c3_isp_register_capture(cap);
>> +             if (ret) {
>> +                     cap->isp = NULL;
>> +                     mutex_destroy(&cap->lock);
>> +                     c3_isp_captures_unregister(isp);
>> +                     return ret;
>> +             }
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +void c3_isp_captures_unregister(struct c3_isp_device *isp)
>> +{
>> +     unsigned int i;
>> +     struct c3_isp_capture *cap;
>> +
>> +     for (i = C3_ISP_CAP_DEV_0; i < C3_ISP_NUM_CAP_DEVS; i++) {
>> +             cap = &isp->caps[i];
>> +
>> +             if (!cap->isp)
>> +                     continue;
>> +             vb2_queue_release(&cap->vb2_q);
>> +             media_entity_cleanup(&cap->vdev.entity);
>> +             video_unregister_device(&cap->vdev);
>> +             mutex_destroy(&cap->lock);
>> +     }
>> +}
>> +
>> +void c3_isp_captures_isr(struct c3_isp_device *isp)
>> +{
>> +     c3_isp_cap_done(&isp->caps[C3_ISP_CAP_DEV_0]);
>> +     c3_isp_cap_done(&isp->caps[C3_ISP_CAP_DEV_1]);
>> +     c3_isp_cap_done(&isp->caps[C3_ISP_CAP_DEV_2]);
>> +}
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-common.h b/drivers/media/platform/amlogic/c3/isp/c3-isp-common.h
>> new file mode 100644
>> index 000000000000..d2c0b9aacf36
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-common.h
>> @@ -0,0 +1,352 @@
>> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#ifndef __C3_ISP_COMMON_H__
>> +#define __C3_ISP_COMMON_H__
>> +
>> +#include <linux/clk.h>
>> +
>> +#include <media/media-device.h>
>> +#include <media/videobuf2-core.h>
>> +#include <media/v4l2-device.h>
>> +#include <media/v4l2-subdev.h>
>> +#include <media/videobuf2-v4l2.h>
>> +
>> +#define C3_ISP_DRIVER_NAME            "c3-isp"
>> +#define C3_ISP_CLOCK_NUM_MAX          3
>> +
>> +#define C3_ISP_CORE_DEF_SINK_PAD_FMT  MEDIA_BUS_FMT_SRGGB10_1X10
>> +#define C3_ISP_CORE_DEF_SRC_PAD_FMT   MEDIA_BUS_FMT_YUV8_1X24
>> +#define C3_ISP_RSZ_DEF_PAD_FMT        MEDIA_BUS_FMT_YUV8_1X24
>> +#define C3_ISP_DEFAULT_WIDTH          1920
>> +#define C3_ISP_DEFAULT_HEIGHT         1080
>> +#define C3_ISP_MAX_WIDTH              2888
>> +#define C3_ISP_MAX_HEIGHT             2240
>> +#define C3_ISP_MIN_WIDTH              160
>> +#define C3_ISP_MIN_HEIGHT             120
>> +
>> +#define C3_ISP_DMA_SIZE_ALIGN_BYTES   16
>> +#define C3_ISP_DISP_REG(base, id)     ((base) + (id) * 0x400)
>> +#define C3_ISP_WRMIFX3_REG(base, id)  ((base) + (id) * 0x100)
>> +#define C3_ISP_PPS_TAP4_S11_H_NUM     33
>> +#define C3_ISP_PPS_LUT_CTYPE_0        0
>> +#define C3_ISP_PPS_LUT_CTYPE_2        2
>> +#define C3_ISP_SCALE_EN               1
>> +#define C3_ISP_SCALE_DIS              0
>> +
>> +#define C3_ISP_PHASE_OFFSET_0         0
>> +#define C3_ISP_PHASE_OFFSET_1         1
>> +#define C3_ISP_PHASE_OFFSET_NONE      0xff
>> +
>> +enum c3_isp_core_pads {
>> +     C3_ISP_CORE_PAD_SINK_VIDEO,
>> +     C3_ISP_CORE_PAD_SINK_PARAMS,
>> +     C3_ISP_CORE_PAD_SOURCE_STATS,
>> +     C3_ISP_CORE_PAD_SOURCE_VIDEO,
>> +     C3_ISP_CORE_PAD_MAX
>> +};
>> +
>> +enum c3_isp_resizer_ids {
>> +     C3_ISP_RSZ_0,
>> +     C3_ISP_RSZ_1,
>> +     C3_ISP_RSZ_2,
>> +     C3_ISP_NUM_RSZ
>> +};
>> +
>> +enum c3_isp_resizer_pads {
>> +     C3_ISP_RESIZER_PAD_SINK,
>> +     C3_ISP_RESIZER_PAD_SOURCE,
>> +     C3_ISP_RESIZER_PAD_MAX
>> +};
>> +
>> +enum c3_isp_cap_devs {
>> +     C3_ISP_CAP_DEV_0,
>> +     C3_ISP_CAP_DEV_1,
>> +     C3_ISP_CAP_DEV_2,
>> +     C3_ISP_NUM_CAP_DEVS
>> +};
>> +
>> +/*
>> + * struct c3_isp_pps_io_size - ISP scaler input and output size
>> + *
>> + * @thsize: input horizontal size of after preprocessing
>> + * @tvsize: input vertical size of after preprocessing
>> + * @ohsize: output horizontal size
>> + * @ovsize: output vertical size
>> + * @ihsize: input horizontal size
>> + * @max_hsize: maximum horizontal size
>> + */
>> +struct c3_isp_pps_io_size {
>> +     u32 thsize;
>> +     u32 tvsize;
>> +     u32 ohsize;
>> +     u32 ovsize;
>> +     u32 ihsize;
>> +     u32 max_hsize;
>> +};
>> +
>> +/*
>> + * struct c3_isp_mbus_format_info - MBUS format information
>> + *
>> + * @mbus_code: the mbus code
>> + * @pads: bitmask detailing valid pads for this mbus_code
>> + * @xofst: horizontal phase offset of hardware
>> + * @yofst: vertical phase offset of hardware
>> + */
>> +struct c3_isp_mbus_format_info {
> It seems to me some of these types are used only inside a single .c
> file
>
> $ git grep c3_isp_mbus_format_info drivers/media/platform/amlogic/c3/isp/
> drivers/media/platform/amlogic/c3/isp/c3-isp-common.h: * struct c3_isp_mbus_format_info - MBUS format information
> drivers/media/platform/amlogic/c3/isp/c3-isp-common.h:struct c3_isp_mbus_format_info {
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:static const struct c3_isp_mbus_format_info c3_isp_core_mbus_formats[] = {
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:static const struct c3_isp_mbus_format_info
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:            const struct c3_isp_mbus_format_info *info =
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:static const struct c3_isp_mbus_format_info
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:            const struct c3_isp_mbus_format_info *info =
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:    const struct c3_isp_mbus_format_info *isp_fmt;
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:    const struct c3_isp_mbus_format_info *info;
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:    const struct c3_isp_mbus_format_info *isp_fmt;
> drivers/media/platform/amlogic/c3/isp/c3-isp-core.c:    const struct c3_isp_mbus_format_info *isp_fmt;
>
> Could they be declared there ?


OK, it will be declared in c3-isp-core.c file.

>> +     u32 mbus_code;
>> +     u32 pads;
>> +     u8 xofst;
>> +     u8 yofst;
>> +};
>> +
>> +/*
>> + * struct c3_isp_capture_format - The image format of capture device
>> + *
>> + * @mbus_code: the mbus code
>> + * @fourcc: pixel format
>> + */
>> +struct c3_isp_capture_format {
>> +     u32 mbus_code;
>> +     u32 fourcc;
>> +};
>> +
>> +/*
>> + * struct c3_isp_buffer - A container of vb2 buffer used by the video devices:
>> + *                        capture and stats video devices
>> + *
>> + * @vb: vb2 buffer
>> + * @dma_addr: buffer physical address
>> + * @list: entry of the buffer in the queue
>> + */
>> +struct c3_isp_buffer {
>> +     struct vb2_v4l2_buffer vb;
>> +     dma_addr_t dma_addr;
>> +     struct list_head list;
>> +};
>> +
>> +/*
>> + * struct c3_isp_params_buffer - A container of vb2 buffer used by the
>> + *                               params video device
>> + *
>> + * @vb: vb2 buffer
>> + * @cfg: scratch buffer used for caching the ISP configuration parameters
>> + * @list: entry of the buffer in the queue
>> + */
>> +struct c3_isp_params_buffer {
>> +     struct vb2_v4l2_buffer vb;
>> +     void *cfg;
>> +     struct list_head list;
>> +};
>> +
>> +/*
>> + * struct c3_isp_dummy_buffer - A buffer to write the next frame to in case
>> + *                           there are no vb2 buffers available.
>> + *
>> + * @vaddr:   return value of call to dma_alloc_attrs
>> + * @dma_addr:        dma address of the buffer
>> + * @size:    size of the buffer
>> + */
>> +struct c3_isp_dummy_buffer {
>> +     void *vaddr;
>> +     dma_addr_t dma_addr;
>> +     u32 size;
>> +};
>> +
>> +/*
>> + * struct c3_isp_core - ISP core subdev
>> + *
>> + * @sd: ISP sub-device
>> + * @pads: ISP sub-device pads
>> + * @src_sd: source sub-device
>> + * @src_sd_pad: source sub-device pad
>> + * @isp: pointer to c3_isp_device
>> + */
>> +struct c3_isp_core {
>> +     struct v4l2_subdev sd;
>> +     struct media_pad pads[C3_ISP_CORE_PAD_MAX];
>> +     struct v4l2_subdev *src_sd;
>> +     u16 src_sd_pad;
>> +     struct c3_isp_device *isp;
>> +};
>> +
>> +/*
>> + * struct c3_isp_resizer - ISP resizer subdev
>> + *
>> + * @id: resizer id
>> + * @sd: resizer sub-device
>> + * @pads: resizer sub-device pads
>> + * @src_sd: source sub-device
>> + * @src_sd_pad: source sub-device pad
>> + * @isp: pointer to c3_isp_device
>> + */
>> +struct c3_isp_resizer {
>> +     enum c3_isp_resizer_ids id;
>> +     struct v4l2_subdev sd;
>> +     struct media_pad pads[C3_ISP_RESIZER_PAD_MAX];
>> +     struct v4l2_subdev *src_sd;
>> +     u32 src_sd_pad;
>> +     struct c3_isp_device *isp;
>> +};
>> +
>> +/*
>> + * struct c3_isp_stats - ISP statistics device
>> + *
>> + * @vb2_q: vb2 buffer queue
>> + * @vdev: video node
>> + * @vfmt: v4l2_format of the metadata format
>> + * @pad: media pad
>> + * @lock: protects vb2_q, vdev
>> + * @isp: pointer to c3_isp_device
>> + * @buff: in use buffer
>> + * @buff_lock: protects stats buffer
>> + * @pending: stats buffer list head
>> + */
>> +struct c3_isp_stats {
>> +     struct vb2_queue vb2_q;
>> +     struct video_device vdev;
>> +     struct v4l2_format vfmt;
>> +     struct media_pad pad;
>> +
>> +     struct mutex lock; /* Protects vb2_q, vdev */
>> +     struct c3_isp_device *isp;
>> +
>> +     struct c3_isp_buffer *buff;
>> +     spinlock_t buff_lock; /* Protects stats buffer */
>> +     struct list_head pending;
>> +};
>> +
>> +/*
>> + * struct c3_isp_params - ISP parameters device
>> + *
>> + * @vb2_q: vb2 buffer queue
>> + * @vdev: video node
>> + * @vfmt: v4l2_format of the metadata format
>> + * @pad: media pad
>> + * @lock: protects vb2_q, vdev
>> + * @isp: pointer to c3_isp_device
>> + * @buff: in use buffer
>> + * @buff_lock: protects stats buffer
>> + * @pending: stats buffer list head
>> + */
>> +struct c3_isp_params {
>> +     struct vb2_queue vb2_q;
>> +     struct video_device vdev;
>> +     struct v4l2_format vfmt;
>> +     struct media_pad pad;
>> +
>> +     struct mutex lock; /* Protects vb2_q, vdev */
>> +     struct c3_isp_device *isp;
>> +
>> +     struct c3_isp_params_buffer *buff;
>> +     spinlock_t buff_lock; /* Protects params buffer */
>> +     struct list_head pending;
>> +};
>> +
>> +/*
>> + * struct c3_isp_capture - ISP capture device
>> + *
>> + * @id: capture device ID
>> + * @vb2_q: vb2 buffer queue
>> + * @vdev: video node
>> + * @vfmt: v4l2_format of the capture format
>> + * @pad: media pad
>> + * @lock: protects vb2_q, vdev
>> + * @isp: pointer to c3_isp_device
>> + * @rsz: pointer to c3_isp_resizer
>> + * @buff: in use buffer
>> + * @buff_lock: protects capture buffer
>> + * @pending: capture buffer list head
>> + */
>> +struct c3_isp_capture {
>> +     enum c3_isp_cap_devs id;
>> +     struct vb2_queue vb2_q;
>> +     struct video_device vdev;
>> +     struct v4l2_format vfmt;
>> +     struct media_pad pad;
>> +
>> +     struct mutex lock; /* Protects vb2_q, vdev */
>> +     struct c3_isp_device *isp;
>> +     struct c3_isp_resizer *rsz;
>> +
>> +     struct c3_isp_dummy_buffer dummy_buff;
>> +     struct c3_isp_buffer *buff;
>> +     spinlock_t buff_lock; /* Protects stream buffer */
>> +     struct list_head pending;
>> +};
>> +
>> +/**
>> + * struct c3_isp_info - ISP information
>> + *
>> + * @clocks: array of ISP clock names
>> + * @clock_rates: array of ISP clock rate
>> + * @clock_num: actual clock number
>> + */
>> +struct c3_isp_info {
>> +     char *clocks[C3_ISP_CLOCK_NUM_MAX];
>> +     u32 clock_rates[C3_ISP_CLOCK_NUM_MAX];
>> +     u32 clock_num;
>> +};
>> +
>> +/**
>> + * struct c3_isp_device - ISP platform device
>> + *
>> + * @dev: pointer to the struct device
>> + * @base: base register address
>> + * @clks: array of clocks
>> + * @notifier: notifier to register on the v4l2-async API
>> + * @v4l2_dev: v4l2_device variable
>> + * @media_dev: media device variable
>> + * @pipe: media pipeline
>> + * @core: ISP core subdev
>> + * @resizer: ISP resizer subdev
>> + * @stats: ISP stats device
>> + * @params: ISP params device
>> + * @caps: array of ISP capture device
>> + * @frm_sequence: used to record frame id
>> + * @info: version-specific ISP information
>> + */
>> +struct c3_isp_device {
>> +     struct device *dev;
>> +     void __iomem *base;
>> +     struct clk_bulk_data clks[C3_ISP_CLOCK_NUM_MAX];
>> +
>> +     struct v4l2_async_notifier notifier;
>> +     struct v4l2_device v4l2_dev;
>> +     struct media_device media_dev;
>> +     struct media_pipeline pipe;
>> +
>> +     struct c3_isp_core core;
>> +     struct c3_isp_resizer resizers[C3_ISP_NUM_RSZ];
>> +     struct c3_isp_stats stats;
>> +     struct c3_isp_params params;
>> +     struct c3_isp_capture caps[C3_ISP_NUM_CAP_DEVS];
>> +
>> +     u32 frm_sequence;
>> +     const struct c3_isp_info *info;
>> +};
>> +
>> +u32 c3_isp_read(struct c3_isp_device *isp, u32 reg);
>> +void c3_isp_write(struct c3_isp_device *isp, u32 reg, u32 val);
>> +void c3_isp_update_bits(struct c3_isp_device *isp, u32 reg, u32 mask, u32 val);
>> +
>> +void c3_isp_core_queue_eof(struct c3_isp_device *isp);
>> +int c3_isp_core_register(struct c3_isp_device *isp);
>> +void c3_isp_core_unregister(struct c3_isp_device *isp);
>> +int c3_isp_resizers_register(struct c3_isp_device *isp);
>> +void c3_isp_resizers_unregister(struct c3_isp_device *isp);
>> +int c3_isp_captures_register(struct c3_isp_device *isp);
>> +void c3_isp_captures_unregister(struct c3_isp_device *isp);
>> +void c3_isp_captures_isr(struct c3_isp_device *isp);
>> +void c3_isp_stats_pre_cfg(struct c3_isp_device *isp);
>> +int c3_isp_stats_register(struct c3_isp_device *isp);
>> +void c3_isp_stats_unregister(struct c3_isp_device *isp);
>> +void c3_isp_stats_isr(struct c3_isp_device *isp);
>> +void c3_isp_params_pre_cfg(struct c3_isp_device *isp);
>> +int c3_isp_params_register(struct c3_isp_device *isp);
>> +void c3_isp_params_unregister(struct c3_isp_device *isp);
>> +void c3_isp_params_isr(struct c3_isp_device *isp);
>> +
>> +#endif
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-core.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-core.c
>> new file mode 100644
>> index 000000000000..bf83e73dd744
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-core.c
>> @@ -0,0 +1,553 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/media/amlogic/c3-isp-config.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include <media/v4l2-event.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +#define C3_ISP_CORE_SUBDEV_NAME        "c3-isp-core"
>> +
>> +static const struct c3_isp_mbus_format_info c3_isp_core_mbus_formats[] = {
>> +     /* RAW formats */
>> +     {
>> +             .mbus_code      = MEDIA_BUS_FMT_SBGGR10_1X10,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_0,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_1,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SGBRG10_1X10,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_1,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_1,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SGRBG10_1X10,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_0,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_0,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SRGGB10_1X10,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_1,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_0,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SBGGR12_1X12,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_0,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_1,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SGBRG12_1X12,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_1,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_1,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SGRBG12_1X12,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_0,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_0,
>> +     }, {
>> +             .mbus_code      = MEDIA_BUS_FMT_SRGGB12_1X12,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SINK_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_1,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_0,
>> +     },
>> +     /* YUV formats */
>> +     {
>> +             .mbus_code      = MEDIA_BUS_FMT_YUV8_1X24,
>> +             .pads           = BIT(C3_ISP_CORE_PAD_SOURCE_VIDEO),
>> +             .xofst          = C3_ISP_PHASE_OFFSET_NONE,
>> +             .yofst          = C3_ISP_PHASE_OFFSET_NONE,
>> +     },
>> +};
>> +
>> +static const struct c3_isp_mbus_format_info
>> +*core_find_format_by_code(u32 code, u32 pad)
>> +{
>> +     for (unsigned int i = 0; i < ARRAY_SIZE(c3_isp_core_mbus_formats); i++) {
>> +             const struct c3_isp_mbus_format_info *info =
>> +                     &c3_isp_core_mbus_formats[i];
>> +
>> +             if (info->mbus_code == code && info->pads & BIT(pad))
>> +                     return info;
>> +     }
>> +
>> +     return NULL;
>> +}
>> +
>> +static const struct c3_isp_mbus_format_info
>> +*core_find_format_by_index(u32 index, u32 pad)
>> +{
>> +     for (unsigned int i = 0; i < ARRAY_SIZE(c3_isp_core_mbus_formats); i++) {
>> +             const struct c3_isp_mbus_format_info *info =
>> +                     &c3_isp_core_mbus_formats[i];
>> +
>> +             if (!(info->pads & BIT(pad)))
>> +                     continue;
>> +
>> +             if (!index)
>> +                     return info;
>> +
>> +             index--;
>> +     }
>> +
>> +     return NULL;
>> +}
>> +
>> +static void c3_isp_core_enable(struct c3_isp_device *isp)
>> +{
>> +     c3_isp_update_bits(isp, ISP_TOP_IRQ_EN, ISP_TOP_IRQ_EN_FRAME_END_MASK,
>> +                        ISP_TOP_IRQ_EN_FRAME_END_EN);
>> +     c3_isp_update_bits(isp, ISP_TOP_IRQ_EN, ISP_TOP_IRQ_EN_3A_DMA_ERR_MASK,
>> +                        ISP_TOP_IRQ_EN_3A_DMA_ERR_EN);
>> +
>> +     /* Enable image data to ISP core */
>> +     c3_isp_update_bits(isp, ISP_TOP_PATH_SEL, ISP_TOP_PATH_SEL_CORE_MASK,
>> +                        ISP_TOP_PATH_SEL_CORE_MIPI_CORE);
>> +}
>> +
>> +static void c3_isp_core_disable(struct c3_isp_device *isp)
>> +{
>> +     /* Disable image data to ISP core */
>> +     c3_isp_update_bits(isp, ISP_TOP_PATH_SEL, ISP_TOP_PATH_SEL_CORE_MASK,
>> +                        ISP_TOP_PATH_SEL_CORE_CORE_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_IRQ_EN, ISP_TOP_IRQ_EN_FRAME_END_MASK,
>> +                        ISP_TOP_IRQ_EN_FRAME_END_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_IRQ_EN, ISP_TOP_IRQ_EN_3A_DMA_ERR_MASK,
>> +                        ISP_TOP_IRQ_EN_3A_DMA_ERR_DIS);
>> +}
>> +
>> +/* Set the phase offset of blc, wb and lns */
>> +static void c3_isp_core_lswb_ofst(struct c3_isp_device *isp,
>> +                               u8 xofst, u8 yofst)
>> +{
>> +     c3_isp_update_bits(isp, ISP_LSWB_BLC_PHSOFST, ISP_LSWB_BLC_PHSOFST_HORIZ_OFST_MASK,
>> +                        ISP_LSWB_BLC_PHSOFST_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_LSWB_BLC_PHSOFST, ISP_LSWB_BLC_PHSOFST_VERT_OFST_MASK,
>> +                        ISP_LSWB_BLC_PHSOFST_VERT_OFST(yofst));
>> +
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_PHSOFST, ISP_LSWB_WB_PHSOFST_HORIZ_OFST_MASK,
>> +                        ISP_LSWB_WB_PHSOFST_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_PHSOFST, ISP_LSWB_WB_PHSOFST_VERT_OFST_MASK,
>> +                        ISP_LSWB_WB_PHSOFST_VERT_OFST(yofst));
>> +
>> +     c3_isp_update_bits(isp, ISP_LSWB_LNS_PHSOFST, ISP_LSWB_LNS_PHSOFST_HORIZ_OFST_MASK,
>> +                        ISP_LSWB_LNS_PHSOFST_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_LSWB_LNS_PHSOFST, ISP_LSWB_LNS_PHSOFST_VERT_OFST_MASK,
>> +                        ISP_LSWB_LNS_PHSOFST_VERT_OFST(yofst));
>> +}
>> +
>> +/* Set the phase offset of af, ae and awb */
>> +static void c3_isp_core_3a_ofst(struct c3_isp_device *isp,
>> +                             u8 xofst, u8 yofst)
>> +{
>> +     c3_isp_update_bits(isp, ISP_AF_CTRL, ISP_AF_CTRL_HORIZ_OFST_MASK,
>> +                        ISP_AF_CTRL_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_AF_CTRL, ISP_AF_CTRL_VERT_OFST_MASK,
>> +                        ISP_AF_CTRL_VERT_OFST(yofst));
>> +
>> +     c3_isp_update_bits(isp, ISP_AE_CTRL, ISP_AE_CTRL_HORIZ_OFST_MASK,
>> +                        ISP_AE_CTRL_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_AE_CTRL, ISP_AE_CTRL_VERT_OFST_MASK,
>> +                        ISP_AE_CTRL_VERT_OFST(yofst));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_CTRL, ISP_AWB_CTRL_HORIZ_OFST_MASK,
>> +                        ISP_AWB_CTRL_HORIZ_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_AWB_CTRL, ISP_AWB_CTRL_VERT_OFST_MASK,
>> +                        ISP_AWB_CTRL_VERT_OFST(yofst));
>> +}
>> +
>> +/* Set the phase offset of demosaic */
>> +static void c3_isp_core_dms_ofst(struct c3_isp_device *isp,
>> +                              u8 xofst, u8 yofst)
>> +{
>> +     c3_isp_update_bits(isp, ISP_DMS_COMMON_PARAM0, ISP_DMS_COMMON_PARAM0_HORIZ_PHS_OFST_MASK,
>> +                        ISP_DMS_COMMON_PARAM0_HORIZ_PHS_OFST(xofst));
>> +     c3_isp_update_bits(isp, ISP_DMS_COMMON_PARAM0, ISP_DMS_COMMON_PARAM0_VERT_PHS_OFST_MASK,
>> +                        ISP_DMS_COMMON_PARAM0_VERT_PHS_OFST(yofst));
>> +}
>> +
>> +static void c3_isp_core_cfg_format(struct c3_isp_device *isp,
>> +                                struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_mbus_framefmt *fmt;
>> +     const struct c3_isp_mbus_format_info *isp_fmt;
>> +
>> +     fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SINK_VIDEO);
>> +     isp_fmt = core_find_format_by_code(fmt->code, C3_ISP_CORE_PAD_SINK_VIDEO);
>> +
>> +     c3_isp_write(isp, ISP_TOP_INPUT_SIZE,
>> +                  ISP_TOP_INPUT_SIZE_HORIZ_SIZE(fmt->width) |
>> +                  ISP_TOP_INPUT_SIZE_VERT_SIZE(fmt->height));
>> +     c3_isp_write(isp, ISP_TOP_FRM_SIZE,
>> +                  ISP_TOP_FRM_SIZE_CORE_HORIZ_SIZE(fmt->width) |
>> +                  ISP_TOP_FRM_SIZE_CORE_VERT_SIZE(fmt->height));
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_HOLD_SIZE,
>> +                        ISP_TOP_HOLD_SIZE_CORE_HORIZ_SIZE_MASK,
>> +                        ISP_TOP_HOLD_SIZE_CORE_HORIZ_SIZE(fmt->width));
>> +
>> +     c3_isp_write(isp, ISP_AF_HV_SIZE,
>> +                  ISP_AF_HV_SIZE_GLB_WIN_XSIZE(fmt->width) |
>> +                  ISP_AF_HV_SIZE_GLB_WIN_YSIZE(fmt->height));
>> +     c3_isp_write(isp, ISP_AE_HV_SIZE,
>> +                  ISP_AE_HV_SIZE_HORIZ_SIZE(fmt->width) |
>> +                  ISP_AE_HV_SIZE_VERT_SIZE(fmt->height));
>> +     c3_isp_write(isp, ISP_AWB_HV_SIZE,
>> +                  ISP_AWB_HV_SIZE_HORIZ_SIZE(fmt->width) |
>> +                  ISP_AWB_HV_SIZE_VERT_SIZE(fmt->height));
>> +
>> +     c3_isp_core_lswb_ofst(isp, isp_fmt->xofst, isp_fmt->yofst);
>> +     c3_isp_core_3a_ofst(isp, isp_fmt->xofst, isp_fmt->yofst);
>> +     c3_isp_core_dms_ofst(isp, isp_fmt->xofst, isp_fmt->yofst);
>> +}
>> +
>> +static int c3_isp_core_enable_streams(struct v4l2_subdev *sd,
>> +                                   struct v4l2_subdev_state *state,
>> +                                   u32 pad, u64 streams_mask)
>> +{
>> +     struct c3_isp_core *core = v4l2_get_subdevdata(sd);
>> +     u64 sink_streams;
>> +     int ret;
>> +
>> +     core->isp->frm_sequence = 0;
>> +     c3_isp_core_cfg_format(core->isp, state);
>> +     c3_isp_core_enable(core->isp);
>> +
>> +     sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>> +                                                    C3_ISP_CORE_PAD_SINK_VIDEO,
>> +                                                    &streams_mask);
>> +     ret = v4l2_subdev_enable_streams(core->src_sd,
>> +                                      core->src_sd_pad, sink_streams);
>> +     if (ret) {
>> +             c3_isp_core_disable(core->isp);
>> +             return ret;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_core_disable_streams(struct v4l2_subdev *sd,
>> +                                    struct v4l2_subdev_state *state,
>> +                                    u32 pad, u64 streams_mask)
>> +{
>> +     struct c3_isp_core *core = v4l2_get_subdevdata(sd);
>> +     u64 sink_streams;
>> +     int ret;
>> +
>> +     sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>> +                                                    C3_ISP_CORE_PAD_SINK_VIDEO,
>> +                                                    &streams_mask);
> You can drop xlate_streams if you drop routing support


OK, will drop routing.

>> +     ret = v4l2_subdev_disable_streams(core->src_sd,
>> +                                       core->src_sd_pad, sink_streams);
>> +     if (ret)
>> +             return ret;
>> +
>> +     c3_isp_core_disable(core->isp);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_core_cfg_routing(struct v4l2_subdev *sd,
>> +                                struct v4l2_subdev_state *state,
>> +                                struct v4l2_subdev_krouting *routing)
>> +{
> As per the other drivers, routing support can be dropped


Will drop routing.

>> +     static const struct v4l2_mbus_framefmt format = {
>> +             .width = C3_ISP_DEFAULT_WIDTH,
>> +             .height = C3_ISP_DEFAULT_HEIGHT,
>> +             .code = C3_ISP_CORE_DEF_SRC_PAD_FMT,
>> +             .field = V4L2_FIELD_NONE,
>> +             .colorspace = V4L2_COLORSPACE_SRGB,
>> +             .ycbcr_enc = V4L2_YCBCR_ENC_601,
>> +             .quantization = V4L2_QUANTIZATION_LIM_RANGE,
>> +             .xfer_func = V4L2_XFER_FUNC_SRGB,
>> +     };
>> +     int ret;
>> +
>> +     ret = v4l2_subdev_routing_validate(sd, routing,
>> +                                        V4L2_SUBDEV_ROUTING_ONLY_1_TO_1);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = v4l2_subdev_set_routing_with_fmt(sd, state, routing, &format);
>> +     if (ret)
>> +             return ret;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_core_init_routing(struct v4l2_subdev *sd,
>> +                                 struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_subdev_route route;
>> +     struct v4l2_subdev_krouting routing;
>> +
>> +     route.sink_pad = C3_ISP_CORE_PAD_SINK_VIDEO;
>> +     route.sink_stream = 0;
>> +     route.source_pad = C3_ISP_CORE_PAD_SOURCE_VIDEO;
>> +     route.source_stream = 0;
>> +     route.flags = V4L2_SUBDEV_ROUTE_FL_ACTIVE;
>> +
>> +     routing.num_routes = 1;
>> +     routing.routes = &route;
>> +
>> +     return c3_isp_core_cfg_routing(sd, state, &routing);
>> +}
>> +
>> +static int c3_isp_core_enum_mbus_code(struct v4l2_subdev *sd,
>> +                                   struct v4l2_subdev_state *state,
>> +                                   struct v4l2_subdev_mbus_code_enum *code)
>> +{
>> +     const struct c3_isp_mbus_format_info *info;
>> +     int ret = 0;
>> +
>> +     switch (code->pad) {
>> +     case C3_ISP_CORE_PAD_SINK_VIDEO:
>> +     case C3_ISP_CORE_PAD_SOURCE_VIDEO:
>> +             info = core_find_format_by_index(code->index, code->pad);
>> +             if (!info)
>> +                     ret = -EINVAL;
>                          return -EINVAL;
>
>> +             else
> so you can drop the else
>

Yes, will drop 'else'

>> +                     code->code = info->mbus_code;
>> +
>> +             break;
>> +     case C3_ISP_CORE_PAD_SINK_PARAMS:
>> +     case C3_ISP_CORE_PAD_SOURCE_STATS:
>> +             if (code->index)
>> +                     ret = -EINVAL;
>> +             else
> here as well


Yes, will drop 'else'

>> +                     code->code = MEDIA_BUS_FMT_METADATA_FIXED;
>> +
>> +             break;
>> +     default:
>> +             ret = -EINVAL;
>                  return -EINVAL;
>
>> +             break;
>> +     }
>> +
>> +     return ret;
>          return 0;
>
>> +}
>> +
>> +static void c3_isp_core_set_sink_fmt(struct v4l2_subdev_state *state,
>> +                                  struct v4l2_subdev_format *format)
>> +{
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     const struct c3_isp_mbus_format_info *isp_fmt;
>> +
>> +     sink_fmt = v4l2_subdev_state_get_format(state, format->pad);
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SOURCE_VIDEO);
>> +
>> +     isp_fmt = core_find_format_by_code(format->format.code, format->pad);
>> +     if (!isp_fmt)
>> +             sink_fmt->code = C3_ISP_CORE_DEF_SINK_PAD_FMT;
>> +     else
>> +             sink_fmt->code = format->format.code;
>> +
>> +     sink_fmt->width = clamp_t(u32, format->format.width,
>> +                               C3_ISP_MIN_WIDTH, C3_ISP_MAX_WIDTH);
>> +     sink_fmt->height = clamp_t(u32, format->format.height,
>> +                                C3_ISP_MIN_HEIGHT, C3_ISP_MAX_HEIGHT);
>> +
> Should you set the colorspace related information like you do in
> init_state() ?
>
>          sink_fmt->field = V4L2_FIELD_NONE;
>          sink_fmt->colorspace = V4L2_COLORSPACE_RAW;
>          sink_fmt->xfer_func = V4L2_XFER_FUNC_NONE;
>          sink_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>          sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;


OK , will add the information.

>> +     src_fmt->width  = sink_fmt->width;
>> +     src_fmt->height = sink_fmt->height;
>> +
>> +     format->format = *sink_fmt;
>> +}
>> +
>> +static void c3_isp_core_set_source_fmt(struct v4l2_subdev_state *state,
>> +                                    struct v4l2_subdev_format *format)
>> +{
>> +     const struct c3_isp_mbus_format_info *isp_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +
>> +     src_fmt = v4l2_subdev_state_get_format(state, format->pad);
>> +
>> +     isp_fmt = core_find_format_by_code(format->format.code, format->pad);
>> +     if (!isp_fmt)
>> +             src_fmt->code = C3_ISP_CORE_DEF_SRC_PAD_FMT;
>> +     else
>> +             src_fmt->code = format->format.code;
>> +
>> +     format->format = *src_fmt;
> mm, this doesn't check the sizes... if the ISP cannot scale/crop the
> sizes here should come from the sink format, don't they ? Also
> remember to set the colorspace information
>

Will check the size.

>> +}
>> +
>> +static int c3_isp_core_set_fmt(struct v4l2_subdev *sd,
>> +                            struct v4l2_subdev_state *state,
>> +                            struct v4l2_subdev_format *format)
>> +{
>> +     struct v4l2_mbus_framefmt *fmt;
>> +
>> +     if (format->pad == C3_ISP_CORE_PAD_SINK_VIDEO) {
>> +             c3_isp_core_set_sink_fmt(state, format);
>> +     } else if (format->pad == C3_ISP_CORE_PAD_SINK_PARAMS ||
>> +                format->pad == C3_ISP_CORE_PAD_SOURCE_STATS) {
>> +             fmt = v4l2_subdev_state_get_format(state, format->pad);
>> +             format->format = *fmt;
> or
>
>                  format->format =
>                          *v4l2_subdev_state_get_format(state, format->pad);
>
> so you can drop *fmt and the {} or maybe turn this into a
>          switch (format->pad) {
>
>          }
>
> Up to you
>

Will check this issue.

>> +     } else if (format->pad == C3_ISP_CORE_PAD_SOURCE_VIDEO) {
>> +             c3_isp_core_set_source_fmt(state, format);
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_core_init_state(struct v4l2_subdev *sd,
>> +                               struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
> Or simply use one
>
>          struct v4l2_mbus_framefmt *fmt;


Will use one '*fmt'.

>> +
>> +     /* Video sink pad */
>> +     sink_fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SINK_VIDEO);
>> +     sink_fmt->width = C3_ISP_DEFAULT_WIDTH;
>> +     sink_fmt->height = C3_ISP_DEFAULT_HEIGHT;
>> +     sink_fmt->field = V4L2_FIELD_NONE;
>> +     sink_fmt->code = C3_ISP_CORE_DEF_SINK_PAD_FMT;
>> +     sink_fmt->colorspace = V4L2_COLORSPACE_RAW;
>> +     sink_fmt->xfer_func = V4L2_XFER_FUNC_NONE;
>> +     sink_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>> +     sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
>> +
>> +     /* Video source pad */
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SOURCE_VIDEO);
>> +     src_fmt->width = C3_ISP_DEFAULT_WIDTH;
>> +     src_fmt->height = C3_ISP_DEFAULT_HEIGHT;
>> +     src_fmt->field = V4L2_FIELD_NONE;
>> +     src_fmt->code = C3_ISP_CORE_DEF_SRC_PAD_FMT;
>> +     src_fmt->colorspace = V4L2_COLORSPACE_SRGB;
>> +     src_fmt->xfer_func = V4L2_XFER_FUNC_SRGB;
>> +     src_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>> +     src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
>> +
>> +     /* Parameters pad */
>> +     sink_fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SINK_PARAMS);
>> +     sink_fmt->width = 0;
>> +     sink_fmt->height = 0;
>> +     sink_fmt->field = V4L2_FIELD_NONE;
>> +     sink_fmt->code = MEDIA_BUS_FMT_METADATA_FIXED;
>> +
>> +     /* Statistics pad */
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_CORE_PAD_SOURCE_STATS);
>> +     src_fmt->width = 0;
>> +     src_fmt->height = 0;
>> +     src_fmt->field = V4L2_FIELD_NONE;
>> +     src_fmt->code = MEDIA_BUS_FMT_METADATA_FIXED;
>> +
>> +     return c3_isp_core_init_routing(sd, state);
> Drop routing support
>

Will drop routing.

>> +}
>> +
>> +static int c3_isp_core_subscribe_event(struct v4l2_subdev *sd, struct v4l2_fh *fh,
>> +                                    struct v4l2_event_subscription *sub)
>> +{
>> +     if (sub->type != V4L2_EVENT_FRAME_SYNC)
>> +             return -EINVAL;
>> +
>> +     /* V4L2_EVENT_FRAME_SYNC doesn't need id, so should set 0 */
>> +     if (sub->id != 0)
>> +             return -EINVAL;
>> +
>> +     return v4l2_event_subscribe(fh, sub, 0, NULL);
>> +}
>> +
>> +static const struct v4l2_subdev_pad_ops c3_isp_core_pad_ops = {
>> +     .enum_mbus_code = c3_isp_core_enum_mbus_code,
>> +     .get_fmt = v4l2_subdev_get_fmt,
>> +     .set_fmt = c3_isp_core_set_fmt,
>> +     .enable_streams = c3_isp_core_enable_streams,
>> +     .disable_streams = c3_isp_core_disable_streams,
>> +};
>> +
>> +static const struct v4l2_subdev_core_ops c3_isp_core_core_ops = {
>> +     .subscribe_event = c3_isp_core_subscribe_event,
>> +     .unsubscribe_event = v4l2_event_subdev_unsubscribe,
>> +};
>> +
>> +static const struct v4l2_subdev_ops c3_isp_core_subdev_ops = {
>> +     .core = &c3_isp_core_core_ops,
>> +     .pad = &c3_isp_core_pad_ops,
>> +};
>> +
>> +static const struct v4l2_subdev_internal_ops c3_isp_core_internal_ops = {
>> +     .init_state = c3_isp_core_init_state,
>> +};
>> +
>> +static int c3_isp_core_link_validate(struct media_link *link)
>> +{
>> +     if (link->sink->index == C3_ISP_CORE_PAD_SINK_PARAMS)
>> +             return 0;
>> +
>> +     return v4l2_subdev_link_validate(link);
>> +}
>> +
>> +/* Media entity operations */
>> +static const struct media_entity_operations c3_isp_core_entity_ops = {
>> +     .link_validate = c3_isp_core_link_validate,
>> +};
>> +
>> +void c3_isp_core_queue_eof(struct c3_isp_device *isp)
>> +{
> This gets called in the end of frame IRQ right ?
>
>          if (status & ISP_TOP_IRQ_EN_FRAME_END_EN) {
>                  c3_isp_core_queue_eof(isp);
>
> When processing is completed.
>
> FRAME_SYNC should ideally be emitted as soon as the processing of a
> frame start. Do you have other interrupt sources you can use to detect
> "start processing of a frame" ?
>

Will check the C308L datasheet.

>> +     struct v4l2_event event = {
>> +             .type = V4L2_EVENT_FRAME_SYNC,
>> +     };
>> +
>> +     event.u.frame_sync.frame_sequence = isp->frm_sequence;
>> +     v4l2_event_queue(isp->core.sd.devnode, &event);
>> +}
>> +
>> +int c3_isp_core_register(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_core *core = &isp->core;
>> +     struct v4l2_subdev *sd = &core->sd;
>> +     int ret;
>> +
>> +     v4l2_subdev_init(sd, &c3_isp_core_subdev_ops);
>> +     sd->owner = THIS_MODULE;
>> +     sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
>> +     sd->internal_ops = &c3_isp_core_internal_ops;
>> +     snprintf(sd->name, sizeof(sd->name), "%s", C3_ISP_CORE_SUBDEV_NAME);
>> +
>> +     sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
>> +     sd->entity.ops = &c3_isp_core_entity_ops;
>> +
>> +     core->isp = isp;
>> +     sd->dev = isp->dev;
>> +     v4l2_set_subdevdata(sd, core);
>> +
>> +     core->pads[C3_ISP_CORE_PAD_SINK_VIDEO].flags = MEDIA_PAD_FL_SINK;
>> +     core->pads[C3_ISP_CORE_PAD_SINK_PARAMS].flags = MEDIA_PAD_FL_SINK;
>> +     core->pads[C3_ISP_CORE_PAD_SOURCE_STATS].flags = MEDIA_PAD_FL_SOURCE;
>> +     core->pads[C3_ISP_CORE_PAD_SOURCE_VIDEO].flags = MEDIA_PAD_FL_SOURCE;
>> +     ret = media_entity_pads_init(&sd->entity, C3_ISP_CORE_PAD_MAX, core->pads);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = v4l2_subdev_init_finalize(sd);
>> +     if (ret)
>> +             goto err_entity_cleanup;
>> +
>> +     ret = v4l2_device_register_subdev(&isp->v4l2_dev, sd);
>> +     if (ret)
>> +             goto err_subdev_cleanup;
>> +
>> +     return 0;
>> +
>> +err_subdev_cleanup:
>> +     v4l2_subdev_cleanup(sd);
>> +err_entity_cleanup:
>> +     media_entity_cleanup(&sd->entity);
>> +     return ret;
>> +}
>> +
>> +void c3_isp_core_unregister(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_core *core = &isp->core;
>> +     struct v4l2_subdev *sd = &core->sd;
>> +
>> +     v4l2_device_unregister_subdev(sd);
>> +     v4l2_subdev_cleanup(sd);
>> +     media_entity_cleanup(&sd->entity);
>> +}
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-dev.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-dev.c
>> new file mode 100644
>> index 000000000000..0c6795ab9925
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-dev.c
>> @@ -0,0 +1,459 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/device.h>
>> +#include <linux/module.h>
>> +#include <linux/mutex.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include <media/v4l2-common.h>
>> +#include <media/v4l2-device.h>
>> +#include <media/v4l2-fwnode.h>
>> +#include <media/v4l2-mc.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +u32 c3_isp_read(struct c3_isp_device *isp, u32 reg)
>> +{
>> +     return readl(isp->base + reg);
>> +}
>> +
>> +void c3_isp_write(struct c3_isp_device *isp, u32 reg, u32 val)
>> +{
>> +     writel(val, isp->base + reg);
>> +}
>> +
>> +void c3_isp_update_bits(struct c3_isp_device *isp, u32 reg, u32 mask, u32 val)
>> +{
>> +     u32 orig, tmp;
>> +
>> +     orig = c3_isp_read(isp, reg);
>> +
>> +     tmp = orig & ~mask;
>> +     tmp |= val & mask;
>> +
>> +     if (tmp != orig)
>> +             c3_isp_write(isp, reg, tmp);
>> +}
>> +
>> +/* PM runtime suspend */
>> +static int c3_isp_runtime_suspend(struct device *dev)
>> +{
>> +     struct c3_isp_device *isp = dev_get_drvdata(dev);
>> +
>> +     clk_bulk_disable_unprepare(isp->info->clock_num, isp->clks);
>> +
>> +     return 0;
>> +}
>> +
>> +/* PM runtime resume */
>> +static int c3_isp_runtime_resume(struct device *dev)
>> +{
>> +     struct c3_isp_device *isp = dev_get_drvdata(dev);
>> +
>> +     return clk_bulk_prepare_enable(isp->info->clock_num, isp->clks);
>> +}
>> +
>> +static const struct dev_pm_ops c3_isp_pm_ops = {
>> +     SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
>> +                         pm_runtime_force_resume)
>> +     RUNTIME_PM_OPS(c3_isp_runtime_suspend,
>> +                    c3_isp_runtime_resume, NULL)
>> +};
>> +
>> +/* IRQ handling */
>> +static irqreturn_t c3_isp_irq_handler(int irq, void *dev)
>> +{
>> +     struct c3_isp_device *isp = dev;
>> +     u32 status;
>> +
>> +     /* Get irq status and clear irq status */
>> +     status = c3_isp_read(isp, ISP_TOP_RO_IRQ_STAT);
>> +     c3_isp_write(isp, ISP_TOP_IRQ_CLR, status);
>> +
>> +     if (status & ISP_TOP_IRQ_EN_FRAME_END_EN) {
>> +             c3_isp_core_queue_eof(isp);
>> +             c3_isp_stats_isr(isp);
>> +             c3_isp_params_isr(isp);
>> +             c3_isp_captures_isr(isp);
>> +             isp->frm_sequence++;
>> +     }
>> +
>> +     if (status & ISP_TOP_IRQ_EN_3A_DMA_ERR_EN)
>> +             dev_dbg(isp->dev, "ISP IRQ Stats DMA Error\n");
>> +
>> +     return IRQ_HANDLED;
>> +}
>> +
>> +/* Subdev notifier register */
>> +static int c3_isp_notify_bound(struct v4l2_async_notifier *notifier,
>> +                            struct v4l2_subdev *sd,
>> +                            struct v4l2_async_connection *asc)
>> +{
>> +     struct c3_isp_device *isp =
>> +             container_of(notifier, struct c3_isp_device, notifier);
>> +     struct c3_isp_core *core = &isp->core;
>> +     struct media_pad *sink = &core->sd.entity.pads[C3_ISP_CORE_PAD_SINK_VIDEO];
>> +     int ret;
>> +
>> +     ret = media_entity_get_fwnode_pad(&sd->entity,
>> +                                       sd->fwnode, MEDIA_PAD_FL_SOURCE);
>> +     if (ret < 0) {
>> +             dev_err(isp->dev, "Failed to find pad for %s\n", sd->name);
>> +             return ret;
>> +     }
>> +
>> +     core->src_sd = sd;
>> +     core->src_sd_pad = ret;
>> +
>> +     return v4l2_create_fwnode_links_to_pad(sd, sink, MEDIA_LNK_FL_ENABLED |
>> +                                            MEDIA_LNK_FL_IMMUTABLE);
>> +}
>> +
>> +static int c3_isp_notify_complete(struct v4l2_async_notifier *notifier)
>> +{
>> +     struct c3_isp_device *isp =
>> +             container_of(notifier, struct c3_isp_device, notifier);
>> +     int ret;
>> +
>> +     ret = v4l2_device_register_subdev_nodes(&isp->v4l2_dev);
>> +     if (ret < 0) {
>> +             dev_err(isp->dev,
>> +                     "Failed to register subdev nodes: %d\n", ret);
>> +             return ret;
>> +     }
>> +
>> +     dev_info(isp->dev, "notify complete\n");
> Possibly drop this


Will drop this line.

>> +
>> +     return media_device_register(&isp->media_dev);
> Any reason you're registering the media device so late when the async
> chain completes instead of doing so in probe ? I think it's fine doing
> this here or during probe (after registering the v4l2_dev the video
> devices. If you do it here and the remote subdev doesn't probe you
> won't have any media graph. If you do it in probe() and the remote
> subdev fails to probe, the media graph will register but be unusable.
> Not sure what's best, maybe an incomplete graph is easier to debug
> than no graph at all, but I won't push for this. Up to you :)
>

Will move it to probe()

>> +}
> I'm not against using notify_complete() but I suspect you have a
> single remote async subdev, right ? (iow you could have done this in
> _bound ? )


Yes,  will do this in _bound.

>> +
>> +static void c3_isp_notify_destroy(struct v4l2_async_connection *asc)
>> +{
>> +     struct c3_isp_device *isp =
>> +             container_of(asc->notifier, struct c3_isp_device, notifier);
>> +
>> +     media_device_unregister(&isp->media_dev);
>> +}
>> +
>> +static const struct v4l2_async_notifier_operations c3_isp_notify_ops = {
>> +     .bound = c3_isp_notify_bound,
>> +     .complete = c3_isp_notify_complete,
>> +     .destroy = c3_isp_notify_destroy,
>> +};
>> +
>> +static int c3_isp_async_nf_register(struct c3_isp_device *isp)
>> +{
>> +     struct v4l2_async_connection *asc;
>> +     struct fwnode_handle *ep;
>> +     int ret;
>> +
>> +     v4l2_async_nf_init(&isp->notifier, &isp->v4l2_dev);
>> +
>> +     ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(isp->dev), 0, 0,
>> +                                          FWNODE_GRAPH_ENDPOINT_NEXT);
>> +     if (!ep)
>> +             return -ENOTCONN;
>> +
>> +     asc = v4l2_async_nf_add_fwnode_remote(&isp->notifier, ep,
>> +                                           struct v4l2_async_connection);
>> +     fwnode_handle_put(ep);
>> +
>> +     if (IS_ERR(asc))
>> +             return PTR_ERR(asc);
>> +
>> +     isp->notifier.ops = &c3_isp_notify_ops;
>> +     ret = v4l2_async_nf_register(&isp->notifier);
>> +     if (ret)
>> +             v4l2_async_nf_cleanup(&isp->notifier);
>> +
>> +     return ret;
>> +}
>> +
>> +static void c3_isp_async_nf_unregister(struct c3_isp_device *isp)
>> +{
>> +     v4l2_async_nf_unregister(&isp->notifier);
>> +     v4l2_async_nf_cleanup(&isp->notifier);
>> +}
>> +
>> +static int c3_isp_v4l2_register(struct c3_isp_device *isp)
>> +{
>> +     struct media_device *media_dev = &isp->media_dev;
>> +     struct v4l2_device *v4l2_dev = &isp->v4l2_dev;
>> +     int ret;
>> +
>> +     /* Initialize media device */
>> +     strscpy(media_dev->model, C3_ISP_DRIVER_NAME,
>> +             sizeof(media_dev->model));
>> +     media_dev->dev = isp->dev;
>> +
>> +     media_device_init(media_dev);
>> +
>> +     /* Initialize v4l2 device */
>> +     v4l2_dev->mdev = media_dev;
>> +     strscpy(v4l2_dev->name, C3_ISP_DRIVER_NAME,
>> +             sizeof(v4l2_dev->name));
>> +
>> +     ret = v4l2_device_register(isp->dev, v4l2_dev);
>> +     if (ret) {
>> +             media_device_cleanup(media_dev);
>> +             dev_err(isp->dev,
>> +                     "Failed to register V4L2 device: %d\n", ret);
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>> +static void c3_isp_v4l2_unregister(struct c3_isp_device *isp)
>> +{
>> +     v4l2_device_unregister(&isp->v4l2_dev);
>> +     media_device_cleanup(&isp->media_dev);
>> +}
>> +
>> +static void c3_isp_remove_links(struct c3_isp_device *isp)
>> +{
>> +     unsigned int i;
>> +
>> +     media_entity_remove_links(&isp->core.sd.entity);
>> +
>> +     for (i = 0; i < C3_ISP_NUM_RSZ; i++)
>> +             media_entity_remove_links(&isp->resizers[i].sd.entity);
>> +
>> +     for (i = 0; i < C3_ISP_NUM_CAP_DEVS; i++)
>> +             media_entity_remove_links(&isp->caps[i].vdev.entity);
>> +}
>> +
>> +static int c3_isp_create_links(struct c3_isp_device *isp)
>> +{
>> +     unsigned int i;
>> +     int ret;
>> +
>> +     for (i = 0; i < C3_ISP_NUM_RSZ; i++) {
>> +             ret = media_create_pad_link(&isp->resizers[i].sd.entity,
>> +                                         C3_ISP_RESIZER_PAD_SOURCE,
>> +                                         &isp->caps[i].vdev.entity,
>> +                                         0, MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
>> +             if (ret) {
>> +                     dev_err(isp->dev, "Failed to link resizer %u and capture %u\n", i, i);
>> +                     goto err_remove_links;
>> +             }
>> +
>> +             ret = media_create_pad_link(&isp->core.sd.entity,
>> +                                         C3_ISP_CORE_PAD_SOURCE_VIDEO,
>> +                                         &isp->resizers[i].sd.entity,
>> +                                         C3_ISP_RESIZER_PAD_SINK,
>> +                                         MEDIA_LNK_FL_ENABLED);
>> +             if (ret) {
>> +                     dev_err(isp->dev, "Failed to link core and resizer %u\n", i);
>> +                     goto err_remove_links;
>> +             }
>> +     }
>> +
>> +     ret = media_create_pad_link(&isp->core.sd.entity,
>> +                                 C3_ISP_CORE_PAD_SOURCE_STATS,
>> +                                 &isp->stats.vdev.entity,
>> +                                 0, MEDIA_LNK_FL_ENABLED);
>> +     if (ret) {
>> +             dev_err(isp->dev, "Failed to link core and stats\n");
>> +             goto err_remove_links;
>> +     }
>> +
>> +     ret = media_create_pad_link(&isp->params.vdev.entity, 0,
>> +                                 &isp->core.sd.entity,
>> +                                 C3_ISP_CORE_PAD_SINK_PARAMS,
>> +                                 MEDIA_LNK_FL_ENABLED);
>> +     if (ret) {
>> +             dev_err(isp->dev, "Failed to link params and core\n");
>> +             goto err_remove_links;
>> +     }
>> +
>> +     return 0;
>> +
>> +err_remove_links:
>> +     c3_isp_remove_links(isp);
>> +     return ret;
>> +}
>> +
>> +static int c3_isp_videos_register(struct c3_isp_device *isp)
>> +{
>> +     int ret;
>> +
>> +     ret = c3_isp_captures_register(isp);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = c3_isp_stats_register(isp);
>> +     if (ret)
>> +             goto err_captures_unregister;
>> +
>> +     ret = c3_isp_params_register(isp);
>> +     if (ret)
>> +             goto err_stats_unregister;
>> +
>> +     ret = c3_isp_create_links(isp);
>> +     if (ret)
>> +             goto err_params_unregister;
>> +
>> +     return 0;
>> +
>> +err_params_unregister:
>> +     c3_isp_params_unregister(isp);
>> +err_stats_unregister:
>> +     c3_isp_stats_unregister(isp);
>> +err_captures_unregister:
>> +     c3_isp_captures_unregister(isp);
>> +     return ret;
>> +}
>> +
>> +static void c3_isp_videos_unregister(struct c3_isp_device *isp)
>> +{
>> +     c3_isp_remove_links(isp);
>> +     c3_isp_params_unregister(isp);
>> +     c3_isp_stats_unregister(isp);
>> +     c3_isp_captures_unregister(isp);
>> +}
>> +
>> +static int c3_isp_cfg_clocks(struct c3_isp_device *isp)
>> +{
>> +     const struct c3_isp_info *info = isp->info;
>> +     int ret;
>> +     u32 i;
>> +
>> +     for (i = 0; i < info->clock_num; i++)
>> +             isp->clks[i].id = info->clocks[i];
>> +
>> +     ret = devm_clk_bulk_get(isp->dev, info->clock_num, isp->clks);
>> +     if (ret)
>> +             return ret;
>> +
>> +     for (i = 0; i < info->clock_num; i++) {
>> +             if (!info->clock_rates[i])
>> +                     continue;
>> +             ret = clk_set_rate(isp->clks[i].clk, info->clock_rates[i]);
> same comment as per the other drivers


OK!

>> +             if (ret) {
>> +                     dev_err(isp->dev, "Failed to set %s rate %u\n", info->clocks[i],
>> +                             info->clock_rates[i]);
>> +                     return ret;
>> +             }
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_probe(struct platform_device *pdev)
>> +{
>> +     struct device *dev = &pdev->dev;
>> +     struct c3_isp_device *isp;
>> +     int irq;
>> +     int ret;
>> +
>> +     isp = devm_kzalloc(dev, sizeof(*isp), GFP_KERNEL);
>> +     if (!isp)
>> +             return -ENOMEM;
>> +
>> +     isp->info = of_device_get_match_data(dev);
>> +     isp->dev = dev;
>> +
>> +     isp->base = devm_platform_ioremap_resource_byname(pdev, "isp");
>> +     if (IS_ERR(isp->base))
>> +             return dev_err_probe(dev, PTR_ERR(isp->base),
>> +                                  "Failed to ioremap resource\n");
>> +
>> +     irq = platform_get_irq(pdev, 0);
>> +     if (irq < 0)
>> +             return irq;
>> +
>> +     ret = c3_isp_cfg_clocks(isp);
>> +     if (ret)
>> +             return dev_err_probe(dev, ret, "Failed to configure clocks\n");
>> +
>> +     platform_set_drvdata(pdev, isp);
>> +
>> +     pm_runtime_enable(dev);
>> +
>> +     ret = c3_isp_v4l2_register(isp);
>> +     if (ret)
>> +             goto err_runtime_disable;
>> +
>> +     ret = c3_isp_core_register(isp);
>> +     if (ret)
>> +             goto err_v4l2_unregister;
>> +
>> +     ret = c3_isp_resizers_register(isp);
>> +     if (ret)
>> +             goto err_core_unregister;
>> +
>> +     ret = c3_isp_async_nf_register(isp);
>> +     if (ret)
>> +             goto err_resizers_unregister;
>> +
>> +     ret = devm_request_irq(dev, irq,
>> +                            c3_isp_irq_handler, IRQF_SHARED,
>> +                            dev_driver_string(dev), isp);
>> +     if (ret)
>> +             goto err_nf_unregister;
>> +
>> +     ret = c3_isp_videos_register(isp);
>> +     if (ret)
>> +             goto err_nf_unregister;
>> +
>> +     return 0;
>> +
>> +err_nf_unregister:
>> +     c3_isp_async_nf_unregister(isp);
>> +err_resizers_unregister:
>> +     c3_isp_resizers_unregister(isp);
>> +err_core_unregister:
>> +     c3_isp_core_unregister(isp);
>> +err_v4l2_unregister:
>> +     c3_isp_v4l2_unregister(isp);
>> +err_runtime_disable:
>> +     pm_runtime_disable(dev);
>> +     return ret;
>> +};
>> +
>> +static void c3_isp_remove(struct platform_device *pdev)
>> +{
>> +     struct c3_isp_device *isp = platform_get_drvdata(pdev);
>> +
>> +     c3_isp_videos_unregister(isp);
>> +     c3_isp_async_nf_unregister(isp);
>> +     c3_isp_core_unregister(isp);
>> +     c3_isp_resizers_unregister(isp);
>> +     c3_isp_v4l2_unregister(isp);
>> +     pm_runtime_disable(isp->dev);
>> +};
>> +
>> +static const struct c3_isp_info isp_info = {
>> +     .clocks = {"vapb", "isp0"},
>> +     .clock_rates = {0, 400000000},
>> +     .clock_num = 2
>> +};
>> +
>> +static const struct of_device_id c3_isp_of_match[] = {
>> +     { .compatible = "amlogic,c3-isp",
>> +       .data = &isp_info },
>> +     { },
>> +};
>> +MODULE_DEVICE_TABLE(of, c3_isp_of_match);
>> +
>> +static struct platform_driver c3_isp_driver = {
>> +     .probe = c3_isp_probe,
>> +     .remove = c3_isp_remove,
>> +     .driver = {
>> +             .name = "c3-isp",
>> +             .of_match_table = c3_isp_of_match,
>> +             .pm = pm_ptr(&c3_isp_pm_ops),
>> +     },
>> +};
>> +
>> +module_platform_driver(c3_isp_driver);
>> +
>> +MODULE_AUTHOR("Keke Li <keke.li@amlogic.com>");
>> +MODULE_DESCRIPTION("Amlogic C3 ISP pipeline");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-params.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-params.c
>> new file mode 100644
>> index 000000000000..dc33a57dcd59
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-params.c
>> @@ -0,0 +1,942 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/cleanup.h>
>> +#include <linux/media/amlogic/c3-isp-config.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include <media/v4l2-ioctl.h>
>> +#include <media/v4l2-mc.h>
>> +#include <media/videobuf2-vmalloc.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +/*
>> + * union c3_isp_params_block - Generalisation of a parameter block
>> + *
>> + * This union allows the driver to treat a block as a generic pointer to this
>> + * union and safely access the header and block-specific struct without having
>> + * to resort to casting. The header member is accessed first, and the type field
>> + * checked which allows the driver to determine which of the other members
>> + * should be used. The data member at the end allows a pointer to an address
>> + * within the data member of :c:type:`c3_isp_params_cfg` to initialise a
>> + * union variable.
>> + *
>> + * @header:          Pointer to the shared header struct embedded as the
>> + *                   first member of all the possible other members (except
>> + *                   @data). This member would be accessed first and the type
>> + *                   field checked to determine which of the other members
>> + *                   should be accessed.
>> + * @awb_gains:               For header->type == C3_ISP_PARAMS_BLOCK_AWB_GAINS
>> + * @awb_cfg:         For header->type == C3_ISP_PARAMS_BLOCK_AWB_CONFIG
>> + * @ae_cfg:          For header->type == C3_ISP_PARAMS_BLOCK_AE_CONFIG
>> + * @af_cfg:          For header->type == C3_ISP_PARAMS_BLOCK_AF_CONFIG
>> + * @pst_gamma:               For header->type == C3_ISP_PARAMS_BLOCK_PST_GAMMA
>> + * @ccm:             For header->type == C3_ISP_PARAMS_BLOCK_PST_CCM
>> + * @csc:             For header->type == C3_ISP_PARAMS_BLOCK_PST_CSC
>> + * @blc:             For header->type == C3_ISP_PARAMS_BLOCK_PST_BLC
>> + * @data:            Allows easy initialisation of a union variable with a
>> + *                   pointer into a u8 array.
>> + */
>> +union c3_isp_params_block {
>> +     struct c3_isp_params_block_header *header;
>> +     struct c3_isp_params_awb_gains *awb_gains;
>> +     struct c3_isp_params_awb_config *awb_cfg;
>> +     struct c3_isp_params_ae_config *ae_cfg;
>> +     struct c3_isp_params_af_config *af_cfg;
>> +     struct c3_isp_params_pst_gamma *pst_gamma;
>> +     struct c3_isp_params_ccm *ccm;
>> +     struct c3_isp_params_csc *csc;
>> +     struct c3_isp_params_blc *blc;
>> +     u8 *data;
> Why do you need data here ?
>
> Oh, I've see in c3_isp_params_cfg_blocks() now :)
>
> The consequences of this is that all handlers take an
>
> typedef void (*c3_isp_block_handler)(struct c3_isp_device *isp,
>                                       union c3_isp_params_block block);
>
> by value and not by pointer.
>
> I know it's equivalent since the union only stores pointers but it
> might be confusing... I don't know, some parts of me like it, some
> doesn't and would prefer something like union
> rkisp1_ext_params_config. Clever hack btw ;) If you prefer this style
> I'm fine with you keeping it even if seeing a parameter passed by
> value to the handlers makes me cringe a bit
>

Will check this issue.

>> +};
>> +
>> +typedef void (*c3_isp_block_handler)(struct c3_isp_device *isp,
>> +                                  union c3_isp_params_block block);
>> +
>> +struct c3_isp_params_handler {
>> +     size_t size;
>> +     c3_isp_block_handler handler;
>> +};
>> +
>> +#define to_c3_isp_params_buffer(vbuf) \
>> +     container_of(vbuf, struct c3_isp_params_buffer, vb)
>> +
>> +/* Hardware configuration */
>> +
>> +static void c3_isp_params_cfg_awb_gains(struct c3_isp_device *isp,
>> +                                     union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_awb_gains *awb_gains = block.awb_gains;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL, ISP_TOP_BEO_CTRL_WB_EN_MASK,
>> +                                ISP_TOP_BEO_CTRL_WB_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_GAIN0, ISP_LSWB_WB_GAIN0_GR_GAIN_MASK,
>> +                        ISP_LSWB_WB_GAIN0_GR_GAIN(awb_gains->gr_gain));
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_GAIN0, ISP_LSWB_WB_GAIN0_R_GAIN_MASK,
>> +                        ISP_LSWB_WB_GAIN0_R_GAIN(awb_gains->r_gain));
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_GAIN1, ISP_LSWB_WB_GAIN1_B_GAIN_MASK,
>> +                        ISP_LSWB_WB_GAIN1_B_GAIN(awb_gains->b_gain));
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_GAIN1, ISP_LSWB_WB_GAIN1_GB_GAIN_MASK,
>> +                        ISP_LSWB_WB_GAIN1_GB_GAIN(awb_gains->gb_gain));
>> +     c3_isp_update_bits(isp, ISP_LSWB_WB_GAIN2, ISP_LSWB_WB_GAIN2_IR_GAIN_MASK,
>> +                        ISP_LSWB_WB_GAIN2_IR_GAIN(awb_gains->gb_gain));
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL,
>> +                        ISP_TOP_BEO_CTRL_WB_EN_MASK, ISP_TOP_BEO_CTRL_WB_EN);
>> +}
>> +
>> +static void c3_isp_params_cfg_awb_weight(struct c3_isp_device *isp,
>> +                                      struct c3_isp_params_awb_config *awb_cfg)
>> +{
>> +     unsigned int zones_num;
>> +     unsigned int base;
>> +     unsigned int data;
>> +     unsigned int i;
>> +
>> +     /* Set the weight address to 0 position */
>> +     c3_isp_write(isp, ISP_AWB_BLK_WT_ADDR, 0);
>> +
>> +     zones_num = awb_cfg->horiz_zones_num * awb_cfg->vert_zones_num;
>> +
>> +     /* Need to write 8 weights at once */
>> +     for (i = 0; i < zones_num / 8; i++) {
>> +             base = i * 8;
>> +             data = ISP_AWB_BLK_WT_DATA_IDX_DATA(0, awb_cfg->zone_weight[base + 0]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(1, awb_cfg->zone_weight[base + 1]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(2, awb_cfg->zone_weight[base + 2]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(3, awb_cfg->zone_weight[base + 3]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(4, awb_cfg->zone_weight[base + 4]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(5, awb_cfg->zone_weight[base + 5]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(6, awb_cfg->zone_weight[base + 6]) |
>> +                    ISP_AWB_BLK_WT_DATA_IDX_DATA(7, awb_cfg->zone_weight[base + 7]);
>> +             c3_isp_write(isp, ISP_AWB_BLK_WT_DATA, data);
>> +     }
>> +
>> +     if (zones_num % 8) {
>> +             data = 0;
>> +             base = i * 8;
>> +
>> +             for (i = 0; i < zones_num % 8; i++)
>> +                     data |= ISP_AWB_BLK_WT_DATA_IDX_DATA(i, awb_cfg->zone_weight[base + i]);
>> +
>> +             c3_isp_write(isp, ISP_AWB_BLK_WT_DATA, data);
>> +     }
>> +}
>> +
>> +static void c3_isp_params_cfg_awb_cood(struct c3_isp_device *isp,
>> +                                    struct c3_isp_params_awb_config *awb_cfg)
>> +{
>> +     unsigned int max_point_num;
>> +
>> +     /* The number of points is one more than the number of edges */
>> +     max_point_num = max(awb_cfg->horiz_zones_num, awb_cfg->vert_zones_num) + 1;
>> +
>> +     /* Set the index address to 0 position */
>> +     c3_isp_write(isp, ISP_AWB_IDX_ADDR, 0);
>> +
>> +     for (unsigned int i = 0; i < max_point_num; i++) {
>> +             c3_isp_write(isp, ISP_AWB_IDX_DATA,
>> +                          ISP_AWB_IDX_DATA_HIDX_DATA(awb_cfg->horiz_cood[i]) |
>> +                          ISP_AWB_IDX_DATA_VIDX_DATA(awb_cfg->vert_cood[i]));
>> +     }
>> +}
>> +
>> +static void c3_isp_params_cfg_awb_config(struct c3_isp_device *isp,
>> +                                      union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_awb_config *awb_cfg = block.awb_cfg;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                                ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN_MASK,
>> +                                ISP_TOP_3A_STAT_CRTL_AWB_STAT_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AWB_STAT_POINT_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AWB_STAT_POINT(awb_cfg->tap_point));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_CTRL2, ISP_AWB_STAT_CTRL2_SATUR_CTRL_MASK,
>> +                        ISP_AWB_STAT_CTRL2_SATUR_CTRL(awb_cfg->satur_vald));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_HV_BLKNUM, ISP_AWB_HV_BLKNUM_HORIZ_BLKS_NUM_MASK,
>> +                        ISP_AWB_HV_BLKNUM_HORIZ_BLKS_NUM(awb_cfg->horiz_zones_num));
>> +     c3_isp_update_bits(isp, ISP_AWB_HV_BLKNUM, ISP_AWB_HV_BLKNUM_VERT_BLKS_NUM_MASK,
>> +                        ISP_AWB_HV_BLKNUM_VERT_BLKS_NUM(awb_cfg->vert_zones_num));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_RG, ISP_AWB_STAT_RG_MIN_VALUE_MASK,
>> +                        ISP_AWB_STAT_RG_MIN_VALUE(awb_cfg->rg_min));
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_RG, ISP_AWB_STAT_RG_MAX_VALUE_MASK,
>> +                        ISP_AWB_STAT_RG_MAX_VALUE(awb_cfg->rg_max));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_BG, ISP_AWB_STAT_BG_MIN_VALUE_MASK,
>> +                        ISP_AWB_STAT_BG_MIN_VALUE(awb_cfg->bg_min));
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_BG, ISP_AWB_STAT_BG_MAX_VALUE_MASK,
>> +                        ISP_AWB_STAT_BG_MAX_VALUE(awb_cfg->bg_max));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_RG_HL, ISP_AWB_STAT_RG_HL_LOW_VALUE_MASK,
>> +                        ISP_AWB_STAT_RG_HL_LOW_VALUE(awb_cfg->rg_low));
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_RG_HL, ISP_AWB_STAT_RG_HL_HIGH_VALUE_MASK,
>> +                        ISP_AWB_STAT_RG_HL_HIGH_VALUE(awb_cfg->rg_high));
>> +
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_BG_HL, ISP_AWB_STAT_BG_HL_LOW_VALUE_MASK,
>> +                        ISP_AWB_STAT_BG_HL_LOW_VALUE(awb_cfg->bg_low));
>> +     c3_isp_update_bits(isp, ISP_AWB_STAT_BG_HL, ISP_AWB_STAT_BG_HL_HIGH_VALUE_MASK,
>> +                        ISP_AWB_STAT_BG_HL_HIGH_VALUE(awb_cfg->bg_high));
>> +
>> +     c3_isp_params_cfg_awb_weight(isp, awb_cfg);
>> +     c3_isp_params_cfg_awb_cood(isp, awb_cfg);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN);
>> +}
>> +
>> +static void c3_isp_params_cfg_ae_weight(struct c3_isp_device *isp,
>> +                                     struct c3_isp_params_ae_config *ae_cfg)
>> +{
>> +     unsigned int zones_num;
>> +     unsigned int base;
>> +     unsigned int data;
>> +     unsigned int i;
>> +
>> +     /* Set the weight address to 0 position */
>> +     c3_isp_write(isp, ISP_AE_BLK_WT_ADDR, 0);
>> +
>> +     zones_num = ae_cfg->horiz_zones_num * ae_cfg->vert_zones_num;
>> +
>> +     /* Need to write 8 weights at once */
>> +     for (i = 0; i < zones_num / 8; i++) {
>> +             base = i * 8;
>> +             data = ISP_AE_BLK_WT_DATA_IDX_DATA(0, ae_cfg->zone_weight[base + 0]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(1, ae_cfg->zone_weight[base + 1]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(2, ae_cfg->zone_weight[base + 2]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(3, ae_cfg->zone_weight[base + 3]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(4, ae_cfg->zone_weight[base + 4]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(5, ae_cfg->zone_weight[base + 5]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(6, ae_cfg->zone_weight[base + 6]) |
>> +                    ISP_AE_BLK_WT_DATA_IDX_DATA(7, ae_cfg->zone_weight[base + 7]);
>> +             c3_isp_write(isp, ISP_AE_BLK_WT_DATA, data);
>> +     }
>> +
>> +     /* Write the last weights data */
>> +     if (zones_num % 8) {
>> +             data = 0;
>> +             base = i * 8;
>> +
>> +             for (i = 0; i < zones_num % 8; i++)
>> +                     data |= ISP_AE_BLK_WT_DATA_IDX_DATA(i, ae_cfg->zone_weight[base + i]);
>> +
>> +             c3_isp_write(isp, ISP_AE_BLK_WT_DATA, data);
>> +     }
>> +}
>> +
>> +static void c3_isp_params_cfg_ae_cood(struct c3_isp_device *isp,
>> +                                   struct c3_isp_params_ae_config *ae_cfg)
>> +{
>> +     unsigned int max_point_num;
>> +
>> +     /* The number of points is one more than the number of edges */
>> +     max_point_num = max(ae_cfg->horiz_zones_num, ae_cfg->vert_zones_num) + 1;
>> +
>> +     /* Set the index address to 0 position */
>> +     c3_isp_write(isp, ISP_AE_IDX_ADDR, 0);
>> +
>> +     for (unsigned int i = 0; i < max_point_num; i++) {
>> +             c3_isp_write(isp, ISP_AE_IDX_DATA,
>> +                          ISP_AE_IDX_DATA_HIDX_DATA(ae_cfg->horiz_cood[i]) |
>> +                          ISP_AE_IDX_DATA_VIDX_DATA(ae_cfg->vert_cood[i]));
>> +     }
>> +}
>> +
>> +static void c3_isp_params_cfg_ae_config(struct c3_isp_device *isp,
>> +                                     union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_ae_config *ae_cfg = block.ae_cfg;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                                ISP_TOP_3A_STAT_CRTL_AE_STAT_EN_MASK,
>> +                                ISP_TOP_3A_STAT_CRTL_AE_STAT_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AE_STAT_POINT_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AE_STAT_POINT(ae_cfg->tap_point));
>> +
>> +     if (ae_cfg->tap_point == C3_ISP_AE_STATS_TAP_GE)
>> +             c3_isp_update_bits(isp, ISP_AE_CTRL, ISP_AE_CTRL_INPUT_2LINE_MASK,
>> +                                ISP_AE_CTRL_INPUT_2LINE_EN);
>> +     else
>> +             c3_isp_update_bits(isp, ISP_AE_CTRL, ISP_AE_CTRL_INPUT_2LINE_MASK,
>> +                                ISP_AE_CTRL_INPUT_2LINE_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_AE_HV_BLKNUM, ISP_AE_HV_BLKNUM_BLK_HORIZ_NUM_MASK,
>> +                        ISP_AE_HV_BLKNUM_BLK_HORIZ_NUM(ae_cfg->horiz_zones_num));
>> +     c3_isp_update_bits(isp, ISP_AE_HV_BLKNUM, ISP_AE_HV_BLKNUM_BLK_VERT_NUM_MASK,
>> +                        ISP_AE_HV_BLKNUM_BLK_VERT_NUM(ae_cfg->vert_zones_num));
>> +
>> +     c3_isp_params_cfg_ae_weight(isp, ae_cfg);
>> +     c3_isp_params_cfg_ae_cood(isp, ae_cfg);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AE_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AE_STAT_EN);
>> +}
>> +
>> +static void c3_isp_params_cfg_af_cood(struct c3_isp_device *isp,
>> +                                   struct c3_isp_params_af_config *af_cfg)
>> +{
>> +     unsigned int max_point_num;
>> +
>> +     /* The number of points is one more than the number of edges */
>> +     max_point_num = max(af_cfg->horiz_zones_num, af_cfg->vert_zones_num) + 1;
>> +
>> +     /* Set the index address to 0 position */
>> +     c3_isp_write(isp, ISP_AF_IDX_ADDR, 0);
>> +
>> +     for (unsigned int i = 0; i < max_point_num; i++) {
>> +             c3_isp_write(isp, ISP_AF_IDX_DATA,
>> +                          ISP_AF_IDX_DATA_HIDX_DATA(af_cfg->horiz_cood[i]) |
>> +                          ISP_AF_IDX_DATA_VIDX_DATA(af_cfg->vert_cood[i]));
>> +     }
>> +}
>> +
>> +static void c3_isp_params_cfg_af_config(struct c3_isp_device *isp,
>> +                                     union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_af_config *af_cfg = block.af_cfg;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                                ISP_TOP_3A_STAT_CRTL_AF_STAT_EN_MASK,
>> +                                ISP_TOP_3A_STAT_CRTL_AF_STAT_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AF_STAT_POINT_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AF_STAT_POINT(af_cfg->tap_point));
>> +
>> +     c3_isp_update_bits(isp, ISP_AF_HV_BLKNUM, ISP_AF_HV_BLKNUM_BLK_HORIZ_NUM_MASK,
>> +                        ISP_AF_HV_BLKNUM_BLK_HORIZ_NUM(af_cfg->horiz_zones_num));
>> +     c3_isp_update_bits(isp, ISP_AF_HV_BLKNUM, ISP_AF_HV_BLKNUM_BLK_VERT_NUM_MASK,
>> +                        ISP_AF_HV_BLKNUM_BLK_VERT_NUM(af_cfg->vert_zones_num));
>> +
>> +     c3_isp_params_cfg_af_cood(isp, af_cfg);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL,
>> +                        ISP_TOP_3A_STAT_CRTL_AF_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AF_STAT_EN);
>> +}
>> +
>> +static void c3_isp_params_cfg_pst_gamma(struct c3_isp_device *isp,
>> +                                     union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_pst_gamma *gamma = block.pst_gamma;
>> +     unsigned int base;
>> +     unsigned int i;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_BED_CTRL,
>> +                                ISP_TOP_BED_CTRL_PST_GAMMA_EN_MASK,
>> +                                ISP_TOP_BED_CTRL_PST_GAMMA_DIS);
>> +             return;
>> +     }
>> +
>> +     /* R, G and B channels use the same gamma lut */
>> +     for (unsigned int j = 0; j < 3; j++) {
>> +             /* Set the channel lut address */
>> +             c3_isp_write(isp, ISP_PST_GAMMA_LUT_ADDR, ISP_PST_GAMMA_LUT_ADDR_IDX_ADDR(j));
>> +
>> +             /* Need to write 2 lut values at once */
>> +             for (i = 0; i < ARRAY_SIZE(gamma->lut) / 2; i++) {
>> +                     base = i * 2;
>> +                     c3_isp_write(isp, ISP_PST_GAMMA_LUT_DATA,
>> +                                  ISP_PST_GAMMA_LUT_DATA_DATA0(gamma->lut[base]) |
>> +                                  ISP_PST_GAMMA_LUT_DATA_DATA1(gamma->lut[base + 1]));
>> +             }
>> +
>> +             /* Write the last one */
>> +             if (ARRAY_SIZE(gamma->lut) % 2) {
>> +                     base = i * 2;
>> +                     c3_isp_write(isp, ISP_PST_GAMMA_LUT_DATA,
>> +                                  ISP_PST_GAMMA_LUT_DATA_DATA0(gamma->lut[base]));
>> +             }
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL,
>> +                        ISP_TOP_BED_CTRL_PST_GAMMA_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_PST_GAMMA_EN);
>> +}
>> +
>> +/* Configure 3 x 3 ccm matrix */
>> +static void c3_isp_params_cfg_ccm(struct c3_isp_device *isp,
>> +                               union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_ccm *ccm = block.ccm;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CCM_EN_MASK,
>> +                                ISP_TOP_BED_CTRL_CCM_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_00_01, ISP_CCM_MTX_00_01_MTX_00_MASK,
>> +                        ISP_CCM_MTX_00_01_MTX_00(ccm->matrix[0][0]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_00_01, ISP_CCM_MTX_00_01_MTX_01_MASK,
>> +                        ISP_CCM_MTX_00_01_MTX_01(ccm->matrix[0][1]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_02_03, ISP_CCM_MTX_02_03_MTX_02_MASK,
>> +                        ISP_CCM_MTX_02_03_MTX_02(ccm->matrix[0][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_10_11, ISP_CCM_MTX_10_11_MTX_10_MASK,
>> +                        ISP_CCM_MTX_10_11_MTX_10(ccm->matrix[1][0]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_10_11, ISP_CCM_MTX_10_11_MTX_11_MASK,
>> +                        ISP_CCM_MTX_10_11_MTX_11(ccm->matrix[1][1]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_12_13, ISP_CCM_MTX_12_13_MTX_12_MASK,
>> +                        ISP_CCM_MTX_12_13_MTX_12(ccm->matrix[1][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_20_21, ISP_CCM_MTX_20_21_MTX_20_MASK,
>> +                        ISP_CCM_MTX_20_21_MTX_20(ccm->matrix[2][0]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_20_21, ISP_CCM_MTX_20_21_MTX_21_MASK,
>> +                        ISP_CCM_MTX_20_21_MTX_21(ccm->matrix[2][1]));
>> +     c3_isp_update_bits(isp, ISP_CCM_MTX_22_23_RS, ISP_CCM_MTX_22_23_RS_MTX_22_MASK,
>> +                        ISP_CCM_MTX_22_23_RS_MTX_22(ccm->matrix[2][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CCM_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_CCM_EN);
>> +}
>> +
>> +/* Configure color space conversion matrix parameters */
>> +static void c3_isp_params_cfg_csc(struct c3_isp_device *isp,
>> +                               union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_csc *csc = block.csc;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CM0_EN_MASK,
>> +                                ISP_TOP_BED_CTRL_CM0_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF00_01, ISP_CM0_COEF00_01_MTX_00_MASK,
>> +                        ISP_CM0_COEF00_01_MTX_00(csc->matrix[0][0]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF00_01, ISP_CM0_COEF00_01_MTX_01_MASK,
>> +                        ISP_CM0_COEF00_01_MTX_01(csc->matrix[0][1]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF02_10, ISP_CM0_COEF02_10_MTX_02_MASK,
>> +                        ISP_CM0_COEF02_10_MTX_02(csc->matrix[0][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF02_10, ISP_CM0_COEF02_10_MTX_10_MASK,
>> +                        ISP_CM0_COEF02_10_MTX_10(csc->matrix[1][0]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF11_12, ISP_CM0_COEF11_12_MTX_11_MASK,
>> +                        ISP_CM0_COEF11_12_MTX_11(csc->matrix[1][1]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF11_12, ISP_CM0_COEF11_12_MTX_12_MASK,
>> +                        ISP_CM0_COEF11_12_MTX_12(csc->matrix[1][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF20_21, ISP_CM0_COEF20_21_MTX_20_MASK,
>> +                        ISP_CM0_COEF20_21_MTX_20(csc->matrix[2][0]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF20_21, ISP_CM0_COEF20_21_MTX_21_MASK,
>> +                        ISP_CM0_COEF20_21_MTX_21(csc->matrix[2][1]));
>> +     c3_isp_update_bits(isp, ISP_CM0_COEF22_OUP_OFST0, ISP_CM0_COEF22_OUP_OFST0_MTX_22_MASK,
>> +                        ISP_CM0_COEF22_OUP_OFST0_MTX_22(csc->matrix[2][2]));
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CM0_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_CM0_EN);
>> +}
>> +
>> +/* Set blc offset of each color channel */
>> +static void c3_isp_params_cfg_blc(struct c3_isp_device *isp,
>> +                               union c3_isp_params_block block)
>> +{
>> +     struct c3_isp_params_blc *blc = block.blc;
>> +
>> +     if (block.header->flags & C3_ISP_PARAMS_BLOCK_FL_DISABLED) {
>> +             c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL, ISP_TOP_BEO_CTRL_BLC_EN_MASK,
>> +                                ISP_TOP_BEO_CTRL_BLC_DIS);
>> +             return;
>> +     }
>> +
>> +     c3_isp_write(isp, ISP_LSWB_BLC_OFST0,
>> +                  ISP_LSWB_BLC_OFST0_R_OFST(blc->r_ofst) |
>> +                  ISP_LSWB_BLC_OFST0_GR_OFST(blc->gr_ofst));
>> +     c3_isp_write(isp, ISP_LSWB_BLC_OFST1,
>> +                  ISP_LSWB_BLC_OFST1_GB_OFST(blc->gb_ofst) |
>> +                  ISP_LSWB_BLC_OFST1_B_OFST(blc->b_ofst));
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL, ISP_TOP_BEO_CTRL_BLC_EN_MASK,
>> +                        ISP_TOP_BEO_CTRL_BLC_EN);
>> +}
>> +
>> +static const struct c3_isp_params_handler c3_isp_params_handlers[] = {
>> +     [C3_ISP_PARAMS_BLOCK_AWB_GAINS] = {
>> +             .size = sizeof(struct c3_isp_params_awb_gains),
>> +             .handler = c3_isp_params_cfg_awb_gains,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_AWB_CONFIG] = {
>> +             .size = sizeof(struct c3_isp_params_awb_config),
>> +             .handler = c3_isp_params_cfg_awb_config,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_AE_CONFIG] = {
>> +             .size = sizeof(struct c3_isp_params_ae_config),
>> +             .handler = c3_isp_params_cfg_ae_config,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_AF_CONFIG] = {
>> +             .size = sizeof(struct c3_isp_params_af_config),
>> +             .handler = c3_isp_params_cfg_af_config,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_PST_GAMMA] = {
>> +             .size = sizeof(struct c3_isp_params_pst_gamma),
>> +             .handler = c3_isp_params_cfg_pst_gamma,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_CCM] = {
>> +             .size = sizeof(struct c3_isp_params_ccm),
>> +             .handler = c3_isp_params_cfg_ccm,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_CSC] = {
>> +             .size = sizeof(struct c3_isp_params_csc),
>> +             .handler = c3_isp_params_cfg_csc,
>> +     },
>> +     [C3_ISP_PARAMS_BLOCK_BLC] = {
>> +             .size = sizeof(struct c3_isp_params_blc),
>> +             .handler = c3_isp_params_cfg_blc,
>> +     },
>> +};
>> +
>> +static enum vb2_buffer_state
>> +c3_isp_params_cfg_blocks(struct c3_isp_params *params)
>> +{
>> +     struct c3_isp_params_cfg *config = params->buff->cfg;
>> +     size_t block_offset = 0;
>> +     size_t max_offset = 0;
>> +
>> +     if (WARN_ON(!config))
>> +             return VB2_BUF_STATE_ERROR;
>> +
>> +     /* Ensure config->data has a full struct c3_isp_params_block_header */
>> +     max_offset = config->data_size - sizeof(struct c3_isp_params_block_header);
> I might have missed why you subtract this. Hasn't the package been
> validated in c3_isp_params_vb2_buf_prepare() ?


Yes, the package has been validated.

Will check this issue.

>> +
>> +     /* Walk the list of parameter blocks and process them */
>> +     while (block_offset <= max_offset) {
>> +             const struct c3_isp_params_handler *block_handler;
>> +             union c3_isp_params_block block;
>> +
>> +             block = (union c3_isp_params_block)
>> +                      &config->data[block_offset];
>> +
>> +             block_handler = &c3_isp_params_handlers[block.header->type];
>> +             block_handler->handler(params->isp, block);
>> +
>> +             block_offset += block.header->size;
>> +     }
>> +
>> +     return VB2_BUF_STATE_DONE;
>> +}
>> +
>> +void c3_isp_params_pre_cfg(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_params *params = &isp->params;
>> +
>> +     /* Disable some unused modules */
>> +     c3_isp_update_bits(isp, ISP_TOP_FEO_CTRL0, ISP_TOP_FEO_CTRL0_INPUT_FMT_EN_MASK,
>> +                        ISP_TOP_FEO_CTRL0_INPUT_FMT_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_FEO_CTRL1_0, ISP_TOP_FEO_CTRL1_0_DPC_EN_MASK,
>> +                        ISP_TOP_FEO_CTRL1_0_DPC_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FEO_CTRL1_0, ISP_TOP_FEO_CTRL1_0_OG_EN_MASK,
>> +                        ISP_TOP_FEO_CTRL1_0_OG_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_PDPC_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_PDPC_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_RAWCNR_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_RAWCNR_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_SNR1_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_SNR1_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_TNR0_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_TNR0_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_CUBIC_CS_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_CUBIC_CS_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_SQRT_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_SQRT_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_FED_CTRL, ISP_TOP_FED_CTRL_DGAIN_EN_MASK,
>> +                        ISP_TOP_FED_CTRL_DGAIN_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL, ISP_TOP_BEO_CTRL_INV_DGAIN_EN_MASK,
>> +                        ISP_TOP_BEO_CTRL_INV_DGAIN_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BEO_CTRL, ISP_TOP_BEO_CTRL_EOTF_EN_MASK,
>> +                        ISP_TOP_BEO_CTRL_EOTF_DIS);
>> +
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_YHS_STAT_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_YHS_STAT_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_GRPH_STAT_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_GRPH_STAT_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_FMETER_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_FMETER_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_BSC_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_BSC_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CNR2_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_CNR2_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_CM1_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_CM1_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_LUT3D_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_LUT3D_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_PST_TNR_LITE_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_PST_TNR_LITE_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_BED_CTRL, ISP_TOP_BED_CTRL_AMCM_EN_MASK,
>> +                        ISP_TOP_BED_CTRL_AMCM_DIS);
>> +
>> +     /*
>> +      * Disable AE, AF and AWB stat module. Please configure the parameters
>> +      * in userspace algorithm if need to enable these switch.
>> +      */
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL, ISP_TOP_3A_STAT_CRTL_AE_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AE_STAT_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL, ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AWB_STAT_DIS);
>> +     c3_isp_update_bits(isp, ISP_TOP_3A_STAT_CRTL, ISP_TOP_3A_STAT_CRTL_AF_STAT_EN_MASK,
>> +                        ISP_TOP_3A_STAT_CRTL_AF_STAT_DIS);
>> +
>> +     c3_isp_write(isp, ISP_LSWB_WB_LIMIT0,
>> +                  ISP_LSWB_WB_LIMIT0_WB_LIMIT_R_MAX | ISP_LSWB_WB_LIMIT0_WB_LIMIT_GR_MAX);
>> +     c3_isp_write(isp, ISP_LSWB_WB_LIMIT1,
>> +                  ISP_LSWB_WB_LIMIT1_WB_LIMIT_GB_MAX | ISP_LSWB_WB_LIMIT1_WB_LIMIT_B_MAX);
>> +
>> +     guard(spinlock_irqsave)(&params->buff_lock);
>> +
>> +     /* Only use the first buffer to initialize ISP */
>> +     params->buff = list_first_entry_or_null(&params->pending,
>> +                                             struct c3_isp_params_buffer, list);
>> +     if (params->buff)
>> +             c3_isp_params_cfg_blocks(params);
>> +}
>> +
>> +/* V4L2 video operations */
>> +
>> +static int c3_isp_params_querycap(struct file *file, void *fh,
>> +                               struct v4l2_capability *cap)
>> +{
>> +     strscpy(cap->driver, C3_ISP_DRIVER_NAME, sizeof(cap->driver));
>> +     strscpy(cap->card, "AML C3 ISP", sizeof(cap->card));
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_params_enum_fmt(struct file *file, void *fh,
>> +                               struct v4l2_fmtdesc *f)
>> +{
>> +     if (f->index)
>> +             return -EINVAL;
>> +
>> +     f->pixelformat = V4L2_META_FMT_C3ISP_PARAMS;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_params_g_fmt(struct file *file, void *fh,
>> +                            struct v4l2_format *f)
>> +{
>> +     struct c3_isp_params *params = video_drvdata(file);
>> +
>> +     f->fmt.meta = params->vfmt.fmt.meta;
>> +
>> +     return 0;
>> +}
>> +
>> +static const struct v4l2_ioctl_ops isp_params_v4l2_ioctl_ops = {
>> +     .vidioc_querycap                = c3_isp_params_querycap,
>> +     .vidioc_enum_fmt_meta_out       = c3_isp_params_enum_fmt,
>> +     .vidioc_g_fmt_meta_out          = c3_isp_params_g_fmt,
>> +     .vidioc_s_fmt_meta_out          = c3_isp_params_g_fmt,
>> +     .vidioc_try_fmt_meta_out        = c3_isp_params_g_fmt,
>> +     .vidioc_reqbufs                 = vb2_ioctl_reqbufs,
>> +     .vidioc_querybuf                = vb2_ioctl_querybuf,
>> +     .vidioc_qbuf                    = vb2_ioctl_qbuf,
>> +     .vidioc_expbuf                  = vb2_ioctl_expbuf,
>> +     .vidioc_dqbuf                   = vb2_ioctl_dqbuf,
>> +     .vidioc_prepare_buf             = vb2_ioctl_prepare_buf,
>> +     .vidioc_create_bufs             = vb2_ioctl_create_bufs,
>> +     .vidioc_streamon                = vb2_ioctl_streamon,
>> +     .vidioc_streamoff               = vb2_ioctl_streamoff,
>> +};
>> +
>> +static const struct v4l2_file_operations isp_params_v4l2_fops = {
>> +     .open = v4l2_fh_open,
>> +     .release = vb2_fop_release,
>> +     .poll = vb2_fop_poll,
>> +     .unlocked_ioctl = video_ioctl2,
>> +     .mmap = vb2_fop_mmap,
>> +};
>> +
>> +static int c3_isp_params_vb2_queue_setup(struct vb2_queue *q,
>> +                                      unsigned int *num_buffers,
>> +                                      unsigned int *num_planes,
>> +                                      unsigned int sizes[],
>> +                                      struct device *alloc_devs[])
>> +{
>> +     if (*num_planes) {
>> +             if (*num_planes != 1)
>> +                     return -EINVAL;
>> +
>> +             if (sizes[0] < sizeof(struct c3_isp_params_cfg))
>> +                     return -EINVAL;
> return 0 here
>

What is the reason to return 0?

I think need to consider the test of 'v4l2-compliance 1.29.0-5246'.

>> +     } else {
> and you can spare the } else {


Will check here.

>> +             *num_planes = 1;
>> +             sizes[0] = sizeof(struct c3_isp_params_cfg);
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_params_vb2_buf_queue(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_params_buffer *buf = to_c3_isp_params_buffer(v4l2_buf);
>> +     struct c3_isp_params *params = vb2_get_drv_priv(vb->vb2_queue);
>> +
>> +     guard(spinlock_irqsave)(&params->buff_lock);
>> +
>> +     list_add_tail(&buf->list, &params->pending);
>> +}
>> +
>> +static int c3_isp_params_vb2_buf_prepare(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_params_buffer *buf = to_c3_isp_params_buffer(vbuf);
>> +     struct c3_isp_params *params = vb2_get_drv_priv(vb->vb2_queue);
>> +     struct c3_isp_params_cfg *cfg = buf->cfg;
>> +     struct c3_isp_params_cfg *usr_cfg = vb2_plane_vaddr(vb, 0);
>> +     size_t payload_size = vb2_get_plane_payload(vb, 0);
>> +     size_t header_size = offsetof(struct c3_isp_params_cfg, data);
>> +     size_t block_offset = 0;
>> +     size_t cfg_size;
>> +
>> +     /* Payload size can't be greater than the destination buffer size */
>> +     if (payload_size > params->vfmt.fmt.meta.buffersize) {
>> +             dev_dbg(params->isp->dev,
>> +                     "Payload size is too large: %zu\n", payload_size);
>> +             return -EINVAL;
>> +     }
>> +
>> +     /* Payload size can't be smaller than the header size */
>> +     if (payload_size < header_size) {
>> +             dev_dbg(params->isp->dev,
>> +                     "Payload size is too small: %zu\n", payload_size);
>> +             return -EINVAL;
>> +     }
>> +
>> +     /*
>> +      * Use the internal scratch buffer to avoid userspace modifying
>> +      * the buffer content while the driver is processing it.
>> +      */
>> +     memcpy(cfg, usr_cfg, payload_size);
>> +
>> +     /* Only v0 is supported at the moment */
>> +     if (cfg->version != C3_ISP_PARAMS_BUFFER_V0) {
>> +             dev_dbg(params->isp->dev,
>> +                     "Unsupported params buffer version: %u\n", cfg->version);
>> +             return -EINVAL;
>> +     }
>> +
>> +     /* Validate the size reported in the parameter buffer header */
>> +     cfg_size = header_size + cfg->data_size;
>> +     if (cfg_size != payload_size) {
>> +             dev_dbg(params->isp->dev,
>> +                     "Data size %zu and payload size %zu are different\n",
>> +                     cfg_size, payload_size);
>> +             return -EINVAL;
>> +     }
>> +
>> +     /* Walk the list of parameter blocks and validate them */
>> +     cfg_size = cfg->data_size;
>> +     while (cfg_size >= sizeof(struct c3_isp_params_block_header)) {
>> +             const struct c3_isp_params_block_header *block;
>> +             const struct c3_isp_params_handler *handler;
>> +
>> +             block = (struct c3_isp_params_block_header *)
>> +                     &cfg->data[block_offset];
>> +
>> +             if (block->type >= ARRAY_SIZE(c3_isp_params_handlers)) {
>> +                     dev_dbg(params->isp->dev,
>> +                             "Invalid params block type\n");
>> +                     return -EINVAL;
>> +             }
>> +
>> +             if (block->size > cfg_size) {
>> +                     dev_dbg(params->isp->dev,
>> +                             "Block size is greater than cfg size\n");
>> +                     return -EINVAL;
>> +             }
>> +
>> +             handler = &c3_isp_params_handlers[block->type];
>> +             if (block->size != handler->size) {
>> +                     dev_dbg(params->isp->dev,
>> +                             "Invalid params block size\n");
>> +                     return -EINVAL;
>> +             }
>> +
>> +             block_offset += block->size;
>> +             cfg_size -= block->size;
>> +     }
>> +
>> +     if (cfg_size) {
>> +             dev_dbg(params->isp->dev,
>> +                     "Unexpected data after the params buffer end\n");
>> +             return -EINVAL;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_params_vb2_buf_init(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_params *params = vb2_get_drv_priv(vb->vb2_queue);
>> +     struct c3_isp_params_buffer *buf = to_c3_isp_params_buffer(v4l2_buf);
>> +
>> +     buf->cfg = kvmalloc(params->vfmt.fmt.meta.buffersize, GFP_KERNEL);
>> +     if (!buf->cfg)
>> +             return -ENOMEM;
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_params_vb2_buf_cleanup(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_params_buffer *buf = to_c3_isp_params_buffer(v4l2_buf);
>> +
>> +     kvfree(buf->cfg);
>> +     buf->cfg = NULL;
>> +}
>> +
>> +static void c3_isp_params_vb2_stop_streaming(struct vb2_queue *q)
>> +{
>> +     struct c3_isp_params *params = vb2_get_drv_priv(q);
>> +     struct c3_isp_params_buffer *buff;
>> +
>> +     guard(spinlock_irqsave)(&params->buff_lock);
>> +
>> +     while (!list_empty(&params->pending)) {
>> +             buff = list_first_entry(&params->pending,
>> +                                     struct c3_isp_params_buffer, list);
>> +             list_del(&buff->list);
>> +             vb2_buffer_done(&buff->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>> +     }
>> +}
>> +
>> +static const struct vb2_ops isp_params_vb2_ops = {
>> +     .queue_setup = c3_isp_params_vb2_queue_setup,
>> +     .buf_queue = c3_isp_params_vb2_buf_queue,
>> +     .buf_prepare = c3_isp_params_vb2_buf_prepare,
>> +     .buf_init = c3_isp_params_vb2_buf_init,
>> +     .buf_cleanup = c3_isp_params_vb2_buf_cleanup,
>> +     .wait_prepare = vb2_ops_wait_prepare,
>> +     .wait_finish = vb2_ops_wait_finish,
>> +     .stop_streaming = c3_isp_params_vb2_stop_streaming,
>> +};
>> +
>> +int c3_isp_params_register(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_params *params = &isp->params;
>> +     struct video_device *vdev = &params->vdev;
>> +     struct vb2_queue *vb2_q = &params->vb2_q;
>> +     int ret;
>> +
>> +     memset(params, 0, sizeof(*params));
>> +     params->vfmt.fmt.meta.dataformat = V4L2_META_FMT_C3ISP_PARAMS;
>> +     params->vfmt.fmt.meta.buffersize = sizeof(struct c3_isp_params_cfg);
>> +     params->isp = isp;
>> +     INIT_LIST_HEAD(&params->pending);
>> +     spin_lock_init(&params->buff_lock);
>> +     mutex_init(&params->lock);
>> +
>> +     snprintf(vdev->name, sizeof(vdev->name), "c3-isp-params");
>> +     vdev->fops = &isp_params_v4l2_fops;
>> +     vdev->ioctl_ops = &isp_params_v4l2_ioctl_ops;
>> +     vdev->v4l2_dev = &isp->v4l2_dev;
>> +     vdev->lock = &params->lock;
>> +     vdev->minor = -1;
>> +     vdev->queue = vb2_q;
>> +     vdev->release = video_device_release_empty;
>> +     vdev->device_caps = V4L2_CAP_META_OUTPUT | V4L2_CAP_STREAMING;
>> +     vdev->vfl_dir = VFL_DIR_TX;
>> +     video_set_drvdata(vdev, params);
>> +
>> +     vb2_q->drv_priv = params;
>> +     vb2_q->mem_ops = &vb2_vmalloc_memops;
>> +     vb2_q->ops = &isp_params_vb2_ops;
>> +     vb2_q->type = V4L2_BUF_TYPE_META_OUTPUT;
>> +     vb2_q->io_modes = VB2_DMABUF | VB2_MMAP;
>> +     vb2_q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>> +     vb2_q->buf_struct_size = sizeof(struct c3_isp_buffer);
>> +     vb2_q->dev = isp->dev;
>> +     vb2_q->lock = &params->lock;
>> +     vb2_q->min_queued_buffers = 1;
>> +
>> +     ret = vb2_queue_init(vb2_q);
>> +     if (ret)
>> +             goto err_detroy;
>> +
>> +     params->pad.flags = MEDIA_PAD_FL_SOURCE;
>> +     ret = media_entity_pads_init(&vdev->entity, 1, &params->pad);
>> +     if (ret)
>> +             goto err_queue_release;
>> +
>> +     ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>> +     if (ret < 0) {
>> +             dev_err(isp->dev,
>> +                     "Failed to register %s: %d\n", vdev->name, ret);
>> +             goto err_entity_cleanup;
>> +     }
>> +
>> +     return 0;
>> +
>> +err_entity_cleanup:
>> +     media_entity_cleanup(&vdev->entity);
>> +err_queue_release:
>> +     vb2_queue_release(vb2_q);
>> +err_detroy:
>> +     mutex_destroy(&params->lock);
>> +     return ret;
>> +}
>> +
>> +void c3_isp_params_unregister(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_params *params = &isp->params;
>> +
>> +     vb2_queue_release(&params->vb2_q);
>> +     media_entity_cleanup(&params->vdev.entity);
>> +     video_unregister_device(&params->vdev);
>> +     mutex_destroy(&params->lock);
>> +}
>> +
>> +void c3_isp_params_isr(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_params *params = &isp->params;
>> +     enum vb2_buffer_state state;
>> +
>> +     guard(spinlock_irqsave)(&params->buff_lock);
>> +
>> +     params->buff = list_first_entry_or_null(&params->pending,
>> +                                             struct c3_isp_params_buffer, list);
>> +     if (!params->buff)
>> +             return;
>> +
>> +     list_del(&params->buff->list);
>> +
>> +     state = c3_isp_params_cfg_blocks(params);
>> +
>> +     params->buff->vb.sequence = params->isp->frm_sequence;
>> +     params->buff->vb.vb2_buf.timestamp = ktime_get();
>> +     params->buff->vb.field = V4L2_FIELD_NONE;
>> +     vb2_buffer_done(&params->buff->vb.vb2_buf, state);
>> +}
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-regs.h b/drivers/media/platform/amlogic/c3/isp/c3-isp-regs.h
>> new file mode 100644
>> index 000000000000..c4d3b8c96479
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-regs.h
>> @@ -0,0 +1,599 @@
>> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#ifndef __C3_ISP_REGS_H__
>> +#define __C3_ISP_REGS_H__
>> +
>> +#define ISP_TOP_INPUT_SIZE                              0x0000
>> +#define ISP_TOP_INPUT_SIZE_VERT_SIZE_MASK               GENMASK(15, 0)
>> +#define ISP_TOP_INPUT_SIZE_VERT_SIZE(x)                 ((x) << 0)
>> +#define ISP_TOP_INPUT_SIZE_HORIZ_SIZE_MASK              GENMASK(31, 16)
>> +#define ISP_TOP_INPUT_SIZE_HORIZ_SIZE(x)                ((x) << 16)
>> +
>> +#define ISP_TOP_FRM_SIZE                                0x0004
>> +#define ISP_TOP_FRM_SIZE_CORE_VERT_SIZE_MASK            GENMASK(15, 0)
>> +#define ISP_TOP_FRM_SIZE_CORE_VERT_SIZE(x)              ((x) << 0)
>> +#define ISP_TOP_FRM_SIZE_CORE_HORIZ_SIZE_MASK           GENMASK(31, 16)
>> +#define ISP_TOP_FRM_SIZE_CORE_HORIZ_SIZE(x)             ((x) << 16)
>> +
>> +#define ISP_TOP_HOLD_SIZE                               0x0008
>> +#define ISP_TOP_HOLD_SIZE_CORE_HORIZ_SIZE_MASK          GENMASK(31, 16)
>> +#define ISP_TOP_HOLD_SIZE_CORE_HORIZ_SIZE(x)            ((x) << 16)
>> +
>> +#define ISP_TOP_PATH_EN                                 0x0010
>> +#define ISP_TOP_PATH_EN_DISP0_EN_MASK                   BIT(0)
>> +#define ISP_TOP_PATH_EN_DISP0_EN                        BIT(0)
>> +#define ISP_TOP_PATH_EN_DISP0_DIS                       (0 << 0)
>> +#define ISP_TOP_PATH_EN_DISP1_EN_MASK                   BIT(1)
>> +#define ISP_TOP_PATH_EN_DISP1_EN                        BIT(1)
>> +#define ISP_TOP_PATH_EN_DISP1_DIS                       (0 << 1)
>> +#define ISP_TOP_PATH_EN_DISP2_EN_MASK                   BIT(2)
>> +#define ISP_TOP_PATH_EN_DISP2_EN                        BIT(2)
>> +#define ISP_TOP_PATH_EN_DISP2_DIS                       (0 << 2)
>> +#define ISP_TOP_PATH_EN_WRMIF0_EN_MASK                  BIT(8)
>> +#define ISP_TOP_PATH_EN_WRMIF0_EN                       BIT(8)
>> +#define ISP_TOP_PATH_EN_WRMIF0_DIS                      (0 << 8)
>> +#define ISP_TOP_PATH_EN_WRMIF1_EN_MASK                  BIT(9)
>> +#define ISP_TOP_PATH_EN_WRMIF1_EN                       BIT(9)
>> +#define ISP_TOP_PATH_EN_WRMIF1_DIS                      (0 << 9)
>> +#define ISP_TOP_PATH_EN_WRMIF2_EN_MASK                  BIT(10)
>> +#define ISP_TOP_PATH_EN_WRMIF2_EN                       BIT(10)
>> +#define ISP_TOP_PATH_EN_WRMIF2_DIS                      (0 << 10)
>> +
>> +#define ISP_TOP_PATH_SEL                                0x0014
>> +#define ISP_TOP_PATH_SEL_CORE_MASK                      GENMASK(18, 16)
>> +#define ISP_TOP_PATH_SEL_CORE_CORE_DIS                  (0 << 16)
>> +#define ISP_TOP_PATH_SEL_CORE_MIPI_CORE                 BIT(16)
>> +
>> +#define ISP_TOP_IRQ_EN                                  0x0080
>> +#define ISP_TOP_IRQ_EN_FRAME_END_MASK                   BIT(0)
>> +#define ISP_TOP_IRQ_EN_FRAME_END_EN                     BIT(0)
>> +#define ISP_TOP_IRQ_EN_FRAME_END_DIS                    (0 << 0)
>> +#define ISP_TOP_IRQ_EN_3A_DMA_ERR_MASK                  BIT(5)
>> +#define ISP_TOP_IRQ_EN_3A_DMA_ERR_EN                    BIT(5)
>> +#define ISP_TOP_IRQ_EN_3A_DMA_ERR_DIS                   (0 << 5)
>> +
>> +#define ISP_TOP_IRQ_CLR                                 0x0084
>> +#define ISP_TOP_RO_IRQ_STAT                             0x01c4
>> +
>> +#define ISP_TOP_MODE_CTRL                               0x0400
>> +#define ISP_TOP_FEO_CTRL0                               0x040c
>> +#define ISP_TOP_FEO_CTRL0_INPUT_FMT_EN_MASK             BIT(8)
>> +#define ISP_TOP_FEO_CTRL0_INPUT_FMT_DIS                 (0 << 8)
>> +#define ISP_TOP_FEO_CTRL0_INPUT_FMT_EN                  BIT(8)
>> +
>> +#define ISP_TOP_FEO_CTRL1_0                             0x0410
>> +#define ISP_TOP_FEO_CTRL1_0_DPC_EN_MASK                 BIT(3)
>> +#define ISP_TOP_FEO_CTRL1_0_DPC_DIS                     (0 << 3)
>> +#define ISP_TOP_FEO_CTRL1_0_DPC_EN                      BIT(3)
>> +#define ISP_TOP_FEO_CTRL1_0_OG_EN_MASK                  BIT(5)
>> +#define ISP_TOP_FEO_CTRL1_0_OG_DIS                      (0 << 5)
>> +#define ISP_TOP_FEO_CTRL1_0_OG_EN                       BIT(5)
>> +
>> +#define ISP_TOP_FED_CTRL                                0x0418
>> +#define ISP_TOP_FED_CTRL_PDPC_EN_MASK                   BIT(1)
>> +#define ISP_TOP_FED_CTRL_PDPC_DIS                       (0 << 1)
>> +#define ISP_TOP_FED_CTRL_PDPC_EN                        BIT(1)
>> +#define ISP_TOP_FED_CTRL_RAWCNR_EN_MASK                 GENMASK(6, 5)
>> +#define ISP_TOP_FED_CTRL_RAWCNR_DIS                     (0 << 5)
>> +#define ISP_TOP_FED_CTRL_RAWCNR_EN                      BIT(5)
>> +#define ISP_TOP_FED_CTRL_SNR1_EN_MASK                   BIT(9)
>> +#define ISP_TOP_FED_CTRL_SNR1_DIS                       (0 << 9)
>> +#define ISP_TOP_FED_CTRL_SNR1_EN                        BIT(9)
>> +#define ISP_TOP_FED_CTRL_TNR0_EN_MASK                   BIT(11)
>> +#define ISP_TOP_FED_CTRL_TNR0_DIS                       (0 << 11)
>> +#define ISP_TOP_FED_CTRL_TNR0_EN                        BIT(11)
>> +#define ISP_TOP_FED_CTRL_CUBIC_CS_EN_MASK               BIT(12)
>> +#define ISP_TOP_FED_CTRL_CUBIC_CS_DIS                   (0 << 12)
>> +#define ISP_TOP_FED_CTRL_CUBIC_CS_EN                    BIT(12)
>> +#define ISP_TOP_FED_CTRL_SQRT_EN_MASK                   BIT(14)
>> +#define ISP_TOP_FED_CTRL_SQRT_DIS                       (0 << 14)
>> +#define ISP_TOP_FED_CTRL_SQRT_EN                        BIT(14)
>> +#define ISP_TOP_FED_CTRL_DGAIN_EN_MASK                  BIT(16)
>> +#define ISP_TOP_FED_CTRL_DGAIN_DIS                      (0 << 16)
>> +#define ISP_TOP_FED_CTRL_DGAIN_EN                       BIT(16)
>> +
>> +#define ISP_TOP_BEO_CTRL                                0x041c
>> +#define ISP_TOP_BEO_CTRL_WB_EN_MASK                     BIT(6)
>> +#define ISP_TOP_BEO_CTRL_WB_DIS                         (0 << 6)
>> +#define ISP_TOP_BEO_CTRL_WB_EN                          BIT(6)
>> +#define ISP_TOP_BEO_CTRL_BLC_EN_MASK                    BIT(7)
>> +#define ISP_TOP_BEO_CTRL_BLC_DIS                        (0 << 7)
>> +#define ISP_TOP_BEO_CTRL_BLC_EN                         BIT(7)
>> +#define ISP_TOP_BEO_CTRL_INV_DGAIN_EN_MASK              BIT(8)
>> +#define ISP_TOP_BEO_CTRL_INV_DGAIN_DIS                  (0 << 8)
>> +#define ISP_TOP_BEO_CTRL_INV_DGAIN_EN                   BIT(8)
>> +#define ISP_TOP_BEO_CTRL_EOTF_EN_MASK                   BIT(9)
>> +#define ISP_TOP_BEO_CTRL_EOTF_DIS                       (0 << 9)
>> +#define ISP_TOP_BEO_CTRL_EOTF_EN                        BIT(9)
>> +
>> +#define ISP_TOP_BED_CTRL                                0x0420
>> +#define ISP_TOP_BED_CTRL_YHS_STAT_EN_MASK               GENMASK(1, 0)
>> +#define ISP_TOP_BED_CTRL_YHS_STAT_DIS                   (0 << 0)
>> +#define ISP_TOP_BED_CTRL_YHS_STAT_EN                    BIT(0)
>> +#define ISP_TOP_BED_CTRL_GRPH_STAT_EN_MASK              BIT(2)
>> +#define ISP_TOP_BED_CTRL_GRPH_STAT_DIS                  (0 << 2)
>> +#define ISP_TOP_BED_CTRL_GRPH_STAT_EN                   BIT(2)
>> +#define ISP_TOP_BED_CTRL_FMETER_EN_MASK                 BIT(3)
>> +#define ISP_TOP_BED_CTRL_FMETER_DIS                     (0 << 3)
>> +#define ISP_TOP_BED_CTRL_FMETER_EN                      BIT(3)
>> +#define ISP_TOP_BED_CTRL_BSC_EN_MASK                    BIT(10)
>> +#define ISP_TOP_BED_CTRL_BSC_DIS                        (0 << 10)
>> +#define ISP_TOP_BED_CTRL_BSC_EN                         BIT(10)
>> +#define ISP_TOP_BED_CTRL_CNR2_EN_MASK                   BIT(11)
>> +#define ISP_TOP_BED_CTRL_CNR2_DIS                       (0 << 11)
>> +#define ISP_TOP_BED_CTRL_CNR2_EN                        BIT(11)
>> +#define ISP_TOP_BED_CTRL_CM1_EN_MASK                    BIT(13)
>> +#define ISP_TOP_BED_CTRL_CM1_DIS                        (0 << 13)
>> +#define ISP_TOP_BED_CTRL_CM1_EN                         BIT(13)
>> +#define ISP_TOP_BED_CTRL_CM0_EN_MASK                    BIT(14)
>> +#define ISP_TOP_BED_CTRL_CM0_DIS                        (0 << 14)
>> +#define ISP_TOP_BED_CTRL_CM0_EN                         BIT(14)
>> +#define ISP_TOP_BED_CTRL_PST_GAMMA_EN_MASK              BIT(16)
>> +#define ISP_TOP_BED_CTRL_PST_GAMMA_DIS                  (0 << 16)
>> +#define ISP_TOP_BED_CTRL_PST_GAMMA_EN                   BIT(16)
>> +#define ISP_TOP_BED_CTRL_LUT3D_EN_MASK                  BIT(17)
>> +#define ISP_TOP_BED_CTRL_LUT3D_DIS                      (0 << 17)
>> +#define ISP_TOP_BED_CTRL_LUT3D_EN                       BIT(17)
>> +#define ISP_TOP_BED_CTRL_CCM_EN_MASK                    BIT(18)
>> +#define ISP_TOP_BED_CTRL_CCM_DIS                        (0 << 18)
>> +#define ISP_TOP_BED_CTRL_CCM_EN                         BIT(18)
>> +#define ISP_TOP_BED_CTRL_PST_TNR_LITE_EN_MASK           BIT(21)
>> +#define ISP_TOP_BED_CTRL_PST_TNR_LITE_DIS               (0 << 21)
>> +#define ISP_TOP_BED_CTRL_PST_TNR_LITE_EN                BIT(21)
>> +#define ISP_TOP_BED_CTRL_AMCM_EN_MASK                   BIT(25)
>> +#define ISP_TOP_BED_CTRL_AMCM_DIS                       (0 << 25)
>> +#define ISP_TOP_BED_CTRL_AMCM_EN                        BIT(25)
>> +
>> +#define ISP_TOP_3A_STAT_CRTL                            0x0424
>> +#define ISP_TOP_3A_STAT_CRTL_AE_STAT_EN_MASK            BIT(0)
>> +#define ISP_TOP_3A_STAT_CRTL_AE_STAT_DIS                (0 << 0)
>> +#define ISP_TOP_3A_STAT_CRTL_AE_STAT_EN                 BIT(0)
>> +#define ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN_MASK           BIT(1)
>> +#define ISP_TOP_3A_STAT_CRTL_AWB_STAT_DIS               (0 << 1)
>> +#define ISP_TOP_3A_STAT_CRTL_AWB_STAT_EN                BIT(1)
>> +#define ISP_TOP_3A_STAT_CRTL_AF_STAT_EN_MASK            BIT(2)
>> +#define ISP_TOP_3A_STAT_CRTL_AF_STAT_DIS                (0 << 2)
>> +#define ISP_TOP_3A_STAT_CRTL_AF_STAT_EN                 BIT(2)
>> +#define ISP_TOP_3A_STAT_CRTL_AWB_STAT_POINT_MASK        GENMASK(6, 4)
>> +#define ISP_TOP_3A_STAT_CRTL_AWB_STAT_POINT(x)          ((x) << 4)
>> +#define ISP_TOP_3A_STAT_CRTL_AE_STAT_POINT_MASK         GENMASK(9, 8)
>> +#define ISP_TOP_3A_STAT_CRTL_AE_STAT_POINT(x)           ((x) << 8)
>> +#define ISP_TOP_3A_STAT_CRTL_AF_STAT_POINT_MASK         GENMASK(13, 12)
>> +#define ISP_TOP_3A_STAT_CRTL_AF_STAT_POINT(x)           ((x) << 12)
>> +
>> +#define ISP_LSWB_BLC_OFST0                              0x4028
>> +#define ISP_LSWB_BLC_OFST0_R_OFST_MASK                  GENMASK(15, 0)
>> +#define ISP_LSWB_BLC_OFST0_R_OFST(x)                    ((x) << 0)
>> +#define ISP_LSWB_BLC_OFST0_GR_OFST_MASK                 GENMASK(31, 16)
>> +#define ISP_LSWB_BLC_OFST0_GR_OFST(x)                   ((x) << 16)
>> +
>> +#define ISP_LSWB_BLC_OFST1                              0x402c
>> +#define ISP_LSWB_BLC_OFST1_GB_OFST_MASK                 GENMASK(15, 0)
>> +#define ISP_LSWB_BLC_OFST1_GB_OFST(x)                   ((x) << 0)
>> +#define ISP_LSWB_BLC_OFST1_B_OFST_MASK                  GENMASK(31, 16)
>> +#define ISP_LSWB_BLC_OFST1_B_OFST(x)                    ((x) << 16)
>> +
>> +#define ISP_LSWB_BLC_PHSOFST                            0x4034
>> +#define ISP_LSWB_BLC_PHSOFST_VERT_OFST_MASK             GENMASK(1, 0)
>> +#define ISP_LSWB_BLC_PHSOFST_VERT_OFST(x)               ((x) << 0)
>> +#define ISP_LSWB_BLC_PHSOFST_HORIZ_OFST_MASK            GENMASK(3, 2)
>> +#define ISP_LSWB_BLC_PHSOFST_HORIZ_OFST(x)              ((x) << 2)
>> +
>> +#define ISP_LSWB_WB_GAIN0                               0x4038
>> +#define ISP_LSWB_WB_GAIN0_R_GAIN_MASK                   GENMASK(11, 0)
>> +#define ISP_LSWB_WB_GAIN0_R_GAIN(x)                     ((x) << 0)
>> +#define ISP_LSWB_WB_GAIN0_GR_GAIN_MASK                  GENMASK(27, 16)
>> +#define ISP_LSWB_WB_GAIN0_GR_GAIN(x)                    ((x) << 16)
>> +
>> +#define ISP_LSWB_WB_GAIN1                               0x403c
>> +#define ISP_LSWB_WB_GAIN1_GB_GAIN_MASK                  GENMASK(11, 0)
>> +#define ISP_LSWB_WB_GAIN1_GB_GAIN(x)                    ((x) << 0)
>> +#define ISP_LSWB_WB_GAIN1_B_GAIN_MASK                   GENMASK(27, 16)
>> +#define ISP_LSWB_WB_GAIN1_B_GAIN(x)                     ((x) << 16)
>> +
>> +#define ISP_LSWB_WB_GAIN2                               0x4040
>> +#define ISP_LSWB_WB_GAIN2_IR_GAIN_MASK                  GENMASK(11, 0)
>> +#define ISP_LSWB_WB_GAIN2_IR_GAIN(x)                    ((x) << 0)
>> +
>> +#define ISP_LSWB_WB_LIMIT0                              0x4044
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_R_MASK              GENMASK(15, 0)
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_R(x)                ((x) << 0)
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_R_MAX               (0x8fff << 0)
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_GR_MASK             GENMASK(31, 16)
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_GR(x)               ((x) << 16)
>> +#define ISP_LSWB_WB_LIMIT0_WB_LIMIT_GR_MAX              (0x8fff << 16)
>> +
>> +#define ISP_LSWB_WB_LIMIT1                              0x4048
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_GB_MASK             GENMASK(15, 0)
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_GB(x)               ((x) << 0)
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_GB_MAX              (0x8fff << 0)
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_B_MASK              GENMASK(31, 16)
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_B(x)                ((x) << 16)
>> +#define ISP_LSWB_WB_LIMIT1_WB_LIMIT_B_MAX               (0x8fff << 16)
>> +
>> +#define ISP_LSWB_WB_PHSOFST                             0x4050
>> +#define ISP_LSWB_WB_PHSOFST_VERT_OFST_MASK              GENMASK(1, 0)
>> +#define ISP_LSWB_WB_PHSOFST_VERT_OFST(x)                ((x) << 0)
>> +#define ISP_LSWB_WB_PHSOFST_HORIZ_OFST_MASK             GENMASK(3, 2)
>> +#define ISP_LSWB_WB_PHSOFST_HORIZ_OFST(x)               ((x) << 2)
>> +
>> +#define ISP_LSWB_LNS_PHSOFST                            0x4054
>> +#define ISP_LSWB_LNS_PHSOFST_VERT_OFST_MASK             GENMASK(1, 0)
>> +#define ISP_LSWB_LNS_PHSOFST_VERT_OFST(x)               ((x) << 0)
>> +#define ISP_LSWB_LNS_PHSOFST_HORIZ_OFST_MASK            GENMASK(3, 2)
>> +#define ISP_LSWB_LNS_PHSOFST_HORIZ_OFST(x)              ((x) << 2)
>> +
>> +#define ISP_DMS_COMMON_PARAM0                           0x5000
>> +#define ISP_DMS_COMMON_PARAM0_VERT_PHS_OFST_MASK         GENMASK(1, 0)
>> +#define ISP_DMS_COMMON_PARAM0_VERT_PHS_OFST(x)          ((x) << 0)
>> +#define ISP_DMS_COMMON_PARAM0_HORIZ_PHS_OFST_MASK        GENMASK(3, 2)
>> +#define ISP_DMS_COMMON_PARAM0_HORIZ_PHS_OFST(x)         ((x) << 2)
>> +
>> +#define ISP_CM0_COEF00_01                               0x6048
>> +#define ISP_CM0_COEF00_01_MTX_00_MASK                   GENMASK(12, 0)
>> +#define ISP_CM0_COEF00_01_MTX_00(x)                     ((x) << 0)
>> +#define ISP_CM0_COEF00_01_MTX_01_MASK                   GENMASK(28, 16)
>> +#define ISP_CM0_COEF00_01_MTX_01(x)                     ((x) << 16)
>> +
>> +#define ISP_CM0_COEF02_10                               0x604c
>> +#define ISP_CM0_COEF02_10_MTX_02_MASK                   GENMASK(12, 0)
>> +#define ISP_CM0_COEF02_10_MTX_02(x)                     ((x) << 0)
>> +#define ISP_CM0_COEF02_10_MTX_10_MASK                   GENMASK(28, 16)
>> +#define ISP_CM0_COEF02_10_MTX_10(x)                     ((x) << 16)
>> +
>> +#define ISP_CM0_COEF11_12                               0x6050
>> +#define ISP_CM0_COEF11_12_MTX_11_MASK                   GENMASK(12, 0)
>> +#define ISP_CM0_COEF11_12_MTX_11(x)                     ((x) << 0)
>> +#define ISP_CM0_COEF11_12_MTX_12_MASK                   GENMASK(28, 16)
>> +#define ISP_CM0_COEF11_12_MTX_12(x)                     ((x) << 16)
>> +
>> +#define ISP_CM0_COEF20_21                               0x6054
>> +#define ISP_CM0_COEF20_21_MTX_20_MASK                   GENMASK(12, 0)
>> +#define ISP_CM0_COEF20_21_MTX_20(x)                     ((x) << 0)
>> +#define ISP_CM0_COEF20_21_MTX_21_MASK                   GENMASK(28, 16)
>> +#define ISP_CM0_COEF20_21_MTX_21(x)                     ((x) << 16)
>> +
>> +#define ISP_CM0_COEF22_OUP_OFST0                        0x6058
>> +#define ISP_CM0_COEF22_OUP_OFST0_MTX_22_MASK            GENMASK(12, 0)
>> +#define ISP_CM0_COEF22_OUP_OFST0_MTX_22(x)              ((x) << 0)
>> +
>> +#define ISP_CCM_MTX_00_01                               0x6098
>> +#define ISP_CCM_MTX_00_01_MTX_00_MASK                   GENMASK(12, 0)
>> +#define ISP_CCM_MTX_00_01_MTX_00(x)                     ((x) << 0)
>> +#define ISP_CCM_MTX_00_01_MTX_01_MASK                   GENMASK(28, 16)
>> +#define ISP_CCM_MTX_00_01_MTX_01(x)                     ((x) << 16)
>> +
>> +#define ISP_CCM_MTX_02_03                               0x609c
>> +#define ISP_CCM_MTX_02_03_MTX_02_MASK                   GENMASK(12, 0)
>> +#define ISP_CCM_MTX_02_03_MTX_02(x)                     ((x) << 0)
>> +
>> +#define ISP_CCM_MTX_10_11                               0x60A0
>> +#define ISP_CCM_MTX_10_11_MTX_10_MASK                   GENMASK(12, 0)
>> +#define ISP_CCM_MTX_10_11_MTX_10(x)                     ((x) << 0)
>> +#define ISP_CCM_MTX_10_11_MTX_11_MASK                   GENMASK(28, 16)
>> +#define ISP_CCM_MTX_10_11_MTX_11(x)                     ((x) << 16)
>> +
>> +#define ISP_CCM_MTX_12_13                               0x60A4
>> +#define ISP_CCM_MTX_12_13_MTX_12_MASK                   GENMASK(12, 0)
>> +#define ISP_CCM_MTX_12_13_MTX_12(x)                     ((x) << 0)
>> +
>> +#define ISP_CCM_MTX_20_21                               0x60A8
>> +#define ISP_CCM_MTX_20_21_MTX_20_MASK                   GENMASK(12, 0)
>> +#define ISP_CCM_MTX_20_21_MTX_20(x)                     ((x) << 0)
>> +#define ISP_CCM_MTX_20_21_MTX_21_MASK                   GENMASK(28, 16)
>> +#define ISP_CCM_MTX_20_21_MTX_21(x)                     ((x) << 16)
>> +
>> +#define ISP_CCM_MTX_22_23_RS                            0x60Ac
>> +#define ISP_CCM_MTX_22_23_RS_MTX_22_MASK                GENMASK(12, 0)
>> +#define ISP_CCM_MTX_22_23_RS_MTX_22(x)                  ((x) << 0)
>> +
>> +#define ISP_PST_GAMMA_LUT_ADDR                          0x60cc
>> +#define ISP_PST_GAMMA_LUT_ADDR_IDX_ADDR(x)              ((x) << 7)
>> +
>> +#define ISP_PST_GAMMA_LUT_DATA                          0x60d0
>> +#define ISP_PST_GAMMA_LUT_DATA_DATA0(x)                 (((x) & GENMASK(15, 0)) << 0)
>> +#define ISP_PST_GAMMA_LUT_DATA_DATA1(x)                 (((x) & GENMASK(15, 0)) << 16)
>> +
>> +#define DISP0_TOP_TOP_CTRL                              0x8000
>> +#define DISP0_TOP_TOP_CTRL_CROP2_EN_MASK                BIT(5)
>> +#define DISP0_TOP_TOP_CTRL_CROP2_EN                     BIT(5)
>> +#define DISP0_TOP_TOP_CTRL_CROP2_DIS                    (0 << 5)
>> +
>> +#define DISP0_TOP_CRP2_START                            0x8004
>> +#define DISP0_TOP_CRP2_START_V_START_MASK               GENMASK(15, 0)
>> +#define DISP0_TOP_CRP2_START_V_START(x)                 ((x) << 0)
>> +#define DISP0_TOP_CRP2_START_H_START_MASK               GENMASK(31, 16)
>> +#define DISP0_TOP_CRP2_START_H_START(x)                 ((x) << 16)
>> +
>> +#define DISP0_TOP_CRP2_SIZE                             0x8008
>> +#define DISP0_TOP_CRP2_SIZE_V_SIZE_MASK                 GENMASK(15, 0)
>> +#define DISP0_TOP_CRP2_SIZE_V_SIZE(x)                   ((x) << 0)
>> +#define DISP0_TOP_CRP2_SIZE_H_SIZE_MASK                 GENMASK(31, 16)
>> +#define DISP0_TOP_CRP2_SIZE_H_SIZE(x)                   ((x) << 16)
>> +
>> +#define DISP0_TOP_OUT_SIZE                              0x800c
>> +#define DISP0_TOP_OUT_SIZE_SCALER_OUT_HEIGHT_MASK       GENMASK(12, 0)
>> +#define DISP0_TOP_OUT_SIZE_SCALER_OUT_HEIGHT(x)         ((x) << 0)
>> +#define DISP0_TOP_OUT_SIZE_SCALER_OUT_WIDTH_MASK        GENMASK(28, 16)
>> +#define DISP0_TOP_OUT_SIZE_SCALER_OUT_WIDTH(x)          ((x) << 16)
>> +
>> +#define ISP_DISP0_TOP_IN_SIZE                           0x804c
>> +#define ISP_DISP0_TOP_IN_SIZE_VSIZE_MASK                GENMASK(12, 0)
>> +#define ISP_DISP0_TOP_IN_SIZE_VSIZE(x)                  ((x) << 0)
>> +#define ISP_DISP0_TOP_IN_SIZE_HSIZE_MASK                GENMASK(28, 16)
>> +#define ISP_DISP0_TOP_IN_SIZE_HSIZE(x)                  ((x) << 16)
>> +
>> +#define DISP0_PPS_SCALE_EN                              0x8200
>> +#define DISP0_PPS_SCALE_EN_VSC_TAP_NUM_MASK             GENMASK(3, 0)
>> +#define DISP0_PPS_SCALE_EN_VSC_TAP_NUM(x)               ((x) << 0)
>> +#define DISP0_PPS_SCALE_EN_HSC_TAP_NUM_MASK             GENMASK(7, 4)
>> +#define DISP0_PPS_SCALE_EN_HSC_TAP_NUM(x)               ((x) << 4)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_FLT_NUM_MASK          GENMASK(11, 8)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_FLT_NUM(x)            ((x) << 8)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_FLT_NUM_MASK          GENMASK(15, 12)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_FLT_NUM(x)            ((x) << 12)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_RATE_MASK             GENMASK(17, 16)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_RATE(x)               ((x) << 16)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_RATE_MASK             GENMASK(19, 18)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_RATE(x)               ((x) << 18)
>> +#define DISP0_PPS_SCALE_EN_HSC_EN_MASK                  BIT(20)
>> +#define DISP0_PPS_SCALE_EN_HSC_EN(x)                    ((x) << 20)
>> +#define DISP0_PPS_SCALE_EN_HSC_DIS                      (0 << 20)
>> +#define DISP0_PPS_SCALE_EN_VSC_EN_MASK                  BIT(21)
>> +#define DISP0_PPS_SCALE_EN_VSC_EN(x)                    ((x) << 21)
>> +#define DISP0_PPS_SCALE_EN_VSC_DIS                      (0 << 21)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_EN_MASK               BIT(22)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_EN(x)                 ((x) << 22)
>> +#define DISP0_PPS_SCALE_EN_PREVSC_DIS                   (0 << 22)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_EN_MASK               BIT(23)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_EN(x)                 ((x) << 23)
>> +#define DISP0_PPS_SCALE_EN_PREHSC_DIS                   (0 << 23)
>> +#define DISP0_PPS_SCALE_EN_HSC_NOR_RS_BITS_MASK         GENMASK(27, 24)
>> +#define DISP0_PPS_SCALE_EN_HSC_NOR_RS_BITS(x)           ((x) << 24)
>> +#define DISP0_PPS_SCALE_EN_VSC_NOR_RS_BITS_MASK         GENMASK(31, 28)
>> +#define DISP0_PPS_SCALE_EN_VSC_NOR_RS_BITS(x)           ((x) << 28)
>> +
>> +#define DISP0_PPS_VSC_START_PHASE_STEP                  0x8224
>> +#define DISP0_PPS_VSC_START_PHASE_STEP_VERT_FRAC_MASK   GENMASK(23, 0)
>> +#define DISP0_PPS_VSC_START_PHASE_STEP_VERT_FRAC(x)     ((x) << 0)
>> +#define DISP0_PPS_VSC_START_PHASE_STEP_VERT_INTE_MASK   GENMASK(27, 24)
>> +#define DISP0_PPS_VSC_START_PHASE_STEP_VERT_INTE(x)     ((x) << 24)
>> +
>> +#define DISP0_PPS_HSC_START_PHASE_STEP                  0x8230
>> +#define DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_FRAC_MASK  GENMASK(23, 0)
>> +#define DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_FRAC(x)    ((x) << 0)
>> +#define DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_INTE_MASK  GENMASK(27, 24)
>> +#define DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_INTE(x)    ((x) << 24)
>> +
>> +#define DISP0_PPS_444TO422                              0x823c
>> +#define DISP0_PPS_444TO422_EN_MASK                      BIT(0)
>> +#define DISP0_PPS_444TO422_EN(x)                        ((x) << 0)
>> +
>> +#define ISP_SCALE0_COEF_IDX_LUMA                        0x8240
>> +#define ISP_SCALE0_COEF_IDX_LUMA_COEF_S11_MODE_MASK     BIT(9)
>> +#define ISP_SCALE0_COEF_IDX_LUMA_COEF_S11_MODE_EN       BIT(9)
>> +#define ISP_SCALE0_COEF_IDX_LUMA_COEF_S11_MODE_DIS      (0 << 9)
>> +#define ISP_SCALE0_COEF_IDX_LUMA_CTYPE_MASK             GENMASK(12, 10)
>> +#define ISP_SCALE0_COEF_IDX_LUMA_CTYPE(x)               ((x) << 10)
>> +
>> +#define ISP_SCALE0_COEF_LUMA                            0x8244
>> +#define ISP_SCALE0_COEF_LUMA_DATA1(x)                   (((x) & GENMASK(10, 0)) << 0)
>> +#define ISP_SCALE0_COEF_LUMA_DATA0(x)                   (((x) & GENMASK(10, 0)) << 16)
>> +
>> +#define ISP_SCALE0_COEF_IDX_CHRO                        0x8248
>> +#define ISP_SCALE0_COEF_IDX_CHRO_COEF_S11_MODE_MASK     BIT(9)
>> +#define ISP_SCALE0_COEF_IDX_CHRO_COEF_S11_MODE_EN       BIT(9)
>> +#define ISP_SCALE0_COEF_IDX_CHRO_COEF_S11_MODE_DIS      (0 << 9)
>> +#define ISP_SCALE0_COEF_IDX_CHRO_CTYPE_MASK             GENMASK(12, 10)
>> +#define ISP_SCALE0_COEF_IDX_CHRO_CTYPE(x)               ((x) << 10)
>> +
>> +#define ISP_SCALE0_COEF_CHRO                            0x824c
>> +#define ISP_SCALE0_COEF_CHRO_DATA1(x)                   (((x) & GENMASK(10, 0)) << 0)
>> +#define ISP_SCALE0_COEF_CHRO_DATA0(x)                   (((x) & GENMASK(10, 0)) << 16)
>> +
>> +#define ISP_AF_CTRL                                     0xa044
>> +#define ISP_AF_CTRL_VERT_OFST_MASK                      GENMASK(15, 14)
>> +#define ISP_AF_CTRL_VERT_OFST(x)                        ((x) << 14)
>> +#define ISP_AF_CTRL_HORIZ_OFST_MASK                     GENMASK(17, 16)
>> +#define ISP_AF_CTRL_HORIZ_OFST(x)                       ((x) << 16)
>> +
>> +#define ISP_AF_HV_SIZE                                  0xa04c
>> +#define ISP_AF_HV_SIZE_GLB_WIN_YSIZE_MASK               GENMASK(15, 0)
>> +#define ISP_AF_HV_SIZE_GLB_WIN_YSIZE(x)                 ((x) << 0)
>> +#define ISP_AF_HV_SIZE_GLB_WIN_XSIZE_MASK               GENMASK(31, 16)
>> +#define ISP_AF_HV_SIZE_GLB_WIN_XSIZE(x)                 ((x) << 16)
>> +
>> +#define ISP_AF_HV_BLKNUM                                0xa050
>> +#define ISP_AF_HV_BLKNUM_BLK_VERT_NUM_MASK              GENMASK(5, 0)
>> +#define ISP_AF_HV_BLKNUM_BLK_VERT_NUM(x)                ((x) << 0)
>> +#define ISP_AF_HV_BLKNUM_BLK_HORIZ_NUM_MASK             GENMASK(21, 16)
>> +#define ISP_AF_HV_BLKNUM_BLK_HORIZ_NUM(x)               ((x) << 16)
>> +
>> +#define ISP_AF_EN_CTRL                                  0xa054
>> +#define ISP_AF_EN_CTRL_STAT_SEL_MASK                    BIT(21)
>> +#define ISP_AF_EN_CTRL_STAT_SEL_OLD                     (0 << 21)
>> +#define ISP_AF_EN_CTRL_STAT_SEL_NEW                     BIT(21)
>> +
>> +#define ISP_AF_IDX_ADDR                                 0xa1c0
>> +#define ISP_AF_IDX_DATA                                 0xa1c4
>> +#define ISP_AF_IDX_DATA_VIDX_DATA(x)                    (((x) & GENMASK(15, 0)) << 0)
>> +#define ISP_AF_IDX_DATA_HIDX_DATA(x)                    (((x) & GENMASK(15, 0)) << 16)
>> +
>> +#define ISP_AE_CTRL                                     0xa448
>> +#define ISP_AE_CTRL_INPUT_2LINE_MASK                    BIT(7)
>> +#define ISP_AE_CTRL_INPUT_2LINE_EN                      BIT(7)
>> +#define ISP_AE_CTRL_INPUT_2LINE_DIS                     (0 << 7)
>> +#define ISP_AE_CTRL_LUMA_MODE_MASK                      GENMASK(9, 8)
>> +#define ISP_AE_CTRL_LUMA_MODE_CUR                       (0 << 8)
>> +#define ISP_AE_CTRL_LUMA_MODE_MAX                       BIT(8)
>> +#define ISP_AE_CTRL_LUMA_MODE_FILTER                    (2 << 8)
>> +#define ISP_AE_CTRL_VERT_OFST_MASK                      GENMASK(25, 24)
>> +#define ISP_AE_CTRL_VERT_OFST(x)                        ((x) << 24)
>> +#define ISP_AE_CTRL_HORIZ_OFST_MASK                     GENMASK(27, 26)
>> +#define ISP_AE_CTRL_HORIZ_OFST(x)                       ((x) << 26)
>> +
>> +#define ISP_AE_HV_SIZE                                  0xa464
>> +#define ISP_AE_HV_SIZE_VERT_SIZE_MASK                   GENMASK(15, 0)
>> +#define ISP_AE_HV_SIZE_VERT_SIZE(x)                     ((x) << 0)
>> +#define ISP_AE_HV_SIZE_HORIZ_SIZE_MASK                  GENMASK(31, 16)
>> +#define ISP_AE_HV_SIZE_HORIZ_SIZE(x)                    ((x) << 16)
>> +
>> +#define ISP_AE_HV_BLKNUM                                0xa468
>> +#define ISP_AE_HV_BLKNUM_BLK_VERT_NUM_MASK              GENMASK(6, 0)
>> +#define ISP_AE_HV_BLKNUM_BLK_VERT_NUM(x)                ((x) << 0)
>> +#define ISP_AE_HV_BLKNUM_BLK_HORIZ_NUM_MASK             GENMASK(22, 16)
>> +#define ISP_AE_HV_BLKNUM_BLK_HORIZ_NUM(x)               ((x) << 16)
>> +
>> +#define ISP_AE_IDX_ADDR                                 0xa600
>> +#define ISP_AE_IDX_DATA                                 0xa604
>> +#define ISP_AE_IDX_DATA_VIDX_DATA(x)                    (((x) & GENMASK(15, 0)) << 0)
>> +#define ISP_AE_IDX_DATA_HIDX_DATA(x)                    (((x) & GENMASK(15, 0)) << 16)
>> +
>> +#define ISP_AE_BLK_WT_ADDR                              0xa608
>> +#define ISP_AE_BLK_WT_DATA                              0xa60c
>> +#define ISP_AE_BLK_WT_DATA_IDX_DATA(i, x)               (((x) & GENMASK(3, 0)) << ((i) * 4))
>> +
>> +#define ISP_AWB_CTRL                                    0xa834
>> +#define ISP_AWB_CTRL_VERT_OFST_MASK                     GENMASK(1, 0)
>> +#define ISP_AWB_CTRL_VERT_OFST(x)                       ((x) << 0)
>> +#define ISP_AWB_CTRL_HORIZ_OFST_MASK                    GENMASK(3, 2)
>> +#define ISP_AWB_CTRL_HORIZ_OFST(x)                      ((x) << 2)
>> +
>> +#define ISP_AWB_HV_SIZE                                 0xa83c
>> +#define ISP_AWB_HV_SIZE_VERT_SIZE_MASK                  GENMASK(15, 0)
>> +#define ISP_AWB_HV_SIZE_VERT_SIZE(x)                    ((x) << 0)
>> +#define ISP_AWB_HV_SIZE_HORIZ_SIZE_MASK                 GENMASK(31, 16)
>> +#define ISP_AWB_HV_SIZE_HORIZ_SIZE(x)                   ((x) << 16)
>> +
>> +#define ISP_AWB_HV_BLKNUM                               0xa840
>> +#define ISP_AWB_HV_BLKNUM_VERT_BLKS_NUM_MASK            GENMASK(5, 0)
>> +#define ISP_AWB_HV_BLKNUM_VERT_BLKS_NUM(x)              ((x) << 0)
>> +#define ISP_AWB_HV_BLKNUM_HORIZ_BLKS_NUM_MASK           GENMASK(21, 16)
>> +#define ISP_AWB_HV_BLKNUM_HORIZ_BLKS_NUM(x)             ((x) << 16)
>> +
>> +#define ISP_AWB_STAT_RG                                 0xa848
>> +#define ISP_AWB_STAT_RG_MIN_VALUE_MASK                  GENMASK(11, 0)
>> +#define ISP_AWB_STAT_RG_MIN_VALUE(x)                    ((x) << 0)
>> +#define ISP_AWB_STAT_RG_MAX_VALUE_MASK                  GENMASK(27, 16)
>> +#define ISP_AWB_STAT_RG_MAX_VALUE(x)                    ((x) << 16)
>> +
>> +#define ISP_AWB_STAT_BG                                 0xa84c
>> +#define ISP_AWB_STAT_BG_MIN_VALUE_MASK                  GENMASK(11, 0)
>> +#define ISP_AWB_STAT_BG_MIN_VALUE(x)                    ((x) << 0)
>> +#define ISP_AWB_STAT_BG_MAX_VALUE_MASK                  GENMASK(27, 16)
>> +#define ISP_AWB_STAT_BG_MAX_VALUE(x)                    ((x) << 16)
>> +
>> +#define ISP_AWB_STAT_RG_HL                              0xa850
>> +#define ISP_AWB_STAT_RG_HL_LOW_VALUE_MASK               GENMASK(11, 0)
>> +#define ISP_AWB_STAT_RG_HL_LOW_VALUE(x)                 ((x) << 0)
>> +#define ISP_AWB_STAT_RG_HL_HIGH_VALUE_MASK              GENMASK(27, 16)
>> +#define ISP_AWB_STAT_RG_HL_HIGH_VALUE(x)                ((x) << 16)
>> +
>> +#define ISP_AWB_STAT_BG_HL                              0xa854
>> +#define ISP_AWB_STAT_BG_HL_LOW_VALUE_MASK               GENMASK(11, 0)
>> +#define ISP_AWB_STAT_BG_HL_LOW_VALUE(x)                 ((x) << 0)
>> +#define ISP_AWB_STAT_BG_HL_HIGH_VALUE_MASK              GENMASK(27, 16)
>> +#define ISP_AWB_STAT_BG_HL_HIGH_VALUE(x)                ((x) << 16)
>> +
>> +#define ISP_AWB_STAT_CTRL2                              0xa858
>> +#define ISP_AWB_STAT_CTRL2_SATUR_CTRL_MASK              BIT(0)
>> +#define ISP_AWB_STAT_CTRL2_SATUR_CTRL(x)                ((x) << 0)
>> +
>> +#define ISP_AWB_IDX_ADDR                                0xaa00
>> +#define ISP_AWB_IDX_DATA                                0xaa04
>> +#define ISP_AWB_IDX_DATA_VIDX_DATA(x)                   (((x) & GENMASK(15, 0)) << 0)
>> +#define ISP_AWB_IDX_DATA_HIDX_DATA(x)                   (((x) & GENMASK(15, 0)) << 16)
>> +
>> +#define ISP_AWB_BLK_WT_ADDR                             0xaa08
>> +#define ISP_AWB_BLK_WT_DATA                             0xaa0c
>> +#define ISP_AWB_BLK_WT_DATA_IDX_DATA(i, x)              (((x) & GENMASK(3, 0)) << ((i) * 4))
>> +
>> +#define ISP_WRMIFX3_0_CH0_CTRL0                         0xc400
>> +#define ISP_WRMIFX3_0_CH0_CTRL0_STRIDE_MASK             GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_CH0_CTRL0_STRIDE(x)               ((x) << 16)
>> +
>> +#define ISP_WRMIFX3_0_CH0_CTRL1                         0xc404
>> +#define ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_MODE_MASK      GENMASK(30, 27)
>> +#define ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_8BITS          BIT(27)
>> +#define ISP_WRMIFX3_0_CH0_CTRL1_PIX_BITS_16BITS         (2 << 27)
>> +
>> +#define ISP_WRMIFX3_0_CH1_CTRL0                         0xc408
>> +#define ISP_WRMIFX3_0_CH1_CTRL0_STRIDE_MASK             GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_CH1_CTRL0_STRIDE(x)               ((x) << 16)
>> +
>> +#define ISP_WRMIFX3_0_CH1_CTRL1                         0xc40c
>> +#define ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_MODE_MASK      GENMASK(30, 27)
>> +#define ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_16BITS         (2 << 27)
>> +#define ISP_WRMIFX3_0_CH1_CTRL1_PIX_BITS_32BITS         (3 << 27)
>> +
>> +#define ISP_WRMIFX3_0_CH0_BADDR                         0xc440
>> +#define ISP_WRMIFX3_0_CH0_BASE_ADDR(x)                  ((x) >> 4)
>> +
>> +#define ISP_WRMIFX3_0_CH1_BADDR                         0xc444
>> +#define ISP_WRMIFX3_0_CH1_BASE_ADDR(x)                  ((x) >> 4)
>> +
>> +#define ISP_WRMIFX3_0_FMT_SIZE                          0xc464
>> +#define ISP_WRMIFX3_0_FMT_SIZE_HSIZE_MASK               GENMASK(15, 0)
>> +#define ISP_WRMIFX3_0_FMT_SIZE_HSIZE(x)                 ((x) << 0)
>> +#define ISP_WRMIFX3_0_FMT_SIZE_VSIZE_MASK               GENMASK(31, 16)
>> +#define ISP_WRMIFX3_0_FMT_SIZE_VSIZE(x)                 ((x) << 16)
>> +
>> +#define ISP_WRMIFX3_0_FMT_CTRL                          0xc468
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_MASK           GENMASK(1, 0)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_8BIT           (0 << 0)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_10BIT          BIT(0)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_12BIT          (2 << 0)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_IBITS_16BIT          (3 << 0)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_MASK         BIT(2)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_VU           (0 << 2)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_UV_SWAP_UV           BIT(2)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_MASK           GENMASK(5, 4)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_X1             (0 << 4)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MTX_PLANE_X2             BIT(4)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_MASK            GENMASK(18, 16)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_YUV422          BIT(16)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_YUV420          (2 << 16)
>> +#define ISP_WRMIFX3_0_FMT_CTRL_MODE_OUT_Y_ONLY          (3 << 16)
>> +
>> +#define ISP_WRMIFX3_0_WIN_LUMA_H                        0xc420
>> +#define ISP_WRMIFX3_0_WIN_LUMA_H_LUMA_HEND_MASK         GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_WIN_LUMA_H_LUMA_HEND(x)           (((x) - 1) << 16)
>> +
>> +#define ISP_WRMIFX3_0_WIN_LUMA_V                        0xc424
>> +#define ISP_WRMIFX3_0_WIN_LUMA_V_LUMA_VEND_MASK         GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_WIN_LUMA_V_LUMA_VEND(x)           (((x) - 1) << 16)
>> +
>> +#define ISP_WRMIFX3_0_WIN_CHROM_H                       0xc428
>> +#define ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND_MASK       GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_WIN_CHROM_H_CHROM_HEND(x)         (((x) - 1) << 16)
>> +
>> +#define ISP_WRMIFX3_0_WIN_CHROM_V                       0xc42c
>> +#define ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND_MASK       GENMASK(28, 16)
>> +#define ISP_WRMIFX3_0_WIN_CHROM_V_CHROM_VEND(x)         (((x) - 1) << 16)
>> +
>> +#define VIU_DMAWR_BADDR0                                0xc840
>> +#define VIU_DMAWR_BADDR0_AF_STATS_BASE_ADDR_MASK        GENMASK(27, 0)
>> +#define VIU_DMAWR_BADDR0_AF_STATS_BASE_ADDR(x)          ((x) >> 4)
>> +
>> +#define VIU_DMAWR_BADDR1                                0xc844
>> +#define VIU_DMAWR_BADDR1_AWB_STATS_BASE_ADDR_MASK       GENMASK(27, 0)
>> +#define VIU_DMAWR_BADDR1_AWB_STATS_BASE_ADDR(x)         ((x) >> 4)
>> +
>> +#define VIU_DMAWR_BADDR2                                0xc848
>> +#define VIU_DMAWR_BADDR2_AE_STATS_BASE_ADDR_MASK        GENMASK(27, 0)
>> +#define VIU_DMAWR_BADDR2_AE_STATS_BASE_ADDR(x)          ((x) >> 4)
>> +
>> +#define VIU_DMAWR_SIZE0                                 0xc854
>> +#define VIU_DMAWR_SIZE0_AF_STATS_SIZE_MASK              GENMASK(15, 0)
>> +#define VIU_DMAWR_SIZE0_AF_STATS_SIZE(x)                ((x) << 0)
>> +#define VIU_DMAWR_SIZE0_AWB_STATS_SIZE_MASK             GENMASK(31, 16)
>> +#define VIU_DMAWR_SIZE0_AWB_STATS_SIZE(x)               ((x) << 16)
>> +
>> +#define VIU_DMAWR_SIZE1                                 0xc858
>> +#define VIU_DMAWR_SIZE1_AE_STATS_SIZE_MASK              GENMASK(15, 0)
>> +#define VIU_DMAWR_SIZE1_AE_STATS_SIZE(x)                ((x) << 0)
>> +
>> +#endif
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-resizer.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-resizer.c
>> new file mode 100644
>> index 000000000000..b179eff4cfd6
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-resizer.c
>> @@ -0,0 +1,779 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/pm_runtime.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +/* The normal parameters of pps module */
>> +static const int pps_lut_tap4_s11[C3_ISP_PPS_TAP4_S11_H_NUM][4] =  {
>> +     {  0, 511,   0,   0}, { -5, 511,   5,   0}, {-10, 511,  11,   0},
>> +     {-14, 510,  17,  -1}, {-18, 508,  23,  -1}, {-22, 506,  29,  -1},
>> +     {-25, 503,  36,  -2}, {-28, 500,  43,  -3}, {-32, 496,  51,  -3},
>> +     {-34, 491,  59,  -4}, {-37, 487,  67,  -5}, {-39, 482,  75,  -6},
>> +     {-41, 476,  84,  -7}, {-42, 470,  92,  -8}, {-44, 463, 102,  -9},
>> +     {-45, 456, 111, -10}, {-45, 449, 120, -12}, {-47, 442, 130, -13},
>> +     {-47, 434, 140, -15}, {-47, 425, 151, -17}, {-47, 416, 161, -18},
>> +     {-47, 407, 172, -20}, {-47, 398, 182, -21}, {-47, 389, 193, -23},
>> +     {-46, 379, 204, -25}, {-45, 369, 215, -27}, {-44, 358, 226, -28},
>> +     {-43, 348, 237, -30}, {-43, 337, 249, -31}, {-41, 326, 260, -33},
>> +     {-40, 316, 271, -35}, {-39, 305, 282, -36}, {-37, 293, 293, -37}
>> +};
>> +
>> +static void c3_isp_rsz_pps_size(struct c3_isp_resizer *rsz,
>> +                             struct c3_isp_pps_io_size *io_size)
>> +{
>> +     int thsize = io_size->thsize;
>> +     int tvsize = io_size->tvsize;
>> +     u32 ohsize = io_size->ohsize;
>> +     u32 ovsize = io_size->ovsize;
>> +     u32 ihsize = io_size->ihsize;
>> +     u32 max_hsize = io_size->max_hsize;
>> +     int step_h_integer, step_v_integer;
>> +     int step_h_fraction, step_v_fraction;
>> +     int yuv444to422_en;
>> +
>> +     /* Calculate the integer part of horizonal scaler step */
>> +     step_h_integer = thsize / ohsize;
>> +
>> +     /* Calculate the vertical part of horizonal scaler step */
>> +     step_v_integer = tvsize / ovsize;
>> +
>> +     /*
>> +      * Calculate the fraction part of horizonal scaler step.
>> +      * step_h_fraction = (source / dest) * 2^24,
>> +      * so step_h_fraction = ((source << 12) / dest) << 12.
>> +      */
>> +     step_h_fraction = ((thsize << 12) / ohsize) << 12;
>> +
>> +     /*
>> +      * Calculate the fraction part of vertical scaler step
>> +      * step_v_fraction = (source / dest) * 2^24,
>> +      * so step_v_fraction = ((source << 12) / dest) << 12.
>> +      */
>> +     step_v_fraction = ((tvsize << 12) / ovsize) << 12;
>> +
>> +     yuv444to422_en = ihsize > (max_hsize / 2) ? 1 : 0;
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_444TO422, rsz->id),
>> +                        DISP0_PPS_444TO422_EN_MASK, DISP0_PPS_444TO422_EN(yuv444to422_en));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_VSC_START_PHASE_STEP, rsz->id),
>> +                        DISP0_PPS_VSC_START_PHASE_STEP_VERT_FRAC_MASK,
>> +                        DISP0_PPS_VSC_START_PHASE_STEP_VERT_FRAC(step_v_fraction));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_VSC_START_PHASE_STEP, rsz->id),
>> +                        DISP0_PPS_VSC_START_PHASE_STEP_VERT_INTE_MASK,
>> +                        DISP0_PPS_VSC_START_PHASE_STEP_VERT_INTE(step_v_integer));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_HSC_START_PHASE_STEP, rsz->id),
>> +                        DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_FRAC_MASK,
>> +                        DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_FRAC(step_h_fraction));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_HSC_START_PHASE_STEP, rsz->id),
>> +                        DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_INTE_MASK,
>> +                        DISP0_PPS_HSC_START_PHASE_STEP_HORIZ_INTE(step_h_integer));
>> +}
>> +
>> +static void c3_isp_rsz_pps_lut(struct c3_isp_resizer *rsz, u32 ctype)
>> +{
>> +     unsigned int i;
>> +
>> +     /*
>> +      * Default value of this register is 0,
>> +      * so only need to set SCALE_LUMA_COEF_S11_MODE and SCALE_LUMA_CTYPE.
>> +      * This register needs to be written in one time.
>> +      */
>> +     c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_IDX_LUMA, rsz->id),
>> +                  ISP_SCALE0_COEF_IDX_LUMA_COEF_S11_MODE_EN |
>> +                  ISP_SCALE0_COEF_IDX_LUMA_CTYPE(ctype));
>> +
>> +     for (i = 0; i < C3_ISP_PPS_TAP4_S11_H_NUM; i++) {
>> +             c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_LUMA, rsz->id),
>> +                          ISP_SCALE0_COEF_LUMA_DATA0(pps_lut_tap4_s11[i][0]) |
>> +                          ISP_SCALE0_COEF_LUMA_DATA1(pps_lut_tap4_s11[i][1]));
>> +             c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_LUMA, rsz->id),
>> +                          ISP_SCALE0_COEF_LUMA_DATA0(pps_lut_tap4_s11[i][2]) |
>> +                          ISP_SCALE0_COEF_LUMA_DATA1(pps_lut_tap4_s11[i][3]));
>> +     }
>> +
>> +     /*
>> +      * Default value of this register is 0,
>> +      * so only need to set SCALE_CHRO_COEF_S11_MODE and SCALE_CHRO_CTYPE.
>> +      * This register needs to be written in one time.
>> +      */
>> +     c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_IDX_CHRO, rsz->id),
>> +                  ISP_SCALE0_COEF_IDX_CHRO_COEF_S11_MODE_EN |
>> +                  ISP_SCALE0_COEF_IDX_CHRO_CTYPE(ctype));
>> +
>> +     for (i = 0; i < C3_ISP_PPS_TAP4_S11_H_NUM; i++) {
>> +             c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_CHRO, rsz->id),
>> +                          ISP_SCALE0_COEF_CHRO_DATA0(pps_lut_tap4_s11[i][0]) |
>> +                          ISP_SCALE0_COEF_CHRO_DATA1(pps_lut_tap4_s11[i][1]));
>> +             c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_SCALE0_COEF_CHRO, rsz->id),
>> +                          ISP_SCALE0_COEF_CHRO_DATA0(pps_lut_tap4_s11[i][2]) |
>> +                          ISP_SCALE0_COEF_CHRO_DATA1(pps_lut_tap4_s11[i][3]));
>> +     }
>> +}
>> +
>> +static void c3_isp_rsz_pps_disable(struct c3_isp_resizer *rsz)
>> +{
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_HSC_EN_MASK, DISP0_PPS_SCALE_EN_HSC_DIS);
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_VSC_EN_MASK, DISP0_PPS_SCALE_EN_VSC_DIS);
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREVSC_EN_MASK, DISP0_PPS_SCALE_EN_PREVSC_DIS);
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREHSC_EN_MASK, DISP0_PPS_SCALE_EN_PREHSC_DIS);
>> +}
>> +
>> +static int c3_isp_rsz_pps_enable(struct c3_isp_resizer *rsz,
>> +                              struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_rect *crop;
>> +     struct v4l2_rect *cmps;
>> +     int max_hsize;
>> +     int hsc_en, vsc_en;
>> +     int preh_en, prev_en;
>> +     u32 prehsc_rate;
>> +     u32 prevsc_flt_num;
>> +     int pre_vscale_max_hsize;
>> +     u32 ihsize_after_pre_hsc;
>> +     u32 ihsize_after_pre_hsc_alt;
>> +     u32 vsc_tap_num_alt;
>> +     u32 ihsize;
>> +     u32 ivsize;
>> +     struct c3_isp_pps_io_size io_size;
>> +
>> +     crop = v4l2_subdev_state_get_crop(state, C3_ISP_RESIZER_PAD_SINK);
>> +     cmps = v4l2_subdev_state_get_compose(state, C3_ISP_RESIZER_PAD_SINK);
>> +
>> +     ihsize = crop->width;
>> +     ivsize = crop->height;
>> +
>> +     hsc_en = (ihsize == cmps->width) ? C3_ISP_SCALE_DIS : C3_ISP_SCALE_EN;
>> +     vsc_en = (ivsize == cmps->height) ? C3_ISP_SCALE_DIS : C3_ISP_SCALE_EN;
>> +
>> +     /* Disable pps when there no need to use pps */
>> +     if (!hsc_en && !vsc_en) {
>> +             c3_isp_rsz_pps_disable(rsz);
>> +             return 0;
>> +     }
>> +
>> +     /*
>> +      * Pre-scale needs to be enable
>> +      * if the down scaling factor exceeds 4.
> minor nit: seems like you should wrap comments here too


Will wrap comments.

>> +      */
>> +     preh_en = (ihsize > cmps->width * 4) ? C3_ISP_SCALE_EN : C3_ISP_SCALE_DIS;
>> +     prev_en = (ivsize > cmps->height * 4) ? C3_ISP_SCALE_EN : C3_ISP_SCALE_DIS;
>> +
>> +     if (rsz->id == C3_ISP_RSZ_2) {
>> +             max_hsize = C3_ISP_MAX_WIDTH;
>> +             /*
>> +              * Set vertical tap number and
>> +              * the max hsize of pre-vertical scale.
>> +              */
>> +             prevsc_flt_num = 4;
>> +             pre_vscale_max_hsize = max_hsize / 2;
>> +     } else {
>> +             max_hsize = C3_ISP_DEFAULT_WIDTH;
>> +             preh_en  = (ihsize > max_hsize) ? C3_ISP_SCALE_EN : C3_ISP_SCALE_DIS;
>> +             /*
>> +              * Set vertical tap number and
>> +              * the max hsize of pre-vertical scale.
>> +              */
>> +             if (ihsize > (max_hsize / 2) &&
>> +                 ihsize <= max_hsize && prev_en) {
>> +                     prevsc_flt_num = 2;
>> +                     pre_vscale_max_hsize = max_hsize;
>> +             } else {
>> +                     prevsc_flt_num = 4;
>> +                     pre_vscale_max_hsize = max_hsize / 2;
>> +             }
>> +     }
>> +
>> +     /*
>> +      * Set pre-horizonal scale rate and
>> +      * the hsize of after pre-horizonal scale.
>> +      */
>> +     if (preh_en) {
>> +             prehsc_rate = 1;
>> +             ihsize_after_pre_hsc = DIV_ROUND_UP(ihsize, 2);
>> +     } else {
>> +             prehsc_rate = 0;
>> +             ihsize_after_pre_hsc = ihsize;
>> +     }
>> +
>> +     /* Change pre-horizonal scale rate */
>> +     if (prev_en && ihsize_after_pre_hsc >= pre_vscale_max_hsize)
>> +             prehsc_rate += 1;
>> +
>> +     /* Set the actual hsize of after pre-horizonal scale */
>> +     if (preh_en)
>> +             ihsize_after_pre_hsc_alt =
>> +                     DIV_ROUND_UP(ihsize, 1 << prehsc_rate);
>> +     else
>> +             ihsize_after_pre_hsc_alt = ihsize;
>> +
>> +     /* Set vertical scaler bank length */
>> +     if (ihsize_after_pre_hsc_alt <= (max_hsize / 2))
>> +             vsc_tap_num_alt = 4;
>> +     else if (ihsize_after_pre_hsc_alt <= max_hsize)
>> +             vsc_tap_num_alt = prev_en ? 2 : 4;
>> +     else
>> +             vsc_tap_num_alt = prev_en ? 4 : 2;
>> +
>> +     io_size.thsize = ihsize_after_pre_hsc_alt;
>> +     io_size.tvsize = prev_en ? DIV_ROUND_UP(ivsize, 2) : ivsize;
>> +     io_size.ohsize = cmps->width;
>> +     io_size.ovsize = cmps->height;
>> +     io_size.ihsize = ihsize;
>> +     io_size.max_hsize = max_hsize;
>> +
>> +     c3_isp_rsz_pps_size(rsz, &io_size);
>> +     c3_isp_rsz_pps_lut(rsz, C3_ISP_PPS_LUT_CTYPE_0);
>> +     c3_isp_rsz_pps_lut(rsz, C3_ISP_PPS_LUT_CTYPE_2);
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_VSC_TAP_NUM_MASK,
>> +                        DISP0_PPS_SCALE_EN_VSC_TAP_NUM(vsc_tap_num_alt));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREVSC_FLT_NUM_MASK,
>> +                        DISP0_PPS_SCALE_EN_PREVSC_FLT_NUM(prevsc_flt_num));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREVSC_RATE_MASK,
>> +                        DISP0_PPS_SCALE_EN_PREVSC_RATE(prev_en));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREHSC_RATE_MASK,
>> +                        DISP0_PPS_SCALE_EN_PREHSC_RATE(prehsc_rate));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_HSC_EN_MASK,
>> +                        DISP0_PPS_SCALE_EN_HSC_EN(hsc_en));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_VSC_EN_MASK,
>> +                        DISP0_PPS_SCALE_EN_VSC_EN(vsc_en));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREVSC_EN_MASK,
>> +                        DISP0_PPS_SCALE_EN_PREVSC_EN(prev_en));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_PREHSC_EN_MASK,
>> +                        DISP0_PPS_SCALE_EN_PREHSC_EN(preh_en));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_HSC_NOR_RS_BITS_MASK,
>> +                        DISP0_PPS_SCALE_EN_HSC_NOR_RS_BITS(9));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_PPS_SCALE_EN, rsz->id),
>> +                        DISP0_PPS_SCALE_EN_VSC_NOR_RS_BITS_MASK,
>> +                        DISP0_PPS_SCALE_EN_VSC_NOR_RS_BITS(9));
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_rsz_start(struct c3_isp_resizer *rsz,
>> +                          struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     struct v4l2_rect *sink_crop;
>> +
>> +     sink_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SINK);
>> +     sink_crop = v4l2_subdev_state_get_crop(state, C3_ISP_RESIZER_PAD_SINK);
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SOURCE);
>> +
>> +     c3_isp_write(rsz->isp, C3_ISP_DISP_REG(ISP_DISP0_TOP_IN_SIZE, rsz->id),
>> +                  ISP_DISP0_TOP_IN_SIZE_HSIZE(sink_fmt->width) |
>> +                  ISP_DISP0_TOP_IN_SIZE_VSIZE(sink_fmt->height));
>> +
>> +     c3_isp_write(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_CRP2_START, rsz->id),
>> +                  DISP0_TOP_CRP2_START_V_START(sink_crop->top) |
>> +                  DISP0_TOP_CRP2_START_H_START(sink_crop->left));
>> +
>> +     c3_isp_write(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_CRP2_SIZE, rsz->id),
>> +                  DISP0_TOP_CRP2_SIZE_V_SIZE(sink_crop->height) |
>> +                  DISP0_TOP_CRP2_SIZE_H_SIZE(sink_crop->width));
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_TOP_CTRL, rsz->id),
>> +                        DISP0_TOP_TOP_CTRL_CROP2_EN_MASK, DISP0_TOP_TOP_CTRL_CROP2_EN);
>> +
>> +     c3_isp_rsz_pps_enable(rsz, state);
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_OUT_SIZE, rsz->id),
>> +                        DISP0_TOP_OUT_SIZE_SCALER_OUT_HEIGHT_MASK,
>> +                        DISP0_TOP_OUT_SIZE_SCALER_OUT_HEIGHT(src_fmt->height));
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_OUT_SIZE, rsz->id),
>> +                        DISP0_TOP_OUT_SIZE_SCALER_OUT_WIDTH_MASK,
>> +                        DISP0_TOP_OUT_SIZE_SCALER_OUT_WIDTH(src_fmt->width));
>> +
>> +     if (rsz->id == C3_ISP_RSZ_0) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP0_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP0_EN);
>> +     } else if (rsz->id == C3_ISP_RSZ_1) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP1_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP1_EN);
>> +     } else if (rsz->id == C3_ISP_RSZ_2) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP2_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP2_EN);
>> +     }
>> +}
>> +
>> +static void c3_isp_rsz_stop(struct c3_isp_resizer *rsz)
>> +{
>> +     if (rsz->id == C3_ISP_RSZ_0) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP0_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP0_DIS);
>> +     } else if (rsz->id == C3_ISP_RSZ_1) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP1_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP1_DIS);
>> +     } else if (rsz->id == C3_ISP_RSZ_2) {
>> +             c3_isp_update_bits(rsz->isp, ISP_TOP_PATH_EN, ISP_TOP_PATH_EN_DISP2_EN_MASK,
>> +                                ISP_TOP_PATH_EN_DISP2_DIS);
>> +     }
>> +
>> +     c3_isp_update_bits(rsz->isp, C3_ISP_DISP_REG(DISP0_TOP_TOP_CTRL, rsz->id),
>> +                        DISP0_TOP_TOP_CTRL_CROP2_EN_MASK, DISP0_TOP_TOP_CTRL_CROP2_DIS);
>> +
>> +     c3_isp_rsz_pps_disable(rsz);
>> +}
>> +
>> +static bool c3_isp_rsz_streams_ready(struct c3_isp_resizer *rsz)
>> +{
>> +     unsigned int n_links = 0;
>> +     struct media_link *link;
>> +
>> +     for_each_media_entity_data_link(&rsz->src_sd->entity, link) {
>> +             if (link->source->index == rsz->src_sd_pad &&
>> +                 link->flags == MEDIA_LNK_FL_ENABLED)
>> +                     n_links++;
>> +     }
>> +
>> +     return n_links == rsz->isp->pipe.start_count;
>> +}
>> +
>> +static int c3_isp_rsz_enable_streams(struct v4l2_subdev *sd,
>> +                                  struct v4l2_subdev_state *state,
>> +                                  u32 pad, u64 streams_mask)
>> +{
>> +     struct c3_isp_resizer *rsz = v4l2_get_subdevdata(sd);
>> +     u64 sink_streams;
>> +     int ret;
>> +
>> +     c3_isp_rsz_start(rsz, state);
>> +
>> +     if (!c3_isp_rsz_streams_ready(rsz))
>> +             return 0;
>> +
>> +     c3_isp_params_pre_cfg(rsz->isp);
>> +     c3_isp_stats_pre_cfg(rsz->isp);
>> +
>> +     sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>> +                                                    C3_ISP_RESIZER_PAD_SINK,
>> +                                                    &streams_mask);
> Apart from the usual comments about routing, reflowing comments and
> minor nits, this module looks ok to me. I admit I have not tried to
> fully understand the scaler programming part at the beginning, but I
> trust you know the HW better than me :)


Will remove sink_streams.

> The stats driver looks ok as well.
>
> I hope next version will be good to go, and I hope to be able to test
> this implementation soon using libcamera!
>
> Great work!
>
> Thanks
>    j
>

Thanks very much! :)

>> +     ret = v4l2_subdev_enable_streams(rsz->src_sd,
>> +                                      rsz->src_sd_pad, sink_streams);
>> +     if (ret)
>> +             return ret;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_disable_streams(struct v4l2_subdev *sd,
>> +                                   struct v4l2_subdev_state *state,
>> +                                   u32 pad, u64 streams_mask)
>> +{
>> +     struct c3_isp_resizer *rsz = v4l2_get_subdevdata(sd);
>> +     u64 sink_streams;
>> +     int ret;
>> +
>> +     c3_isp_rsz_stop(rsz);
>> +
>> +     if (rsz->isp->pipe.start_count != 1)
>> +             return 0;
>> +
>> +     sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>> +                                                    C3_ISP_RESIZER_PAD_SINK,
>> +                                                    &streams_mask);
>> +     ret = v4l2_subdev_disable_streams(rsz->src_sd,
>> +                                       rsz->src_sd_pad, sink_streams);
>> +     if (ret)
>> +             return ret;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_cfg_routing(struct v4l2_subdev *sd,
>> +                               struct v4l2_subdev_state *state,
>> +                               struct v4l2_subdev_krouting *routing)
>> +{
>> +     static const struct v4l2_mbus_framefmt format = {
>> +             .width = C3_ISP_DEFAULT_WIDTH,
>> +             .height = C3_ISP_DEFAULT_HEIGHT,
>> +             .code = C3_ISP_RSZ_DEF_PAD_FMT,
>> +             .field = V4L2_FIELD_NONE,
>> +             .colorspace = V4L2_COLORSPACE_SRGB,
>> +             .ycbcr_enc = V4L2_YCBCR_ENC_601,
>> +             .quantization = V4L2_QUANTIZATION_LIM_RANGE,
>> +             .xfer_func = V4L2_XFER_FUNC_SRGB,
>> +     };
>> +     int ret;
>> +
>> +     ret = v4l2_subdev_routing_validate(sd, routing, V4L2_SUBDEV_ROUTING_ONLY_1_TO_1);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = v4l2_subdev_set_routing_with_fmt(sd, state, routing, &format);
>> +     if (ret)
>> +             return ret;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_init_routing(struct v4l2_subdev *sd,
>> +                                struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_subdev_route routes;
>> +     struct v4l2_subdev_krouting routing;
>> +
>> +     routes.sink_pad = C3_ISP_RESIZER_PAD_SINK;
>> +     routes.sink_stream = 0;
>> +     routes.source_pad = C3_ISP_RESIZER_PAD_SOURCE;
>> +     routes.source_stream = 0;
>> +     routes.flags = V4L2_SUBDEV_ROUTE_FL_ACTIVE;
>> +
>> +     routing.num_routes = 1;
>> +     routing.routes = &routes;
>> +
>> +     return c3_isp_rsz_cfg_routing(sd, state, &routing);
>> +}
>> +
>> +static int c3_isp_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>> +                                  struct v4l2_subdev_state *state,
>> +                                  struct v4l2_subdev_mbus_code_enum *code)
>> +{
>> +     if (code->index)
>> +             return -EINVAL;
>> +
>> +     code->code = MEDIA_BUS_FMT_YUV8_1X24;
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_rsz_set_sink_fmt(struct v4l2_subdev_state *state,
>> +                                 struct v4l2_subdev_format *format)
>> +{
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     struct v4l2_rect *sink_crop;
>> +     struct v4l2_rect *sink_cmps;
>> +
>> +     sink_fmt = v4l2_subdev_state_get_format(state, format->pad);
>> +     sink_crop = v4l2_subdev_state_get_crop(state, format->pad);
>> +     sink_cmps = v4l2_subdev_state_get_compose(state, format->pad);
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SOURCE);
>> +
>> +     sink_fmt->code = MEDIA_BUS_FMT_YUV8_1X24;
>> +     sink_fmt->width = clamp_t(u32, format->format.width,
>> +                               C3_ISP_MIN_WIDTH, C3_ISP_MAX_WIDTH);
>> +     sink_fmt->height = clamp_t(u32, format->format.height,
>> +                                C3_ISP_MIN_HEIGHT, C3_ISP_MAX_HEIGHT);
>> +
>> +     sink_crop->width = sink_fmt->width;
>> +     sink_crop->height = sink_fmt->height;
>> +     sink_crop->left = 0;
>> +     sink_crop->top = 0;
>> +
>> +     sink_cmps->width = sink_crop->width;
>> +     sink_cmps->height = sink_crop->height;
>> +     sink_cmps->left = 0;
>> +     sink_cmps->top = 0;
>> +
>> +     src_fmt->code = sink_fmt->code;
>> +     src_fmt->width = sink_cmps->width;
>> +     src_fmt->height = sink_cmps->height;
>> +
>> +     format->format = *sink_fmt;
>> +}
>> +
>> +static void c3_isp_rsz_set_source_fmt(struct v4l2_subdev_state *state,
>> +                                   struct v4l2_subdev_format *format)
>> +{
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_rect *sink_cmps;
>> +
>> +     src_fmt = v4l2_subdev_state_get_format(state, format->pad);
>> +     sink_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SINK);
>> +     sink_cmps = v4l2_subdev_state_get_compose(state, C3_ISP_RESIZER_PAD_SINK);
>> +
>> +     src_fmt->code = sink_fmt->code;
>> +     src_fmt->width = sink_cmps->width;
>> +     src_fmt->height = sink_cmps->height;
>> +
>> +     format->format = *src_fmt;
>> +}
>> +
>> +static int c3_isp_rsz_set_fmt(struct v4l2_subdev *sd,
>> +                           struct v4l2_subdev_state *state,
>> +                           struct v4l2_subdev_format *format)
>> +{
>> +     if (format->pad == C3_ISP_RESIZER_PAD_SINK)
>> +             c3_isp_rsz_set_sink_fmt(state, format);
>> +     else
>> +             c3_isp_rsz_set_source_fmt(state, format);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_get_selection(struct v4l2_subdev *sd,
>> +                                 struct v4l2_subdev_state *state,
>> +                                 struct v4l2_subdev_selection *sel)
>> +{
>> +     struct v4l2_mbus_framefmt *fmt;
>> +     struct v4l2_rect *crop;
>> +     struct v4l2_rect *cmps;
>> +
>> +     if (sel->pad == C3_ISP_RESIZER_PAD_SOURCE)
>> +             return -EINVAL;
>> +
>> +     switch (sel->target) {
>> +     case V4L2_SEL_TGT_CROP_BOUNDS:
>> +             fmt = v4l2_subdev_state_get_format(state, sel->pad);
>> +             sel->r.width = fmt->width;
>> +             sel->r.height = fmt->height;
>> +             sel->r.left = 0;
>> +             sel->r.top = 0;
>> +             break;
>> +     case V4L2_SEL_TGT_COMPOSE_BOUNDS:
>> +             crop = v4l2_subdev_state_get_crop(state, sel->pad);
>> +             sel->r.width = crop->width;
>> +             sel->r.height = crop->height;
>> +             sel->r.left = 0;
>> +             sel->r.top = 0;
>> +             break;
>> +     case V4L2_SEL_TGT_CROP:
>> +             crop = v4l2_subdev_state_get_crop(state, sel->pad);
>> +             sel->r = *crop;
>> +             break;
>> +     case V4L2_SEL_TGT_COMPOSE:
>> +             cmps = v4l2_subdev_state_get_compose(state, sel->pad);
>> +             sel->r = *cmps;
>> +             break;
>> +     default:
>> +             return -EINVAL;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_set_selection(struct v4l2_subdev *sd,
>> +                                 struct v4l2_subdev_state *state,
>> +                                 struct v4l2_subdev_selection *sel)
>> +{
>> +     struct v4l2_mbus_framefmt *fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     struct v4l2_rect *crop;
>> +     struct v4l2_rect *cmps;
>> +
>> +     if (sel->pad == C3_ISP_RESIZER_PAD_SOURCE)
>> +             return -EINVAL;
>> +
>> +     switch (sel->target) {
>> +     case V4L2_SEL_TGT_CROP:
>> +             fmt = v4l2_subdev_state_get_format(state, sel->pad);
>> +             crop = v4l2_subdev_state_get_crop(state, sel->pad);
>> +             cmps = v4l2_subdev_state_get_compose(state, sel->pad);
>> +             src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SOURCE);
>> +
>> +             sel->r.left = clamp_t(s32, sel->r.left, 0, fmt->width - 1);
>> +             sel->r.top = clamp_t(s32, sel->r.top, 0, fmt->height - 1);
>> +             sel->r.width = clamp(sel->r.width, C3_ISP_MIN_WIDTH,
>> +                                  fmt->width - sel->r.left);
>> +             sel->r.height = clamp(sel->r.height, C3_ISP_MIN_HEIGHT,
>> +                                   fmt->height - sel->r.top);
>> +
>> +             crop->width = ALIGN(sel->r.width, 2);
>> +             crop->height = ALIGN(sel->r.height, 2);
>> +             crop->left = sel->r.left;
>> +             crop->top = sel->r.top;
>> +
>> +             *cmps = *crop;
>> +
>> +             src_fmt->code = fmt->code;
>> +             src_fmt->width = cmps->width;
>> +             src_fmt->height = cmps->height;
>> +
>> +             sel->r = *crop;
>> +             break;
>> +     case V4L2_SEL_TGT_COMPOSE:
>> +             crop = v4l2_subdev_state_get_crop(state, sel->pad);
>> +             cmps = v4l2_subdev_state_get_compose(state, sel->pad);
>> +
>> +             sel->r.left = 0;
>> +             sel->r.top = 0;
>> +             sel->r.width = clamp(sel->r.width, C3_ISP_MIN_WIDTH, crop->width);
>> +             sel->r.height = clamp(sel->r.height, C3_ISP_MIN_HEIGHT, crop->height);
>> +
>> +             cmps->width = ALIGN(sel->r.width, 2);
>> +             cmps->height = ALIGN(sel->r.height, 2);
>> +             cmps->left = sel->r.left;
>> +             cmps->top = sel->r.top;
>> +
>> +             sel->r = *cmps;
>> +
>> +             fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SOURCE);
>> +             fmt->width = cmps->width;
>> +             fmt->height = cmps->height;
>> +             break;
>> +     default:
>> +             return -EINVAL;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_rsz_init_state(struct v4l2_subdev *sd,
>> +                              struct v4l2_subdev_state *state)
>> +{
>> +     struct v4l2_mbus_framefmt *sink_fmt;
>> +     struct v4l2_mbus_framefmt *src_fmt;
>> +     struct v4l2_rect *crop;
>> +     struct v4l2_rect *cmps;
>> +
>> +     sink_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SINK);
>> +     sink_fmt->width = C3_ISP_DEFAULT_WIDTH;
>> +     sink_fmt->height = C3_ISP_DEFAULT_HEIGHT;
>> +     sink_fmt->field = V4L2_FIELD_NONE;
>> +     sink_fmt->code = C3_ISP_RSZ_DEF_PAD_FMT;
>> +     sink_fmt->colorspace = V4L2_COLORSPACE_SRGB;
>> +     sink_fmt->xfer_func = V4L2_XFER_FUNC_SRGB;
>> +     sink_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>> +     sink_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
>> +
>> +     crop = v4l2_subdev_state_get_crop(state, C3_ISP_RESIZER_PAD_SINK);
>> +     crop->width = C3_ISP_DEFAULT_WIDTH;
>> +     crop->height = C3_ISP_DEFAULT_HEIGHT;
>> +     crop->left = 0;
>> +     crop->top = 0;
>> +
>> +     cmps = v4l2_subdev_state_get_compose(state, C3_ISP_RESIZER_PAD_SINK);
>> +     cmps->width = C3_ISP_DEFAULT_WIDTH;
>> +     cmps->height = C3_ISP_DEFAULT_HEIGHT;
>> +     cmps->left = 0;
>> +     cmps->top = 0;
>> +
>> +     src_fmt = v4l2_subdev_state_get_format(state, C3_ISP_RESIZER_PAD_SOURCE);
>> +     *src_fmt = *sink_fmt;
>> +
>> +     return c3_isp_rsz_init_routing(sd, state);
>> +}
>> +
>> +static const struct v4l2_subdev_pad_ops c3_isp_rsz_pad_ops = {
>> +     .enum_mbus_code = c3_isp_rsz_enum_mbus_code,
>> +     .get_fmt = v4l2_subdev_get_fmt,
>> +     .set_fmt = c3_isp_rsz_set_fmt,
>> +     .get_selection = c3_isp_rsz_get_selection,
>> +     .set_selection = c3_isp_rsz_set_selection,
>> +     .enable_streams = c3_isp_rsz_enable_streams,
>> +     .disable_streams = c3_isp_rsz_disable_streams,
>> +};
>> +
>> +static const struct v4l2_subdev_ops c3_isp_rsz_subdev_ops = {
>> +     .pad = &c3_isp_rsz_pad_ops,
>> +};
>> +
>> +static const struct v4l2_subdev_internal_ops c3_isp_rsz_internal_ops = {
>> +     .init_state = c3_isp_rsz_init_state,
>> +};
>> +
>> +/* Media entity operations */
>> +static const struct media_entity_operations c3_isp_rsz_entity_ops = {
>> +     .link_validate = v4l2_subdev_link_validate,
>> +};
>> +
>> +static int c3_isp_rsz_register(struct c3_isp_resizer *rsz)
>> +{
>> +     struct v4l2_subdev *sd = &rsz->sd;
>> +     int ret;
>> +
>> +     v4l2_subdev_init(sd, &c3_isp_rsz_subdev_ops);
>> +     sd->owner = THIS_MODULE;
>> +     sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>> +     sd->internal_ops = &c3_isp_rsz_internal_ops;
>> +     snprintf(sd->name, sizeof(sd->name), "c3-isp-resizer%u", rsz->id);
>> +
>> +     sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
>> +     sd->entity.ops = &c3_isp_rsz_entity_ops;
>> +
>> +     sd->dev = rsz->isp->dev;
>> +     v4l2_set_subdevdata(sd, rsz);
>> +
>> +     rsz->pads[C3_ISP_RESIZER_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
>> +     rsz->pads[C3_ISP_RESIZER_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
>> +     ret = media_entity_pads_init(&sd->entity, C3_ISP_RESIZER_PAD_MAX, rsz->pads);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = v4l2_subdev_init_finalize(sd);
>> +     if (ret)
>> +             goto err_entity_cleanup;
>> +
>> +     ret = v4l2_device_register_subdev(&rsz->isp->v4l2_dev, sd);
>> +     if (ret)
>> +             goto err_subdev_cleanup;
>> +
>> +     return 0;
>> +
>> +err_subdev_cleanup:
>> +     v4l2_subdev_cleanup(sd);
>> +err_entity_cleanup:
>> +     media_entity_cleanup(&sd->entity);
>> +     return ret;
>> +}
>> +
>> +static void c3_isp_rsz_unregister(struct c3_isp_resizer *rsz)
>> +{
>> +     struct v4l2_subdev *sd = &rsz->sd;
>> +
>> +     v4l2_device_unregister_subdev(sd);
>> +     v4l2_subdev_cleanup(sd);
>> +     media_entity_cleanup(&sd->entity);
>> +}
>> +
>> +int c3_isp_resizers_register(struct c3_isp_device *isp)
>> +{
>> +     u32 i;
>> +     int ret;
>> +
>> +     for (i = C3_ISP_RSZ_0; i < C3_ISP_NUM_RSZ; i++) {
>> +             struct c3_isp_resizer *rsz = &isp->resizers[i];
>> +
>> +             rsz->id = i;
>> +             rsz->isp = isp;
>> +             rsz->src_sd = &isp->core.sd;
>> +             rsz->src_sd_pad = C3_ISP_CORE_PAD_SOURCE_VIDEO;
>> +
>> +             ret = c3_isp_rsz_register(rsz);
>> +             if (ret) {
>> +                     rsz->isp = NULL;
>> +                     c3_isp_resizers_unregister(isp);
>> +                     return ret;
>> +             }
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +void c3_isp_resizers_unregister(struct c3_isp_device *isp)
>> +{
>> +     u32 i;
>> +
>> +     for (i = C3_ISP_RSZ_0; i < C3_ISP_NUM_RSZ; i++) {
>> +             struct c3_isp_resizer *rsz = &isp->resizers[i];
>> +
>> +             if (rsz->isp)
>> +                     c3_isp_rsz_unregister(rsz);
>> +     };
>> +}
>> diff --git a/drivers/media/platform/amlogic/c3/isp/c3-isp-stats.c b/drivers/media/platform/amlogic/c3/isp/c3-isp-stats.c
>> new file mode 100644
>> index 000000000000..1c376c800176
>> --- /dev/null
>> +++ b/drivers/media/platform/amlogic/c3/isp/c3-isp-stats.c
>> @@ -0,0 +1,319 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +/*
>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>> + */
>> +
>> +#include <linux/cleanup.h>
>> +#include <linux/media/amlogic/c3-isp-config.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include <media/v4l2-ioctl.h>
>> +#include <media/v4l2-mc.h>
>> +#include <media/videobuf2-dma-contig.h>
>> +
>> +#include "c3-isp-common.h"
>> +#include "c3-isp-regs.h"
>> +
>> +/* Hardware configuration */
>> +
>> +static void c3_isp_stats_cfg_dmawr_addr(struct c3_isp_stats *stats)
>> +{
>> +     u32 awb_dma_size = sizeof(struct c3_isp_awb_stats);
>> +     u32 ae_dma_size = sizeof(struct c3_isp_ae_stats);
>> +     u32 awb_dma_addr = stats->buff->dma_addr;
>> +     u32 af_dma_addr;
>> +     u32 ae_dma_addr;
>> +
>> +     ae_dma_addr = awb_dma_addr + awb_dma_size;
>> +     af_dma_addr = ae_dma_addr + ae_dma_size;
>> +
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_BADDR0,
>> +                        VIU_DMAWR_BADDR0_AF_STATS_BASE_ADDR_MASK,
>> +                        VIU_DMAWR_BADDR0_AF_STATS_BASE_ADDR(af_dma_addr));
>> +
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_BADDR1,
>> +                        VIU_DMAWR_BADDR1_AWB_STATS_BASE_ADDR_MASK,
>> +                        VIU_DMAWR_BADDR1_AWB_STATS_BASE_ADDR(awb_dma_addr));
>> +
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_BADDR2,
>> +                        VIU_DMAWR_BADDR2_AE_STATS_BASE_ADDR_MASK,
>> +                        VIU_DMAWR_BADDR2_AE_STATS_BASE_ADDR(ae_dma_addr));
>> +}
>> +
>> +static void c3_isp_stats_cfg_buff(struct c3_isp_stats *stats)
>> +{
>> +     stats->buff = list_first_entry_or_null(&stats->pending,
>> +                                            struct c3_isp_buffer, list);
>> +     if (stats->buff) {
>> +             c3_isp_stats_cfg_dmawr_addr(stats);
>> +             list_del(&stats->buff->list);
>> +     }
>> +}
>> +
>> +void c3_isp_stats_pre_cfg(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_stats *stats = &isp->stats;
>> +     u32 dma_size;
>> +
>> +     c3_isp_update_bits(stats->isp, ISP_AF_EN_CTRL, ISP_AF_EN_CTRL_STAT_SEL_MASK,
>> +                        ISP_AF_EN_CTRL_STAT_SEL_NEW);
>> +     c3_isp_update_bits(stats->isp, ISP_AE_CTRL, ISP_AE_CTRL_LUMA_MODE_MASK,
>> +                        ISP_AE_CTRL_LUMA_MODE_FILTER);
>> +
>> +     /* The unit of dma_size is 16 bytes */
>> +     dma_size = sizeof(struct c3_isp_af_stats) / C3_ISP_DMA_SIZE_ALIGN_BYTES;
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_SIZE0, VIU_DMAWR_SIZE0_AF_STATS_SIZE_MASK,
>> +                        VIU_DMAWR_SIZE0_AF_STATS_SIZE(dma_size));
>> +
>> +     dma_size = sizeof(struct c3_isp_awb_stats) / C3_ISP_DMA_SIZE_ALIGN_BYTES;
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_SIZE0, VIU_DMAWR_SIZE0_AWB_STATS_SIZE_MASK,
>> +                        VIU_DMAWR_SIZE0_AWB_STATS_SIZE(dma_size));
>> +
>> +     dma_size = sizeof(struct c3_isp_ae_stats) / C3_ISP_DMA_SIZE_ALIGN_BYTES;
>> +     c3_isp_update_bits(stats->isp, VIU_DMAWR_SIZE1, VIU_DMAWR_SIZE1_AE_STATS_SIZE_MASK,
>> +                        VIU_DMAWR_SIZE1_AE_STATS_SIZE(dma_size));
>> +
>> +     guard(spinlock_irqsave)(&stats->buff_lock);
>> +
>> +     c3_isp_stats_cfg_buff(stats);
>> +}
>> +
>> +static int c3_isp_stats_querycap(struct file *file, void *fh,
>> +                              struct v4l2_capability *cap)
>> +{
>> +     strscpy(cap->driver, C3_ISP_DRIVER_NAME, sizeof(cap->driver));
>> +     strscpy(cap->card, "AML C3 ISP", sizeof(cap->card));
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_stats_enum_fmt(struct file *file, void *fh,
>> +                              struct v4l2_fmtdesc *f)
>> +{
>> +     struct c3_isp_stats *stats = video_drvdata(file);
>> +
>> +     if (f->index > 0 || f->type != stats->vb2_q.type)
>> +             return -EINVAL;
>> +
>> +     f->pixelformat = V4L2_META_FMT_C3ISP_STATS;
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_stats_g_fmt(struct file *file, void *fh,
>> +                           struct v4l2_format *f)
>> +{
>> +     struct c3_isp_stats *stats = video_drvdata(file);
>> +
>> +     f->fmt.meta = stats->vfmt.fmt.meta;
>> +
>> +     return 0;
>> +}
>> +
>> +static const struct v4l2_ioctl_ops isp_stats_v4l2_ioctl_ops = {
>> +     .vidioc_querycap                = c3_isp_stats_querycap,
>> +     .vidioc_enum_fmt_meta_cap       = c3_isp_stats_enum_fmt,
>> +     .vidioc_g_fmt_meta_cap          = c3_isp_stats_g_fmt,
>> +     .vidioc_s_fmt_meta_cap          = c3_isp_stats_g_fmt,
>> +     .vidioc_try_fmt_meta_cap        = c3_isp_stats_g_fmt,
>> +     .vidioc_reqbufs                 = vb2_ioctl_reqbufs,
>> +     .vidioc_querybuf                = vb2_ioctl_querybuf,
>> +     .vidioc_qbuf                    = vb2_ioctl_qbuf,
>> +     .vidioc_expbuf                  = vb2_ioctl_expbuf,
>> +     .vidioc_dqbuf                   = vb2_ioctl_dqbuf,
>> +     .vidioc_prepare_buf             = vb2_ioctl_prepare_buf,
>> +     .vidioc_create_bufs             = vb2_ioctl_create_bufs,
>> +     .vidioc_streamon                = vb2_ioctl_streamon,
>> +     .vidioc_streamoff               = vb2_ioctl_streamoff,
>> +};
>> +
>> +static const struct v4l2_file_operations isp_stats_v4l2_fops = {
>> +     .open = v4l2_fh_open,
>> +     .release = vb2_fop_release,
>> +     .poll = vb2_fop_poll,
>> +     .unlocked_ioctl = video_ioctl2,
>> +     .mmap = vb2_fop_mmap,
>> +};
>> +
>> +static int c3_isp_stats_vb2_queue_setup(struct vb2_queue *q,
>> +                                     unsigned int *num_buffers,
>> +                                     unsigned int *num_planes,
>> +                                     unsigned int sizes[],
>> +                                     struct device *alloc_devs[])
>> +{
>> +     if (*num_planes) {
>> +             if (*num_planes != 1)
>> +                     return -EINVAL;
>> +
>> +             if (sizes[0] < sizeof(struct c3_isp_stats_buffer))
>> +                     return -EINVAL;
>> +     } else {
>> +             *num_planes = 1;
>> +             sizes[0] = sizeof(struct c3_isp_stats_buffer);
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_stats_vb2_buf_queue(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_buffer *buf =
>> +                     container_of(v4l2_buf, struct c3_isp_buffer, vb);
>> +     struct c3_isp_stats *stats = vb2_get_drv_priv(vb->vb2_queue);
>> +
>> +     guard(spinlock_irqsave)(&stats->buff_lock);
>> +
>> +     list_add_tail(&buf->list, &stats->pending);
>> +}
>> +
>> +static int c3_isp_stats_vb2_buf_prepare(struct vb2_buffer *vb)
>> +{
>> +     struct c3_isp_stats *stats = vb2_get_drv_priv(vb->vb2_queue);
>> +     unsigned int size = stats->vfmt.fmt.meta.buffersize;
>> +
>> +     if (vb2_plane_size(vb, 0) < size) {
>> +             dev_err(stats->isp->dev,
>> +                     "User buffer too small (%ld < %u)\n",
>> +                     vb2_plane_size(vb, 0), size);
>> +             return -EINVAL;
>> +     }
>> +
>> +     vb2_set_plane_payload(vb, 0, size);
>> +
>> +     return 0;
>> +}
>> +
>> +static int c3_isp_stats_vb2_buf_init(struct vb2_buffer *vb)
>> +{
>> +     struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
>> +     struct c3_isp_buffer *buf =
>> +                     container_of(v4l2_buf, struct c3_isp_buffer, vb);
>> +
>> +     buf->dma_addr = vb2_dma_contig_plane_dma_addr(vb, 0);
>> +
>> +     return 0;
>> +}
>> +
>> +static void c3_isp_stats_vb2_stop_streaming(struct vb2_queue *q)
>> +{
>> +     struct c3_isp_stats *stats = vb2_get_drv_priv(q);
>> +
>> +     guard(spinlock_irqsave)(&stats->buff_lock);
>> +
>> +     if (stats->buff) {
>> +             vb2_buffer_done(&stats->buff->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>> +             stats->buff = NULL;
>> +     }
>> +
>> +     while (!list_empty(&stats->pending)) {
>> +             struct c3_isp_buffer *buff;
>> +
>> +             buff = list_first_entry(&stats->pending,
>> +                                     struct c3_isp_buffer, list);
>> +             list_del(&buff->list);
>> +             vb2_buffer_done(&buff->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>> +     }
>> +}
>> +
>> +static const struct vb2_ops isp_stats_vb2_ops = {
>> +     .queue_setup = c3_isp_stats_vb2_queue_setup,
>> +     .buf_queue = c3_isp_stats_vb2_buf_queue,
>> +     .buf_prepare = c3_isp_stats_vb2_buf_prepare,
>> +     .buf_init = c3_isp_stats_vb2_buf_init,
>> +     .wait_prepare = vb2_ops_wait_prepare,
>> +     .wait_finish = vb2_ops_wait_finish,
>> +     .stop_streaming = c3_isp_stats_vb2_stop_streaming,
>> +};
>> +
>> +int c3_isp_stats_register(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_stats *stats = &isp->stats;
>> +     struct video_device *vdev = &stats->vdev;
>> +     struct vb2_queue *vb2_q = &stats->vb2_q;
>> +     int ret;
>> +
>> +     memset(stats, 0, sizeof(*stats));
>> +     stats->vfmt.fmt.meta.dataformat = V4L2_META_FMT_C3ISP_STATS;
>> +     stats->vfmt.fmt.meta.buffersize = sizeof(struct c3_isp_stats_buffer);
>> +     stats->isp = isp;
>> +     INIT_LIST_HEAD(&stats->pending);
>> +     spin_lock_init(&stats->buff_lock);
>> +
>> +     mutex_init(&stats->lock);
>> +
>> +     snprintf(vdev->name, sizeof(vdev->name), "c3-isp-stats");
>> +     vdev->fops = &isp_stats_v4l2_fops;
>> +     vdev->ioctl_ops = &isp_stats_v4l2_ioctl_ops;
>> +     vdev->v4l2_dev = &isp->v4l2_dev;
>> +     vdev->lock = &stats->lock;
>> +     vdev->minor = -1;
>> +     vdev->queue = vb2_q;
>> +     vdev->release = video_device_release_empty;
>> +     vdev->device_caps = V4L2_CAP_META_CAPTURE | V4L2_CAP_STREAMING;
>> +     vdev->vfl_dir = VFL_DIR_RX;
>> +     video_set_drvdata(vdev, stats);
>> +
>> +     vb2_q->drv_priv = stats;
>> +     vb2_q->mem_ops = &vb2_dma_contig_memops;
>> +     vb2_q->ops = &isp_stats_vb2_ops;
>> +     vb2_q->type = V4L2_BUF_TYPE_META_CAPTURE;
>> +     vb2_q->io_modes = VB2_DMABUF | VB2_MMAP;
>> +     vb2_q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>> +     vb2_q->buf_struct_size = sizeof(struct c3_isp_buffer);
>> +     vb2_q->dev = isp->dev;
>> +     vb2_q->lock = &stats->lock;
>> +     vb2_q->min_queued_buffers = 2;
>> +
>> +     ret = vb2_queue_init(vb2_q);
>> +     if (ret)
>> +             goto err_destroy;
>> +
>> +     stats->pad.flags = MEDIA_PAD_FL_SINK;
>> +     ret = media_entity_pads_init(&vdev->entity, 1, &stats->pad);
>> +     if (ret)
>> +             goto err_queue_release;
>> +
>> +     ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>> +     if (ret) {
>> +             dev_err(isp->dev,
>> +                     "Failed to register %s: %d\n", vdev->name, ret);
>> +             goto err_entity_cleanup;
>> +     }
>> +
>> +     return 0;
>> +
>> +err_entity_cleanup:
>> +     media_entity_cleanup(&vdev->entity);
>> +err_queue_release:
>> +     vb2_queue_release(vb2_q);
>> +err_destroy:
>> +     mutex_destroy(&stats->lock);
>> +     return ret;
>> +}
>> +
>> +void c3_isp_stats_unregister(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_stats *stats = &isp->stats;
>> +
>> +     vb2_queue_release(&stats->vb2_q);
>> +     media_entity_cleanup(&stats->vdev.entity);
>> +     video_unregister_device(&stats->vdev);
>> +     mutex_destroy(&stats->lock);
>> +}
>> +
>> +void c3_isp_stats_isr(struct c3_isp_device *isp)
>> +{
>> +     struct c3_isp_stats *stats = &isp->stats;
>> +
>> +     guard(spinlock_irqsave)(&stats->buff_lock);
>> +
>> +     if (stats->buff) {
>> +             stats->buff->vb.sequence = stats->isp->frm_sequence;
>> +             stats->buff->vb.vb2_buf.timestamp = ktime_get();
>> +             stats->buff->vb.field = V4L2_FIELD_NONE;
>> +             vb2_buffer_done(&stats->buff->vb.vb2_buf, VB2_BUF_STATE_DONE);
>> +     }
>> +
>> +     c3_isp_stats_cfg_buff(stats);
>> +}
>>
>> --
>> 2.47.0
>>
>>
>>

