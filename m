Return-Path: <devicetree+bounces-106118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CB59893D1
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 10:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E1B81C221E0
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 08:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 831AC13C9CB;
	Sun, 29 Sep 2024 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b="wFPXj7mJ"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01on2129.outbound.protection.outlook.com [40.107.117.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E815F13AA36;
	Sun, 29 Sep 2024 08:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.117.129
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727599458; cv=fail; b=X7qtERIQJyV+8tRVGOKsYem559uUpkgbhd/5oPkDJpsLa09HxIN8nkadhO8s/1kX8iKb3bFUBZjZy0BxKH+wan1CMA+6LdKQSPMyo5ALS8hKTjOpo21rNRL3UPnIvbmtKpjTdw81uPCIn/L+NkJUMQ9R3wRkPT1HJC7AdHbyWdw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727599458; c=relaxed/simple;
	bh=WdXJsnkPlH0ApDERVqlYCuLj+soyYNHFuMU9N7V4Hto=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=HJgwJ/U7V0oUde9tiC03KsGi4+Do/90ueW/+Kru23HRi9sMWp9D1EXQu7wkzt6VdJPt3uBZfEiVr4WuEF/IzNodsDT5+W+NuSX6eDCgKr7lZ7f/DUTzDUTG5BhWZV4FIRw2j6Auuyeh/P0cUbuM31jRWBOa+mXJsDPjox7dD4P0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com; spf=pass smtp.mailfrom=amlogic.com; dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b=wFPXj7mJ; arc=fail smtp.client-ip=40.107.117.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amlogic.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BKraFlmC3k5YJ9YZSOMutB4ffAzaJlebHBplyqSwes2Miwi+8tB4fknM2OtfWZKNiIvDqnZAaBw+44kdobfrMhBhIedB62XwbNYo6R3a4kmTmlIw/Lzk7d6endvsH/+QADNcexzetISPeD4i3YkLo9BNGHGY6/LdQbrYhdqTNZnpwzMjyd3Hl53Wg0KdbhnLh0Lt0ZqUZdUL7LJYKCMo6FM+Oh2o7ad6GSFcp1sPhLqpZ3FI0tOrCLjINbDR7vpMF57vA9VIQeGbjJxnDgzXWLhCPDYNZHQI1q96kzRavwlCrNZ3rak1b6b07L/63GDmX3hmupQsCCmLS6s0FeH3rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmw4HvO1Ki6O8epiIADojSC83xzCQlprzjbKh3Vn7sg=;
 b=Ulw9LiZooYitoCStf1lQ8jTu1apRUbZC/1CcxM0664TPnbEmiW6PUqIAw3aTiaZ9+k17Wc/YXWNpLE6Yc5Egi0M5qYIy2ywZXAiP52LYu3U5Y7Z31I7BFeR1xnr7dQHS6fqJNhf8aoBfUQzVQaGwledfY1DS0sE/r62QTxAeXy2QhUvqlF+UZ3WgXKj4DDR7jBAGEl3pyZlQZPwdyQgJgrWyEbeD0dbGmdeDmRWuWQzngQIVt5iSbGKn5hxMQGxh5kRzV1hejZSWC2ZiwlG6aNJqMUknessIA5XG9MjvrQlRJfktFV7opIvtKhb4R/Ijy+0LaUrgfRwisYdq49iyUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amlogic.com; dmarc=pass action=none header.from=amlogic.com;
 dkim=pass header.d=amlogic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amlogic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hmw4HvO1Ki6O8epiIADojSC83xzCQlprzjbKh3Vn7sg=;
 b=wFPXj7mJt2sbnLrIg8r1P7oE4iy6nC/C67K7NpfSqnZnPyngQNeeZv5GjPl3WMKnRHYljbg7ihLr+iQ5tu05SSoD33EyppwqdRxzSm5r+omQaXBd/ygLh63/IdoJS8DBgilaRXDs3+rqkX/PpVLGB77i1o12B5wf6rw6hRZu3nmrpLLXfXBmk+chmW8b0PBp592Lnl3SMrzx3T3+Mw80cQtn5wF1nCIGc0vwSvYpX2L+7VCAtZMML1xFKeRB+cPX++kNOjqsiB2k7Wh4w1BTY79M5N9Cx+irFL2U/A0ncQ7/R256TYo+mZ+oWWglVm0ePEUuY+yFJ7P04GpPzpC1Kg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amlogic.com;
Received: from TYZPR03MB6896.apcprd03.prod.outlook.com (2603:1096:400:289::14)
 by TYSPR03MB7644.apcprd03.prod.outlook.com (2603:1096:400:416::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Sun, 29 Sep
 2024 08:44:09 +0000
Received: from TYZPR03MB6896.apcprd03.prod.outlook.com
 ([fe80::ac4e:718:3b03:3123]) by TYZPR03MB6896.apcprd03.prod.outlook.com
 ([fe80::ac4e:718:3b03:3123%3]) with mapi id 15.20.8005.024; Sun, 29 Sep 2024
 08:44:09 +0000
Message-ID: <4ce0c864-fd82-42f3-8122-7ff921b5cc8b@amlogic.com>
Date: Sun, 29 Sep 2024 16:44:03 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] clk: meson: add A5 clock peripherals controller
 driver
Content-Language: en-US
To: Jerome Brunet <jbrunet@baylibre.com>,
 Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chuan Liu <chuan.liu@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240914-a5-clk-v1-0-5ee2c4f1b08c@amlogic.com>
 <20240914-a5-clk-v1-5-5ee2c4f1b08c@amlogic.com>
 <1jjzf1xf55.fsf@starbuckisacylon.baylibre.com>
From: Xianwei Zhao <xianwei.zhao@amlogic.com>
In-Reply-To: <1jjzf1xf55.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR01CA0025.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::10) To TYZPR03MB6896.apcprd03.prod.outlook.com
 (2603:1096:400:289::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB6896:EE_|TYSPR03MB7644:EE_
X-MS-Office365-Filtering-Correlation-Id: bc5bbe12-ebfd-4e57-09c0-08dce062e256
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SmNLNnJoQTJRcHdGVTQ1NDljSm1ha051ZmxhZ0pEbnhNK0M4RTlLUG1BaGV2?=
 =?utf-8?B?SVVjTXdQMDFLTERDYUhpbnNscVViUC9hN2VJVHA1WmRNekllVHVGZjlUWHhI?=
 =?utf-8?B?RGc0UHhsT0FwZVNkOTdQcUpjQmhKZGVHdGt6Wm1KODFTUERJdW16ZHNSRGRs?=
 =?utf-8?B?bDV1V2k3cDcxaFIxREV2aUV6Z2tpYUFtRmtsS1IwK1EzL0psbHE1OUJubTg2?=
 =?utf-8?B?QkxHR3hPUDBPeFVWMHljR1JFQ2tiL29JR1JVbTAwcjJTdE84bGhnYXlXTE1x?=
 =?utf-8?B?ZTg4TzNUa0RQZmNoRXo3TTJRWW1DejlUZVJOS1lvekM0eC9DeDlDNS9aMER0?=
 =?utf-8?B?bWJNKzVYTTZ4WlF0RFZndXE3Y1p1bldadm1DQU12bWFkcUFLQSsvZ1JUVWxt?=
 =?utf-8?B?czZLMGc0bTZhaDIvd1d3Vm5kVENnRDcxUVN6SS9CNUVRQ1dGZDhMRlFpSUgz?=
 =?utf-8?B?cUo1S21hQVM4MVdsTldSdDJxRHh4NmlrbnZKdVRUM0VsbmJXeHBHeDJYQXpP?=
 =?utf-8?B?Qk4yWjJKVCtWQXMydDNaMTlKbk1leUJRRFNGNHRNMWI3alB5ZGZUWVozc3or?=
 =?utf-8?B?T1VaU2VJVzZCbGljOFA0ZHRGSVk3UU1HdGVoYXl4TzY5OXYwMGprZmk4ci85?=
 =?utf-8?B?VDVtcjQzQWh5eUlVUEpQeU1NdWQ2YVU0cFJsTGx3ZkZTOFpZWTUvTXYzM3Vn?=
 =?utf-8?B?QlZlOEtNTEpIT1pldVFIYlFTc2t1a2NLS3pFTWQrSW5SRVo4eU55RjVPVzZB?=
 =?utf-8?B?SjdLRFRiQkRkVVNRZkhTWkJiU0RIR1E0RTNkRFJGV0g2KzBUMndoREFuOHk2?=
 =?utf-8?B?dklhdWlwRnVCNjBYSVVFd0srMTNiYzJSMncvL2dnTCtRM1NNdGRNZGxmNTdk?=
 =?utf-8?B?UnBhbzVvdG5IajE4SGtUMWkzckJrcWlNRWp5cWh4amtlQzdFTzU5encvcVZk?=
 =?utf-8?B?cS9qR0w3YzViNlRxenRXQ1J6RzRnRXd0V2kzZEt1WXdMWmJpcGNnVmFnaGM0?=
 =?utf-8?B?RDlraGs3QWl1R2hGYnpvRzU4SDhGcTFkMEtWWVM3WkdwMDBURjJkdWQ1WmN4?=
 =?utf-8?B?Y1BWeTNKZElzb3JOajFQalk4WHNtS2NXQXFXSStqenJjSnZxQ2FOQjg5UkhU?=
 =?utf-8?B?ZlFNbnZlR3NxSmh3KzRXNmJ5MExNRXhMSDBKeVpjUmNsTWQrbENOVFdOelY4?=
 =?utf-8?B?T0hscFV2cEhjUzl5bytzMS9sWnpOTkVzZlNkSUZxSFF6N1M3M28vZ05QN2w0?=
 =?utf-8?B?dEVFeTlZT3lKS25wNnlINkcxSEdiQWdEK083cnpWYjV4U2FBLzNmeW8yck5W?=
 =?utf-8?B?UkUxOXU1UUhvaTlNekdrd0d3dTluY1pNVjltMWNnU2taUWlyNzhLMTkvWlpv?=
 =?utf-8?B?NENhck1Fd0Y2SXE4MmZJMUZXOVFlcEpNS1VZbEJ0ajJIUC9hL3lFZlZOVEIy?=
 =?utf-8?B?bVBDdmRWZXB5Sys5bUJFSVkwSm1ua0luUXViT2xJOS9idUVKektjSGIyQ1lu?=
 =?utf-8?B?bmcvYXJtRGNUMXI0akR4eDE5Y2EyTVJodmtTS09kQVVPQ3NXSW1NNHJKNzd1?=
 =?utf-8?B?ajJnRGVtUCt1K0xhdW1maEczckxSRDQyc2NxcW8ycVNyNEwrUFNwblhNejVP?=
 =?utf-8?B?RGhpb2J6Wmx3N2pZSldwUEE4K1phYnRkMERhREtHWGkxZldpUkVOOGsvbDdn?=
 =?utf-8?B?blNHS1FwRk1GK0JRTHIwaG5TRGtKWGNkNTFGckdQSkFEOUo3ejlYbW5BPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6896.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?R0M0VEE4VFFyYkx0ZHJGdzFuK1ZQbEJtQVp6MEI0RnBOYWxsam9uejAyb1hW?=
 =?utf-8?B?N1pzK3k4OStMYU93MGpqL3RHdnJkbytCMktPaXgxZ1J4T1FobUpQOE1DR3p6?=
 =?utf-8?B?NFNDV1pqcFMxdDVVMW5aOEp0bHJieE1KbFd5MUJ1aG1HazNROEpmUEg1Znh6?=
 =?utf-8?B?dEtLUjI4OERRUnpsckdBVjZ0RGZITy84U0dINjJXeFVha1pCVDVFTEl4d0I5?=
 =?utf-8?B?eVFTdVZ6dlhkSFlJbjF4UkdkU1k4UXdpdkxjWXlxNnNUWkxEVCtJaFBSMEw5?=
 =?utf-8?B?aWd6bkxrWUtjam9YMnVRcHVNOXl6L1RZK1lDU29Xdk95WlN1ektkTGFpNmd0?=
 =?utf-8?B?Q3gyT3pFdW03TEROVkFYVHhFN20rWVo1Q1U5cUVQa25NWGxoNStaYWdDQkx0?=
 =?utf-8?B?bndRQmVyWjlvYm1Fejlic1BzSzFDQXBYczY5NkQ4VG42MVlCZTJZbE84aWxF?=
 =?utf-8?B?YWc1Y01xSWxMV3N2c1p0cHlGQk14SFcwMlFDdmRsRUdTclFsSko0YjAyTFVa?=
 =?utf-8?B?dnhYbHJVQ2M4UkNyazZyK1JaZGtrblp1V3Uwcmhld0tiQXRxcEg4TlZPY29B?=
 =?utf-8?B?K3RBNmI3VVhjLzAwS2hWckdtYTBuZnl3bGlpYnNWVmZVTGlRVDlZbW1aeFVI?=
 =?utf-8?B?OVNuRzVkZnJOWFdRZnBJUFM1dUJ1RGsra3hFQ3FrKzh1OVJyNE4rSmlsOXZz?=
 =?utf-8?B?SGNQR3l5SmUzQzBnRk9KVGJwSTlkVlBPZ0xvTWo1NVc1cGc4czdYUFBidEZm?=
 =?utf-8?B?ZU10eTdVcXlYU0lyNFhqanJabzVuQmtDek1PQTVHZlVsbGhNb0NwNGtZaEZ3?=
 =?utf-8?B?NHlRVnNkQmFqcnpoWnYyK1F2cDlqQlIyV0g4NUxScWkxaUJOcnhHcVBZRTZT?=
 =?utf-8?B?anFYQW93Vy9ZM1ZPVzhoM1oyZ1Y2UGRUSlU5dEdTdDI3WTg0Mk11Q0NmRFNC?=
 =?utf-8?B?VThMWFFrWmpDUm1HQ1A1STUzRG1idlNSQ3pCMkl4QnJONENhYmRDRWJ4ZldX?=
 =?utf-8?B?YUZzU1lKVXo3RkdqWlBhNmdXOVhUSzJDYTdFTUN2R0xzUGVhRFlNS09MWXpu?=
 =?utf-8?B?MFltb3E3Z2VOWFVUYU5XRnhxUHlFT1JwdHh3OG04UDRCY1RHUjUwL3ZQTFZR?=
 =?utf-8?B?THdOSEJpWnJqMlFVektUVm1ESUR5YjRBWWVxSlhIWjNibm1jZWdzSllla2ZY?=
 =?utf-8?B?ODk2c2ltZ1JmdjJHUldSYjZLWjlVOGNPNURsdTIrcCsrZXFkeEtkTzhKQlY3?=
 =?utf-8?B?S1llQjdLLzM2TE9PSDZ2WnhpekdSNWxzSE5YdUE4ekV5RDV2WlBkcnltbllD?=
 =?utf-8?B?aVlsMUd5MnhmUkV3TkQ2NWJCQ090bURWK3BQWWRPSzNwbkRpTHVIM2h4QzBp?=
 =?utf-8?B?bERoenU0cUhOSGdCZXRYM0dRQnY2Z1RMeE0wZUU5WVJ4Rm1aME9DYjVOSThW?=
 =?utf-8?B?TWJYbkNMZkVjMXVqWEQxcnlGdnJTVDY0LzZ6OWNOV1p1NDVmcGd5Zk16WjlE?=
 =?utf-8?B?RXArSTFETVZLdWRyUFU4MGZPVXRkT2sxQjJ4aUM0U09hLzFhRXJVMlZjd0gr?=
 =?utf-8?B?QlREYUxvUWVBTDJDRlNhODc1UUxWZUZ6SkVFOHhROFplT2xvaytWdTBxeUNn?=
 =?utf-8?B?ZHdOU3I4TlhzaTl3aG4zSlczT3BOMzZqeTByZnBUN21ZSXkrd2VxRmFjY2xZ?=
 =?utf-8?B?clF6cDNDa05zeXFEcDlVS2dwOVNndjBHNFlpZFJ0ZzRXc21OK3dPVVJpeFox?=
 =?utf-8?B?VlRJWkJrT2MrNHZySUY3elo4YTRZQkhTbHpuT0ptSmhGUU1PNDhtN29ycmk2?=
 =?utf-8?B?MEtpYzRKbStpekVpaTN5Q1Y0c0MvSWg4K3kxVzZSZCtMZmZiVkMzK1ZRUUYw?=
 =?utf-8?B?cWZwMGRGaUUvbVFEUGtMMk5GdzFaVU50VkhLd0lHRkRDbjFyNzJzOEVraUkw?=
 =?utf-8?B?WDBsL29MdTJrbGFuL0dCcjQxNCtUWUZSVTRST3FpRWk3b0puYnA2djE3RG81?=
 =?utf-8?B?bytxclQvMXZOMk1NK3hJcUp5NG03VGNNV2ExY0xjc0JyNmVmTlJnbU1zVzkw?=
 =?utf-8?B?Z2hzWlJMTS9KbmF6aC9MdlFBdUNtV0ZrTkE1YjJNdjlleGNIbnlIRmdOM09o?=
 =?utf-8?B?RjJxL0pRTU5nZWNJcTh0VHFLdktvRTdTQkNwSGNGQ0ZSdStrNzZiL043UGlO?=
 =?utf-8?B?cUE9PQ==?=
X-OriginatorOrg: amlogic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc5bbe12-ebfd-4e57-09c0-08dce062e256
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6896.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2024 08:44:09.3537
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0df2add9-25ca-4b3a-acb4-c99ddf0b1114
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YkCyUE6Sc8YdEmzV8T/aKqImgWsoyjM/c1zHAHD1uYBi3HtvTCwCihmdON7VOzmd/75DMCP6x5FlmqqRAh/jjPFnjOq/tMadfExzd8U5E20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB7644

Hi Jerome,
     Thanks for your reply.

On 2024/9/24 23:09, Jerome Brunet wrote:
> [ EXTERNAL EMAIL ]
> 
> On Sat 14 Sep 2024 at 13:25, Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
> 
>> From: Chuan Liu <chuan.liu@amlogic.com>
>>
>> Add the peripherals clock controller driver in the A5 SoC family.
>>
>> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> ---
>>   drivers/clk/meson/Kconfig          |   14 +
>>   drivers/clk/meson/Makefile         |    1 +
>>   drivers/clk/meson/a5-peripherals.c | 1471 ++++++++++++++++++++++++++++++++++++
>>   3 files changed, 1486 insertions(+)
>>
>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>> index 2a713276e46c..21845edcd8ef 100644
>> --- a/drivers/clk/meson/Kconfig
>> +++ b/drivers/clk/meson/Kconfig
>> @@ -146,6 +146,20 @@ config COMMON_CLK_A5_PLL
>>          Say Y if you want the board to work, because PLLs are the parent
>>          of most peripherals.
>>
>> +config COMMON_CLK_A5_PERIPHERALS
>> +     tristate "Amlogic A5 peripherals clock controller"
>> +     depends on ARM64
>> +     default y
>> +     imply ARM_SCMI_PROTOCOL
> 
> same
> 

Will do.

>> +     imply COMMON_CLK_SCMI
>> +     imply COMMON_CLK_A5_PLL
>> +     select COMMON_CLK_MESON_REGMAP
>> +     select COMMON_CLK_MESON_DUALDIV
>> +     select COMMON_CLK_MESON_CLKC_UTILS
>> +     help
>> +       Support for the Peripherals clock controller on Amlogic AV40x device,
>> +       AKA A5. Say Y if you want the peripherals clock to work.
>> +
>>   config COMMON_CLK_C3_PLL
>>        tristate "Amlogic C3 PLL clock controller"
>>        depends on ARM64
>> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
>> index fc4b8a723145..58236c6e8377 100644
>> --- a/drivers/clk/meson/Makefile
>> +++ b/drivers/clk/meson/Makefile
>> @@ -21,6 +21,7 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>>   obj-$(CONFIG_COMMON_CLK_A1_PLL) += a1-pll.o
>>   obj-$(CONFIG_COMMON_CLK_A1_PERIPHERALS) += a1-peripherals.o
>>   obj-$(CONFIG_COMMON_CLK_A5_PLL) += a5-pll.o
>> +obj-$(CONFIG_COMMON_CLK_A5_PERIPHERALS) += a5-peripherals.o
>>   obj-$(CONFIG_COMMON_CLK_C3_PLL) += c3-pll.o
>>   obj-$(CONFIG_COMMON_CLK_C3_PERIPHERALS) += c3-peripherals.o
>>   obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>> diff --git a/drivers/clk/meson/a5-peripherals.c b/drivers/clk/meson/a5-peripherals.c
>> new file mode 100644
>> index 000000000000..c28da340a5af
>> --- /dev/null
>> +++ b/drivers/clk/meson/a5-peripherals.c
>> @@ -0,0 +1,1471 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Amlogic A5 Peripherals Clock Controller Driver
>> + *
>> + * Copyright (c) 2024 Amlogic, inc.
>> + * Author: Chuan Liu <chuan.liu@amlogic.com>
>> + */
>> +
>> +#include <linux/clk-provider.h>
>> +#include <linux/platform_device.h>
>> +#include "clk-regmap.h"
>> +#include "clk-dualdiv.h"
>> +#include "meson-clkc-utils.h"
>> +#include <dt-bindings/clock/amlogic,a5-peripherals-clkc.h>
>> +
>> +#define CLKCTRL_RTC_BY_OSCIN_CTRL0           0x8
>> +#define CLKCTRL_RTC_BY_OSCIN_CTRL1           0xc
>> +#define CLKCTRL_RTC_CTRL                     0x10
>> +#define CLKCTRL_SYS_CLK_EN0_REG0             0x44
>> +#define CLKCTRL_SYS_CLK_EN0_REG1             0x48
>> +#define CLKCTRL_DSPA_CLK_CTRL0                       0x9c
>> +#define CLKCTRL_CLK12_24_CTRL                        0xa8
>> +#define CLKCTRL_AXI_CLK_EN0                  0xac
>> +#define CLKCTRL_TS_CLK_CTRL                  0x158
>> +#define CLKCTRL_ETH_CLK_CTRL                 0x164
>> +#define CLKCTRL_NAND_CLK_CTRL                        0x168
>> +#define CLKCTRL_SD_EMMC_CLK_CTRL             0x16c
>> +#define CLKCTRL_SPICC_CLK_CTRL                       0x174
>> +#define CLKCTRL_GEN_CLK_CTRL                 0x178
>> +#define CLKCTRL_SAR_CLK_CTRL0                        0x17c
>> +#define CLKCTRL_PWM_CLK_AB_CTRL                      0x180
>> +#define CLKCTRL_PWM_CLK_CD_CTRL                      0x184
>> +#define CLKCTRL_PWM_CLK_EF_CTRL                      0x188
>> +#define CLKCTRL_PWM_CLK_GH_CTRL                      0x18c
>> +#define CLKCTRL_NNA_CLK_CNTL                 0x220
> 
> Again I see a lot of holes in there. Please make sure there is only
> clocks in the whole region you are claiming for the device.
> 
> Otherwise it is fine to register as many controller as necessary
> 

This has been verified to not overlap the register fields of other 
controllers.

>> +
>> +static struct clk_regmap rtc_xtal_clkin = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_RTC_BY_OSCIN_CTRL0,
>> +             .bit_idx = 31,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "rtc_xtal_clkin",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "oscin",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static const struct meson_clk_dualdiv_param rtc_32k_div_table[] = {
>> +     { 733, 732, 8, 11, 1 },
>> +     { /* sentinel */ }
>> +};
>> +
>> +static struct clk_regmap rtc_32k_div = {
>> +     .data = &(struct meson_clk_dualdiv_data) {
>> +             .n1 = {
>> +                     .reg_off = CLKCTRL_RTC_BY_OSCIN_CTRL0,
>> +                     .shift   = 0,
>> +                     .width   = 12,
>> +             },
>> +             .n2 = {
>> +                     .reg_off = CLKCTRL_RTC_BY_OSCIN_CTRL0,
>> +                     .shift   = 12,
>> +                     .width   = 12,
>> +             },
>> +             .m1 = {
>> +                     .reg_off = CLKCTRL_RTC_BY_OSCIN_CTRL1,
>> +                     .shift   = 0,
>> +                     .width   = 12,
>> +             },
>> +             .m2 = {
>> +                     .reg_off = CLKCTRL_RTC_BY_OSCIN_CTRL1,
>> +                     .shift   = 12,
>> +                     .width   = 12,
>> +             },
>> +             .dual = {
>> +                     .reg_off = CLKCTRL_RTC_BY_OSCIN_CTRL0,
>> +                     .shift   = 28,
>> +                     .width   = 1,
>> +             },
>> +             .table = rtc_32k_div_table,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "rtc_32k_div",
>> +             .ops = &meson_clk_dualdiv_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &rtc_xtal_clkin.hw
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static const struct clk_parent_data rtc_32k_mux_parent_data[] = {
>> +     { .hw = &rtc_32k_div.hw },
>> +     { .hw = &rtc_xtal_clkin.hw }
>> +};
>> +
>> +static struct clk_regmap rtc_32k_mux = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_RTC_BY_OSCIN_CTRL1,
>> +             .mask = 0x1,
>> +             .shift = 24,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "rtc_32k_mux",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = rtc_32k_mux_parent_data,
>> +             .num_parents = ARRAY_SIZE(rtc_32k_mux_parent_data),
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap rtc_32k = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_RTC_BY_OSCIN_CTRL0,
>> +             .bit_idx = 30,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "rtc_32k",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &rtc_32k_mux.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static const struct clk_parent_data rtc_clk_mux_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .hw = &rtc_32k.hw },
>> +     { .fw_name = "pad_osc" }
>> +};
>> +
>> +static struct clk_regmap rtc_clk = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_RTC_CTRL,
>> +             .mask = 0x3,
>> +             .shift = 0,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "rtc_clk",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = rtc_clk_mux_parent_data,
>> +             .num_parents = ARRAY_SIZE(rtc_clk_mux_parent_data),
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +#define A4_CLK_GATE(_name, _reg, _bit, _fw_name, _ops, _flags)
>> \
> 
> A4 ??? everything else is A5 ? Please explain
> 
This is a mistake. Will define macro in common head file.

>> +struct clk_regmap _name = {                                          \
>> +     .data = &(struct clk_regmap_gate_data){                         \
>> +             .offset = (_reg),                                       \
>> +             .bit_idx = (_bit),                                      \
>> +     },                                                              \
>> +     .hw.init = &(struct clk_init_data) {                            \
>> +             .name = #_name,                                         \
>> +             .ops = _ops,                                            \
>> +             .parent_data = &(const struct clk_parent_data) {        \
>> +                     .fw_name = #_fw_name,                           \
>> +             },                                                      \
>> +             .num_parents = 1,                                       \
>> +             .flags = (_flags),                                      \
>> +     },                                                              \
>> +}
>> +
>> +#define A4_SYS_GATE(_name, _reg, _bit, _flags)                               \
>> +     A4_CLK_GATE(_name, _reg, _bit, sysclk,                          \
>> +                 &clk_regmap_gate_ops, _flags)
>> +
>> +#define A4_SYS_GATE_RO(_name, _reg, _bit)                            \
>> +     A4_CLK_GATE(_name, _reg, _bit, sysclk,                          \
>> +                 &clk_regmap_gate_ro_ops, 0)
> 
> Looks like a copy/paste of the C3. If this pattern keeps on repeating,
> it would be nice to make a common definition
>

Will do.

>> +
>> +static A4_SYS_GATE(sys_reset_ctrl,   CLKCTRL_SYS_CLK_EN0_REG0, 1, 0);
>> +static A4_SYS_GATE(sys_pwr_ctrl,     CLKCTRL_SYS_CLK_EN0_REG0, 3, 0);
>> +static A4_SYS_GATE(sys_pad_ctrl,     CLKCTRL_SYS_CLK_EN0_REG0, 4, 0);
>> +static A4_SYS_GATE(sys_ctrl,         CLKCTRL_SYS_CLK_EN0_REG0, 5, 0);
>> +static A4_SYS_GATE(sys_ts_pll,               CLKCTRL_SYS_CLK_EN0_REG0, 6, 0);
>> +
>> +/*
>> + * NOTE: sys_dev_arb provides the clock to the ETH and SPICC arbiters that
>> + * access the AXI bus.
>> + */
>> +static A4_SYS_GATE(sys_dev_arb,              CLKCTRL_SYS_CLK_EN0_REG0, 7, 0);
>> +
>> +/*
>> + * FIXME: sys_mmc_pclk provides the clock for the DDR PHY, DDR will only be
>> + * initialized in bl2, and this clock should not be touched in linux.
>> + */
>> +static A4_SYS_GATE_RO(sys_mmc_pclk,  CLKCTRL_SYS_CLK_EN0_REG0, 8);
>> +static A4_SYS_GATE(sys_mailbox,              CLKCTRL_SYS_CLK_EN0_REG0, 10, 0);
>> +
>> +/*
>> + * NOTE: sys_cpu_ctrl provides the clock for CPU controller. After clock is
>> + * disabled, cpu_clk and other key CPU-related configurations cannot take effect.
>> + */
>> +static A4_SYS_GATE(sys_cpu_ctrl,     CLKCTRL_SYS_CLK_EN0_REG0, 11, CLK_IS_CRITICAL);
>> +static A4_SYS_GATE(sys_jtag_ctrl,    CLKCTRL_SYS_CLK_EN0_REG0, 12, 0);
>> +static A4_SYS_GATE(sys_ir_ctrl,              CLKCTRL_SYS_CLK_EN0_REG0, 13, 0);
>> +
>> +/*
>> + * NOTE: sys_irq_ctrl provides the clock for IRQ controller. The IRQ controller
>> + * collects and distributes the interrupt signal to the GIC, PWR_CTRL, and
>> + * AOCPU. If the clock is disabled, interrupt-related functions will occurs an
>> + * exception.
>> + */
>> +static A4_SYS_GATE(sys_irq_ctrl,     CLKCTRL_SYS_CLK_EN0_REG0, 14, CLK_IS_CRITICAL);
>> +static A4_SYS_GATE(sys_msr_clk,              CLKCTRL_SYS_CLK_EN0_REG0, 15, 0);
>> +static A4_SYS_GATE(sys_rom,          CLKCTRL_SYS_CLK_EN0_REG0, 16, 0);
>> +static A4_SYS_GATE(sys_cpu_apb,              CLKCTRL_SYS_CLK_EN0_REG0, 18, 0);
>> +static A4_SYS_GATE(sys_rsa,          CLKCTRL_SYS_CLK_EN0_REG0, 19, 0);
>> +static A4_SYS_GATE(sys_sar_adc,              CLKCTRL_SYS_CLK_EN0_REG0, 20, 0);
>> +static A4_SYS_GATE(sys_startup,              CLKCTRL_SYS_CLK_EN0_REG0, 21, 0);
>> +static A4_SYS_GATE(sys_secure,               CLKCTRL_SYS_CLK_EN0_REG0, 22, 0);
>> +static A4_SYS_GATE(sys_spifc,                CLKCTRL_SYS_CLK_EN0_REG0, 23, 0);
>> +static A4_SYS_GATE(sys_dspa,         CLKCTRL_SYS_CLK_EN0_REG0, 24, 0);
>> +static A4_SYS_GATE(sys_nna,          CLKCTRL_SYS_CLK_EN0_REG0, 25, 0);
>> +static A4_SYS_GATE(sys_eth_mac,              CLKCTRL_SYS_CLK_EN0_REG0, 26, 0);
>> +
>> +/*
>> + * FIXME: sys_gic provides the clock for GIC(Generic Interrupt Controller).
>> + * After clock is disabled, The GIC cannot work properly. At present, the driver
>> + * used by our GIC is the public driver in kernel, and there is no management
>> + * clock in the driver.
>> + */
>> +static A4_SYS_GATE(sys_gic,          CLKCTRL_SYS_CLK_EN0_REG0, 27, CLK_IS_CRITICAL);
> 
> The GIC has a driver. If it needs clock, maybe it should request it and
> enable it, maybe as optional.
> 

This has been explained in C3. GIC is a public driver that does not 
reference clock, so you suggest setting it as CRITICAL and adding the
"FIXME" annotation.

>> +static A4_SYS_GATE(sys_rama,         CLKCTRL_SYS_CLK_EN0_REG0, 28, 0);
>> +
>> +/*
>> + * NOTE: sys_big_nic provides the clock to the control bus of the NIC(Network
>> + * Interface Controller) between multiple devices(CPU, DDR, RAM, ROM, GIC,
>> + * SPIFC, CAPU, JTAG, EMMC, SDIO, sec_top, USB, Audio, ETH, SPICC) in the
>> + * system. After clock is disabled, The NIC cannot work.
>> + */
> 
> This comment looks like a clock that should be passed as ressource to a
> bus or power-domain to be properly manage. This is a pattern that keeps
> on repeating. I will not block you on it this time around but I strong
> suggest you fix up the situation on the related platform. Next time
> around, the reason won't be a valid one.
> 

There are too many modules associated with this clock... The most 
important is the inclusion of some system-level modules that are not 
managed by the driver in the kernel and cannot close their clocks, 
perhaps it is not appropriate to describe it here.

In the next version I moved it to scmi-clk for management?

>> +static A4_SYS_GATE(sys_big_nic,              CLKCTRL_SYS_CLK_EN0_REG0, 29, CLK_IS_CRITICAL);
>> +static A4_SYS_GATE(sys_ramb,         CLKCTRL_SYS_CLK_EN0_REG0, 30, 0);
>> +static A4_SYS_GATE(sys_audio_top,    CLKCTRL_SYS_CLK_EN0_REG1, 0, 0);
>> +static A4_SYS_GATE(sys_audio_vad,    CLKCTRL_SYS_CLK_EN0_REG1, 1, 0);
>> +static A4_SYS_GATE(sys_usb,          CLKCTRL_SYS_CLK_EN0_REG1, 2, 0);
>> +static A4_SYS_GATE(sys_sd_emmc_a,    CLKCTRL_SYS_CLK_EN0_REG1, 3, 0);
>> +static A4_SYS_GATE(sys_sd_emmc_c,    CLKCTRL_SYS_CLK_EN0_REG1, 4, 0);
>> +static A4_SYS_GATE(sys_pwm_ab,               CLKCTRL_SYS_CLK_EN0_REG1, 5, 0);
>> +static A4_SYS_GATE(sys_pwm_cd,               CLKCTRL_SYS_CLK_EN0_REG1, 6, 0);
>> +static A4_SYS_GATE(sys_pwm_ef,               CLKCTRL_SYS_CLK_EN0_REG1, 7, 0);
>> +static A4_SYS_GATE(sys_pwm_gh,               CLKCTRL_SYS_CLK_EN0_REG1, 8, 0);
>> +static A4_SYS_GATE(sys_spicc_1,              CLKCTRL_SYS_CLK_EN0_REG1, 9, 0);
>> +static A4_SYS_GATE(sys_spicc_0,              CLKCTRL_SYS_CLK_EN0_REG1, 10, 0);
>> +static A4_SYS_GATE(sys_uart_a,               CLKCTRL_SYS_CLK_EN0_REG1, 11, 0);
>> +static A4_SYS_GATE(sys_uart_b,               CLKCTRL_SYS_CLK_EN0_REG1, 12, 0);
>> +static A4_SYS_GATE(sys_uart_c,               CLKCTRL_SYS_CLK_EN0_REG1, 13, 0);
>> +static A4_SYS_GATE(sys_uart_d,               CLKCTRL_SYS_CLK_EN0_REG1, 14, 0);
>> +static A4_SYS_GATE(sys_uart_e,               CLKCTRL_SYS_CLK_EN0_REG1, 15, 0);
>> +static A4_SYS_GATE(sys_i2c_m_a,              CLKCTRL_SYS_CLK_EN0_REG1, 16, 0);
>> +static A4_SYS_GATE(sys_i2c_m_b,              CLKCTRL_SYS_CLK_EN0_REG1, 17, 0);
>> +static A4_SYS_GATE(sys_i2c_m_c,              CLKCTRL_SYS_CLK_EN0_REG1, 18, 0);
>> +static A4_SYS_GATE(sys_i2c_m_d,              CLKCTRL_SYS_CLK_EN0_REG1, 19, 0);
>> +static A4_SYS_GATE(sys_rtc,          CLKCTRL_SYS_CLK_EN0_REG1, 21, 0);
>> +
>> +#define A4_AXI_GATE(_name, _reg, _bit, _flags)                               \
>> +     A4_CLK_GATE(_name, _reg, _bit, axiclk,                          \
>> +                 &clk_regmap_gate_ops, _flags)
>> +
>> +static A4_AXI_GATE(axi_audio_vad,    CLKCTRL_AXI_CLK_EN0, 0, 0);
>> +static A4_AXI_GATE(axi_audio_top,    CLKCTRL_AXI_CLK_EN0, 1, 0);
>> +
>> +/*
>> + * NOTE: axi_sys_nic provides the clock to the AXI bus of the system NIC. After
>> + * clock is disabled, The NIC cannot work.
>> + */
>> +static A4_AXI_GATE(axi_sys_nic,              CLKCTRL_AXI_CLK_EN0, 2, CLK_IS_CRITICAL);
>> +static A4_AXI_GATE(axi_ramb,         CLKCTRL_AXI_CLK_EN0, 5, 0);
>> +static A4_AXI_GATE(axi_rama,         CLKCTRL_AXI_CLK_EN0, 6, 0);
>> +
>> +/*
>> + * NOTE: axi_cpu_dmc provides the clock to the AXI bus where the CPU accesses
>> + * the DDR. After clock is disabled, The CPU will not have access to the DDR.
>> + */
>> +static A4_AXI_GATE(axi_cpu_dmc,              CLKCTRL_AXI_CLK_EN0, 7, CLK_IS_CRITICAL);
>> +static A4_AXI_GATE(axi_nna,          CLKCTRL_AXI_CLK_EN0, 12, 0);
>> +
>> +/*
>> + * NOTE: axi_dev1_dmc provides the clock for the peripherals(EMMC, SDIO,
>> + * sec_top, USB, Audio) to access the AXI bus of the DDR.
>> + */
> 
> Same.
> 

These normal peripheral drivers manage the clock without a problem.

>> +static A4_AXI_GATE(axi_dev1_dmc,     CLKCTRL_AXI_CLK_EN0, 13, 0);
>> +
>> +/*
>> + * NOTE: axi_dev0_dmc provides the clock for the peripherals(ETH and SPICC)
>> + * to access the AXI bus of the DDR.
>> + */
>> +static A4_AXI_GATE(axi_dev0_dmc,     CLKCTRL_AXI_CLK_EN0, 14, 0);
>> +static A4_AXI_GATE(axi_dsp_dmc,              CLKCTRL_AXI_CLK_EN0, 15, 0);
>> +
>> +static struct clk_regmap clk_12_24m_in = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_CLK12_24_CTRL,
>> +             .bit_idx = 11,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "clk_12_24m_in",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "xtal_24m",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap clk_12_24m = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_CLK12_24_CTRL,
>> +             .shift = 10,
>> +             .width = 1,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "clk_12_24m",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &clk_12_24m_in.hw
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +/* FIXME: set value 0 will div by 2 like value 1 */
> 
> Again, it is fine when it happens once, like the c3.
> When the pattern starts repeating, it is time to do something about it.
> 

The corresponding suggestions have been made to the hardware designer, 
but now the designed chip cannot be repaired.

>> +static struct clk_regmap fclk_25m_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_CLK12_24_CTRL,
>> +             .shift = 0,
>> +             .width = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "fclk_25m_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "fix",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap fclk_25m = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_CLK12_24_CTRL,
>> +             .bit_idx = 12,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "fclk_25m",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &fclk_25m_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +/*
>> + * Channel 3(ddr_dpll_pt_clk) is manged by the DDR module; channel 12(cts_msr_clk)
>> + * is manged by clock measures module. Their hardware are out of clock tree.
> 
> Yet, they exist and should be part of the bindings since they are
> obviously input to this clock.
> 

Will add it to bindings, as optional input clock source.

>> + * Channel 4 5 8 9 10 11 13 14 15 16 18 are not connected.
>> + *
>> + * gp1 is designed for DSU (DynamIQ Shared Unit) alone. It cannot be changed
>> + * arbitrarily. gp1 is read-only in the kernel and is only open for debug purposes.
>> + */
>> +static u32 gen_parent_table[] = { 0, 1, 2, 6, 7, 17, 19, 20, 21, 22, 23, 24, 25,
>> +                               26, 27, 28};
>> +
>> +static const struct clk_parent_data gen_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .hw = &rtc_clk.hw },
>> +     { .fw_name = "sysplldiv16" },
>> +     { .fw_name = "gp1" },
>> +     { .fw_name = "hifi" },
>> +     { .fw_name = "cpudiv16" },
>> +     { .fw_name = "fdiv2" },
>> +     { .fw_name = "fdiv2p5" },
>> +     { .fw_name = "fdiv3" },
>> +     { .fw_name = "fdiv4" },
>> +     { .fw_name = "fdiv5" },
>> +     { .fw_name = "fdiv7" },
>> +     { .fw_name = "mpll0" },
>> +     { .fw_name = "mpll1" },
>> +     { .fw_name = "mpll2" },
>> +     { .fw_name = "mpll3" }
>> +};
>> +
>> +static struct clk_regmap gen_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_GEN_CLK_CTRL,
>> +             .mask = 0x1f,
>> +             .shift = 12,
>> +             .table = gen_parent_table,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "gen_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = gen_parent_data,
>> +             .num_parents = ARRAY_SIZE(gen_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap gen_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_GEN_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 11,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "gen_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &gen_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap gen = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_GEN_CLK_CTRL,
>> +             .bit_idx = 11,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "gen",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &gen_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static const struct clk_parent_data saradc_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .fw_name = "sysclk" }
>> +};
>> +
>> +static struct clk_regmap saradc_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_SAR_CLK_CTRL0,
>> +             .mask = 0x1,
>> +             .shift = 9,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "saradc_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = saradc_parent_data,
>> +             .num_parents = ARRAY_SIZE(saradc_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap saradc_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_SAR_CLK_CTRL0,
>> +             .shift = 0,
>> +             .width = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "saradc_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &saradc_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap saradc = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_SAR_CLK_CTRL0,
>> +             .bit_idx = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "saradc",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &saradc_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static const struct clk_parent_data pwm_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .hw = &rtc_clk.hw },
>> +     { .fw_name = "fdiv4" },
>> +     { .fw_name = "fdiv3" }
>> +};
>> +
>> +#define AML_PWM_CLK_MUX(_name, _reg, _shift) {                       \
>> +     .data = &(struct clk_regmap_mux_data) {                 \
>> +             .offset = _reg,                                 \
>> +             .mask = 0x3,                                    \
>> +             .shift = _shift,                                \
>> +     },                                                      \
>> +     .hw.init = &(struct clk_init_data) {                    \
>> +             .name = #_name "_sel",                          \
>> +             .ops = &clk_regmap_mux_ops,                     \
>> +             .parent_data = pwm_parent_data,                 \
>> +             .num_parents = ARRAY_SIZE(pwm_parent_data),     \
>> +     },                                                      \
>> +}
>> +
>> +#define AML_PWM_CLK_DIV(_name, _reg, _shift) {                       \
>> +     .data = &(struct clk_regmap_div_data) {                 \
>> +             .offset = _reg,                                 \
>> +             .shift = _shift,                                \
>> +             .width = 8,                                     \
>> +     },                                                      \
>> +     .hw.init = &(struct clk_init_data) {                    \
>> +             .name = #_name "_div",                          \
>> +             .ops = &clk_regmap_divider_ops,                 \
>> +             .parent_names = (const char *[]) { #_name "_sel" },\
>> +             .num_parents = 1,                               \
>> +             .flags = CLK_SET_RATE_PARENT,                   \
>> +     },                                                      \
>> +}
>> +
>> +#define AML_PWM_CLK_GATE(_name, _reg, _bit) {                        \
>> +     .data = &(struct clk_regmap_gate_data) {                \
>> +             .offset = _reg,                                 \
>> +             .bit_idx = _bit,                                \
>> +     },                                                      \
>> +     .hw.init = &(struct clk_init_data) {                    \
>> +             .name = #_name,                                 \
>> +             .ops = &clk_regmap_gate_ops,                    \
>> +             .parent_names = (const char *[]) { #_name "_div" },\
>> +             .num_parents = 1,                               \
>> +             .flags = CLK_SET_RATE_PARENT,                   \
>> +     },                                                      \
>> +}
> 
> Now the prefix is just AML ? please be consistent
> And again, looks like a repeating pattern of these families you've been
> upstreaming lately.
> 

Will do.

>> +
>> +static struct clk_regmap pwm_a_sel =
>> +     AML_PWM_CLK_MUX(pwm_a, CLKCTRL_PWM_CLK_AB_CTRL, 9);
>> +static struct clk_regmap pwm_a_div =
>> +     AML_PWM_CLK_DIV(pwm_a, CLKCTRL_PWM_CLK_AB_CTRL, 0);
>> +static struct clk_regmap pwm_a =
>> +     AML_PWM_CLK_GATE(pwm_a, CLKCTRL_PWM_CLK_AB_CTRL, 8);
>> +
>> +static struct clk_regmap pwm_b_sel =
>> +     AML_PWM_CLK_MUX(pwm_b, CLKCTRL_PWM_CLK_AB_CTRL, 25);
>> +static struct clk_regmap pwm_b_div =
>> +     AML_PWM_CLK_DIV(pwm_b, CLKCTRL_PWM_CLK_AB_CTRL, 16);
>> +static struct clk_regmap pwm_b =
>> +     AML_PWM_CLK_GATE(pwm_b, CLKCTRL_PWM_CLK_AB_CTRL, 24);
>> +
>> +static struct clk_regmap pwm_c_sel =
>> +     AML_PWM_CLK_MUX(pwm_c, CLKCTRL_PWM_CLK_CD_CTRL, 9);
>> +static struct clk_regmap pwm_c_div =
>> +     AML_PWM_CLK_DIV(pwm_c, CLKCTRL_PWM_CLK_CD_CTRL, 0);
>> +static struct clk_regmap pwm_c =
>> +     AML_PWM_CLK_GATE(pwm_c, CLKCTRL_PWM_CLK_CD_CTRL, 8);
>> +
>> +static struct clk_regmap pwm_d_sel =
>> +     AML_PWM_CLK_MUX(pwm_d, CLKCTRL_PWM_CLK_CD_CTRL, 25);
>> +static struct clk_regmap pwm_d_div =
>> +     AML_PWM_CLK_DIV(pwm_d, CLKCTRL_PWM_CLK_CD_CTRL, 16);
>> +static struct clk_regmap pwm_d =
>> +     AML_PWM_CLK_GATE(pwm_d, CLKCTRL_PWM_CLK_CD_CTRL, 24);
>> +
>> +static struct clk_regmap pwm_e_sel =
>> +     AML_PWM_CLK_MUX(pwm_e, CLKCTRL_PWM_CLK_EF_CTRL, 9);
>> +static struct clk_regmap pwm_e_div =
>> +     AML_PWM_CLK_DIV(pwm_e, CLKCTRL_PWM_CLK_EF_CTRL, 0);
>> +static struct clk_regmap pwm_e =
>> +     AML_PWM_CLK_GATE(pwm_e, CLKCTRL_PWM_CLK_EF_CTRL, 8);
>> +
>> +static struct clk_regmap pwm_f_sel =
>> +     AML_PWM_CLK_MUX(pwm_f, CLKCTRL_PWM_CLK_EF_CTRL, 25);
>> +static struct clk_regmap pwm_f_div =
>> +     AML_PWM_CLK_DIV(pwm_f, CLKCTRL_PWM_CLK_EF_CTRL, 16);
>> +static struct clk_regmap pwm_f =
>> +     AML_PWM_CLK_GATE(pwm_f, CLKCTRL_PWM_CLK_EF_CTRL, 24);
>> +
>> +static struct clk_regmap pwm_g_sel =
>> +     AML_PWM_CLK_MUX(pwm_g, CLKCTRL_PWM_CLK_GH_CTRL, 9);
>> +static struct clk_regmap pwm_g_div =
>> +     AML_PWM_CLK_DIV(pwm_g, CLKCTRL_PWM_CLK_GH_CTRL, 0);
>> +static struct clk_regmap pwm_g =
>> +     AML_PWM_CLK_GATE(pwm_g, CLKCTRL_PWM_CLK_GH_CTRL, 8);
>> +
>> +static struct clk_regmap pwm_h_sel =
>> +     AML_PWM_CLK_MUX(pwm_h, CLKCTRL_PWM_CLK_GH_CTRL, 25);
>> +static struct clk_regmap pwm_h_div =
>> +     AML_PWM_CLK_DIV(pwm_h, CLKCTRL_PWM_CLK_GH_CTRL, 16);
>> +static struct clk_regmap pwm_h =
>> +     AML_PWM_CLK_GATE(pwm_h, CLKCTRL_PWM_CLK_GH_CTRL, 24);
>> +
>> +/* Channel 7 is gp1. */
> 
> and ? if GP1 is RO, why can't you add it here ?
> 

gp1_pll is a special clock for DSU, it is integrated into dsu_clk, we
don't want other modules to reference it.

My understanding is that gp1_pll should not be provided to the peripheral
clock tree, perhaps this is a redundant design.

>> +static const struct clk_parent_data spicc_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .fw_name = "sysclk" },
>> +     { .fw_name = "fdiv4" },
>> +     { .fw_name = "fdiv3" },
>> +     { .fw_name = "fdiv2" },
>> +     { .fw_name = "fdiv5" },
>> +     { .fw_name = "fdiv7" }
>> +};
>> +
>> +static struct clk_regmap spicc_0_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .mask = 0x7,
>> +             .shift = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_0_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = spicc_parent_data,
>> +             .num_parents = ARRAY_SIZE(spicc_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap spicc_0_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 6,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_0_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &spicc_0_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap spicc_0 = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .bit_idx = 6,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_0",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &spicc_0_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap spicc_1_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .mask = 0x7,
>> +             .shift = 23,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_1_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = spicc_parent_data,
>> +             .num_parents = ARRAY_SIZE(spicc_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap spicc_1_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .shift = 16,
>> +             .width = 6,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_1_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &spicc_1_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap spicc_1 = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_SPICC_CLK_CTRL,
>> +             .bit_idx = 22,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "spicc_1",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &spicc_1_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static const struct clk_parent_data emmc_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .fw_name = "fdiv2" },
>> +     { .fw_name = "fdiv3" },
>> +     { .fw_name = "hifi" },
>> +     { .fw_name = "fdiv2p5" },
>> +     { .fw_name = "mpll2" },
>> +     { .fw_name = "mpll3" },
>> +     { .fw_name = "gp0" }
>> +};
>> +
>> +static struct clk_regmap sd_emmc_a_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_SD_EMMC_CLK_CTRL,
>> +             .mask = 0x7,
>> +             .shift = 9,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_a_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = emmc_parent_data,
>> +             .num_parents = ARRAY_SIZE(emmc_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap sd_emmc_a_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_SD_EMMC_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_a_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &sd_emmc_a_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap sd_emmc_a = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_SD_EMMC_CLK_CTRL,
>> +             .bit_idx = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_a",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &sd_emmc_a_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap sd_emmc_c_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_NAND_CLK_CTRL,
>> +             .mask = 0x7,
>> +             .shift = 9,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_c_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = emmc_parent_data,
>> +             .num_parents = ARRAY_SIZE(emmc_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap sd_emmc_c_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_NAND_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_c_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &sd_emmc_c_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap sd_emmc_c = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_NAND_CLK_CTRL,
>> +             .bit_idx = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "sd_emmc_c",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &sd_emmc_c_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap ts_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_TS_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "ts_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "oscin",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap ts = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_TS_CLK_CTRL,
>> +             .bit_idx = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "ts",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &ts_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_fixed_factor eth_125m_div = {
>> +     .mult = 1,
>> +     .div = 8,
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "eth_125m_div",
>> +             .ops = &clk_fixed_factor_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "fdiv2",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap eth_125m = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_ETH_CLK_CTRL,
>> +             .bit_idx = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "eth_125m",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &eth_125m_div.hw
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap eth_rmii_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_ETH_CLK_CTRL,
>> +             .shift = 0,
>> +             .width = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "eth_rmii_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_data = &(const struct clk_parent_data) {
>> +                     .fw_name = "fdiv2",
>> +             },
>> +             .num_parents = 1,
>> +     },
>> +};
>> +
>> +static struct clk_regmap eth_rmii = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_ETH_CLK_CTRL,
>> +             .bit_idx = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "eth_rmii",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &eth_rmii_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +/* Channel 6 is gp1. */
> 
> same
> 

gp1_pll is a special clock for DSU, it is integrated into dsu_clk, we
don't want other modules to reference it.

My understanding is that gp1_pll should not be provided to the peripheral
clock tree, perhaps this is a redundant design.

>> +static u32 dspa_parent_table[] = { 0, 1, 2, 3, 4, 5, 7};
>> +
>> +static const struct clk_parent_data dspa_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .fw_name = "fdiv2p5" },
>> +     { .fw_name = "fdiv3" },
>> +     { .fw_name = "rtc" },
>> +     { .fw_name = "hifi" },
>> +     { .fw_name = "fdiv4" },
>> +     { .hw = &rtc_clk.hw }
>> +};
>> +
>> +static struct clk_regmap dspa_0_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .mask = 0x7,
>> +             .shift = 10,
>> +             .table = dspa_parent_table,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_0_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = dspa_parent_data,
>> +             .num_parents = ARRAY_SIZE(dspa_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa_0_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .shift = 0,
>> +             .width = 10,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_0_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &dspa_0_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa_0 = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .bit_idx = 13,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_0",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &dspa_0_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa_1_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .mask = 0x7,
>> +             .shift = 26,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_1_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = dspa_parent_data,
>> +             .num_parents = ARRAY_SIZE(dspa_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa_1_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .shift = 16,
>> +             .width = 10,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_1_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &dspa_1_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa_1 = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .bit_idx = 29,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa_1",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &dspa_1_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
> 
> A word about SET_RATE_GATE ?
> 

Look at the response to one of the questions below.

>> +     },
>> +};
>> +
>> +static struct clk_regmap dspa = {
>> +     .data = &(struct clk_regmap_mux_data){
>> +             .offset = CLKCTRL_DSPA_CLK_CTRL0,
>> +             .mask = 0x1,
>> +             .shift = 15,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "dspa",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &dspa_0.hw,
>> +                     &dspa_1.hw
>> +             },
>> +             .num_parents = 2,
>> +             /*
>> +              * NOTE: This level of mux is "no glitch mux", and mux_0
>> +              * (here dspa_0) is not only the clock source for mux, but also
>> +              * provides a working clock for "no glitch mux". "no glitch mux"
>> +              * can be switched only when mux_0 has a clock input. Therefore,
>> +              * add flag CLK_OPS_PARENT_ENABLE to ensure that mux_0 has clock
>> +              * when "no glitch mux" works.
>> +              */
>> +             .flags = CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
> 
> Humm CLK_OPS_PARENT_ENABLE is not how we have handling glitch free mux
> so far. What changed ?
> 

This is a hidden problem we have discovered in recent years, the 
previous chip use is ping-pong switching "no-glitch-mux/glitch free" 
have this problem. If mux_0 does not have a clock "no-glitch-mux", it 
will not be able to switch channels, and I will organize and submit 
patch to fix it later.

>> +     },
>> +};
>> +
>> +/* Channel 6 is gp1. */
>> +static u32 nna_parent_table[] = { 0, 1, 2, 3, 4, 5, 7};
>> +
>> +static const struct clk_parent_data nna_parent_data[] = {
>> +     { .fw_name = "oscin" },
>> +     { .fw_name = "fdiv2p5" },
>> +     { .fw_name = "fdiv4" },
>> +     { .fw_name = "fdiv3" },
>> +     { .fw_name = "fdiv5" },
>> +     { .fw_name = "fdiv2" },
>> +     { .fw_name = "hifi" }
>> +};
>> +
>> +static struct clk_regmap nna_core_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .mask = 0x7,
>> +             .shift = 9,
>> +             .table = nna_parent_table,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_core_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = nna_parent_data,
>> +             .num_parents = ARRAY_SIZE(nna_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap nna_core_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .shift = 0,
>> +             .width = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_core_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &nna_core_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap nna_core = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .bit_idx = 8,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_core",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &nna_core_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap nna_axi_sel = {
>> +     .data = &(struct clk_regmap_mux_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .mask = 0x7,
>> +             .shift = 25,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_axi_sel",
>> +             .ops = &clk_regmap_mux_ops,
>> +             .parent_data = nna_parent_data,
>> +             .num_parents = ARRAY_SIZE(nna_parent_data),
>> +     },
>> +};
>> +
>> +static struct clk_regmap nna_axi_div = {
>> +     .data = &(struct clk_regmap_div_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .shift = 16,
>> +             .width = 7,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_axi_div",
>> +             .ops = &clk_regmap_divider_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &nna_axi_sel.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_regmap nna_axi = {
>> +     .data = &(struct clk_regmap_gate_data) {
>> +             .offset = CLKCTRL_NNA_CLK_CNTL,
>> +             .bit_idx = 24,
>> +     },
>> +     .hw.init = &(struct clk_init_data) {
>> +             .name = "nna_axi",
>> +             .ops = &clk_regmap_gate_ops,
>> +             .parent_hws = (const struct clk_hw *[]) {
>> +                     &nna_axi_div.hw
>> +             },
>> +             .num_parents = 1,
>> +             .flags = CLK_SET_RATE_PARENT,
>> +     },
>> +};
>> +
>> +static struct clk_hw *a5_periphs_hw_clks[] = {
>> +     [CLKID_RTC_XTAL_CLKIN]          = &rtc_xtal_clkin.hw,
>> +     [CLKID_RTC_32K_DIV]             = &rtc_32k_div.hw,
>> +     [CLKID_RTC_32K_MUX]             = &rtc_32k_mux.hw,
>> +     [CLKID_RTC_32K]                 = &rtc_32k.hw,
>> +     [CLKID_RTC_CLK]                 = &rtc_clk.hw,
>> +     [CLKID_SYS_RESET_CTRL]          = &sys_reset_ctrl.hw,
>> +     [CLKID_SYS_PWR_CTRL]            = &sys_pwr_ctrl.hw,
>> +     [CLKID_SYS_PAD_CTRL]            = &sys_pad_ctrl.hw,
>> +     [CLKID_SYS_CTRL]                = &sys_ctrl.hw,
>> +     [CLKID_SYS_TS_PLL]              = &sys_ts_pll.hw,
>> +     [CLKID_SYS_DEV_ARB]             = &sys_dev_arb.hw,
>> +     [CLKID_SYS_MMC_PCLK]            = &sys_mmc_pclk.hw,
>> +     [CLKID_SYS_MAILBOX]             = &sys_mailbox.hw,
>> +     [CLKID_SYS_CPU_CTRL]            = &sys_cpu_ctrl.hw,
>> +     [CLKID_SYS_JTAG_CTRL]           = &sys_jtag_ctrl.hw,
>> +     [CLKID_SYS_IR_CTRL]             = &sys_ir_ctrl.hw,
>> +     [CLKID_SYS_IRQ_CTRL]            = &sys_irq_ctrl.hw,
>> +     [CLKID_SYS_MSR_CLK]             = &sys_msr_clk.hw,
>> +     [CLKID_SYS_ROM]                 = &sys_rom.hw,
>> +     [CLKID_SYS_CPU_ARB]             = &sys_cpu_apb.hw,
>> +     [CLKID_SYS_RSA]                 = &sys_rsa.hw,
>> +     [CLKID_SYS_SAR_ADC]             = &sys_sar_adc.hw,
>> +     [CLKID_SYS_STARTUP]             = &sys_startup.hw,
>> +     [CLKID_SYS_SECURE]              = &sys_secure.hw,
>> +     [CLKID_SYS_SPIFC]               = &sys_spifc.hw,
>> +     [CLKID_SYS_DSPA]                = &sys_dspa.hw,
>> +     [CLKID_SYS_NNA]                 = &sys_nna.hw,
>> +     [CLKID_SYS_ETH_MAC]             = &sys_eth_mac.hw,
>> +     [CLKID_SYS_GIC]                 = &sys_gic.hw,
>> +     [CLKID_SYS_RAMA]                = &sys_rama.hw,
>> +     [CLKID_SYS_BIG_NIC]             = &sys_big_nic.hw,
>> +     [CLKID_SYS_RAMB]                = &sys_ramb.hw,
>> +     [CLKID_SYS_AUDIO_TOP]           = &sys_audio_top.hw,
>> +     [CLKID_SYS_AUDIO_VAD]           = &sys_audio_vad.hw,
>> +     [CLKID_SYS_USB]                 = &sys_usb.hw,
>> +     [CLKID_SYS_SD_EMMC_A]           = &sys_sd_emmc_a.hw,
>> +     [CLKID_SYS_SD_EMMC_C]           = &sys_sd_emmc_c.hw,
>> +     [CLKID_SYS_PWM_AB]              = &sys_pwm_ab.hw,
>> +     [CLKID_SYS_PWM_CD]              = &sys_pwm_cd.hw,
>> +     [CLKID_SYS_PWM_EF]              = &sys_pwm_ef.hw,
>> +     [CLKID_SYS_PWM_GH]              = &sys_pwm_gh.hw,
>> +     [CLKID_SYS_SPICC_1]             = &sys_spicc_1.hw,
>> +     [CLKID_SYS_SPICC_0]             = &sys_spicc_0.hw,
>> +     [CLKID_SYS_UART_A]              = &sys_uart_a.hw,
>> +     [CLKID_SYS_UART_B]              = &sys_uart_b.hw,
>> +     [CLKID_SYS_UART_C]              = &sys_uart_c.hw,
>> +     [CLKID_SYS_UART_D]              = &sys_uart_d.hw,
>> +     [CLKID_SYS_UART_E]              = &sys_uart_e.hw,
>> +     [CLKID_SYS_I2C_M_A]             = &sys_i2c_m_a.hw,
>> +     [CLKID_SYS_I2C_M_B]             = &sys_i2c_m_b.hw,
>> +     [CLKID_SYS_I2C_M_C]             = &sys_i2c_m_c.hw,
>> +     [CLKID_SYS_I2C_M_D]             = &sys_i2c_m_d.hw,
>> +     [CLKID_SYS_RTC]                 = &sys_rtc.hw,
>> +     [CLKID_AXI_AUDIO_VAD]           = &axi_audio_vad.hw,
>> +     [CLKID_AXI_AUDIO_TOP]           = &axi_audio_top.hw,
>> +     [CLKID_AXI_SYS_NIC]             = &axi_sys_nic.hw,
>> +     [CLKID_AXI_RAMB]                = &axi_ramb.hw,
>> +     [CLKID_AXI_RAMA]                = &axi_rama.hw,
>> +     [CLKID_AXI_CPU_DMC]             = &axi_cpu_dmc.hw,
>> +     [CLKID_AXI_NNA]                 = &axi_nna.hw,
>> +     [CLKID_AXI_DEV1_DMC]            = &axi_dev1_dmc.hw,
>> +     [CLKID_AXI_DEV0_DMC]            = &axi_dev0_dmc.hw,
>> +     [CLKID_AXI_DSP_DMC]             = &axi_dsp_dmc.hw,
>> +     [CLKID_12_24M_IN]               = &clk_12_24m_in.hw,
>> +     [CLKID_12M_24M]                 = &clk_12_24m.hw,
>> +     [CLKID_FCLK_25M_DIV]            = &fclk_25m_div.hw,
>> +     [CLKID_FCLK_25M]                = &fclk_25m.hw,
>> +     [CLKID_GEN_SEL]                 = &gen_sel.hw,
>> +     [CLKID_GEN_DIV]                 = &gen_div.hw,
>> +     [CLKID_GEN]                     = &gen.hw,
>> +     [CLKID_SARADC_SEL]              = &saradc_sel.hw,
>> +     [CLKID_SARADC_DIV]              = &saradc_div.hw,
>> +     [CLKID_SARADC]                  = &saradc.hw,
>> +     [CLKID_PWM_A_SEL]               = &pwm_a_sel.hw,
>> +     [CLKID_PWM_A_DIV]               = &pwm_a_div.hw,
>> +     [CLKID_PWM_A]                   = &pwm_a.hw,
>> +     [CLKID_PWM_B_SEL]               = &pwm_b_sel.hw,
>> +     [CLKID_PWM_B_DIV]               = &pwm_b_div.hw,
>> +     [CLKID_PWM_B]                   = &pwm_b.hw,
>> +     [CLKID_PWM_C_SEL]               = &pwm_c_sel.hw,
>> +     [CLKID_PWM_C_DIV]               = &pwm_c_div.hw,
>> +     [CLKID_PWM_C]                   = &pwm_c.hw,
>> +     [CLKID_PWM_D_SEL]               = &pwm_d_sel.hw,
>> +     [CLKID_PWM_D_DIV]               = &pwm_d_div.hw,
>> +     [CLKID_PWM_D]                   = &pwm_d.hw,
>> +     [CLKID_PWM_E_SEL]               = &pwm_e_sel.hw,
>> +     [CLKID_PWM_E_DIV]               = &pwm_e_div.hw,
>> +     [CLKID_PWM_E]                   = &pwm_e.hw,
>> +     [CLKID_PWM_F_SEL]               = &pwm_f_sel.hw,
>> +     [CLKID_PWM_F_DIV]               = &pwm_f_div.hw,
>> +     [CLKID_PWM_F]                   = &pwm_f.hw,
>> +     [CLKID_PWM_G_SEL]               = &pwm_g_sel.hw,
>> +     [CLKID_PWM_G_DIV]               = &pwm_g_div.hw,
>> +     [CLKID_PWM_G]                   = &pwm_g.hw,
>> +     [CLKID_PWM_H_SEL]               = &pwm_h_sel.hw,
>> +     [CLKID_PWM_H_DIV]               = &pwm_h_div.hw,
>> +     [CLKID_PWM_H]                   = &pwm_h.hw,
>> +     [CLKID_SPICC_0_SEL]             = &spicc_0_sel.hw,
>> +     [CLKID_SPICC_0_DIV]             = &spicc_0_div.hw,
>> +     [CLKID_SPICC_0]                 = &spicc_0.hw,
>> +     [CLKID_SPICC_1_SEL]             = &spicc_1_sel.hw,
>> +     [CLKID_SPICC_1_DIV]             = &spicc_1_div.hw,
>> +     [CLKID_SPICC_1]                 = &spicc_1.hw,
>> +     [CLKID_SD_EMMC_A_SEL]           = &sd_emmc_a_sel.hw,
>> +     [CLKID_SD_EMMC_A_DIV]           = &sd_emmc_a_div.hw,
>> +     [CLKID_SD_EMMC_A]               = &sd_emmc_a.hw,
>> +     [CLKID_SD_EMMC_C_SEL]           = &sd_emmc_c_sel.hw,
>> +     [CLKID_SD_EMMC_C_DIV]           = &sd_emmc_c_div.hw,
>> +     [CLKID_SD_EMMC_C]               = &sd_emmc_c.hw,
>> +     [CLKID_TS_DIV]                  = &ts_div.hw,
>> +     [CLKID_TS]                      = &ts.hw,
>> +     [CLKID_ETH_125M_DIV]            = &eth_125m_div.hw,
>> +     [CLKID_ETH_125M]                = &eth_125m.hw,
>> +     [CLKID_ETH_RMII_DIV]            = &eth_rmii_div.hw,
>> +     [CLKID_ETH_RMII]                = &eth_rmii.hw,
>> +     [CLKID_DSPA_0_SEL]              = &dspa_0_sel.hw,
>> +     [CLKID_DSPA_0_DIV]              = &dspa_0_div.hw,
>> +     [CLKID_DSPA_0]                  = &dspa_0.hw,
>> +     [CLKID_DSPA_1_SEL]              = &dspa_1_sel.hw,
>> +     [CLKID_DSPA_1_DIV]              = &dspa_1_div.hw,
>> +     [CLKID_DSPA_1]                  = &dspa_1.hw,
>> +     [CLKID_DSPA]                    = &dspa.hw,
>> +     [CLKID_NNA_CORE_SEL]            = &nna_core_sel.hw,
>> +     [CLKID_NNA_CORE_DIV]            = &nna_core_div.hw,
>> +     [CLKID_NNA_CORE]                = &nna_core.hw,
>> +     [CLKID_NNA_AXI_SEL]             = &nna_axi_sel.hw,
>> +     [CLKID_NNA_AXI_DIV]             = &nna_axi_div.hw,
>> +     [CLKID_NNA_AXI]                 = &nna_axi.hw,
>> +};
>> +
>> +/* Convenience table to populate regmap in .probe */
>> +static struct clk_regmap *const a5_periphs_clk_regmaps[] = {
>> +     &rtc_xtal_clkin,
>> +     &rtc_32k_div,
>> +     &rtc_32k_mux,
>> +     &rtc_32k,
>> +     &rtc_clk,
>> +     &sys_reset_ctrl,
>> +     &sys_pwr_ctrl,
>> +     &sys_pad_ctrl,
>> +     &sys_ctrl,
>> +     &sys_ts_pll,
>> +     &sys_dev_arb,
>> +     &sys_mmc_pclk,
>> +     &sys_mailbox,
>> +     &sys_cpu_ctrl,
>> +     &sys_jtag_ctrl,
>> +     &sys_ir_ctrl,
>> +     &sys_irq_ctrl,
>> +     &sys_msr_clk,
>> +     &sys_rom,
>> +     &sys_cpu_apb,
>> +     &sys_rsa,
>> +     &sys_sar_adc,
>> +     &sys_startup,
>> +     &sys_secure,
>> +     &sys_spifc,
>> +     &sys_dspa,
>> +     &sys_nna,
>> +     &sys_eth_mac,
>> +     &sys_gic,
>> +     &sys_rama,
>> +     &sys_big_nic,
>> +     &sys_ramb,
>> +     &sys_audio_top,
>> +     &sys_audio_vad,
>> +     &sys_usb,
>> +     &sys_sd_emmc_a,
>> +     &sys_sd_emmc_c,
>> +     &sys_pwm_ab,
>> +     &sys_pwm_cd,
>> +     &sys_pwm_ef,
>> +     &sys_pwm_gh,
>> +     &sys_spicc_1,
>> +     &sys_spicc_0,
>> +     &sys_uart_a,
>> +     &sys_uart_b,
>> +     &sys_uart_c,
>> +     &sys_uart_d,
>> +     &sys_uart_e,
>> +     &sys_i2c_m_a,
>> +     &sys_i2c_m_b,
>> +     &sys_i2c_m_c,
>> +     &sys_i2c_m_d,
>> +     &sys_rtc,
>> +     &axi_audio_vad,
>> +     &axi_audio_top,
>> +     &axi_sys_nic,
>> +     &axi_ramb,
>> +     &axi_rama,
>> +     &axi_cpu_dmc,
>> +     &axi_nna,
>> +     &axi_dev1_dmc,
>> +     &axi_dev0_dmc,
>> +     &axi_dsp_dmc,
>> +     &clk_12_24m_in,
>> +     &clk_12_24m,
>> +     &fclk_25m_div,
>> +     &fclk_25m,
>> +     &gen_sel,
>> +     &gen_div,
>> +     &gen,
>> +     &saradc_sel,
>> +     &saradc_div,
>> +     &saradc,
>> +     &pwm_a_sel,
>> +     &pwm_a_div,
>> +     &pwm_a,
>> +     &pwm_b_sel,
>> +     &pwm_b_div,
>> +     &pwm_b,
>> +     &pwm_c_sel,
>> +     &pwm_c_div,
>> +     &pwm_c,
>> +     &pwm_d_sel,
>> +     &pwm_d_div,
>> +     &pwm_d,
>> +     &pwm_e_sel,
>> +     &pwm_e_div,
>> +     &pwm_e,
>> +     &pwm_f_sel,
>> +     &pwm_f_div,
>> +     &pwm_f,
>> +     &pwm_g_sel,
>> +     &pwm_g_div,
>> +     &pwm_g,
>> +     &pwm_h_sel,
>> +     &pwm_h_div,
>> +     &pwm_h,
>> +     &spicc_0_sel,
>> +     &spicc_0_div,
>> +     &spicc_0,
>> +     &spicc_1_sel,
>> +     &spicc_1_div,
>> +     &spicc_1,
>> +     &sd_emmc_a_sel,
>> +     &sd_emmc_a_div,
>> +     &sd_emmc_a,
>> +     &sd_emmc_c_sel,
>> +     &sd_emmc_c_div,
>> +     &sd_emmc_c,
>> +     &ts_div,
>> +     &ts,
>> +     &eth_125m,
>> +     &eth_rmii_div,
>> +     &eth_rmii,
>> +     &dspa_0_sel,
>> +     &dspa_0_div,
>> +     &dspa_0,
>> +     &dspa_1_sel,
>> +     &dspa_1_div,
>> +     &dspa_1,
>> +     &dspa,
>> +     &nna_core_sel,
>> +     &nna_core_div,
>> +     &nna_core,
>> +     &nna_axi_sel,
>> +     &nna_axi_div,
>> +     &nna_axi
>> +};
>> +
>> +static const struct regmap_config clkc_regmap_config = {
>> +     .reg_bits       = 32,
>> +     .val_bits       = 32,
>> +     .reg_stride     = 4,
>> +     .max_register   = CLKCTRL_NNA_CLK_CNTL,
>> +};
>> +
>> +static struct meson_clk_hw_data a5_periphs_clks = {
>> +     .hws = a5_periphs_hw_clks,
>> +     .num = ARRAY_SIZE(a5_periphs_hw_clks),
>> +};
>> +
>> +static int aml_a5_peripherals_probe(struct platform_device *pdev)
>> +{
>> +     struct device *dev = &pdev->dev;
>> +     struct regmap *regmap;
>> +     void __iomem *base;
>> +     int clkid, ret, i;
>> +
>> +     base = devm_platform_ioremap_resource(pdev, 0);
>> +     if (IS_ERR(base))
>> +             return PTR_ERR(base);
>> +
>> +     regmap = devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
>> +     if (IS_ERR(regmap))
>> +             return PTR_ERR(regmap);
>> +
>> +     /* Populate regmap for the regmap backed clocks */
>> +     for (i = 0; i < ARRAY_SIZE(a5_periphs_clk_regmaps); i++)
>> +             a5_periphs_clk_regmaps[i]->map = regmap;
>> +
>> +     for (clkid = 0; clkid < a5_periphs_clks.num; clkid++) {
>> +             /* array might be sparse */
>> +             if (!a5_periphs_clks.hws[clkid])
>> +                     continue;
>> +
>> +             ret = devm_clk_hw_register(dev, a5_periphs_clks.hws[clkid]);
>> +             if (ret) {
>> +                     dev_err(dev, "Clock registration failed\n");
>> +                     return ret;
>> +             }
>> +     }
>> +
>> +     return devm_of_clk_add_hw_provider(dev, meson_clk_hw_get,
>> +                                        &a5_periphs_clks);
>> +}
>> +
>> +static const struct of_device_id a5_peripherals_clkc_match_table[] = {
>> +     {
>> +             .compatible = "amlogic,a5-peripherals-clkc",
>> +     },
>> +     { /* sentinel */ }
>> +};
>> +
>> +MODULE_DEVICE_TABLE(of, a5_peripherals_clkc_match_table);
>> +
>> +static struct platform_driver a5_peripherals_driver = {
>> +     .probe          = aml_a5_peripherals_probe,
>> +     .driver         = {
>> +             .name   = "a5-peripherals-clkc",
>> +             .of_match_table = a5_peripherals_clkc_match_table,
>> +     },
>> +};
>> +module_platform_driver(a5_peripherals_driver);
>> +
>> +MODULE_DESCRIPTION("Amlogic A5 Peripherals Clock Controller driver");
>> +MODULE_AUTHOR("Chuan Liu <chuan.liu@amlogic.com>");
>> +MODULE_LICENSE("GPL");
> 
> --
> Jerome

