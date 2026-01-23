Return-Path: <devicetree+bounces-258665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MvUL/LXcmmqqAAAu9opvQ
	(envelope-from <devicetree+bounces-258665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:07:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B96F71E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD9063013020
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49B2937F0E9;
	Fri, 23 Jan 2026 02:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="BllhVbHh"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011064.outbound.protection.outlook.com [40.93.194.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEA7366049;
	Fri, 23 Jan 2026 02:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769134057; cv=fail; b=Y8ospSRcbmHV160xxyPN70Cr32B5T44/V8KWmJRVkhMFckfuX/YLGNx0NHM82ob3DiiSU/Z73gySCVrCWnfutEGPumEH6jbtzQRC0Kq415OKuDy4T5JEWBaUdLb/wFJWyNGm5ATat0ZNhvP4PUIkzOgUUXK6cdvbDuFeia3INWU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769134057; c=relaxed/simple;
	bh=xPE3UNNupcGfe1O2M8k6n0/1QhYSlDreU59Em1gQND8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=D8RrpllHlFBJZo4OBfA6cg8JljqB5nS5Xpyr/fB3rWKpmkmFWKhvcl2RbYFWkzYs08prF+VmAlYSTqIAH4js1UdK/SGsxpHQVH+UL4QMEPEoRKs3MMghglvjIHVra88Isx2kfg/QKyeb9dRtnSX6Y0M53K+1ZRWT/CI7YlJoiVk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=BllhVbHh; arc=fail smtp.client-ip=40.93.194.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ebIGgUAiOPd2QHhqa8FXkqJfnt5KUYuLbqh5yHR+eA55wyGIlCFU1KUZWywSRq38StSSLpZMmTGaXZ1v0TviQq0DjXcLm7Q6SZD6+T9tt56wim+q+pSY/uhIXUQbVm+qxxbR2M7MI52kI6eJ4r0T38HlowJzDAY+hdW2+8lC6lPt2zzxom8jvLqMakQmAb8acu8jt8TGH89ucXG8vbQcusK9U1QD05xvFM+Ill35p1wLxutbT93JTcN9SXDlUJuG24c2HeUjR9NFwCbwpmO6V2Xi0AAIYvfwnOCvrpaMPIJvUmeldzkvIztV4ZtC3ZZB6RSkiRrK6v2KYRee+RIY+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ll8P9V+fqCD/80oYRazMKpBIFX5x7p+wTBNp/jW7wRg=;
 b=lcZKlGLtM78+npo9Lglns4TW0zG8zjh1wlwegB7eKq4iNsW/34oCEdOKCf9+k+sdm3yVIdi4JJ0EBlo45JvfsYY5PvW0qNzYdTCnOEy096YeCxls0eQuldPQYDjg+o+z8qunRV6QTMJW8pCZOjEVq667qVatcfC0n1eLvObokbkrobZkv/D+3jDe9AoUI0dJ2HjJfVRxWVgdoIO0+AsNd0AB3mJhjUmOTD+8JEpii+ae4884fFZtk2+/x7bzlzukFq3IXsmkFe/2YXMWzFbsdUaZt0Ja1xg9bpDGtk2uhr9y6/OWKZTDrPEbcuJxugZGcg7FT7eYcPp6QWEWlQi+aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll8P9V+fqCD/80oYRazMKpBIFX5x7p+wTBNp/jW7wRg=;
 b=BllhVbHhw39ckYFxrbWPCV+Avyrfd4K8z9uvFmUN6evY0NyC0RM63qCuP/Holsd5gBci9g55/gripnIsVznorW0GM1KpXiVmMulEZ4FYYKyl01DZ+OjMTAo+Mu/XS6SBRqEkR8f+W/TSCLx7cwUhh+1BSvt8m4BZxhDftLdsITZh/6k0LAePjhCH/ZJ0BwIq54ZgxSotmX8Ev7WwlWE9nSr0/zXpAJ2JrZIL8OdnhVX8Y6n78vfTC3IszQdxG0Fim7X+r2avPMuduRVGjyMHlTDgcob/X68a68JyrlEr3JgmD87llEhixZjsqT1FeSnw+wkNYpqF6dmpnsOxCG7lkA==
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
Subject: [PATCH v3 1/2] dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC variant
Date: Thu, 22 Jan 2026 18:06:53 -0800
Message-ID: <66f1d82240123ca71ef4850ee745747effa0042e.1769133034.git.tzeyee.ng@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: 24c4fc6a-7aae-4f98-7f2f-08de5a241603
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3+nSoqV5YN+WocH4/ga5guf6zPW3iiJoYUmLjZ8/kVw9MX1Ad+TIOeStfZqK?=
 =?us-ascii?Q?tWWstJ4gwHIsfRDn//ja4SxoPPzJDcPzZkWtcaTfPXGkOre6C1Shqoe10hOM?=
 =?us-ascii?Q?MAWT3ckQQJDel1hE3DowGzKcMe4QlV7koqe/kEdLo67fEQf9BYPTs/eOVwKe?=
 =?us-ascii?Q?dWQkOAD17m/OPSC+QOx5yHs7SSU3dE54SIReJtgrvklL5XbkrageQZdq7CIa?=
 =?us-ascii?Q?dkE51UtwiD2FU9cGK3Kt3PzRblXUEfJYgtReQGjfHQhoQCVOqrr8KGNiaqOX?=
 =?us-ascii?Q?4Hw1owIbBUx9zg2seTsjKlTijvLRdr8ZFpiwTt+zaX8vzeavJZ77arEle0Dj?=
 =?us-ascii?Q?XZ5yAnqu4wlP9vSM1veKCAIy6z16b9mbAEYkEDv3khIoumfvKCeoXilG5Z2U?=
 =?us-ascii?Q?iS8YU82Hw4Po7nZ/rBpMkRby7kFEcdDpaqNrd24kSPq/PaviE1/Q/KSkDd33?=
 =?us-ascii?Q?sZzj94ruRM7IE/1PNXGib53NgAKWQmAbX3Kv6JvvSLmy/svCPA4cCBQosQPT?=
 =?us-ascii?Q?bgRkaSR895kJaTs0ztEPevJ3liRuqBeGe6FiHsZnTP0cqPXMh/mvuLkoJjeP?=
 =?us-ascii?Q?EB1O4puvFGWZaxO6Qa0owAN++BMhhIhIHbQwJfo40Rw4cayJ381qH/JtLbQg?=
 =?us-ascii?Q?OrrIwLHNH/iV2nmNciXaXqZUBRTG4Y5thS9kt6AnwXafYCcmKoGQ87bo/Y8k?=
 =?us-ascii?Q?TgAmx+SZt4eVF2z1uRDnwAVQ3Ww33JHN0u7vCO+PKT7aszRTF7kRAxeqYARC?=
 =?us-ascii?Q?ce4b3GqUtt9gg6w/CYGZZQujggPQ2rEiSPHUN3mrK671U0hGuSFRnuJQRPnV?=
 =?us-ascii?Q?tQnkciuBQBdypIo6thSWGByMcOQPoJEMI5NB2TkzFESkG2Es988Y93dQatnn?=
 =?us-ascii?Q?zQcR4DWpjaq/G9Qbh40MTlH5bcQdXs13qOw6fO2Vrq2I7caurP2WrKz1qqE5?=
 =?us-ascii?Q?6Dz8Gzu40OGSH9f/ONlWJhqr+ow4CDEJRro/OAbjtp9PkTx01BfimQBMocWZ?=
 =?us-ascii?Q?s6hnnFPrDlFAjwt361NPFwFWe+Ai701PPz06ZJBu6fJwoVxlH3g3MFus5GRl?=
 =?us-ascii?Q?ZjJa/Ji02DjbhE5O01nAYJppDkmAnAnTz955vD9lyhQGlC7P/sczYl8twDqD?=
 =?us-ascii?Q?329pu1qE5L6FgqHOl8tdHoOiv1cho0GKeAe1Nv3v7yPzSQsIbayNIJDUP40y?=
 =?us-ascii?Q?lDPjlhKQQ0orwbRFrwnyPX6qXJwawM5PNARkY3y7rvv+51o4ar0FGkFLXLwd?=
 =?us-ascii?Q?hWam9019BSKlQzMqWK8+LxBNJqPzD7TiWCoo9yBgjXP6HcakKZ0xmCth+LKl?=
 =?us-ascii?Q?5CfgNQVd/+3LVo70dnzbKKa3RLvFF1jSrzi5AqryMdog/uegFY94+JVk1uAL?=
 =?us-ascii?Q?IWfOI+jUhhIG4S11gVm6vfIIu5+kWwYONeo1891PVZmlZFVKaEJInh3xq5Nn?=
 =?us-ascii?Q?th3WDwz5RngeH/CQ79ozLk7FfCj/liqIydOCxAM48aerAtJCoj5i6PTJNBUR?=
 =?us-ascii?Q?RSlFNKD0qCXdhr63/S6HTRN1W1mmkABu/nGe56tn4rwLBJqOJOrAIB1pT5wO?=
 =?us-ascii?Q?uAR1PnZSYh6GtsQJbOg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?zYQ6Q6/829l/tYB65mtsJTOS4r44S0ot+SDXIH5NYBo1EkmqiKrUtsFE/JTB?=
 =?us-ascii?Q?1Vd+CEvCMdva6myTgtp/lbmgrUsHW5+8vXImf8tqtW/vzQpcNev5MhBDxlDc?=
 =?us-ascii?Q?QycPjeL4sQ3giY/ZsRJM15aK3ep1JgPQEwHT6kAwYNc4rRUIu/izbcw8aL8M?=
 =?us-ascii?Q?L/Hv9WKcYMeBXQospZ9h/tkLaddD0s3rXn56WaY0I5PltwxOO66jYHjqD9GK?=
 =?us-ascii?Q?GTPEyvGyEnl/Z4sVxYEXNXA1+AGPUvRAEUxOs7nTLJ47rapOBw96P107X4xU?=
 =?us-ascii?Q?cl+yEe/ds8DbjWPKm8M+eK7WOGp2p0LvITykoehVupjvviVVwO6TkxtyBKNU?=
 =?us-ascii?Q?p3Q4ptVJ8YV0zXfnhxoPQ6MtpVOm4RA76nOiPHQ6Bgm9X491zx4/9hXTqnAP?=
 =?us-ascii?Q?fJZ6juYIowfbV58LDFxY5KXYLyRlCXccsyHvGIi5Pf2y8a2mzJ1Fb3hdi2KA?=
 =?us-ascii?Q?Wk9NaIA++h/umpzLVZ5BE3xWd7zLPJUZ1oawljxr/b//01zffow5agJXIKoy?=
 =?us-ascii?Q?NeVwrh+w/LGURvmyVuLxI7nRqIwhgODt00f7ecHcj9yU6mlPJysO/kPbYHqP?=
 =?us-ascii?Q?52kUXwswx/G2FlhzGVLSbNa4GVP99hUyyqj8iR9ufbDA6E06CXAKtFzh2mka?=
 =?us-ascii?Q?LIZdl8HDqA7CR+IJAYKr3ofj5pWwF9mjDb8IIlhzNdG5hQJ6o2aW14nyJnRd?=
 =?us-ascii?Q?0xLRxPDQtq0sbQxKemBm0zRTTgbCNrZ5Aj5tJVzxCBpOQJsMMh+SHzftF6F7?=
 =?us-ascii?Q?sO700ZQrWDm2ZP9qLZtACWDVHkFD3D+VZNunp5+JLZQ3zEFRLoEdLjV9dyyu?=
 =?us-ascii?Q?u3KcWN8Mra/0rLFJDEw3sUT57QqURLOFlBsEj1wfZ+nKp7mtyTqZmN+JmVQP?=
 =?us-ascii?Q?kRDle4D5Wjhe91er9TBjEi3WDFMA/qa0f9eBCJX+anmNMH9o7pDWl0oZ/964?=
 =?us-ascii?Q?BYxuOiODwyK0xwFgoeyTqh1b0s0IzrnKwzu4rI9NMjq5nkXJ8ZUqBVYOr5Zx?=
 =?us-ascii?Q?uncvG1o6ntZ0j8enVWAuea3PjkgAiF86+mCYR1ycjis5x/2tD14/8DIjcGkB?=
 =?us-ascii?Q?JUhONK5uGSS03GxGfupDYkvcHi4Eju9XdFOCfRQIFz2yAFArRt8u+NEhXjZ+?=
 =?us-ascii?Q?lQ4wJMOivLVdU/pMvoFMFSM5+xPEASW2jJDo+nTWecjv8m1oZs40HgLrg/PB?=
 =?us-ascii?Q?gEQXqJf3rUrAW8WgXeSkuQ4dt3oJboE/ulCtzKkqFLyKKfKhAjwTUtCjGXgG?=
 =?us-ascii?Q?mLxTUyzQROOe7TRFjNFybVDoOH/Br5y6dKhp6mH1jc5qEmR9FKWGWE42sjEl?=
 =?us-ascii?Q?XHk8qjpketQ7fGyZahmxOIP62DR1lN0CkTSdlcO4YrNiHugZtRcgW9oz7G8E?=
 =?us-ascii?Q?Nm8KAK70sEeN/sTqnLgKqkbj6aeszIIsGjmq5k9gl5mJs7c1odgUJU7Uq31S?=
 =?us-ascii?Q?H/5epGb12Tg+5evjZadC3D7GBbOdRZhGpy4O8FtZEpk1Ny/rhY3q1ihvkmTm?=
 =?us-ascii?Q?YYM9YjSBob3tzmDmV3tvUn7pn2dgHhaC0on+ogtQFz00mO45x3jRKdoZ0lcW?=
 =?us-ascii?Q?lFs0fJGbMFQtMdAYSQPFVO0QNO2jpXYdT1BJm/rfwtsgrewNatY2VlvJMq2o?=
 =?us-ascii?Q?tQiCNPV0CMiP3tu5bB3FIQsVfpBLxK/3BQmMROKaPPP27G43GSVjbxbz4FyO?=
 =?us-ascii?Q?Gq7L9dfMNQG4zvlh0jOxrSaPyoKtH73YTQC6k9dYmWN8M02d5lq+bPhFl6zV?=
 =?us-ascii?Q?c0LI0RYfDg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c4fc6a-7aae-4f98-7f2f-08de5a241603
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 02:06:56.9626
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fx19uwcYiN9bh9eebZVgy6PrphTspQO5KPhUbS4Ur38c7vQVEbsxeMKwEwD7OYFG+VOxuzkGrwyjd96wM6ku7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7415
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-258665-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,altera.com:dkim,altera.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3A7B96F71E
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

Stratix 10 devkit support a separate eMMC daughter card. Add compatible
string for the Stratix 10 SoCDK eMMC daughter board with
"altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
on the standard SoCDK board.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
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


