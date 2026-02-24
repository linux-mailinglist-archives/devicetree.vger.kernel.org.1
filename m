Return-Path: <devicetree+bounces-267717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePkzMuU+nWlUNwQAu9opvQ
	(envelope-from <devicetree+bounces-267717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD0318242E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32ADE3063400
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D0C2D1F44;
	Tue, 24 Feb 2026 06:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="ut6LDAVy"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010025.outbound.protection.outlook.com [52.101.193.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AB5275B05;
	Tue, 24 Feb 2026 06:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771912923; cv=fail; b=NEaDHn6xJzTFPswrJkO23Whqpf9VbSbrlxa5dJLCcfoCstKVTDc9NeeAGtAd9raxTjJKyG7n1/dcAEvH9xS2r9F6qhb6Y4DwoTBknCK+UP+1RtPhLxpTy7f/VDrItnI4A1lCfVaOt7h5ngVdujzcJ4yhb7hKSmEGVi0Du3We+d4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771912923; c=relaxed/simple;
	bh=7l2m0q/cbzrw78aVbIQ1xZAv8Tgb8MmlJgYXVtTo8dk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=F/JzwHxZzB7mq34gzLb1aCSH6ygrXqADrD3nu/QoJu9590YNecji3P5SPH8crKFzE2Q2Wy5xiFbuabTb9S0A+4RNf27d76rf/0E4CnKTj7upZCUqZTkW0HPSIJ7X9lQLTnK9M2f2z/GpenHU7ID+BKYowlNJS5gMuVn14hqc1/o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=ut6LDAVy; arc=fail smtp.client-ip=52.101.193.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjQGbxvfKD5TYCilJeCa8wzs011FmFz/p/+Cy8W3kXPwJgbsA9OtBxNXxDQ6pbgw+Q+bhA6mFl5q7MywfmRaCtrqsqIkwzdApKTRL8dKH83Q+g3C+nLlTWdrDXuv2wL7SHi/pLAAQncDqwOD6gwa2Pmn4a1rT5xoOFytU35MXZlj62dIw5Ss6ke0KoARx+V78EjU5Jg2JRp6DRKZVliP1goGzxU9Unx2itihoZT/oE+USoLOPag5cGi2ZvtUrZJdObH+sZ9L5999ReTSN9uWb/9kDhO4CUkt8gJHEkrPWGmNqkAXdFfTuBqmckpDgW6xc89CFQLjCJanfA0o7KV0oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GF2ikxwKY4IIROLBtQ3vk+R9HKhir8j9g33X8WWX+T4=;
 b=WMutkgWHv/3xUJkYWXxC7+k+nmxitcOgjdVz01xg7lXSUgMbiZnXSZYa/nit24zeph1HzkLtG0Rd9nUYOG18eKgWvvrXRLtkcofJ4Sj6HZbD74KKxBPObXm51FPxBhahSENFHXD4gONCSBPOswwkapwnl4mXwtF4ftyabG+KaXn6aGbeMOTpDuWZFt6WL4t5Hl/azh/pN6alWxPD2onAW/w6HdE8mpnLH+bQtd5Er6c7DCpx6lvIfXOYbMdMaJqV+VXcvg6R/xE87RnSpfyU8fRdc9+r+vGZkz+EdkRHaY508q7oQ40g0YRYKrn1godM9CoMy9dSf154wxejBywBmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GF2ikxwKY4IIROLBtQ3vk+R9HKhir8j9g33X8WWX+T4=;
 b=ut6LDAVyfCj2V+mgi/B4xLzWJiALw/t54UNuwFcSHfNzQ7Y8/OL7aabPiMJb5N5uEL/iRELqspIOQgYDS4mVKaYUz/U9JM/YY77Io5b7DzZZg36uI6gwUpwDoKGwIOdqMsXPKAVq0WiMJY2TvmKG3NGNpGHA+QrGLcVXSORXBNJAcC2B67yA3W+aFqKk82L7DSiKoa+dNsJ2lNuyhkSS9X7sx1T3rvdsyq0CStGhaaJDccblYWdyywlHWjCR/AKieUlQDzPeFqLQiLm5cJZBZtWo700b8vdyHVnK8b87+gMn/dhnrLRXStEiyXuanpwn1Ymn/+omJywV3DrKNd4YPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DM6PR03MB5113.namprd03.prod.outlook.com (2603:10b6:5:1f0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 06:01:59 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 06:01:58 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/2] dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC variant
Date: Mon, 23 Feb 2026 22:01:54 -0800
Message-ID: <0db3d7740a9fec0012e69a6949d810fa1ee66b6e.1771911773.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1771911773.git.tzeyee.ng@altera.com>
References: <cover.1771911773.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::34) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|DM6PR03MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c687ae3-f0c0-4af0-0dcb-08de736a3847
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?kMYgceRyvOCg5Y3PsgdFHNpvaxifMjm/K29AnJtWFUO+7QLR8dZsyV1qyBBD?=
 =?us-ascii?Q?xFDiknXj5KaYAnxlSnxAty8s1HCQt8zoZPVuwjaR8Kdy8fF3HW44bbOnLmj5?=
 =?us-ascii?Q?A4B7qCQmzsrwgte5vgJ9JCKGswiVXtaeYUjnAgO3m9hbf4x+NyQdpU8WiNwc?=
 =?us-ascii?Q?cbD4yhR99DvSwIQFhlg/8/ysXHY5vgQ3srSBECY/KUORPEkfzuPy3kGFrU9E?=
 =?us-ascii?Q?v4yqur2cmvLOihcHN8cLnB45WGx7Ewi7t+FUimyfVxEvKbDbS9vDauB4YL9O?=
 =?us-ascii?Q?vXGuYjHQAsaZViR7hfZjeauP3TqqI6WV9T1eCtN3/OLLYLBbTFr3Yaz022wc?=
 =?us-ascii?Q?NZfrMqN3nEAn0qcl0J+Yw4O1n3aV8K4oikdEaED51sGyTO7dcGhX2WbCMG6u?=
 =?us-ascii?Q?lGlCHEn41oXS/pNFO4u/gqjpddb3032tGOgXuTjyMwgaLMueIVrMkIfJiAcB?=
 =?us-ascii?Q?poWJ14MrxA6VfOlLEYKdNDVvInLGHRhSluuHk6wvzrAubxEn642sVg50y2jo?=
 =?us-ascii?Q?OS3e3vwbJe97TO2iyroYmfnpk72WUIx0gn/wvXH9ziPadsLOvPrzASXvvpS6?=
 =?us-ascii?Q?2sse1aMpWKwu10uDzamE6DB2lHn2Q5uWSWBdD5dV7DKtz0vV9v0KacZFC27c?=
 =?us-ascii?Q?7mI3kycjwIHUPBXi+L2YMU/DHrSsSPBXehlVcuWlcz9h8MCqH0NGLyuvjkxC?=
 =?us-ascii?Q?HhY8Wm5jYP/B3oLoO00Y7ynhF75f4MH3n7pYCz1S/KKxwBQGdScJutWUVZ4i?=
 =?us-ascii?Q?OM912swf+v2jT3kZxSnMTxfcSOoIbhmYi4bji8D1wcqyKKSoxoqiUAKxm3zE?=
 =?us-ascii?Q?CZKEP8DT8YwBDgZJB+GULBDdbgBJ1IlHBEoMxBN8GX32zH0WQ1GtbHVKWpg+?=
 =?us-ascii?Q?wih3RT7EomsUqpYZvMUL5Fa88zQG7W7y7OFe46or7D7lbEagUpe9UbVKjrpL?=
 =?us-ascii?Q?XlcnQKwgweJF9XX06whVrwY3oe9re/2TYDCAo4LvIMtij4Bn+b5VqytTb8BR?=
 =?us-ascii?Q?v6mu4EUjaW1SXp5MnKIhiP0hISamlkD4f4eNJIzWidxg5Gsdaaex0P9r4o3+?=
 =?us-ascii?Q?35Uhi5O8qhtgI+3wQeiU1EZ9GT2+MtP1QGre1XXHNVT1Iz4O9QD+9tHX2FZ8?=
 =?us-ascii?Q?YdU5iIZxqAcubv7StJiJ3edZjLNwqSpF2Mb/6ub651u9sTRKdaU1Vzji2qDQ?=
 =?us-ascii?Q?xKGyYxjhXWFegII/9/2h4BxqVOLha5+4Gy8YFocZuPLXnHchzg6hFQ3/rcCV?=
 =?us-ascii?Q?zf76lgNaDz8fZLn/kIYmDhFmmUEjSQDlAAujOkDgPgZa5zeVN+9PljsyuFi7?=
 =?us-ascii?Q?Fy0bnXadaW0kwu4xddpXR56l7o4zMMeT8iHY3M69XPLJKFvbiLkcNvRucZIH?=
 =?us-ascii?Q?6SSDj+TPHKOlGxypY1Q9lY2dJ1lNJVY1g3lUl/7mpJPnDWurnJrf6fd/CcJ4?=
 =?us-ascii?Q?vEjS9rljYo2Lf/cpzCg0a7K9oPvfK3pB2tyMOIDgS5PZyj18uEHL2ehWNsVX?=
 =?us-ascii?Q?2x9gJedJC2pKSHOcvqG1whRFAQANNNcbGFzKMe10s97dsJRdapDk9jZK9B2K?=
 =?us-ascii?Q?ikwKp0SvHEtcPOjemo0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?y8GTEXA+FXWu+f8Wn7Jk8Q1oosHQizbg/G/Bu2WBYLo+vP1StC1LRX7AeyyG?=
 =?us-ascii?Q?FlAGhHdZgPxCtsvHbQEdcN8Xg4rRv8Ns+idYRDf45b67zgJ+QGDNo/0cUGZs?=
 =?us-ascii?Q?pb4ZsqPhPI34bxEaY1LZmQ+pR7lAwUL62svBb2lJgR3+6cqbdg6Ev1yqmkA3?=
 =?us-ascii?Q?GTj+ISl0UUromeYdKXNQA2iZlNmmSkgoww0bDO8aMhWn5xCz9sL9tXXIZHVP?=
 =?us-ascii?Q?LV8PEgrLBD2BS5w/mk6A/0Wo5aPs6lVWQdW9dKyDifa4UiBQQ2BXv5lCcDCV?=
 =?us-ascii?Q?eS1HRRXJ7GMxUK2vNHwx1FuWu0I6M6pqqzaD4rtf6Rt6Btx16FwoiqL7zmiI?=
 =?us-ascii?Q?GfOgw6jhl7X9Vll2ApnJdgco8Zom06ZodwQ+B7mlNrwVnV/9kYFTaL58sKCR?=
 =?us-ascii?Q?wia2DhfeCUGQF2r48fQA57qwLFuhyD8CBf4vlqZCdgAVar3fb1TBBUCtIDrv?=
 =?us-ascii?Q?J9NzfkB9oamtDcHfqhVRy6GdFpwcqXZpxm1mcv0s5NOg5gqZSSvJHChTMkx/?=
 =?us-ascii?Q?pHwc1HiOcwmyLnewondI3izayPp7Z6AFBrc1x/KtiS4yYedOIuifgS1lLLL/?=
 =?us-ascii?Q?re0PF3JzNU9ZH0o+TOAdPW9ZpTwXZ+lxlgTKUf+tgxITgsseIUJfQtRXiJex?=
 =?us-ascii?Q?5Ge4uvBRUv+9zLtBX7cxy6w13KYLu+ojDrWXRWyJ0dt1YFdfPo9KCGzHD2gq?=
 =?us-ascii?Q?eo/d8NPJAWeQu4mnJMmzSTl+S57fYNCNOQCZP+a7LnLI7gIijXo6oWJz2r2o?=
 =?us-ascii?Q?4GXFj49EMNu4dkSDgDDahRNHa/IrcfdrDMihdbvxFV+QzWKPgS6kBPs8v5Ve?=
 =?us-ascii?Q?iTSqKyIZ/6CGnyu5Y5TMwJoPW//uYE6RdtDwV5PppTA+29tf1kCN+tP0b80I?=
 =?us-ascii?Q?wdk2TRB1fGsfQYdTK7YljQHfrWacdoDsZyJUWKjV+TQx5DsPMMBNw8yeLC/+?=
 =?us-ascii?Q?+gv4kpYD20lQ7c/lBTwRUZc1odDNwsnvYAWbQofXQIfWnl/0lvvdx0ycQGi4?=
 =?us-ascii?Q?1eZ5w2xBFH+Trah6CIaQlxaK0SaZlbqg169eANaktvIG7/TJsD+Ve+pXQP81?=
 =?us-ascii?Q?x2mPuRxoD65/xbEibwUk27dYT2JGeZV0I/ZRNZVKo0N9jVKAKg9ZVuyIJHlt?=
 =?us-ascii?Q?Z7ZfD/HohURAN47e9LxbnbFhpN1blzSj+yD4rSw9K6koWNUGo4cHuE/y5zCj?=
 =?us-ascii?Q?/17FGi1P86/jYFlkUsThVNjMvqIGygiDK0ta1/O6Ybih+zGE1lnLE5J6ef/a?=
 =?us-ascii?Q?FvPnLIEWq4qw+TF2uVcGotsKfU+lpMUXxY4cr1P2Oz+xHVq2YfHAiTl8UiEd?=
 =?us-ascii?Q?9t/Yl1TeunYQZaPicTB4pO4Oueec6UEAtxEt6Zzif9DX/bpP96eYqcHxfQ9P?=
 =?us-ascii?Q?1x3WwTnSxR+hYb5qR3GtHUnR3uVwqzzYbgIYxTpOEGiPZFqnH+rNGYBicKby?=
 =?us-ascii?Q?lbfCUJDhK4UrZUaf6LzHhmWTG+MD2Prit56f1EXQhMGBNtbvd93qgnvDt6KW?=
 =?us-ascii?Q?gl8rDChl3vS+Nq7kug+OGhlZVJ4kdPcP/1Gvj98dTjyqyG4k8RvYNnNQ/iO5?=
 =?us-ascii?Q?OeCQB60SHbzxd5CIxjgEYUhYk40XIC1UkbCB6ofTU0WwLIajgGxB1QLAV5lt?=
 =?us-ascii?Q?1nFghnA4ALDP0yirxJfqPVvgKL6n2JmRuzSaDq727yNI3A0fBW2e+ro3Dlt1?=
 =?us-ascii?Q?gofMBF86GKjs/CUc6z1nFvUUAN+acZk4tTkNMtHfxr2DMezR9UVbwMB2fB+U?=
 =?us-ascii?Q?u7Aj6NP1RQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c687ae3-f0c0-4af0-0dcb-08de736a3847
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 06:01:58.4389
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: byT9ev2JPpwL9W5sj4Nb6tu4Lh7ni3v3w5Z+nmNC7PeGHP1+KsIx7kMnzrGbfp31hCXGKYCPaPIpePP2oBpEKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5113
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-267717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:mid,altera.com:dkim,altera.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 8BD0318242E
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
Changes in v6:
- Rebased to v7.0-rc1
- No code change

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
index 13a3a9696821..712916b7447a 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -84,6 +84,12 @@ properties:
               - altr,socfpga-stratix10-swvp
           - const: altr,socfpga-stratix10
 
+      - description: Stratix 10 SoCDK eMMC variant
+        items:
+          - const: altr,socfpga-stratix10-socdk-emmc
+          - const: altr,socfpga-stratix10-socdk
+          - const: altr,socfpga-stratix10
+
       - description: AgileX boards
         items:
           - enum:
-- 
2.25.1


