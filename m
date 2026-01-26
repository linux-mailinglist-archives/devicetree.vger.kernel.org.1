Return-Path: <devicetree+bounces-259346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEvIDI4Hd2lGawEAu9opvQ
	(envelope-from <devicetree+bounces-259346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:19:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 410CD846FC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2C62230013AF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C285826FA5A;
	Mon, 26 Jan 2026 06:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="GARzBEcd"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011020.outbound.protection.outlook.com [40.107.208.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508C727055D;
	Mon, 26 Jan 2026 06:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769408390; cv=fail; b=eYTL+Wz+VpWvEGOKVKZtIaPSVYqFVNq4ea1rftNkrzyl85SwONrX2ySJcZqgimcFf8qi/cIXv/0rYh8fspSyK2/K13ThH9ABvmZXnOPsO/fcSMbNTiVhFfTLkp7LIsdZVg2rXzAZLD9myPgp2EPPRomb+nNJubV+r982EAuD/kk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769408390; c=relaxed/simple;
	bh=2GspZRMk6nnv4EG6nCDWgIeaw7K4teIwUhkQPJtQTJk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LyW58k7dyJT7kQ/GOPamC+DmIaST7AThFAoPdjjc2SBPVXHIb6+YR7xQMLmeYfHSJeZVSrVvYTLOHbmq0GfdKiF7oNljFJYnw8wmwh9fv1E4VmyZpTJRbW9UOeNUApcvOtFkn6F6QZ94z3XV1LA7ezwbplRtO9sxmqOCcpHmXc4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=GARzBEcd; arc=fail smtp.client-ip=40.107.208.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S1Kqhv012ZLE/S5yT5EB3TDPyl0FeZu0lzclOy1BH62gDKqkK1JfvvDXt4Pxc7Dwdi+dpRv5plwqsLnTFOB6BlwalW6BSg6QMaFU/cJzXIJ4xMvjFqIIB6INEyrni18PiGxsjyYrhChTIqnDLC4YaVKFwRrRXtzek8sWUdYZ3r4NsMTZ6a8cxsQnkxtaXGExR1U1w+1Ru6qI+O2LvGl/uozmvSHXsOaOYrg5aA4TuqJthdrrxPsUGyZR1WG4qQg35vrVH5ZGypbf/wFX4ZLLbRBVpBfNIePwCVXgyF4K9tu+HU7EXgqty99eu0VXqzF8MVD34ETP40f+B/vPqubrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JC/s3dq7XCPqX5kMawJm4S2bSDJrHfHwcn/wHTKzycg=;
 b=wA2nF4IvOXCPvwThEpt6P2+2ck+6/kuqDFQ7e1C0r+a7T8g4qa0TQZVZQlJliyToFjjyQacm7x+rEMjvuTZ9pbSQb6WI9U+Pimn1SQNW1nq9CMjFhwOhZxJIdMJvuAxQz750ZtOTrZIm9bV6MXP0cQTKsglTjj+5zBjstX7QX4xVCtnhbP34px58TdEIxnHIJmlvDIcgXWXniZCzrn5fZ/t09j2vcTTMsxnF7Q4S4TxyKQ2ECl+PmOA/Pcncl/1j/aP4EMR63EEDkZ9A+4qM3wm/XM3cDOKjUkd/cqGFJvtuF8rsUhGw3zZuNmnm0xVWGP3+gbMxWm0XMgPjXk7bCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JC/s3dq7XCPqX5kMawJm4S2bSDJrHfHwcn/wHTKzycg=;
 b=GARzBEcdamW3ljGdsGbikCH2IBQiIOmhu0WKGgEEVN+Uk9sOjZpl76213zOwDwFhtFNBA0FQBwU+ar7KIdSEaXTdZSQRtc2O4KyN9ol/4c0A6AruFXyiKaB2pXL4+yKek1la/YJSB7Dv+rxDzPUJ9FyZnTsvv8aIEigjHCYjLuZWLczGcS8HqJz8KJm+G+mKuWMOQIiFoBBDupZb1JHmt4/20bg948Z9db3BXB6MYFONOunoFGvT7HIERw7Zn/Ila/2CTY5HVVNXY7DfO+LPqaOhNHbyGiQg7oxDMyWBLc1dzo1TFf1twKhEfMoAfRS4rAZ9RLk7Ksz8BwxTPOGgBQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by SA6PR03MB7685.namprd03.prod.outlook.com (2603:10b6:806:442::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:19:44 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:19:43 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC variant
Date: Sun, 25 Jan 2026 22:19:39 -0800
Message-ID: <96b91576e48e0195ec7b11da08b9ef273354c24b.1769407657.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769407657.git.tzeyee.ng@altera.com>
References: <cover.1769407657.git.tzeyee.ng@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: b1693a70-e9cf-48a8-84ee-08de5ca2e360
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?xFVl39hhOuMUoPoGBRg+RJkd+69Z0WRO8/nY+HZDnsN0C0ECazx7EUHlCDsk?=
 =?us-ascii?Q?K7sQkV7mdlrPrByb8d/piXG33kltUmYpgjGUz4RWdfzPwdnCxFaOO10z2rGj?=
 =?us-ascii?Q?fGgih1nnKlLbuxKsa46eQoXEksrVMG4PtIApgGS99bffXcfbagy87R+7Rwz6?=
 =?us-ascii?Q?fxkehHmYKAFrdBPx6NNqmiQlLMxSw3X9t61M0OW7FvVYjoo2ZYf6Y5TIb3FC?=
 =?us-ascii?Q?f87XhD2zJEeRUlbzvLf7t+RT6sE5QVfHNzkSGpg0sslls7+1T0Ww/yT47Ge1?=
 =?us-ascii?Q?9POcVBS7v3+0doX+hel0dH4ughahSfyyRT9XM2MImu2IDnO0e84vcONuejPC?=
 =?us-ascii?Q?XvlY3n/DjWBnYI0s4wb4bqz6arJ0L9163MpwUXnlU00Siby4RW6GLBopojnX?=
 =?us-ascii?Q?lrYIBTUEJ7xcJV2DDkMgV2S5YzOlVgY1VCG9GoDgnGBuOYPhCr5+vW/ZS1tZ?=
 =?us-ascii?Q?f2zMJcI9CgAHzkPPhkBts0bzdxJ/zkwzVNKboaT4ZJMvE8bEG+v4HLGUKSDz?=
 =?us-ascii?Q?pNICv7XvI/YvvlDN6fH3b9TT1a2l7i4n4Z0BMEQYRPtcXLoVnlR6PCHj2PqQ?=
 =?us-ascii?Q?tHWJkyvK/3ol60tufHy7RGy0AN95QgN7IUJ3mDwdWrJNmRGv0XL/CbQyIAKV?=
 =?us-ascii?Q?DmSHfvWZy3L96fVsSScNrJiQA19EWmFngb/zVPjleCeUaO8L7CyWGppKBDiH?=
 =?us-ascii?Q?9H9bDeT3Aemz1Th46LMEGordE3Bf8bcTboErsCXZgbj23cLA2edONiRig+Gk?=
 =?us-ascii?Q?4uamsPhEJqvR8T42y+F2eydi1Nc7vQm5vIATvD6cuQ57nzkwW/WiiAKn1vze?=
 =?us-ascii?Q?Cn2BNyZzNFWae2KdeURam57ndYYa3v0EIti/YmKhAQfn7AI5bkD/F6P6iAbJ?=
 =?us-ascii?Q?X3uCJGUbNgYeUenfdGVfmKgL+7aTQlBrn3zTJxNKHoAI0reKy9uE7vaLkQ9F?=
 =?us-ascii?Q?KOJ6N/V28WTiRXn/yKvi+pCRXZpOVzaGSZPxF9Xht2emJlqipXbK8Sh2Xf0h?=
 =?us-ascii?Q?6I+OGVMG2ybzbGIoBzDo/s8Q+aBhl4+hq3WzSaehcO5RkOhNpReESqFdlfiq?=
 =?us-ascii?Q?8RR+mjjqmrYhCceKIgO8SXayCEzxGLLScCEffcfTzqYpjaD680HSM/MMbenN?=
 =?us-ascii?Q?441TSixFpLgDq+Q3hcY84IMVlCvleg+zpdbpNZZaHyqtxjX/uZvNoxKYeal0?=
 =?us-ascii?Q?mhQyrzO/IeaBA0ZDq0JZGpc925MOrBUu1PkOZ/CpP4x/dMebDhobMRLSuj2m?=
 =?us-ascii?Q?JVg2AAc2AP1x4IH/WIrQQwb+j1QvxYRvT6DEarctJ0tIcjZardR9kkFc5zAN?=
 =?us-ascii?Q?OTbAniX6b+Fl5iiLmxZ5HbTjSDXz3x8Y5AEZpWrQdEUkS7PSvkiIh/rvMiYh?=
 =?us-ascii?Q?GCwizJe9Dmoje5JSiLD8PT5e+zEDl4fnmYb9TgOR3QOUJgL/9kxQ703F6IqG?=
 =?us-ascii?Q?90q7WKgjy3YdqhEuoJLdzXxycQ6TEKer0/+VD9vVjC6RqDFFMxU2d+A3NFr0?=
 =?us-ascii?Q?Ih9OFSb6TgHPldTOTyDD+oV7tTwcvjZu/JNIcMxfNqkcdK9ogjRBEg0mEN7T?=
 =?us-ascii?Q?vKKpAcq966vS76k0onE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?xDDAXRQm4wbDEtxYhIcXYD5L7mZhCOc+GRR1CHBEqdNAwVBcOwQqf3poYNO7?=
 =?us-ascii?Q?zvX21mMFEu9T9bCayUjX+lnkHDfROiTxQbLqlptp6YpIiJs2SkuusDa9Catq?=
 =?us-ascii?Q?U9sEexCAGOCI2ereDUxVOF4YnntOCeKdgFZbr8z3Q4w+9Ox3nBffOm1UOIyN?=
 =?us-ascii?Q?s0bH+LqdEpHwYB0e+YRmlKe6KqxgzcxDrKZooigymTXWBY8YHUc4HI3P22NS?=
 =?us-ascii?Q?SqEgu9A04y2cORAnHftoRg/ihW6Dx/KM9hFjotEMoEfJd9EN4U0ieoONFlrv?=
 =?us-ascii?Q?b9o92HUEc0LAsUXfzQTueBm4G3/P2rEzjS3/E/P4DUrsdURB79wucR+T5efo?=
 =?us-ascii?Q?12BNxutBhR6uJvS9SqdMt2mZ2t0AhbrNv9Ut2oiUnqPQIYl7ufPHg8mK+crP?=
 =?us-ascii?Q?YHk55No5Vhm91Vu0jzakmvIuIDk9USQjKR1dAcbeLT0lyN6rCsAhcLAbpTSm?=
 =?us-ascii?Q?oR9YD2XUZKdJDmDVA90ws2UdqfpvoCpVZMdBgYiO3X0Xl+7XVqbWghtvzOQk?=
 =?us-ascii?Q?a61eAXSD2LFELzT8uNWEOpnCNzmfksJQaF+8Pk4flPbiAuJAUgi018YeA8kt?=
 =?us-ascii?Q?oBf3HdsC9p35rHBuzoLN7vihdQCoCFPQMrjimhGxjBGQ/1PllKakUA/VKHaC?=
 =?us-ascii?Q?x7aVGlhhb5L10F962ur9E6wNrakwhEIjzj/I0FgR1Hmd6TVnGoQ2XHnm9KEv?=
 =?us-ascii?Q?sP8dLuJPneLP8ymslD/3m/vSKMWTn7wOIE4Yq9xUx/x28PQGo1Tu1za28zu3?=
 =?us-ascii?Q?10IyFL6J3qPuBkCILAVN5Nco9oi9UdDQXc+80nVCQXv6POOGwUQ9/VZcREWv?=
 =?us-ascii?Q?Nd2vRy9oiZ3Prh9Pn3H2/PRXd67RTfZgd2zASGCyFRuHGwBBlBUkkrRs2vkg?=
 =?us-ascii?Q?NiqT639/pTiSo8jL84ZF22uyn2izkz94cwh78mydlQHxDLjpwhQz2Swm2xRV?=
 =?us-ascii?Q?X+54ZzmPs0FjYK+m89a9Soz3kHo4Y33TE7fzP1z09Pe/gB4f/q+lh7ZIaL26?=
 =?us-ascii?Q?1YvvaMb11qS4j4BQmlmo2eByyDDs3hFa/x8x2jWx0AICCORrlsMgTk9AXKFH?=
 =?us-ascii?Q?ZjiuLawiN79Mh1/MvIfM/DBTxpyA4CDhYT4+j95kXkE54pfMUyOE6qEsab8+?=
 =?us-ascii?Q?Te9L3QEm9ES+ONNqmt6fbzv7TCHh3fP0/dP62WT+/waW/ymyYc6i2iP+8iEy?=
 =?us-ascii?Q?g3ifM0xSeDtSSVBAGFwqb90X8ixDqskYvRJ6UdvC/7/jITRJ/bNgQ6VNRyBR?=
 =?us-ascii?Q?VMNv8ftIhogXIeLSaYhgH7qHDJqMs3dClNbcJ3X/ggsx+ykNGs5/uZzW735W?=
 =?us-ascii?Q?eOotzDqj/w4v9DWMowowQNNMxM7s90JYW4qbwVaSoEgQQeQA1ZDPYcqnp6QD?=
 =?us-ascii?Q?azCxFhQsIJhfxifuvnTBZDIwMsQ6M0Ie54ktI2KJaAVdNXdHrHfLaMTCmy6t?=
 =?us-ascii?Q?9ypCzzd9bieZ4Gc2AMxzkmSxz7EdijxiJXFvM9H4Pb2gqAjjbY6IYBaPlkYC?=
 =?us-ascii?Q?L/xYTZ8pZLU9ANfZ5znh4zIAnsorIJo1mwyLrSeskalffrr/6AqeVG7gDu+b?=
 =?us-ascii?Q?UM3H1/2vbgQcG7MTs0E7cP9csYeuOAb7TidFdb9j6KXGT3tHqz8KooR7MP88?=
 =?us-ascii?Q?i133JhzfC4h2D1KB2YJ5r+/uQUigPdqWtng64kiIvDnOovlSm65B/AfEn/3y?=
 =?us-ascii?Q?ZioXiLseaOMq3fGKBnR8sQe5DqXNj4nXzVd5ANH3pP8y0h+xK9cgL7hMvB39?=
 =?us-ascii?Q?TWKJ/pw6Nw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1693a70-e9cf-48a8-84ee-08de5ca2e360
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:19:43.0875
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rqrwh9S450VmXyjOypsDM+4IwUYKEXSEVEVnY3TLCU1zDutXvVbEIbkH+0cMKb4EQ4kKH+8q0OLNCZFygtIx1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR03MB7685
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-259346-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,altera.com:email,altera.com:dkim,altera.com:mid]
X-Rspamd-Queue-Id: 410CD846FC
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

Stratix 10 devkit support a separate eMMC daughter card. Add compatible
string for the Stratix 10 SoCDK eMMC daughter board with
"altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
on the standard SoCDK board.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v5:
- Move Acked-by's above the Signed-off-by: and remove the empty
line between them.
- No code change

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


