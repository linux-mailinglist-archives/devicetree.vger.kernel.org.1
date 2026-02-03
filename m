Return-Path: <devicetree+bounces-262289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM1QEDoHgmn2OAMAu9opvQ
	(envelope-from <devicetree+bounces-262289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:33:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA9DAA3F
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3250230FAB7F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5A03A9617;
	Tue,  3 Feb 2026 14:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="ZRlMDZQd"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011044.outbound.protection.outlook.com [52.101.70.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF873A9616;
	Tue,  3 Feb 2026 14:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128897; cv=fail; b=Ish76qF0RXQn08grOTrq/CBw+agH/Y2JuQcQ2MPoS0UyavC+1R2J2/XIUPgVkfTE3eGu/1O6yAmKUaBqPwPIE6ZATpbK26uvX4aoOL4Qw7l248cU43grRIeKeWaRtpg3Y9jLjQXupkqmnmLZmnfOV3ECGn/37BXhDt10o2NAAtA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128897; c=relaxed/simple;
	bh=ZcHKbwZIB/ojGEY2R8ueIqKg9VvVSo4TbhnrRdw17E8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=gutYXYJU3PAf6yzVnBJg3n8lp0Z747mT9lXfUc3B/E8Oob6ag3RKSCeg6L1IcwITmL8gMuyI8RcHUWY4S9qPJWf+N/P3GLRMYZOXis5XkVbiFPbWbypcSmu97XOpFpuEH3DmuPcFlYh7d/FCPBpxcbw5TiCXh+RiMlQ12KXv0ww=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=ZRlMDZQd; arc=fail smtp.client-ip=52.101.70.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4eKW3hwuibSsfqfbspyamQd4GAOzDngkFcaA+e0iSc6dFJ+VPmoLe1zDZ1kcj0SwBj7FbAbPcHdbTaVRZfO8GDXu1iM9egGREFfU/0371H1yf9X21bpFs0MAkJ3UVeQa5LArrSO2Y5yZJxxHFfK0sxLHnsRQ0Bf6eaUE2+P27hjgPgNx5lXWeCqhsrzWtzIy5EnWJFdBWaZN4V3m41Qyfr8mWZbLzQm5CxNEyl0eVlyOdr/LrDEf2X07BwpZAYwAGb5N3011heHM3/hXBIpRwi8qOyxQLBqMHogOvhw1Wz+U7ZWxe7Lzd5g/nCAeKkCquPwJzqLdlxTbTFz4xRsAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1D/oMKv83uWp2xgVIjHCdrKI4FhoqP9Qx/6rSVhYwE=;
 b=miSETTkh5QusaLKQm3Tmwj30wnqJJUF8p4fUMt6/p+YLhAO28joBjZsxw3LnQNbnrFhQLxuFkQmnqweXLiWknv/f82/f8xM6zRADf0gWe10kvQO+rexYV+8PVE+9FddwgVWGBsOBZdqCHzwXZQxp8cMNOpf7V7USbvkFfK9M+2/pfzeuJOIJXVoD+LUVdeVsPjcviqmjohv2jPSi2B+VBfkwcVjDcdAAYpeFthQ3Ep9/AVd5GdWNshb9BpDZig8fmkZyBbmRkeJo3qCOIFiVx6vQmSisMyrIJLwWR7yBKu1BWqHnuGsNxfozRDNtny3+ixfPf+2N9iCKJQJjfC4Umg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=st-md-mailman.stormreply.com
 smtp.mailfrom=foss.st.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=foss.st.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1D/oMKv83uWp2xgVIjHCdrKI4FhoqP9Qx/6rSVhYwE=;
 b=ZRlMDZQdcTuwwwqPP/zPVAxVG5Rm7Dz9FLRAhxCTtMGTXStb1nlMEZdRim1UZ8jXtvKb20/MBkHx3IWZNpKC8kM151frGDnQCmo90T4lnzFtSMGv4eNAEg6f1dkrE2ad28JFw3UGPOpspCwm5Am1uS2EAQVwxZsfSFyMLe4oshd5Dg6u7pNEdiLiCdL778xzSueO/uFg65Y0ZJ/JPd8rZXhOjkJw50sWaSrPLcKAmdBlIsKMgs+LrxEZN4PKQPqbDxijmdDJIzI8nkDhYig7l755M/JQT4UbSohHhKd/jvDZmmZa8PwxPMF0aUSzcnHnXkost1RSx2SSHHhGYrBPfA==
Received: from AS4P189CA0021.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:5db::12)
 by DB4PR10MB7495.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3cd::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 3 Feb
 2026 14:28:09 +0000
Received: from AMS1EPF00000048.eurprd04.prod.outlook.com
 (2603:10a6:20b:5db:cafe::8) by AS4P189CA0021.outlook.office365.com
 (2603:10a6:20b:5db::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Tue,
 3 Feb 2026 14:28:09 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AMS1EPF00000048.mail.protection.outlook.com (10.167.16.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 14:28:09 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 3 Feb
 2026 15:29:55 +0100
Received: from localhost (10.48.87.93) by STKDAG1NODE1.st.com (10.75.128.132)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 3 Feb
 2026 15:28:08 +0100
From: Patrice Chotard <patrice.chotard@foss.st.com>
Date: Tue, 3 Feb 2026 15:28:09 +0100
Subject: [PATCH v6 3/7] ARM: dts: stm32: Add boot phase tags for
 STMicroelectronics h7 boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260203-upstream_uboot_properties-v6-3-0a2280e84d31@foss.st.com>
References: <20260203-upstream_uboot_properties-v6-0-0a2280e84d31@foss.st.com>
In-Reply-To: <20260203-upstream_uboot_properties-v6-0-0a2280e84d31@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Patrick Delaunay <patrick.delaunay@foss.st.com>, Christoph Niedermaier
	<cniedermaier@dh-electronics.com>, Marek Vasut <marex@denx.de>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<kernel@dh-electronics.com>, Patrice Chotard <patrice.chotard@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000048:EE_|DB4PR10MB7495:EE_
X-MS-Office365-Filtering-Correlation-Id: 8722c0a1-39c7-4662-8bc9-08de6330743e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024|7416014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R0lOV1Z5WHVWN045Z2Z2eXVnYW5kbkNHSVhWNzdvMGpPM0dLNUJXS1p3MGox?=
 =?utf-8?B?RDF3NU5SQ1c0RmZGWVgwS1NUVmwvVDQ0bStmdHZkOXF5L252MDkxalNYWWxl?=
 =?utf-8?B?SWdvSkZZWit0bXFHeWEzRTVhY1V2d0lDdTQ5NDVCc25mTkoxL1VrZEp0cUJN?=
 =?utf-8?B?aTE1N2xuL1BTdnFGN3BXTmhnTGUxMmlsbjIyT1ByM1JNUWNEem5JSmhPS21s?=
 =?utf-8?B?SWdPUzJOSDFRTDBNOEpDWjBnNzgvY2tXRllERDRQZkR4T1hFVG8zdklyTWh3?=
 =?utf-8?B?ZWVlS3ZZQ2l3ajk4a1BGdDF5K29TRUwrZkhWOHp0UDAvZjllYVZZUmI5Qjh1?=
 =?utf-8?B?U3JwRjFOMnlJOFgxMFZ5ZEZiZEl4NjFRdTBSODRlVE1KSXp0STBuT2VFNXlZ?=
 =?utf-8?B?SElnSjNPUEdaa2NTQTc4NkUvNlFmd0VtVkxvV1dEZkFzUEtUMkswenBLaEF3?=
 =?utf-8?B?akgvSTB6NFlaN2hYRk5MK2hUWDA4aEZPdTFpb1huREZNSVVqV3k3QkR4N2l5?=
 =?utf-8?B?LzJHOExQMGVwQVA1SXhQOXUyc2Z4U0E3T3JpR2h4Qy9iT1h3NTlRNE1KTFhp?=
 =?utf-8?B?TFRGRCszamc2Yy9iSVphc01oeVo4STFYVWJPN2V0QklFYVNYWEZaNC9pM2RZ?=
 =?utf-8?B?SWsrRjZOdTVhQWVoQXkrOUR5emEzaGxEUFdyRDFNZEI5VEZvTWkxdkZJblRu?=
 =?utf-8?B?NU9zOWJoTjliVnBkZ3dGblRTeDhISlkyN0t0WjVMQ01OMS9KV20vVGY2cjhZ?=
 =?utf-8?B?TThvS3dKZ1pIQmhCOU1sbGFPdGRqOVYxWU1UeUYveG93QVFYcUY0OTVJOEJV?=
 =?utf-8?B?SGNEdE1HNmJwWktZVlZJcktRM0dpcHhmUll3NkdBNnpjaDExN1ZnZUFuMERi?=
 =?utf-8?B?NzBBSjdGQ1greGx0UXBPRUhxTlBjTkk2SnhYT2oySHE1NGRTS1J6YTdtRjZM?=
 =?utf-8?B?bndFYTM1Q2orejRhWkw3TklMZWZpc2pQMEpOYVllbGw0TzJKa3c5d2hlQ0U0?=
 =?utf-8?B?SFJmSUFycVRCM1dwSDVBZlh5d3hCOWRPWDUyTHhEVDhKby9iWHJEZTFKaHRp?=
 =?utf-8?B?cEtuOHV5dGRCSHIzbUdaWjl4THlNOVU0ZjJqbWRJZjBXTWJKditCa2U5TWpx?=
 =?utf-8?B?YllteHRYMzNDbkwwRDdsN05kKytVZ21pS1dFR08rUnJvYUp0UUl3bys5Tjlj?=
 =?utf-8?B?SVJTYzNWd2pscUNBS21xamlhc3A1TkxFaHJoRU83WjJtOW8vRkZoSW1la1g3?=
 =?utf-8?B?UGVxTjlmV0UzQlpMNXVyK3FSOHRVVmFyN1dlY05ad0Nid2NtU2JXWDl0S2Zy?=
 =?utf-8?B?NXJQdFdJRTBsOVZhN2NvL0l0aFJGTVNoYnlNSzVISjNsV0I2UDdyN0ZpNEJS?=
 =?utf-8?B?K1JuYUpYbDcxTzZKRWZVdTR6c0MvYWxCT3pXdFltYTNZeWVtUHc1ai82dGxC?=
 =?utf-8?B?TUZQNjMzdHlKUUJTWUVSN0I3LzQrNkFvN3Vva1AxWUNpWkV3RFlnMFI2SWsw?=
 =?utf-8?B?TVY0Y2dadHcwaTNWelRXRkpEVVlROHUwR2RoWVVTc2k0SmVRZEIzM3JIK3dO?=
 =?utf-8?B?S2Q4bStFU3pwWU93bGZUVklxNlE0MUVxamdHVFBmOC8veU1wWEZicGwxd1pI?=
 =?utf-8?B?OVVwOCtBaHFqYnl4dy8wcEg5NlB6SE5aOW12MGJJTmhTQko5NnZTd2xlMUtx?=
 =?utf-8?B?bVR4S2hPc3R0c2VncFFNWW1WcEI0OThDT01kNTg2RzNOdEYvUWVRZStmYzZw?=
 =?utf-8?B?cmR1ZXNXcWpPeGhXb0VhbG1kVFpraVZKQlhOZ3FRQjk2cFBjalVxSXZydmdN?=
 =?utf-8?B?dkM5YXB5OWVvdmw5cU5sd2Y4aEZmcGtqSks0R2FkRXY2elU0UXVNclRFbDg3?=
 =?utf-8?B?ZUowYllaSlNqbWM2ajExVHRoVHU4RVpqbXlkN1ZCcVdzRzZ5amJKNzI5TXR6?=
 =?utf-8?B?QW1uT3pPWWlSbnQwa002SGxFQTJOWDZ4RVVsRkNVYlRqeTBnZmEzSkMwTW9F?=
 =?utf-8?B?SENEamh1SVNGd1FRN1NuMkwrN0pKYWU1MHE5K0VWNThzTzg2c3ZVaS8vYlFi?=
 =?utf-8?B?cStKTnozUEJ3QzBWcnU0d21RUDBGS0dQcTRsNUpCRU5xU0UwVEN1cmtjMU5j?=
 =?utf-8?B?Y25JZE9CWnBQTkNlOFRUVk43UWVJOTZ5eDdLRDVpanZNUE12c1d3V1NXSVQ2?=
 =?utf-8?B?ZHd2VE03cW4yRGxiakFQdTVycko1SDJDN1U3YWZ2WXFvZzJINjFTV1prOEhR?=
 =?utf-8?B?dVpnUU4vSzllaEdpRzRWTExFVHRBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	dq9eZpyKxVYwhgluyRBZAGefZVWSI5ZpntX3xSQxVzQMgcRB4/8YGYycYeEqpewavB8l6/NAQ0HfW6t6nNR7EEyODy5q9Xt9sNb+lKCMRGq+xN/3u1wGHT0fM8C48RfvYghIXZAMPcsQ7dFUB7dE11IRzHFwJnpSwiFsrb3fHz91uDfkt/rEaOtTw7WLVwU2WHxhOkkOL/5n7tH8d65sZuFzRpmxHVTEz9sKv1Imda6ZUL9elmOjGI8X872bOrDCpHTUlC6XFlI4dN05x+q9jCGwPnw5ZM4juZwuGHby+WhhSSS1g4dqucrn8LMozN56avynWcoJ736z5fTPtj+51jTcGCwJwKmyKTchHFEcpUu1NDswm+4Vsh5kbg9VDZFgSaXNxGeOznJaF6dfhdM2XD1G0uC7pMTf2G9lCvFPaQsmuuw5oGUTPeL45qDzWKoZ
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 14:28:09.2184
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8722c0a1-39c7-4662-8bc9-08de6330743e
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR10MB7495
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262289-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com,dh-electronics.com,denx.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,foss.st.com:mid,foss.st.com:dkim];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patrice.chotard@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 99DA9DAA3F
X-Rspamd-Action: no action

The bootph-all flag was introduced in dt-schema
(dtschema/schemas/bootph.yaml) to define node usage across
different boot phases.

To ensure SD boot, timer, gpio, syscfg, clock and uart nodes need to be
present in all boot stages, so add missing bootph-all phase flag
to these nodes to support SD boot.

Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
---
 arch/arm/boot/dts/st/stm32h743i-disco.dts  | 69 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32h743i-eval.dts   | 69 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32h747i-disco.dts  | 69 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32h750i-art-pi.dts | 69 ++++++++++++++++++++++++++++++
 4 files changed, 276 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32h743i-disco.dts b/arch/arm/boot/dts/st/stm32h743i-disco.dts
index 78d55b77db7c..1b4b9bc5c72d 100644
--- a/arch/arm/boot/dts/st/stm32h743i-disco.dts
+++ b/arch/arm/boot/dts/st/stm32h743i-disco.dts
@@ -107,6 +107,59 @@ u-boot {
 
 &clk_hse {
 	clock-frequency = <25000000>;
+	bootph-all;
+};
+
+&clk_lse {
+	bootph-all;
+};
+
+&clk_i2s {
+	bootph-all;
+};
+
+&gpioa {
+	bootph-all;
+};
+
+&gpiob {
+	bootph-all;
+};
+
+&gpioc {
+	bootph-all;
+};
+
+&gpiod {
+	bootph-all;
+};
+
+&gpioe {
+	bootph-all;
+};
+
+&gpiof {
+	bootph-all;
+};
+
+&gpiog {
+	bootph-all;
+};
+
+&gpioh {
+	bootph-all;
+};
+
+&gpioi {
+	bootph-all;
+};
+
+&gpioj {
+	bootph-all;
+};
+
+&gpiok {
+	bootph-all;
 };
 
 &mac {
@@ -126,6 +179,18 @@ phy0: ethernet-phy@0 {
 	};
 };
 
+&pinctrl {
+	bootph-all;
+};
+
+&pwrcfg {
+	bootph-all;
+};
+
+&rcc {
+	bootph-all;
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a>;
@@ -138,6 +203,10 @@ &sdmmc1 {
 	status = "okay";
 };
 
+&timer5 {
+	bootph-all;
+};
+
 &usart2 {
 	pinctrl-0 = <&usart2_pins_a>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/st/stm32h743i-eval.dts b/arch/arm/boot/dts/st/stm32h743i-eval.dts
index e5e10b0758ee..55674fe05431 100644
--- a/arch/arm/boot/dts/st/stm32h743i-eval.dts
+++ b/arch/arm/boot/dts/st/stm32h743i-eval.dts
@@ -124,6 +124,59 @@ adc1: adc@0 {
 
 &clk_hse {
 	clock-frequency = <25000000>;
+	bootph-all;
+};
+
+&clk_lse {
+	bootph-all;
+};
+
+&clk_i2s {
+	bootph-all;
+};
+
+&gpioa {
+	bootph-all;
+};
+
+&gpiob {
+	bootph-all;
+};
+
+&gpioc {
+	bootph-all;
+};
+
+&gpiod {
+	bootph-all;
+};
+
+&gpioe {
+	bootph-all;
+};
+
+&gpiof {
+	bootph-all;
+};
+
+&gpiog {
+	bootph-all;
+};
+
+&gpioh {
+	bootph-all;
+};
+
+&gpioi {
+	bootph-all;
+};
+
+&gpioj {
+	bootph-all;
+};
+
+&gpiok {
+	bootph-all;
 };
 
 &i2c1 {
@@ -155,6 +208,18 @@ phy0: ethernet-phy@0 {
 	};
 };
 
+&pinctrl {
+	bootph-all;
+};
+
+&pwrcfg {
+	bootph-all;
+};
+
+&rcc {
+	bootph-all;
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
@@ -169,6 +234,10 @@ &sdmmc1 {
 	status = "okay";
 };
 
+&timer5 {
+		bootph-all;
+};
+
 &usart1 {
 	pinctrl-0 = <&usart1_pins_a>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/st/stm32h747i-disco.dts b/arch/arm/boot/dts/st/stm32h747i-disco.dts
index c9dcc680e26d..ef36454808d5 100644
--- a/arch/arm/boot/dts/st/stm32h747i-disco.dts
+++ b/arch/arm/boot/dts/st/stm32h747i-disco.dts
@@ -104,6 +104,59 @@ u-boot {
 
 &clk_hse {
 	clock-frequency = <25000000>;
+	bootph-all;
+};
+
+&clk_lse {
+	bootph-all;
+};
+
+&clk_i2s {
+	bootph-all;
+};
+
+&gpioa {
+	bootph-all;
+};
+
+&gpiob {
+	bootph-all;
+};
+
+&gpioc {
+	bootph-all;
+};
+
+&gpiod {
+	bootph-all;
+};
+
+&gpioe {
+	bootph-all;
+};
+
+&gpiof {
+	bootph-all;
+};
+
+&gpiog {
+	bootph-all;
+};
+
+&gpioh {
+	bootph-all;
+};
+
+&gpioi {
+	bootph-all;
+};
+
+&gpioj {
+	bootph-all;
+};
+
+&gpiok {
+	bootph-all;
 };
 
 &mac {
@@ -123,6 +176,18 @@ phy0: ethernet-phy@0 {
 	};
 };
 
+&pinctrl {
+	bootph-all;
+};
+
+&pwrcfg {
+	bootph-all;
+};
+
+&rcc {
+	bootph-all;
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a>;
@@ -136,6 +201,10 @@ &sdmmc1 {
 	status = "okay";
 };
 
+&timer5 {
+		bootph-all;
+};
+
 &usart1 {
 	pinctrl-0 = <&usart1_pins_b>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
index 56c53e262da7..8dddc70c37a1 100644
--- a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
+++ b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
@@ -114,6 +114,15 @@ wlan_pwr: regulator-wlan {
 
 &clk_hse {
 	clock-frequency = <25000000>;
+	bootph-all;
+};
+
+&clk_lse {
+	bootph-all;
+};
+
+&clk_i2s {
+	bootph-all;
 };
 
 &dma1 {
@@ -124,6 +133,50 @@ &dma2 {
 	status = "okay";
 };
 
+&gpioa {
+	bootph-all;
+};
+
+&gpiob {
+	bootph-all;
+};
+
+&gpioc {
+	bootph-all;
+};
+
+&gpiod {
+	bootph-all;
+};
+
+&gpioe {
+	bootph-all;
+};
+
+&gpiof {
+	bootph-all;
+};
+
+&gpiog {
+	bootph-all;
+};
+
+&gpioh {
+	bootph-all;
+};
+
+&gpioi {
+	bootph-all;
+};
+
+&gpioj {
+	bootph-all;
+};
+
+&gpiok {
+	bootph-all;
+};
+
 &mac {
 	status = "disabled";
 	pinctrl-0 = <&ethernet_rmii>;
@@ -141,6 +194,18 @@ phy0: ethernet-phy@0 {
 	};
 };
 
+&pinctrl {
+	bootph-all;
+};
+
+&pwrcfg {
+	bootph-all;
+};
+
+&rcc {
+	bootph-all;
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a>;
@@ -196,6 +261,10 @@ partition@0 {
 	};
 };
 
+&timer5 {
+		bootph-all;
+};
+
 &usart2 {
 	pinctrl-0 = <&usart2_pins_a>;
 	pinctrl-names = "default";

-- 
2.43.0


