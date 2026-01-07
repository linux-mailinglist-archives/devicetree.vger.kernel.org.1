Return-Path: <devicetree+bounces-252243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 887BACFCA2A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98248301FB7A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD482848BB;
	Wed,  7 Jan 2026 08:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axentia.se header.i=@axentia.se header.b="N0OyT3Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023117.outbound.protection.outlook.com [52.101.72.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0D1286D7E;
	Wed,  7 Jan 2026 08:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774799; cv=fail; b=g5kL/y0noUoYeObV2IP28Ou10mq0LxbSnIpKHwa/TSRzn7ca1p6oGy28Y7FzRuUMRc/rCV+08fffl7sQO/Z9sDCZr0fcG6Ytqo441WGwRREbcPF45iqk9pfSKJ6oisEymf/sJKT3RTi0UYTU4SBLhDJ8nJ4mIUuUo846cF+xgCE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774799; c=relaxed/simple;
	bh=XEcblsyHT+ciIo56NFKD8ZPSeCANVioqeVPgQoplUuY=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=FRtvuWV7OFPJtVrsSH7Pw2l3jymr0oMtmd+Z2UqgT+XvIdnf6kUuZdKinvo+x+6eFF7vuEFAJWCpuug+48vIWsDwuedV/RWXkSTi0iy9Fh1leLk1keGAw1Fc3IhtAqpLYzv/4hXVYoHZG1ak+SiERsX1MQGGiJjDfVQBp2bAapw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axentia.se; spf=pass smtp.mailfrom=axentia.se; dkim=pass (1024-bit key) header.d=axentia.se header.i=@axentia.se header.b=N0OyT3Ii; arc=fail smtp.client-ip=52.101.72.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axentia.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axentia.se
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P+vZv24xdTCL6reN4by7yeN5xGSLiwq/np14YzDdPwutfD/yA53FKNh5mrOQpZ8OCMIuUbkCVZ+gFk7fGYVgrrqOc3LdsUCp8WsbWbJtE+JTruhnYHXZN5ZdmA5PtvzuHIkyEXrRiq3LQ7qQge7NgtACjaY8pnLF0u+/aGxAainfxbadAWyLI9DztEnujfrWoCQ/QlxYjVgaoHFkG0pr78bQpOXCqwiEwXOrgveQxEOxqCvFThSDCwjrYL1lIrYqKSK47W9bB9CcFYZACCHAWYd+3mfA4jtJanKjq5PrmT0CP8r4AOWe/5ZlYY9m7cgvJs3V1vl3+/9ui8l1LYz1Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lv0depTi4DWT3xJGIzF0/tCEDnZu59U/WxXwII93Q+k=;
 b=LRb0b4mRBjzR8VlxZtRGR8DuYxrE1L7dJlYPFSmP70qLbudyij4q0fVUFWOHi2M+o0wWe+XmT7rZvOeE858xNw7aChop22Ny2PuDtqsA60hymPQdim3ZJafA8Fq+bMMb7tLD2nHr2//BtBAKyhpsZrACaM9Z5xQROEAsHlgwNsk/XOOZPeDi1cnkBL+dCYXC4ttTAR/ilGT8pyHo8POip+lLN5Wiu+SXMev8xy3CQbfx4QxDD+k9yJip4PdnFcM8XOWXKCcC/zj+AxSXRHut66qcJUizgKyEVACypMI4OkVbwXoOlaT4dJDn8UtPa5vYfLbINDTYjGnd8fieYDAyYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lv0depTi4DWT3xJGIzF0/tCEDnZu59U/WxXwII93Q+k=;
 b=N0OyT3IiL/Xk8Lz+cZ0NntydElBaVQhWLWp+6x85s0wCATGvZPnMbH3bXY1dhqWyQMXX0Nza+7hD+5fuiQX9AYSyeFZTTdiwjoPb4Y1dkxwo/IqxxfCHFSxUtgSfvXbzOD5w2FI2ppCBakoWbztkVw6XbRgFMad/n2Ng89Oh2UY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from AS8PR02MB9235.eurprd02.prod.outlook.com (2603:10a6:20b:5c1::5)
 by GVXPR02MB11601.eurprd02.prod.outlook.com (2603:10a6:150:326::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 7 Jan
 2026 08:33:12 +0000
Received: from AS8PR02MB9235.eurprd02.prod.outlook.com
 ([fe80::32a9:a9e6:ded:5714]) by AS8PR02MB9235.eurprd02.prod.outlook.com
 ([fe80::32a9:a9e6:ded:5714%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 08:33:12 +0000
Message-ID: <235c06b2-f69e-4186-9b30-49fde7773a84@axentia.se>
Date: Wed, 7 Jan 2026 09:33:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 0/2] mux: adg2404: add support for ADG2404 multiplexer
Content-Language: sv-SE
To: Rob Herring <robh@kernel.org>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260105120117.57607-1-antoniu.miclaus@analog.com>
 <20260106190510.GA2546640-robh@kernel.org>
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <20260106190510.GA2546640-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV3P280CA0018.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::33) To AS8PR02MB9235.eurprd02.prod.outlook.com
 (2603:10a6:20b:5c1::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR02MB9235:EE_|GVXPR02MB11601:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c96916c-1184-46dc-43b4-08de4dc76498
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bThGdzlJc1pEWCs5clRTSWpQUUtWbSs0bW9aUzhQZkFyS3ltSHBPMHgzMjlp?=
 =?utf-8?B?R1E5djBPMFAyYllxRGV3TW1adHZmVkVrTUhrNlhrWUUvUlRxM2E3YmJCMnB0?=
 =?utf-8?B?M28wKzMzWmhtc1EraEVGK3ZiakZzbkd6REdXNUs4MjltN1B2SXBtdm56NURW?=
 =?utf-8?B?WWp2akpZc1h2eXdTbW1WaFc0Q0hSb21ZNUV5d084WUNYbmVscmFNR2VCZ0d3?=
 =?utf-8?B?Mk5IN0pwUzVOcEFQeGRna1lvYVJsMXZpNXFBUVRtellCQytyb2NNbVFqK2ZH?=
 =?utf-8?B?ejh3Q25uTmFKS0p2Wm9BWCsvRHdtZEU3WXc0cTRhS3FKQmNsOXg4cmhXdVd3?=
 =?utf-8?B?a2dWMkFIVHAyT1ZCelUzM21JU2ZTeWtOS0Faelp5QUZSTnNoNG10Nm9tWVBt?=
 =?utf-8?B?R3NwQjQ1YVlNNGxHK3Q5T2FJaGMwTnhkMDU3ZEwyYno3NDYyQ2k4NjhJcVc5?=
 =?utf-8?B?dTFzQnlRUHN4ajB2NzN4RjFVaUY1WEhIQlhnNmZ6N3dYdHV1MjV0amRoenhj?=
 =?utf-8?B?bzQyWGU4U3pxMk9NUlFJLzM1QU5xQ0ZORHZ4b2pJaVJNQTRHeXpOT0dTSzFq?=
 =?utf-8?B?MHJ5NU1HdFVHeHR1Sjd5dEZKV0VaZ3VpMkE4RUQ2NGx3ZVh1ZUpFR2JkL3Z0?=
 =?utf-8?B?UmU2bmg5Y1RMT3Z4ZjhhamwyaXdGcTY5S0xKS3JJYmpCcUdwL3ROUk5oUDlX?=
 =?utf-8?B?STB1MG1NZzVOanZZUjRoTVJGVUJ3aThvS1J0aTJiNVM4Wi8wMDQ3WElhM1B0?=
 =?utf-8?B?bjBYdytwaGd6NDY2MjdRbFFxcmg3TVJnRnBkY3Yyb1d6WjZvNklEeCtLRUZI?=
 =?utf-8?B?SVJ0bGwzMXpsdE01VUVtNGREVmx2U3B4UHBoZm04VmtOWExiaVc2U0t5bjZq?=
 =?utf-8?B?T2gxenpseTNHekkyakVLcnM1MjVydHFqcU9yMmpxaWdqQjBzWFdCbk1JNjFP?=
 =?utf-8?B?V2phR09HQnBZMXBWcFpCOS9ubFlnaGN5Wi9yR1hwUFpQcTdYK2padXZwRHQ5?=
 =?utf-8?B?Y3c3ZU84QVpyRHJacVBhZWhLS2hIZkpaRW9CR2lwQUpzQ0tsOFhjNmhOa0ZG?=
 =?utf-8?B?SmVvV3l6NXJIU05DTnliMHdpTUFhM216OXBEa1JSWmgrZWNhUVlCczIweGxa?=
 =?utf-8?B?ZGpYeUJWeUUrcUhORzc5bE5rMnYvZFhHa3lhNW95QXRScFNQdEU2Ukt1djFJ?=
 =?utf-8?B?RHZtLzFyV0pCVjNQUlFKdmNVR1NYYUtWZlZBQ3MxMmx0dTlLSHJjbzA2ZCtK?=
 =?utf-8?B?a0lBcStwTjNaRnBJdHcxdXdaYzNlSUVjVmxEZ294UE11V3g3eVhnWnllOE8r?=
 =?utf-8?B?VzlNSjlhZU9rZm5LZXNLN0xHTENZZEtDZnlkNTlkRGJIUUxXK2tJa0lhQlFO?=
 =?utf-8?B?ZVpnR2x0ck5EamRrNFZSUUdJa2V2YnBxelpySzRrdjAxNE81SEVmOVdZVGY4?=
 =?utf-8?B?aEhDdEF5QjQ4N0xiakdGaG9JY3huTE5GOE95VEQ5L3hkS2lJSDhwaFFYbkhE?=
 =?utf-8?B?eHNJWnIwWHFzYzV6aHlXY216TDZnV1l2YnpuVnNwbFdzMllmejAxWGZBNURl?=
 =?utf-8?B?SHNac1daNVN5Qi9YRU41SGZEUVNWVElvZjdYWC9XVGlOTTZJaVk4THk1c1gz?=
 =?utf-8?B?Y2NrYlpObVYvRlBCcXFhSlM1SzdGZlJUa09SUEhadzFQV3U4L0NoL2J4bzZy?=
 =?utf-8?B?WEkxdUpXb2ZVWU82b0o3dzEwcHpibG1YdUs5U0hxRWVId0o4TndSQVZsZUFm?=
 =?utf-8?B?cWJoQU5FN1ZCbXI0U3NLZHJwbmlYeWJHUy8ydURNYnJ6MVpBM0FVdHRLNFdQ?=
 =?utf-8?B?WHdSU2dPbDNzcjVWQTdKUm1XS0tYMnVlZWdGMWpQTG5kbFlLVjF3dkZCTzho?=
 =?utf-8?B?aEFvT2lreUtOblc1azg5RkN3ME5rNkpjT1FwTzZLVVFOT0tkdW1zMnJtczJD?=
 =?utf-8?Q?AIzVdZtI28Q7dt4pPe1m7U00EUHbtfTG?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR02MB9235.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bGMxQ2RrWTdkTkloYS9YZnJsUTg1UWhPWEFsM0xFVUN4Y2NUelo1SnVnVUNz?=
 =?utf-8?B?bmtCU2dZTFMwM3RoK2s3Wm1yTWpwN3lVM1RrNjJ5bGk1VWlHQWNEVVhDcXVm?=
 =?utf-8?B?TGZ6bm8xZng4SlhvSVhIdzNaZHM0c0ZybEhqMzJFeko4Q24yaGsrZm9hMnRr?=
 =?utf-8?B?WTR6YUprYm1PaWVQT0phZVpzRVRnZDB4SlE5TnFHbTdUYmwxUGdaN2NIMzZS?=
 =?utf-8?B?aVMxMTkyaWhsQWNRYi85dU40bkFpYW5MMVkzekluWXBnc2x6QjRCQWVjakxs?=
 =?utf-8?B?STJXRS96OTYxODk2UkdrK2VRME1xTnJGSTY2a1A3WjFOOGdhTTJGZnBTNGFy?=
 =?utf-8?B?ZDJGcFUxOWMvcEU1VHJzb1lxeFhSb2VYNzJkSHo5REdZK2tpUENXYnE2OWxC?=
 =?utf-8?B?VWZQOWFnQ1hHOGJSRjV6Y1IxWUk5encxK0xvMlVDV1gvUU5ENW83S2hGZ01V?=
 =?utf-8?B?cnl6R3NnUFpja2QyUXF6dTlJcTRSUURKSitDWmYxNmFPSVltSVhXOURMc0NX?=
 =?utf-8?B?eHUxZUErUWg0cURiYkVQazdmYUxmYktTUWNSY0dVZEl1YkdTUjRQTll5aHhm?=
 =?utf-8?B?cW9jRTJCMk9SbmUxQ3JUWEloODdXRnY4TVhJd0hlSFVqcU94LzZGMnVURGRr?=
 =?utf-8?B?WWVPWE81Mm54Mm94YndVTndnZzMyM01KWThES3VJQ2dsc3BrbnpUVm9QQy9V?=
 =?utf-8?B?UHpPTVFQL01XbkdrUUVxK1ZrQi9UZDJBN2tobzB5bXNNVlZGUk9BVDFMV0sr?=
 =?utf-8?B?N0VUeFZiRTNPNmtqaGZvZi9GM2VYRGROZEc3M0hKZGFKY2x0Zm5WTXJwUDFJ?=
 =?utf-8?B?Tjh4VE9qSkFFcFA2NUp2dzRDRWNSamVVdmVYNS9pQSt2eDNxL1loVURIWThK?=
 =?utf-8?B?anFuZ2g2SDk1YWtIeWx2UXl1VEZHS0ErOVlVWTVOZmZnY2lGdk9YdzBGN2xI?=
 =?utf-8?B?S1RLcmhtWGpWTWRjck5yT1ovQTkwcUQxQWJtZ2psTVYzU21BVTRHUTdzeENz?=
 =?utf-8?B?dTF5QnpFc1BvU3M3Y0FpdU1JakFpUzhORndYVnRIRmtCRGFBSXVGZnNISDNJ?=
 =?utf-8?B?STlXczhrODNSaG1qRVgwOWd5amZTQnYvNzJPOEs5T25qbDF3SlE1eFJDYklY?=
 =?utf-8?B?ZVJ5aWJWRlY0a2dQQ0E1ZWxYTkNiUzZ5ZkhBWmRJMjNsZ1FuSzlRbjd5eXk0?=
 =?utf-8?B?ZnhBRnVIbDN0ckV5Y0xndFBSWUYxUjk3aUhpeGlYc2FGV3VyNm5NUjBQVTRL?=
 =?utf-8?B?dWFXRUhlZmVTdll6aHExT1lBTW5hUm9DNU9aQThzUC9SbXlNbFh3MmV5QTIv?=
 =?utf-8?B?c0lMZlN5VTJpNEFLajhwVUcxKytNdFZwaWtldlhPZnVOYUt3WjZqTXBCSjNv?=
 =?utf-8?B?V2srb1Y3MnYzYXJzNml1M1ljWGJiYS85YThJdkhpaVFVTnJhOTF1MFkrUWpZ?=
 =?utf-8?B?b0liYkVVL2hITFFGRS93TDhEL1RxOXkxdGtSZ1JJSUhTOVdIRnI3c1lPUmsr?=
 =?utf-8?B?SVYyNEhnS1dQbmJCMThPTy8vdmRObzM3Uk1EYTJrUnNDV2xOL3VObi9vL0d2?=
 =?utf-8?B?c3FBVS9ESktHNTVlellzL3hsOGs2REgvYVdBV2lQNFF3VjRXYWJpak51dVp3?=
 =?utf-8?B?S1BqcFI4YzE5VXpMMFFYd3hwZWFWS0dwdnJYbGRWTWJucVV5VmpVblhNcEVx?=
 =?utf-8?B?c3UwenhldFpySW9ybVFSWmJyZmQ3U3N6d0FxcGhFK3piVVYwK1dJVm91TEFY?=
 =?utf-8?B?SkxuSEljNkE5M0FzeEZtT0EzUVQ3Mm8zTnN1b0VZcUlNU3ZCZUtLdjVHaHVy?=
 =?utf-8?B?b3NLYVd2ZkdHWnFBck53aXk0TU5yUDM0QU9CSnE4b21qYjlIQkEzdmhMdDRt?=
 =?utf-8?B?QnMwc3ROYXhTMDl4U3czdnIxdnkwUUhpYno4Ujd1dWRyUjZIcW9XeXpLc3dp?=
 =?utf-8?B?N3lISFRud2hWZ3hiUlhvOU12WWZwYUtLOUZzZ0p3ZGF0bW12c2NpVUhEQzBM?=
 =?utf-8?B?eVFxUkw3ckVoV1VzOHBBeUlSTVk0NGJYSWNqaTJPQkxWc0psS1B2am9SMzlM?=
 =?utf-8?B?c1lUWHNxeVY5WUxvNGV2ZnBWVDdaV1dIQStRTURpRzhjWWNmbWJZUGtmdXBC?=
 =?utf-8?B?RW1UbllQTnlBbnMxTWxNT2xyREFOVnNaVlNFSTI1Nk1MR1BPcmNxMUFkMVJI?=
 =?utf-8?B?UzhzdnRzQWY5b1RyemV1aEdUMld0NVdlcGhUa05icFBsbFpZSEszVDErM0gr?=
 =?utf-8?B?SFc2d1hlM0RzdFlpTFF1RnZTeHlJakZhMkdwRnBBL2xXVWFCZGNGSzZ1Zjhu?=
 =?utf-8?Q?xR9FmM4Gbfv0FAB30K?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c96916c-1184-46dc-43b4-08de4dc76498
X-MS-Exchange-CrossTenant-AuthSource: AS8PR02MB9235.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 08:33:11.7914
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0AxEpXeVVn8S85F3EaT1XItjI/r1/ceDzjg7RQt7cvsyB8JNBQAXQgCQ0pe1JJaE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR02MB11601

Hi!

2026-01-06 at 20:05, Rob Herring wrote:
> On Mon, Jan 05, 2026 at 02:00:29PM +0200, Antoniu Miclaus wrote:
>> This series adds support for the Analog Devices ADG2404, a 4:1 analog
>> multiplexer with low 0.62Ω on-resistance.
>>
>> The ADG2404 features:
>> - Low RON of 0.62Ω
>> - Flat RON across signal range (0.003Ω)
>> - Dual supply operation (±15V, ±5V)
>> - Single supply operation (+12V)
>> - Asymmetric supply support (+5V/-12V)
>> - 1.8V/3.3V/5V logic compatibility
>> - Break-before-make switching
>>
>> Applications include automatic test equipment, data acquisition,
>> instrumentation, audio/video switching, and communication systems.
> 
> Isn't this just a gpio-mux with the addition of an enable GPIO line? 
> Wouldn't adding enable-gpios and support for it in the gpio-mux driver 
> work?

Yes, I agree. Please extend gpio-mux instead of duplicating it.

Cheers,
Peter

