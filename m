Return-Path: <devicetree+bounces-264328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKcRCd8Di2kMPQAAu9opvQ
	(envelope-from <devicetree+bounces-264328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:09:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73659119727
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DFDA3116A47
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5EF34A784;
	Tue, 10 Feb 2026 10:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Lj6pe99/"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010007.outbound.protection.outlook.com [52.101.69.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E12D349B04;
	Tue, 10 Feb 2026 10:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717845; cv=fail; b=UzGad6iCsO5gZ4pYe1wNWHF8dOvPTBHfbZwEqNr/lQDXuI7q4X5h9Y0TppH+BaHR1oXNtC84HSawxZrlMv6yg3rCeTQlHXkp7wPv9ytcI8n4K8DdR8WpulOJvq8xnyYBQdS/Kqa8PhO5NJrQCCOhDh2C+HbRDRp9rABRhgiBHUg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717845; c=relaxed/simple;
	bh=lULcq2N8LH2klB1HXosqPtOSJuS8AM0maI50HXBUyK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=MyB4szfp8mF8TPXfaPEjxCiI4/YSd2nmFjbNJnT+7Jsh2PRm3E7lmmt3eGGT+ZbtTBE22Ldsz9sUFhqCSkASFokLWEH6OTNUDmbc90GtDHqeb3CI+9Ao3x+9AkfJeaWFwq8P0hfOpiG2lzukoNZBzhZRdEcfVLFHPEtRvFDFauE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=Lj6pe99/; arc=fail smtp.client-ip=52.101.69.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lzRVTnjTi4D0d/xLYCYoGLRblLKz0FVMSGMzgHCEcrkPHpA0NwkShObk48V1p0M5MamEfB9OWagx7o7u/mPn0690Z5MwfbQLZnPk+15gpRZA2uCzCkrmLfvBdq/sBrel/2OoNncB/8/A93AjXPbCJJchYodCbUwLv6QLflK6FVqrtai2YjROnTDaUH9ZHZC1T+sQlvg0QIvigOWk7q7AO84fYmrHxjMatGyHbsOvJfRSnby11OvTw/QuDwJEfb+UJ8rqcM8hEfxrbbJZMaMJsqqEvySiUljTa1Cl4qLYMi75py1j4/SUzhxy/wzCBO6JnOazCfsiIbVLRYbEtlqtww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eb0jHer/r7sqpqUjRHdPjpcVrtA7Kpp056ZNz+UidH0=;
 b=A0hK/qSRyBMb+FiPVnrz9fiixYknNH04FyPYsvXqC/uCLd2gUcdakPc+B5xn+7/bxcRyzVNc6a8L1fBHBwUuJnO39hM9/3OFzQ6QlKDBgr0b9rOe0W3P2oIZcWXUWCDpCwNaAie2kX26hwDK1/P0zMjLu+e+gOp3htYHpDwn+XIt4c6VABzHJ9/m6vsNAPyR8ip8yAJkPN7SG5YJz/6sYnXpiVEfJISlahHakCrHweyoInB0o8McSV87XpVd0ZffCo1vQQz5GeT377fJRNjYjML6m7nbGkjBFje7whlX2vb3gUYg+8LrjxAb9o1cn4XfiNLKANjKpnN4/GKTk+xNNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eb0jHer/r7sqpqUjRHdPjpcVrtA7Kpp056ZNz+UidH0=;
 b=Lj6pe99/R3p783ay9B4waTK3dmhsVHObKqLq33V/e7IUkxIOULsVFZ9bzZQhI+lIKMX+kpoj99qIEHxDV/BdA58MctB3MqYTE7BS02gMta/gV/N70+PJl3Bgx3Rv69lwkNM3qoFaMIYDMTHftQfGkYD1eLWhP6foOOFCNdb/ujsBgraaxC1DSnF+kuDKr57AoZycvmXeh0EPiQOZf/ODPdOwhX//dVJI+n7ATj8OzlUk7MyMX2+aYFv4W7CplxIsUhGKKAbVQpQucpQd89W615tHSc9X9+8eU6Rt/MHlVeHxU6jJcv6WfCJe7T1Icgtr/qzH2pFXqEvUG35zGPemGg==
Received: from AS9PR06CA0169.eurprd06.prod.outlook.com (2603:10a6:20b:45c::33)
 by AS2PR10MB6686.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:55d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 10:03:59 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:20b:45c:cafe::83) by AS9PR06CA0169.outlook.office365.com
 (2603:10a6:20b:45c::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.20 via Frontend Transport; Tue,
 10 Feb 2026 10:03:59 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Tue, 10 Feb 2026 10:03:59 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:05:37 +0100
Received: from localhost (10.130.75.212) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:03:55 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Tue, 10 Feb 2026 11:03:59 +0100
Subject: [PATCH v2 6/9] arm64: dts: st: describe power supplies for
 stm32mp235f-dk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260210-display-v2-6-0592bd514958@foss.st.com>
References: <20260210-display-v2-0-0592bd514958@foss.st.com>
In-Reply-To: <20260210-display-v2-0-0592bd514958@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>
CC: Philippe Cornu <philippe.cornu@foss.st.com>, Yannick Fertre
	<yannick.fertre@foss.st.com>, =?utf-8?q?Rapha=C3=ABl_Gallais-Pou?=
	<rgallaispou@gmail.com>, <devicetree@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM2PEPF0001C70D:EE_|AS2PR10MB6686:EE_
X-MS-Office365-Filtering-Correlation-Id: df8a97f2-9fdf-4749-8d4a-08de688bb622
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MUlPR3FrcmpoZlpKUUZqYWZQVjFFNktnYnRJa2E3TS9LREw5K3dQdVFUTVVh?=
 =?utf-8?B?N0NkYkFtN1NjUTBQZ3luUDhBTjFBLzh0TEFnQVpaeEp4VDZYc0kzTWVUN2Nk?=
 =?utf-8?B?d0FuRjUzRWFHUDBIQUF3VWZjcnpWNXpmNnpSN013dXVaazNhZEdHNmpRakI0?=
 =?utf-8?B?Rm1vdFJEMU90Qm5Za0VBaXdPeG5PL3FHVHN3cVhpWTNKRWQ5aE9VQUFySmJo?=
 =?utf-8?B?Vy8yMTNOblkyQTA4NW1xZjZ0ak1RMVdvYS9JbGtzVFdFbzBtaXB4QS9pbWFt?=
 =?utf-8?B?R1lodXlGdldtaEFCZUh0a0ZuQlVYNUNpUWV5R0Ria05hbytrbTh2NThKaytN?=
 =?utf-8?B?M0tEdVJpL0wyQ052VkFrTWlvcVpqQXNaMHByR0hxS3Z3QnVBd2p5WGNSeDNL?=
 =?utf-8?B?bEdoa3dFaXpZTXhnUlhxUjhuRGc5SFBBbTQwTzFUdDc5cFZDVEtSRVcrd0hy?=
 =?utf-8?B?S0pVcTFjZmFWcHJjNFJJcXY5MUI0WkhQKzNsVnRXM21JbU5uQ3hRT1FmYlJK?=
 =?utf-8?B?SzFIbHdmS3NMd3BBVE42NVBKTFl6dWZMeG5BRWsyclpyMlJ5eGE5a2hKTVhD?=
 =?utf-8?B?bW1EcFRuM2xITFpvU25Ib2s1M2hXVEllMXZvZ1N1NmFoQWJ6bDRvSmJwMk51?=
 =?utf-8?B?SFhSYUZWQ3ZWOFhPQWt4VEo0bmlObUQ2b2ZIaG1KbXEybWl2dndjSmhWcFM0?=
 =?utf-8?B?UzB2M2NVVmh3Nnh5WGxLNUhlcFZBamVNOVVFNXRST2E4Z3lONDZOaE95S2NR?=
 =?utf-8?B?TFdZaHg5and1V3g4RTBINHM2RUdCQnVaN1plTVd1cUZ0NlAzQ1pMUzF1ZXBm?=
 =?utf-8?B?RTVhMjZJMzZoL24ycVowNTBHbE9Pb2tEdGovdG4wU2hCUWVxb3Q0b0wySmRQ?=
 =?utf-8?B?c3dRTVE5M0c4aFdjRyswVVM3U01GWC9GTTZzODIrMUw4NStmRkxiNllFTHV2?=
 =?utf-8?B?R3kzaEQ2c0ZTVkJnaE15bTJCemVodC9rd1VCemMzSENRSW9LcWFQSmlUU0lu?=
 =?utf-8?B?YTc0ZE83YUpOalZwc0FKYk9qUmpRUFVsQTFnM2FxeTkxSHpWUFBxV2pNaTJh?=
 =?utf-8?B?SXVoTHc4YVFDTkE1NjhndGxaZTc3M0s5WVZKYVg2Tm9MRjFjbUJwTmVtUjVL?=
 =?utf-8?B?dlpKQWUwOWxhRUN4REUwb1FqcGxocnBCMTA1KzdOY3RCd29lRU13aDdmbEpY?=
 =?utf-8?B?TkNGblAwMmV3Ynk4eHBReWNSL1lVbnlqOTFERkw3bW5YTFBHdmdIZkxSRWhX?=
 =?utf-8?B?aEkrWDZLODEvdDVNRStoOXZSVFlNRzlodkd2ZUxSUmJ5L20rNHhzUG8rWmdl?=
 =?utf-8?B?YjBTOXFtcjNSdkZyRlMwbVI3WXJ0WVhuaFdGZDBBM3R4TWRRVjZ0L0JYaDJD?=
 =?utf-8?B?MlllTkJlK2dMUk1YaEZrSmQ2dytZcS9lT2RscUNzeVVaWlVacW5sbEZRUmg1?=
 =?utf-8?B?a2FDSWNINnZjMGo1aS9QTVQ5MTdGdW1yOWphTEpYekJjbWZabS82MHFrcVI0?=
 =?utf-8?B?M2lYVTM1Qk4vMFBRNzlPcFJFc0NjSUtUS2xVZU1kNnNFTHhhdHczL1QvY0pz?=
 =?utf-8?B?UDgxVXBmQnhDV2VXUTUvRXMzSGxncUM0SkxuT0oxUUsvMTlLaW9XNklIMmoy?=
 =?utf-8?B?b3p0SkxtaGtvS28yRFY2UktGNmJpTHRablFKWTdic3I2eVRwNWNPbXFJTGdO?=
 =?utf-8?B?K0FwVUxOd0dwaEx2ZEEwZ0h3V09lR3k0bFVFM1d2b2dSUVVub2pkYTdIQ0c0?=
 =?utf-8?B?OEkrdTQwdnA0V2M2MGNGYUo0azFhOVd4V0VnSnhrMHZ6RzAwQTFZL3YwVjla?=
 =?utf-8?B?UDI5UHdYdzU5dU4xcDl1SUo5aldwaWtlODNsV2txVGFubWEySEZ4ZGtSeVc1?=
 =?utf-8?B?OFdLbWRjcDNVT1NrVnArM25uME0vY01wRC9SOG0vVm5SeVNjZmE1a04rSURi?=
 =?utf-8?B?Uy9JeVZ4K010MEwzTzRDbVNZaFI0NlQ4RVd1dWtGZVFtVCsrays2YVVia3Rm?=
 =?utf-8?B?eFRZbkNoQ0kyVEM4UTc4TUJZblpNK0dJQWVuNHRkckRtNTdIVmVOZUZyd2pu?=
 =?utf-8?B?QmNmekVQNWFHcmErM3N3L2ptbFpMblo2TlJkS2xRaWlua1ZNU09VNE5rN0p3?=
 =?utf-8?B?akNwcDl4czFuYmZlenpVdEM3SmQ2ZHZiQ1JtS0tyaG01QUhzLzlyYVdpUWJx?=
 =?utf-8?B?bVlVaFcySHQvNkwvR1FFeVM2VW5xNW1BWXNYeStCVjZWcUhEbmRMSHFCRFg4?=
 =?utf-8?B?V3RteXNQcy8zZDlIYjlsOERTN2hBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	LbcZ8SLm+h1LwbkUNpsAxkhxuwCDAWvKm3lrSLTY+FmFKjSBBpYfwdgS6/dtd8Qruv1GQQ/JeEbeRSWcrJuJlLp1b9H+kx9UajnuxLiHYWU2KYnQ2fJjGUXPt4QF51IA3p6y++Jt6R5jFJJd+87UZndA+eK2qYvWWJf1R7WI/XFeSU4IdbsMVtSINBsgir9mHDtylvDVCnUOXFsi3EAwgnCFA7kH1k8VGEUSgNhPOGrAxANq0uJB1vIUesoRUKNytcImNCWCV1ud+kBRn/ChA3JQ6LdYIeMutugBM47K+jriUROlfhN4ZTxAsn0fSOCp9XtsPWbxnG5qsxAyiNsm3Uq/hKVkH7bPlOPEa1cZndik54D5BY0fiwvouf8AxtrH+SMoo3736cw589Wq+k/RdIBuqZjZm4W9bvVCa5H3YrsByORYqHqNqUVURhguEjap
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 10:03:59.7776
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df8a97f2-9fdf-4749-8d4a-08de688bb622
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB6686
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264328-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 73659119727
X-Rspamd-Action: no action

Describe power supplies for stm32mp235f-dk board.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp235f-dk.dts | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
index c3e68806822365ab9ec7ccee2eba73a117a8c331..0c7874885381da73b9274078f3efb9f0b042504f 100644
--- a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
@@ -105,6 +105,34 @@ scmi_vddio1: regulator@0 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
 	};
+	scmi_vddcore: regulator@11 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK2>;
+		regulator-name = "vddcore";
+	};
+	scmi_v1v8: regulator@14 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK5>;
+		regulator-name = "v1v8";
+	};
+	scmi_v3v3: regulator@16 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK7>;
+		regulator-name = "v3v3";
+	};
+	scmi_vdd_emmc: regulator@18 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO2>;
+		regulator-name = "vdd_emmc";
+	};
+	scmi_vdd3v3_usb: regulator@20 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO4>;
+		regulator-name = "vdd3v3_usb";
+	};
+	scmi_v5v_hdmi: regulator@21 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO5>;
+		regulator-name = "v5v_hdmi";
+	};
+	scmi_v5v_vconn: regulator@22 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO6>;
+		regulator-name = "v5v_vconn";
+	};
 	scmi_vdd_sdcard: regulator@23 {
 		reg = <VOLTD_SCMI_STPMIC2_LDO7>;
 		regulator-name = "vdd_sdcard";

-- 
2.43.0


