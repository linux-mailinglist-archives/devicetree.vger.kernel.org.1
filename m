Return-Path: <devicetree+bounces-259333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIdxH7TjdmlVYQEAu9opvQ
	(envelope-from <devicetree+bounces-259333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:47:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D592083BDA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C121130117AA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712C8304BB3;
	Mon, 26 Jan 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="aQYxR0sk"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010028.outbound.protection.outlook.com [40.93.198.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB432FFF81;
	Mon, 26 Jan 2026 03:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769399194; cv=fail; b=uDaFxaHfl6NfB2NfKlcebNJCZejw2XB5NJzMQeCyd4C5t5hELsWIskycg8RqGorzYSMZm7t62l+WtEVr0cugyr+5S2RogVa0pyPdPeSSga2MpiRO6WC0xk+aBS4g24MPA2XREK2uYvGB2NtU9lfGqWt3gF/BqwdCbZO5Vc0HJUA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769399194; c=relaxed/simple;
	bh=l7BJbM4x+HqaFw8ikNBk9V5yXubPMDY2N3vV5xIzhjQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tFsXl5XMXPb6HGxizgUW3z+tVUjCPi/nO3BUhx7wt1b/3KPa1KWBwvK/UDnCdgRoNHzvOtw/Hjr8ONvfqm8BshPSGJUIN+VJMdd+nEAyeE1vHDL0cDM94OBRPgXLQY+aQ8OeVqNyrzQDS1fgWsZFAPFW7kS9gXf0ZoZNHcgPVXs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=aQYxR0sk; arc=fail smtp.client-ip=40.93.198.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VZzy64wNhjAzT/DUQMvrnHPHT1oegb0qk2Qd0AWDCrWaAAIHKbTtXFS8jp5JqHGAYukILejHF7oTJeJQ/9mJ4bWiLNzS+efI6WNOo+/2BJad8WbJ6gQJSwgpZJi9VDF4B8th96lHNMyfu4LySVM/nM5RlIDiz9/CHu4bZGGcPsT1gDM8lgrUNAW7q26QmmO7fr7hUyOgEu8C89R4L4xbFJxcdxAG04eoCmXrpxEvTDpU61AWMMCSa+aRJwxYxWOsn6DBroxlAqgoKJoxhdkUsC5p+gw8BMuF4EnId6uw1ILUJCUzuoyR4s7TrWaWBXo8YVaqoFX12+bhfbcyZmSQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=jWunZeRSGdffh72Sa1Ae92P6mGh3dVg1ht0TDoyUCV803VuC2upnXijes4NKAu3Ub+LwV1g+57yrG8X1waZLa7FRwBm6ueEkevnXzREN0v7YnaHID5Ea+q4hCzoImI4sQN7e0l1pLwptWBDpXte/YK583I6LyBnlaQkKrEkLYgHwsJePxHj9SFrStcvDHs9/Hr80GSY27wHaalyvFjKfJY2bmlFFEpGvndXGPmsWi5ttkA8Orm2CaS2utlWPBOrVMTIAzsi2ZN5EtUySFTn0DnRkJ+K9jk0eCHZ49JDI5pnT38+zbU7bznCcv7KeLFa6pwO9yCQIrzv3FgyEo0XnGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=aQYxR0skBmf9+QN6PAisVgHblSZPEUPm5pXIIqMfCT4Oxa8rGkvjiOYy41IUN0Yj1iYoe+uGdZ5HZIn0N0g3GDPf+IvDaeBdAYKf1E1YkGLAWHTWgEQB5NM97Cgo4HbrHgVo7ONBgTAgXNEbpXDGBQuto3UwBC0jyJBYuozXX5ZziehctoUABI9Qn5BU07B+cpnwREAIvXg9mbAHRpxCzVqM5Ysn2dcn8Bh/x0E8X5T2WzPY4g8W2gNYKF2ih4UHGnoDhE2tRMBw65lsXtIEhogk6E1d3XWqa5W+ylMIOgpw476lxGg7YuJTDw88ABWyWQwMVtI7/Jrs83ugIPa5cA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by PH7PR03MB7046.namprd03.prod.outlook.com (2603:10b6:510:2b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Mon, 26 Jan
 2026 03:46:03 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 03:46:03 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Sun, 25 Jan 2026 19:45:59 -0800
Message-ID: <c968f7cef56705a6edfbae634a076c0453eb6998.1769398006.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769398006.git.tzeyee.ng@altera.com>
References: <cover.1769398006.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0151.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::6) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|PH7PR03MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: cea27a4c-c0cc-4f65-eefc-08de5c8d6d65
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Q9JpuGnlVaXfvlog1ESQj9nVboUDC/yjJH8CoJCaOTXhx4ZvK9m6pfg5VElD?=
 =?us-ascii?Q?IContbY+E821Wy6DC4JVMR4CxWNpEEf8n81roBrQXRHdvGTyk0jTVuAn6y03?=
 =?us-ascii?Q?9688fi4qK/v5vj96dAitfP3YVarLLMVldWHd1Qlzf60yOegbT6UHAuqPnJMO?=
 =?us-ascii?Q?+cUXYktd7rMmX+V4ue3Hqjkw+cRlQNLuvHqcTtbEG5JYflyqQIVQSOFDB5iz?=
 =?us-ascii?Q?IAwTkkibYtz3Crhflm80hwqNmOVeuxzcodMF2aTXD6uEVzrf/X09Qti7bG3j?=
 =?us-ascii?Q?ScUGcuGskeygMwkHtJLvhjAPLCtVhVENxzUPJt1lNxPiMDUeBdCLfeqgdK0U?=
 =?us-ascii?Q?qVwmnXela4agsbP1LZJMU1rR+FhX+atpyZ7hnzip8NrLZ5OyHCeIihMAZd+W?=
 =?us-ascii?Q?cb1FJQktri7kdISBdRP0oQcLvLzxY+yK6fJ1rQyXz5WUTYm+YRGb3d8YPRbH?=
 =?us-ascii?Q?c2RHa6Bn/KGzLFW+A7Slcsd6A2jdXQz3jRme1EQvitLiB8Fl3O7HI3K6cMpS?=
 =?us-ascii?Q?6+hLN96Fb5AE+axt6E5eetEem/4svMVKfWPJzQD5pMCO8wXyGEiHZ44/zuFG?=
 =?us-ascii?Q?vpb9ZqCkX9Xt6D34E/MntaRJPzK+XP+ha3s7MlJOSAxoiPnbSjHBjjs5TjN0?=
 =?us-ascii?Q?W10+qqpvetRXSng3tMqTuFnR1gGbl1tSBeZRVTA8h21pI2uZPt0B3I6FCnO0?=
 =?us-ascii?Q?Pw26r4fVuNlQfnMqCRQhC/VRC9LsQhHviGODm746ItF/2PcHmmDw6i3uq3Io?=
 =?us-ascii?Q?xspWNcsQ3hhnqDf8ZJ4GZxu6BGKDnU7l2sN9Ad4iWwPt/+NlvnE+IPhRYScX?=
 =?us-ascii?Q?3lt4Ih9F80qHNK80WNt+gj7R/p8aGQgJV8Q0s0G74IhvtsL4ST3oHBZck79J?=
 =?us-ascii?Q?RQgr0Rsd58Qi3f06aWeRd0qBE1/XaE/ciZexVSYc8LaKSJhoGF4y8NCgtOKW?=
 =?us-ascii?Q?pkhcETE+tUxZzK6zug/nIXg0J6ABJfR7+04/oh6mLeNKJ0vWLSNcRINqJWKo?=
 =?us-ascii?Q?pi56Ncc5o9VDnOSJK+mS8fZ9p1qRmdvADT5nA+rNhlaTANi9DCBC9qoxLgzv?=
 =?us-ascii?Q?tR03f4BmWSZh/ayvaEDzjBcUpAMpGUiuZgL9mXGPTVkL12kocT2oJT8tWOzk?=
 =?us-ascii?Q?WAloGaNhndzf/qZkjosSC8dZMqF6y8H/IS0nTRXlpYfg6uVhcr+y4oWHlHUU?=
 =?us-ascii?Q?uDfOSLEzDzd9uCoYz6osdwHJpS4sSi0FEORMdNtu0puv4ccch2h2bXOYLlNA?=
 =?us-ascii?Q?jpBO1ZovXl7JZ5MGK4AWw1OhEXRTYkYaz5zhhoTCjx1jXQn0qmGcdOApeVBK?=
 =?us-ascii?Q?rOgZF3wDf2gV3COCfLZWN2XeMphvwKcYHReXZ4iXmL3AVO9BnJFNXxqu70nV?=
 =?us-ascii?Q?DtTJ8fC+bSD7C8Nwdv1wuDgifP7drMMKxdZgOoufvnNQYcAFINCZOmSY/hsR?=
 =?us-ascii?Q?j9yZanW4rDc+VMLBUWXoxpInQCdH+6Ra+QLfTN0bKO6hDc0uw8k60A42Y4ro?=
 =?us-ascii?Q?ZeETU9dO9TE8GqZtbolrJx4OYGbaIrrDPr3pHkXzvuVRsbgr7QarxTJNqV/f?=
 =?us-ascii?Q?zznD/+IfjiwEmDAFPaw=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?nH+bX9P5HdCptcKYZOxTUSKOcR7YxzW43V4J3t0VxUQoo7bsb3dsgzpdjQrs?=
 =?us-ascii?Q?XT2jul5KOLmKU1DP8COjIV4q5UEyGeUulafw8G6vV7Wy7CFAeFkumfhng7aR?=
 =?us-ascii?Q?OP/3OLkZiKR1z07C7IqaAgpQ1AoFZ4/YeFEYkxj/38/5O6gCiVzNtTi3Ob3W?=
 =?us-ascii?Q?XeSaU2XNi6fCDMbHEUOX9T4Y1QSMJGzU/spJdOQr43h6VqB6epmFwKVGoMoG?=
 =?us-ascii?Q?iMBT0KC/HOF6QsERUxd3eWQUozgJYgnVx5REhiGz72wD7qH1YdSktsyIkr57?=
 =?us-ascii?Q?P96mbNedRSc9Rn16E1WnOKGcaHOFEXi2CY5XaiFhR6Ujl2dpUq9+gLgoywgq?=
 =?us-ascii?Q?r9IuC5c0yHauy+krIJoIx1Vh9KEFXFb9fWuxHIrJ9oiEX2s0RMDaoVBjsH0C?=
 =?us-ascii?Q?BXJ7sL8IN6RJn0U41TEcfUqyUDrd9eNb6dFSATVAAmZZHbYefzHMtbiFFxr/?=
 =?us-ascii?Q?nOvp5c10QBzv0nIapBVNnRdKtfG+P89aLrnax4YKnkZAZG/ztAY6qTxatsPx?=
 =?us-ascii?Q?j45xkhFFQ+UmYJ0BWG/uqonGbuQrQHb9EJ//bO2nZ0oiUfOuINwl9bR7yUPV?=
 =?us-ascii?Q?AlqYVyHQMCm6seW5Dmb8xXcPOHaPTcgjZlRSKREeH1uoddRU+ar1tjYq9cL4?=
 =?us-ascii?Q?uy3JxkHIWKHVK87cvvnvwervbiVpqUhYhrysVkn/DIP4ZASA38IrhI64LvFq?=
 =?us-ascii?Q?SpwPU1lqviO8L1NfxeSM6hGfThMUwow+sKI5kV/ELP0tLbwBrdz24+yBRgki?=
 =?us-ascii?Q?YRHWGnV4tuVyHSnpnrpIDiPTldisN9fkjuheBEHOi8hIXOTUnh+5sqbigJQi?=
 =?us-ascii?Q?/1IzUezYkwrmd+DDad50AJiZIOVIz3sIw/IF6/b2Jk//C3RggJYhNfRRByhB?=
 =?us-ascii?Q?nY10Ke+TCj7x0gxv7z/L/zWdaPcCN88axJP0s9UIR/7WQuxQnAOHtNUWZmYs?=
 =?us-ascii?Q?PMXniftE1KzFL0bh/c533f+c+ZVr66cJTWdNHbz9V5XeU/MULNG+P+ZBykeX?=
 =?us-ascii?Q?fUBa+z0NxuI3tDdI04xWBn+KR5QAqxlkrszSuDsxV941hqmiIz0Q+7UQqx0r?=
 =?us-ascii?Q?pKaPfnV6xXIHCspkldum8hEGA+rPcuoJzzecL/nZ5ejvBaAMrEjkFfliJbur?=
 =?us-ascii?Q?GPwnHr9zvJjnKl/EYpE/8CW5PLPUVfksq9iFhsoVdeqqJHpB5NfLg+oqu+gW?=
 =?us-ascii?Q?+13FiESG6Wlmmfl6rLuhT2C98nnMsbqbxT/LklaRq8lzsi3OnUnmVnXax1wy?=
 =?us-ascii?Q?ccL4Q6wkDi0V/PTFchHcs1msIGdxVdaiGW/FQU9Aq9V9M9UGiFzoDn5B+hyZ?=
 =?us-ascii?Q?oaI7QZrreDGFEt80U8+KyCxWsc58WqyFefkhtdhmSVWxIyfq7JL9IDg+J6xh?=
 =?us-ascii?Q?kCvSwJwzW0VW8jYwTLrCD5Frsv/hJUNSijibf+99Q1gd46LJMzm+64XuC3Hm?=
 =?us-ascii?Q?w+nQhdCQfW/1uTnivI3QyxgcbL1XZAA1P2Ao11qWnr2lEILbj34uxBsUiL8i?=
 =?us-ascii?Q?AZr7DYTcl4yb6bTFNL+d4LfRr+T1U0r63kHdrc4wtLFsp95XwxfxewPnli9g?=
 =?us-ascii?Q?9mW8hhZgP1err1mBFos81bQj/vwVtt2QPVkmdtGfn29kJZdd3EGo1sR0hBMt?=
 =?us-ascii?Q?mYT35IwCmPXk32QtWOGhhGmAHUhApuLeS7CPXU8QtCnR5+iwrhaqAqYElNF6?=
 =?us-ascii?Q?ac2oYBxczPPO7/dB0XTDxMSu5glftbEfHal04AWUMLDFv/b5maJ+lqS4PCWs?=
 =?us-ascii?Q?qf9px+5ARQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cea27a4c-c0cc-4f65-eefc-08de5c8d6d65
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 03:46:03.2425
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5KjeFQLEMbc6HfevIftra1ssozOvctKStFFoL7DNxY5IfjK6Ojc4vDkK6Wo6plJbaaCTfM2M2Cm3v5cFlCWEeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7046
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259333-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	DBL_PROHIBIT(0.00)[4.196.180.0:email,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,altera.com:dkim,altera.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.68:email,0.0.0.51:email,0.0.0.14:email,0.0.0.4:email]
X-Rspamd-Queue-Id: D592083BDA
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
daughter card replaces the SDMMC slot that is on the default daughter card
and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v3:
- Refactored socfpga_stratix10_socdk.dts to use socfpga_stratix10_socdk.dtsi
  for common board configurations, eliminating code duplication
- Moved gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi back to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant and not common to all Stratix 10 SoCDK boards
- Fixed PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the socfpga_stratix10_socdk_emmc.dts
---
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 4 files changed, 155 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/altera/Makefile b/arch/arm64/boot/dts/altera/Makefile
index 1bf0c472f6b4..540bb5ae746b 100644
--- a/arch/arm64/boot/dts/altera/Makefile
+++ b/arch/arm64/boot/dts/altera/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_stratix10_socdk.dtb \
+				socfpga_stratix10_socdk_emmc.dtb \
 				socfpga_stratix10_socdk_nand.dtb \
 				socfpga_stratix10_swvp.dtb
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 58f776e411fc..fab46d007dbe 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -3,53 +3,11 @@
  * Copyright Altera Corporation (C) 2015. All rights reserved.
  */
 
-#include "socfpga_stratix10.dtsi"
+#include "socfpga_stratix10_socdk.dtsi"
 
 / {
 	model = "SoCFPGA Stratix 10 SoCDK";
 	compatible = "altr,socfpga-stratix10-socdk", "altr,socfpga-stratix10";
-
-	aliases {
-		serial0 = &uart0;
-		ethernet0 = &gmac0;
-		ethernet1 = &gmac1;
-		ethernet2 = &gmac2;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		led-hps0 {
-			label = "hps_led0";
-			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps1 {
-			label = "hps_led1";
-			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps2 {
-			label = "hps_led2";
-			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	memory@80000000 {
-		device_type = "memory";
-		/* We expect the bootloader to fill in the reg */
-		reg = <0 0x80000000 0 0>;
-	};
-
-	ref_033v: regulator-v-ref {
-		compatible = "regulator-fixed";
-		regulator-name = "0.33V";
-		regulator-min-microvolt = <330000>;
-		regulator-max-microvolt = <330000>;
-	};
 };
 
 &pinctrl0 {
@@ -68,10 +26,6 @@ i2c1_pmx_func_gpio: i2c1-pmx-func-gpio-pins {
 	};
 };
 
-&gpio1 {
-	status = "okay";
-};
-
 &gmac0 {
 	status = "okay";
 	phy-mode = "rgmii";
@@ -83,7 +37,7 @@ mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
-		phy0: ethernet-phy@0 {
+		phy0: ethernet-phy@4 {
 			reg = <4>;
 
 			txd0-skew-ps = <0>; /* -420ps */
@@ -111,23 +65,6 @@ &mmc {
 	clk-phase-sd-hs = <0>, <135>;
 };
 
-&osc1 {
-	clock-frequency = <25000000>;
-};
-
-&uart0 {
-	status = "okay";
-};
-
-&usb0 {
-	status = "okay";
-	disable-over-current;
-};
-
-&watchdog0 {
-	status = "okay";
-};
-
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
new file mode 100644
index 000000000000..1d50f7b21160
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-hps0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0 0x80000000 0 0>;
+	};
+
+	ref_033v: regulator-0v33-ref {
+		compatible = "regulator-fixed";
+		regulator-name = "0.33V";
+		regulator-min-microvolt = <330000>;
+		regulator-max-microvolt = <330000>;
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
+&watchdog0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
new file mode 100644
index 000000000000..b2a3449638dd
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10_socdk.dtsi"
+
+/ {
+	model = "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
+	compatible = "altr,socfpga-stratix10-socdk-emmc",
+			"altr,socfpga-stratix10-socdk",
+			"altr,socfpga-stratix10";
+};
+
+&gmac2 {
+	status = "okay";
+	/* PHY delays is configured via skew properties */
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@4 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
+&mmc {
+	status = "okay";
+	cap-mmc-highspeed;
+	broken-cd;
+	bus-width = <4>;
+	clk-phase-sd-hs = <0>, <135>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <100000>;
+	i2c-sda-falling-time-ns = <890>;  /* hcnt */
+	i2c-scl-falling-time-ns = <890>;  /* lcnt */
+
+	adc@14 {
+		compatible = "lltc,ltc2497";
+		reg = <0x14>;
+		vref-supply = <&ref_033v>;
+	};
+
+	temp@4c {
+		compatible = "maxim,max1619";
+		reg = <0x4c>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+	};
+};
-- 
2.25.1


