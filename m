Return-Path: <devicetree+bounces-259345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKsJBrsHd2lGawEAu9opvQ
	(envelope-from <devicetree+bounces-259345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:20:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3C384719
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8EA73011849
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B25C26E6F2;
	Mon, 26 Jan 2026 06:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="t1k9sn94"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011033.outbound.protection.outlook.com [40.107.208.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5737E1D9346;
	Mon, 26 Jan 2026 06:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.33
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769408386; cv=fail; b=tCIK+/ieum8SyRSS8gBN5fKg5bM9Q5Zc0ExMw3KCZobdZ6M7wbILu+9mCmqflrV+zKXZiYM9K1AxPQVZazrzU9l9rpX+11iHPGQKi2FPHx7x9iNLUEj71ww/+9SvLjKoL6Y4LWXdvoX6+0tsA4qRERkaqMdXx6+KU6r5qjRIZX4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769408386; c=relaxed/simple;
	bh=SAJr1wWUOOySEn6YL2jTlwhqATFGs9gjgNqN7xuuZm4=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=AgfQmmaL9B89suyvvuNnSyl9auNzmLc7c215EmOahbGa66FxNygefgA7+lzGNmDSjCIY1Ip8gBEjVeBkCghiTnopmhKXQr+XKqTquRNZjNJopJyDuHfXs8+NAyfDln5jGppGHJAS3hRusFoiZcMT6VG4HWPhKjVTZnjyAbwnTbo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=t1k9sn94; arc=fail smtp.client-ip=40.107.208.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gNI5LUdOY2Jh79UjATrcNK3/7FV8ePvSgI84B4mQYtEOriZ/LCVS7/t+YOuYu6JZwHUGyQFTkLQYAN4K9qsE1u9mP+yyVlug+Y1Z2mYqWeRF7wKNdOpL+lcdI/gIGvnCEWIlax1i0nCfUGy2tr4zDNwGdb6f8shBiYhiZFh6uwzWoZSbY6JPF5Dj4JRzZVVrTxvCK2Ll5ETin1nXtswHw50dUaVKWdqcs4ShLrWi3iENaBXSDsDyeWrK6Exg7CnCK++A6/q9mr1aEi6UM8vJ0Zns0oYfB4Y+g7wcg5SeayD/mpLR5GAwBVANymxYRGj9Di0+Amrl7F5jo6ETO9yhlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgvrHUmxDXP0BDFckIQYIwyBLfkpppFmY+JQso2gmao=;
 b=KeyrI9a+5irLD+FIZ52hSW+Z6V/KWmmCUHkuZPkVgf2pl8wS1jbRR1b2l44o/mK77EyKPhSHJOh5mZk1ZQeZ75jk+eDlKdPXWjEalqbG0V5iW6B7DxMauuerPM6VRyhpl48Fov8KXgzjVyanTGJL0/a8oLlho/bwkZ2zIU3p9MkPeLL1AzHnSeIOu0BXi+rnVxRq8EdNuOYPiE7m0OnT2PuGA42U43RkQqxmM1HRgetBvYW2lI0Z7EKOBYRBUMIMuVODg3UQUaTOt7n3u13gPpqfgQ7GK07+DJWBjkYw4I1nSoe5r4QyoA7P8yZ0S+LoqGwFF8EkBfNC6VSu7qA+8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgvrHUmxDXP0BDFckIQYIwyBLfkpppFmY+JQso2gmao=;
 b=t1k9sn941IMJzqxqMpvXzgMi2hkqndT+h8UwcY9/6euEuqJhuM9DnmHt/5ko2s9b0WxgJjjCaNYIrE5on3RCH78j2XFrunFOAqFPaAyncfMm7iM6ZRYwKqrOVjzfbxn2Wp4vg5mOjk9YFt6QRMJmAtu/jNzU2i2V3AVge7fJbIa/IcPPHX/Tr+gqovNaNuMPSasKLVrU/F/sg6HnEjRzl8QoPzW2oaVEhXalj1qpdyCrU3WcQzqQ4qFrCL+7LOtwohp9IHWkHCv9kNWytO6xcj7EcM4ah0P2T0rE6zhyYns623aWDsB6XDXqlNHBMDK4+9mQDae0fU9r9I3YuPdVXw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by SA6PR03MB7685.namprd03.prod.outlook.com (2603:10b6:806:442::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:19:39 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:19:39 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Sun, 25 Jan 2026 22:19:38 -0800
Message-ID: <cover.1769407657.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0056.namprd07.prod.outlook.com
 (2603:10b6:a03:60::33) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|SA6PR03MB7685:EE_
X-MS-Office365-Filtering-Correlation-Id: f75e0f23-c091-4f94-1578-08de5ca2e276
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gDyAlz4pKGlRd/GK5tvgYu5eDW+XPr7mxGq5nJBaRdw19nDa6jv/vt0hDwRi?=
 =?us-ascii?Q?IKhqrL1nj+zqSUziHfN/NK/1j3iT+pdjPd391UGQC/9KuarmmqbYQJnqqpZS?=
 =?us-ascii?Q?Aloi3yiF4qLfBi9IOyDQG3uvn7kLonFDb7eDjpZb6HQW0uwtQY9/AxDCDjiN?=
 =?us-ascii?Q?EWPRAowwFeGd/G32NYlmWTGReTmwTg62Ip7JRRqyXgqHZ+SWEZ9iRmbQ4jOG?=
 =?us-ascii?Q?H5egjqsLzcEgIIPYeUK+91GNN7wFzjG3t+9Omp0VG+leVNs7uW5qya6nVR94?=
 =?us-ascii?Q?K7NID+cJqrB7KRuNE7uDxTlxWePU7AnScQLFVfrFTk+3Zc/zqqp/+93NZOV/?=
 =?us-ascii?Q?oEa2NlGWYRIXWCOhbBwpKOwI+1X70v5k6H8YbsCIFvS8NtQBC0nEsBDG68nX?=
 =?us-ascii?Q?Ci/j+LGfWnETdEGRg21PZkwA5dxV5NvxIttI0IfEJ1dYizffO8E7JnIl1pfM?=
 =?us-ascii?Q?+wir3wiUYkFiYIgrbRxOr044j360lV2zN9Nwd+VZfBjRLjwFGKcy44dyqegV?=
 =?us-ascii?Q?kY3VVYAeaxjVU0VF/nY5TFTcyosQ8KX41LkmEZsPqWN2JHfPMqeVk0zjYS57?=
 =?us-ascii?Q?6tqQqfw4RvcHVG0xcpscH064CFeCBjpXvgIOx+k/fx/J21ucTqNDktwJJPBN?=
 =?us-ascii?Q?lOys+jNuECwXrBYW8tqX6cprg7Ln45UN9qI9AFRDbTNYJGYP2i0NOxlCFZgm?=
 =?us-ascii?Q?8g81k2SWed5MviwLYcZGq+KwrezuDWJe20CeRAa1IXh9zWJ1ee9Zqb5ils9l?=
 =?us-ascii?Q?oyQ2RV98YqTutrtDDBXqnCXN52n6kbu7egkhRLoH3mQ0asfbOgQz+iZPdDOV?=
 =?us-ascii?Q?+Ts3q7/V7AxEUJy4jIycxK67OaqhAVggWBiVUm5rTK60B17YOez7k3BYWOBS?=
 =?us-ascii?Q?dV8RzyIJg03DSuvaIcqmkrSu15rK8gk/YOwEF5Rt9+YtyVRpPvDwhzaT/y/n?=
 =?us-ascii?Q?vkYnifozFMIc4G2xTs0opPIahaBDXhLn4gPmD95liVs57Vw2b94MwlbTsSEN?=
 =?us-ascii?Q?svkVGqKdW4fN/lRE7QHU2spsGR0R6W3anpVYXpwAtgv/NLh/CGJZE3jniDHX?=
 =?us-ascii?Q?A2ee+oG7TsrmgSm+wBwfypX+488uO0vdVRXCUQAKXxETa11RguXpU6WODVIN?=
 =?us-ascii?Q?kCDronU7kV00/uDit9+NIs0t5Ma4zXP56TO1zAVotq4Awj3tyaijUnQjUcHi?=
 =?us-ascii?Q?V04B8A0HwZVAw/8j5Y9FfGBq5JdlrQgnitFIX6jpiZBPoInWSP644vHbiKnV?=
 =?us-ascii?Q?+dkD4eDHtgRQgFpJtkZ0uoPE9ag7xS2lHgm0U/ad4fjrWv4lhZzTzxxN4+Sw?=
 =?us-ascii?Q?cmf/7+jmwYJ+f9yae/n0DKfhi9XJaXdUIBLUGlicFS9UxoUvkS/OxaDZIgWX?=
 =?us-ascii?Q?BA1M9FKUh/LxCnHrvcH81Kl2dAnruu54bdo10Wv/7WnhEQ25Q4u/8xnQQ4aw?=
 =?us-ascii?Q?BNTjunDtgNE49b9PVQyMruqbUI8HZPI5dn4Dw1eQbZE9nYLCjlC76ytlesFd?=
 =?us-ascii?Q?Ph7Sm2vJQjGaEH8c5tK+niJ+3ngYeoi51dvwXcbLcL5Oh+oXlnd6gPOSQo8u?=
 =?us-ascii?Q?+qgQ0lz5wySI/EIlFzQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?FV8fGe1YYtIoPchCIj3N0AeVRFCM3MnWMe5C/2RM4z6I359hhWxxKOxtG2Vn?=
 =?us-ascii?Q?86dQ97XcO1AA6qo5Re3QfIEoQvC24PDP87wDFV3Zb0TmbjZ2+GFjFkLMq+ZM?=
 =?us-ascii?Q?VMPnhqQKAPCONWpK2EuLz878Uy125nynTJiNOkuk5+of8ZOTgl0B6xSlO6b/?=
 =?us-ascii?Q?7RBKwsnWLqgl6ZoYT97kMyOGFt4+KQ1I9Ni2QJ+0VmAD0J35dpn42YyTqS6o?=
 =?us-ascii?Q?TA99nlZlepqAYRpjwIx1wxM1zDQE8I6JC7YnN2tLWJ8pv2IDqbK5vCfeLNVW?=
 =?us-ascii?Q?1RNEbY1vVH1NP0hjShIi14hjwM1rt9Hg0xhY4PCH1ayHOdY8cDhqSNehokDM?=
 =?us-ascii?Q?cH4a9t8BdA+5hLcTnA0pHueS4hoO5i9a2OUXZBmhVdIL1I7NXFjP6t0cDhbP?=
 =?us-ascii?Q?msJ5UY92W5K6LMt/ihzeCRX8QkVuHTUlzwHS1SgX3NEJHmIqcmQuefyDXXGi?=
 =?us-ascii?Q?AYRnSQU2vboVKBBpuEgj2nDvDuqtfzkA4Ici9hnxoVF78J8CjgTUl7vdOO8I?=
 =?us-ascii?Q?nV9sKBXoo2Yio2IFNgtPRStuqBskeEWwUBjIJb6v9ACkGWUClK6XBwiJz2pS?=
 =?us-ascii?Q?JjPh2355xscDxg6OuvSwAt5h0bOJ9xq/SvoH1fKRsnlHVqANF1i5vMVzIHOm?=
 =?us-ascii?Q?dWpd9laZGFP/JIdJoShblCS2B8m8evmC5T0PzJHHdq6grkVP2FwDAkTBoifX?=
 =?us-ascii?Q?E5PeSmZSjsLHWC3IczitUB2qTJbvXdVEwXg2KEadr9n2y5Si2JTTdsTdIcxJ?=
 =?us-ascii?Q?5Mt7Bi89Aa6P0zB69d5p4V1PVq3ZEUqvOvVf7e8SOr4eOQoZKUfkJ89BGQvr?=
 =?us-ascii?Q?uq2+ykjWIXNQa/NqorpAeHUZJ2NccGpW3oSb/6fCBACt1Uha3gv5CJOYcxRN?=
 =?us-ascii?Q?Oz/gdT3UbM3UgpFTUZjdAtblq1oVTkf8HNNlCB0Hx/TqWUI+L8MWK2m8aSA4?=
 =?us-ascii?Q?ymqKMV3/YT8DphtF7QITpMQcVhysgZ0fJLru/RPTFtFEgGFutvIQI/J4HwKh?=
 =?us-ascii?Q?NxIDGFS3H557+QEHc4e3CYiwGUhsdCoIqBKGYqmfnc2jjgsi5wbv0ORAeG98?=
 =?us-ascii?Q?+rB34I14B9D8Wz2jFvxcNQl7rmuq4NS+ABdSOp/8SUCvw5zqIxwTQaxXsOXT?=
 =?us-ascii?Q?tKO5Q04LcQaoZj2E3Q0arKvQM1u7AzT+bytKsyJG8OTZQbEWXJUKpLBrU5Uh?=
 =?us-ascii?Q?JsfLfFkOR74gk42w8qZRYqVLxDtPcjXqXU8e2wv0w1QAgbIZWfXQcTDy4vrz?=
 =?us-ascii?Q?yPNh/a5uKmSZYc8bmt13QW5crDOBgtxNqQZi5LBPVnbY//55+rQ1hLvDf0Px?=
 =?us-ascii?Q?+DJrNiTrxgHMOhuGZvIZ8U5dHu9YPL/OPY0R70wTv5bODLQj3HKToyE5ojaN?=
 =?us-ascii?Q?Z1JycrLN+BHDjavr996LwOqYT47cn4ng4dEhXG6HzhCfvNH0ACSsHOMjG7QC?=
 =?us-ascii?Q?nYmyaHeEUZycnKVG3z67yWRoKQNkAHQrQiWf46lv6jHbnI8VGTzOYzjU0fmi?=
 =?us-ascii?Q?d2E6dPXuqc9DM4u+EraL3yR2QfZBmuYsr5sbGzwgt2J5Hz/ehu6jLFlQQx//?=
 =?us-ascii?Q?p5dGC+E+lK9gmI5b/vsKH52y74tyJEsaAKWoNfERUMxCoCpXjV4dtSWpwhDj?=
 =?us-ascii?Q?Wx60B26wUlyOFIt1/sv2A/OeJBN+qlOxfYa2x2og4vP0JVC8pl7K5Y9XcjNt?=
 =?us-ascii?Q?ZXI3ktLfXjIb4aTGtQRVpd1NYuHDYHTao8VoKpdMrdMza3/Xe9CcSM+wO+ZX?=
 =?us-ascii?Q?Tnl+FNEDBw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f75e0f23-c091-4f94-1578-08de5ca2e276
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:19:39.1260
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5bRLG4+HA5e056Brckw9Kr4aEjGTMOPVerYmmDLzsm4b+9MQzkcseyBTGrFyTdDuod26OyYk7Wu6mp5aebr6dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR03MB7685
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-259345-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9D3C384719
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The first patch adds the device tree binding documentation for the new
board compatible string. The second patch introduces a new base device
tree include file (socfpga_stratix10_socdk.dtsi) containing common board
configurations, and the eMMC-specific device tree file
(socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
with eMMC controller configuration.

This follows a hierarchical structure:
- socfpga_stratix10.dtsi: SoC-level definitions
- socfpga_stratix10_socdk.dtsi: Board-level common configurations
- socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics

Changes in v5:
- Move Acked-by's above the Signed-off-by: and remove the empty
line between them.
- No code change

Changes in v4:
- Included Acked-by from Rob Herring and Krzysztof Kozlowski in the second
  patch commit message
- No code change

Changes in v3:
- Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
  eliminating code duplication
- Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant
- Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the binding documentation for broader compatibility

Ng Tze Yee (2):
  dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
    variant
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |  6 ++
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 5 files changed, 161 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


