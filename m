Return-Path: <devicetree+bounces-258209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNc3EOakcWmgKQAAu9opvQ
	(envelope-from <devicetree+bounces-258209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:17:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A361A87
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0962072768F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 04:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D70E38BDCB;
	Thu, 22 Jan 2026 04:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="FaMkjm/q"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020133.outbound.protection.outlook.com [52.101.84.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4166A43DA43;
	Thu, 22 Jan 2026 04:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.133
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769055389; cv=fail; b=M8EBQKFcE/kxeNPOW31U7XhKiUNsd/tjcP8L9MSnQcTRU5PGz0ddevubY66bdjgBhgyfr1mDMwtH0cezkhDGKXU+LcdTX6Bn6TYGTE8Ig14GWde1Wm0QJq8VHbWWYNQJVKkNVIImbUhcfssOTQontkCBLpJM/PkwLYMwUBikUU4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769055389; c=relaxed/simple;
	bh=+UAhc/zzPiPCaXbF/XbVfQxRuLYEafKKsFNMdbe1wSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VoeSGP8uG/mR2G90/LS15jkMA5DkH5AEGmUjj+rB5Og2BTXBVNCmOLsUXif6h+LwVrCQmRlkEZc5JDfGu09WDQzO5876WkMDzjLsP+saknGKnNyReTIIy5QvTTAC0sqLLLmu5+CvuCCKuYiweDbQ3oKVKd2EabMOjITcLMOQ63c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=FaMkjm/q; arc=fail smtp.client-ip=52.101.84.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g/UT/TqcLrVSqjD11QlvTjGmkOsRqSbrtXRC6Fy3RtpeRZdLraFi8fAUqQ6M/cGFiracmi7L0HLsqvJBI5zfSQGJC0XW8jJY7Rqjo9ePOIR7lSqR7MvKTm8rM7AoW8gjSnhQRRFve3gnj8xOOgnixIJElYaoynpi53FIwbNRu9adtivBQ0wpQ/JckHhmNHQYaK90Clqdhe3Fl6cWcuznb7NpmGbETimCZw1pWIyAaUyJbrV2sEmfJZNC5U0kY+kiJjhWd7cuAZ99ZLpFCD2soR2cPl+uZltasi1fZAQgiFLLT1YiRX9vjFa3fYupsD+/z+Vq7RcyQFpjyi8qwql8lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=vOUGSqP3wrDZrJI9A9+4lGlfrPeKNa/OJUurjeBIJrsgB11okDSwuuRBG0NM4k7T/cQEdNUED1mdwomUUr4Z3esIgbcQHMAxmkiCjGeIkplq+Al9/NgzHWHo3ddmGl3GFtkFmbH7LaIbKXAxKUHZIoyK1TLm8zsOshhht9L/gWY4yPs/t2c9AOxcE/LyVLKiZmvt4mCBU7SFUfN3TrhqfyBzJJeMAF8ZIQn2WHnAbpdwl50YwJb/ZPe/PdyRbXUqODjbkGDCRYRn40vI1TK85g01Tjrw64zulRFfCHjqssHwuVezJKQlzKUkkURrVY06/mqga1hf4H7TgPmAXSq4/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=FaMkjm/qU09Mhg0aWtWoLukLHp+eJwfohEjDpefhAXzlSsqOHT7cwoIRMbR4HCIiFlEnXiVN2RA4RwqbLr5+T0PUY2JJpSIL5rr04GxcCrkRay2aBGJg1iRKLPYlbYoGmyVJPzwFUI8yYA/HLSng1ngyuGWFric0hs9DGcITyrdGrCc4r2f5RCnChxduzrXcUjxrNdjITGPtZzNPf4MQI+k7oRPF3ZgUrJdHM+PB3omHOwXV33wkOMXiomNdCPwxDO9UVCqQLqtTXPDOWEjVIWrrlN57RZ24M1rmiBVN0iAIdx3EgYB9ztLH+OSwd4Ea4MFsM6PFAZtzZyZb8TO4zw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by DBBPR08MB10771.eurprd08.prod.outlook.com (2603:10a6:10:53a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 04:16:13 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9520.011; Thu, 22 Jan 2026
 04:16:13 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH v3 2/2] ARM: dts: airoha: en7523: add reset-controller support
Date: Thu, 22 Jan 2026 07:15:59 +0300
Message-ID: <20260122041559.240864-3-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122041559.240864-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260122041559.240864-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS4P189CA0017.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::7) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|DBBPR08MB10771:EE_
X-MS-Office365-Filtering-Correlation-Id: ddecb447-11f5-433f-0a40-08de596cfabb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/en/so9m8twpN6MpbUE/AQ/OrIJBaERCgdx6NIEJX7kypUyGYTOQXhk7Kfzl?=
 =?us-ascii?Q?IeP47p+CVY3PBpATkV/iobeX4EpjYg5xz2cvLQNvJ9wasNB/WH9NOnea0IHi?=
 =?us-ascii?Q?K9udN6tO9u8iq9nbeIp/A3uNht8+ml5A4rRRYte8eFYsYT0u5tIbZNWGssPO?=
 =?us-ascii?Q?FOzrEAUvi9/ChOpYIiYEY6m1pTR1+sPM04TESly32gRt2Gm+dQMl0jTyZPCY?=
 =?us-ascii?Q?2G4VT5jfiUaT2yMiGYhr21RbUFa4zpgNM5ckAdMjJHj0HESY3c9GM7VINFRi?=
 =?us-ascii?Q?BXBr4os2uTpBB2yOV6w9Secb28lyD1KxWlix8R0qJX8qKqlznj/vhAiNLEOP?=
 =?us-ascii?Q?LCXUXVyYBaFSvHz4I72Z/4Qh/ihd25BzHux0qcFqwXHQMYeJIu/Edl8F3t/W?=
 =?us-ascii?Q?JthKR9znEXifYR4aeRTzIlrYIrfpM8sYEFmr5V1ertHKOPfhXt15Y7amOrqI?=
 =?us-ascii?Q?dNz/h2c7geeV+Rcqd9kW4P6IVQlwNRG6MMqIpjPrdlORFhTNacchraS2RyCL?=
 =?us-ascii?Q?ef5Ck0u7rl2IP0brD7nTYWflnFrrsXw6Utt0cig0h6XCSz0t1e7P4YploNdH?=
 =?us-ascii?Q?KdvuiVG23sQFapJ+EXuH+BozQ2KsKOmXEH0woaZDSq4Ws/ygM3hMQiKiaQoV?=
 =?us-ascii?Q?TR23VK4CHygxx7sQ8pcikrUvCT0i5WpazRzSDGU0gdSaN/DLxxBBLzmwje9P?=
 =?us-ascii?Q?VZ3q2XaH0h7lPQpkLV+V+dzpM13qc55Pde2BnpMHAAbXYgXF4fxDEM/uMMdG?=
 =?us-ascii?Q?Pa9I7H9RAjtobp+jWxnxfveX/4l/6VLuAfRETJLWNxl8Pubmw3oRKH8QXhN0?=
 =?us-ascii?Q?dbb/rjIaLV63P+8E1XEKeue1l1CHQtXhRLCenEIUqRnlhf+1A9nKeVFM3vbg?=
 =?us-ascii?Q?lo7O+EioM3P34fAJ3aSGnrHbs8QaxKw3wUzLOetJzLt0YOu8x+OgMgzxAmab?=
 =?us-ascii?Q?05TbtM6CtgatKW9lzsKiBa1ovY9YyR/7OmrjUqHVY50YIX4T1Wpmbgd+MW+M?=
 =?us-ascii?Q?dGsuymR55YPmWXW4q9Pj3w12CJ9SAyhXprXr1FS2J5gAu5bCltU6wsWkQRve?=
 =?us-ascii?Q?3PL1E+Avm3TfaC9FURGtOQDFHIuY6mcJthZbjSMpxaQLyGL9+thJbcqqBmXX?=
 =?us-ascii?Q?O8RoDcc1cXKs5W1nClmgH6EiU0TXDvWuLBCf1YYcHxJb8IDoW/xQbaQhH9gd?=
 =?us-ascii?Q?L9ivv89EFptGyJRUKNmh3afCntnM1zot77FUxUdG/zuoZVsOPXPvKCUT7O7+?=
 =?us-ascii?Q?8Amjx98SVm36h1uAeNfgavQ0toorSQ4d7O0ysNS0/BzY9pcvkjJRZ0F9ra1z?=
 =?us-ascii?Q?trO+Lr6sws5yIUGWPu6b066JVEnVSE6TrMuUQdlY8MIAPKHWLIs2tlv6DCou?=
 =?us-ascii?Q?IEdKV9oqNLMIWVI8V5LTOnm3B8UxtGAiEkhBmRjRzM2/gq2NA6xx8dIV4o85?=
 =?us-ascii?Q?Y5pJ/xaLYLcDgSaO6lJc7Ik084YVsRHQBEvLB1B9k7OTZyza92lqQNBpcBa3?=
 =?us-ascii?Q?tRgR0PlCcmHE6Ty+rT7Ak2Dn+mAmhO09gg0Hzw01H4vVXIjxQjNHL0lD9VyT?=
 =?us-ascii?Q?61bSKGeNM8YKJCooQ+Ly9A2djGitw8cnpNnG+1HxVS1UuTIKirtFgnF5iHBE?=
 =?us-ascii?Q?M3/8LdpUZzKS+s3b5PR2oC0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?6zC6pCJbExEl6yaQmgZwaAwG+ejSXZGF2YDgkWr3PNemjs2YidVKbLluakWX?=
 =?us-ascii?Q?pP5rR4Opaeh9JWvGxBJrL4lTP7TTpF60GhK0Lo1WNHpTtjuaSHof4+EiCmV7?=
 =?us-ascii?Q?x78xamDyT1uaZr2mRtnmaLmW7TugPNqT100pPlWgCo+LdvEXoog7FCi4iTAt?=
 =?us-ascii?Q?x9sZWQnup/pd8IUz8EPfhDk3gaWJVUxTF+e2r3BXEUOHlHi5HG1MHYK3xL/x?=
 =?us-ascii?Q?6icnKBgrMlaLYMCPVr6MbwMS0NxCwG402sWhpXqSV7F9+f4OSW5zc7Jk7pXm?=
 =?us-ascii?Q?CF8D6LTvQum+gNnSg4OlALdwLDPCG9ufoBahCC0Erk9lzk7UVNWeLjUIxqLD?=
 =?us-ascii?Q?Uliq829hlbaCMUbc8iK/rwA424QPqkwcqfs+T9InetUNEbwOaoM7qCkcQZ0c?=
 =?us-ascii?Q?6vMUpxlpH2ZKzmdtdMAKe6nEeRH5YUqCKfZg3H0aBpmNP0Rf6N4qpH1a8bba?=
 =?us-ascii?Q?/hpzcCVPVjTvcV4JJeNBBAmJl3jqBuo45otAEer1g1L0lAB/reMFd1oaa76n?=
 =?us-ascii?Q?1U00K1CdSQ+3s/bzdel7NPwFJHmKm2xN054vqfeqSAChwcKXOBJOFyVVUIlY?=
 =?us-ascii?Q?uMJj2iGupRa2c8sX612FZ9PDDW9UUAEqDPWo/BtDCng6OhbhMfUwA/3sMPDc?=
 =?us-ascii?Q?fTKFzzi6hx4qkZno0tHI2dIkVjcfVmMpGGKWd/iQGJOpca9zXAU2fOJLQsEL?=
 =?us-ascii?Q?Dly7e8UWKKVqA7tBmPMRsl4IHcoxzCig4n4p+CTNFZ0dpJUEgOG4ZAZXWcEw?=
 =?us-ascii?Q?HhNfz4EGFXuAlrpk76i5LMgq5vDLs007gC9lcQ0mJHv3deaALRrNRPb9JXfz?=
 =?us-ascii?Q?B4XpdyDQL/IGegdWcKXzZVLbgVKenuwjFuOBHigc7YJHMc4ZzERLNTqET/XP?=
 =?us-ascii?Q?sbg/3K6sDB8AasC3WEQZyCqy4cGZaLAzVEg1BLNWsi/xSiS5vWJf2RURdlqI?=
 =?us-ascii?Q?5qpVC9Tk2S0qXoiMbDR7ku+ogsnPtCDxlaWXiW/5OoExix88yBfOyGgyDSyD?=
 =?us-ascii?Q?SoTC8kdT6lO1puCi55l+6d8KXR8VG1U30fJlV2T98DzclDgOHHg4Ja9dDDrR?=
 =?us-ascii?Q?GyTT5ApOckLcGpfJcNZyCJcSR8GWJv6iiIJwIkOcz9S4FDQd5DP4NuMndEC7?=
 =?us-ascii?Q?leqYQHmy+Bi3GIz6fbqzaMJmV3uZL0pLOBH8mX6C9N5+uYFlu3XoiKgZQKsF?=
 =?us-ascii?Q?9lg+Rh8hAZ3L9MFfMuozUmYtUNWHfYKVDSQTe5cv58kyfN1A5uFexb7CqHO+?=
 =?us-ascii?Q?lKV4vUJNR1uG5XNyDNHRMO+rl92HnzHRtNxRQmskWFPNdGo4RPwAPX3xlKa0?=
 =?us-ascii?Q?sMTVwvY32xIN3VCkrlTGuFr9/WsiGTLQ+zNz1w6VetpqazkzOtJdF2E0UJau?=
 =?us-ascii?Q?4McCstOtLtfGjSfDj83XVb5sUvuiOcXDwzqIkVxD/Z6nZpjmhgU9zQlr4zFb?=
 =?us-ascii?Q?r0lUEQkWJ7qDX/XwQT5cqT7y6XMUxr8DpHsqdBKAT9wsyv3k5oS4djJaDJ0n?=
 =?us-ascii?Q?jkq25KSCMqR5jJeDHUh5lqgpDunXln9+30TrfjAe30T9Nei3n2qQ6spE5KVV?=
 =?us-ascii?Q?jQQJ7mEUhklyim7VgGKWkqmfeOpCPfnY+j6IuvfbA37CqEZYWx8I3f2YIIaA?=
 =?us-ascii?Q?rXu78Q2KkLIJt8zizAh++uP5wecB76SJRCskCwJUMPozoxGzHT3FiQ8YkpsM?=
 =?us-ascii?Q?mNgkReZeeYv2sZ6yX9FnZcBu39dkwrbBqYSatu58aTZK0rY84CJMunFfCDiu?=
 =?us-ascii?Q?Q6R+nJdiGJ2aNLD2Nco1ShmxBWiyUOs=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: ddecb447-11f5-433f-0a40-08de596cfabb
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 04:16:13.3055
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1YH834mSbm0kM7lbQFje1QqO57jUpMsqcPbbCCwE2pwIEqrvfHjCVPGzAwq3QvHS8Fu3/cS4S5rnegTgj7MmZgArA3lklvK3Nf5eXuBBCBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10771
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258209-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[iopsys.eu,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	R_SPF_SOFTFAIL(0.00)[~all];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,collabora.com:email,iopsys.eu:email,iopsys.eu:dkim,iopsys.eu:mid,0.137.84.64:email]
X-Rspamd-Queue-Id: A73A361A87
X-Rspamd-Action: no action

This patch updates EN7523 dtsi to reflect the reset-controller
support for EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index 31191b8d1430..115cc44093ab 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -4,6 +4,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7523-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -91,6 +92,7 @@ scu: system-controller@1fa20000 {
 		reg = <0x1fa20000 0x400>,
 		      <0x1fb00000 0x1000>;
 		#clock-cells = <1>;
+		#reset-cells = <1>;
 	};
 
 	gic: interrupt-controller@9000000 {
-- 
2.51.0


