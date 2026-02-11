Return-Path: <devicetree+bounces-264642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBVmG4MtjGl8iwAAu9opvQ
	(envelope-from <devicetree+bounces-264642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:19:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E599F121D5F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88719304501C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D6A31A805;
	Wed, 11 Feb 2026 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="daa6S+Li"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010004.outbound.protection.outlook.com [52.101.193.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C60E2C11D0;
	Wed, 11 Feb 2026 07:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.4
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794362; cv=fail; b=M4yZurXufm/dQ96urfXsEBWPwu3LLDgf/nJKuq71j57XaA/1S5xWuNzu7uV+2eXrzQcca+zAd8pGlLirxGIuHRtNR52avaqFEIU6s4z99s/6+kG1r1cDwWlgcZBlXtTcsrv2da7QUaF0FookAXnCmzA2HOO35DcI9dlMpPQ0bj8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794362; c=relaxed/simple;
	bh=RZ0c1HqXI7wUXmjjGdEqe2KJ1IMwc6310G5P0Q5NI6s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=K9/ouacLrXI6a1UgaTHyCA1Onq07wc925uRi/xNy5eA1TlsMdb6FUyA2ZIIs1G/RSAAtepxY6kmLDmMUD0OHke6MFLdWJhpUsxNZlZxSfXWzPwCXbwr7QKbOUTc1i4qrcT1WKHkhe7RKKb7KOLOMXs8LFcTC2jygicwBF7H7Z1M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=daa6S+Li; arc=fail smtp.client-ip=52.101.193.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=plTZklOwBnnaDMDFh0caQzq/kpd78b/Q+vCBNWbtHNLETL5oJgFVhQp9KhtLJ2f7h9gmnx5kVUl+7dKaTP/g1ECbjKKj+NsWJaZRVw82uv3sIveYAWAq+4DVPfY8u3sHI0iZKvDmG7UUgawYzDZL3RyC2YaKq4W2gnvwa4vSJ/OmKGDRWfI1ZDllcyjJgVib0kG3RQVj7Fs0di7o7Zy0ENqp4+oGrGLHhLA/EsqJwph/bdpGLmbcE+Jw3LVprAsPgNBEDBjjwGM/3DrupjbPcLam2SCOEUgoCkXCwKHlH0ga/Wgf6Au7OAxacRMtUsXh9+LRQUyytMh5qKgJXsWvKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5081H5EC1tNY7jpvT5KWKwapkElWfuJctldhskStkb0=;
 b=af82989mRIvRjycN64KyxZOv7NzB8TwdsXaZtz968GAW4JTO+VgIukI9cpO9sRI0+6J0ziRSp1mf5rf36FvLWhJwjUDG9vPmKFARwKmJHjhXXvqGxxlyAd2C/yhyXLWyJiLxWCWuuidrMyqMtcAsZDX814iusEljRrQGLm6UFptrRFmBeswY6CcTVf7iOrrZUW+a+LTv3jqIhl7ztb8YlEAjdYf9/aW3NvcNWhDDk7V4neA/lPk6VoaAcEkk8idyhufl+VNV7HhnXmtVbJ9WWCZm1wyPaUvGCrWWYN0TQg9zye22hnu9eWlPg7pwB0hwEgbOv/I/Z8qfMaNqN61cTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5081H5EC1tNY7jpvT5KWKwapkElWfuJctldhskStkb0=;
 b=daa6S+LieGyqq0PSoyCoS/wOe/0aTx5BuQDMulKytuGDUJg5K1YSq9ix5B3KB6lRChq/2m8u7cUIAl/rFUBkAgvlm14fyqgn0iMcF/jOJpWIgC9SoWMx+dQwJ+e3WCgB0I3O5mFd1efM/qEKl4hHh6tLf1Ac7RE57ic58kSIYTCLdhzzcoCPT2cNkEDkrk6DFosFJV8DFQh+abxFCRsoDP7qQ/yaN0Earxe0STloIHpX5fSAvDONUq6TGMlgMVZXwJxwMeRYDKFxnnc6aB5zbqEOBEfJkVMTmm7pxKu8MK7FGHbuTJaqPbo9QKIUmYYFWoCEWm0x5AGGvD+W9eGAtw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM8PR03MB6230.namprd03.prod.outlook.com (2603:10b6:8:3c::13) by
 BN5PR03MB8109.namprd03.prod.outlook.com (2603:10b6:408:2a9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Wed, 11 Feb
 2026 07:19:18 +0000
Received: from DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::abad:9d80:7a13:9542]) by DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::abad:9d80:7a13:9542%4]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 07:19:18 +0000
From: adrianhoyin.ng@altera.com
To: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: adrianhoyin.ng@altera.com
Subject: [PATCH 2/2] arm64: dts: socfpga: agilex5: Add alias for i3c node for NAND daughter card
Date: Wed, 11 Feb 2026 15:16:00 +0800
Message-ID: <6c77c7097b3771f9a04a0f362bb8e0fec70bfa23.1770793444.git.adrianhoyin.ng@altera.com>
X-Mailer: git-send-email 2.49.GIT
In-Reply-To: <432011842499ce80707f43dbe0d30e40a8a896fd.1770793444.git.adrianhoyin.ng@altera.com>
References: <432011842499ce80707f43dbe0d30e40a8a896fd.1770793444.git.adrianhoyin.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: KU0P306CA0077.MYSP306.PROD.OUTLOOK.COM
 (2603:1096:d10:2b::6) To DM8PR03MB6230.namprd03.prod.outlook.com
 (2603:10b6:8:3c::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR03MB6230:EE_|BN5PR03MB8109:EE_
X-MS-Office365-Filtering-Correlation-Id: 07f05a66-838b-4215-fa27-08de693ddeaa
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IsocJqMZvW3b/IsjG9RDH9dLZjj5o7SpgoGeb4mjvGz359gBIwkm4UiZ3GHL?=
 =?us-ascii?Q?OP7XYMZ2HxHdyQmRjjZshM19R8fFtkpPU8GE9gRvFJ9gtXkI02TjUwdNB/kG?=
 =?us-ascii?Q?qlz3tAmieeOZJNyXxoeGPF5tYN2HvrC5TkNzu8JWCSFf4NymCxCaVrzpud87?=
 =?us-ascii?Q?v/iyalaFyd0E5xhbEhjPs026lWMDit7gDo+Y5AO9FICTDRANvwzg7SB6t55D?=
 =?us-ascii?Q?uyVQvm8sTRNzJyptFMIMOLlk/gusyTYLcZRg5iDn4vhxFj3XavfC89BRkYdc?=
 =?us-ascii?Q?iS66c4SkfxFCneEf3HuD3njMk+/02DDp+levl4UYYSpRh6wkujn9fi5t/GtP?=
 =?us-ascii?Q?I+AUt89pTkkh5O7KeLNxZuqBTGYZBb7nQXVS8cZRSLXqUnoRqWTml70tKMS6?=
 =?us-ascii?Q?E8ok6m63dNqTCRLLzJjGzIv0tDHUwUttsYByctOuBBGrXtIzJohJaSSxfLyz?=
 =?us-ascii?Q?Nj3Yfd6yCTO1rfhTT9Rr8FDD6UkovyYJqvQAfrFcFaF+Q7S2vOSoeOWqb9hR?=
 =?us-ascii?Q?fgh5eNsszgWmXlAl3DScFI/4M9RPCz8y4NDe0OJTIeSa/Oa2U4y9AaQiXz7B?=
 =?us-ascii?Q?jmVfHVX+ppJfUZgyBLp3NkrGgEYcybuftIrFUEYU//K/rQaLjnRTbbvq43+S?=
 =?us-ascii?Q?9Dzls/tx5dCypBHcfrhy/cfenY+l/GoYrQ6fAFAt1MZ2edyV1wty/Rch16iI?=
 =?us-ascii?Q?wykemhUDqf+x8d0NKrf7XzSylrXoD5WVVrCUCYwNygEf4PjghmHJJbU8H5OF?=
 =?us-ascii?Q?YlOkjDRsrAv3mAEuQkWw8OCdLCF4COdwPWuDlNKHjJM0ncYPeUn+GVMLR/Ij?=
 =?us-ascii?Q?rRE8E19oySjB5HmP03u1YSkiEwVHOf7xeX1Sc0lMEcrOWw+JeLq/FtB1+6pU?=
 =?us-ascii?Q?Y65BJdcdI+xtHiI+afRZoV6zUoCLQ5kW8WMzofupz/ylU5Yb9GTRK1M0jKRJ?=
 =?us-ascii?Q?Gxe9v4CNLCg1Kxw7c8XG1wlo9yMdX1xKjCRVmLZuZ8riZkuNX0f1N8PheeTW?=
 =?us-ascii?Q?enaCHDCJ7SPcDuj/n82ZJap2umeX83hoIFATGppAB5Q7HR9jbyleR1Xv0Idp?=
 =?us-ascii?Q?TSnJiQ7Gwu8vKrDV0YyZP8EtcFvRHJXKxIaeUq4enRW1YvqKAcKVRV96sYER?=
 =?us-ascii?Q?Ldzxkbl9Bstib3y1NvYEJQiumrIWjZYuL/VwDJojknNYJjYvxuQfXXacvQxb?=
 =?us-ascii?Q?q9iVIyIQX9RbzK/BOk5IQ+nNMocCEaFtZbQFtaJ1hORbkkhxyTklrztHfYZB?=
 =?us-ascii?Q?KsrqXItUBMOWBgQQYSqUdzZl6+dMki2fy8gj/nZVsbTGtzewkLY2bv1PjBu1?=
 =?us-ascii?Q?eU6kAiQr8WrOZyMYtaIZ0PQK2663oVwF1UBlPdXpcLCOjMSjJw13EEKmW+D4?=
 =?us-ascii?Q?XbgYS/LA7cXuBjLOSXhDWYBRQACPM4rFb17NH6jqmL1CNjTDxQNc6ltp7Z13?=
 =?us-ascii?Q?zRQlFlVvCXU26rXkLQA5rn8Sg2vdaSdEKmFtm0GDtIh9K/MOwIynN8/fczKy?=
 =?us-ascii?Q?mwGOeG9PSSbAOB+PMo2hN9EooKy1efLqNiNFZP1swFKoGo1r6jFN+dZbUqj3?=
 =?us-ascii?Q?5Y+GZXjASFhaNDcUBv0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR03MB6230.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?wuyuH4WC50nKDSIc8Cj2fkdz30NCSl47NB2lw+GbKdq3OmPgQzevq8drXIBO?=
 =?us-ascii?Q?JQx6yYyMp/PTesU3+Y1U/vrnkKNM+jFsf73lp0Nf4uvIJ66kb9+ZGBudR0V/?=
 =?us-ascii?Q?YGWNQPtAtlrHoK1DYSI8bVGEse2XojmiWmLNgMZXQwNslMtT7C0a/mUPvUWf?=
 =?us-ascii?Q?9L1hZc2Q2gUrIvQ1oXWFqRm986Jq0RnTnVebgYvMKfri7oK3TZfyqm7r2492?=
 =?us-ascii?Q?agjb91vETEX3o1b6eXQAXCBR0LI2bdhzjB3GAB+Rxn3aU65heggKIXVu0ShX?=
 =?us-ascii?Q?gihHK80vnx3UgWPILgGuqiexNd81F3/pC4Q2ds9jicTTnV3momVOei8NPf8m?=
 =?us-ascii?Q?HY7QiKoA9naJe2BKfRNR4EtP4HRwyOkbwFdGSUEHpODLNPEWdA+j+bCLJKgB?=
 =?us-ascii?Q?ZTumBeW3F+w8YcbndvOUfV5GEXT450iCejfExWHaSWEMGa9CJ7b42twRYdHy?=
 =?us-ascii?Q?hbB8pJ2jRsTTF+weWfF4VRXAi70O5xJWlYXnbLluIWIawjbqFOkTkC2o8+Sj?=
 =?us-ascii?Q?4IMXaT9ykrlPzNdlCyCWfg06cuvxFf4cfk2Wf7Y65yAzl/vFzGrny8CZmEwa?=
 =?us-ascii?Q?gxMQtxBDFgGdIkWkxpBjS5KbolTOKGe31NUqL9PzJuRS3Pc6AVOZvqGGXy+r?=
 =?us-ascii?Q?Hy6hEJY/FXRwN58X3Uj51E6czl6sr+whZInu2FGQMTxV8UZS8n/idSYeU29Z?=
 =?us-ascii?Q?YlHsQlV9Z/kFR/4wGahuk6EbYH5Z7iOKJhUcWvb4dA5X7txZKLY4TI87OtTM?=
 =?us-ascii?Q?9+rO6PeMJu/nmdDo2Z40JjU/3zpdITzBx1xG1svDIPuw5rCdPXDNF1xPT4F1?=
 =?us-ascii?Q?Qa6r4b++QF060gV1lTuWIQneYfmY3QWKbUJFiq7fau63CXEmue6KDEVbkigj?=
 =?us-ascii?Q?YL/sBmkKoRTgtBbMhwvHs8GXiwluja9MDfQIE8mTanZgILBc4waqb/OFU9Nk?=
 =?us-ascii?Q?AZsLVmvvEFo7PFAZcvz33gwnXt0gVaNjgg2koPvMKyEg8b9v/HNPFvJAX0S7?=
 =?us-ascii?Q?ykI5fPlD31ft9p3Vug3xdgPjKvMgo0KRamfHnPDYMeEJsoQ/C5VcPrwSWENQ?=
 =?us-ascii?Q?jNmSy9KTRvTrxawd80tSCBls0rMtlWXwTaFmuTFjgIOhYqPMWDSytwvcPfj9?=
 =?us-ascii?Q?9KwtlMhew9BXD/dYgDv6/XzBGv2NcKOy3J3eikVQhr552EGznD45tqeNC1UG?=
 =?us-ascii?Q?FoQmRG20aar763mEB3xQeV7VepmpAM2fluq+fhdr5ZtKux2RycCebYyggUZI?=
 =?us-ascii?Q?LQdPsmXOP/05qZHaI0LPYxifebTiNQW7UuEIyhV4yI/FG1rtEQXDf49jdtGs?=
 =?us-ascii?Q?VOKJ0YMpMGbB5gT62PT45VrZhsqy4W+/PkqRBj7kY8rdYZo7GYf+iwLLC0tm?=
 =?us-ascii?Q?P7BV9axBl7tu4+Gg+Eai9uMibQKtkjpEHvpXVORrOj482DnWTYh9P3VPl/6N?=
 =?us-ascii?Q?6XjCPkMd/N0gPcwTGRHYeR8dSdrTSISDOUDrxFARygBptyEuYclyhUj849Xg?=
 =?us-ascii?Q?mv+fpPGVzkThrmYrnpJ1o1FpD87whKqluLH+Eo9aVIGaFPRTm736qGFX6EdZ?=
 =?us-ascii?Q?QIUOvAQNzUJvVFLbApmvQrNFDdTy56kFDZoNOsP4JuYvpJrduR4fv3OyfOAH?=
 =?us-ascii?Q?im0/h4FU121HjIHS4ajW1HNHfrhwtctMObU8LQmZMuPx7IdexHzIU9CWsSY1?=
 =?us-ascii?Q?TUn57Sv7KANcE+u1n/nRoqwC/GBefN/q804SgKV4Qyk047nht41Y8+geXyGV?=
 =?us-ascii?Q?4Nnj3N3R73DQy43ySYszsPvVzz0KvMg=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f05a66-838b-4215-fa27-08de693ddeaa
X-MS-Exchange-CrossTenant-AuthSource: DM8PR03MB6230.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 07:19:18.7867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1u6ysdpVZOEYag6LfEJO6kltppJl8q9KPI3JlJJujQY+uRPjIUgp0SCmvFVZXFlWzNRuQEkd4Oyl2vJA32PbVCCVSIpAmfo78PNUmJMSKOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN5PR03MB8109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264642-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrianhoyin.ng@altera.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:mid,altera.com:dkim,altera.com:email]
X-Rspamd-Queue-Id: E599F121D5F
X-Rspamd-Action: no action

From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>

Add explicit aliases for both I3C controllers to ensure i3c0 and
i3c1 are always assigned to the correct physical controllers
regardless of probe order.

Signed-off-by: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
index ec4541d44c9b..21faa47681fa 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
@@ -11,6 +11,8 @@ / {
 	aliases {
 		serial0 = &uart0;
 		ethernet0 = &gmac0;
+		i3c0 = &i3c0;
+		i3c1 = &i3c1;
 	};
 
 	chosen {
-- 
2.49.GIT


