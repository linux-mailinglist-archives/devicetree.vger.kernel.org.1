Return-Path: <devicetree+bounces-266150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5WeHM+9plGmNDgIAu9opvQ
	(envelope-from <devicetree+bounces-266150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:15:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 449B314C771
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 01D8B3013B43
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E64361DC4;
	Tue, 17 Feb 2026 13:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="g/tv1Yya"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010060.outbound.protection.outlook.com [52.101.61.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415F33D51D;
	Tue, 17 Feb 2026 13:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771334122; cv=fail; b=lfUAnGc3d3oe4y8Ob6DORYaf97964QHEIKNvqoIsbTk29vUqKHRH4tHO6F6TGdstd9t+43RSFd+vKrjv1+5SBfDJPxsFIwSbU6WKfzM+/SN3uyMCTvDm9I5G3ImWJ2q9F6kQEpFOOU4DhEpA6uPCybZtfXc+RgAuSC1X3KzfV8g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771334122; c=relaxed/simple;
	bh=u9SxWKyIPlbyp+oLr1KOoOziRg/8FfUycjB6QR+1g2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X9CVmWP444hmmbojm5jaUrCFhTmevEckqLMk1FpJsIJIERqFan1exYlF9sTzNXpWz11kI99DfCCDkDNg0SBueU1+Y3QxsXJYZc4fTxfKnQsqSC6/6AaXaCvcpkANJFkl/BJbjpEGPJu+KJ4G8N98tGN8OWzz9vWdZgnbMYjCmcY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=g/tv1Yya; arc=fail smtp.client-ip=52.101.61.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tOTyvkCshA+tKRoR/ubH/Pq+uMgRU5wqkCSysDVCbAdlwlJGxZnFpcna+Q5B/fDsn51NYP6Ml+RnYIB7rxBvZXae1WdUkkNJhR/olKoFGQ3SeqNAH9W43fNMG7WG9tFTd2/8SB4dIL42Oa3IYlgC50EgX2dVxtVSfsePqSh1NpxhkzIzJikQEVyrvvptB1iqRI8JyFWGY9zeXh4pk5Uz5MEbW0sO0zLY1DQfwczIpzv+LQ4aABt7D7ZmDXaI2gY6rRghc20D2DFYmwuYTIyxKCZHmDwsyIiVNRNTJRlYiIL1hN64bfk6NMNJ9jm3SBC0fN/OWfmb9yhkFMHNFSnPKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQCVNJ0xhxgMaoaFhTWQILaSB8T+RgQ3cn2tYyBCj7Q=;
 b=v1kqHGMFgDMksbt7mgY5fNUzD5nHvJp2XjB5bwh1kXjCRwW0g6ydDW5CZ+wPYBvdZHNNBnbh5Q1vvUpI1325nrJfbScTx0DDw6dBLeVC6RPbJvhCbbKTyDrLDwMBrmU3ILhdkmfCcuZdrxhfzDYkphutzMzBLS+vCHD/CJLFvBqXJDpRoLh369Kt35fSWEjWWrR5HjwIlyfSSHUJ24+NjHWH2JNRdQWl35K8Ac0ezKvrdyk27ChrBm2Cb2wXy3UdTHEC1hbr4jZTZngo/hLIJqHKbrvJzK2CJoDxm6GnqPwyFKfWIr1ewi24nszX6PJv+RBL+d0N2nD/wPVCtbbrRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQCVNJ0xhxgMaoaFhTWQILaSB8T+RgQ3cn2tYyBCj7Q=;
 b=g/tv1YyaD5fOUhuq8WJ7UA2SWKqyC0rBynwyBK20SQpXRDfTJ4KsVYAYoChPOOCAuKiO/GAXvz1r6y7kuM4DktmRKximotdOndg1p2Eb+8PQXiwjSbLBsF57URS+5pZEm/4s2QpnNsxMYamsNNTR6BzPEjbGkCML7qFLs+c8u7m3UQcV/IFwlEOBvkllEKlHqBtKSfCzr+7XrO4IdY50zH66UnND+sl4VFgZw4v3VwycIqy9gdsbkyhdrPEThCirqYU7fXMh7p2AxoIR7wVYt4wEt0MuNaRuVALjwr2d+dd2j8zdBNf2X9zISwAvtnQ+eCSTHcshZ8ggI51Qi/Juvw==
Received: from SJ0PR03CA0051.namprd03.prod.outlook.com (2603:10b6:a03:33e::26)
 by IA2PR22MB5618.namprd22.prod.outlook.com (2603:10b6:208:4aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 13:15:18 +0000
Received: from BY1PEPF0001AE19.namprd04.prod.outlook.com
 (2603:10b6:a03:33e:cafe::6) by SJ0PR03CA0051.outlook.office365.com
 (2603:10b6:a03:33e::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:15:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 BY1PEPF0001AE19.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:15:17 +0000
Received: from zeus (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id C47D0E8F41;
	Tue, 17 Feb 2026 15:15:14 +0200 (EET)
Date: Tue, 17 Feb 2026 15:15:14 +0200
From: Ian Ray <ian.ray@gehealthcare.com>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: imx: bx50v3: Configure phy-mode
Message-ID: <aZRp4tqggA83BcYT@zeus>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
 <20260217125952.53997-3-ian.ray@gehealthcare.com>
 <1fe4e13d-cc0f-4168-9c5d-db372433c384@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1fe4e13d-cc0f-4168-9c5d-db372433c384@oss.nxp.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY1PEPF0001AE19:EE_|IA2PR22MB5618:EE_
X-MS-Office365-Filtering-Correlation-Id: 6caac805-a745-4c9e-e181-08de6e269894
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VU1Oem1VODkvWnlwWUJNWVlXYjljWUhKVzYrNmJuMnd3aWt0REErNFpMeGJT?=
 =?utf-8?B?VUFmNDkwZ1BNb1oxWW1FZnBkZ3psVzV2VHBkRDZsQkNFWHl6ZFZoOGRRSmdN?=
 =?utf-8?B?c1JBaTRKUUVTWnYvZ1praUlxTGc4WkQ2K1VoNWZWMW9VMUNZUk5ma3JPN1FG?=
 =?utf-8?B?a3ErbFdhQStIemQrU1RRMGQyT2VwZGlDWFVuNzVQTk5HSnhQWmtDcVlMc0dJ?=
 =?utf-8?B?K1pxUzFYaE1xcVN1S3VIaGk5Z2U1VElLMUtsdlI5UnA2bERwOFdUdzhOaGRy?=
 =?utf-8?B?N09UcGE5R2ZBaFBicmZwK1U4cFBsRWRLMU5sTGtuZExiN3ppYmxEb0I3dVBZ?=
 =?utf-8?B?dU4vUWV1UTh4UWFUK2RZWExldlNZYWVhK1Z4NlFFU2svb0VsREJNTzdWT2Iz?=
 =?utf-8?B?M0hRSGYwQkJnbGtuMEo5NmdsQzV3QWVFd3RtZllrdE40VFh4VndadEhpcU5w?=
 =?utf-8?B?QTdUaDRGOXRQaW1FeFdETGtJbDlubTRKQ3pRS1VPcHJ2MjdMU3FJVXVtbjY4?=
 =?utf-8?B?Q0t1Rm1SeVdsUjhFN2JYZ2lQc3QzTWJGamhQbXQ5MXRscHBpSlo5VTE4V2Rv?=
 =?utf-8?B?Z0RsTGZscHIrV3pLaityL29DU0MyOU1qS01pa2pUMWUvUE54UUJnbEJqQWlO?=
 =?utf-8?B?dGFuUzhYNE5oV0oxZUR3YzJiNnljRUM4TGliODhwYUlRbTZGQTRWVTFKSm9z?=
 =?utf-8?B?Y3NDTmhtbmMrRGhpUWYzQzRXazdZV210eUJxZk1RMU1FRzJQSERwd2hkMGt2?=
 =?utf-8?B?b3FyWmFPZGU3V0xwaWhmVEVYbytFV0NrVVVMNlA2S0Z5U01JWlRqTDQ5R3BP?=
 =?utf-8?B?Y2lvM2ZZOFFsck1TUWo2c2FCSnNoOGFuNmdVK2VZbDk0ZnhST3Z3Tlp0ZFMr?=
 =?utf-8?B?ZERXekpCSmtDekJ4T2ErdjQ0cnhhOXBkYlI1MHlYek9Tdyt3bUJaREsydWZ2?=
 =?utf-8?B?ajlpaDZGYjZKYldTYkhSaEJKVVZHV1ZhcStDM014VHFMZVNVb2Q5WXAwTVM2?=
 =?utf-8?B?NHVlclhoRGVGcTQyQm11Z3JTRmJrdExSZjBTQkJwSFErandzT3UvQk5ua3Zj?=
 =?utf-8?B?dXh6S3BYeGNyWVhKVzRuRm44OTYvK1QzOFY5RzJYeVdLdnJsZmtPUCtxWDF2?=
 =?utf-8?B?V01DaWZOcjF1bUFyZERDaVNSVU1jdWJ3SkJQb2xpL2hVQ3hFbW4ycXYxN3p1?=
 =?utf-8?B?blVjSG5mOTZCU015SjlUQzkwaVVFdXg5NmZ1SFRMT2p6VFl2OEIrSmQrYUZy?=
 =?utf-8?B?Z0Y2dEszUHhPMFlQMlUvTGUxOWkvZnF2WHlVS01kdDd2T2tjMDFBbHluWXk1?=
 =?utf-8?B?MjY2ZnZ4bkVvZFNmUi9Cc05NZis4STdDZVptK1NkUkxaRHltWXY0aEIyV1Fr?=
 =?utf-8?B?ZUlrWXhmT3V1clhwM2RzQkIwQ093SkplQkxJVVgyZ1U3d0ZlQldlaXMrMm9y?=
 =?utf-8?B?ZWNQSGJTTGFsaWhNM3l2RlRQZUZqUE8zdTdUMnlESGRQZnhTODBWSGNtME95?=
 =?utf-8?B?enF3OU5DMVpCTXQvWW5GSnFRcmtXUnVVckZoS1YwQUUvOXhkR2V2blJCd0VW?=
 =?utf-8?B?QkVaQVlpV1pvbllDV0ZxeU5lV2xqNEMxTklXSk1uQlpaM01HWXpvMnUwZUcz?=
 =?utf-8?B?SVdIRGhKbExMSzUrY0lDRnZlS1JDZ0NUdXZmRmFLL283eVBWMDBJczA2eE16?=
 =?utf-8?B?UGY2clpDRjdwL2xmOVRsc1V6TW1ZMTFZL1EvU2s4R21jaG4vRXBBc0VCK0dU?=
 =?utf-8?B?cnBsUzJJOXB2WGNBL2pSUnlFUG4xMHVwRFY4SUtoVlJMejI1aUkxMEFwRWQ2?=
 =?utf-8?B?ZVRnaHYzaXFOaUQyMXh6YjBHYzJNdUR3UFMvTzV1YmVSVzRrMXc3U0xUWXc2?=
 =?utf-8?B?NHlsRHZPZVVsOENpNGNJR2J4WlNUWDNoL2h2UjVncTl0dVllQW9mWHdoWFR1?=
 =?utf-8?B?Z2ZWYjdwOXBqcFBHVGxkRi9VZUYybDJ2RlNVK0JQMlViejhUT1hxclYyNm1N?=
 =?utf-8?B?dTlGNm1vWUR4OW9sZmZSODRvY1ozVWxwVE5NSXBZL2pTTldJQm5ENVhZWDdJ?=
 =?utf-8?B?VENLZzNBdlZ0TjhiZ0ZFUkdKbWtoUlp1UW9CaGhiNWxwazhlTmkwNXEwOXda?=
 =?utf-8?B?Qzh6bTRTSzFHNmlUbVZXZWRDcGtncThwVWozejgwdUxTa0p1QjdwZkZQNGJM?=
 =?utf-8?B?YzRSb210L1lFY3RzOHlPSXB2ZGwwNS9rODVPTHNjQnV2SkRSb2J0dEx3VlpZ?=
 =?utf-8?B?aUptM1NWYWVuaElpeWxKeGgzTDZ3PT0=?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	iq/ZI5OMdGbS0rS1gU/c7ERn1ooj4mxr7u1ZrhjUIJ4scpICcGxMkyysWQAYSJX7oCBGjnxLpx2NEzQd0NeJheX9jWrCsT+v0kk1OAz6cukUpoMUk6jEUY7uuIrr0BkZLYwQcPu72RbepvNp5+qqJ2ddXoADKz0YFNO1eyHt53cZCD9TcAEv1vhoN7cDyd0YbuHt+QL1kWpRk+V+HF/CFhBBLYA8MOaAsNQioU86MJ9nBAvV+4WS3e6nP7/UaCdCZ7r4H/WszliEeqX/ZHmjRICUyMdJtr9UZq7jRELAuMf3upTIl8eBSkE2ChEVMu2HrXcIOBuiPN2yljqMNnM2XtYxl21oM6lnYsiquiMW6mWDtJDz+Q+aQh8PdnK+64iakbg1biyxSB3ny1ZHgZm5S9A3oo7rMl9zdj+8choQlvhG7Ylvq0C6MccNvgp8Q2Jl
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:15:17.8034
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6caac805-a745-4c9e-e181-08de6e269894
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BY1PEPF0001AE19.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA2PR22MB5618
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266150-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,gehealthcare.com:dkim,0.0.0.4:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 449B314C771
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 03:08:17PM +0200, Daniel Baluta wrote:
> CAUTION: This email originated from outside of GE HealthCare. Only open links or attachments if you trust the sender. Report suspicious emails using Outlook’s “Report” button.
> 
> On 2/17/26 14:59, Ian Ray wrote:
> > Set `phy-mode' on network switch CPU ports to eliminate a warning.
> 
> Can you mention in the commit message what is the warning

Apologies for not being clearer. (Checks notes.) The warning was:

-- >8 --
mv88e6085 gpio-0:00: OF node /mdio-gpio/switch@0/ports/port@4 of CPU port 4 lacks the required "phy-mode" property
-- >8 --

I will prepare a V2.

> 
> and how did you get it?
> 

