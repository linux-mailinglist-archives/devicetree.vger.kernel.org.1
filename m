Return-Path: <devicetree+bounces-140817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB923A1B8E3
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E19CD3B03F6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589EF15884A;
	Fri, 24 Jan 2025 15:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nokia.com header.i=@nokia.com header.b="ZhVaACly"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11011007.outbound.protection.outlook.com [52.101.65.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C38D158536;
	Fri, 24 Jan 2025 15:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737731884; cv=fail; b=pFusAMFBHTp1c5P9Twjz7ZCZxxXgt+FOMpe8Id028CWIcqDwBtroiXUPuNS6zLBjgaNAVbT50bx77LPkfUfdI0kyzylhpHbc+ECofe1zmRp89C2uKUtn+76kKJRVrPoS+15EsQAu4BEQBxXhH/Eqt4yge+kAlCKLyq/pWzDga7I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737731884; c=relaxed/simple;
	bh=Y3c5A9A/RKg/iqpPaEyDbswxbaKLZG2f6aFy8sjvuoU=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=CE5QqORDxOpZbR+GPqyh80krSpICIaRgvDi+P5kQz6ED4aBthB5h18nNnkIS2YfSWdWJyaUtJeJQalrrfMRhLq7FIqChVsbv961/awYs9X7rSSN3t8W+6CIoA+ImeUTMuJoL6sc3Ji1ILT7H3HmxPfyZsljMZvofBXJNpNZ3XFw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nokia.com; spf=fail smtp.mailfrom=nokia.com; dkim=pass (2048-bit key) header.d=nokia.com header.i=@nokia.com header.b=ZhVaACly; arc=fail smtp.client-ip=52.101.65.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nokia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nokia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ggRFkGl4bzDD7cgu/IQtd+pf3Nzdw+GvfNLUyz1jOkGJm9azs12Cf95ecgGJus9r/dpvPUHc55cObgIcOnrbcW+7iFzKeOwgkvW+UfCz+mhW9OQBIQxUN5Ec1TaLvHA5CZhFxoymhslRuKHoAYTkY4yF6TaKhFnEqEv+z1QpHpS7xDwxsuLRbohiFjS6XwQ2iDV/CJK5yvyR3XindgkAoVY52vzjYUFG0DREp8NMvxBXSn7jDOYhc3blJS7sYnXE6EAxXntt1NziUcRaS8Web0YHAU5nfFGthLwXujSekxBdu5ezRG0ihP/CIt2E+/B6ONjZQZLtfzJnq3xeCKXgvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3c5A9A/RKg/iqpPaEyDbswxbaKLZG2f6aFy8sjvuoU=;
 b=UO49/zTQcR8EeIUYLeVElnqqshi8M1onWX6rOnSiNnD62RbsfuzDWWyncFjXCwCcEGLp/UOlyxgnvy+4nqjtLAYWRHHg7emihLCYIF4RkREM+sz9lLZ5OM0wH+ICd/r3cg8WxGIGJ8HaPq+Q0dW5TTyA73caFqR8A2lZ/5VxBtpmsLjxfGlTn0DICK/tdieijzqPTOKH1uF1WdXSO/dKP9Ys/ooQpVlpxPD1efIqwWxZ7WW9h5wenoQ5wgc77qCfEQwJv6M4ATTuJKMvhw08Nae3JVOg+km8KS+P4UQLwwZhE2WdLqVOg9daKZP7VMN3NgpVeNwdcUL4O/iebprjhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y3c5A9A/RKg/iqpPaEyDbswxbaKLZG2f6aFy8sjvuoU=;
 b=ZhVaACly+s7tx23G4yPfAfGJrIYwxz4exhur+UKojEMJ3OIZ5Yp8cPzBggtXW0ABvVmHojOsvkBOOGS5BWSaWq81GqY0zenSM7Aok1/BpNw5tTg1CexEf+Hl5xSrj9vg5Kb9W9lZfYEx6Iq2MmyFcS/Obvg+h5SdK56tTerrC72EBV/97cCGkhHgl0s9kL4m0F4ubNP/qLrojon+KeDCR5zFKb0wgSwcKy0YejL6qFJeHTgBkRMkXpd0In0+rKLL+fSXiH6YybhlabrOcNYmXyudhE2hsCkqo4NtjhGS3BEpew/Wed9DXO/1e3UW7okX9DnyOToq7xhH5eUjRfT5zg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nokia.com;
Received: from PAWPR07MB9688.eurprd07.prod.outlook.com (2603:10a6:102:383::17)
 by AS5PR07MB9797.eurprd07.prod.outlook.com (2603:10a6:20b:653::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 15:17:59 +0000
Received: from PAWPR07MB9688.eurprd07.prod.outlook.com
 ([fe80::6b9d:9c50:8fe6:b8c5]) by PAWPR07MB9688.eurprd07.prod.outlook.com
 ([fe80::6b9d:9c50:8fe6:b8c5%4]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 15:17:59 +0000
Message-ID: <0ef03376-9e3e-4b72-ac30-a8106d2a3b5c@nokia.com>
Date: Fri, 24 Jan 2025 16:17:58 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: Keep bootloader DTB when ACPI is enabled
To: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <6592d024-8d43-4b0c-8036-16df2bac9446@nokia.com>
 <CAL_Jsq+KhUj9AbUMAjDdFXKRCyotrLtn3kx4qynM1ao4YueCCg@mail.gmail.com>
Content-Language: en-US
From: Stefan Wiehler <stefan.wiehler@nokia.com>
Organization: Nokia
In-Reply-To: <CAL_Jsq+KhUj9AbUMAjDdFXKRCyotrLtn3kx4qynM1ao4YueCCg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
X-ClientProxiedBy: FR4P281CA0033.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::16) To PAWPR07MB9688.eurprd07.prod.outlook.com
 (2603:10a6:102:383::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAWPR07MB9688:EE_|AS5PR07MB9797:EE_
X-MS-Office365-Filtering-Correlation-Id: 446bf525-3bdc-4300-7a94-08dd3c8a4992
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eG5LWkduRnRpUjI5VzNJMDRrOFdhRDF1c3FvUFI2YjlkNzJ1Rm1WSlBPLzds?=
 =?utf-8?B?cEhLLzNzSDFmOHRNVHRMY3hxbTdpenU5SVAyZW1RVnhqdVRidnpHc2RQU0Qy?=
 =?utf-8?B?ZE9pbUxsZjQxTGkwOVZBYmM2Nk0wcFJlWjVQaFh1ZThhTGRZbmxxcnlHdHZE?=
 =?utf-8?B?SkxtSlRvY1hSZ2NOaG16aXBYaHB3dUpOWWNnK2xQajB5RVo0bC96SXJreUR4?=
 =?utf-8?B?WWVHVTZ5c1ZMWUFDL1FFL2NLOVl2bHpNSnd6UktXZ0NHRDBYT0FPS3l6VjNO?=
 =?utf-8?B?VU1TMUpSK3VMS0ZIZ282T0xpaFlJcWd3ZlpBTGtrU0JpQlkweHZUeUhpUDdH?=
 =?utf-8?B?RU9ieUM5N0dOTHQ0NS9SVVNjYTk3VmpCOUdkK0szaVJpQjZUTTRYMTZ3MXQ3?=
 =?utf-8?B?NnNzZ1Y1a1VucS9ZeVRPTUxTSEc2QlJBM0RkbUNxQnpqdGhzeml2c2d5NXFk?=
 =?utf-8?B?YzhvYlBhZnhuY3h1andkQUUvTk50bkRsMXF4c0tzcURKcXF4L0YzbTByM3lQ?=
 =?utf-8?B?SHdmTk9mWmJuaENyOFliUEZBbWpMeDkwaHJUREV0R2tEYWNBVG43dWFQRVR0?=
 =?utf-8?B?MU9pN0hJaUJHWURWZmw0MFpxNU5rUXJlY2ZkREl5a1BITDRNMXI4WGU4OFR5?=
 =?utf-8?B?TTVyQmdFWHEvN1UzK1dJYU01ZEFMYk96TkxSQzlVbUlZV1JoV0ZZVUthVDRm?=
 =?utf-8?B?eXJNZXppSHJDYVhja0lWQlBsY0N6NzdWQ3Y1MW1nY2FSK2t3NVExQ095cExs?=
 =?utf-8?B?eGRraGFMVTd0TnJPTExhNXlXaStyYlZYOXR1dENkL25UY3RITU93dmVVUXJz?=
 =?utf-8?B?WllFcFlFeE9EY0pKY2NZVE5FckQzMzlqWGdHbkpsNE12UHpSZUV6cVRUVitn?=
 =?utf-8?B?MG5MVE5tRTR0Zjc5bUhUZkRwRUIrb0gyRDdoajJlY1JXcWhlOCswd0tHbWFw?=
 =?utf-8?B?Y1A5M0Z4dytwVnNLQ0pOK3BXM3BXalFvQ3dDNTdIOGlGcnF0WXVyRXlZQ1NK?=
 =?utf-8?B?TWhCakpnYzJKZkY1ZVNtUTF2cXVUYmp1dmhQVTUyQ1NrK0JIMktKRExtcFl2?=
 =?utf-8?B?c3ZkdUZJZ3BpNWRzNUxHWDBTb0pNUTBTV0lBQzZpdVFGL2phaGptbVhtRndR?=
 =?utf-8?B?VnNkbTRmbUpsZlZJdnQycXhvNnZiUzI4RVBIRUlXL3UvVXpyYWpKYitZazg2?=
 =?utf-8?B?L3JkaTBuRXZsVTlmdFJpUHhRd1hBeE5zMCtrdFN2WDRBWm9CRHQvamlQZWV0?=
 =?utf-8?B?ZzdTTHdEdU1WSkJVdS9aNktEMHV6THJzR2pFeWp5eFlhSXJQTzJRV2IyL0p3?=
 =?utf-8?B?ZUNTSVl4cFFvMGd6NzE2YUVJNXI1M0pEV0pISVpaSUQ2S0VNZ015RklsZDlq?=
 =?utf-8?B?Nk9xSU5ZdlJlU2F0Njc3R29VUjEvMGlvVzd0dzhBMk93MVVMVURVVGRCclA4?=
 =?utf-8?B?MW5FTHRjQXFYS3UrN1dnUjNFWDUxd1BWZXNMdFNFVlAxZ2wyQ0NROGFLVlRN?=
 =?utf-8?B?Z2hJMmZCV0NTN2tmQUY3eWhuVUxhS1Rka3pvOC9LeVZXZTVQRXlYWHF6aWpF?=
 =?utf-8?B?K2srRVZoWWM5NldiYXhwNGZUVisrSUt1ejQ2T0w2OWRvTStJMFJ5U1VRUmdC?=
 =?utf-8?B?T2p2N3ZXRHR1Rm1DZTg5dlkvN2JZUjVTdnpHYWdzTUxpdXdYRzJRYjNKTzNi?=
 =?utf-8?B?M3dHdWtBMVZWbXNubkVnQTdvT3hYU2F5d0dKSFFYQUY0MHdJblhCcjBPYzZi?=
 =?utf-8?B?Nk5oUEsvb0RyTmlBSjFyUjhUNGZOeFZGYjhnd3N0YkdkejVrWlFnRCtKTklB?=
 =?utf-8?B?MVM1dFJGR2kvbWlGTDZDUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR07MB9688.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OTlQOFQyaUNRdkh6alVpY0x3cUNQQ0ZLVEZldnlnaUowZFpyalk4MWpJNEtW?=
 =?utf-8?B?R01qNmJzbGozYTg4bEgzWUY3c2s4U1Y5K2YzSm4rUEVISmRsSjdUZ04wZVYw?=
 =?utf-8?B?dGcrVnFzRmtDTjU3OXNJd3VhS0lHc2hzaUJTRmZZc3JsUXNWNXN0a0wvbjc4?=
 =?utf-8?B?SkxhTkpuZHVqcHc1YmlMOGRjNEwyZHVEYWFHVDM0MWlFNldkVmpTczJ3T0FL?=
 =?utf-8?B?ZEpTd3luU1ZTKzAySzUvcW9ud0tNa3IwMjlOZDg5Y08rWGRySWJORmY5eklx?=
 =?utf-8?B?UytQdCticHdlbHVmSGdWeGZ4eG5YY29pMEc0Vm1FYUhGRHE3TzBoTnVoVXdK?=
 =?utf-8?B?M2xkdWQyeG94THpqeWZyMnNDNlBUL01iYXpMRjNNcTRZTzlUS1lpSjY1THVm?=
 =?utf-8?B?YlFDSkpMWjhDQ3lKZDlReUpCak5nNDhOS1JibTRwTVRrd0ZZMGc1dzdxMkR3?=
 =?utf-8?B?NGtNL2lPdmFzL0JBeWZ6SC9ITjZCOWtaSVdGV2FPQjc4bUNvVXdxWGV6ZDVy?=
 =?utf-8?B?dm1nY2IzSnMzNW81a0JCNnZOOTcxcW1pM2Ryd011N2wzK0FIek9vVGh1SENq?=
 =?utf-8?B?YUhKYzl6c2N3Z2dpdXZvVXVDSzIvWnZMNTdja3I3QmRvL08yUTFkVWtLcTFK?=
 =?utf-8?B?d2FiMlpxVmJxTUxVQXJ3aWozR08vSm9ISFRBSGRncmhrZE5XSlY5SkZEdXA5?=
 =?utf-8?B?c2tTUnlVSWJlb1pzbzVEVlhHUTNUWmlaaXVUbEVQRlM1TTM2VzJGQWhIWGV3?=
 =?utf-8?B?MTNJWjYwbHZvOGMrZ1oyY1Y0MDNpNnZQSzEwTHYvTUYzUjJveG5McnJQamZz?=
 =?utf-8?B?dGYyUGM4VUp6ZlZXNmx4TTEyTHpEb1YyYng0amlzdENHd2IvVFRZWmRjbmM0?=
 =?utf-8?B?aDQvK1orN1dibjl0d2RxQURaTnkwOGhzZ1VWVWM5Umo0Y09sRlZKQ0ZheUJW?=
 =?utf-8?B?RUdkME1pQ3pFbnU0b291VUxEQkQ5S1ZCa2pLOXEwc0JyNksxNGsxUVNuL002?=
 =?utf-8?B?SkY0cWlLNWhnVFVDYlI5ei9HYlNYRHB2QUJBV3FqcmZwQ2pERnA4aS9QQjV3?=
 =?utf-8?B?aUthZmpMaGhDLzQzUThhOHVmSWNaVWs0Mm5VSU11czUzMGVOdTgrZ0JJejRs?=
 =?utf-8?B?L00zUmtTcDNHeXR6cEdFalQwU0xjVWFNcGExS1VBWXdnNVlIOGtYQXRMRFI0?=
 =?utf-8?B?SlJOclFXVEljc1JzUHNodDNqcUZOaVVYK1p4cTVhVTBRYTU4YTRtc0srNlE4?=
 =?utf-8?B?L1IycXAweTBSZ011b3lYdVI5Z0lpcnR0UzYydnlGMnlmVVBPVlNuMy8zU3Av?=
 =?utf-8?B?eEJJUUtTSkNzcUcyRms4M0twc2hmQi8zU2ltallNcnVoMkFtQmdpb2E5a0Jm?=
 =?utf-8?B?NThJcTBzVjBrTUV5N0FqN0Rlb29raDRWL2V2Qmh6Tkh6bHVMZFNOT3Y5OFRp?=
 =?utf-8?B?YmxiakpVWGlma3UxWFpYM2hUeDlrMnl3ZUZYaFNuRFIzelpSTU5ZRmpsb2t2?=
 =?utf-8?B?b0xXOEtaeVNFeS91eUJxMEJHWjRzMk41Z0doOTJtTVlIZVNEb2JmUEoycnNo?=
 =?utf-8?B?aHZjbXBVZVFOWTRWeStXTXIweEdMcVJXYnAzZlRManFTZlp5Q1h0YUl4OFla?=
 =?utf-8?B?OWNjQjIyOElHY3NNY1FmTzhjKzRhV3BVdHVkejdyRzFBVm51OUw3VnFoVkU5?=
 =?utf-8?B?aW5QcW5OaXF0enhWdEZiY08wYSs2ZU5EQ3dNL1ZKTDQ2MEZYZ0ZGL09kZ0NW?=
 =?utf-8?B?dDFXZjQ0eFpRenc2djJQNjNBSHRhUzdkU0ZzS0dwY2NhVHYzZDFsK04reXll?=
 =?utf-8?B?aFJTQmVkRHZjU1MzTFF6b1pFVjMzSFYxQ2JGd1I2ZnlUaWJGSmNRR1NzY3JH?=
 =?utf-8?B?L3p2cXpJZ08rVTZkSHNra2h6cEYxSzArU05PM2E2djYvcUlBbHRVTjRKbVov?=
 =?utf-8?B?MG9mOWIxbDJOTXNNZURWdzBOZjRIS1RWV3JOZCtzU1lJRUdqamgyMDA5WEI0?=
 =?utf-8?B?Q050SUs5bVVNY204ZnJ2aVNXWmVpaENseTJSd1pId21zVVlrWmVmWWR2U2Zp?=
 =?utf-8?B?RmJEbUV6NHFJY1lGYXlIb1QwN3FvVmVMZ0RubzRIb3JidkE1MEQxYUtMcVNi?=
 =?utf-8?B?Q3FURmhwMzNnRHpDZHVkak5oMFVvRUR1VWxGUUdSVWhXN0VHdTZEK05ZKyti?=
 =?utf-8?B?WWR0ZGcvQ2NiR29oNmhuR1dXalJFUnpaN3FWLzNTOVp5SGVyMit0aW4vcHJj?=
 =?utf-8?B?UzJackhrK05tK0p4d1lVczFmV25nPT0=?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 446bf525-3bdc-4300-7a94-08dd3c8a4992
X-MS-Exchange-CrossTenant-AuthSource: PAWPR07MB9688.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 15:17:59.5187
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eV/vTTSZiXoTa5t42DSyQcr45+rlY6Qu0xMKi/Ha36I4JUOvQ6TSTr9CcoB6DYMSoUvmYQFVYXK0hj/fpmn6VPWthSrqbpOvYCIOKMWBN1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR07MB9797

> I think both of these issues are fixed by this series[1]. I intend to
> pick up patch 2. Patch 1 can go thru x86 tree.

Thanks, I was about to send a patch with almost the same diff, so we are on
the same page here.

Kind regards,

Stefan

> [1] https://lore.kernel.org/all/20250105172741.3476758-1-dmaluka@chromium.org

