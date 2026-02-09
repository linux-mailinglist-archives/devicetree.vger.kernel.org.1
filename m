Return-Path: <devicetree+bounces-264040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELBoGKH6iWkiFQAAu9opvQ
	(envelope-from <devicetree+bounces-264040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:17:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F9111CF9
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6939B30413BE
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA539322A;
	Mon,  9 Feb 2026 15:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="XA0I8z4n"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013045.outbound.protection.outlook.com [40.107.159.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A41E37C106;
	Mon,  9 Feb 2026 15:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649202; cv=fail; b=Q5xHtzieBK2IHvBC5W20jbc79EM2XNe52tC0RY4vO7IpdXgMVLlXotD7UqdB6TnayvlPqh75Gkt2rDMskNCh3+UTyVi/ySX0mXAXMewusI2AvORZgxjf6zFTu7CFW49rgDO7gPX7LaLM6PWBDS8eFzIZKI651lm5UCaZHqWuATI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649202; c=relaxed/simple;
	bh=10T8+kCcV+f94Y5OEPBxCffAtG4sJRxRHdIVoSL2jrA=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=vEeRXuIcO5Hk/6O54HlIIv3fvuMLb/Mz5i6kIZPHjz7vttoVoIESfF0Dm/PnGkhv/GrEhh3DwGeY82zsDnD7j33XMdW8lvAaMxXPcR/fheeo0ytNlOLLFAHsIDNMVDSxzEv0f2WKADhB+txF7t7V+BS21uDjSJ+MoJgmO0EHomc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=XA0I8z4n; arc=fail smtp.client-ip=40.107.159.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aw4ajep9ElCoeYa5ocn49j/BwEx8uOLOkOMRlIPoJ1xb/5WwD3KgJRMVCnm+ZZzneh3nhj6hGP/mFcR3nnbUDlhTxtjJ2TyXXcWQjpR1UGjiAxJQqW/fPUYKspMrBeqJXdu0tVZ+SWgAfUEh2a1UNTb6hl00eRpr/lS8PlOdLAa9dLXjZAfQR/hasEajsifdCqnSVOQha69yj220/BKx1zHpTMBTSDuipXr/tuw4Ih2FHWg5zUXdj7e5CQ9gT+47v0aFyB1CuYmmvRmb1wUPzTu9eO2Cme1B1fMXXc8rYtDKyCM+nX6bcCsYIv4YiW6YJ9Yp+S19G5SbjJ2tRAUa0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0YzHQqCXg5dQ+QS4TnvfAV0VrAQ7zfv8JQmtmceaF0Q=;
 b=mdsoDoiPwM96pvjnu71cmS8wrj0CmB6JIoHXhoxPaDOz3zBNl2rgHTBurEupcAx1Q64aRhrNig89LLFcsMbKO7m3uETNaTyECun9mG7+YrZLbBbEph7XTeWirnyGQcTngcM0p8r9h6oQztBsFhnFoA3ZQdUUwjbHltJ9gkWNlfECLa1wD0QBMKh4uWZOW1TKxMjEHIk9x7u2O5i/Tcy5kmeEJ+vgM7mAvAYn1x3OMcp6SV37zM/yn71RJKHfrDItXmlgXWZqjq3XKFCxlOkNnT/tf874gn0FB132l9KCzHzD/klzwoJdXRsu9uaI2bGbo+1uixdLQOR6J1yfdRTrTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YzHQqCXg5dQ+QS4TnvfAV0VrAQ7zfv8JQmtmceaF0Q=;
 b=XA0I8z4nbePwhKweSIBIN/n+mDJsAwtwz/puDgZCDT+9kwlsZc0bFHiYjB1KsfJZ3Ms1/QCJh0SBZXC0lLsBvxSY56Q7Cl5nkR9uaW714cT0NAwj9+DnSKOA7nowM5qFih3IuEiZUz1VoTtE/UzyqfDYv+lceHmUog3cEM0b+1YAdwS60cKPtxDI8SwON2zTOyc0CXVD9ewTRwELoE4Pa0W93QNHPjR73kdNP+T28PLGiFrSoY6xLzgdfAPiWkv8fTrXoPkxD+16JorDHNvF5lA7Kdy0XSWiDQwPAI/CCsoCK0i84Us2Oiu500vRCfjiiABc5gxttU9rClyOPGrH8A==
Received: from CWLP123CA0059.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:59::23)
 by GV2PR10MB6525.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:c3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Mon, 9 Feb
 2026 14:59:54 +0000
Received: from AMS1EPF00000043.eurprd04.prod.outlook.com
 (2603:10a6:401:59:cafe::9b) by CWLP123CA0059.outlook.office365.com
 (2603:10a6:401:59::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.18 via Frontend Transport; Mon,
 9 Feb 2026 14:59:52 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AMS1EPF00000043.mail.protection.outlook.com (10.167.16.40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 14:59:53 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 16:01:43 +0100
Received: from localhost (10.48.86.212) by STKDAG1NODE2.st.com (10.75.128.133)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 15:59:53 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
Subject: [PATCH 0/7] soc: st: add RISAB dump debug driver.
Date: Mon, 9 Feb 2026 15:59:30 +0100
Message-ID: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFL2iWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwNL3eKSXGOj+KLM4sQkXZO0pOSUJAtjk2QTYyWgjoKi1LTMCrBp0bG
 1tQA8yQ8KXQAAAA==
X-Change-ID: 20260209-stm32_risab-4fbcdb834c43
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>, Theo GOUREAU
	<theo.goureau-ext@st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000043:EE_|GV2PR10MB6525:EE_
X-MS-Office365-Filtering-Correlation-Id: a256b716-68d7-422e-b9fd-08de67ebe1d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eWJ0elJZemFjd2VtM1BxV3M3eUdLMnNGeXZMMmZmdkkxWTNyVytnSSthN1cx?=
 =?utf-8?B?aEc4WGhEa2RmTW4wbkF5TjQvTGVYbzlJc21HSnJmYjg2T2EveStZZDhCMjMw?=
 =?utf-8?B?Z054ZnBHcUNTZmtNTkd6Y05BdU81U3E5TXFxZVVNUitUbnovaTRDUkR0V1Js?=
 =?utf-8?B?VEgwZHZmVlRwdUpmdGYyTmRFRnNsQXM0Y2E5NW1oVVZaUndtSUpjWUdqUXY4?=
 =?utf-8?B?WjJ5RVlTeFlUZEhrU2l0K1N5UjBIME5lUHFocStzdWpSTkVKa2VybGxadnhq?=
 =?utf-8?B?aXZOdWlPUHFCbEhpYjl2UWVrQnlxWkNDQmFEVWVWaS93SGcvRWJJNlVKWXBC?=
 =?utf-8?B?a0ZyMVV4QmRCaEo1dEVacEJlYklwTU1sUUZnVmdSRlRQUGRoV240bW9xQmJy?=
 =?utf-8?B?c2N3dGJZeWZsOGIvWTZQeEREUGRqdVRrd2FraTMwTUtnWktwVnFwd3VLTUpI?=
 =?utf-8?B?Y1M4ZEZnQmF1bWVuOXltN3lmOUJVUG1yZC9TVVZyTEpnYUd2QVh2cGczaXVV?=
 =?utf-8?B?czVVV0ZBZ1ltYjFQVGpMckhDcEFBS0hPTWJYdHZUZDBKSVhjM0VtNUxmUWtX?=
 =?utf-8?B?Rk1PRDUyTGM3WUVmaFNSVFpiR2x0cDE3ZlEwenQ5djBNTDVMemtBWlFSZ3hG?=
 =?utf-8?B?ZWJyazJLNHNnVG4vWklOeXVlZHVMcWxLeVNKQlBoc2ZHN2MvM20ydmhPTkxq?=
 =?utf-8?B?RWMyRGN2ZzlsREFJOVlmWVdQdlhFR0hLZEV6N01ickwvNk5DSk84U2YxRG81?=
 =?utf-8?B?WTdQa0kyYXdoc24xSnRxTjNlRStUeXhHOHlJTzJEVFZoRDFMb0RFVDhjT3RJ?=
 =?utf-8?B?bHQ4TVVRTmNZOTlBN0l0Q1owMmNVbFVUbldQL2tzQmZwRmsxWUU0aW43MXdi?=
 =?utf-8?B?a3FPdEtwZ0VWRFVnWlFXNllZditzdXFCSEp5bnphekZ1amtBa0tZSFE5U3ZH?=
 =?utf-8?B?QWVFQ05OYkQxY3BDMm9iQ3NXNTZ5NXN6WVF6TGhUQXlMVGJXTVRYNHpYblpw?=
 =?utf-8?B?U3JvZ2JrOUhpcGVXbVRDRlNGdWoxSHBZaklCb3dVVFprNFdIWUxvUm9QVzJQ?=
 =?utf-8?B?aDhFWXNrUUJsWXJFSHJVam9oSTdrKzNCSFVpWWdXUi92NlAxb2ZuOVVTWlNT?=
 =?utf-8?B?dEhMSmx1MnpHZlBLY2lNZE52aXE5OVVLM2VGdEpQVFEvSWRKaDI2Vzhvd3VZ?=
 =?utf-8?B?YVNSNnU2Q21DZlpRclp2TVdBbnpkUFhTbWx4MVI2aE9CczM4QmdqdldDZll3?=
 =?utf-8?B?NzI5cWRaOGMreWtCRG44cXNkSFZnNFpWdUpGV1F1U3JaM0xNUUNCZk1TTnl5?=
 =?utf-8?B?SzFOYnVnUjhOMUhNZmhNak4vZW9MQlptL3cvQnNidHRsUjlnbzAxMkV1VGNn?=
 =?utf-8?B?Z0N6K1RkU3BOdkFxN3RoeGNoYk5PUlQxS0ZlQ1c2QzVTTFZsWS9WOExVeFlS?=
 =?utf-8?B?aG5IT2dkeHJ0TjhGU2dpa2cvOU9qRDQ5azdLbnp5Rkh1aWFxaVl0MU03SVlG?=
 =?utf-8?B?N0N6cmxsRm9DQzdkV25tbVhuRWhGUlFNLytKWXpDYjFvdlZVVjB4b0xDYVVi?=
 =?utf-8?B?ZVVhbkMzUUlhWG5aR2dnd09teFhZWThZOE5LYUhkR2JKVEQ3VUFtNW12Ykgz?=
 =?utf-8?B?MVNJanphWjdBSGhQYXMzUmV4Q0FrL3VzSWM0MSs3cFE2aVZhOEVlV2xQYVli?=
 =?utf-8?B?Zy9SMDhNQjBBVkNZc1lWL1prUE9BTjJBQ0hIZnF5MlVDbW90SnNGQ2lvejVh?=
 =?utf-8?B?T0VTMytob01qS3hiNmJRMnBPcXpRbk5MNEpMZHUwNUFZQkdpZUdJWThDa2RU?=
 =?utf-8?B?bDJYNkd5a3lGOWtjNGdzYkZSTUZpNVhvemo0bEE1MGU1RjM1SGxKakV0ZWxL?=
 =?utf-8?B?eWY0MjV4Uk53cTRkS0t3Y2N4eHNJOGwvMVhQUUk4cWsvbGNwREhtaWYwblAw?=
 =?utf-8?B?VFMreVBVbkhHQzgxVUl6TzVjTmdKQzgzb1hzNVVNeHo2cmhSYSs0T3E3L2NL?=
 =?utf-8?B?NG5qMU52NVFBQXNCL0Q1N3BuVkNDbmZCZkpmSmJncE51QUtMdC9OM1FQVEE4?=
 =?utf-8?B?SytvVzZCREp3ZGtjWk13QkxESUM3RmMvVEVQRmRpL0FkYUdMTlVJYVhmNWdq?=
 =?utf-8?B?czZaemdLNUtZRmExcGJ6L3FCVVhkalZrMkkyQVozc1g2Z2JlZWtLeDFBVmU3?=
 =?utf-8?B?WDIzb0UvemY4dUFkMlRCUENUWTVTeFlnNFlTMlhHUG95OWttZkRWeFFDZDB2?=
 =?utf-8?B?UXlOZmlybkNGY2xIRzNJb0ZmMWt3PT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	wZdoEwh7dL6tDldCqJQ2xS3rrQLLzjOpF08Wzsnhz4WlrrwNDwS+c0cBX5Etak/jLJUKsLk7UllthKctmBTm4IUauRiyUkKOAhZqWxjqUtgA/PFjAqfCqxAK0TthZm/hLQYYdF9saRK2WD89h6irY1f+frFcle0h0M9Fs8QLB8/WrqDddLJZf+CtrI5OlxTczfkqXyzTlPRFkTdbaZBsMlPUvEVYhTAmjrC2IzJuGi1nLCdhNlCaluJJnlzn4lYBJWgPehcyv5P1V9ikiQxnrHziWh5pCDk6tbKd04w2t/vyRgwCaO6FvEpc9VUTMmmrqmq+NWw4j4ppUy+sv6vGsGJKQjxpIxj+V2z7rbBvjsqFFKfvx6SrRAJXe90PkrGJIxp7zR4V6hLcrffKN/OPeuuLSdwZEon65mzfef06mK76v+CqQSQClgx7RFlxs6Lf
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 14:59:53.6165
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a256b716-68d7-422e-b9fd-08de67ebe1d5
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF00000043.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6525
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
	TAGGED_FROM(0.00)[bounces-264040-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[foss.st.com:mid,foss.st.com:dkim,st.com:url,st.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gatien.chevallier@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 058F9111CF9
X-Rspamd-Action: no action

The RISAB peripheral is part of the RIF and is used to protect internal
RAMs.

Memory firewalls configuration on stm32mp2x platforms can be quite
complex. The RIF configuration is done by the Trusted Domain CID
(TDCID) that is running in secure priviledged mode. However, the
configuration can be read in any mode.

In order to facilitate the memory firewall configuration (check if
correctly applied, what rights for which range, etc...), add a RISAB
configuration dump driver that is embedded only when CONFIG_DEBUGFS
is set. This driver creates a debugfs entry to dump the whole RISAB
configuration in a readable format [1], as for the RIFSC.

[1]: https://wiki.st.com/stm32mpu/wiki/How_to_analyze_IAC_%26_SERC_errors#RISAB_dump

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
Gatien Chevallier (7):
      dt-bindings: soc: st: document the RISAB firewall peripheral
      soc: st: add RISAB dump debug driver
      arm64: dts: st: add RISAB1/2/3/4/5/6 nodes to stm32mp251.dtsi
      arm64: dts: st: add RISAB1/2/3/4/5/6 nodes to stm32mp231.dtsi
      arm64: dts: st: enable all RISAB instances on the stm32mp257f-ev1 board
      arm64: dts: st: enable all RISAB instances on the stm32mp257f-dk board
      arm64: dts: st: enable all RISAB instances on the stm32mp235f-dk board

 .../bindings/soc/st/st,stm32mp25-risab.yaml        |  74 +++++
 MAINTAINERS                                        |   6 +
 arch/arm64/boot/dts/st/stm32mp231.dtsi             |  48 +++
 arch/arm64/boot/dts/st/stm32mp235f-dk.dts          |  24 ++
 arch/arm64/boot/dts/st/stm32mp251.dtsi             |  48 +++
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts          |  24 ++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts         |  24 ++
 drivers/soc/Kconfig                                |   1 +
 drivers/soc/Makefile                               |   1 +
 drivers/soc/st/Kconfig                             |  11 +
 drivers/soc/st/Makefile                            |   1 +
 drivers/soc/st/stm32_risab.c                       | 329 +++++++++++++++++++++
 12 files changed, 591 insertions(+)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260209-stm32_risab-4fbcdb834c43

Best regards,
-- 
Gatien Chevallier <gatien.chevallier@foss.st.com>


