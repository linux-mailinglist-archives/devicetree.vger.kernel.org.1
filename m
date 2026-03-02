Return-Path: <devicetree+bounces-270183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGnjGdbQpWm1GwAAu9opvQ
	(envelope-from <devicetree+bounces-270183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:03:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEFA1DE2E0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:03:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E18A83025E08
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 18:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75113128CF;
	Mon,  2 Mar 2026 18:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="VtXDX6cS"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11022143.outbound.protection.outlook.com [52.101.48.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8012C032E;
	Mon,  2 Mar 2026 18:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.143
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772474579; cv=fail; b=tU7ZaHMDA6IrIzeXMZpkK3n1YoeKzYXt/igUFlL7YmEfzRa90WboFdjq9fy636IOkg77UW+7plFaZ6G9gFmO9XRAzj8Wq87/tN3yDCpnZ5iGkMzUok2z/KMWZWNryY9D93GW++RsJapsLxDmGw0kCxp1590vnQIZgN3sJx5PS0I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772474579; c=relaxed/simple;
	bh=31zq5A84Pvvj895gih1il4NyBIXtizPkv+CyJBx4bcg=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=JlxhvwxJT1mBNWEGB/fTcKh+lhJlJSa7j8g1sV1h6la5UDJtZ9FykCoRcK9Tx8gK7bpcSNKyK6Tma8rJPPEhRVvV7+jFo/XTKrz2+Y4wK8Smk87uCfGqUL4jy3JqZe3E5GBFrGGiODJ5EOyJoUxuvhgNSuJH2Qw/M1Y4Vpgjmj0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=VtXDX6cS; arc=fail smtp.client-ip=52.101.48.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZOaH9+Gfp8PtyhKIN1OfKjUnN5aSUfpmnT/s3E2fmdQgZMlHAzn2o1ERPiSfUX2utCT2mDsXOyr2xWr+nYXXEuEaQVDD0fAfiDQbFDlIJZMeA/LpPvxIx7WvJbIZ8p3Z7rzq5631yNJPwwya3khAV/BgxyNCzBAh9r6X9DEZMHgwhpzJm6CXNbwlL5g2QHQqdC0hDQas5iJL4tPPGc4LXdsD7s/BSjtU+huLS9SsTXRp5EUKv+7umH5HCDz0JnyG8Ysq6omB0LP7Ezhmgg5kDAFrL/abH9PR2/edpVbXmArynl1PTgSpqYRVd5wE4RfrjLtC7jH6Jc7ntI315rPARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cG7S3pwn6cuqNtut1FaMpHEsViWOvwQj955UAW9Q8qo=;
 b=Fp2OtBir45mNy4s8zzevPwmOnifs/jX5TvRke7dGjrjEnPEZsMa6gFw/lPhEjPQzvPAuS7sgl9Fny7HCZ6zBS9xs2EqpWvE4HVu9Sar0H3CL96KyGALLALBMtbLQZpBn/HkY958plnVwK5iiB+BfRxZRqp4mvhtKevquimOsrBldFpdspjz66Bh0Zf1zwgohpasX5oiqxL7Tw/1FBBvmVwPXPd5iNMgoCuS67+2hUfsyuhB8kvrgYODtSKP07Pe0jojiMynAXW4+PEYVPYC5bKaCS4heHtCtUeXta9P1ufdiT6LyzQhUfLZ8/EDw/NzKRDRzUa0dJY+qi0KpqcuD8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cG7S3pwn6cuqNtut1FaMpHEsViWOvwQj955UAW9Q8qo=;
 b=VtXDX6cSa9zyx7QijHC9xx/fOgBPplKE84V/eXWpGZl/CpPopsaTqh97P1gHO/GtFch3oUU0G8cZXNMCeFueswHdtzDF+14AaI8SOXwfqvS44KgJzfme1WiajsCNOQCUg3zfasQ0mkS4zCNQnoPZpB76h1E3934PBqHSGdeeZjmbn4y64C1sV7W2goOU7U/Zh91eQ9b6PpN/GoLqFFIReYs8TLmsFuBnjT4NGQ6F/N8iFX2kzHADJW+5M5KhmwbCH0xMb4eriMESJmnicAFCwCZ03sU0Nk8byOm0QvSncO4+phsAIX3g3NknoPi1HWgKs1ggeZI68b/RgxjSifbMMg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received: from PH0PR18MB4558.namprd18.prod.outlook.com (2603:10b6:510:ac::13)
 by BL1PR18MB4247.namprd18.prod.outlook.com (2603:10b6:208:318::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.15; Mon, 2 Mar
 2026 18:02:55 +0000
Received: from PH0PR18MB4558.namprd18.prod.outlook.com
 ([fe80::ba9:422:da8:b963]) by PH0PR18MB4558.namprd18.prod.outlook.com
 ([fe80::ba9:422:da8:b963%2]) with mapi id 15.20.9678.009; Mon, 2 Mar 2026
 18:02:55 +0000
Message-ID: <e1628331-9fa2-4471-b7a2-4df5d34ce873@axiado.com>
Date: Mon, 2 Mar 2026 10:02:53 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: axiado: add Axiado eMMC PHY driver
To: Vinod Koul <vkoul@kernel.org>
Cc: SriNavmani A <srinavmani@axiado.com>,
 Prasad Bolisetty <pbolisetty@axiado.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-0-a2f59e97a92d@axiado.com>
 <20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-2-a2f59e97a92d@axiado.com>
 <aaGv3q8czkrKyW42@vaman>
Content-Language: en-US
From: Tzu-Hao Wei <twei@axiado.com>
In-Reply-To: <aaGv3q8czkrKyW42@vaman>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0056.namprd11.prod.outlook.com
 (2603:10b6:a03:80::33) To PH0PR18MB4558.namprd18.prod.outlook.com
 (2603:10b6:510:ac::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR18MB4558:EE_|BL1PR18MB4247:EE_
X-MS-Office365-Filtering-Correlation-Id: 013be5c6-6c8a-48fa-c516-08de7885ee38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|42112799006|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info:
	OMpP06oMwSAuLMfcrCI+yYBQF2N2OkJ4Z+D6P2ENMc6ADSX+gqXanMiq4YfQ1S+NMuOs289ljIb+tJhc5nNlQQbzWXX3UBNxjIqHkJVuK+U/hAtWVUbgeiaUg1jiTwNnT7tciaSD7Hz1lb+KSWCxQ70/XsTLJFMFlIPxZGkT8qShFL18lbG0mYaP5IUDRUuciJIcwx9IVA/wvA2EaMeCdLYuj8doLmBtqcHY8J9x/fpHc54WSgiriRx+W6OtI/6x4aPoWemy2zzTqzbX/1T7UJLKWxOgM3YtWxDEWzZbQG0Y4yTSykZMDYzrlKqkj6MzoXAD5NVCnEBOoySMxHi9t6cIUJHlbm7416WvtHEZKD+YqWaoI7shdL65G5MpjyR5kHCR+yj1XG2xDc7q5XJnI6kUL0vKY4ZcW7Xl7liElhdTsgrpIJKeDX61sHTh3PNJ9NQsvtPbPhLPvelRZzmaVPPfSSdEq7ZOJnJCiBcKTo8kF18jYUbLGmyjAJSN7ppABh3Kd/XlIVkScdj31se3Ec/l+WoheZRuWRlCLVFL4Q3FmrpFpbgUEzdkx1Om+iqw63PcD9bZNFtMeBnKqFsuM4LitZi3fei/F80WPNJBTfWVY9oKR1tSD6yDk6CsMj2dAnys3nG50vTJyl3yE09PXrYgG6XjK27N1pUXK9Ce3FCJkbF1f9ay2AFld5hNaJamrhILV+WLNQz3FhuK1BJ0Jf3TfQei+bgKqUP2avoYQ4o=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR18MB4558.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(42112799006)(366016)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QU93Y05jeVZGWkZHelJhM0RzSzNWUVdXUUVmbk5YeDd1MlBuRi9FYXhGbHdQ?=
 =?utf-8?B?MWdBaXQrUkxHR3hVSkc3MUVTYW5EQ0g2R3JxRlFYUjMvTWNIbU1kL2M1MHFV?=
 =?utf-8?B?ZFI2WW9DSkF1Rk5haFNkL3puRE9Walg1YjkzaFRJYnRGTWVzRXlSejVKazJQ?=
 =?utf-8?B?V3dSYVRJYlY5dHpZS05qOU55bjArclF4MlBxN1pRNk93eFhXNEQrOTREdnp2?=
 =?utf-8?B?cTZrL0hXanlZUExOZCs0UnpoM0x2eFNWckl0dVR1YlhrY1pTdXVSUHEwdjdI?=
 =?utf-8?B?UHQyZ3lyRjlZZzljdGdSSU92azBxQUU5TUZ0Zi9BVFFMclROaFQ0V2gyZWhs?=
 =?utf-8?B?UWFRTk4xa1ZVM3BvbVpaZTBPaEpQZ3VkZndYV0YwTms2RWttdXBNVEhmeUZH?=
 =?utf-8?B?NURENGhoK2F1VlRhS3Q1MGtpYU9TZ3U4azJyWDZiZVkrWkFOZGNhbk1YSnVr?=
 =?utf-8?B?UnJGTGozc1dnTklJeEpjbk1GUlMyZEQ1MFpFQnZmamdSanFobzQ5Z0NIb2lx?=
 =?utf-8?B?aDFJQ2tia3hPb0pEeHUxUVJBV3JZdk5TRzBCa0Q1YysxVk9vQWo2UFN2OEdC?=
 =?utf-8?B?TlpPNFJOcGdSVkxUU3NraFFzeEZrT1NxVVVvRkNpeWdZNEl5K0lrZ2tJRnpB?=
 =?utf-8?B?eEVWMk44QWRmTUNVS1hyNVQ3Y1lZNDJsTkF5eFVnTEp0YzhWSjM0QlNwQ252?=
 =?utf-8?B?WmhLQ1FnT1VvUCtOM1Y5bDhYcDJkUWlOc1V2ZkwvN0pSeVJGTE00VGFUT0FV?=
 =?utf-8?B?cXNiUDNWYXY4S280NHdPazhTdVBzcldHYjdUL0VtNEVIUHhjN3ZkRHMrem9u?=
 =?utf-8?B?eEhndVNENWwzcnN2TWtVbEh6ckYvSEtuZnhYRXQzanl6R3IrWkl6dzY2aUZD?=
 =?utf-8?B?Ry8vQ2F6cGwrT3lQZGlDUysySWJZMGlMT21JV2xaL002Sm04R0JPTHFKM2FP?=
 =?utf-8?B?cFlmYlFhdnk1QjIwRWNoc0NWQ3lSZ2VaUnJXMlV1WldDR0FCMnBBKzNPbGpm?=
 =?utf-8?B?WG1heWdYb3B1YUxhZjliOXliQkcxVEkxdG5LbGlSOVJLZWFYMERYRFNnbWRu?=
 =?utf-8?B?SFZuUm1OK0NrZTZYQW5sWDY3d3FNNHIrSklSV0Y3aTJzOWt5VVI1OUIxM3U2?=
 =?utf-8?B?bDRqNnU4QVd6by9hU0NETWNveHZtbnVkVHdMcXpKZEdsQmxXdFVoM3NCWW8w?=
 =?utf-8?B?ZE1TaE4vdTByRzNGRE5PMVB0U3VZaEZ6UGsvTlVSY0htcFR5b1lEMkFPci9V?=
 =?utf-8?B?eGovYVdURzZaemtxR1g4MnBTTUFUZHBONXNMcmQ0Lyt5R0pOMnhidXpBM0JW?=
 =?utf-8?B?QXN4SHVBNXozdHNMc3F5QWk2b1lLd1hRbkIxOGlQQ09pZFlETmNDWUlqeEhT?=
 =?utf-8?B?OTA4TEh1YlNIdGNUN1NVaExjN1Y5UzYyemhpRXFuOGpDVjFKRVRRQklKazdi?=
 =?utf-8?B?d21VTFNwaWNNbGVNZlJUN2k5THZSVGYvUjR0UDAwUTRTQTBxWVFtS3F2d2M1?=
 =?utf-8?B?L0pFc3lTMm94Rk5FUlpUaDNOMHFieUlKUnVCR3V4MzlkYmhCMzFNQVV4dlJL?=
 =?utf-8?B?MS9EZkJPU21mRzV2cnZkeXNVajRFV09TaEJLL0poL1JkdXR6YjdxQlVia1RN?=
 =?utf-8?B?amtkNUhKU2pkdXRjSHM2ZE5uK2toNy9IZE8yelFjUHh1eUJpeVFHRjM1dVVt?=
 =?utf-8?B?YUVCTzdkelBVWGdFNEEyS2dDa3N4Ni9UNE1XeER6Y1JicDRpdjQ5VEJ1STVD?=
 =?utf-8?B?MjAzazVjMGN5NitKS3puYTduYkFXbzFFcUc0K2IyMFpGTWVzd1NpR1RFKzlx?=
 =?utf-8?B?WVIwc3prR3I2ZFlhRmhpUy9WRkd6NGNra2dDcVFKZG5Weng4ODVTRFMvVEZ1?=
 =?utf-8?B?MVFyTGZBK1JHejlQL2dZQ2RNZFAwdUptczFBeTc4Nk9nNTBhQkJDbEFxak1X?=
 =?utf-8?B?MDMvK0xhMHV1V080cFk0Qm9rUGFEaEd4Z0RFeXZabVBVN3VNOUlvMFVnYWY0?=
 =?utf-8?B?alk4TXQ0c3hYc1Brc2xLb25xTkcvZjFraXdtRkhtYXg1cEZtVWg1M0ZhV1oy?=
 =?utf-8?B?dk9aSmgzemllbGt3ZkRPdjJDYVltNFdmM3RNSDUvcG00WThiUWdZcG9EUVh2?=
 =?utf-8?B?SkJhUnpEcTFMZm5hRkE1RW9kL25va0I3WG1BL2lWWjEwcktaYlZVeHlFSU8w?=
 =?utf-8?B?b0dxOFNIUWF1MTlOaTQrQll5WTNxL0xQQUY1Y2pjSmtKdTJkSXg5ektYMlpz?=
 =?utf-8?B?ZS9DRi9rWWl6RmM2bnBmWVE0QlJRRjhzbDVYcDhpQkd4dWZFcXVYdjROMUpa?=
 =?utf-8?B?NDJjdytmbUdFRzhSKzNWTmx0QThpWlVVNEY3MFNiK214aVZjMEZYZz09?=
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 013be5c6-6c8a-48fa-c516-08de7885ee38
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB4558.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 18:02:55.7473
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47/HNgOiXzrgdr72s9iFOvjoptjjGc4yJNPvAcBU4qCw9gtgKxOQpNHbROmjTLOS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR18MB4247
X-Rspamd-Queue-Id: EBEFA1DE2E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270183-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[twei@axiado.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 2/27/2026 6:53 AM, Vinod Koul wrote:
>> --- /dev/null
>> +++ b/drivers/phy/axiado/phy-axiado-emmc.c
>> @@ -0,0 +1,221 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * Axiado eMMC PHY driver
>> + *
>> + * Copyright (C) 2017 Arasan Chip Systems Inc.
>> + * Copyright (C) 2022-2025 Axiado Corporation (or its affiliates).
> 
> 2026
> 
Thanks. Will fix in the next version.

>> + *
>> + * Based on Arasan Driver (sdhci-pci-arasan.c)
>> + * sdhci-pci-arasan.c - Driver for Arasan PCI Controller with integrated phy.
>> + */
>> +#include <linux/bitfield.h>
>> +#include <linux/delay.h>
>> +#include <linux/io.h>
>> +#include <linux/iopoll.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/phy/phy.h>
>> +#include <linux/platform_device.h>
>> +
>> +/* Arasan eMMC 5.1 - PHY configuration registers */
>> +#define CAP_REG_IN_S1_LSB            0x00
>> +#define CAP_REG_IN_S1_MSB            0x04
>> +#define PHY_CTRL_1                   0x38
>> +#define PHY_CTRL_2                   0x3C
> 
> smaller hex case please, here and other places
> 
Thanks. Will fix in the next version.

>> +#define PHY_CTRL_3                   0x40
>> +#define STATUS                               0x50
>> +
>> +#define DLL_ENBL     BIT(26)
>> +#define RTRIM_EN     BIT(21)
>> +#define PDB_ENBL     BIT(23)
>> +#define RETB_ENBL    BIT(1)
>> +
>> +#define REN_STRB     BIT(27)
>> +#define REN_CMD              BIT(12)
>> +#define REN_DAT0     BIT(13)
>> +#define REN_DAT1     BIT(14)
>> +#define REN_DAT2     BIT(15)
>> +#define REN_DAT3     BIT(16)
>> +#define REN_DAT4     BIT(17)
>> +#define REN_DAT5     BIT(18)
>> +#define REN_DAT6     BIT(19)
>> +#define REN_DAT7     BIT(20)
>> +#define REN_CMD_EN   (REN_CMD | REN_DAT0 | REN_DAT1 | REN_DAT2 | \
>> +             REN_DAT3 | REN_DAT4 | REN_DAT5 | REN_DAT6 | REN_DAT7)
>> +
>> +/* Pull-UP Enable on CMD Line */
>> +#define PU_CMD               BIT(3)
>> +#define PU_DAT0              BIT(4)
>> +#define PU_DAT1              BIT(5)
>> +#define PU_DAT2              BIT(6)
>> +#define PU_DAT3              BIT(7)
>> +#define PU_DAT4              BIT(8)
>> +#define PU_DAT5              BIT(9)
>> +#define PU_DAT6              BIT(10)
>> +#define PU_DAT7              BIT(11)
>> +#define PU_CMD_EN (PU_CMD | PU_DAT0 | PU_DAT1 | PU_DAT2 | PU_DAT3 | \
>> +             PU_DAT4 | PU_DAT5 | PU_DAT6 | PU_DAT7)
> 
> The bit define are used only once, why not define the cmd with
> respective bits here
> 
Will replace it by
#define PU_CMD_EN GENMASK(11, 3)

>> +static const struct phy_ops axiado_emmc_phy_ops = {
>> +     .init = axiado_emmc_phy_init,
>> +     .power_on = axiado_emmc_phy_power_on,
> 
> no power_off?
> 
Thanks for reminding, will add power_off.

> --
> ~Vinod


