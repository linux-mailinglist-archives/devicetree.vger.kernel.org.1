Return-Path: <devicetree+bounces-259356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPW7M84Md2mHbQEAu9opvQ
	(envelope-from <devicetree+bounces-259356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF6D849AC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9098B30015A4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3611028134F;
	Mon, 26 Jan 2026 06:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="epty2jQf"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010060.outbound.protection.outlook.com [52.101.56.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36FB279917;
	Mon, 26 Jan 2026 06:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409737; cv=fail; b=h2fmN2NszGW908rqXUPtFGZJvyDwO/jiHtyv/3Pix/W8da17UzziS4pPKzlJuLXokpk8jIqyM+9ChQ/mD5SwJVtu0cOC0JZ949RmhAqQbBY8EuAZwAl7nDTAlAIopofZclcrqkDWzt7n4WUBr9f0cpPrf0bGhZ0N2JaQqikMk4I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409737; c=relaxed/simple;
	bh=132WJNi9xMl7etTVKH6Y5hsu2sCDOJw5B5jtotod6iI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qgMfgtkz76fzf936Q/Pz3Pa31zskXlse/GQ9ZnHL20et864wiwI3zSsO0FRf0ZARkX9YyYIzUjFwlEMDlmPzxe61kqOqcwRkxc64Fu2r+eN+h4AKFO3rANNjGdwxBMBpa2SbE+Fjimx7t7OgjhO6jaMpcQL2FeeG9k4ICzE5y3E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=epty2jQf; arc=fail smtp.client-ip=52.101.56.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q5kp99PK9HW298qLfqsrIHiWwjrKYUaseqpOVVoaEovK6EyE+v8XQghwZRREAS6JbJT+uvpbLx7ZDo5NAMj0nCswWmIWgeDva2IBa+jXSa+vsd12RSS61OriH4GCabOt69asDKW5jcPB5jVjXY873zrj52rkMMikMmXJLf8QYfqGML/WN5CAM294yDH4rvB56kfc1zHxoreGBqTrWnG61t19BPjB8Hfm/HzfSZh0kEgzhDhanUR3PjepdNvRp2tFJYntK2Fgy+5TPZk8gaWVWwctFWcsZMj/2AhbZFMpvvf9LvcAqbpusxvBAnIWYvYW01VVAeEdFvkHFMWgqhmoZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7UNgD9YlinKKOxF349nRlUSRp033nO2yOh0xfErIUQ0=;
 b=apguscLWB+PiwGBtEIY1KF98Eiw8TQvPhf74lkQQJ2/IkYwcSGcVz4zY1SP1sBEZMc9ytOxPApsjzi5P5xT5P74r6XnsE2lk2LPiH9hxqnKloYskkal2Mb3H6I4Aneqo20lEexvtDlsRI6+Lf9MYCGCO4YEPcndgyQhYtNy3JLYasba9rYlLARD3J8O6VI+twQBczSr1yFG4EhZi6Qo9furXNJdg5QQOx+yWc4DTE9dkP7xLiIk7ACZ9rLdMvCLew/FcMvp1n3XalA9Hb80GCNPZjqgylvEbP2AOGyp2hHQiMm2Yp0Grtj5P2b9fEhGL5IEavCAb5c0q+qhkugqPoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UNgD9YlinKKOxF349nRlUSRp033nO2yOh0xfErIUQ0=;
 b=epty2jQf0uEne3s8+XZlU/qpM+Y2/2yOt2dZRYzylqtVcTXwBxA3zBhXPrh8Yd9zczEmr9uEyc60wJ0fMGoFXHlwio61rgdIP1VbmgBzQqwP/X80FE00Jjj5BwCTiv/7Z1rmghIcg8LH6mUflQqQiTVqeONSitqMCsUTUP5bSLyt3pP6VHE0qaiDRpzoUcpZYs6HRM/uSY/iTYbMrtwrJCftT1AGfnXyAgYxHPTrNTCxbEylT/Ar3ZoWBtVcmSgpomHJNy+gYGUSSnq7FD+6sHMdC3MtxtiSM+p34wHUzUv5E2R4XjAhmrkOmNZfi/le88uNWzUflABz5M14xQmrlw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by BN8PR03MB4929.namprd03.prod.outlook.com (2603:10b6:408:79::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:42:08 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:42:07 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: intel: Add Agilex eMMC support
Date: Sun, 25 Jan 2026 22:42:04 -0800
Message-ID: <e32ebfbe10fccbf1b4ba16347cc9d1863e41588f.1769409037.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769409037.git.tzeyee.ng@altera.com>
References: <cover.1769409037.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR16CA0033.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::46) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|BN8PR03MB4929:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c8d61ce-0273-4d5e-def6-08de5ca60554
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?0MU2Uch0wHwZlACds9ppHSnAP/GOUu4H26wqa8UsEu9jhbh0kfzrv5mEXtfx?=
 =?us-ascii?Q?RLjSEhgadwb6xFBT/iFjB/xswbnQgwMyBF/BuY/nTlozGLmtTTpVPGSmpH9I?=
 =?us-ascii?Q?QkFwbvN50wKvBHKP6AmLmqox+edb8+yZXgCc83bz+8ITLPLDYAbhI3CEIUin?=
 =?us-ascii?Q?E5eSwjIferVIAQucEgnTc30KFTnXkBJbAYf2ljIT1ZBdcLA8aOKSlFZhE2pJ?=
 =?us-ascii?Q?y+onLdbrNsJ3VvwfbnQyqGF8YnhiBApipxSXbOY4bVoUbp8HUO2Qdl1ZzxFg?=
 =?us-ascii?Q?05sNWR3LzLAZjHe78JRICrSoZoQahfQXznKJ2jOvxnCLYPzTGCMG+1Vdcj3x?=
 =?us-ascii?Q?RGcDN/+lTbphKWbXUGViOFDXWI8YgYj60KanIelsCTKbU7AcXuQnIHLxyH0v?=
 =?us-ascii?Q?5is8b2Vg35zra5nYR86GQwrhY5YeFwKzcLSTk/1IpT04v1lRkQeKzza9OkEl?=
 =?us-ascii?Q?L3i+XF2d9iav2ohcozIBeyj6bS043dLZXyf75AtG5zTDRnt3xrAK/7gEpp4n?=
 =?us-ascii?Q?qYzlfy7CxK7poWfpJPnewAg3xb+x3Y8mDySnu3Yjp5ic/rKtK3rTpXZpp0yH?=
 =?us-ascii?Q?gSGCcou6Jtz1kiaiuZafAkU+kEKBW96bVrplyWXhZUKKDuu8y6gxjUt6yyCC?=
 =?us-ascii?Q?0WxptVSVqarx11lfXuZFpOscDE7gL5yr9AY+Ng/CpEtjNqar2MclHByRf9R6?=
 =?us-ascii?Q?qCPEz2vAssWSp8pFrml8xXytPlbggW5Wz4D5zy1gdvYVenScNTUHMsToOhtQ?=
 =?us-ascii?Q?JmAolhIhspN8U/LO1MpZWRJt2EAZyOQ/9CkWc7/rWONMa6MO1ZiGL0520SOs?=
 =?us-ascii?Q?p0URSVgUsXVfuukEAVzdITD/CInUD6JCb9rnLT+3pbdEUEBKrlcbvEa9Jkjh?=
 =?us-ascii?Q?7PULaHVH/u14WtIavGpauIOqdlIiXF4V2jkL8xCzPVio5FDmpJY50w0vJuFH?=
 =?us-ascii?Q?op71daqSQ5uq3TIYqTSCZVbd/i3ywzNB8bY+ggiyFnvxtI054sBd3uTVge99?=
 =?us-ascii?Q?orrW30BMLLh2Xp0mKaBMOyc/+SmIq1tM5ipBVI5dm47srakkRcwDZqvvdfT1?=
 =?us-ascii?Q?kJ1epF9ngVn3eM0zNBooFko0EIGonWsRUuR6hnngKEvL+dBQ00j6ZHN7QzAi?=
 =?us-ascii?Q?hYKGyQC8yy+i2zvEFF8y8EWBG7b1jU3IwMYhts7/yLLXG2husYy7OaejMCiP?=
 =?us-ascii?Q?Yr0i+yMfntQ47AoN3gK4YEfjYzVa7Jc70DTx3NE2mxz5diDGp+peGR2cxQSr?=
 =?us-ascii?Q?pwUrOTAStoDtkFow7ds5WIdLBUqYpidQ7s+dza31rGfA99sn6hBX5xmCqn1u?=
 =?us-ascii?Q?Aq9qb4tv/3cVZZD3OyZDqJwPKUNrIshaX7BA6V+cXZCUmDNHYTWe4JY1tPJb?=
 =?us-ascii?Q?gBJotb37mlZxEVvzljkq1cHQUajfXChBGnZI1KzmZD48FkmVJzBZoU4ICDxC?=
 =?us-ascii?Q?yes3osqA7iCPZmu8vq6G9IpVFMGc2VzE9PWP4JK/rIcJwErKTupICFoZWSkP?=
 =?us-ascii?Q?pKsXyIaRkSg0QA6fmmyWN4t2PQgbT6+Z4pVlKxioK2pdK6Q3qb+nZgJlLzut?=
 =?us-ascii?Q?6sYwcGgzIFF3RmIWFfc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?CLbHmhC9jIkjhTOBP/bX0hE97D/8IoKIlkuqaMadivynn2I9zu/rFPPYR+rf?=
 =?us-ascii?Q?wCX3yCLkHfyYHbrHpG696sV0SUt+Gz1i+i03S+4IFPK5J3YpsiuovPhwaBKu?=
 =?us-ascii?Q?f86tT8YTrZOKACRDsB00I6JhG9cBNygFZXzTRlW2MtoXtIxEGQiPEsbXoxHz?=
 =?us-ascii?Q?4jNN12LHImOXvZ7oHibOXqaQTDeHq/lDwKrkv03S7Ay1r7gtxmVEzDBe0bZ9?=
 =?us-ascii?Q?2w6Mv4AWX7kWmF37nqwoWQJzQOK31tvYVt6rPuvbxnZ86GHNZ5e8Yienu3GE?=
 =?us-ascii?Q?/Tz76uZUYkq8wk/JLnv1uY+H5ryGLYVkdA68lGmB9IFgkmr7Nfg9Mjgfiyrv?=
 =?us-ascii?Q?/dLAQQ9MvIHnd3U/3CLYskRGU0YoKoIFlGviGNwFisf9GHGOxFeWtL1jtir8?=
 =?us-ascii?Q?HK3XfNULvUr4Ea+9YjAqjaei4e97U3ZCy/34WagbNWa8KYT6p+05AhGLmjpr?=
 =?us-ascii?Q?nehonu0d1K/Sa4AvjRWG4tF+DFAXTCWdFmabJ9EYkJ8A46ur7B3vqXY1QdYY?=
 =?us-ascii?Q?1l3ktI40traaF9vjx0QRIRMtslGIO7A0r9C0bHe18nCs42L8qcSwoUlz6dDl?=
 =?us-ascii?Q?HY4zUuUXUn8RQEf/GrGvk2n/Qx/l5c/dnVVcmwZPWq1xmUhB3n6+mLHQI6Aw?=
 =?us-ascii?Q?CrJhe2O8inIGz1nr+W10M0huXfQ5yNLL8n0AEW8PN0umlLXhEtpMjKBIJH2C?=
 =?us-ascii?Q?4mT7J7ZxJkV2EFRr1ngwdRT4/5rKFbjqQ3rsX9pkDsKlaGQCY9ta/WxSGcI3?=
 =?us-ascii?Q?gP7cjKupWw2T2is6r09S/vIUKZ7ZHXc3bEetJWgvsYJNwxI9pY0MHFeJoT+E?=
 =?us-ascii?Q?V49qUvuIdKo8+of76u3GUWClyjryVjIaP90gptRdYopSwihJyR4Klkkpv3/V?=
 =?us-ascii?Q?U8zGZ/wzn6JnloopMl1YmDBbjbx/LQLe4MfIkCfrpoyltZ5go++KFQOxFima?=
 =?us-ascii?Q?FbyzIUak9pLcK6xUqgSszmF/zP8um9T1BLd0qgE8t1tr4MAfrrSQK61KFZk6?=
 =?us-ascii?Q?ACZBsI2JSHbbb5+CYnudqr9aOOWvxigbM5xwIGvxiCv8wyZOLPKkPZVdUvj7?=
 =?us-ascii?Q?MH7SxNZW5eQMdMHvC2xsgS7ttMr65cCfCSTkYr9zzqMdPl3AfHUT9cqq3Fa1?=
 =?us-ascii?Q?Txkq6fgoGEUPIdif/LR9qgo7SJH74iNzKp4xNVRgBDMGZK9kV32C411nBeaB?=
 =?us-ascii?Q?ksBaSuq7JO3CPdr+I2HnGHKgtCiArMrYFDoaTMLYZxmR1L+78w/orItIAP9C?=
 =?us-ascii?Q?N+U5Sa9dCDohyhuXcauEEZ35RsWDnhiUrrg58vKoodnB9g7MFRz4uHokjVim?=
 =?us-ascii?Q?7mo6budkOgoQpoqfqb3hDsV56uR5a0FououHySLjO3ACWVImfZ4eYRVX3Fa7?=
 =?us-ascii?Q?BZBOj6sazpfSazj1sQyUi6jD9PQgvtLpN89NW4JBDDM2CvMZuJbCwEsWhF6E?=
 =?us-ascii?Q?kvZ/1u8BMy59lXBcYPSTbl1fFS3t0IEmzbAOgWf1lxs1YjKrTm2s2S9h7VcO?=
 =?us-ascii?Q?Vz3sYz2HEnG6h9OQgKWhTmTHCn/agfI+0H+g2av3hk7CmOhfIgA43GKyvUN+?=
 =?us-ascii?Q?U52HQMkL3f3bkBDe5BCYKzTcur41n9bh154cIuljKefepPuLqZL6HzM3rWJb?=
 =?us-ascii?Q?5cB+RiJFV5+QwXjfk9cAewaG/pUPyhP4nDp0o6ffQ7pV4euFtrfLhGA/u3Sc?=
 =?us-ascii?Q?ALvJ9rxG6U/HCxN3dsDOynLLlz1v0ayzjna2A6l89rv4o9ox/2W2t+K5/gGs?=
 =?us-ascii?Q?MbMNSv4ixQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c8d61ce-0273-4d5e-def6-08de5ca60554
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:42:07.7867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9+rpsISZb2BN4p3PrKmzRdfnp1X0Hh6XHdjmpx4Roq7PvoxuZEBAneMPszhnEtWThcQxaNgRWIKhk5lA2ac/+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4929
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_MULTI_FAIL(0.00)[altera.com:server fail,sin.lore.kernel.org:server fail,qualcomm.com:server fail];
	TAGGED_FROM(0.00)[bounces-259356-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,altera.com:email,altera.com:dkim,altera.com:mid]
X-Rspamd-Queue-Id: DEF6D849AC
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

Agilex devkit support a separate eMMC daughter card. Document Agilex
eMMC daughter board compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v2:
- Add new compatible string for the eMMC daughter card in the binding file
---
 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index c918837bd41c..5fe0938662b0 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -20,6 +20,7 @@ properties:
               - intel,n5x-socdk
               - intel,socfpga-agilex-n6000
               - intel,socfpga-agilex-socdk
+              - intel,socfpga-agilex-socdk-emmc
           - const: intel,socfpga-agilex
       - description: Agilex3 boards
         items:
-- 
2.25.1


