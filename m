Return-Path: <devicetree+bounces-258666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FPtHhzYcmmqqAAAu9opvQ
	(envelope-from <devicetree+bounces-258666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:08:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F19666F74B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D31C301A17B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6454A354AF6;
	Fri, 23 Jan 2026 02:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="AtlJaTxD"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011064.outbound.protection.outlook.com [40.93.194.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E151837F8CF;
	Fri, 23 Jan 2026 02:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769134079; cv=fail; b=IRuGEFZD/3o0aLKVTYKB6gS/pdhnQ3G3CZp1vMW2iOoAkC0gIvfx9lN35QFSFrE0vJoooluFrdWiWmGbnEosB8HoBAFgU1abOFKQrEMKCv7DTGAoHchos/SBzfXkJU5gwKQ8CY6VRmyVWXv6oeNxSgfIOkIK30PL+SHgro9gK9Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769134079; c=relaxed/simple;
	bh=l7BJbM4x+HqaFw8ikNBk9V5yXubPMDY2N3vV5xIzhjQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KMmbI8tlvaHNL4CauD5SomOxl0PsONGG+PVFXPs1MN/jND3KAEtEerCVPOoX3+rWrsLNDRiHCqtR/EEcIQIFUZDH0cCzlqdhQja0wr54X87DDV31N++WdOBDkrFRCMNYOqkPjMziEGA3RGE86BInqJItlCF4+c5EMKKh12OjJeQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=AtlJaTxD; arc=fail smtp.client-ip=40.93.194.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GCCStg6WdgpNRffj6XPIH1DgeC8OsdDNmiry4ZdF7w4eDpH1vt+AXFd8+wxp7SGbKivDtvyI7bnJJl5G6S3/LaPrkrafMiqOLQ961xBnndqwANxgrY5jINLkXXHGKml0m3GBCV+NrtkBFYw8Betw3htjstnf8sxQ6pIv+NMkvhNlXnw7X7ut4KvBUwXY2nSb+58GXHaBDEGXROxvVd90t4+5k3ZFkLXWG6lo2U4nPJTBDT0iaSUjqq/m0m95oZg/b6vMuOI3voOSh1TQR3Tad46oYzAg6mj8NahZwCTq/EfjqSbm2y0GQs3fXWS31UtjFXltfC6OGfh+zWuXc9z8ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=oOOJigUEufWUdZl258uF0idZTeYPjGcES3LFcPBpgAAtDqx2vbHjFtRxJKoSDAqxMh1cXwk83Gi2Pi5kK9cJ07GCjMjyUsKBkknBzbEQfF/NI3+Wd3K9N08aQlOpCbg3p422x/3oSFTJI6cn+KM5xywJvl/U2yPzsIaYSPUpltZon21iLd/ow15RFiYkAJBA8Z7DNvhJ9iT3J+OKbyLIliZ8da2UPgPYumJ/qi+69EOEPba+wK0QsFrIMtjRyhayWhpWNt/ZQnHIGCUOMubXdYFT7sQGTVaYWjlzyCptXGxpiOiJJrrYvpVv6Qyp/LQO6EDBFZS1g5fwQoHjKgC/Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=AtlJaTxDrs/sEkGpruMo6ysjhrFs+zoseIT+fiJRFc3Dt9dE6ZylpOwzIGZYdbapRbMHPSCCOflF4D7vAJ4PP4hMDjyBNBKyx/aSWFaiEr99bYjoEHcy5WI9h4oFXdooxr+8x2kq5FPpTvKt/9emXNKDglLaP8OO0n4pnmjNwo8POMLrph5Z7MyjccVS/aKr+qrXwVcb948UFwu3N23Q5atgRBjBLtddSagAsE5jbusVsF93uyK0sK18P2UZGMOpP8DlMxJ5FtI7IzdcR+rtO5WJHLEEqCfx7lBTPssckMv4eR8oxNqPajlirvXMK2Yk9KvDTLH6hXlptr6EyfX+PA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by PH7PR03MB7415.namprd03.prod.outlook.com (2603:10b6:510:2e7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 23 Jan
 2026 02:06:57 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 02:06:57 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Thu, 22 Jan 2026 18:06:54 -0800
Message-ID: <8c179e157929d66bf1041b6a04ced8112207ac1b.1769133034.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769133034.git.tzeyee.ng@altera.com>
References: <cover.1769133034.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::19) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|PH7PR03MB7415:EE_
X-MS-Office365-Filtering-Correlation-Id: febcfbe9-8982-41ee-928b-08de5a24167c
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Ai6Fjwco5NV55F6RUmYD3ZWvZtvEnE0nT8eH5Fx50cfvGj9ZyXgEGdiLAjoS?=
 =?us-ascii?Q?A8P56uJUKy5C98cDN05UeKkD9nyZDyAHyW8CiXj6TuJ6TyZzB7DLMBioDfMv?=
 =?us-ascii?Q?PtVUH0hWn3FlnubOqgwuyOIB87U6TfaKLCFTYUP7AXmNHuk62CQ2mOEhNrJG?=
 =?us-ascii?Q?HA2cXIvZQKK1NWOZVTuU4nPXZOZlPiRc5KNJz6UuZ+nzFnZ5ARWJb3w3UXsH?=
 =?us-ascii?Q?nLOdDoa8M2Nh3EjQFIZLu8jDXa8ysDXGZUyN7x8c6/9X3lhujLsjIRLcYirD?=
 =?us-ascii?Q?pmwSC1Vd6boGK8KhaIPHjpf44xQxxOYPWpY+ggKrtK4qa1QIpyAcXvsHML4R?=
 =?us-ascii?Q?3DCViBFBEsz0XET/aky4bqQXbT03EShM9YbfrJKzASID0oLunaz+OtFXG+fZ?=
 =?us-ascii?Q?xZJRLHjTMQ7bAiVQ1HO1zrR8te5PVQXYxgDKNfIpiCeJHOXXtd7OZrgBUx/v?=
 =?us-ascii?Q?XY8zxaC4y5a4ksTSScU+bdFMz8VeFoJ732VASvZy5JZEOoYvse64oo4cA7UH?=
 =?us-ascii?Q?jdZ48ufl4QObYhlr9/WnFmVG0Oa6LwijM07iqaIcYWL034wCBLcBDb5Zsa7A?=
 =?us-ascii?Q?M+Iu0+AjnGy9CiN4ZOw9TNCn17xjRmy27eitFyFPQdOg7MZ9tsgmvahi++4t?=
 =?us-ascii?Q?paDbodwMphVO/F4t7HVh1dMm2eBEntNDk1Sl1SdjNM43LZB838xxizr5IUo6?=
 =?us-ascii?Q?BvEzYOChVRjW5uMREitztfZEE4Ofan+8P8UAY+YYi57BuIhVrnp4Pzwox5zU?=
 =?us-ascii?Q?iJ1tSt/9yaidJgsl8C4RrPnr6UVNAfLwf7gY5zEEi9CdPs1ayOcUTVj3vAb8?=
 =?us-ascii?Q?Vl8R902xKGtKA7YAeBExj9pLgdnemxaqyrCrzrJsicmr5ALB6hkV0rl7ng0S?=
 =?us-ascii?Q?Fp+w02lYXu8bPyRsHWnfQBcocN5KIjARbep0Q6WqMCIhiVAdrWKOR02GlfLN?=
 =?us-ascii?Q?MlpEtuJu8DhLp2O6NWjIsDIBFgiivLRKsf4Wm0+ldF2Rn7I8AgYOTJ/isXQ2?=
 =?us-ascii?Q?YQe3gvcGNYSw4Y7JGlhTqjFcqIfcLyTwiBnjjWHi4s8Ve/cpOk1dBhCghjIU?=
 =?us-ascii?Q?7sUHnRqDnDW3lS2IzE0VH16KA9RhZCpPPVmC9uSl5Stg9WwiVfWoictEgzfj?=
 =?us-ascii?Q?8u44z/O6L8doWTRmCwTdbrUNKhj5oxrE09jrI1CZNHVvVIBHRGtw4736AKCT?=
 =?us-ascii?Q?XlajUtCnaSW4WuIJBFqsWq1y9MV4AGhFnH6dqve5DN7enw2QLQ//t8T9Vgk0?=
 =?us-ascii?Q?sivpwvv6too6wFCBfedAsfHdrmd7VZbBMSS/wABLeEO0Ds40sy5P7Tmn0ZLQ?=
 =?us-ascii?Q?shINvdVfUrYN4nOHeUkotMrZixRRe8bWpNkk6dmGpY95+1MirY8tzf1Sp0dh?=
 =?us-ascii?Q?HxdEPYVo8CNIT7yYG2vNrF4DxOAYleRhPbPbni8NMuRIkDCqM57ZrjTL/fHn?=
 =?us-ascii?Q?EVzUW12320u6cvyDJdTkbS8z1yU+wkIdnWHEK5X5srLDgVWGHXWASYReYWGQ?=
 =?us-ascii?Q?Sn3D+vx8NJA/NRE6f0BixFiqmYgzcZITwCi+YsSEN7yLOW9ewje1Fa9LbNuz?=
 =?us-ascii?Q?XXOoSyAExiSTtCVqnhA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?jQ2v9PPLS3PGlsbbtSsSILmuQxCk30HgqBpSV4njYdew3N5H46EToTRgaTe0?=
 =?us-ascii?Q?iDaErujuzvoXWKkYP505TG0nJcZnedqbtpzaar3AoRoUR2kAuQnE3/8MVbwG?=
 =?us-ascii?Q?gU+ILrtrjllte6CruhQw6GN+RS8YyucPDEwh7vZk4qtJJp96QvCGZ6IfLRkB?=
 =?us-ascii?Q?D3AB+e4mWfucuy0Ci09j7LNdk5sPxK71Yvh1vJITY2V4yKlhTFQELFRKA3bc?=
 =?us-ascii?Q?rLLuBv7jgden5gRu9dD3QvBSzxehDXu/bcND3Tv11UpzYI4G/mraVa5NT+nr?=
 =?us-ascii?Q?gmTy1yMKmyuaW0Tyu1nDAsLmH+fT6qioaajKMLr7wKKL3bOgRmRtJtBW5ofU?=
 =?us-ascii?Q?fy6J9Qw7DZaI028k08ZL2yuDMzOQH3P+Vk58LzVvrPTAEY3XAVpB8JywsR1W?=
 =?us-ascii?Q?1JhMSUqTWYVSzUyuuX3BaT6nZW/MxviRiHPMJUcIXJTnbhLd71IduiGBZ+tP?=
 =?us-ascii?Q?7tug/I3XEwdl6WXhN9cR9vFzUSsOrUhuyG7CJ5uWRbIzjRBweyqc3abkyWpX?=
 =?us-ascii?Q?zeE8Z5aJG3kvInsw+G4yhKn7MD3Op06RusQ8prPhJ5JH0cdFvu0Z/Q/jirOL?=
 =?us-ascii?Q?9TWPaLbkZV7OJreLSjc+FjM59sZyyVJ2hNfR1RnjedXoYNChGnwIvHbeLsOL?=
 =?us-ascii?Q?d/oMk72BMiKFsfaUsHQ0J44wA5KE0zdZHl+Wt7wU7CugS/UdIbLAQz61Iu9A?=
 =?us-ascii?Q?wL6cuA7UxXqeqk1DC/duB3CBfakVPxTDgkwgx+s3wz6m0i8Z3dCo1nVtqdMr?=
 =?us-ascii?Q?I4E9IhOUBRk7TqRzzv8w5sxmqf3fzf0V/HvWXo7jMA6tgJ6amtm66iQ6IdJc?=
 =?us-ascii?Q?D2Tv39bt1j1H+UWevJuC14+StlccLunGAqTcyvfE9WhMxhsD0m2fwCAQHAkH?=
 =?us-ascii?Q?N2EPfhUtJ+fI2l5A/yx7RBe85hR5y/Rn9K+VfDOyWm6dt4P01XoRDljAbcQJ?=
 =?us-ascii?Q?kUQ1nLi18BLp5S76LKeErNhDBuPxTrQEuIa2CRtSqvK4sqVJC+L59xHk1C5e?=
 =?us-ascii?Q?kA5l0b/ne5Q3Z4+RG/JL+JgxcttEMX33LLWoeZxzKTn4yfl6Q7g9dunGB7xn?=
 =?us-ascii?Q?oSLfoT+w8Ofho7R7s46TArAZtTPkmiqYu47ZnQbiteTelMp2f+lcocGMmKLW?=
 =?us-ascii?Q?PDZoLI0srx+OZG9yvVJvaeG6Haq/zPEdFWpHfTcbm7iKX1yGIdj9E/uz6BoT?=
 =?us-ascii?Q?NnOjRY2z7+W7BsR4KMM3kxKwBsa7CHfWKTVnR43AD9U6VpKKQu2PZEX2ZeDc?=
 =?us-ascii?Q?B46ptIXgn9kgCMxYh0y2+/MXaBJTtTEQQqZjSO7Aj+GArY2aGX90i7Otf8Cn?=
 =?us-ascii?Q?5T3vtaCgwfkGBoNM+CPfCHP/Vfxupd8k6Q4Wozbp2vCCZJ5fcpgiuxbre8VK?=
 =?us-ascii?Q?j0LO/0eJuKBy3t1fdWgXnmyPaHlz4YP+VMSdyiIbVfPAO2mxCPxVU5Zohzbd?=
 =?us-ascii?Q?aTevDtUpkalVnkgF7BtQbYneseHSrsJT94h8BBsnCjPxA9n96K9/6PAfWqHZ?=
 =?us-ascii?Q?m0wpGPfVRSKS8o/NRwnl8ZCVxv3yEzJWlRapE9I0u9RwKaM9LH+AK+xbkKLB?=
 =?us-ascii?Q?npRpYcev0nrje6Ggi9KuT1BPAsSuP8jO81ehOvUI0k4BFMEQ3N9Z32bqoi2m?=
 =?us-ascii?Q?AT/geLypTec9EcJ31rNwMU3i1UtJWOl1fkf6KJ/Dl3+/U+2af8A8NOB80Vdf?=
 =?us-ascii?Q?DEgHMcvM8X5P5cj/67Yx4QGWrwDPAvNTaziVV1cGNeeeVq323+KAcOTr1Zfz?=
 =?us-ascii?Q?AYzkZ7X8Aw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: febcfbe9-8982-41ee-928b-08de5a24167c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 02:06:57.7544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ls2Q0KYcINMpd1Di/69u5+K0/ey6z/dFm27G8WzAfMBqVJhpiEOtIsgRZPU9xXMFuM63yH6txva1W0v3qa5oIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7415
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258666-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[altera.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.196.180.0:email,0.0.0.68:email,0.0.0.51:email,0.0.0.14:email,0.0.0.4:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,altera.com:dkim,altera.com:mid,4c:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: F19666F74B
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


