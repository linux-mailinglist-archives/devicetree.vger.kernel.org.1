Return-Path: <devicetree+bounces-266686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBVvDiUyl2kcvgIAu9opvQ
	(envelope-from <devicetree+bounces-266686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:54:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A39511606B3
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 992C33015D2C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C80341AA0;
	Thu, 19 Feb 2026 15:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="4lDIUe5N"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012003.outbound.protection.outlook.com [40.107.200.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A5228466C;
	Thu, 19 Feb 2026 15:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.3
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516451; cv=fail; b=MO+zKoUI2f2jiBEy0XjlxVT1getPyZ8tCsK7WkvENR3xdZVMnO7qDsK0OHAaG8d3GRvWURgG7J0hBesCrQXEl4LfwVAizSknUkvgw5M2kDOh2OiTlCXYXkUjbn0jRb/YPtEtpJSCALSovMwFwBoGLZRxovPDpRd5FFFpJy8alGE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516451; c=relaxed/simple;
	bh=tGSfe/qQNapngITUQiXwVpS03CBwOmdp7OGFcIVnmdw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=kqBI+csqeBLa/jSsL327zVwj2W7AcxaN68PXWhdfTNKGFZoOmjTsR1n1rSWBL8Kp5ABM2G2Dni0YEODSE+3znxVkEjlzoATOY+GY/s/4yyclTeYaHj3pHG0fgdpK5XdXaAQyHUH3cRyMb5MTt2MNAuC8TG7g6BZUWvqw80UranE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=4lDIUe5N; arc=fail smtp.client-ip=40.107.200.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a62RT2lUlHSMO4PKMzwWslsG3ShfNwVJa89/o4MRw3epD9jcRD9SH4N5UE8TXq2JccEFOeJb8OA1aUKlK2TyOhQzGFfRgsYas7ZkJck2surqyvNERXQK8G5QNbY+EmsrmN/TfbUehM+Md6IvK0bEUKZ/Gzaa9oc+kQqTyxxrtACB22KDwBKk9p4Bo859rVVoWfuYyQkyEveobnIXZtN3AZH6d5CqJjWJU3j2z6NyRJd2Gy98714/pZeRo3kQyAyJfcJhmZm7OuHsqpyGyYekztnJdbuUq9uSiZRCnechem8TRqs8fHK2bVe/oHSG3qBR0p6RHDUuOxEjFG2hiwjwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGSfe/qQNapngITUQiXwVpS03CBwOmdp7OGFcIVnmdw=;
 b=tDCe7sF+JG2wu0/Fi59q7yzGZIHRcb8RJcow/wAAu5UhQrRsJWQ5xmvTiD8TVx08+WoyyAh1p6tpUq/juszvU7DKlG3kuzafYudP3dzVfKlqmY0/rmoNBxT1abVYkSgl7W0YelG7YECcAEfCAdQ+PIbsGUZSTYjNW1jAwHbsgc2qkelY1x5aK7W/f0zk9N2lfKi8l2cu1YsEs+XF3H+SNIYwWU4JkQdgP0IhBdT6yVgDzb87Hz6irACQN+91WnGjY5wL4mYVNbVaetK6aA+wnKuJsRJicrscW/UAQPAYEFt+YSwPt1XiaNXGuHKYTPCYz75J1fsQMkWiQQnfIfoykw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGSfe/qQNapngITUQiXwVpS03CBwOmdp7OGFcIVnmdw=;
 b=4lDIUe5NNDbFGVTVLWwwKCvveAI+5CA5lpuSMH9D80tpdlGWq/RGSVJOqQ1v+PrrDmfLvMjDX1N0spMPrnWeYwLiuejgXdP5qNHHscw7W7p5iuaSu62cd1w5uU5LrRvxPiB9Hb/8eSELBOoEdAvuz/2Awm2G1a8gao4A+4PPNwg=
Received: from MN2PR12MB4031.namprd12.prod.outlook.com (2603:10b6:208:16e::16)
 by DS2PR12MB9687.namprd12.prod.outlook.com (2603:10b6:8:27b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 15:54:06 +0000
Received: from MN2PR12MB4031.namprd12.prod.outlook.com
 ([fe80::5a8b:b2ec:74f5:af43]) by MN2PR12MB4031.namprd12.prod.outlook.com
 ([fe80::5a8b:b2ec:74f5:af43%7]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 15:54:06 +0000
From: "Chen, Dirk" <Dirk.Chen@amd.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Thread-Topic: [PATCH v2] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Thread-Index: AQHcmZn2wsKeK9bWbUiwEv0KRHaN77WJexIAgAC/cZA=
Date: Thu, 19 Feb 2026 15:54:06 +0000
Message-ID:
 <MN2PR12MB403103EC90C803E3FA6CE6B9E76BA@MN2PR12MB4031.namprd12.prod.outlook.com>
References: <20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com>
 <6192440acc150d216de5e074299e579e891fc845.camel@codeconstruct.com.au>
In-Reply-To:
 <6192440acc150d216de5e074299e579e891fc845.camel@codeconstruct.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Enabled=True;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SetDate=2026-02-19T15:46:05.0000000Z;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Name=AMD
 Internal Distribution
 Only;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_ContentBits=3;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Method=Standard
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB4031:EE_|DS2PR12MB9687:EE_
x-ms-office365-filtering-correlation-id: 1df48751-129f-4be1-e23b-08de6fcf1cc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?aStqQzQrcmlBL2lEVkxLcC8ycmkvT0ltMi9CTVE4VU9BSzdVaU5ySFlob2Z1?=
 =?utf-8?B?Q0tROEdzMHRESUdJM3JwWTVMOTBSSFdVZ3NVdXBQRmxFZlpGZmZsOHdjNjh6?=
 =?utf-8?B?TG5DRnZqSTVxS1k2WUZEL0JGVTlCN1JLcHFwWmtLYUd6YU1yLzBDZzFra3Vh?=
 =?utf-8?B?MU5PS00wbUNBYzlNZlVjdXZENUJsZWlTMDRIMVd5dFkzb21TZ215YVNZYzZo?=
 =?utf-8?B?WWJoYnhkalZ0NmlFeExmblhrTlZ4YzFhZ0x0ZzQvR1Jsc3FmQng1RnR1eDcr?=
 =?utf-8?B?SDVBbEpUUmVDcGFmSVdqaG5jSE90WlZVSkJjcTgrUktmcHR3RzV1aklMdWc2?=
 =?utf-8?B?L2ZsWG40azNGZHZqMnlkQXJxclBWZmlzYVhrZVdpV1RGZ0xWRzAxa2p1aWN3?=
 =?utf-8?B?Y0tKZG1aR05qM04rMkxjNFFOaDZPRHhLbGsyTXhUeEhYYmNWVWJGWjVEc1dC?=
 =?utf-8?B?L1VpUndiZ0l1andTbC9vQmwzK1BsempOTTZzYlorY1NTT1ZCbDhRYXdkcGE0?=
 =?utf-8?B?dkhhQ3o2NklUeGh6cU50d0FFbDR1UXUvRTlpcGZ2MkJRTEhpVGs0bUFmcFZt?=
 =?utf-8?B?eUh5cERRVGYyVXVUR2lDbkd0Vkg5ZnRqUUd2Q2JOK0l3N0Fnd0VWUWVOaHp6?=
 =?utf-8?B?OXp1LzhVRnFjT0orckNXS1dibEF4enIyT2R1YXZ0aU9abHRkb1FFNGJDdHdK?=
 =?utf-8?B?bUYzdXBKYmIzZlhaVHFOanZ3dzlzRWsyTGF1ZnE4SmY4dHpMNFBVeDkvVWJu?=
 =?utf-8?B?alNhbWpkTjROS2RVeEtFN3NQZW5VMEp0S2MvcmdnMGRvL3pyTEN4MGxJWUpw?=
 =?utf-8?B?bGs2b3JjZGMzVUtXbkpyWGVXYUw3SlVLTVhLQ3N4cTN4eStSUUFnb0hkVGpa?=
 =?utf-8?B?aVpCK0wwdU1MZGo2SDNJZzd5N2FvemhST1c0SEl2MU0zTDBrbVN1UFBSSGhU?=
 =?utf-8?B?NUVqOXNoL2hzUnFRZ2pZOVNBc1BjZTZVdzRZcnJwSE5DUDdPZXRRdUR2SHlo?=
 =?utf-8?B?bUt5RWFzTWNyWG5Za3ZSVzVBZmlYaHhWWFdBbHFZQThzVkI1U0EydGE1TDR6?=
 =?utf-8?B?TVlyM0YyR2M3OURiV2dDY3BvZUNLeDlrWnhYUWY2R0hLSzJ3NDEwc1lmOU03?=
 =?utf-8?B?TjhjSkpSNVo0a2MrU2pBTnhIejhxU3NsR0V0OVFFS2RjTjNXTktDNGlBQnY3?=
 =?utf-8?B?UUM1NTFzSFVVbnptWGcraG14d0c4UEdva1QrZUd0NE5FemJwZUxzOTVzeFdv?=
 =?utf-8?B?bG1TNEZubkVBM3hGRnMzMnJFTHZraWhzZFhILy9PYkswNTdJVCt1RjJId0U4?=
 =?utf-8?B?YjdidDJQVm1KRkxPTkVxeVVCWit3WDhWUVhOVmFmTnA4MFBaQXZwS1YvWWRZ?=
 =?utf-8?B?U2hhOFdsV3ExcTMvNzRLdlgvT3ZrY0JEVUNDQ01UT0k0ZjRkemV1cEpNcmJ6?=
 =?utf-8?B?RmwrMG1BcGVuRE5HWE4rV2dNWmN0TXl6dXZNd0lCRWpMc2JyT2ZKSjdWbG9p?=
 =?utf-8?B?cFc0WHhMMnZtd2x4cXVwZ1dxNWlrWVAxMXN2ZHNFcXlvVlhVMDVFVWdUZndI?=
 =?utf-8?B?MDQ2N3hWeEVzTVpvSDNkMHREdTFkM28vWFJPc2pteU5JMlU4V0R2Um8xN0lC?=
 =?utf-8?B?bmEwR0gzaFNjNlE3UUgrSndVNmJJVjhIdmFtaFRzajQ0cjNvN2ZZWWVKblFn?=
 =?utf-8?B?M0VpMTNPWTVxeEt3eWx4L0svcytjYi9jNEMzUnV2OHFva2lhSk1rS25qTmdt?=
 =?utf-8?B?c0hLWHZGRHdLVklEdTFONGRVYU1pc0RKL21nNUx4bW9kcFdEWEkvZVc4THNq?=
 =?utf-8?B?eGlmc2tlODBHL0MzUjRHUE9VdWgwcURnZCtPdnpFaXh5aXNzc1pDWHEvY2s3?=
 =?utf-8?B?cVEwRTNpc01kTVJpb01EOE5Qdy9Gb0pxVTF2TG1ESFRFK3VtODgrT1crWUtZ?=
 =?utf-8?B?dStiT25SK3VrNklvejcwL3NRNE9lR0toOWgvSU9DWHpIMVcyTWVYNUp6NEFa?=
 =?utf-8?B?TzdZQnF2Uk81U2hmVWF5WnhVNEdLYkF5cUVTZHNYQk5Jcmltc0NsdmxaUWI1?=
 =?utf-8?B?VkpWK21Od3VxcFdBMnRvbWQwT3E2RG9KVSt2Rm9uSVQyWUUvRTJ0Z25ta3Nm?=
 =?utf-8?B?UlY0YXRpVHpHeXNJaTZ0aTJiNTN4TjBWYW5qZXBuZ0s1VlRKOHRsNHRHNUp3?=
 =?utf-8?Q?1ooH0u+5zj0K2CDfBJiGeuY=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4031.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aVdFTGhFWHJkekVTc3lNR2YzSVZHblVPeDZLL3BrRHFGay82aWd6Qy93THpv?=
 =?utf-8?B?M3BvRVFOVEM2S1hadGNDSTFvdFd4OC9KQWs3VVAxcWhlZjBJTkRWWDg4RWVj?=
 =?utf-8?B?cGxmZFEybDZkTW50OWV1LzNCRmdxRWtvZm95VkliVzhOZk1yV0NyVXhOa2xH?=
 =?utf-8?B?LzVoUGczRnJRa3NlQWRidUVmaitXdVJsaEpuVE5rMW0vQjhyQ2xManRWUzQ0?=
 =?utf-8?B?U0g2TGNORk1xanEzRG9BYkFhWnh5cGVhVEZUOENqbHRvVmJBYnc4ajJNY2s1?=
 =?utf-8?B?M2FPMWU2QzhQeFEvUXFxUFZ0V05mb3lrRjFmbTFxbDZDKzZiS2VFdTV5Umpv?=
 =?utf-8?B?WENkZUJjVXRhSFV2eStUNEFKcXkxQlZadE9PZ1pBQnVHQzdGMm9Cdng4aUR4?=
 =?utf-8?B?RnQzdTFTbklKYWRyWUU3QmpJS0tnQ3JZUTJsNzlqb0lrSldiUkJYWTZnUjNC?=
 =?utf-8?B?UFZFRWFZcEp4YTZ5d2JBcmpJOURybS9jemRWbmdJL0NySkFBa1VSUDRtVFdx?=
 =?utf-8?B?dTRVa1UzRUx0bTZOQU9hYVRUN054R2pBNkcwbkVVdlpGQmQrMDUvMVJCUHRG?=
 =?utf-8?B?RUNGbzg5Nkk4YU05K0N1TTlUa2QrR2ZmNHZvVjRBRzhBeTVSK1pyMFJwRTE4?=
 =?utf-8?B?WEpCVDZGZEhQVlBDcWVQUVJvRk1vcVIwcU41SU0rTFBtYVdZOUpvbEpnVXRX?=
 =?utf-8?B?U2VvcW9BNlVodmRhaUlBZlZxc2xJeDczdGIrVDMrK1AyTWp2RDE2YVRSQXIy?=
 =?utf-8?B?Q2VpaXY4RUVWS09BWnZ6dHVBM0NjeEt1Lzk3ZTRsL1dYUUswbkxVNDNFQmJM?=
 =?utf-8?B?ZXRkNWVRYXlBOTQ4TFB4MCtqbnd2SFM1V0J5OWRjRklwbWFSVE1zMm5RRHEw?=
 =?utf-8?B?QXdiQ1VIeGc1K3liQlJicERHTXhIUnZZcjlKVnFFSkY4RlNlVnZSeGFQV09W?=
 =?utf-8?B?L0s3OTcyK0V1c0lFN1dkaEw5S2E2YUZ2TWJCbG90L09UQ1ZacDlpdnFMbG9u?=
 =?utf-8?B?VEpGNGJEYkFWY0lLSVpUL0F1QmtKcXJiM3psTjY3MVFUTkIzV0NlS3JsWkE2?=
 =?utf-8?B?b1JrWjJaM0Yzank2bi9iMkFnRWUwS1FXT2FtRnRGbjlPcVhFZ21yQWdCdGt1?=
 =?utf-8?B?YWdyWnNpOUNZVGZlVHpQY0R4ZWFBRk5BaXoyck9vTWJRYmpXRU1mdkoxclkv?=
 =?utf-8?B?SFlwSnBoQmxLMFBlSCswUE9Nek5BVFZSc2xsL0hIczlWRTdXUnZHMGd4c2Uy?=
 =?utf-8?B?dzJTTlJvMVVoSlQrKzVIZlNOemUzeDBOZTNvWi90VTdmTVVuVzQyR0lPcmtV?=
 =?utf-8?B?K0poa2JKbXJkMnVlTEVUbWpISjVpRmRFMDA4a1BnNkRLZUx2enJGanVMQk5r?=
 =?utf-8?B?Rnh5b2pJNDRXWXFPM0RvVkJNbWx3a2ZaQW0vQW1GYVdXeWhoRkRtbFhsaXlh?=
 =?utf-8?B?bndjR3RycDBteFg1bDdkSzg0d1hCZzgyWGpmUUZDV2NJQTA2Q0lnNjV6YVp6?=
 =?utf-8?B?N1hmcVBBRU1DTjVVNjQ1S2NyY0hQSnJ4QnN5Q1JKMnU0WU5hME5lcEkyYU5D?=
 =?utf-8?B?Mlp0bkNteGlKSTFLMUFaY3NyY0Q3dVJnWjk4b1BDRXNWb1ByYzFQQU1abzA3?=
 =?utf-8?B?RE91UU9nMk03bTJRNVpWdmZxY2ZDL21oNndwVHZ3bDNLT0lvczl2K211dEFS?=
 =?utf-8?B?aXZ2SmFFMDc3bWpCRlFwMmZMUGFMdEJRZ3RYcUQ4RUZpdHl5SE9VZy95TVZT?=
 =?utf-8?B?ZldqRkxDOWduSHdQTUtGYXlsZTRyRWZJOGdZZFNNbDZzaHZGbU5Oc3VFWHJx?=
 =?utf-8?B?ZFF1dlNYSmRmaWxEd1p6WjlpSWpWOFN4OS93SmpXc2JmaTA2YjBNREFBeDNF?=
 =?utf-8?B?dGNPMVZQNkRLYkhIOVJHd1ZTWWJ3Z2l3YnpIMjQ5SFZtMy9UdWQxZkc0cTJD?=
 =?utf-8?B?YW5PbXZ0Y212MTZOZ04rcUpGYWJJb2Y3a0I3cVpQZHVwOWxtM0l3V2VvWEhD?=
 =?utf-8?B?TkNZUkJPQ1d3M2pDUGlTcGkzUmZzMXR0SUU4QVpPTXJrZVlsbElNSUVQSHF4?=
 =?utf-8?B?eTdIVVlFZHVMQzVEZmc4WGRzZzBIWndaZm8rVUx5ZU1UTUk0ZW5vSUdRdEht?=
 =?utf-8?B?RFhyblYraG1obXpJZ1VPWmhwQThwbm9wcnpSTVY2K2ZPL1Z1UVdoTVk5R2oy?=
 =?utf-8?B?dW5WSE45QStiZ3EyaXZhZGRIbm9xWGl1OURhdEpXaXdvbnFvclViajBqNEMy?=
 =?utf-8?B?cVF3NldZcTg5NjlmaUdEZUFGajltR25sZGw0NFdLcGdhYzZRcWJzeU45NU5Y?=
 =?utf-8?Q?w+CAqjBC3gmx28p3Oo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4031.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df48751-129f-4be1-e23b-08de6fcf1cc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 15:54:06.4271
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: htSi+uyUrPC5tOR7FqCK+LdIvQ1riDKytzlDnlaRh1DG9zwxw4X0E9R4/arPGHGRFGB/6Ut+xRqiOkVlMrR6oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR12MB9687
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-266686-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Dirk.Chen@amd.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[amd.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.70:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.50:email,amd.com:dkim,MN2PR12MB4031.namprd12.prod.outlook.com:mid]
X-Rspamd-Queue-Id: A39511606B3
X-Rspamd-Action: no action

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEFNRCBJbnRlcm5hbCBEaXN0cmlidXRpb24gT25seV0N
Cg0KSGkgQW5kcmV3LA0KDQo+ICsgICAgIGVlcHJvbUA1MCB7DQo+IFBsZWFzZSBvcmRlciB0aGVz
ZSBub2RlcyBieSBhc2NlbmRpbmcgYWRkcmVzcy4gVGhlIG5vZGUgY3VycmVudGx5IGFib3ZlIHRo
aXMgb25lIGlzIGkyYy1tdXhANzAgLSBlZXByb21ANTAgc2hvdWxkIGdvIGJlZm9yZSBpdC4NCj4g
aHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMtY29kaW5nLXN0
eWxlLmh0bWwjb3JkZXItb2Ytbm9kZXMNCg0KVGhhbmtzIGZvciB0aGUgcmVtaW5kZXIuDQpJJ3Zl
IHJlb3JkZXJlZCB0aGUgbm9kZXMgYnkgYXNjZW5kaW5nIGFkZHJlc3MgaW4gdjMuDQoNCj4gKyAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImF0bWVsLDI0YzIwNDgiOw0KPiArICAgICAgICAgICAg
IHJlZyA9IDwweDUwPjsNCj4gKyAgICAgICAgICAgICBwYWdlc2l6ZSA9IDwxMjg+Ow0KPiArICAg
ICB9Ow0KPiAgfTsNCj4gKyAgICAgZWVwcm9tQDUwIHsNCj4gU2FtZSBmb3IgdGhpcyBvbmUuDQoN
CkZpeGVkIGluIHYzIGFzIHdlbGwuDQoNCkJlc3QgcmVnYXJkcy4NCkRpcmsNCg==

