Return-Path: <devicetree+bounces-259332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCKkOZrjdmlVYQEAu9opvQ
	(envelope-from <devicetree+bounces-259332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:46:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F18283BBD
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 18A8F30022EF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A331B3019C3;
	Mon, 26 Jan 2026 03:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="sm83YaqO"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010028.outbound.protection.outlook.com [40.93.198.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DE52FE067;
	Mon, 26 Jan 2026 03:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769399189; cv=fail; b=Bq6xm4MX18B1EN3YOf+H8RjiWehhI0wxiLnLNTnWXiUp1ze6LDAUPKfGQOYQ8Nkjni55KW+R0xrXh20Dlo5TxeZyMyQBxdhuk1iHg8CJurWTKPuDXIzwxfeF5TQUz8ckrnJAB9AogCgHm2ah5qy2+olOBuJwKZxHkIAL/NaI/jE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769399189; c=relaxed/simple;
	bh=J4uUUwGcMs/R5Ye27UxTmOgLNcqL7Msa9lbTHo/FR4w=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KoMW2btR6rjqfKtRPRyY4GRMw4JeZ1XZTqXN6yPVfBjpUYvfY/VMDbkNGQ7WcFQoDadKPLp57V2LMibO/uIGLDq7zEPcU+yEd7WDnyglHXxc2aztOxXy7btaiQkKwJgK46nVgQ4AJS/iw1DqIlsJ7kwA6qcgF2aJlBJ55I9O0t0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=sm83YaqO; arc=fail smtp.client-ip=40.93.198.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q2Fj83nQgAYe12agih9XKNDwydMBuvcCH2nA8bvoxWd49zKiG1sxPDWHHI3iuaq+G545Yb7bzs2Veh7P6m0K7GZTTKpSI0H93D5CcZ5RfvpPsAh/WTDUlBMs3+YYF0o67u0xi7oMoRzQu/ExF8wOrdV67EWlHNfJypVGM0vkUOwYe0Q3mewmBT6CjitRGCvrA+1o8et6T22VdACmg1Xkpa7+2YZi+6aCmphF0tByymAQSifGW+hRfZeGVRSJT1dogMQFPl5nYmarvI4x8svIiO6bYxsrUqAe8NVL9fkB24DqkIh0V+tnw4HLLFlaRa6m0LzbyNkEygr0PZ25OMiwpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tBQH3j4M2TvHHkejPUZSSlrCcoQQ9xUanbiYKGEK24k=;
 b=wcmIikb8Ud4H1kQUS/DLknAzyqkOVfx/0C3XsGDZDUnlMAP7BEvYMcyW7ojNCprmk/Yy9z2v6j7WnIROqjhH/0X6N/t3uYFJCSkjp7jjB5OjusHvas5QzJhtPXLOx3bnyx6xsYAIvSuBw5Exab8cDPqP8LABhMJnT9iWfNDdmIXaT6GnbtIU8aH+XrgZ/emOiBm8FuzfMZoEP5qT1s7rMPy1pw0ptgsVmoQjf+aHHCWh+yKMjBrQfm8YTCUAoUogg6Z5VnmCTUBd97UTGidHMVz6zir4DwxnpVNTr70rMr98okJD4ubjpcK7TpFtQaTLBGUA8YTvBWFS0uywBOudgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tBQH3j4M2TvHHkejPUZSSlrCcoQQ9xUanbiYKGEK24k=;
 b=sm83YaqOq3Lj7Ok7aTqPudZqlE0bFRf0jp8D9Wq1Pif4EOrkakgf8NOgRdyR/bIyFyXN8Qegy7eiR9Gx3p5rHOhsvPRnWIfdd+8la2KPMIMGR/RO2aDQOz5Yng8f4fA6FxahmS8glLAV/5h+RSBQkzfEXdaT1NjFAl7okIQyDbGUDgc5uheNBx7jjfxLCLRBaCp0NcKlgeLpbhR0cyxMM+NTs323GpwEuBkT51gXz2u3auyksEQZS+itFMvLo9ZugFu67BFzyAGXisvzBB4v6j56Nw+2C8JGNHLv+8IFa9CiWo4/k8XufctDdGERBFNkMtG3990t6XIXxxGZAYz1Cg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by PH7PR03MB7046.namprd03.prod.outlook.com (2603:10b6:510:2b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Mon, 26 Jan
 2026 03:46:02 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 03:46:02 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC variant
Date: Sun, 25 Jan 2026 19:45:58 -0800
Message-ID: <866ca9c14f4c72791acf6ec422af691ff2c6e749.1769398006.git.tzeyee.ng@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: a85b4fb0-a240-47ff-a236-08de5c8d6b99
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?L7+EIQ7jWK94YhKyuXo1nXLoExBSMTayvBU42a2Yt2SxAF1brnLlhK6Hl/LG?=
 =?us-ascii?Q?5eNJMBNEYpTeKiSz9wlUy2rZ+FowWRnF2KkZCmjHeWglET5rlaGAhiVGDVoA?=
 =?us-ascii?Q?3Th1bN+wGpX36FOmry2woHSLFMRqFx0pVpw85xajt/zbdpw3qX77It8H3uAP?=
 =?us-ascii?Q?sxMnhNBzxBcPk8KYAiqHIOH4NDYPJU3ZOaPJP2ofU/eKmzYSrlldVHKZZk4c?=
 =?us-ascii?Q?ZGCdRR+crgqyBvuprALjjc38Br+lCie55AbOSYhE5EUuyv+lvV9rJ+yHf/tS?=
 =?us-ascii?Q?kAUMxqT27m4J2FqW5g2v/7xUI8DJ+XN8dyxBkcKdN6hRcpxkfmFruUPVabZ6?=
 =?us-ascii?Q?VA3eHOBdXWipFfc379rOkXmpkqbmv1yYtTl5Yzy9ddOkcjyix0DCPoKcHaKh?=
 =?us-ascii?Q?2iYIbsM/Kw0ummRhBaXEyZ4JG2Tfs8qWumOZQAo8mYNl6RrdtYi6n5bQmos6?=
 =?us-ascii?Q?PReHIjBIpfddPhM81a+JglsFIZQhyPGQp8d9E7l0Qzd+IGGRgxqKTzeYJzjJ?=
 =?us-ascii?Q?xHlDs0bON7joG3ky9sjQzgo5rKYplUhNeX+UHke2U6itnNCFzK1oQH2ZYCqk?=
 =?us-ascii?Q?QfcbGt0FewpfzbUEkhx/mbAzuTOmYjTH8j766cVzEBs9L5KlnTyCSqp1FwaZ?=
 =?us-ascii?Q?JFZnd+rA/LdN2xz0Oji4iCSVv6RqWhds3f6BGaXZwb2cvDPD1S26UQJgu6Ks?=
 =?us-ascii?Q?UCPC6RDuTBJhtIJPc7Udualfrs3hyc0jRdQx6aWmNOtCTD2xLCjCoWrRvZhg?=
 =?us-ascii?Q?WJ3F2ch0s5qOykJKMiNx4GMRDTuc/fBKPwc0eWCAb0M4Xfo4gkXqPSH1ox9s?=
 =?us-ascii?Q?X+xW2mSBX4yXcS5wUlmGDHPJF3G1pvO6bM4pVI9EHuwnF0V67KFbwoASEHeH?=
 =?us-ascii?Q?EYF08UHTOSPiROXG4ZR+oE5jJHk7KMSOSeSlAtcxwMTADBD8AuiL2pIetqo3?=
 =?us-ascii?Q?GzoRATpew8xDj0m0YCdWXWenmj6SSMwWrD/3PtKPG1ljgOoxioluvp6y2cbc?=
 =?us-ascii?Q?ej6MOz8gRGIwEZTsmYkrGJpkSodVwZyBZmtFV2RDaTLDJ1GwtTeUZ2bFLK1C?=
 =?us-ascii?Q?MAYSDJOTGdQXvPvyGqEFkja9VoVFGBq8HlWnJjT7KyDvPZ/FNvNgT314PrhQ?=
 =?us-ascii?Q?hSQBncukreMmDX8qwtia7ne2Sl4oYYqnyC1qxmxyUpe+LvgxNGSaQCtpaxta?=
 =?us-ascii?Q?sBv03hOVfKGG2vNLQ31tEXLSTuXObV0YS2C5WywrMr3SsVuV2dv0MpeLDtbc?=
 =?us-ascii?Q?v+EUQ+GGvz5BAAm5UY6smlB6NEovQomK9par4hSr6Z2cFkgOBEndv+mZfNGM?=
 =?us-ascii?Q?+2CB6sXmsPFrpUrfBMklgvkMDjpofqYZNO/GFVLweQt2w/Grsvu7zVD6lajU?=
 =?us-ascii?Q?TDMnt3OGQ9LmZlO4IHuXQqfbB+l5moH04lH1uW5No7oyigcsXPGyGrumdTg8?=
 =?us-ascii?Q?+vlxMBocVSi19eOFoqCscX9GXKOitAvXvbfSNLMRlAa7QJi6HfoRBQkxup8O?=
 =?us-ascii?Q?1Bij0++kZGH2N1y+6iYnkxp2Xh0whESXn8BEmQEJdZ6G/yVWHJzOR6SDunSi?=
 =?us-ascii?Q?wRBL5SZEYBesmDvlKW8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?YIFur9RBOoyzxzNtPwSXFi4PKpZH3AbijoKvQLYQbN96p9EMKLx7AEn9DRY+?=
 =?us-ascii?Q?lEbRygzCUGIBEAb3kVJldNjb1nu2KGPVwBJT27BPYY3Bs4+61xZ92Nm9O/fD?=
 =?us-ascii?Q?v5AZqUFPjCJVOuV+tolfNojxcsRdRJyJ8cBvsNW72+On/YTSVpJ3Gu7zUk7s?=
 =?us-ascii?Q?OeMjXPx0uwwfpe63JVipsBob0FGatcD6aD5h9t3YtMDBxICUScXrpFQ/bWFm?=
 =?us-ascii?Q?bl+HuoCAnxsr99jeajR3BIWOMcq6jW9lEHAD+J8zuKpWJXVNyGNjHLYltVPf?=
 =?us-ascii?Q?41qrnz6ca11MGh4A9IdkCBciwCj7HBK+bVqe/eA2b2N9JBDSSrfgyECSugJv?=
 =?us-ascii?Q?JQmUzWLTqKvbQuQFd/JJx5EodmfLqoG4bX/kCEtdJDeLANDYMLqf4NZ40k03?=
 =?us-ascii?Q?gfEAf7w94GzyQP+eZV+ayvF2NNEEOvTiuZktKRFXThIqfYu9lrGPp/OBCftF?=
 =?us-ascii?Q?UcjJu7WGkaShZHabfq10K7+lyYncUKH4+1VFeCLUc01v5SV2YYN39tulaXq2?=
 =?us-ascii?Q?i54I6gSb8Qdaeh8Hf+R9ETEWnr1WdR9e5z0bHf1fWIynf3yDO2zr/H4YeWye?=
 =?us-ascii?Q?kNmIfFZFYIsallz6z8ltH9D5C3QeBnnkfoTZNShRjUjAxMX/d/0r5PVNlIVY?=
 =?us-ascii?Q?pTmtGrvMsxQyF54yTnG4jd2PXTcJ79bUs5J/J+8vCHeHCl9KgazYMTvQKL0V?=
 =?us-ascii?Q?a42x1GhPH++KqcKQuva7UWeWAQ70iQlGuYQ3QdZPKzjHJZNc3UW6gvQp5Pp5?=
 =?us-ascii?Q?OHHIjxCohOZBos/HmYDSBsq+OdtbRasriOkk5z8SqM1fzW7W19BXpjz55t4x?=
 =?us-ascii?Q?Sp05H+u0p8pQninXMAPx8UM5C5WH1FxsCscITU+UWtAq5Occ4uzGlIENejwJ?=
 =?us-ascii?Q?mCsebEqpVLSq+8P7MdmRTYx41Gh/qrnd5rEQrnqVyy5y7nZjBhc2IO1jEkX8?=
 =?us-ascii?Q?zXO9oBjOllYoS02nZjBFdURuKKb9/M6lM13ldH7DjRexDwLll8RBGmfCQ+9o?=
 =?us-ascii?Q?PQdd07cHVrRybMrbac0zLGSYK4ZMeh8v08jGphlFM1XUtkf9mv5mZsah0gEq?=
 =?us-ascii?Q?QKYZGjqMfg+/d+sCFNCb5vx7x62N2tTZZBQ0kQGSesNzZFE/hmJxLC7eXgvD?=
 =?us-ascii?Q?wO3zhyUbloCay0KqU+FGyP7u0S5cY+zGewMgH45qYzPygz+9jfZOqltI5f6g?=
 =?us-ascii?Q?qv8iKZcAbSMpe14qxpjavdyub6MlU9RzMEsmbEhBit2y2GTdFunhmiht6icc?=
 =?us-ascii?Q?tRd7SX32ZCz21xqyqeoXfwD5mZUbRp6bdMpU5H7Plc5yQ9SYkZSqTUhORdB2?=
 =?us-ascii?Q?31xDqsLfjp6DZiZUvh297cXQ4niE3tM13DE5R549T8muO7/pg4OWQi0yRcuZ?=
 =?us-ascii?Q?Kl+AkSRfYJFhDiae92sOyu5AGfbxwYYiY5GQlfFidSUs76dOss2QLCi60HK6?=
 =?us-ascii?Q?ayj6eUzCqxkGrj9pFXI3A7WFfSWfCTNFP+erOjfwaRBT1eH5YTUh3FppXc/P?=
 =?us-ascii?Q?b1NU4K95su+Y17zhjyNWgHYMJcPlcMY6UI2b8gLSb5dsv6Frc0eVLYYKhqu6?=
 =?us-ascii?Q?ouPipzZL6dmRnxEodUOUO0/JLAWlMI8E/Osf1iqirALqmWHDy7lvN0VCRjau?=
 =?us-ascii?Q?o0LyIiMFbw+kR6GuOXPvV9DFASbcXtZ8f2ehV1I5ExiZ9pIbPZ5SQR88js/N?=
 =?us-ascii?Q?xQcP4VhP1WmTD68SSsl03jAHpbTd8kFfNpBlPo8MV3xj6AfQMWs7Hgg0tutY?=
 =?us-ascii?Q?vXzm/J7T9Q=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a85b4fb0-a240-47ff-a236-08de5c8d6b99
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 03:46:02.0468
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9+f9QEe7p+SbZetjneBg3uSqg6Df+m/oqtd/hQ+qRqZZDDCmeHVD1pFrbTP72y/gur4XtNBLlJmLvp/Y5h6+fQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7046
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-259332-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F18283BBD
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

Stratix 10 devkit support a separate eMMC daughter card. Add compatible
string for the Stratix 10 SoCDK eMMC daughter board with
"altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
on the standard SoCDK board.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v4:
- Included Acked-by from Rob Herring and Krzysztof Kozlowski in the commit
  message
- No code change

Changes in v2:
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in the
  binding documentation for broader compatibility
---
 Documentation/devicetree/bindings/arm/altera.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index db61537b7115..2097f6a524c8 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -81,6 +81,12 @@ properties:
               - altr,socfpga-stratix10-swvp
           - const: altr,socfpga-stratix10
 
+      - description: Stratix 10 SoCDK eMMC variant
+        items:
+          - const: altr,socfpga-stratix10-socdk-emmc
+          - const: altr,socfpga-stratix10-socdk
+          - const: altr,socfpga-stratix10
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
-- 
2.25.1


