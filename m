Return-Path: <devicetree+bounces-264330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFp3IecCi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:05:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B0E11960A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B0BD302579E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6331934BA2E;
	Tue, 10 Feb 2026 10:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="DvYdxcTL"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012001.outbound.protection.outlook.com [52.101.66.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEAF346FAE;
	Tue, 10 Feb 2026 10:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717847; cv=fail; b=mjLXowc2YLD99FElycsWailGvz04XqjUM7y30FgYXJC4X6NlpDxmi0rFk8yvPyhjG5oMqUNkgx9gIGmxANyc0/DyG+K2yN33pfew6ws+IRm5Lyf0MYRouy5qaPOZk1qgrVZ/5llb5hzRnbZPk0o+CsUt75m0Javg5FmhFXcfVeM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717847; c=relaxed/simple;
	bh=S/FHOi0vBCI4K/VEEHDJBeCUw5kB5Ti+a3rrVmMLhJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=VUtjzrE10S2j5XIEnu+Q7aSTanMENJRbOWFWj48tSCyTm0JgjQoGRD4dUjef1FFHFwnFBmvyuwsawghPD7LF1aS3wrjf7igpmhANevQdKrAqUUOSaUYc4U/WLobmEV2vqQre2f5UEyaHsE8LHS9CfHPp0PT7E1J2GnUsHRvpMUY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=DvYdxcTL; arc=fail smtp.client-ip=52.101.66.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vD7Pzxno+/Lq+DVOqpGTP0Zjjmy1u+IUEtw+/h7+ULRCtcWXgEiM/mkipGxsLlCNCJbVqZQFVjHDBqGOgNEueglwVuzAAPioGAZUZk6BpOnDXn8r+m52lu777u/6bgz7O54jd0TWXikv9Cnse0yGFJ7FpkZJOlBgS48I1rQL0v0OZX8k+9P9nIwihAy4pisLC8Frfspw5OArobm+tQX3EYwDsvrIfoa6TBrIgrtR8eARwy2L/hrGV1koPmNbRx4m8/ci+HSSIj6AlPj9SvQpoX1iFWx/UXyfKf16kHd/m4gMnQ3SMaFOL2ymMJUZazrQzqVEOw7oaC9jf2atOavFwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5yMYj7heeeY3DTm/i5+mszrXW9uxjaHmRAFhyWS097Y=;
 b=tsekWbv7yV6Mv7kZpK2OpbzBFJpejRInQFBtOrTpA9CFQ6+GBJZy7ArhSI+joiJjjNSwpn1BIfoLBKQ9n/vyeYaC9OXFNE+bvaXLrQ72eUetF9U4xIGuDNFV28k1zKkrPVanxsNHKqRG4fniIAvRxwH1b/akU3TcJV8tCpYwhugjdIVXvcY9FSCDHjQKtdtnwBBmr7b6uxy5CWxWJCloYEhrV/8ygCmyNlwEc2T7mF7T6ewyfiKokwqdI+zO57XgVp0cit+kQiSKDHvdAln4ZBxO7jqu/KhAXMDt/F+2k9KnKjGMBXtsMJtAFqF0Tf84JPOkekUxBGa2vcrzQdXBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yMYj7heeeY3DTm/i5+mszrXW9uxjaHmRAFhyWS097Y=;
 b=DvYdxcTLxAgtqvuZd6c4HiktlQvWBpr779qlzA8dtI+sbf3PWKc5hjU+NwMzwkiIcxfa9EQQW84oCwprRvoZ3Ft9uoJ4AKYbgJ5HjLwXZFf4ZRC/g8zYUHjH4EyIAng5yvP3LFGIYdmKnBqVhz98qHX5etqL9N8ZN31yfBQDpMZkR+NHepl+pu2vOgoPrbLvxAfm/3ZrjvjYyCcfYrtyxuCaUGGlQBMeumv/dOtuuYAyBZqq1Em1t2K0LOTlJz3nA6XTlS6aVizzhq02/cR6wrjz9CPnjiyEji6pW0ZsK7wZ+tmshKfTJ4Pw1AN8+pJvdihXn98J4AqokeQ0SAPvLA==
Received: from AS9PR06CA0156.eurprd06.prod.outlook.com (2603:10a6:20b:45c::13)
 by GV1PR10MB8318.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1ca::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 10:04:02 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:20b:45c:cafe::ec) by AS9PR06CA0156.outlook.office365.com
 (2603:10a6:20b:45c::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.8 via Frontend Transport; Tue,
 10 Feb 2026 10:03:58 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Tue, 10 Feb 2026 10:04:00 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:05:38 +0100
Received: from localhost (10.130.75.212) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:03:56 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Tue, 10 Feb 2026 11:04:01 +0100
Subject: [PATCH v2 8/9] arm64: dts: st: describe power supplies for
 stm32mp257f-dk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260210-display-v2-8-0592bd514958@foss.st.com>
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
X-MS-TrafficTypeDiagnostic: AM2PEPF0001C70D:EE_|GV1PR10MB8318:EE_
X-MS-Office365-Filtering-Correlation-Id: 504ff9fa-36c8-4030-6912-08de688bb67e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NlkyVndpcFIxSFkzWnYrem4xOFV1ZUZ2UGhnanBSMjErV0cvZm1BVjhjYUVh?=
 =?utf-8?B?VWw3cWlDQVBBMWhEVTBJZnBlS1hPelh1K1dobUlobmQ1ZTkzTnRtSWJMQ01y?=
 =?utf-8?B?VS9lV2xnb3VZcmZ1V2JhL2pTb3o5RE8zbkl0RWxKT1RaaGhFRW9JNGZsbHRF?=
 =?utf-8?B?VlJkYVJyY2xSMzF4b0RwMk94bEFDNjRwNXJlUEplNlR2eTAxVXZTSzQ0T1RL?=
 =?utf-8?B?OU1Hd0lFSE4wVXU3MERZL1FQWCtnejNLYUdnQVF2eHJlOUdwUVYzcEMyL2p4?=
 =?utf-8?B?ZWMzTDc3eW1vN2VkeHRVM3ZseU9CODdReHB0KzByRmJwM0hxU1ViL1JqL3hT?=
 =?utf-8?B?OG9SRnA5R05QNVRya3ZjeWV6UGRERUNaVEVRaWViSm43UjJ2T1FzMUpTc1V1?=
 =?utf-8?B?emJzSW1lRDl4N2w0ZWx6Z2NzamRHL3BPdGgxcTd0cWs4alN5OVBWeUFJSTli?=
 =?utf-8?B?YUtkL202aEJXT1VVaXhIRUpzY2xaWXN3aFdMNjlxTGFrRzU5L0twSk5CV3Vi?=
 =?utf-8?B?akc3Ry9qYTFhWTNnMHRaczFMeDJIS2x4bDN6WnREbzN3RkF2T1pIa2RpRmJV?=
 =?utf-8?B?WHJvcHB1aEdKMkxRczNhNDdkbk5nVFdrV0ZadUNEcDdjaWk5RStjSlBzTmdp?=
 =?utf-8?B?RTIvTVNsM2pQYXpNQzNncU5pdDYyUHBEeFJPTFB6WXo5YTdwSExaeVJyOEJx?=
 =?utf-8?B?VzJGb0Qza3lkaU5QRGJxWHBQUkViYmxUdkpKTkNqemFVTDcyK1lwNWJpbWdl?=
 =?utf-8?B?NzlLMmN1RW9salArbHFwQ0xFOEozeEtBcGc3RlhuRjFzb1I5K1VjQUFYMXZ6?=
 =?utf-8?B?NWk5eGRKSzBtTEI2ZWorb1M4czlsUlV0aVZteFllTjBjNmxmb041a21QT0FJ?=
 =?utf-8?B?ZmZ1cnhCVWJJSWp4MS93T0NvcGNqbUJxQzc5NkJnS0lwZXJiQ3BPTXZiTHlv?=
 =?utf-8?B?RGRlTUF0Qm50YTJOcFlHK3dQSVEvWFdsRlRESGxKS2tVdDZlZXlQR3lLZjZT?=
 =?utf-8?B?Tm8zQkNKc2NOTGxGOU1SZ0FJdTVoOTU3eEhFVktCVmdzeGFCMDUxQWhuM2I0?=
 =?utf-8?B?M05kM0t3WmVPU0RRTEl0d0xQNS94QndpYVM2MlppeDMwNFcrVVlYNjdiVzlN?=
 =?utf-8?B?eE5HWFVaVG1uZEtwNnc4a1pwMUpzWFFtbzkvWGprelowSHcyRXhEcDNWVVB3?=
 =?utf-8?B?anlKdTZob2JCeGE0S2JwUTFoRU13QWlnbDdtQXhXWUdGQkZrZmExVlhZYXRx?=
 =?utf-8?B?L1R4RTNFQXpBNW93MFNIanlEOUduUTJTKytFWkVQbld3KytRQW5jTXRNRnBw?=
 =?utf-8?B?MU43eEsrTkgraDk3YkFwQzRTK0k3TVJUMVlacC9pOXV2c2xsanI5dmIwRmNp?=
 =?utf-8?B?Vm8veGVqRm1WN3NzUUdXWFBHWEtod09najJqUk9HY25yWFQrMysvUzl1VXE5?=
 =?utf-8?B?M1dDRStUQXV0dUoyeEIycVc2aDJoQnB3V1FvTTQ3Mkc1MVFmem1COXlDd1dx?=
 =?utf-8?B?SHhGUEdKVlZEUE1nMU5CVlh2RjZaRCttL0FyQk9lYUR5aUNmZTFvWGJyaW1B?=
 =?utf-8?B?bVI3UlFBRmFuQ0h1a3I4UjgwdS9XNWpQUEZ3dVRoTlhGS2NCUnhQN3FZYm9H?=
 =?utf-8?B?djB1SkpXNWxWcmJUOHhsekZTRkszc29EQW5lTHNzMEcwWDRiKytqSDN4M0xH?=
 =?utf-8?B?Umh1K2lIZHBudEtPWWE1Q0JSenplOVVyVXZPY3FXYjlIaW05TTE5a3d6T2tF?=
 =?utf-8?B?aXlSaXNLUE5FYVJxdlpmZ3lxNWY5RVJUV2tBRWdxbkFKT2FoNHpUdlN0dDlm?=
 =?utf-8?B?Q1BsaTJ0RTk2dUhTQk5OYmNEeHhDMkdyWWlyZnlnRmcxT0syWVdBOHRHdnhm?=
 =?utf-8?B?NGFHbzlvdzJjN0VmUmpQRTVDL3lEWWZVTU9BK2dVcG9jSFdlM3I3NkE4dGpC?=
 =?utf-8?B?cmxsNTA3QUJjaG8zQzJKRmt1UVIzWWxGSDU2TktUQUQ5NDNISkFlKzdmRnhQ?=
 =?utf-8?B?R2ZpSHJJNFR6bHpOaUdSeDBJRUkwWFEyNERyU1I1OXYvMWh0L2xSMkpWbE95?=
 =?utf-8?B?d3NvVXZUQzdBeWZIY0o2bXpkNGZrYjZmamZoM0ZGQlpnQWQ2LzNFT2VqY3Zo?=
 =?utf-8?B?YXI4TlVjbXFndzQ3WnhPcXpvWnNRZ3ZuUEs0WHcvWG9ncEFRR3I4dGxPT1lG?=
 =?utf-8?B?MXdqdWo5SXRvUEV0OTZsVHFrR1E1Z0lFZURWNnRJSnJua2VCc2VOQ0FESnp0?=
 =?utf-8?B?Qm0ySWRLVWcxQ053aG54TVZsR1VBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	6tgxkM168j/vzKe6nIigxZv7CzjGIT7UauaLXTsuaZnpTwayfv0c043B8RUmPn9rXc7CMlYNmFO0y/rofWEpdK4tSXNOSRdegNUg5h2/mH0cu1EvSQuiA8FS91Q57imkqkd/nrptrGhoxQykn70Ivw4xa7GnBb9oEJKous4Hj7CCUuQrVRA0CZD16sL/me3L0drNlaJAnJdjKrD3GEyAhpd+hBtm4Gh3whm9fSxDSHTbC0sVc0+Rxw+EpTCsDs61/J5OSoTl8wh9o7rfCIOQpZMqdijFaj6OKdQBLcPBajako68DC0892HynP7Q0V0J7a1meVh1N3Yns5P1rVBtF4XQgcoGqjCDjkDFrylX0XRmOT3kkIaFDjFhoYJKOqnrEV+3yDz2DDGK9tEutqUhK2xZW179njYftk4sK64eqv05qCz1j+j4KU/kHiSPKk0L0
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 10:04:00.0952
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 504ff9fa-36c8-4030-6912-08de688bb67e
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB8318
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264330-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 22B0E11960A
X-Rspamd-Action: no action

Describe power supplies for stm32mp257f-dk board.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index e718d888ce21b6f124331543c09c1e66e6304964..4e45562ceb3dabb19eca3340337b364f63508215 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
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


