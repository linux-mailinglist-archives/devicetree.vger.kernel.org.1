Return-Path: <devicetree+bounces-264316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFszHVcCi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:03:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4020119533
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2FC83007E0C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BFC342C8E;
	Tue, 10 Feb 2026 09:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="N0jTtkgW"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013045.outbound.protection.outlook.com [40.107.159.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7043F311C11;
	Tue, 10 Feb 2026 09:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717545; cv=fail; b=GSFpOVavBNji6nLiqu4RC+TaMhTRC/50fyVIOiimXhj4mhTSADEYOySc2AB9FUHOZDnCF7OGQC5+k1eeXD6i8I0u99972zGRGpJsmd+EFKg71t8q5cZpjTMHtfP5SBzx49IdnQ7ErkxhzKFM0dQsNBDPZZSUKDVXr1poXq9RIjU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717545; c=relaxed/simple;
	bh=pTm6l9M4+5hfcMs4iweRJGvOxtyg+m1q+p7ATfD7NCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=MV4QkeCbTHO/LGKXJJsDBdXGEKOvqcl3lQbBKNyo6G7mtW2eLz50NgTdn1KUdFB15DrEf9w9DWkl/bMq5ZRZzuYKstl2yDpRLYbEG5xs6Ttts6ULP3JUvUgi5TlFT3x+ciww5rdFhrm6onZ5GtkXiJhBETm+SXFGbt/E+MpRVjE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=N0jTtkgW; arc=fail smtp.client-ip=40.107.159.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VVf84UYNjxhlH3o/FkY99hHS++sIs0Ma66n6AL82bqr26Seqph/XPDqpbXTkjrIlnQSYfZABEPvr7ChJVowdXzRUtsR1aHkj+LzvLLdekgv3yLdzuzC7LDNKBRIanXbgyY/mOV1HXt29iUJrG8JvT6DlCiZUBx4g6zZHW4wEMfUB6qhtP2+Izr9+jS7YPRKB2U6D97mmikKU+CxPe2vgCDkSZENbp+bIx/wIGMCiqetxNaf/FaDWsn5lLcFNPHoSOsycqAzGplyLBNLgVkU8kc5DLMDZRbhT9QvfJBAOZP3gicNrnAGRIQpS70c44wg2HFjUVClciiC6uwU0q4Adgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yy6+UR8mAAT+oN/VnGrd4/vwD2Sy7qYU0EOtFCbnBAg=;
 b=DqpQy4Ihg6KE3xRybJcnliDJpyh5E2/ogOee/3jEMMXebjjMe7KTrCQehEDQZdZHBC4Vtpd2lzb+Jh19un5dCcHAIZitL178CtkX+zxu4wLe1oO8YCmQqzSunDhN4TB2mGxCns6Av5d61JCxNUf9KIrLf/08j0k6vEZsOJN8JbWC0TxlvZe43uOrXUnzZpOuBfamEnjyjpVlSRGckum/r5xRsoOhuoKHV+teI8W9Mp5PU0DR92NRClMEbMNBv2bPIJ0fiNfeQ2Uz2LD5qJ7cwn/ECne/E4yAgo7PYxl6QsyKXeslV6Lhs/ucKKfIWQVHMsmAqO8XdAFz2XsAam3b5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yy6+UR8mAAT+oN/VnGrd4/vwD2Sy7qYU0EOtFCbnBAg=;
 b=N0jTtkgWFovacKscFIniAXFZo5lBw5AmVufqJ0tncP3OgSVzW5qjhuKU8h8MS5yu9JwkEuUedJGLrMaCzD49lFKyxiQSquI2C1vwIkXGGNjJ8FKOt+pbgxUKALJrpWgfNAN971WELRZDSRdlTLEVZtCx2MEfrBH3O03T2oHRGhA/4Pth8HtGkZI9bKXNpaYNHQ+q8ZIfqQzkd50RqAeUcNjOZDsxId4XO7muXAJrV3HrRVQWIxB0P5+9bR4iMmfLvK1MUH16NnoJI30l2ebD0M/kwjtH1N0HySmVE9Xv5ef3MRw3boongqLC36tGqnBMN2Vo9+MMf3+GenRu3xywyA==
Received: from AS4P190CA0020.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:5d0::8)
 by AM0PR10MB3523.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:155::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 09:59:00 +0000
Received: from AM4PEPF00027A62.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d0:cafe::bd) by AS4P190CA0020.outlook.office365.com
 (2603:10a6:20b:5d0::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.8 via Frontend Transport; Tue,
 10 Feb 2026 09:59:00 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AM4PEPF00027A62.mail.protection.outlook.com (10.167.16.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Tue, 10 Feb 2026 09:59:00 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:00:41 +0100
Received: from [10.48.86.212] (10.48.86.212) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 10:58:58 +0100
Message-ID: <ce0fb318-34e9-41c8-9d81-babe6b8561b2@foss.st.com>
Date: Tue, 10 Feb 2026 10:58:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: st: add RISAB1/2/3/4/5/6 nodes to
 stm32mp251.dtsi
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
	<alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
 <20260209-stm32_risab-v1-3-ef0b2b6a7e0a@foss.st.com>
 <c4212679-9e39-47d0-8a53-62427e2ef7aa@kernel.org>
Content-Language: en-US
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <c4212679-9e39-47d0-8a53-62427e2ef7aa@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00027A62:EE_|AM0PR10MB3523:EE_
X-MS-Office365-Filtering-Correlation-Id: c2e1dd9f-4eab-4669-3c79-08de688b03cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YVVpSnhUdDFvSXFaWFVIUjVjMlBTVjhvclJuT080Z3RZakFlN0Jlb1dyRy91?=
 =?utf-8?B?bk1NOFhqU2F5QXhXOG5CMElTbVBYQ0NrdEpsK3VENnN4R1FsV013Q2xjZHlK?=
 =?utf-8?B?L3Fza2N4ZHZuUFB6NklLZDZ2NFBvUklRSnV1eThMOS9MQWFwcUJKM3JobGFO?=
 =?utf-8?B?U1p1SEZQZ0JmaHZwUEtHaFNrbEhCL1VHTFFHRG96ZUdGd3JUNFF5YjBWeFZm?=
 =?utf-8?B?Nm9LZjVuRlZQT1dzLzZ0OThEM1FCemcrYWRDZWROSnVnc1JYZ0RVUWorLzNU?=
 =?utf-8?B?V1BFMXdMQ0FDV0doMlJoTHFBYlpNNjl4NDd6dFk1MWo5bW5hOGpIQTBkL3dE?=
 =?utf-8?B?NjBxQWl6Y3FTOVhoVVprZ29rcmtzVEtsSE1vRldPUXo2SnByd1pNSE4vbnhn?=
 =?utf-8?B?N1ZybzB2alI1TWpHZUozOWUrVnZDRHhKTXYzU0JEdWtxSGFucGFYNnFBUUYz?=
 =?utf-8?B?NTFYS1A2M2xJUnowN1lEY2MwSThlc1RZa1p6QVhKd1dSV0FGR3Ria0Z6TElZ?=
 =?utf-8?B?OEhNTG5sVFhFN2FKa2F2RTIyVmp3S0hLQTZhSW1uaHFRVXltRWtKcUo3RzBN?=
 =?utf-8?B?eVpGTUM1VjVmTitHUnVJNkRNUEVSQ1dnWkpjS3AzS0R2NHZPdUxsd3N6dUxa?=
 =?utf-8?B?KzJZYTRYczVpcUZTMnhRbG1Kb2syRStaVzYrZEdKRlRlSDVwODQxbStrZm05?=
 =?utf-8?B?VUJTSmQzdjdNdVVKSXJTRldHTS9pdm5XLzBQN1Q0d0kvaVQrcWJSaVQ0cWha?=
 =?utf-8?B?R0JKcHFJYTkwcm1UMGJ2M0VsVTUrTHVsMlI2VEdicGNhSEY2TURxMHo2MXZj?=
 =?utf-8?B?LzE2eXFPOGdkRjVlV1ZGZHV1QzdOM0pLdXRWdDAzWkFnclZsMm5zcHRKRjZL?=
 =?utf-8?B?NG03R3E2ODJHbi81MnR4TlNhK3hEVXVEOUZTTVJadFlzVWEzWVcyVDIxSzhu?=
 =?utf-8?B?ZmtONzBIY2pwUGF5WEsvNGxFME4yL0I3T1NRVXlzUzM1YTNrUW90dWhwc3dW?=
 =?utf-8?B?YzZjNGU1bG5oRzZ1a2xneHR4Y2p5Y3UrQ0JIUHBvNFhoeUM0czZSWW5NWFVh?=
 =?utf-8?B?Z0xOaUFpdHhFbHlTa1l6dXJIck8rRXdmS1FNNkhXd2JQRE5KZ04vVzRLWThn?=
 =?utf-8?B?bXJacEo1ZzdyQVRvWFNyN215Vm5RcjJzdHpTaU52N3R2SDc5Z1FRR2J4bkJU?=
 =?utf-8?B?Y1FoMnZMck5STFhEVkNhN0pibkNBMENZTEV3ZzJHOGsxY0NTdDllR2owQnpK?=
 =?utf-8?B?Q2J1RzlRcjAxR0t2cXlhYnJIU2VjL1NEZnJMa0ZWMFJXL2xHVGYxU1VUZlpM?=
 =?utf-8?B?NU9rV0l2TWNiRjZQUjFuZ3FQaldCQlBuRVYwQmVkR2ZObkt2dWhMbWk2NkpM?=
 =?utf-8?B?eWJwczRFYUhQd252b01SQjkxY3oyY0hOK0JvTUh6b3U1VE9ZRDlTUlVxM1NI?=
 =?utf-8?B?WWtEcVJ3aDQzazJaR1IzWTNTbkZmSjhuVnZUeDQyNyt3dVBSZE9oQ2dqc3Jk?=
 =?utf-8?B?ZlhWVy9nZm1SMXIwVXRJS0hSZU16ckUyblZ3dnd3aE00S0VWamNRRG5KOERr?=
 =?utf-8?B?U20vK01zNVZ1Z2dkY1pDbWpvc0J0OGNUMitmaTUwbnBOM0N3MGkvdmIzb2VM?=
 =?utf-8?B?Rmd5NDM0akliTmN1ZDZBRWZERkp2eEo2QTg2bjJtVC9INXhGb2R2SUY1ODFR?=
 =?utf-8?B?SjV0U1dXRHR6ZElhdWp0QWlTcjI2em9pZUZIYS9TSmpBTG1HS2MvQnovZThH?=
 =?utf-8?B?eXErZTlaV2FIay92UzZIZUx5N1NRdEFZdDA2aGJTTTdoQ0kxZVp2RHFQaHN0?=
 =?utf-8?B?cVk0dmVwMDVtU1BUL0JoK0UwZElBVzFXelFkdGFGTG5BdkpqYVgybk42dTc5?=
 =?utf-8?B?enJCd2tQM0txbzBraXhKT3VYNUJsWTBRQnZtVy9EWlJJcHdrTG12VzVKWEFY?=
 =?utf-8?B?eC96dTI1bHJQWTA3c0RpZGFFeGRxWTBYU2tsR2NsbDZzTUgwcjN1NVpCbDVR?=
 =?utf-8?B?cUxwd2lVNmJKYkpqL09KUnkwSkdrWEpMdVJNdHpFdWQ3MEdIejRVdy9HNUo0?=
 =?utf-8?B?VTN2clZjMHJmQlRaQnB5YjF5QWh6WTF5ZHNQS0tQc0h5WXN5dnVyZW9jckVh?=
 =?utf-8?B?SzU1QWhxR3Rxc2M2cnR2S2tybUx6aG1Na1RES3NCUS80VDN1TDI1eVEzV3Mw?=
 =?utf-8?B?YVVTTDFFT3ZYbFJzaFRyQW9oa0p3cFByZ1BxOGREVm5wWGlMcDhSQ1RoRkNq?=
 =?utf-8?B?cG82K3g0UGJydEEzQTBKK1lEOURBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	pPtz7XqQ1h++4lt6j079dDBRov2CmTF0lfUnWI1uxbEg97HLi7IdvaunJea5mD87Ev3Qo12OZ8/HT+2yDt9fqpa4fqplPlNm+NGubJyk0oAAum9En2oBwnicCoWjObDEtO+mSqK7tf2UhfUro2jKFnACi4sNwEJlIJl60Qvoom70hhlt6cFtDckfaivrmIIkLjhW/XZY+c6X0mMMiV7G5aMw1PTqrrMIABMDx+mt/k/zOY19JRcE+Lg3ciC0ONM56yChcDHeEv3cw9lN/4h8fMo1X3fktVXLp2h3QG+AoYIl3T+DwICS5zs7qrQg28PWmx9MjCpk82lw2hOxXlFsE4s6toZ9uwCV/rMPYKzXevfmzOjMBaS8qTMccxu349MFwG1ruJfA+nAh9xKHb8yXpDbq34tV0VJYf6H07Ux+r0UDI/xW6eySD9Kvo6vmrfCp
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 09:59:00.5828
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e1dd9f-4eab-4669-3c79-08de688b03cb
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00027A62.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3523
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264316-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,foss.st.com:mid,foss.st.com:dkim,420f0000:email,st.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gatien.chevallier@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C4020119533
X-Rspamd-Action: no action



On 2/10/26 08:51, Krzysztof Kozlowski wrote:
> On 09/02/2026 15:59, Gatien Chevallier wrote:
>> Add RISAB1/2/3/4/5/6 nodes to the stm32mp251.dtsi device tree SoC
>> file.
> 
> And what is RISAB?
> 
>>
>> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
>> ---
>>   arch/arm64/boot/dts/st/stm32mp251.dtsi | 48 ++++++++++++++++++++++++++++++++++
>>   1 file changed, 48 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
>> index a8e6e0f77b83..e9d8338b2017 100644
>> --- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
>> +++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
>> @@ -1733,6 +1733,54 @@ pcie@0,0 {
>>   			};
>>   		};
>>   
>> +		risab1: risab@420f0000 {
> 
> It appears here as node name as well, so it must be a generic name, but
> I do not recall it in DT spec or my knowledge.
> 
> Best regards,
> Krzysztof

This will change as well.

Best regards,
Gatien


