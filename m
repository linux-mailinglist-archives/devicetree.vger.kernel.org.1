Return-Path: <devicetree+bounces-103948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0B697CBE3
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 17:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81626B2263C
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 15:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30451A08A4;
	Thu, 19 Sep 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=amperemail.onmicrosoft.com header.i=@amperemail.onmicrosoft.com header.b="DCErMswP"
X-Original-To: devicetree@vger.kernel.org
Received: from CY4PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11020141.outbound.protection.outlook.com [40.93.198.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05D01A073A;
	Thu, 19 Sep 2024 15:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.141
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726761263; cv=fail; b=mWDAnglsAmMkcZHDELCahGR/h4BBNQRx73y8lrJ9igbjM2Y0BQYlTl5TShZc6gkhSNLztqG/GdTqOO3MUlzC1LuvddnCntlV0DcwMQ0gvX4nwXJjWq5u8fo6Webf6d6ni5IzLY86fy6wrVtShwnZ2z701bzlHwZILQPJONXaRxc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726761263; c=relaxed/simple;
	bh=Mzckhd9V29P18ilpgLm/6XdxlqipDh92+1VLWygdvNI=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=tre3TtHy9jYHqdUJ9Gz0C43tiX2kAuWCAuBwskH48kfplwOiKq1uVrTZJ1s4OT+HH8EdSRFYw8Bbcwa1fzB/FfO9UiXkjpnKMcPT2CGT3Y8B9QvpNPGF437y+ysUNkZzO8EwCu6r/zaLoh1qr86f+dqsnXH2VHMfeYeVr7c2IsA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=amperemail.onmicrosoft.com; spf=pass smtp.mailfrom=os.amperecomputing.com; dkim=fail (0-bit key) header.d=amperemail.onmicrosoft.com header.i=@amperemail.onmicrosoft.com header.b=DCErMswP reason="key not found in DNS"; arc=fail smtp.client-ip=40.93.198.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=amperemail.onmicrosoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=os.amperecomputing.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+mqhXmo3dfvP35v2KBDPGYtNseZG+oW9s7JFhtMGgu0mCGzSDooUi4nUIsEYDqhD5ELhRnmaT0PKoZLi4WYwpjDswwFQ/33x46BTxmBBOZP/6t3eIX8bmlLlVJZij7O16i9H4zl2TMP7jBZlMHJG/UwdwNs2m7V6YgbrsRj95Z70TzeEaVT77GyShl7yOTWa3IAssdQXphO6C/UGK8v9ZjuuiJmkyngYYw40Sd6+fdL4mbZRclRBPifo/HmPfstderJLLQWwikJsHcyBpbnlCYZpO6wl5QH5GNe/820ytmC5ytCXLygy8fsD1cW9lrmHZqumRbizOjTAgSK+YD1ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NQlSMKWt6kUsQabTr0kF86UP88E7zGEznCzNMvq10uM=;
 b=dY3XRP5VAyHwnS2eAIygrRoyCPbIFsZ0MX6ppaVZIo82d7EfJku0Oym8jr6oexStuzv8ojUOLYG08IbCMLCCSME9NdJrRpahl9DbCujnSMed0uw50F+vXCjTxZnd8m31ksiePkNF0fEuzTsvg5f4c29AuZQLnhhSS0vxzk0i8/mUr9Jryc+LBpzxlM6/MZBVtvLhOiJlB8LfMi1GSOpbK01fBuBBTrXJD3mAhjKTmx+sfdutCSqYBhzNETM18QaOCr03E1ucp3WQTzWYJYUztdItv5xxW5U/5pSe1M9dJDhbkafWgEOKVSQ1B4ue3XYTmg1OtLHZFxkzhIOIeDfSGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amperemail.onmicrosoft.com; s=selector1-amperemail-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NQlSMKWt6kUsQabTr0kF86UP88E7zGEznCzNMvq10uM=;
 b=DCErMswPdFLFxgvVPXtYyj18HrJu+wYP0S/IwT1hlUsccjVOY4rfo9NslxhWado9hvy3XjiXsUPnTj5OhaoJmqdnIiVVi6dp9mPI+IPe+p/UCvBWpH6tXMWtgKbefBvi2yedbqjDcRMrUCUsihGXBFd1iQHSOsYBP+OrnUvLJBA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amperemail.onmicrosoft.com;
Received: from BL3PR01MB7057.prod.exchangelabs.com (2603:10b6:208:35c::16) by
 MWHPR01MB8697.prod.exchangelabs.com (2603:10b6:303:28a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.21; Thu, 19 Sep 2024 15:54:18 +0000
Received: from BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09]) by BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09%4]) with mapi id 15.20.7982.018; Thu, 19 Sep 2024
 15:54:18 +0000
Message-ID: <859c1b0e-e9ca-4dfc-a3a2-c5cceec22f26@amperemail.onmicrosoft.com>
Date: Thu, 19 Sep 2024 22:54:07 +0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: Add adt7462
To: Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski
 <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Chanh Nguyen <chanh@os.amperecomputing.com>
Cc: Jean Delvare <jdelvare@suse.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 Thang Nguyen <thang@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Khanh Pham <khpham@amperecomputing.com>
References: <20240918103212.591204-1-chanh@os.amperecomputing.com>
 <20240918220553.GA2216504-robh@kernel.org>
 <d825a93f-be5c-45b9-a8d4-5c412ddec232@amperemail.onmicrosoft.com>
 <2229b659-c753-4f56-a1ab-7e8984f9147f@kernel.org>
 <d1a2133e-92d2-492b-9a82-047a9fe80cf6@amperemail.onmicrosoft.com>
 <e9c4749a-cb15-44a6-ba6b-59beede257df@roeck-us.net>
Content-Language: en-US
From: Chanh Nguyen <chanh@amperemail.onmicrosoft.com>
In-Reply-To: <e9c4749a-cb15-44a6-ba6b-59beede257df@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR16CA0025.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::38) To BL3PR01MB7057.prod.exchangelabs.com
 (2603:10b6:208:35c::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR01MB7057:EE_|MWHPR01MB8697:EE_
X-MS-Office365-Filtering-Correlation-Id: 42801966-7000-48d5-35c6-08dcd8c35196
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?M1hwb3JDL0tOcllhNGxVcXlkWGdUSm0zQnVNUVY2TFJGNGJtVEtWbWkwQWVl?=
 =?utf-8?B?MlZEOEdUZmJsODN1d01UOUJHWWp6UC9SUjhWaXFQaEc1UzQxakdXbEZWaW9X?=
 =?utf-8?B?czFwWXk4SmgySEFvZkdZQlRMd09kYWM4WmtkekVXcmcxZW95SlVCNytOcjlN?=
 =?utf-8?B?SmpUYmtCamU5VWN1QWdqa3d3dGRkL09iVFFxMzF4TiswczFXc3JiMlpzdkJH?=
 =?utf-8?B?NHl1dUNCTVZpaWoweEdrOVBzMEp2cjE2cnJNbjlkbjJxT0tabHZQeXlNMVBH?=
 =?utf-8?B?dVpKT0RQMytkZXh6enJHRkZTblZnODlVd2s5MEM3eXB4T21mOU5nYkwySFpT?=
 =?utf-8?B?dmxBR0g2QTUvN2JQNU9jaVA2UDRWZzhwUzF4ZmxwaU5YeWFSWXoydEJ1V1F5?=
 =?utf-8?B?Rm9RVDBiRENNTmw2NlJ2QmhhK0FYcGkzS05yQS8yWTB6V1BCajRlQXRaTnF4?=
 =?utf-8?B?SXBZZld6dzZKZnBOa2ZKdm9HNDMxdHVCNGRQRHF5czhwU0FLNDBWOE9kdlZI?=
 =?utf-8?B?SG94UVdadWRJZWEwZmZCYzFHWGJsVXRUcEdDUmtOZ2xaMjlleEhOSTNIWjdz?=
 =?utf-8?B?dlA2N0hkTWxHUlJOVldvWnQ2V1BLT2VrVHpqUHpmTE1XVTNVbmIxMVY5c1VS?=
 =?utf-8?B?bkVJUmxQRUx6TUd2MFNTWTJkQ1ZXNUp4REFITEphYksrV2VyT0VqazJvNHdu?=
 =?utf-8?B?aEMyMnhhaC9CSXp6cCtDaFN6endoaTRVQU95UDl6LzZrR05ISjNuYm43M2FR?=
 =?utf-8?B?QlIvSkNTczVXcFNwR0wxckRQdmhqMnJjT2dVN2JUUFgzUmZ4djRuMGRUTXhU?=
 =?utf-8?B?ZVRLM2ZTQk1NUHF1bUVhVkpCazZJZTYyVkdqS0phSTdSTUJxWUJpRzhBQ1ZI?=
 =?utf-8?B?cDVQSWxTeUdvYWhsNVNOZCsvTGlERFBPN0QrRVd0SkpEbVpIdEVzK056Smlr?=
 =?utf-8?B?aXJvYStjQ2NySU8rM2VuV3FaODUyR0RxLzZYaDV4NjE1NVlXd0YwQVhGRzhO?=
 =?utf-8?B?UkVpbWtpNXRXa3RhUjJzMlRGRmM3aFdrbzNycCtvUTJ4OVY4SGlCNk5QR3Er?=
 =?utf-8?B?QnpBZ3I5RjdTbzZTSEhlTDdsdy92Y21qalJPd1pEOVBGa2dTUDJHNUt5QnVu?=
 =?utf-8?B?bFhPOHdaQVMzWkFDS09hdmh2cjBZVXVjVmpCNzJ3cVdmVFArT0FlbGRKU0RJ?=
 =?utf-8?B?N1R5NGF0M2pya2tiUDRVdnVyM00yK0hiT0ZLTElmdFd4d1BXTlJ5L2EvQ2pV?=
 =?utf-8?B?ZXl5Zlk5WUxWUWt0cE5GcGFkb1BvSHptUGh0Uld0Z2lrVkt4OVRTcmlGVkxo?=
 =?utf-8?B?SDZ1NHhER3g3SXNHVWh6VW1oMVBRVkw2MFVIMVlkTGJGV0hybk9IbFAwZ3JQ?=
 =?utf-8?B?SGlpRkJQSWpNME4wdVpCb2ZIY2NSelp6Rm04VWY2NEx0WkpYZEhpY1RaM0oz?=
 =?utf-8?B?eDIyMXI3UFJOb3ljVytUY2dlT20wWEVScENQeXpoeEF2Mlp3OGVUQWVweGhy?=
 =?utf-8?B?MlVsOHNiUDhIUS9pOTFvcHdZK284a0JKM2tvTVlKOHBRVDFEU2RSZmNKekl6?=
 =?utf-8?B?R2srTVp3YWZuVU10QkRJNmZhUDdkdjFFb2VnUFkvaHFCQkdlSlV1ZXpDU3h2?=
 =?utf-8?B?R3VrUms0anhpLzFnREhlV2JQZEhnLzRYUmEzYWF2VUllcTlEMDhCd0NyOTI2?=
 =?utf-8?B?T3hobVNVS2JEa21MNFhiZkhjaDltdW54TXR4MmZzK1V1ejRSUzNFajlwUXdK?=
 =?utf-8?Q?p2rH36VDNRhv6e7scU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR01MB7057.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7416014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TmVEekZxRVo1dGRFZGxCdTZwQlcwRHJITCtjQnFUNE5LUFF5Ty9wdHovZXZa?=
 =?utf-8?B?S1JXRU5ZTitOUHMxZnhxa3Z3QmpRYnJSMFhoRHVlNU13dlVhU01XdVlGUk1X?=
 =?utf-8?B?YWhsdExaYjJhbnBHdFdRU0pIeEx0cEcwWTdHbjhqaXFlUmZpNmcxNXJJWU1B?=
 =?utf-8?B?KzV3MFVjTnlCRzdNUzFEMGJjK05aU3MwMS9DMTV2Z21XVHdDTkJMNkROK3cr?=
 =?utf-8?B?cDIxR2NhdFZ4VkVYNHhHOEswVlFIblFVVFN3VnZscFJBeXJyR1ExcXBJdy90?=
 =?utf-8?B?c2lJZDNDSXlRc2M4K0N5UURXWWxwVFBCUEZTdVBVUE1WWG8vYXRtZHVxQXla?=
 =?utf-8?B?UW0rUlp4VXR1c1N6SkxNTUxuQ2NNOUtVZit0SjI3UTBPQTQ5U2FWUVY2dWg1?=
 =?utf-8?B?cmFVSWZ1a0RYcFg3b2NtTGprbktEWGNDaDlPK21WNTlRdlZBYlRSREFMTnNz?=
 =?utf-8?B?Y2t1SHlsUDZQdkdwRmRneUNhNEtyODY1aGl5ZE1jZk9mVllQdjV4U2d1RjM0?=
 =?utf-8?B?emg3dFVSS0M3VkROWnRmUGdVeUUyek9kTWtyMmxOa0pQNC9TRlJ1MW5ZK3RI?=
 =?utf-8?B?VVlidHNRL3hCYmVyOFRxczVnVEFleDBtVXNOTlRvZlJ5aXhjcnQ1Y0Y0V0ZG?=
 =?utf-8?B?TUMvZVZOdng5QTlYbUJWa2xkbmZ2YkJxckN3VXVrMDBkSFI2Z0w5UGFkVUdw?=
 =?utf-8?B?VmpkcnI0QWhYNkR6S0xPY01MT1ZSeFQvQ1FiM0hIejVYbDJUQ2NhVVYwWVJm?=
 =?utf-8?B?TGF4ODJ5SThWNEwycEFRd3JWeG1qdWUrMHhWQnJzQXdCSjdoNCtMUm5ZUDRR?=
 =?utf-8?B?Znpkblc3ZDJYUE9tNGpMNTlHYmo4N2Fib3JsWWpNL1RoeW5kQVdwNHBGcVV5?=
 =?utf-8?B?S3RDai9hNXpNVTcrVEE0ckhYaHFiWU9sQVFMYm9obGhRV2RxM3FWdXhUQmlJ?=
 =?utf-8?B?OGdRd3JiRWhmK1ZPNVRNeVNRZVZlRW82eTJON2VkZWhadWRLcE9xN08wRkMy?=
 =?utf-8?B?L1hTWUdiVlphb0JIWHZXSDRWRnVQbnZzeDN6dXFMT09NM25hQjMybFRkaWQr?=
 =?utf-8?B?MVkzcHNScVJsYzc5Wkp5VXBnRkoyeENTTEJ2bDBmMGQ1VHJhdkdDbVlOdHVy?=
 =?utf-8?B?NlVraUIrcGlUaHBWalFScTVrT0VZa05xdE5RZzVTNDhtdFFweXNSS1hGYm5v?=
 =?utf-8?B?RGhEVjZ1TXQwU0l2aEhPN0oxSFNXdUZmV3p3N2Y3T1hDWWFjUlpvRUNMTVJE?=
 =?utf-8?B?RytyVGIwdVg0MFRaazdQaXVyWVZKdGZwZk1YYXhIVm5NOENCY2dwbTBsU1pa?=
 =?utf-8?B?YXRFTkt5VHdFMGRMc2NPVi9YOUgrRDZtZk44Y2g1V2VhQ3plMzMrMGl6M3d6?=
 =?utf-8?B?VjNLMTgwU2c3bUxYSkJBNnZDRTIvNlhzWmZoVEcwM2UwSHhGSGt6UWFUYmRN?=
 =?utf-8?B?WXVXdE9VNTR2Ym1JODBZNnhSeDJtdjk2VVd2WkIwRHJDR3F5dFl0Umh5aERi?=
 =?utf-8?B?aWhPMTRRc3RuMC9VT3BTcWc0M1dKUFhhMzB6c0dpc0tNYldocmJ0L201VlV5?=
 =?utf-8?B?c25xQWhWeEdhSzAyQUozVHE4WDl6cjJNdGJxNUxXSGZadm1DZVQ2Vng2MHNu?=
 =?utf-8?B?cVdyNnRxZ0RqSlM0SG4xbTF1OXhjczU1TkhycjdDREdlTTQycWd2ZU9vQnFI?=
 =?utf-8?B?L1FtNXoxcU5HUllRbktxN2MwU1ZIdjdFR1IraEtUcHd0TlNRbjhIZGw5Z3ZG?=
 =?utf-8?B?cmJmUCtKZndURTVLK0ZvOHBLL21qRjdsYnFOV3pFemVHRFJncHkxWXV5cGRG?=
 =?utf-8?B?bjBnK1JUaUp6UlpFWFN6OWVsazI3MzhvY3Q2VkF4VHU1NVQrUnZoZDBjeWly?=
 =?utf-8?B?VkdGWTUrY1FIeC9Wa25neUo4cXZiQXFPenlGY3R2dWxIaTgrMFJLT2tYR0d5?=
 =?utf-8?B?TjNMMXQ4ck1Bb0xSOHpwT3FzR2QwMWd3eTFnczU1aktDbllYcGRDZXVIcExi?=
 =?utf-8?B?Z0toRjZJZ05LVy9USWwyTFcrcU1BZHNLck0rb1ozTWs3VEdRTzFDWG5mYk91?=
 =?utf-8?B?dCt2OW8xUE9ydUdhRkxsck5NdUtzS0dUL2hiTU5aZXhpUHBRUTNpQ0lGMlhB?=
 =?utf-8?B?NWhOd3ZHbXU5ZFRjV2ZRU1pFeTR3Z1RNc3Q1Mll0dUcvQ2daL1ZYZ01KKzlH?=
 =?utf-8?Q?idKw4p7HLoKlJQGvqggLgcA=3D?=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42801966-7000-48d5-35c6-08dcd8c35196
X-MS-Exchange-CrossTenant-AuthSource: BL3PR01MB7057.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 15:54:18.1206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R5KnKufruHkmK97sv1srz0InVUw4kRBr7c/dCf/Aadza0WxU81V4S+HGL5HkqAxNnp65Vc6wfAk25r/Wt57juj0fy9vJD7hrcJfXxElZNYBdNbRJse6dJpv2mf6Z6fBQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB8697



On 19/09/2024 22:14, Guenter Roeck wrote:
> On 9/19/24 08:02, Chanh Nguyen wrote:
>>
>>
>> On 19/09/2024 17:39, Krzysztof Kozlowski wrote:
>>> [EXTERNAL EMAIL NOTICE: This email originated from an external 
>>> sender. Please be mindful of safe email handling and proprietary 
>>> information protection practices.]
>>>
>>>
>>> On 19/09/2024 11:43, Chanh Nguyen wrote:
>>>>>> +properties:
>>>>>> +  compatible:
>>>>>> +    const: onnn,adt7462
>>>>>> +
>>>>>> +  reg:
>>>>>> +    maxItems: 1
>>>>>> +
>>>>>> +  resets:
>>>>>> +    maxItems: 1
>>>>>
>>>>> How would this work? 'resets' generally is used for on-chip devices 
>>>>> and
>>>>> a reset controller. That doesn't exist at the board level. A 
>>>>> standalone
>>>>> device typically uses a GPIO lines if there's a s/w controlled reset.
>>>>> That would be the 'reset-gpios' property.
>>>>>
>>>>
>>>> Thank Rob for your comments! The ADT7462 includes an active low reset
>>>> pin (Pin #14).
>>>>
>>>> I'll change 'resets' into the 'reset-gpios' property.
>>>>
>>>> The example in the binding will be
>>>
>>> The question how did it work in the first place is still valid... I
>>> think we might benefit from asking people to post their upstreamed DTS.
>>> Otherwise we will take broken or half-baked bindings, because we never
>>> saw the bigger picture. :(
>>>
>>
>> Thank Krzysztof,
>>
>> I saw the ADT7462 includes an active low reset pin (Pin #14) to reset 
>> device via I/O pin. So, I introduced a reset property follow the 
>> device datasheet.
>>
>> But the adt7462 driver has not yet implemented this property. My 
>> platform also doesn't design this pin on board, so I don't need it at 
>> least now.
>>
>> Anyway, I hope Rob, Guenter and Krzysztof can give me advice on 
>> whether I should add this property to the binding?
>>
> 
> Not from my perspective, and I won't let you add it to the driver unless 
> you can
> actually test it. Really, this is such an old chip that it would make 
> more sense
> to just leave its driver alone unless there is a problem with it. Why 
> didn't you
> just add the chip to the list of trivial devices ?
> 

No Guenter, I don't think I'll change or update anythings to the adt7462 
driver. The driver is working fine for me.

I just wonder about this property in the dt-binding. It seems I 
shouldn't add the reset property to the dt-binding.

"Why didn't you just add the chip to the list of trivial devices ?" => 
Awesome, I just learned about the trivial-devices.yaml from your 
suggestion 
(https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/trivial-devices.yaml), 
this is thing that I'm finding for the adt7462 binding. Perfect!

I'm looking forward to hearing Rob and Krzysztof's idea. If nothing 
else, I'll add this chip to the list of trivial devices in the patch v2.

Thanks,
Chanh


> Guenter
> 

