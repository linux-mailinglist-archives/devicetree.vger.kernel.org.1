Return-Path: <devicetree+bounces-259357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HpMDfIMd2mHbQEAu9opvQ
	(envelope-from <devicetree+bounces-259357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8660B849C9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53C583009529
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F25283FD4;
	Mon, 26 Jan 2026 06:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="dBaO74V+"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010060.outbound.protection.outlook.com [52.101.56.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48667281532;
	Mon, 26 Jan 2026 06:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409738; cv=fail; b=BsqX8Hzp102X8h7r8/TldNXAnUoUZaOljg1+S6royACiQvEAoS3fj0QPTgthIBa7c+nKtAMIExYB9NWsGlQxPNeRZf+zeDF00kokAdwg9N3zlv7Gha377vGBhoP1uE3UkAE9iii3J2+7fYWflCylxf/kXWNyE40nvUNILqoN2jg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409738; c=relaxed/simple;
	bh=r2DByC7iLv6r/5JvSNyE2M5RiHiW1chnXsjw7INzxYY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jXBGyDEmUE1KTkOPugFoU4jNakCzJh2DWwnw9DAyPMi22smqSLRPY4ngdilFeA6aYDsKdNzmukWHOYkK0gcwPCrWD/boTqmsgQsvdnyIS3pmFzbT/N0rgU6EgG6QpmxhTqshk+evlk2NQb8FLAJSAOfeIPAns01YkapfQbRI2+c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=dBaO74V+; arc=fail smtp.client-ip=52.101.56.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OklvUE3Uu7b9gTnKrE1E0nbaDlZajb5nPNGcWIWB6bszZ/MSUPwKM2PuMJqSMO2PVvVIP4SlPdFUGv8ZzEj9APYpLv88dKA12L5JXO9jZrKVTuJ9e4T+8e2uSp8gX2EQPIGpZoPOz93fyY+/f2VDmChlYXPr/KMF0wlU6qbMdDAqJ6YzHFPFzWa1E26vA/Ntci1tRO22sY1iU5YvEtOzTpl9HX/RVVBCu8rlFONhrqkgbdFsJwp0RDbj8DCp8tTmIKUx80vMkPJBJ29w7m//kRAGp/MrHPL52yWOOQMxFk0S1LDy9+8trqN8B0sWVsDYXVJ7zeEAOKy7E3rk6fms0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kxdkh+9vByaLNSbTi5Fc/ce1x8K1EI7B88+HJRv//so=;
 b=yNLgzWmbCozzxTUPjnxbqpuVnj/1O+GBU8/qOPu41khYQ1zyAUhABNPVc9CM7m5FT5HoubmDeGi7NswVs6Ma5Dh4SgHLNUISSERuEHb8+zkqXj26/iTDILpw1KPYVDtkvlDuNJ5kAvSJtA6mFXih4PN7+rqAgYbm10t8PALRYyXFQA/cHXq2u0tKyh72kv2JFFOcabE5VFkcY/AJNw4mlsYWagemfNhUm4MUTt5RBEQPsNmH5A8ahUzGiPYBA/nZX2cAJo7J5nqHrWj19eCxYk3yqTJhWweEPRT/d6Q+mMB/tc9dkEgUJgIi/t1VUD10eIZUfM6ptxXSs7a9UtIgUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kxdkh+9vByaLNSbTi5Fc/ce1x8K1EI7B88+HJRv//so=;
 b=dBaO74V+EmjenJk0kwiSIMuu0AP30ARx8zEnNXcW2Ed1yFWace3KzF18nMRluIuxQKcWGbWWfedOrUPZoU03z6wAGSm5O73sjq6tttrHnqePjiBo8DlRmn+eSbadoReWKuC5LvvCcTpm5SgiXSyo5JgsdM4IRXfZvPh36ys4TZRcCPQX48H0jte/JTXvAcqGLfowhUTs2xdacAeUs6I8tx0KiE4CHyXLvD1/+nrHuP0G5jiyKb5fOkbOrYRVs7Zel+7FmDoRXGOlx2J7R+t9oJdWOMxtB18VPuUMy8Y9YNBs63tcILThu40d5sxwY5Xpld1Q9/rAJu5N23bW5kZ1JA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by BN8PR03MB4929.namprd03.prod.outlook.com (2603:10b6:408:79::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:42:10 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:42:10 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: socfpga: agilex: add emmc support
Date: Sun, 25 Jan 2026 22:42:05 -0800
Message-ID: <b447ee8b1599df96682c9121554174fb7ee41213.1769409037.git.tzeyee.ng@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: cf504954-e5f6-441d-2a67-08de5ca60830
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?LRCw40pLnm5o+0hVHpJYsStb0G0kYRqSmygG2Y4lTkTMq2yWo/oNabYxXNvX?=
 =?us-ascii?Q?O1R584gd00yKVdDqxu3ymPKDXUgVce2gvCTv/6QchEh/W9W9LhKr9BZ45+nH?=
 =?us-ascii?Q?mofce9MhVJZAgwsymuvr5TE05jQ2AzpaB5PV3mWs7yATi5l16LvvIHCESTrt?=
 =?us-ascii?Q?ZJMEGK04bgv5V69tWSnz3dfXbQammUNsmwFcYh5ZPqHH0HLvGZ3nVr2pr1sM?=
 =?us-ascii?Q?tBwMFLSwyGbGjmeE7Vj3qkPbRUB4WGwqhdDd5zFOTt6xVu/uUQUHj0KlG8US?=
 =?us-ascii?Q?LIkuqeF0x/o3AJieZNeU2vb9kIl5tis0fgKJn9gk6K/bh3lzFR5j8uWQ8D9X?=
 =?us-ascii?Q?oDg2wt3sXfcZU8cZv4ENkMdi5CCvKGGeIqM+9nsoqCOve6E1wXtoCdSNB3A4?=
 =?us-ascii?Q?5dlrGZ/CH7bLLRH8XQkbMH0orScrLODDkZvUteUTy+h+eVURN8t/KU18+PEk?=
 =?us-ascii?Q?DOUz/Ddkl1ALPWqONsa9qsb56lGJN4zIhc1nMZ/xfamVrRh8IMYb04urrf/m?=
 =?us-ascii?Q?hGtkugjaBT8HSDVEb1nej7lC+yNA+Np/+1ARWEtj+vP7ketf1XaJzxLQzFb5?=
 =?us-ascii?Q?n+Im9vmicJhwkxkJ9djpSqnDcxxEzYAPBy4p3Eot3Vu0feWtzGBP1GPnoPzn?=
 =?us-ascii?Q?1mNiQ5Z0uJEDTIZ8RrsvbZ/7ckgvA1+i4RBEL0sBwHA55dEzqkaLOGl2/dhL?=
 =?us-ascii?Q?yS2h3SQDkXKAmWOYKftSKkcwpG0aVlLquzAO+STZxbrrpbJd3sdaB4oNCzHb?=
 =?us-ascii?Q?rRChHv0E/Vs/9/ubn7GjSq3xkW63dtrBUmLBQVDlwsqKgyWEH5zlFzeidYft?=
 =?us-ascii?Q?zds2k3scwnUkFTUfdfg+CRAqOViGhpr54MXBhLFst+Nmf62qUeKnaGFVt6Gu?=
 =?us-ascii?Q?/GPrZ/3OTr3k7NeNIKLPJf/eTfJs9+6To+fglictsHX5RGnE4495f/UopBHV?=
 =?us-ascii?Q?tw71gp/nPlLvgkEKucxvhaf2I//ank5GXVuJ/JYUVv208MsuxCw6MRRZGbRQ?=
 =?us-ascii?Q?Vz82SVBMh4MrZGcQ5jEHKCtuX+AX8649dEYKYuoUgRHu4bHciMr0mjmNWvYg?=
 =?us-ascii?Q?pPl9nkNHN6QwviINRM1YVmySiLZbN9Pny1YH+Tycockgek65cDfSSdwEM4kZ?=
 =?us-ascii?Q?5FmuWSvjojl2g58xFXGO3tqzK21x0M96O3CBnwL1lwbxMGLzLU95qcNcFVnp?=
 =?us-ascii?Q?TEOoV2sW421kZS5JvPrurG+nTuZm17bDVKn71YFy8c0w5RC2NsIOUdvL2WDW?=
 =?us-ascii?Q?DQGOUYrU7iIA+X6na1rAOUzAhiosJh4WBeavV+21DeMf+YftSfUgkrNI8HC8?=
 =?us-ascii?Q?sakFCH38X6twE22+S8BTtMRBvK+b4npAgvWnTqkzKpYvayJPddCS5ZNeqUC5?=
 =?us-ascii?Q?8KrH6gAyvpPo4uyyYx7ZWNf1/t9rtWhwkkcpvSa3CXRuUND/pbMKmg/nPJXq?=
 =?us-ascii?Q?PZhjw0QzaS+SnL7S7oOhCT0LMl7e6X97eKnStk8C1AytYiDDIV0rrqq74cDJ?=
 =?us-ascii?Q?8Q1wqXJButASh72eWOy5ybtkxyi+p5aCcx00JQIu2++ndIf9r1AT13oIbubd?=
 =?us-ascii?Q?vTpkSy5gT335rNF/Mss=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yBLzaf69gcyc2L5mHXcYA+A0xVfvtWjPU21TVtlGduYtdr1CXhhb7lsvKAMq?=
 =?us-ascii?Q?86z1KJG1c1BXb9C1wBfACefY7T4kCywg2hjlzHveSpxQlMBxtqS4r22Y7+bG?=
 =?us-ascii?Q?G4PtKTXW1hWGG1L8zIaKllwXz9zq0ltHKwOz8bR6KtqlQAXaUQIQVgWUnISy?=
 =?us-ascii?Q?2rTcoU6BEJdtbW5Hln0K61HNyYGDyWe9qtfm1lItTUHTJz3aoqz6zwWozB6Q?=
 =?us-ascii?Q?lKy93PNcXfj8bSzDzAq2r3lBuc/IvUikyIkGcfAXGuSZhGAkQTggFNkxFMoU?=
 =?us-ascii?Q?RjCfbnSjZBaAdsNPTdNCePLORCME8UYp7z/xTaTPC5lKi//DU3b4yRO9BgWf?=
 =?us-ascii?Q?2Jp9D4qWFDMRvNwi0v6AFWezI+vvpiYlEIKmPMaXLS6ReFHnbskhHiMOpokz?=
 =?us-ascii?Q?b8dVrDptsMbLRFyJ8qQAkmmRMfX27Q3EwYzf48BaUJYcnpkKDyVmphNY/ds7?=
 =?us-ascii?Q?jkVODFa4zySvg78rrL5nwss3l46HhKR53LpMk9uTN0WM/d+1kwzQpxfMetuE?=
 =?us-ascii?Q?69tRHOJISrLDOm5k3eze6cOe84yR/Q4Es8FxOYztPnUDEmwvJh33GtCmhr8L?=
 =?us-ascii?Q?ymCp1C2xrABUru3bd2+HwkomIubMaFOZzEx7CjoJoAVMRropn/m+WCaml2Zq?=
 =?us-ascii?Q?6ezsKvV5J6giMOsgSD7md9EzixrRMMmxzN9RUT9jj6MwuaRF+Xu8emCUtJAf?=
 =?us-ascii?Q?c9QUw6zi95Mn0WIiqXfjIQwc44MSr+hOyuh1Kn3azR/KeU9jUU8AHlZyfzJ/?=
 =?us-ascii?Q?vVXd4ldKGz87FjkahpacL91cPs/euS6BUBkuhEnH98XSwOi6M7rWCbIGzU93?=
 =?us-ascii?Q?c0oLtuj31mgv797Myk+S4QeuC+i7Sc2Wv1dnAiVUKCDQ6vpmE7W62OKkU7du?=
 =?us-ascii?Q?JzZ2nptcad8x7m/uJSAgpRzlE7gwbgjVPYqgQfaW+9hH/j7YkHfoDLDkFDST?=
 =?us-ascii?Q?GQDON6i4gqRwuL3OuUrs3brNQvB06xCZBDoxGd6IumoeiQQHuuVO5D2d5jqm?=
 =?us-ascii?Q?bIat/k3iJdpzz0TD7Uvp3FYPE1tChmMIRXwxgaZRHuS0c6enQuUrasXuV1Xv?=
 =?us-ascii?Q?VDhgbFWFG9nENKf1o4v3FGN2I73hqPjRqr+lfuIHMLJHIKcJrYEPvcmfFAm5?=
 =?us-ascii?Q?zi/OYybU4e2tLPftWUvLY2uH6uymheRCkHdtF4dDHGNkjRrNZV7fyGkm2hFZ?=
 =?us-ascii?Q?xwVNoKsOWBG2LOmjtcVSdeMrIDGjaAWpBSCqjvSTU0Am3ousyVNZzevGIUPs?=
 =?us-ascii?Q?kWGr8TqRjcFJ0AWrG9LDBw1r6tREZNKcmhy7yI76qA6fu/6MNPSeQpxv/8jR?=
 =?us-ascii?Q?zI2bXtEv3zkXZ8j4zyG28L3mvUkj94wxCFm0dB56vJlz5JCvLjmbLIxKIqNJ?=
 =?us-ascii?Q?gyLBtmnuvb1oLV2RdZ6cH9k2mKTaUDAdgWEjLikfrScTBs0CXraIBUdKqR9z?=
 =?us-ascii?Q?6g8QZrUIxNQJL1ALpFdz1ku2+Fcn/uenvFEHAmU7IR4Mtw2YyAf7oElzM7Pa?=
 =?us-ascii?Q?Xv5qy0N4cglVjbGoD+DqNr+qB/4JDy3XpQTYvO0PFlDgqgrMVhlbCs/+sw1t?=
 =?us-ascii?Q?I+Dk5q/oDAUvwlY8vXdtvSqTM0A9UX/kS7bDMCTcxYEBgwa7EoPwIVYh+ALR?=
 =?us-ascii?Q?XpUAUT08BhMWq8pW7nwZy13zB5/zlu2gwWq51moT/1vcDHRbfAciIb8LVfmo?=
 =?us-ascii?Q?S+VOQuZixwaY57rgBdRGJdzSUZg+z7SuSxwkxzEil1V8Pz59QKZ+mzhUIV/i?=
 =?us-ascii?Q?v3Ey9bP+Vw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf504954-e5f6-441d-2a67-08de5ca60830
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:42:10.6657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NV6e7g+hrPbAUtw2GVXT9t1mg6l6a32aqwNLcyQupz+QO7M35c85ueHqTL7akzswekz5cQexHOcwbiT4yDlj+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4929
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259357-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[altera.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,altera.com:dkim,altera.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4.196.180.0:email]
X-Rspamd-Queue-Id: 8660B849C9
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Agilex devkit supports a separate eMMC daughter card. The
eMMC daughter card replaces the SDMMC slot that is on the default
daughter card and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Change in v3:
- Update copyright from Altera to Intel
- Append "eMMC daughter board" to model string for clarity
- Fix ethernet-phy@0 to ethernet-phy@4 address in 
  socfpga_agilex_socdk_emmc.dts

Changes in v2:
- Fix space indentation in socfpga_agilex_socdk_emmc.dts
- Fix compatible string in socfpga_agilex_socdk_emmc.dts
- Rephase commit messages for clarity
---
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../dts/intel/socfpga_agilex_socdk_emmc.dts   | 105 ++++++++++++++++++
 2 files changed, 106 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index a117268267ee..6f4da79725de 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex_socdk.dtb \
+				socfpga_agilex_socdk_emmc.dtb \
 				socfpga_agilex_socdk_nand.dtb \
 				socfpga_agilex3_socdk.dtb \
 				socfpga_agilex5_socdk.dtb \
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
new file mode 100644
index 000000000000..1d3a2d7d48c0
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2026, Altera Corporation
+ */
+#include "socfpga_agilex.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex SoCDK eMMC daughter board";
+	compatible = "intel,socfpga-agilex-socdk-emmc", "intel,socfpga-agilex";
+
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
+		led0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led2 {
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
+};
+
+&gpio1 {
+	status = "okay";
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
-- 
2.25.1


