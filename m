Return-Path: <devicetree+bounces-312612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v9BRCFBpMWrNigUAu9opvQ
	(envelope-from <devicetree+bounces-312612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:18:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7452690E59
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:18:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kontron.de header.s=selector1 header.b=loKxbACR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312612-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312612-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ED15308A317
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07B943CEF7;
	Tue, 16 Jun 2026 15:14:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023103.outbound.protection.outlook.com [52.101.72.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C651D43CEC7
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 15:14:00 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781622843; cv=fail; b=PKpLnamuM+49mBjTUcWYJ+7wrmTtWQxJzhFAabexqNEdam7V3a3ji5vau+LU1JZuGorAhkb463tFjDz/jIBE2f9ooiiHUtBti93iHEAXc2Tr22DG4N/D1aSJpemRSHwi+aTMpj9OqsfkgPuwjbUrPTRyi0kF/JUK4vi05ofXB0k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781622843; c=relaxed/simple;
	bh=5MlW6eR/f6z9p6gzFIIfB73nsuyD+AuRw/0qAVL7wDo=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Zy0G2OC4PQGVfjHFpBwusixPOsmi2w2VhR5fL//t9bnQjvyWf24wQhhUXxrAZkXD5GrAd/UgLx8OuxvEprXqIioSOJgc5Y1nzpZzbpXi+PhdhgzMQwfs8F7ULVfPGuolVRS0OZQcodo6i6nHa/6Tsr4vsatk7pHoaXOSa0A+kM8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kontron.de; spf=pass smtp.mailfrom=kontron.de; dkim=pass (2048-bit key) header.d=kontron.de header.i=@kontron.de header.b=loKxbACR; arc=fail smtp.client-ip=52.101.72.103
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KeLWyj2FN3WcAGsiHHl5jo54ipuoviAnvJaVCUfOe7hNdMUKCFCcRc3McbeZEo95bA3lBvzGfNjZw3eqOuoGgbNHGff021sFNs1rw4IfnPJjkMiN9tjMUmU4qvZG3WtbGAjsE7nnL74tw0ngacQoKQCZWiIL6wf6hvhoxMeDh4JgsRXBzxErzJUeo3uUcuBDYd3L9E0aRWNMKG1z/JmiIn3Y68oi9ny4UTfR9qof18KkjzVHM4tL5b2z7sFlr8zwN/TVzjAvVC9E5YFtAI6C5RM8hPfG4pJ9LbcNZy3nkaXcaBYF3YfUgRylyxyU84UbrDMKpfjuRreFcz+nkyaEgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nt7JZFOeAJ6Ua8bj1VlSrXgLXleS1VG62V8AZ8cTyfg=;
 b=ctJyRPWBnkLu5m5OCALF6Bwq0R3XyX5eS275PHjsD4l90X8ibP3ywdZQAPrEde94L9AJQ6FZuCEr99dQBbnpjXC/QMy315eygLHZwnZEaz7QWLrc4/nhJJQj0QHEbIHZWBLL95eW3+483OVHJUPNtjXc0kD6IlNBlerx41SYLWt5ySHFdLIQ0yhE9+XvE3dIjb6iDVK76F5/va/mQORl966CcdTt/AH50p2UADVmzIPYqqTX/HtwpEK833/urqsAOtjRKc7rB5qqQoEWXOJeVtFazHPJGlE9kvBHLVAujtn84ALV3fZzaqUgghjOkLbMMlDAJczL03SADU4dVbVA6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kontron.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nt7JZFOeAJ6Ua8bj1VlSrXgLXleS1VG62V8AZ8cTyfg=;
 b=loKxbACRlFABphi3HcyEIWIoKrWgAaE/0aMJR2G9DBeAi3k28E2rw3Ajm0WdI/8FAQJ1WAejVCv0H2CTynkjGvysixwnXwc3ltj6bFwMBy20SjnDeRaOHrOw6Z2LhC37vLKYdZlfPlOdZQzztv+GuAXQHIatYMkLpnVjj6Zqwu4kf4Rv/BwNpEejrbq6WRUQ/j2x9oaMaNNU3HwEuPJYnfPTodzCr1MBJIU3Py69WoyNrMubJtLpZPXvm0NWvM13YFtrcJKcojYKSiVcMPziMOMIyB9HkoWjszRST9dNhDQGIgcUsAvP3WeCk5supbTovrjV/SpTBgZpMfAeIzs62Q==
Received: from AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1fb::23)
 by PA1PR10MB8538.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:44e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 15:13:53 +0000
Received: from AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a276:4ad7:962:da22]) by AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a276:4ad7:962:da22%3]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 15:13:53 +0000
Message-ID: <5f37abe8-3055-48e8-8a92-43cfdfbb72da@kontron.de>
Date: Tue, 16 Jun 2026 17:13:52 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] nvmem: imx-ocotp-ele: Support the ELE API
To: sashiko-reviews@lists.linux.dev, Frieder Schrempf <frieder@fris.de>
Cc: robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org,
 conor+dt@kernel.org, imx@lists.linux.dev
References: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-6-cb7f3698c3e6@kontron.de>
 <20260616120436.5908D1F00A3A@smtp.kernel.org>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20260616120436.5908D1F00A3A@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::14) To AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:1fb::23)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR10MB4277:EE_|PA1PR10MB8538:EE_
X-MS-Office365-Filtering-Correlation-Id: 52ecfd00-11f0-40da-d302-08decbb9e0e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info:
	CAmsbn3ha8SR37a0RNX6qvfii1f/KK14J5ZQ93GWIUB+x19q8yyRdNc0HXkxZ7iYg7BK/1RMPs9vD01L7wdF7nwgFi3qd98spAm5rIO01IJ4K/tslbpazdhuT7agzrEleIaZhngOhJBAja/TArVK+7+Sa9cfjvyKyZeJBqGa9vmVJoS5shQL6K08KD0vi71NsLcyvQ4yrEm+cu1i913+s0dLa38turwcf0pfX9nbRD4UKkYm+VNF2hQMOyZZcJV4O7IHDKW4CpntRuySiiqtSUJFqKEbwh4XfDDC2m2OrAOMCVBSBsd25Uo3jiBqhX7jNF56whrKYy8gIx7WfTthKmTb/wJ3X/PVbbJNApPdO+bpkA/lZUYk3K0nXoziNfIQJWKFyYVHkjAj8dGx/xAo+3wkZiOx0HrqSEYYMPYLcKn7+FPVXgujwFwfAiucHjpI4LjubguLlXF8mHB3J3GOdvmgBEOeOLLPQMhgeN5ZxD/QjCmU6gPnXMZma5XfFGxZpH43OeZS5I2Qd5i5nhZe43o8wGfGhFFsYch7TVxh0Nwdh24MzxTGlfSdm1O8QSxVaH+uAlD9JPlxde0rCkCdeaq49nwfgHDwQJTRswp3EO9WKtd5c/FBz/nQaf60H1TXMvpy7CoL9l+jrkslpdtLYk414eDUHsocvAudy80ePU/F4kUxlVKIMFl82MQOhGLz
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VGFyM3kyUkRDREltQ2VtdTJ4TmhPRm95Z2tvTXZzMHdnem5CNkw2RGVPcGhD?=
 =?utf-8?B?MFlaQ1BxNUQzSDVVcWdHUDExMFBCN0p4M2V2T1dEcS84VGhaeDFNaWhOaGI0?=
 =?utf-8?B?aUNVeGhnV0dWaUpQUnpqcHEwSzRpN1J2RjQ5QVNQSmFGTDZURS9qMkpPUmJ0?=
 =?utf-8?B?QkUrTWViZnlqNkxhSFlDQy9BcVpRNEduOXM4WlU0aGovZWIwaEVSWGFXMzFt?=
 =?utf-8?B?ZXNJamJoZ095aGI1ZWUwTmFyblIrYjlYeGhCdDZLOW9KQWZad1FEWHJuZEFz?=
 =?utf-8?B?SFFUTHFSRUxEaXd2b3hMcnBZT1MzeER4djJvOWtwS3J3T0hxK3RVdHlhVFBG?=
 =?utf-8?B?SG0rZEVwVnZTQmt0UFEzTW1LMkhxUG1VTzR6RWxuZzdjdUQzWk9IS3l3RzNr?=
 =?utf-8?B?TW9IeDZ0QVFqYzRjOXR6NlRxZU5uRzRDdzkxREJwbkM4N2tvcjdXRmRmL1No?=
 =?utf-8?B?TTdnZmRSMGRjdjN3NUo0Y3dZQ09odHY1bnBzUkhCT1grMG43NGFNV2cwSUJm?=
 =?utf-8?B?OVVlSmlibkFFWndWU2JuOVFZWUhVSVlMb3B1NmJ3QVcwdlNxMmFudlRKWFBX?=
 =?utf-8?B?bFVDMFR1cGRoWDlMemFZOHBwTjJJeXQwaHdML0pjNnlsWXRjUG11M2EwdmFP?=
 =?utf-8?B?bzFkZHJJc20yRXQ1bWU1NlNFZFBBdVVGUnNwWnRFNmFodmNnOGRXbHhDb2NX?=
 =?utf-8?B?aGx6dFdNMUVKSGZpN09XS2w4K3gzRlo4Zml5VnlUL1FRLzBmOFJXWjJNL24z?=
 =?utf-8?B?WHNxc0pzOGV1RVVCWTRjWC9XM0xwQVNtaEI1cU91eW9SZUVFWDdoRFRjL3lP?=
 =?utf-8?B?NTczTDFBT2ZiUlBWbzZKdk9TWk5KZzUzZGRQQW5DaWJ6VVZ6TDNuSXRwTTZ6?=
 =?utf-8?B?UmdCZmVZSzVMUWR0dndrZFJaeHNWWVo2ODRMc2xlL2ZwTi85TzRrbGJ3eTZh?=
 =?utf-8?B?UVRQaWdJOUQvYStOZW96R1pnNWh5NFJGeFpGY0VnWnlzZ3VFMHdTZkVPSUJ5?=
 =?utf-8?B?NG5RSjl1b0N4U1dVQjIyV2o4dGlFaGM1ODkwRWJxc0ZvejJiNk5EQ1p2R1B2?=
 =?utf-8?B?akE4OUNvZ3kyeUxFN1MzdjZiRytCOTRtcVp1dDdlTlBXS1gvaFlPTDRlY0RP?=
 =?utf-8?B?akNBbVAwUStVeWIxT0t0NjIwbEZGSUhCekRkYVFMVEZqenJKc1YrWFJ5OUEz?=
 =?utf-8?B?Tk9NblJoei9qRmtIalVkOUs4YmlyVWRzN20zQ3VtSyt4YlNLejZmOG1pY3dV?=
 =?utf-8?B?cjlyZjdSQ3FGa1ZhYmt6TXhSaUI5elpualJ2VkhPUUwvYjVXOVhrNGNoNjFw?=
 =?utf-8?B?KzIraXZ0a3lIVjFIRmRGejJnajEvZEtqQTh0TjRNaFZyYVhsZmdJTlJ0SUhv?=
 =?utf-8?B?YkZSMFFRMjJoMWxMOXpHWVVtUjJ4U0xKdW5kdDI5eHcwK0ErMFVGLzlBNEY5?=
 =?utf-8?B?TkpUZ2NSaUNBeHlwcUluajJtZThFSjlEbldRK1NWdkVqWTJwdEFGOTRaR0tH?=
 =?utf-8?B?anBINjJOd2FMRkN6T2lxRmFENFBXTzNXMHpMYU9FMzRCZ1FPQWpOQ1lVMW1n?=
 =?utf-8?B?SjVTNFgxaGZyZ05tdnBxVjRBeW1vcTdDNE11aGthK2dJdDVRUjRDekZnKzh0?=
 =?utf-8?B?ZDNCMkgvcGtvdDYzenRkSGRLR0Z1K3hHcmVicGRVbGtaYThQT3ZHdjVtTzJ3?=
 =?utf-8?B?RThTQ3NTdlZEMVkyMjBCS2l1N1RsMHBSZ3dGVVhoNVBSeWtkcjhnV0dLWFQy?=
 =?utf-8?B?cmZTMWwyNjBMdHdreE5JYUFqTmg2b2tsam1qVHNmblVpL21LNVdydktuZ283?=
 =?utf-8?B?cDRBUWlZdDliYTE5MTJpa2w5V1c5VW0ybzladGthNVZtcUFJRnMzejZoMDFa?=
 =?utf-8?B?RmZrVkllK00rQ1pNd3JOa1VnWEZ5MnFBNGdwZlc1UldqWFZCc2ZVdEJLTzJi?=
 =?utf-8?B?M1NMUFRFSC9od1hGanFLU1dBTDFOZTk5TTYwYlh2NWgxM2pNMERXNWd2dER1?=
 =?utf-8?B?Y0phV3JXVG4wTDVvV0VoUk1JR1kwVE5kdVJmVHZzSHBpU3cxT0lkYTRXRjlh?=
 =?utf-8?B?WU9TTVhIVHFqbUJlc3pnVGQ3dmdpZnYwZXgrNTRZY1dVa1MyMEd3bFBwemVn?=
 =?utf-8?B?bnB5RnVST0tqTzQ3enVzc3BxL254bWFiVTMralQybHQwWlI0eFJMYWF4ZFhQ?=
 =?utf-8?B?YkNLN3NjNTJiSmJ2WElYZlRyRXhhUm5oc2NqNzFZd3hFd0VHWkNSdnlVTUlW?=
 =?utf-8?B?NHA1VFVDVDZNWFlUV3MvRlRIaVZiQUJJejJUYitEcGVXU0dlWWVmYUY4Z0F2?=
 =?utf-8?B?aXpQWUJsSlpPSldPY0FyTHk4QWJ2QTlPUHV1MjBpcmtEYWtXOVNZVjZweHRU?=
 =?utf-8?Q?X4vjttBU/nJavMTk=3D?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 52ecfd00-11f0-40da-d302-08decbb9e0e1
X-MS-Exchange-CrossTenant-AuthSource: AM9PR10MB4277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 15:13:53.6548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: brF4qtUZN+ouS6zCMnieRp+yLTCOs8AaxbA6rX/RBvYElrthPjoD5w3gS8c1Qpm+FPH4eJ77Suvf2bEPS9BWWbaWu6XrUjgCY7mUkIJQlo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR10MB8538
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[kontron.de:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312612-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:frieder@fris.de,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[frieder.schrempf@kontron.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[kontron.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kontron.de:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder.schrempf@kontron.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7452690E59

On 16.06.26 14:04, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] The dynamically allocated read buffer `p` is leaked when `imx_se_read_fuse()` returns an error in `imx_ocotp_reg_read()`.
> - [High] Lack of unbind protection for the supplier Secure Enclave (`se_dev`) device leads to a potential Use-After-Free of its cached private data.
> --
> 
> commit ce01a1e44e5619e1342b66aca8b1bf267d01e93e
> Author: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> nvmem: imx-ocotp-ele: Support the ELE API
> 
> The fuses inside the Edgelock Secure Enclave are currently not accessed via
> its API but through the FSB block which provides limited access to some
> fuses. The ELE API allows us to access all fuses with read/write
> permissions.
> 
>> diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
>> index 9d3f94e35508f..92cc061b9b347 100644
>> --- a/drivers/nvmem/imx-ocotp-ele.c
>> +++ b/drivers/nvmem/imx-ocotp-ele.c
> 
> [ ... ]
> 
>> @@ -92,6 +97,19 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
>>  	buf = p;
>>  
>>  	for (i = index; i < (index + count); i++) {
>> +		/*
>> +		 * All fuse registers can be read via ELE. If the SE device is
>> +		 * available, always prefer it.
>> +		 */
>> +		if (priv->se_data) {
>> +			ret = imx_se_read_fuse(priv->se_data, i, buf++);
>> +			if (ret) {
>> +				mutex_unlock(&priv->lock);
>> +				return ret;
> 
> [Severity: High]
> Does this error path leak the memory allocated for p earlier in the function?
> 
> The allocation happens here:
> 
> 	p = kzalloc(num_bytes, GFP_KERNEL);
> 	if (!p)
> 		return -ENOMEM;
> 
> Returning directly here will bypass the kfree(p) at the end of the function.

Will be fixed using __free(kfree) in v2.

> 
>> +			}
>> +			continue;
>> +		}
>> +
> 
> [ ... ]
> 
>> @@ -152,16 +203,36 @@ static int imx_ele_ocotp_probe(struct platform_device *pdev)
>>  	if (IS_ERR(priv->base))
>>  		return PTR_ERR(priv->base);
>>  
>> +	np = of_parse_phandle(pdev->dev.of_node, "secure-enclave", 0);
>> +	if (!np) {
>> +		dev_info(&pdev->dev, "missing or invalid SE handle, using readonly FSB\n");
>> +	} else {
>> +		priv->se_dev = of_find_device_by_node(np);
>> +		of_node_put(np);
>> +		if (!priv->se_dev)
>> +			return dev_err_probe(&pdev->dev, -ENODEV, "failed to find SE device\n");
>> +
>> +		ret = devm_add_action_or_reset(&pdev->dev, imx_ocotp_put_se_dev,
>> +					       priv->se_dev);
>> +		if (ret)
>> +			return ret;
>> +
>> +		priv->se_data = platform_get_drvdata(priv->se_dev);
> 
> [Severity: High]
> Is there anything preventing the SE driver from being unbound via sysfs after we
> cache its private data in priv->se_data here?
> 
> If the SE driver is unbound, its devres allocations (which likely include the
> se_data) would be freed. Since we haven't established a device link
> (e.g. using device_link_add) to enforce unbind ordering, we might be left
> with a dangling pointer in priv->se_data.
> 
> Could this result in a use-after-free when imx_ocotp_reg_read() or
> imx_ocotp_reg_write() later attempts to dereference priv->se_data?

Will be fixed by creating a device link in v2.

> 
>> +		if (!priv->se_data)
>> +			return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
>> +					     "SE device not ready\n");
>> +	}
>>
> 


