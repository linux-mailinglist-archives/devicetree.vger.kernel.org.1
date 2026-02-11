Return-Path: <devicetree+bounces-264791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMfiKUuKjGmHqgAAu9opvQ
	(envelope-from <devicetree+bounces-264791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:55:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6C8124FE4
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE8C230068ED
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C95A3563C7;
	Wed, 11 Feb 2026 13:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="n1RxKLhV"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011036.outbound.protection.outlook.com [52.101.65.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EAE325715;
	Wed, 11 Feb 2026 13:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.36
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770818111; cv=fail; b=nXzP48nHdTbswbX4EVMGufC8L+JFv7Ltitn/yqjpO7mn2kai8aGmI/jEcXbzaqXThn6goubn2MOXdgrwjll+bJ2+WoFRsIaosiGa2qyAAmkKLMk28ifunHIjJp7Svo0MhR0LWO2hR2sO60KxfEk//NrKGfl331N5MmtKI5kkCfc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770818111; c=relaxed/simple;
	bh=I+KrvnR40jzqFiCo0BDWpZ1jOIMVHzwa38jr1iQkOX0=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=hHes+IpE+IFK2hSSbjDfia3BlkCXXSG1aeEOzcDN+LTA33dTjTM27nrbdZL2LuvU8F1Mn+hc++oavE25W/4lQS9H0GKcQXwPi6HxNDskKPu2Z708+BRgCBLUsAuT1jkGQxeGY1xhIK7JfgfM/hQEHogEp2XMFQZvPYmWNqHX7kg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=n1RxKLhV; arc=fail smtp.client-ip=52.101.65.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lD5pW3OWp+pArLEBclt7mZd8HlfppwnU3fFH2GsVeHD0HJKENOP9ZoCQGs1/5SP92qUd2CZKBLa3t3tejER+j/xTku5n1hxvPVLVQ9ja8PZy/4IMuy8r8riCCsznPyspUyy5lhvTl3UpI4EAOobnjxixv/nsoI7N4TFLK09V3Ag9UZW67obh9yXxnr/0B81hMNAxeJ323ZEnB7OaLq5M4choMfofIE+LyguTs4eangqN2r9MaqCFhULdC/KQHwqg9bPCVwM5b7fG8tm9huBHE2lDE23AP8TMcXQkVHqj9uBA2VjUPjjg0zqGMph7uBp/m359+ynJ86aqyK+YU8YlXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ml57KqT5lzhPCBF4ThgoCaTT6BVdlM43pDiV1QmsKCA=;
 b=xN0ALO6765xdacelDEZxC2iND/8GU1WaFkTTSTbHEb26mPz8pasRSL0ZbGaZ9nvoK8l/eNHnOuSvLWiG4zZtlFgI+MtfKZWgdYQMyanIPH/1YGboNLmvmHrUJ+xNMNoTXeen/enLyi2tDUEgeR0Li/5X48HUsQcvAZZJTdg4GAaOM8fK/4zuhO6o333xBCm1XXCgwo01ifGd4FnlZoVEGxTm0+gUwsyrx/ZTrZyrlTctXvv+z8F+b9u8pJVY//agN3lfgd1c/QAiywRCF9f+az7K1/zj1oEVoqAnf2sbANkfJJlYUfoNJj6Jj17Qa8uUbn3p1vgnjhOXFg91T0cIAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ml57KqT5lzhPCBF4ThgoCaTT6BVdlM43pDiV1QmsKCA=;
 b=n1RxKLhVqccnbXqjnsiXvl3mdpmZc6x+TBXHIskVT+MxQLL73kUKkl+HR2ws5iO1pgdJ/0pysSLDvwB0QyUL39eJf8qcghXBzz+4gvMtgm+NVE375eiR+Z8+EvxLopvpfqbZkyrCnwLwwhsADqv78jUnk4JwMF9DCcqa7Ldsy9aIcW4W6Gh4ZeKkuBf/93e15jmOyCpyUOJY16XerFy4yBcXCntNl1UxGyy1CIh7A5TuSNsF7K2SXO3SKJgCOrWQ8uC/2zizUMFgUVZVTdgkNYEtTnM24eJoi2lsAOuskD0AstXADmIUEKgFGs4ytkx0DpLgxDIoemrjhAyMMj71NQ==
Received: from DUZPR01CA0009.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::16) by PAVPR10MB7010.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:305::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Wed, 11 Feb
 2026 13:55:02 +0000
Received: from DB1PEPF000509E8.eurprd03.prod.outlook.com
 (2603:10a6:10:3c3:cafe::58) by DUZPR01CA0009.outlook.office365.com
 (2603:10a6:10:3c3::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.10 via Frontend Transport; Wed,
 11 Feb 2026 13:55:01 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 DB1PEPF000509E8.mail.protection.outlook.com (10.167.242.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Wed, 11 Feb 2026 13:55:01 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 11 Feb
 2026 14:56:43 +0100
Received: from localhost (10.48.87.93) by STKDAG1NODE1.st.com (10.75.128.132)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 11 Feb
 2026 14:55:00 +0100
From: Patrice Chotard <patrice.chotard@foss.st.com>
Subject: [PATCH 0/2] arm64: dts: st: Add BSEC support for STM32MP21
Date: Wed, 11 Feb 2026 14:55:00 +0100
Message-ID: <20260211-upstream_stm32mp21_bsec_nodes-v1-0-8379bf97b0bc@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADSKjGkC/x3MwQrCMAwA0F8ZOVtYMqjir4iUrI2aQ7vSbCKM/
 fuKx3d5O5g0FYP7sEOTr5oupQMvA8QPl7c4Td1AI/mREN1WbW3COdiaJ8qVMMwmMZQliTn0zDf
 yfJ1ShH7UJi/9/f/H8zhOgY5FA28AAAA=
X-Change-ID: 20260211-upstream_stm32mp21_bsec_nodes-16aa826a73dc
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509E8:EE_|PAVPR10MB7010:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ec61145-1685-43d0-94bc-08de697526e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QTgrenJOR0h6ZkhZQXpnQnBNdStpUzBiQmFyUGkzOTFwajl5S2tIa2dpR2wz?=
 =?utf-8?B?SEt4VWoza0RPSmRIcGRxTURCSE5BRkswdDdtSUo1YkdMN0VuZDh1Ym1jNjVr?=
 =?utf-8?B?eThzTUxYbUtIRTBoeC9rVno1MDlRdERxeENoSS92aEFROWJrOGtVL3I0OXZW?=
 =?utf-8?B?M00xbFN2VGk5MUpFWDZhclZaUk5ZNXNpNnErdVNQbGNkNXRyaVdSSkZ0Vmhr?=
 =?utf-8?B?V2tmZ21VOWdpVHp0SVNTV0dmSWpXYVlwSkN5a3lVTVd5WFRKZ0ZVRlNqemgr?=
 =?utf-8?B?MTR0bkNLRC9qRGZ1MWN5WUJoTGNDazByVXFtWFFkYzRNY0JZcURDVlBFWjFC?=
 =?utf-8?B?TEJKRFVFK2xsZHJiU1NrdDJBdVRsSUlGbjVTSnhDUHE0d0tPN2p6NkpGZlNo?=
 =?utf-8?B?b2pUY0s4ejlmR25udlFYUytJWUE0UXhuVEY5UHpmcENOemR6WDE2TTAwNjVz?=
 =?utf-8?B?WDFNOXhrS2thdEdDekhKclFJdng3UFM0bFoyLzNDdXRLRTNGUmNsTWlUN21M?=
 =?utf-8?B?WjUvbUFCSjBVTHpQbERPRTRQRGRoMjdCaW9UeFFTS0pBc2NicGsvMHVrV3l5?=
 =?utf-8?B?eWxQVW5wZFZGNnlqanczdU93K2pJa2NRcThxZ1psdWp1NkFXSEpkYklSaXVY?=
 =?utf-8?B?MGhubHIrOXlYVlZkL1FTMi9oV1UwMUFVaytEdHNibUpZMmlMTmZKSjBqSjh5?=
 =?utf-8?B?ZmV4Y2RuL21GSlVTQnR2K3JzK0RvZGNGQmtwZ3A1anZPZEpTbTFTMG1uSldX?=
 =?utf-8?B?TGRrRXVYaGJNWkFzNFQxMDgvQzRWUkIwc3MxYmZLZ3lxanlraW5vcDZTWkls?=
 =?utf-8?B?Sm9ueWNIMDFHc080K2NJSGE3N3d2cVZHVEwwU3RLYW9EamlTNDdzWFBScHRl?=
 =?utf-8?B?TzhlSndlVjFTRk5Ya0JtY0pDNnl4K3dXWXlYTzJSS1owYjcweW5ocHJJZEpG?=
 =?utf-8?B?UlZoK0dDK3VTb01tOVRwZ2U3Wk5BeEMrSCtsODBUZG93dXhOa0pKVzNjdFY3?=
 =?utf-8?B?eDVNNTZJRFluS3U5Q2lQQThwMjY1cGZLNm9pY1V0d3pCWHA2VWRkdzFaK04r?=
 =?utf-8?B?bUYwMmNGM1RSa1I2TW1rOVNyRDQvdXExTDZjM3ZmVEdhKzRsQ3VFQVVqRjVN?=
 =?utf-8?B?M1JRL2EyM0VDTTFwelRJc2lENzJRZEs3QkFsVnM0dlBFZmRmOHhGMkJDQ1U5?=
 =?utf-8?B?SXQ2cTFaOVQzOE5jeUZTV0VNeTNtMmQ4aU1RekNsL28xclIzRUZwVGdGc2tx?=
 =?utf-8?B?LysyUkdjMno0K3ZxT0ZTaE4rWmhkcE05cXNqa1Q1c1JIZHplakwxVXp1ZHN4?=
 =?utf-8?B?YnJjOTlwVCtWNHA2a1hTUDJ5dEJPZ1BhSmxrWkNmVUk2dzdMWjB1dnQ5VURl?=
 =?utf-8?B?OCswc1puSjVhMThGdkF6QmZiNTBiUEFlcjk3azFxemtYeGpkMkYyMDBqNEtx?=
 =?utf-8?B?eFlUR0xMVlZDN1V3N1RmTE9mdG0xSDJ5Q0xpS1QwWEVpcEhNcGhoaktnMWxQ?=
 =?utf-8?B?NWRxRGtVcTVqdDNvSklod3g2NlNIMFRQWHA2ZzhnNFc1WFNpOU8vRVpFQ2hs?=
 =?utf-8?B?Y3QzR1FPem4yczM1aW9OaGlKaFJEdzk1R1RhREd5QkY1UVBlUS93NmdnS1pz?=
 =?utf-8?B?VjY4TTdqRmpxL240cmIrSTU3eUJySDFkcWpOSXNBa3QwZm5UWWcvK29jRlhj?=
 =?utf-8?B?dVVrazNxSFN2S1ZEZlNWK3ViWVFSdmV1VGc4UXM0dXBJUUZzWkRKait6M1hp?=
 =?utf-8?B?amJHLzZJTGdWcTJVVVJhVGl2KytmcTJlTVc0dGFKeUZvYzRQWkdhaHV3ZExP?=
 =?utf-8?B?YUNndlRGeDMzcjJKcWxObjRpSW9LcVkvdkdsa2l6N0tIdTZLaCtteVFKUWN3?=
 =?utf-8?B?V0FJZXRFZ3VSdnNabHFxU21zdTMyZzVNNTk2L05IcVJqY3NvSnpKd3FJR2dU?=
 =?utf-8?B?TnI0dGMvS0VsazlURFFEMUlFZTJJeVFMVnJyVk40UVNtdTViOWMrSWcrK1lo?=
 =?utf-8?B?Nk96UDF1VlNXcU5Od0xGVW9DVE8wNXR0VWRBbElaR1UrZEExV0Zldlpkc1FH?=
 =?utf-8?B?YkdUdTBvYmJ6WnhOT3B5ZmIzbTFVeTBCOVdSOFZLeGVZbVNTZmN2bjZIc1lt?=
 =?utf-8?B?V0EzNXQrNmZEVldrMzF2OFdNdzNHWkRTQUFEVGQ5UUljSE5yamVubmdURVNv?=
 =?utf-8?B?M3libThxTHFFTVZxbkdnbkFsMTFib1EwYU5DZkwrOU1qN3cvSkY4elRKMkF2?=
 =?utf-8?B?Q09KaWtLaDBhRG1LSlVvNmFleUNnPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	lTpfWy6dqDT/x3+2sEk5OfmBJy9na6Lep78cG83QXwrCZgN1c1e++4t3XE/Pc+tuc2uTAdMebUrTGHeXQSe2kLpYKKonNQdVg1KvSdKrp7i59VSD1YVbpoHKB4VhxebzvheCKRZa+XPPbD5WhyT++yYmfkvDYCOqRJbuj2sBMFmRH6hzmb5qGHXX2txDPdznA1Hn+OKXIbs0s8c5c8gfr1xO6N5QHJL18i8dAaCJDGhPrfa5yopyoW0oNabXFObzCFHEkiUsSEcLfHdgRaCIE3ugGBC+2LZ07Sttuj9p81rDcUyVxegzKV/TVPJnlp1GWxT41fPtW3blV2OX1wFKp9ypXvpwowUGSoWXG2RoQY90Am+5HSkmlsXBxvdm2WcpMJJ1NVDOeaneHr6EfAX/HuA0gOVZLDasfCiFvQoLXbyO1iU52ISPDSY1ucIguD7S
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 13:55:01.6752
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec61145-1685-43d0-94bc-08de697526e6
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509E8.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR10MB7010
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264791-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,foss.st.com:mid,foss.st.com:dkim,st.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patrice.chotard@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1D6C8124FE4
X-Rspamd-Action: no action

This series adds BSEC support for STM32MP21.
It adds bsec node in stm32mp211.dtsi and bootph-all property in bsec
node in stm32mp215f-dk.dts file.

Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
---
Patrice Chotard (2):
      arm64: dts: st: add bsec support to stm32mp21
      arm64: dts: st: add bootph-all in bsec node to stm32mp215f-dk

 arch/arm64/boot/dts/st/stm32mp211.dtsi    | 16 ++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp215f-dk.dts |  4 ++++
 2 files changed, 20 insertions(+)
---
base-commit: fd9678829d6dd0c10fde080b536abf4b1121c346
change-id: 20260211-upstream_stm32mp21_bsec_nodes-16aa826a73dc

Best regards,
-- 
Patrice Chotard <patrice.chotard@foss.st.com>


