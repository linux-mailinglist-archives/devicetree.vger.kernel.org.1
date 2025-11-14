Return-Path: <devicetree+bounces-238555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFFFC5C496
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 40F8F359CD5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123093090F7;
	Fri, 14 Nov 2025 09:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b="VjmWxJ31"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11021094.outbound.protection.outlook.com [40.107.130.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957C73090D9
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112206; cv=fail; b=bLeZbiGUv/1OREmfvbaP21U3OcnqRQFEl3MOAuARJIigggKwdmZypeo/F0ksv/WyEvsJIU2O83GAE0nhFD4fekFc/EXzFVofJmvXhV5wWV1JDhUM0C8ZT6b3DYg4YeRrYrOn30Jss1VdZ4On5/Y3JwJSky0kg9/RY/8X4/oair4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112206; c=relaxed/simple;
	bh=MbDymnbKC0FV5nXw3j/bkmGX2W0F4y71gj9Z7ZuB2T4=;
	h=Subject:To:Cc:References:From:Message-ID:Date:In-Reply-To:
	 Content-Type:MIME-Version; b=N9duu9rfKSpuEo1yiffe45WnMvGNbHz8U7WwDuNRPiS7BPaTed5Uzq2Z8zuegmB1SnSMVu+vaVzfv1flg3R+rBcZUalv7kuuEIJI2eLOyKeLcIBPrhhgz/3OLvHKOahM4MMmYklzsWpOEXVcFAkFl5k+EmwtsjZZxbjzjsmIdCM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com; spf=pass smtp.mailfrom=kontron.com; dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b=VjmWxJ31; arc=fail smtp.client-ip=40.107.130.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kontron.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fFKZLmR5HhPANJRI308SslRavfKmLmm5K9n/GRGbWZ3WYKnS5Ge5T7n9M2bK7WQC/Wc1P+a/V7ahOfzfdnLnWLMmo5bMwMBlwQa6xChcDjn61vlJUrchAXRTNJpKshQyzSk+gxIIG7BaiKtIQ/+DTk8KO02UkskfCnzDXA6rD/LFVsbS/jzzEaJ2ozxq7X+pdGZ92R650/p08OrxNYOyLHA4uycmlEPamjKgb/5jB0UtQbKV+zeZ0L8MCvQekBLjOaA7Mnv6C4gxr3wp2FtZlZaVSgqDyHq4Sf+l9qWp2Se7Gm/v7vYkHGLdfbtveZTmUI37KgsCs/v4Mijjxfo9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbDymnbKC0FV5nXw3j/bkmGX2W0F4y71gj9Z7ZuB2T4=;
 b=Fv0JaHebrnBrMrhayH7AL11Xvapt+1TCh7p6LXwsjGlnSrPgrZsYLRy/1WvaFUc70MIlPLl/TFVhPOlNxYUfU1BSoMbeqZg2GGz7VrsP/axB3hipLdF8lIQWrPxqkXs+lYzdhk2YnSVGG8bwGTqUmZEhDYNp3z25fYPCLjdm/DGoHghpTxqFyY5JhQ5iCPj/cgT5y6pstvDv0uLGIpnRi4lqIy/6b1fJPbQ2jHCW9dxRwja2qQ/5rHdMMNodBb4tt1yx5ocQsGImvx+I9bAC8IWY6ErB4nb+vQa/YVQm+VmiQyZVd4l9HtchNAT0HQ2bpG/ap7gStCdukV2GXtrBCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.com; dmarc=pass action=none header.from=kontron.com;
 dkim=pass header.d=kontron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbDymnbKC0FV5nXw3j/bkmGX2W0F4y71gj9Z7ZuB2T4=;
 b=VjmWxJ31VzXA2Z3Cz95pUT+hZ2LGUKTjMLtzChOw8BlGeGZ0G62XGM7CWm4JE332eP9O6m4CNHHlOIzcCvrcMBgjAOcCzEfXA5z4Y1PILbRj7nOzGON1+LeLxzNP490VjX4zp0GNYMp0xTpWARnrCl2nkXFmPIWlPa8v9mEpN9Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.com;
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:6af::10)
 by AS4PR10MB5821.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:510::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 09:23:17 +0000
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c]) by AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c%7]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 09:23:17 +0000
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add kfr prefix
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
References: <13a2c25b-9633-c06c-0c07-95157a2a9c1e@kontron.com>
 <2e04869a-29f8-4c2e-bfe7-0a4b22369a8c@kernel.org>
From: Gilles BULOZ <gilles.buloz@kontron.com>
Organization: Kontron Modular Computers SA
Message-ID: <f47ea697-ace1-4909-eefd-7829302fff8a@kontron.com>
Date: Fri, 14 Nov 2025 10:23:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <2e04869a-29f8-4c2e-bfe7-0a4b22369a8c@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: PR1P264CA0156.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:346::12) To AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:6af::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMBPR10MB9319:EE_|AS4PR10MB5821:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a230240-3b6d-4261-063a-08de235f721d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L3B0ZHR4eno3c3dsTnJYQUw4WnZxK3g3NGJWeXp3dllHL2ppNExtQUlSOWIx?=
 =?utf-8?B?SnZTZjBRa2xjcDRmZHczczNNbDMrWGx5TXROZGEwZU9wUmUyZUN3ZGRwRnBa?=
 =?utf-8?B?SGpoWTNJYkg1dTB0aDlwTFNtd2VCUG1zb21BUzI0TVZ4WnNMTmJmZ0d0Rm1L?=
 =?utf-8?B?dHRPUlhHTFJoQTl1djJTM1pDYlpsbHZmejJjbVl2ajZ1VVFWTjZneXBnZHJB?=
 =?utf-8?B?MkZXdHpnVkJIRW95WXcrVVRSTWR0RzdJZzVXc0hOQ0oyR3BqRStyc28xSS8w?=
 =?utf-8?B?dUMyd0hNZmlodkoxRndBOWJ1UDJpUkxtNTZURlVnUVBTWHFTM0VsVEthNjMw?=
 =?utf-8?B?alNzNks3UDZtTm1xeWlQTFU1SlYza1Z1bWZSWk1YQjhjT0kvM1lWUytzNzZ0?=
 =?utf-8?B?NXZVZXh0VElYQ05hOXdwclBiejgrMHhMTm9jZEE1Q2FoRjdUcjBWM2RQTHky?=
 =?utf-8?B?V1NaRTArVEIrdkllaStZaCtkVThBTXhKdDlNc01nQWpvbmdkbUZsNGhDZ21n?=
 =?utf-8?B?bCs3RmFqTncxZFVNYzFycnc4NXFEdXQ1NmZZcjcvM3lNYlFLOWdsa0FPR3RL?=
 =?utf-8?B?R2N0TGNKMGhOUmF2dU1qV21zdG84cXlWaU11WUcxdFpjUTY0NGRTd3kzR29B?=
 =?utf-8?B?dWlrVEJYTUtQVVdyTGdJRVpWYWxkTW0xVThBanpLOWlXbUdEa1ZvckZoTWFK?=
 =?utf-8?B?SmJCRTVFbUFuZFJIL3FYamRGMys5d1RUbC9xelBnbFYzV0FKQ2RsLzdKTHBs?=
 =?utf-8?B?dEtab2E2bmkzUytGWHNteUpIb3BUR3RoS09mNnpwQlQ1MlgvTHNLaDJGNk1W?=
 =?utf-8?B?ZmpaM2w2eklWWjBMb2ZDdjRabXloZmpDTURSZm9FOXNtU0xIRWxIRlRoSzdI?=
 =?utf-8?B?YTJGSUFMdWlKUEJNMXljNDM1YXYvTzBhZ2hkTk9QUUZ3cllaOUhVL2U3bmwx?=
 =?utf-8?B?cy9hVDNmMnhIUmZXckYveFhCQklHdVJjd1E4UjlTaWxjbEdxQTQ4S2tQaE1N?=
 =?utf-8?B?cnRnZkZEa2Jnc1ZEL3N6M0dvSW9MdmpMd1hXUGhqNDhUQVZ0Y3hkOVVWeTE4?=
 =?utf-8?B?eEJZR05Ic05OeWZ1ZU92VjVyVExxTHljVWp2YWpNbzF3QTNYRzFud2FWZ291?=
 =?utf-8?B?UTBwZVNVRTh2VnRxc21QYWJJcmNKRkUvUXdMVHpRZ0xyU1FJT0tFRXVBTGNX?=
 =?utf-8?B?aDgrSlVLM1ZaY295eS8xc1hYaHkwMTNLSlkydXJjWEtpNDRrT0I0WkJaa3RN?=
 =?utf-8?B?aEJlVEZNTlkybVNaN1pSTkl5aDQ3VGZJV1IvQVQxOHpTdTBXbjJCVWFUcGRt?=
 =?utf-8?B?VlNjcGhNbTRtMzNxOFUrZytSVURCa3lMZnQ2c0xsNGpnUjZTcXQvTEw3L25F?=
 =?utf-8?B?WnE3bDF2bVZsdlJaMVpKTmdTckR4RlpaU2JCTHh0TGIzbE5PTjJ0ajlrK2xI?=
 =?utf-8?B?bUtKNHF4NVZhMmJrY2luczI0d29LY3FZSEZHZkZTV1E5SzBFaUc4MVhNbmYy?=
 =?utf-8?B?VFZhM3ZoVm9sbVFjOEl5U3IwU1Y4NTZYQllVZ0lwc1dqcXZiajNneUdGRnhr?=
 =?utf-8?B?OU02b3FEWWpGY1JLNVJ1YXJiUW93N1RFbHpUTjdzLzc2c2NBZFVQUUlYS3E3?=
 =?utf-8?B?cDhaU0JaRVo5aUVWWDRBM1o5Zi8vWmgzemVIYU4rUjRrZURBQitybzJvVDA5?=
 =?utf-8?B?MlF2QXk1eWNwWGVidzRDaEM4bXd5eDdHMnNXK1FBd1kvZFJWY2dNQkNJblky?=
 =?utf-8?B?V3hFTkpFZlB0M2x4dHZYV1FtUzNuTzhTUUhGZHNDSHJBT014R0VpektZa1A4?=
 =?utf-8?B?R1RDZVcvMXhReUh5K3MwV2VzMGVTZS9ZZlBad21VRnd2OUVUL0haa09Da1VI?=
 =?utf-8?B?YmNONkNyQkgreTFjWU1hTzFpb0t6MHRsVnZaM3VBZXFmZHBuamlqU1ltUWFr?=
 =?utf-8?Q?2KG2zXgCpBUeqimDkQCQsrc/ppAZcPuZ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Qm02Z2FoTUpiQ05EVUFmTStMRDBWMG5neVhabXhKalpoMWI1eUZXSWIxUnNn?=
 =?utf-8?B?OUtYWndtQ1VySzBXZWpoQTYyY0M2Y0J6WHJlRms2UVpuRk5PZnNuQ290ZnRE?=
 =?utf-8?B?ZTVnS2FZRXpTNmhHRTc3cTlQTXE3S1pScTdITm1mM1RETmdUOGtJMWJvK0o3?=
 =?utf-8?B?Uk8vTEpmeEN3cW1ScTI3OERzTnFFM0xqV0hxZ1V6aHkxU2c1Mzg4YVROQ0Qx?=
 =?utf-8?B?ZzlaTkpwY0F4RlNVZWFDMTdsMXdTSG9YL0xkQkRPbzVOZGtMaDhaamd1ZXdP?=
 =?utf-8?B?dU4yVXZSbHlWOG1HNkJMMDB3dEZ6dnVidjNPK04rLzYvWENvcnpjcmFFOVZl?=
 =?utf-8?B?Mnp6SHVYU3hXM2lQMVg1WUJCam1TRDZXSytmSWt2WFNQelZ4YzBKdnNxYkNv?=
 =?utf-8?B?YVlQdzdsUDlUbWpkL3k0NnBuODlTMzUyZCsrbGE5OWVLWmVrd2pjS29QdFhr?=
 =?utf-8?B?cTNyenRsWWVvbi9BVzhGL0NxS2FLTENsbkI4VTlvNHIxZEJmdzRXeFAvQ0JU?=
 =?utf-8?B?aGZpalBUM05KTnJoU002OWdQcmdZbVZQSklRZzFYbDl2RmloUm1IV3JDWjhX?=
 =?utf-8?B?Q3NNMGtwRjJGdmtrUmpqZVoxd2p3QW1WSEVpNFE5bmF4WlA4QXI2L0xYUXpJ?=
 =?utf-8?B?Q2NSQnpoTlVFS244dlJPN3NQNTVtcVRJWlZ5MUV6MEcwbU12UzBFMjNlTFY2?=
 =?utf-8?B?dWk1Mis2S3AyZWpWSDk5Y0tuM3JZSTRmejBnMmlUTXVCZmlGTnIxcW1rZXVt?=
 =?utf-8?B?NnJ6Y2MzWkRQMjk3U2J5MnRtUjdkOVhCdXRNVVdxdmtDZ1NrN0M0YjV1blhM?=
 =?utf-8?B?TUxVbnl5UHUxU1VNME1BdVJIMm45OUVnYmF5NmYvZGwzVEhUZWZuWld4dURP?=
 =?utf-8?B?WkJpdVYxVjFISlQzYmJCdi9PT1B0djBxVldteGFJWVdQQW82bHdjeEdodTFK?=
 =?utf-8?B?NUlkZ094Wi8xaHRBNlM2VEN5YVVjVy9TVTl0WFo2UitRMUlHejdYYkFlbm5l?=
 =?utf-8?B?dEFHbVkybzU3YUlkQ0YwR0hkOHU4QlFqaVBCK3dXRjJCYi8zeUl5dVpWa3NG?=
 =?utf-8?B?S3MwaHBGbG9DYjA2eGNhc016cWpOdVRmWDdnRURtaWN6VkVwaFlZcHlGbmZj?=
 =?utf-8?B?TGIwQlVjVktSNXRSeEVZalh6SHU5UkxaT0l1aFplNldlYVBLWWVmcUVVRWl0?=
 =?utf-8?B?elZJREZqSzVWQU5oWGNwTHVCMmJYK0JSdU5nNmNMWjdSOWZDSzRzU0JHZnZn?=
 =?utf-8?B?MG9DcHFab2FrNDJFOUJzRjg2VjVuMlZlbVVHc21lMzg3aDgrMzdFSUxtaHFp?=
 =?utf-8?B?WC9Qbmp3cEpjUGdncmpRaVVYNXIyazhyd2ZUdHRCSjl1WTVoaWdxSDA0NVFC?=
 =?utf-8?B?UVVCaEQxUTcxRmtjalVWc2tYSGx4V05UeHhSSy82NXorYTF6NWEwS0U3MGor?=
 =?utf-8?B?NGR1cDNHU3RSb3U4c1UyUSsxVDNDWjU5V0RKdnBoT3plNFpKdzJ2bng5T1p1?=
 =?utf-8?B?bS9ubVZSVXlEY1MyMTMwdnR5NkUzNVdIYVMyS0ovTG9NVjJvZ0s0K21GV3RG?=
 =?utf-8?B?bDBzZUxjRE9sWmtlRGhWZG9MNE1KWSs4U0Foa0c5c1VvUWswakx4Zm5NejFS?=
 =?utf-8?B?YVcvc1RZOUxrcE5sZjlaMlpUWGI1T0c4ZTVlR1NPczdZZU1YWXJqWE14QmVm?=
 =?utf-8?B?RGJDVFJIVG5wdUcycjEzYktTOW5xMHh2ajVQVnNiYjNybEYxQmxaUEtiNXA0?=
 =?utf-8?B?Wkt5WHh0WmsybnJwZUlWb1JTWVJvVlpCZ2txRUM3L3BkTjhyN1EwcFJlYVFG?=
 =?utf-8?B?TXhpcVREaWhtcnF3UEw2S1pjakQ0Y2NkRVM1V2N6aVNXMERuQjVQS09xd05W?=
 =?utf-8?B?d2VHS2J5eWEvR1FmRnBEODlmbHF1MlROcTFIL0NHMG9xZmxYSit2dy96cmxo?=
 =?utf-8?B?bDVNOVhSQUZNZzUyWUI0YWRJTU5ZS09ETzRvVVNxSnlFNFZQMGhQaGtXMUJV?=
 =?utf-8?B?OUJ0c2JGZjhRTzlDU0p6MXhNMnVNUWtkMmpWV1R6WE1ZbVVvdktvZU1wWXFp?=
 =?utf-8?B?S0RnNVF4NTVJZ2RYY2RFcWlJWTNVc1ViZDZiY0Q1dFA1SkwycUlDL3h2QVY1?=
 =?utf-8?B?NG83UDY3Si9oczFYN2MxeVNMTkxLZmhoeGh0b0hMMmljSmNueGNnL0Q4dW9u?=
 =?utf-8?B?dmc9PQ==?=
X-OriginatorOrg: kontron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a230240-3b6d-4261-063a-08de235f721d
X-MS-Exchange-CrossTenant-AuthSource: AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 09:23:17.7422
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /nmF6frhqMoVHuKTfws2Sc5uVC1x5u8bxqK5fZuo8Wz5+36lYdny1HeuaHcZZC8JjvR/EH9ffiFlfgKv1f7EpfEkU9H4MaMrYyptarjCpz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5821

Le 14/11/2025 à 09:40, Krzysztof Kozlowski a écrit :

> [Vous ne recevez pas souvent de courriers de krzk@kernel.org. Découvrez pourquoi ceci est important à https://aka.ms/LearnAboutSenderIdentification ]
>
> On 14/11/2025 08:53, Gilles BULOZ wrote:
>> Add kfr vendor prefix for Kontron France, which is a single-board
>> computer (SBC) manufacturer.
> There is no user for this.

Hi Krzysztof,

Yes, there's no user for vendor "kfr" in kernel tree, but Kontron has
produced some ARM boards (VM6103,VX3106,VX6124,VX3124) on which we
ported uboot and added some entries in device tree for board specific
devices (CPLD) using vendor "kfr". We also provide a Linux BSP for these
boards with drivers using compatible = kfr,<cpldchip>.
My patch was just to reserve this vendor officially so that no other
company will use it.
Am I wrong with this way to proceed ?

Best regards

Gilles

>
> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.
>
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>
>
> Best regards,
> Krzysztof
> .
>


