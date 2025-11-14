Return-Path: <devicetree+bounces-238591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEBAC5C8EB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E12784E4F34
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D119230F7F7;
	Fri, 14 Nov 2025 10:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b="N8EbKA0i"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022119.outbound.protection.outlook.com [52.101.66.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25807309DBD
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.119
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115564; cv=fail; b=kTICUZ7igfFltGwG/FuJ29pv46Zs4lM1BqsNA6rDU+sVjUrbFr0MFD3Be0t5Qyz3BilooE7zViWhLytDinNeF2mpQ5izBKAjPoppdnoVDQIU6EZqvv6WMGiE9W7vhGdW1jecji7nMjE5JSc58oTHMhKSvvb+5PmK4kkM5bQWSJ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115564; c=relaxed/simple;
	bh=e0gIAUN6Frkhgp/6SWFM/xbFpbaVHp8vbXNAlxpfv9Y=;
	h=Subject:To:Cc:References:From:Message-ID:Date:In-Reply-To:
	 Content-Type:MIME-Version; b=r9aztzjByLwYKvEy/zBhfce0oTzAoS8yoea9q/b8lTSfiba7OyIxuItwI978t43gKoKn/ILvPoA7SrA4fxU8kRnJ7SAAy1U6RiSS7GA44/ky5v0uuP8KzsPJQjTG5mMafbB8oe5P7xf2lMdvivbvle/Ma8kewD5bcU+6zLgSnRU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com; spf=pass smtp.mailfrom=kontron.com; dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b=N8EbKA0i; arc=fail smtp.client-ip=52.101.66.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kontron.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qIhjVdUPYEQWeqUsL5nAGtEhcDN90kBtWLGlu5IlYqbuMmBlu/B/Ivp0ot/PNxxHJujK/TaO7EoJ0oz/PTgG6F91ljfpxARXwrWnH85qAfWdTA+A9n3qqTdgcJvoQbtuk6DLOW33mgEWEWPPsCKjEh/HZ13Hivasdy2aEPXFYiX30rAmdssubyY5WHABKwShsCTRonq0PlPYvm+F5jHazgji2xFX1vprLGxMl6OiXxs/PhkAyRunlcv3XLKCam7K1KOhDBDoZlQ/HzJEBlM5X/AcLQ3oLe71pfQXNX/EwcDvOfNbYgs2aHaraNca8SnyG+3UOEit9b0mHC3SvF/0HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e0gIAUN6Frkhgp/6SWFM/xbFpbaVHp8vbXNAlxpfv9Y=;
 b=fYQhAVD/tKjTQjTWjcbtRtA3yM0J9n3sOCXa9x6jMMWcMty7Wl4nmwT9+Yfp8e2VDeRww+A1DrqeJ+78W8szfvJ1eDGS8/6R078vnRJi8FecCZlT2ZJfsw8XALPoAKDkBVGx6ADe6R7stKb1cNjg6sNv/aUqOc2Z7QU46Qru8KvT9HIvgmO9U4p7Vpst/aS40NgmlzpbEt+REcJVQ3ACA15EtTyrjqDq+uoLcAnzMAasqj62zEHMFlKLE9IVoe0v+lA3QRzMm03jFmVCHFvZDPDnQhw+VF3amOq44wH6vkHteQHMi/Pgd9pCm9dvq0/NEbG6sJE/6RjlYDGtipXCTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.com; dmarc=pass action=none header.from=kontron.com;
 dkim=pass header.d=kontron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e0gIAUN6Frkhgp/6SWFM/xbFpbaVHp8vbXNAlxpfv9Y=;
 b=N8EbKA0iJ1Wc8lSJ1cBst3/OPbOCiq1IXx5HviIgTibdikiMeASO4MIG4BXVcKrJxw8siQM1eGexQQ5ZktXIC49e3R6meCG5JGXqz+CPQHfzCtEMsPN60cBXKGSiIGK42Vc+h/a2pcVTI+XNHciyCsKP4S+BTcnW5eoxwAn+r5o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.com;
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:6af::10)
 by AM0PR10MB3636.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 10:19:18 +0000
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c]) by AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c%7]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 10:19:18 +0000
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add kfr prefix
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
References: <13a2c25b-9633-c06c-0c07-95157a2a9c1e@kontron.com>
 <2e04869a-29f8-4c2e-bfe7-0a4b22369a8c@kernel.org>
 <f47ea697-ace1-4909-eefd-7829302fff8a@kontron.com>
 <e9cd0bfe-e410-40c7-861f-274b1998be33@kernel.org>
From: Gilles BULOZ <gilles.buloz@kontron.com>
Organization: Kontron Modular Computers SA
Message-ID: <3635333b-689f-215f-0127-5d24c2b7a71f@kontron.com>
Date: Fri, 14 Nov 2025 11:19:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <e9cd0bfe-e410-40c7-861f-274b1998be33@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: PA7P264CA0069.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:2de::16) To AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:6af::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMBPR10MB9319:EE_|AM0PR10MB3636:EE_
X-MS-Office365-Filtering-Correlation-Id: 4174f49f-b802-4dd9-89fc-08de2367457b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?enRNWHRmUERKZG1KRkpEYjRLc2FmSnpTZXIyMCt1RmkyVFdUL1FyeVFFQ3FP?=
 =?utf-8?B?UVYxZWZDUTRZenhuKzdURk1XU0tRbDJmdlFyQlBMQmZhRFBoWUNOSUxqZDMv?=
 =?utf-8?B?QzZrbkN3b2VhSU5YSE0vNkN0WXBHcnRHNE5FeU5zNnR1OFBRTVVlbFNQSVh3?=
 =?utf-8?B?WEx0UmRkTS9HRWNtWDBpWWFrQkFIWDZVd2F6d0l5Z2xZQzd3ZDN2bzdtRG5S?=
 =?utf-8?B?MkF6c1RjVWtHY0srUkN0LzFTNy9ycGxOVGNEM3lLUVRFekxZZnVNSS9aT3kv?=
 =?utf-8?B?azBtU2tEazBuaUszY3dLUUZuRDBMcS9SZUY0MDNDTC9NU2xHZHhOYmY2MWtN?=
 =?utf-8?B?QURYWUlheGZaWmdnaFZvb0dRazF5elJ5ZlB2RXIrclhMdGlCMU9oeUtNNVJD?=
 =?utf-8?B?RU5mTVhIVVNEUDBuMFJ3NVlSdUpMZHlzOW15eGNCRVBJQzN0cDN0S2dOcVRi?=
 =?utf-8?B?R1NiVTliZkJVMXdNVEliemxkQm5DblowNStmZ05tQlRkWlpvZEpBempHYlhE?=
 =?utf-8?B?VlFQRSt5RzJzVmNNQ2dYVUluMVg4TlpiVndwWlpNeURIOFRtU2xvUlgxa1py?=
 =?utf-8?B?ekl0NlJCL29iUjZpOHh4VStqNzE5SmNyajMwamNSUlBnZ2RISk16cnlyNGxG?=
 =?utf-8?B?ZjN3VGk1V09LTlhuSnkzY1p4VENGODJyeC8yK05RYS9JZHJnaUxMMkhXMUhL?=
 =?utf-8?B?Y3FiR0lrSEdZbUNENUgwTHpJZmtEcTc1VkhTUStuajBZMGhNKzNMQVVMLys0?=
 =?utf-8?B?TDBUV2JVaVM0MDdQcVk4VFJmeGVNZm5obmVQZ01CN2VzajQxcE1COUpyTWQv?=
 =?utf-8?B?VGRBK1ZHSTN4OGcxb3IxaUxWT25sQ0EzVURPY25oNmdsUDR3MjdIQi9kdjBw?=
 =?utf-8?B?QzU0QjBUQ2pwNDYwdUlOVmFFVkMrcHpzRytldUFPZVc1aU9MRVd3YjlROHNW?=
 =?utf-8?B?MnZwVW5jSGh1OXFJU1RJQVNOdzMrY2pLbk5QR2cvVitUK1dxT1RyQ3U1R3JU?=
 =?utf-8?B?VEp6MTJ0QXI0eDUyUXNNTjBnTUVJZXpPdHN4Mjg2V04wUm5NTTdyNGpoWUZi?=
 =?utf-8?B?RWtoR20wQXJKV1h2djJMWUEyeGNVNWo3ek96eWVJRWY0Zlc2M3J6ajAvRnN2?=
 =?utf-8?B?SFZ1Y28vNlNxSm5xV0tvbmF4Q05LQXlCeUhIZmVEMHZNSWZVUEVQYkRuU3VT?=
 =?utf-8?B?TmJJZlhLNzhkM1luZW54ZkJoaGxaS1RNZVRTUCtzbTdsbXF1eXprMjNaVVc4?=
 =?utf-8?B?bzIxVGhrcWF1cFE0RDRmMGlSbUhDbEdCeFk2QkVDK1RrNERQVXBmRG1ReW1m?=
 =?utf-8?B?eVV4VXdsUGN4UEd2bFo1MHU4cFc2dUl3eW0rZE81S21WVnFzeWdJbXpBdFBW?=
 =?utf-8?B?ei9zM05oREEwaTlSdU00Wnp4Si9iZmdRY3o3NEh6VU9iTU9pOXVBL2RIK3Nx?=
 =?utf-8?B?em5yVHFKbFpJVmhEc2xtRDFORzhzSFU4blNxMzFOb09WeVZCSWc2aWNZZE5D?=
 =?utf-8?B?eHdUekFZYk9hTmJPY3Y1bEpRMmdBc0Irc2cwTGFQcGhMQVBkVkN0RU91TTRq?=
 =?utf-8?B?ZER3ZkxibTlUdVdSSnlnQTlSK1BNWkZSUWd5ZmlPZzdzSVRZdEhSNDltVUIv?=
 =?utf-8?B?ekxhcVRic0IrcEtwVFFRQWdaTUJBb1BNcTFBYlNnNzR5QS9LR0F5Z3g4b1ln?=
 =?utf-8?B?ank0Mkg4a3J6ZXhhZC9KMDVaUHhTWXFlNityVlJ3UGx3T1pqSWdRUjRIMG5i?=
 =?utf-8?B?MkVFcWFBSnZlUWJKRzNoc3ZnYmp6ZWJVZmxYbFQwTnVCa24yK2laNHJSV3VT?=
 =?utf-8?B?U0lOY0VXWHR0SGh0aEJ6akF3djBxcDhQZmRoUUI3enNLYVEyeXRITTdNUTls?=
 =?utf-8?B?SnNkYUs4dk5rRUxPWVRmWUZTUUN2bUNBWlR2Y2NGeXJKTUR5STQ4OTB5bFlH?=
 =?utf-8?Q?kW7hhN5jHZ9aqI7+ZAounzRTkYmBu83a?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a2NtUUZmR1FWL095b0ZNSXhaK1hIbzhta2ZxNHJ6Nk9ySE5EVVhPZ0JtZE5o?=
 =?utf-8?B?NTgzL1duUEx4Y0ZOZnVyZUpINzhpTmZVNDdPbzJnTHBGMFFTSTRKdVU1NTFi?=
 =?utf-8?B?WUc1ZHpvTXpkYTBnamVMTHIwT3BCOWV3cldqdGtvWDJsdW5kb3ZiNWRxc25J?=
 =?utf-8?B?a00yUmhzWmtjcmJzRko3NzBoNEZELzZySERUZjJRc0JSSEVxWVVSQ1cxcDFV?=
 =?utf-8?B?WkRPL3pIOFJTSGFWbm8wbkJqbG4yY3hUaTA5bkpRQzJNUmdGcDdjNkVQNmhw?=
 =?utf-8?B?MUhRUDNvOEl6MlgxM2NIWm94WXBVeVhFN0F4TnNHSDJZY2tnVEw1Z2xoT0xQ?=
 =?utf-8?B?OFdVQk1iNllRRzNQQmhHMG9yK28xMUlmNmRsRE93aW9sTUlvbm9oc01kSy9X?=
 =?utf-8?B?WkFaMnRmRTlzVFo5NjhjbGQzOXhtQUZDZng1VXpxWDVTLzh3dTRaMURwbm5l?=
 =?utf-8?B?bTdHZTgvU1h5OU9SaS9QZlZleG9ZLy9yc0FJV2QxbGVEYlk1ejYzTDM5eXVn?=
 =?utf-8?B?Zld5Zno4MHZadGRobUY3bmVBVTVNc2NsQWE0N09oNW1IVzk3SjN3cUNVRTNU?=
 =?utf-8?B?cmhVa0RrWk42N1Z2cjV4ZkFTaE11Zk9zRFVWVjVFTHhUWEJXckhoTGE3aG1Y?=
 =?utf-8?B?TFpIaHo2TGVkdXJPUnB6RnJYV3ltQjB0Qis5MmhlSVh1YmwrL0htQkkwVWlB?=
 =?utf-8?B?UDRabjBCZ2tFZ0p4Yll3empMUXNSVGFjWC9zcWRYUFNQZTFiMnNCL3hnRHV6?=
 =?utf-8?B?Y3BhbWU1RlR6NkYxYlg0OUhyRlErMlhETk1vVS9iaXIzNzcrYjZpblpoYXBW?=
 =?utf-8?B?S1g0SFMwWlR4MERQcFBmZW9IQ2owRlpWZ2JSQ2ovWVNvMVAxdGhjdUk3NG0y?=
 =?utf-8?B?eUxCK3pEc3ZkQjdHV0g2ZERMS0VlekszMjV0WVRjYTJxV252M2VjM0V0VnVF?=
 =?utf-8?B?NERuRWxaMDUvWWNtNnVUVGpkVmtSRnpLVEQ3aWZYWVk5UHRVV1liRWRranh5?=
 =?utf-8?B?bUZMT2NrYy9RUTZjSFMwZGVCRytHb1pmSjNtVmFUQytOWU5GMWc4RThBd1Bn?=
 =?utf-8?B?QVM4a2Y4b0NQL1Y4aGhTRmhrUC9TTWNDN1Y5T0IwYzU2cE4vOEgrSlA2dFNW?=
 =?utf-8?B?T0VEdEFFbjFTRlk2SnZQWS8zWVNuNXdQdHczY0hOWXQ5QTBUK0tQQnhDRGp2?=
 =?utf-8?B?R0d0UEp4RFRtaFAzYThRanFnZVg4eUhFVzVhYXE1Rm5YOXdyWTQrNFEzeGhC?=
 =?utf-8?B?N1BpdzFJSTVEK3lOZEw4eXUwUEoyNFFJb0p3ejRLVEs3alJMTGR3UGlGbW51?=
 =?utf-8?B?am1VZUgwUjUzY0pDRkE3cG1qVkFaeGQyaWdjKzJZd1RuOVNiaFFnSjEwRkNl?=
 =?utf-8?B?N3YyWjlYcE1IV2JMV2VFZWV3c3A5MnZtYTJ2TklaempJUER1dTBMTW1ySVlT?=
 =?utf-8?B?V1ptSnFlWnFjMGRTQzNEMVgrWU9XdzlkMzgxaUIyQ2NCTUIvV0RKTTJHSms2?=
 =?utf-8?B?UTd4T25oOFJ6NSs1cUp0cWFNa1YrTDBMNWlIMDB0OS9hOTNxbkZvWmlPendk?=
 =?utf-8?B?WnZZQWZ3TWlxMWdZZ3hBS3dlMUFvSEZSSjJQMHdnTXRJalR3L2EyN1VwNHQr?=
 =?utf-8?B?RzdWY25DSU5WU3dWWkRuMkt4NHB5K1JZMVRtS2ZvRXE5eTlxV2llZlRpcXV1?=
 =?utf-8?B?YzJqQkxUTFdpRElDU2hkWWhUbU91YmhjZW9DUXBCcmNXM3BvcXlRR1Z5WWpL?=
 =?utf-8?B?RjF2VzFEekdwNFlrQ3Z4K09ORG0yU2hMWmFicnBKanBTV2R6QUkwUHJXdDNj?=
 =?utf-8?B?SjlPN09iYm41WE41bU9XL2dYcE1TaTAvUFpob2lJQThPVGZFb3R6R1Y3czJV?=
 =?utf-8?B?R3lUTVVHeEhBdzNZUDg3REhiaTJ1S0VSdFY4VjZKQVpDa3Z2bmlxZXhaOGZ2?=
 =?utf-8?B?Ymh1RU9BSGFmZ25KUkNOYWp3V2psV1A1NEdGbXZlRVlRZ254dEovK1pGUGp2?=
 =?utf-8?B?dmh5RDlZRUF0Y3pseEtmVmUvRFB1TjZqR0xnaUNCWjlNZW9oQm9SUzZTdVM4?=
 =?utf-8?B?RkpTalR1cFNBdk5oNDZlbWcyb3RqRGhZalN0Yk5Ga3JvMHVkR2xQSklQUGQ4?=
 =?utf-8?B?VExmQUUxZ2tOdk9ZZXJaVk1oOXUvWGpROUM3WllUdkJMLzQvbDFubjFvWXEy?=
 =?utf-8?B?WkE9PQ==?=
X-OriginatorOrg: kontron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4174f49f-b802-4dd9-89fc-08de2367457b
X-MS-Exchange-CrossTenant-AuthSource: AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 10:19:18.8354
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/eei8KbnsRKkERJ93jJ8r9qvt8ORXAt9O3G0wAELgHWum0L4JtSMEbkRMM+cUvUTsznHPkntQx9vLTVt/X/EwsxfY64YmQVhIPq2yRBLsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3636

Le 14/11/2025 à 10:32, Krzysztof Kozlowski a écrit :

> On 14/11/2025 10:23, Gilles BULOZ wrote:
>> Le 14/11/2025 à 09:40, Krzysztof Kozlowski a écrit :
>>
>>>
>>> On 14/11/2025 08:53, Gilles BULOZ wrote:
>>>> Add kfr vendor prefix for Kontron France, which is a single-board
>>>> computer (SBC) manufacturer.
>>> There is no user for this.
>> Hi Krzysztof,
>>
>> Yes, there's no user for vendor "kfr" in kernel tree, but Kontron has
>> produced some ARM boards (VM6103,VX3106,VX6124,VX3124) on which we
>> ported uboot and added some entries in device tree for board specific
>> devices (CPLD) using vendor "kfr". We also provide a Linux BSP for these
>> boards with drivers using compatible = kfr,<cpldchip>.
>> My patch was just to reserve this vendor officially so that no other
> You have entire commit msg to explain unusual things. Your commit msg
> must explain WHY you are doing it so we know WHY we would want to accept
> that patch. If you do not want to convince me why I want this patch
> then... I don't want that patch (please watch Greg's talk titled that way).

Sorry, I had a look to the mailing list archive and did as another developer
did to have a vendor added to the list, but his patch also added new drivers
using this vendor, unlike mine.

I also did not understand you answer "there is no user for this" but I
guessed, I hope right.

>
> Anyway, you cannot "reserve" prefix. You must reference here the
> upstream user, if it is not obvious.

With "upstream user", do you mean a driver in the official kernel tree ?
In this case there's none : we provide our drivers out-of-tree in a BSP package.

>
> Plus I am pretty sure Kontron already has prefix and there is no point
> for another one. How many companies Samsung has? 10? 20? How many prefixes?

Yes there's already "Kontron S&T AG" but as Kontron France is making very
specific products, I thought this was possible to have a different vendor as
for ACPI/PNP ID registry where Kontron has four entries. Maybe this rule is
written somewhere but I was not aware and did not see device-tree vendors as
a rare resource.

>
>> company will use it.
>> Am I wrong with this way to proceed ?
>>
>> Best regards
>>
>> Gilles
>>
>>> <form letter>
>>> Please use scripts/get_maintainers.pl to get a list of necessary people
>>> and lists to CC (and consider --no-git-fallback argument, so you will
>>> not CC people just because they made one commit years ago). It might
>>> happen, that command when run on an older kernel, gives you outdated
>>> entries. Therefore please be sure you base your patches on recent Linux
>>> kernel.
>>>
>>> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
>>> people, so fix your workflow. Tools might also fail if you work on some
>>> ancient tree (don't, instead use mainline) or work on fork of kernel
>>> (don't, instead use mainline). Just use b4 and everything should be
>>> fine, although remember about `b4 prep --auto-to-cc` if you added new
>>> patches to the patchset.
> And this part you ignored or accepted?

Sorry by I did not understand the "from-letter" : I thought this was just
a reminder, not I made a mistake that had to be fixed.

I've already submitted few patches that are now in the mainstream, but as
you can see I'm not an expert in patch submission and I try to do my best.
But up to now I never had a so brutal and negative feedback.
Sorry for the overhead.

>
> Best regards,
> Krzysztof
> .
>


