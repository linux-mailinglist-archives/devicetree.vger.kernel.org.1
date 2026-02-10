Return-Path: <devicetree+bounces-264556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEYeALHBi2l6aQAAu9opvQ
	(envelope-from <devicetree+bounces-264556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D6C1201D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04661305583D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 23:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2245A339847;
	Tue, 10 Feb 2026 23:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="jPwTQ5o9"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021096.outbound.protection.outlook.com [52.101.70.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F82330652;
	Tue, 10 Feb 2026 23:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770766416; cv=fail; b=UjxryxshevacanNPc7i1Bt/mYc6NtmggWvNoAM3iZ3M9wYcpg/cUXSgBOsOS3WQkmaW18Ns3pdeL2sJnBLXryd4iL+Qw8J0ElfFAOiU9J9i95j5/kgsbgNwTmw1HVeJlH7eKsYWKTf4vWuZ9/Q7QB74/5WA3zJxFqGIgNR5s9S8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770766416; c=relaxed/simple;
	bh=+UAhc/zzPiPCaXbF/XbVfQxRuLYEafKKsFNMdbe1wSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZkpBrcuaj/PEA7sREkTPkCgwTQY5S+Hk4bLHvw2OSCVfMU5fc1a9ugaIhO9zrfgPQK8eaS7eNnx0zlEAKo+WwFV47RKARQd+zd5ckVmdJ6viyw7/XxpKH1XeMaOEwk/zK+KfliWnvcm+T7YIwIez3OgxzpQ1q5UJ6XfQQXoCMiI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=jPwTQ5o9; arc=fail smtp.client-ip=52.101.70.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZKTnFnLZWY79/Kdg94dlK221OT9MT2yNPcPbOvAgSF4HiZEBMbrJiJY9MM+pDFRGgRxto/Z8wERtKnFd/UeQqs3ItcyX7oICUD71O2tTm5GVSzLA40QYnfBGrcjKvdLfHibHALfV9znhFppUjBYzqm0+QHwc6skhxWIdGCuDgxYaMvVJdr4/NmJ4sK0/HQyJnTHRtIpDl23+8SYT98Jgf8NIedtoadtAJGoMDqcJamieNNi5kREIx/QH3l8x2fqOVAf1gYl4eMMhSwTzo/+G3SUyMxRP2ozxUk3u0/l/kLDIm8QYLo+aodLxex71Wp9MJ0F8nKmD+a4eaJr8/EuyFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=Sakn5yBjSorIDOLnEyrAHfdfHfcqQPsa7/9iUmiWmY56C3khIDN5CvCfSWL4rcYaWVTWTPoIg8jyYFeiTX4GCgNPxRJetQu5duChhhorEqBqAkUD+v5UOyG3poBnVgfr45FIP8T/ZGGrQAmpIhYp3Z06qQXcu35KGBATDAbQBzB5hlv8B4i+Aea6E8wuYSAKGJ59JK+GAylG9fWJA+PLJBxm8IdqKYL6egm1TLwytC/6nzfSQE0NHnZfjF2GPwxRs4waoAJsjLbh2N00U9cG+PAhe+0Z+spouy+alpTfBrMJp10gNJxiNCz2Ie1kqUuVsdUIs/iSccAsquq12nbP+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=jPwTQ5o9GxDd+8KA7W8tDHQMdeFBNiV53JAxx7IL4BpG443k/9Kzt+Z3COKrR3HC7Kvj8cS5UWdSL+i+prY4vk4zBwl7oohjAMFnDR60pQNUCJcxPXvxFXTwrGY8Wzh6g+qcUK4LeKTrC9SCiOw6x+fA90z8g1RxGqf3J6UFwmumpfh9klvMaPi7YtO7dx2GMN+D5t8en/RPfO51BflduYBl/1VgwQ/yC5jmp+M1yXjAJlFBcLqhSoTd3Rss8eOLDaN41f0qEdqEIiLGXL4cxSMfzpfrLNu4r91A2U7eRdaY3Q7W2J5MNPoQe4cmzUe/6AaD/US29KL+pThUJMtf8A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by GV1PR08MB7313.eurprd08.prod.outlook.com (2603:10a6:150:1c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 23:33:31 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9587.010; Tue, 10 Feb 2026
 23:33:31 +0000
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
Subject: [PATCH RESEND v3 2/2] ARM: dts: airoha: en7523: add reset-controller support
Date: Wed, 11 Feb 2026 02:33:12 +0300
Message-ID: <20260210233312.199766-3-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260210233312.199766-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260210233312.199766-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MI1P293CA0016.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::8)
 To DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|GV1PR08MB7313:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ad8e503-1d5b-4b03-0bd5-08de68fccc96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?upT0sE3cl2TU815OyeDEabLUm+83HaK8Pee7406f8KfN+wglBHsHCNp7o1KW?=
 =?us-ascii?Q?RDHzoYeFOZJyBoO8X4Re8PbrEAFyiYlJOY6HXpD2ANEX9A9H7sFAtfxZMbnP?=
 =?us-ascii?Q?9xaZtTDTrgcTByBiZzWyUhW/m3zLJKX/J2B1IF8BNFWpcnF5gb3g5ez/XDxv?=
 =?us-ascii?Q?FnpbIx2so35ZqiPnzfMYyuASJkceAOSjcnpPENaUtYIelRgWfSMj6t29pkUF?=
 =?us-ascii?Q?QdQ3OcLvNcmvVMStAvU9qW8wSLKT+Fwvg3xZhUuMJcRNic1ohc+vZ9G7uocN?=
 =?us-ascii?Q?IoaSUdpG8qHgrtWZ+W4vAPaalLQSxr65D70WTuif2oTgRWUEepYAToK1Xa9Z?=
 =?us-ascii?Q?QYmScXCkSqM9YCHQ/HrItLg0d/ksObW1iBxfmHvDd7u6W5v1IATBsbqx8uyl?=
 =?us-ascii?Q?Ty1/lBW8xlF7wKXHClMw7TQuWfCplvluW0tq6rUhmU3KptBa527QYlgsf/9d?=
 =?us-ascii?Q?sXvAuIq12scbwRAcPeRQOhpfoGyY6HpKassgoted0yndVr2qK1s1Zj2IQ9JR?=
 =?us-ascii?Q?86fEHNwIomY+ilES8GnVBnhHbhgvFKLQbyfqwxa4EE82I0E0P5BgCIHkKMzS?=
 =?us-ascii?Q?R9r5iauV1V/iQlDP9aqWR25VElXEzso5R61RA+aNaZrqVne8IgScJsRl6epw?=
 =?us-ascii?Q?YeKsbuIK1qVgedNUzjPkr16p9u2FtdsvOkvB1wJ2yLZLMgGseBNA1s7ILIGZ?=
 =?us-ascii?Q?5Il5lQDvh1CG2yxFgl9GUSE+JbQTN7OzJTigQFoBc3Pwbg+jOKCeVj6e5ofO?=
 =?us-ascii?Q?TPgMkJha2/TSwAZNbc8XCDurQ9Gbvwr9CxRh2ni80zZzBNRCIzuukfwFYp+K?=
 =?us-ascii?Q?qGtPsLvIFULgA9dzUU/lIQrEIju25HGHrOVqMZMffL0HqaXeanMO+DAo7hMi?=
 =?us-ascii?Q?ot5dfw9o8qWf63ydXAhy0On0Uk80nBPYJLbAjFRP1qopWld5Eu2cN/+7B6u/?=
 =?us-ascii?Q?uSzzsM5KHI4czBB/32yjpt5d3tT4PwQqFL0JrMNl4+EK0PwMTMgqukUnffOZ?=
 =?us-ascii?Q?yzOvrfYAaIR8wP/okgaynKhUu1yCYKEx4P7SvOlLkZ7ZXeZKkJAsFub8h/ld?=
 =?us-ascii?Q?07QOoIVtFVuXKv7otMFEJS2l0jaGPiJt/wLxKExn2l/EucqZ4J1xTQNUuRuD?=
 =?us-ascii?Q?28ho4jnftt9jqGkE6GzlFcz4ZTiILOZa/lTrnmx7PzeSdGsFkXiZOWSVRXZt?=
 =?us-ascii?Q?QHyjuSbucClyVAlK3OiQkHsDW+zqa2kYVk0KaxpoRWm0J5c/fzkxaygN3lPR?=
 =?us-ascii?Q?Vo583UWHFXTGrQU2TAKZV1987Oc2cbaI+XJE1xHJAcO9f4xeGkA6zJJQtStD?=
 =?us-ascii?Q?r5PS8hNAEeuxx2Nu75SRzhj5YbuA8OVfig2dBUT/E8PE8Io7D4A9cWo8v1ey?=
 =?us-ascii?Q?3WKlVBjbsWuQK31iWn334da87Cvj2V8A+Ys6O/wgDAdfoRoqTkkVehjrOWm6?=
 =?us-ascii?Q?7EgfZ9u4VUHtMk7MN4nvoneZEWzBFYDwQkYocMd7qrXrQz51gBSQrIfCKh2g?=
 =?us-ascii?Q?hw5cxs85QgMtrv9Nmd3N007vlQXpgYPfXqiAcUf781OIeSWtUmggmDh+mHji?=
 =?us-ascii?Q?Qm56w5cUL+JxlgpgTBNKvd1krG1LJkhOMmp7+2J3wdjmHrbrtTr7masSN5Nr?=
 =?us-ascii?Q?Ep2MPnAaEgrFkwdGQqA3tlM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WUZVMapVrHihJJhxAS9UxosjhAg4rTUsz0e9MH7te/Z3LNlD3RBKKpzXyH5Q?=
 =?us-ascii?Q?qRIB0Nt4Z48NZIBcSrtlXu7MN021R4Im9acOZYOUfO1bSGCHsGMFgVwNAoJF?=
 =?us-ascii?Q?85p43UKq9ql5nf2n4Li3SLFv7yi6HcK+QopLIZpXRfLhIog2v7K4scJD7wvB?=
 =?us-ascii?Q?cycJ0zaeEL/SH+EvMzQ5WyuYAYnn3kgC1pDA/iG7BUgMM0xys3NV8+g7Vf7n?=
 =?us-ascii?Q?mFwnRv431+44wQ6hkH31s/sjRTMc756dNw05j4MsbTDYGUGAZUD4L+5oek55?=
 =?us-ascii?Q?cepuFYXHU4o6A7iDpQjsK3aNohq2RZxdoXWSh7WyjbkeQM21CheWFnz/+JLm?=
 =?us-ascii?Q?Ms3LpoH5Z/oDvRtSnTbxw5woYAGbd9cVQ7QF3+3ohKzLaaeieI3gK4rL42zo?=
 =?us-ascii?Q?ZzREMIPs2uhTEEEXmLltBaKBk/NTeqERqWqxcKXYVaVRLbmBnQSIgdE2JNTT?=
 =?us-ascii?Q?gwEMr/u3x41eTzZ+ADhsphC3x+jSTmGkHLaT4CEUOBKivbbOfsm56TI+9ZPe?=
 =?us-ascii?Q?A/IDHrtq/oe8E3c/ncBxK52lwcypJkts6p+/GvZY3u7HzE2eZGPbKxzFohZX?=
 =?us-ascii?Q?lBQ0fp/5jjrBPc0ZLvYY16BDJkehuqkRqwqAyAK1JDrTfF9U4TdiBW5vVsRu?=
 =?us-ascii?Q?EK8ur+8/acMb/ovNBzKIIZtqDAiczzFx4vb7zQO0fqCU1gk+HcCobabJw5SI?=
 =?us-ascii?Q?gllvmwTe33Sr+Vp+Wcj8e2i5vznt+Jz6rRoAm+qNZBKVsSSFPFwY46Qayqyk?=
 =?us-ascii?Q?JbwPThj/GrB9IbX4sg8qM6kUgsXRiHpMjdHjbTMLrGRC3i0tqT6TyRJ4ea87?=
 =?us-ascii?Q?4XxLaq/GO0R2+cpuJqemqRLfByxUquWc9qSbnMIFNYoRJCKZVziWuWccuXHl?=
 =?us-ascii?Q?uFkk45M548cn8JwEi1ZoIJfObkMHsi+Gpcvn/nddSiTVt5zZU2sK6VTT28Zh?=
 =?us-ascii?Q?VOUpxGLE7gmC6Nhz95rOtF232xVLtV4EKWJL5srVW5hRQWIzGrAKVIY1dwLs?=
 =?us-ascii?Q?NhPgY5RnmswfrNr56+mi2i0CUqqzuE6QWRqWoi45s016Ww5np8fPCcoUW1A/?=
 =?us-ascii?Q?mHZVLqVyWjRdyi4Iw2B2Tt77rSaRO38aL5uyQtDDIJzljXYbKBNe8MGzD5SS?=
 =?us-ascii?Q?Apb6CsYOFoXbFW/ngQs6yrGQSh1lOu9efTzJuVW3Y7Oa4XIjaB5EtVqz+dBo?=
 =?us-ascii?Q?ndJnztyEPwLrrKSLbPWws+JcL7J3IXJkPLgxXdc4lBe0rAgV7pxXUbHprTaj?=
 =?us-ascii?Q?rwxe1r2WzwelpBwmKE7+nuQGsIOv/4fvJ2Etga3HuXTOZbGtZ4QOtq+9X3wH?=
 =?us-ascii?Q?T3fF7A4Ydq2RzBso19VQ36vJSxY+hZoW2rTWjuZoBLBYST9+x8XqxyWxl4Uu?=
 =?us-ascii?Q?d18+WyBUhhk9OzfC0c9k2btZHTAJ6Pd/u62RlI6CTeXNSBCoBr2MrxJFBgp8?=
 =?us-ascii?Q?o/Mrjjljg1hLo12k203VYuRqgQ8L+qtzhdp0IYqoAVRI044nqQx85DZlGxT+?=
 =?us-ascii?Q?2b9U5fo1zMHd9f2rVUAkfzhW2BdcdVo3A+01iC9MqTtzj1oCRKzvQpMjCZvG?=
 =?us-ascii?Q?OgeQ6Pw7UWBaaZuArxvSTz/4RdjgDOVGcJKu8v8PjyugTaUtzTZfjL8AUXqY?=
 =?us-ascii?Q?MOWcOZ/SeFrlu6Nv/gRPNvdiG13TtjBDchuaxg/RxDX3rOKYqL+6/TStsEpk?=
 =?us-ascii?Q?QPJ61m3H7X3T5HsVJDhxsTTU1H+OQ3TBheERdFlIbtgLB+FC0+0VuQa/Xo0i?=
 =?us-ascii?Q?KyMDjGZX2H7QV001XgzKKzs/37qUMoQ=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ad8e503-1d5b-4b03-0bd5-08de68fccc96
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 23:33:30.9078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: und8uSIA82nbpVPX1FN2W51bTb1uvkoXJk9AmI+zBZSrQ/7yckLj8ZZ/VBgvLioB9UM6KfedJh15aUamSH/lJJ0SMTZBDotxqSNc677Aqow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264556-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1fa20000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,iopsys.eu:mid,iopsys.eu:dkim,iopsys.eu:email,0.137.84.64:email,collabora.com:email]
X-Rspamd-Queue-Id: 28D6C1201D7
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


