Return-Path: <devicetree+bounces-250247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9171BCE7326
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2C4C300548F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035A231282D;
	Mon, 29 Dec 2025 15:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="liPFcNUM"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011028.outbound.protection.outlook.com [52.101.65.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80D72F25F1
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767021639; cv=fail; b=VHanNnhNrA4BLk3RkCb0IRWMeoHlMonZ/v/sbb78iAI9aJDjKUU3q+3P6d2VXCWTNq21gQSp41ICfngz/+mQVvzg7vd/4aHbx+OKISSq5ES+rIyCrva0uR0+XX3OAuzw5SdbNDL+4RvpTdF4wAgwFULYa7AHHhowgqez7olaiDM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767021639; c=relaxed/simple;
	bh=rjFWHhqmQTzeSUkSNga1WgxgR9tSjBZR6zWd+l54cZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=pd9StRggIil0TFEODhNEveNmhNqrqGLVUT9/hGF0gN7UOuXbFsf5D8Am98WpULLJ/ohsMpHNeFYlJ91GXS42LItmWLmmTJZgRJaqmDkSOfBjb+el8iOkRHTNjpEGkMIRXqyAvjFAGzQ0EwC2im2+R4nSXxNxZH/sr18WFHWwu2o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=liPFcNUM; arc=fail smtp.client-ip=52.101.65.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zVxXp9PpEjCmkVIDDWXlWhcCxnbW8D4GJNb39PwVmy3JnMl/T5ziouZVQVUiItwp0LJBNKGBBF/BE81PMB+NIAxf7T9YeMj7qdwkojmY2TaD0yu532z8C0y4tsBw58iPSLWuWpOcEHydsTybPeAtRbEvmTW5sX3FtQAppQSsGRkP2Cye0YOo7iZYDv8sqVrkHzTvJ18C/VcUsat5EKe88kjXbXP7/1GtiU+2F0d8CaU+aqnhH/YKl/jUkJMFV8RxJQoc2R3l2IQmI5wrtlnkfDbSDia8XprlmRtvJ7bNL8GXzMx6Rcn6Qcbm4a8V9ezlB6bLcSdwRv2IpaAtVfcDZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0/A1pXJni2W/zvFlnQWuaTal8JmpMYHd4SU2HBL3mw=;
 b=yfUbw452ycFmSSQTMmXm4+CS9UluXvcnY99blKwAWY7fSZHysGGkc8wENEUcxOeJZYQE4g4cnntZQtgjKm+JHUYUWJpjlM9F0M5VA2dmDIg0DBrnya50eP59WtrSa7wsy6T9/Tv6UV+bIvVhLlieDM3koBboZxsJSXyGk12zp/MAaPC1rfxS3dLt0cAvUfbNdqQiuQVtOkkU/iqhLPC9GrPng0OXzB84J2AKEHLnkGQm/Z9OQbvehE7u7SWQTK0MoY2E6Pd5Kf9HAaeq2o0pR6MHeOOARlJzMLoK19NFs+/WjIlKjgn8cpYFWXZfwbtq4YOWy/1c7GDhaKXwwqkr2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0/A1pXJni2W/zvFlnQWuaTal8JmpMYHd4SU2HBL3mw=;
 b=liPFcNUMCIlyH3CFOPGGsrNdSeMTftDyzrE1x1aP8hCHV0qWAAvke/HpqpNX6CZ/kf00X62cCfG8nmvTDTNaT5ID0Ugx3qFtnFPUuqRy/JuDxY6mEwshJWNgSSDMwftZFOSnp8Jil4NztuuZyZqdSvbIsDFAbe/4AJmlm0TCaJzIpFQhmaEfM1PKqaDHcJwcwYRgsJSlt0eY2DHYFDe3y+uA7ns4H2NryebCXcCzx14jvYHl1i4mWZBckn+IKTdmdruhzmzJOldsI8yPKWgmX8CMzK0WPC5AyU7na4tmhgO+Jr1cykzA8Uen6HsohnyzH2N606OvE3b47JWig4xodw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8951.eurprd04.prod.outlook.com (2603:10a6:10:2e2::22)
 by PA4PR04MB7550.eurprd04.prod.outlook.com (2603:10a6:102:f0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 15:20:32 +0000
Received: from DU2PR04MB8951.eurprd04.prod.outlook.com
 ([fe80::753c:468d:266:196]) by DU2PR04MB8951.eurprd04.prod.outlook.com
 ([fe80::753c:468d:266:196%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 15:20:32 +0000
Date: Mon, 29 Dec 2025 10:20:25 -0500
From: Frank Li <Frank.li@nxp.com>
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Kuldeep Singh <singh.kuldeep87k@gmail.com>
Subject: Re: [PATCH] ARM: dts: lpc32xx: Update spi clock properties
Message-ID: <aVKcOXWW084h5aTC@lizhi-Precision-Tower-5810>
References: <20251224045205.1204414-1-vz@mleia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251224045205.1204414-1-vz@mleia.com>
X-ClientProxiedBy: PH7P220CA0171.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:33b::32) To DU2PR04MB8951.eurprd04.prod.outlook.com
 (2603:10a6:10:2e2::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8951:EE_|PA4PR04MB7550:EE_
X-MS-Office365-Filtering-Correlation-Id: f869d872-29a8-4eac-7dbb-08de46edcecf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|19092799006|366016|1800799024|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?a11uW2ucSS9wQA7dHGJUhkUnNtrZ36ex/O4wWcLebSsUK2hafmaDAuNLG7c+?=
 =?us-ascii?Q?eufgHuPnJea1PjqX/nXwJ3oM6xN7ZrnMpdxNon3JFd0iFIuYPLsXqM+LByyY?=
 =?us-ascii?Q?a155UHk+dGGLDdDfDZvp2cIb4XEK9rn7HmL/HZbRfq/YV5yWhcqr13+egSng?=
 =?us-ascii?Q?ozTeiNQNOUbqvWQu+wWepQLPFSWtYLTx9KQfNPEAzjhTc645y49r0FGNDB6H?=
 =?us-ascii?Q?gqjOORw16DvpygTNTmUwPd3L3jFGFMBCmDLl4J3y8it7u034d7HKuen+/i0t?=
 =?us-ascii?Q?+UMWTTbq8vBMsLjiH8/FBBzXDpu+G5f5Y8a9sGeqEn7Ma3hNf74htqCaPInU?=
 =?us-ascii?Q?U0p+brPJQ1l8fTVN2zIjshnBgj+qZiWg+fxtoV1y4zLtKh20o9CpahIvmlCv?=
 =?us-ascii?Q?eLsUjiy2P1jfYbafPhBGErTIEe97Y/XjkufpT6qeAA27ktiUTpH4zsy2Po2/?=
 =?us-ascii?Q?8KjudanAUwCj8BcpRnHL3h1e0TWhYkYa6BL5AN/o7NzDGWvn83uimnzimSre?=
 =?us-ascii?Q?c8p7QQpH7rfqKrrn6due2/DMSgcJxVVQ3tmI7gly4IL9Yoayi2khi9yK/Haf?=
 =?us-ascii?Q?7wB3+sf/BZgvUvWV79g6/5+DEnYEd+zJlhSJ5gf9y4wPhEUUPwv4T71E4YhT?=
 =?us-ascii?Q?M6fNXwFOpxm+zaNtpy7jB5JLkru0V9gvhyIj+eFa6SZwTtsY38YapDw2Q6oe?=
 =?us-ascii?Q?Ky94wuB0rDSoPVUMj7dPzIfLB1Vogl/VymFyu9aG0Uk5u5YmmZ38S9d1JKBQ?=
 =?us-ascii?Q?G6rptBLyX4Oa4fuo32rm4s9mY4C9RHECeBAgK8Rv0/GWoypxH1bnlbHxnpRT?=
 =?us-ascii?Q?rqVg8Vh7YWbSubeInby4Pe+tzGQW+hyjmqZPg8XJU65sCrRyBPRwqgg1IPHw?=
 =?us-ascii?Q?kDKFFixbaHfrZRAKDkucklNZGGVoCa8QcvYhm0n6zvdOLl2uTfNGDM2ic7wT?=
 =?us-ascii?Q?zC0VAd9tlcshWsVAm5szGTHhLJYGgSS4d3J0fKp2WDF5PRkazMiCs3UPdvH1?=
 =?us-ascii?Q?kQ31+5rRgmLlM/VkcFiFkc69fGnpbChstw0wON768CU2UFsaKTsJpzMqGkiL?=
 =?us-ascii?Q?FcPM2yVSNDwcZACUqHO+9lyAET7yW2zuBF39EPR0AXTk3lrwXXq6PNlUZxZ1?=
 =?us-ascii?Q?dRfcRGUUnWstUn72MGcvOE1OQqqi9RXY/pzwmXvbcmCB6kTE8jPSsAmTjmmx?=
 =?us-ascii?Q?oa2fqt3mp0+znEBPU5CPxzNBto0o6AX8g7+UZXEkgfviiH7ZaaPbiXZpuFue?=
 =?us-ascii?Q?y0uBwuA/CxzPkRAZdKecA3e3CSpBB28qY46FX5rPSkH3IdyqlB60yHO5ZbjO?=
 =?us-ascii?Q?bQSenl28Urg0O4LAqUKVqGYvUwNg8iXmYy2C7BCo2fahJZ2oEUVn1bRUeBno?=
 =?us-ascii?Q?mkFW85hGfaWUitq03AcqMf01PVTR0Dba+dRp3WcsnioNfezSMY8GalGQB04c?=
 =?us-ascii?Q?FKM9+zGxqGXvYeETkfYLzbMmBDpkgyK/GGsytm/HLa8/PyhTJxyse/tYlmnI?=
 =?us-ascii?Q?EZREMYp4IdvRjSllDKwXvLU3xU42V0I5kGhiQ+2uJZJcNb9b2yI+laFexg?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8951.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(19092799006)(366016)(1800799024)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rIKXno0Op7kLuZS75hDLdruE2DBiKOLibrhapZwqzi5fOdjrFppIMVy73qbH?=
 =?us-ascii?Q?2Ial7Kw4vBn73XoOXPu85WzLgwxwKO3swtnI4SAEsaPZrVGJAyt4bNMRL0T9?=
 =?us-ascii?Q?c7mrvBCI9Kk6ivWAFEwqZL2MmVQQMj4MKAso0d/eEqfL2mUwIMKRu6fizVdU?=
 =?us-ascii?Q?Ucz9Iojqc0dqEc14mWwYSMVqeQPzgLv85BtwTRlxS93e7lL3bFny5OqUCMJr?=
 =?us-ascii?Q?Abm11qthTwO0lQc3jVy3Qej3Cui4oOANy4xUeMPxJh9FTAirfRcALtB8PIwo?=
 =?us-ascii?Q?R0dB+p7kmxvMdwrVPyJTdiceV3s6B5vHU4WwzGw3ykE0xXNC3ZtwiWMJ+CHH?=
 =?us-ascii?Q?oT056KosWRUnb/lmEThTL7gD98g5hpsDIgd+cLyKlz2mUp0p1PBR8RQsbaFu?=
 =?us-ascii?Q?HR3x9o/v0xJe0i1I/5SZcxMeM2/QFNV96cm2fvWE+dCJI/dn1mG6QEKEtKs0?=
 =?us-ascii?Q?CTpLUPTGD5ZAOfME3iJsjufqn1TNpMWYsWh2UYgt3YipdQywQ9DJFlH+WxHz?=
 =?us-ascii?Q?/oIM7RxQw0ntIZRe0shjLG0QAdiK6SqWKtmDI4KmCerntybuCNNzTG6DpbAw?=
 =?us-ascii?Q?rIq9ITFCa9kg1EmDKDvQoQET0DMjaqRLmw5vfkFxDsnKB2qONX0AhKI3ZtVC?=
 =?us-ascii?Q?XM6QG0sZXi5JMqHb5HyAT2qnvk9h7K0mRKwpXI+4qNiUvqTAgLJC48X9V89/?=
 =?us-ascii?Q?/f26cMsJusQcJIKrt/b2kYSXMQ/z7jE4iOIvQiiJmG2xz3mrYILl/p42usfc?=
 =?us-ascii?Q?l0OBERlVCYzlDNTKVBssAC3eYRmsJHb4ENsTHuM54VtDBvkkK4Ds3wGFW9Td?=
 =?us-ascii?Q?86w1E99rLrCcCr0GII8/Lcg41Y6E7sALltNurSM5tGvKvoqpdxoi9256NKxV?=
 =?us-ascii?Q?0xggh9pkumEPD42W1ODC9HlFZhui0nPZ5aTxNWCBChY8pPcCjrm49IDnInqo?=
 =?us-ascii?Q?IgzAZ7Wv0tkeLQ3u4j7HHpiJoLgftR8M6FCijS8vl9qKV9FYhdLOUXq9Vi1i?=
 =?us-ascii?Q?kz/EdfAjtA48uqqQ4/c9gRAslOH9Lfb7HCUz7nJQHta9rPT9GJYnxS77K3zf?=
 =?us-ascii?Q?ol0ZYehILoEiq7F0EzL61I/YvHPI1D7559DRO+WhLARKDh+zeXbUnvIGwnD1?=
 =?us-ascii?Q?w5lRiAeu6HRTwMZHn2q637eMhRuSZjgZoOpENdip1c+x92Numa2y86SAfLnb?=
 =?us-ascii?Q?QDRP9DFk0xl3Qyg5080wLyNU2ZisdmFJXybgZIqwJgYqOJfoPTAMRtyI9E4a?=
 =?us-ascii?Q?B87GqX3J23lUPkVJZ2G8cbQbXX3WWILet/BOCdpdX+ZY/dn/GMmSww9vu4/a?=
 =?us-ascii?Q?fD41oJ4Np5nDxeI3JoGx1UGsWSpQcF3muFWDrpsp2xqo/86nDEHEURytjGdA?=
 =?us-ascii?Q?56dNpA4RJoXKP06fY5pbR8FEQ1OZ9YLqppoXCU/cxmiT/yISP4Uv4LNUEce8?=
 =?us-ascii?Q?OlnKvu8KMjfC+rac6s+HT7Eoe20bUX4DCrSBM5kC9YSeWvFh6yhakTu9xSJM?=
 =?us-ascii?Q?mGR8s6BQTj375KyRNGHbtjgOBdhqUkCua9SW3mD/nYmg3UTQScVvrFP/vm5l?=
 =?us-ascii?Q?B4unlGkI26daMKGmYkXW1WfC4Iojm+GuTcU2CbJv93bs/juh0+lruHg6Jgtp?=
 =?us-ascii?Q?NGm1lZnWgXRDVON1AOr4p6xec7l7Cd4Z4v3t9llpgnYraHwa+/9I/Kg3JrxQ?=
 =?us-ascii?Q?Z+tAR4KUHFDJAtaO+nbQLUkniA7WlgdIztJt5ea0wgPpLgK2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f869d872-29a8-4eac-7dbb-08de46edcecf
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8951.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 15:20:32.5225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QwvK+8J3Qx3x/f42ujeem2nk816Uidcx1WZEHOoSTaf6fBFh5ly6Et6Y65tleolxFxNCQwY9vwa5q/iihn3OOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7550

On Wed, Dec 24, 2025 at 06:52:05AM +0200, Vladimir Zapolskiy wrote:
> From: Kuldeep Singh <singh.kuldeep87k@gmail.com>
>
> PL022 binding require two clocks to be defined but NXP LPC32xx platform
> doesn't comply with the bindings and define only one clock i.e apb_pclk.
>
> Update SPI clocks and clocks-names property by adding appropriate clock
> reference to make it compliant with the bindings.
>
> Noteworthy, strictly speaking the change tackles DT ABI by changing
> the order in the list of clock-names property values, however this level
> of impact is considered as acceptable.
>
> Cc: Vladimir Zapolskiy <vz@mleia.com>
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> [vzapolskiy: rebased and minor update to the commit message]
> Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> ---
> I do resend the unapplied change from the past, which raised a discussion:
> * https://lore.kernel.org/all/20220311093800.18778-4-singh.kuldeep87k@gmail.com/
>
> A functionally identical change has been sent recently:
> * https://lore.kernel.org/all/20251029202801.3963952-2-Frank.Li@nxp.com/
> ---
>  arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
> index e780451fd335..206c66bdfe41 100644
> --- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
> +++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
> @@ -172,8 +172,8 @@ ssp0: spi@20084000 {
>  				compatible = "arm,pl022", "arm,primecell";
>  				reg = <0x20084000 0x1000>;
>  				interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk LPC32XX_CLK_SSP0>;
> -				clock-names = "apb_pclk";
> +				clocks = <&clk LPC32XX_CLK_SSP0>, <&clk LPC32XX_CLK_SSP0>;
> +				clock-names = "sspclk", "apb_pclk";
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				status = "disabled";
> @@ -196,8 +196,8 @@ ssp1: spi@2008c000 {
>  				compatible = "arm,pl022", "arm,primecell";
>  				reg = <0x2008c000 0x1000>;
>  				interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk LPC32XX_CLK_SSP1>;
> -				clock-names = "apb_pclk";
> +				clocks = <&clk LPC32XX_CLK_SSP1>, <&clk LPC32XX_CLK_SSP1>;
> +				clock-names = "sspclk", "apb_pclk";
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				status = "disabled";
> --
> 2.43.0
>

