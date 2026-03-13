Return-Path: <devicetree+bounces-275417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AfrMxk3tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:11:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C986A286BD8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C8F2E300D0D2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62EBD3C3C09;
	Fri, 13 Mar 2026 16:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="KluUghwa"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010007.outbound.protection.outlook.com [52.101.69.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EE627EFF7;
	Fri, 13 Mar 2026 16:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418031; cv=fail; b=Ikvl6MUVDkb21FCi9M8FlIyWEXNBrj6Ni8kjPcJOKyv2My2RuXbSGMJMzN/Ueu5i6WFkbpx7Juw1eYJ89LlOZ39BavWKDF83kcUIt0L0xdKgYsrpMg/TScHfjvCMxu1yP3CFZ8Vb8U6vTnmOlWTYyvLlJ1nuGNfc2uZAKfZ2Ovo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418031; c=relaxed/simple;
	bh=mRNPFeh0iYGMbXXo4NMfV/ZY5gFlZtVAy0tP48QDbLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=dtrhtEP6qJrf7zChc9erNeeeTVZVyb4zAdcy0j/8FvfpySzCkeYggrXl4CGePREcKC53I3vvWUOk0bysAdHTJ0xCZeSRU079HV9TcK/Mr9lq+Ga8kMYPLKvptPzYz+9j3IuQ6YD5H87Xhq6eQ0w458QvkGckIf6njOXERLv4KF8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=KluUghwa; arc=fail smtp.client-ip=52.101.69.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6h3ubS2EulKqAE9F0A0Azt+DfoaITUL14PljtbY/XN5sEVB1sRH2ooYDhgJVCDBNO12p+mbAxk3TwTarNvRPZAFlt/Zx81PDgH2twcHrJ+sh+8wXm3jgETH5LTKeiBRLehvtmdDY/uHpQ4dSGPy9NOlQ03s8VGTDgnm2wcBM2YeYxU4afq4QHAAVAHg0kJPEX51rKHmxqKZp8v20e+VDdo7Rhkjf42HZBHdNzw7wCAf/JkrVFxd+zOXll084996ZURAPtppFqWtP8GYw3x6Z3qYTMPv1561iSYMv8TOlMdQ1fW0ZyJ/k6Xdwc/03Jxu8Bs79D1HXtxo34QPUUesTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SlP3AqA9GM3LEsAA6xBK1EnC865DDqYOjx/6DNRnqoE=;
 b=kyun9N6eMJ5NyhVVFJws6B7p1HVJ4aOWgZKqHJbpLq1B4ePpWSapo315tqcXtSEdk1l5Onf1pJAE5eJZVwOSbEFB9oWjqWEIYSplrHlTxedSGowD/XLyR4yQXGG4jSid8jtZldZum5L6QiQqokl1Q//yrGXZ8I86StFgMDqDbJp0HI/BgXWWQJ5tjQq8tB7TenyhHD45iGEoxkwGsC15OwG5cSG6IXv+AUB7SuxXtzbmjXyQLU2AqV8ume9Kd5YR1AyOZhInQu0IZaYB8yd4nVnnV6l3LQvVl0GtSo0UOnJtVqx+pKteHYNO6mEWiQ3b3NQUkSiBSHiwZiERH0blXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SlP3AqA9GM3LEsAA6xBK1EnC865DDqYOjx/6DNRnqoE=;
 b=KluUghwah1GUuMIO9qvUAsXl/dVil/Z/HQr9fMXTj97ZDEE16p5rTz7QzzuwaAknbvH6+4j9NMxbRBTJFaficDSYZmXDGoez9fXMcozGacCpDdtkisfbRxZRj3ERFgv8ordDe8bTxh31qthh7w8PjsVDqCnSVyvrGwJ4RY0ycbg6LTmQXDnVnFzdZW+s1xyffK0iaIUBKcUQQ7nBDA8DQ5pkE1iKXoJ/mjH0JoPPlIaqxnpLjvrvLktFZwEmyuYhKQw4/1IiYwUsGwl3x6HC9aTVXkMEsNvzfm2Hgvb+vTXjq0s+MeldOiB4GB87zx2ESIz//uxDWjfsbAvhZdxs1w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AS8PR04MB8659.eurprd04.prod.outlook.com (2603:10a6:20b:42a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.16; Fri, 13 Mar
 2026 16:06:55 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 16:07:04 +0000
Date: Fri, 13 Mar 2026 12:07:00 -0400
From: Frank Li <Frank.li@nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 11/11] arm64: dts: imx8mm-var-som-symphony: Enable PCIe
Message-ID: <abQ2JA1otRfY_9XL@lizhi-Precision-Tower-5810>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <50e9dc6710d6b2fe48a509e463e04e6ae8b21e4e.1772898346.git.stefano.radaelli21@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50e9dc6710d6b2fe48a509e463e04e6ae8b21e4e.1772898346.git.stefano.radaelli21@gmail.com>
X-ClientProxiedBy: SN7PR04CA0228.namprd04.prod.outlook.com
 (2603:10b6:806:127::23) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AS8PR04MB8659:EE_
X-MS-Office365-Filtering-Correlation-Id: 567e5ec7-0273-47f6-fec9-08de811a9124
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|366016|52116014|7416014|376014|19092799006|38350700014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
 xVlzfpwsMKMsRqyi4JQMOwFsqX2tFWUzLwOwaRc0ttVvMZsg5MQwB6KtkQlfM5koIp3thhFMHuNYFOEk2eH47sEtYo4SgCc7F51fQT5yQRAj1YGyCMN/2h3qFC+pSVD+XhkDfqnLKUfYU1a6AFNpR+HMIn1jmf4BSlVFD0y8wFMaNHNdz5/6cxmk9E4ryOHtAPxZ2Pr2FkM32wa3Z13/89h6J59qRO9MyZLr3AkdbXQbU71X5k7pkKkEbFIeCQfH0uqTxgHkQsAUySUYz7o0gAtw4Foj0hvZA8aXjtZh4WfVDIOZ6GfZS3lpJtoLQJcxVxxrTY5QShaOXwVOpBhWjwle4pznZTal120hAnDCkfXu96BAz+R4Wfxp+U4CKl6FBzS8MvIAJganGQGUUo6jsixIgyvN9YaA+xHiWOMCbUEADtkdUOPvX02OOHWbqdoI34JXdLxnxiSYhlFYg7fk3eIz/I3Hfz+QB0NIZszGWoqNlJEEv95jM3ze/T5ZMU6onTJBXloMFyNYDL9mtU9i8IIkKsNVEUAZzxIf7zZNaybCehAWRBdoZHtfrz5Q8pxgQrDRmtw66sa4fsk0wfYI2DyygayiMGaYN/Tk400P0Uy+eaWmwoXsgx9atR1lrap/TsWK6o8bfHlnDP1FmspZitZl13a1HitIMD+m7sCsnRi70C2LhGP3TwEkbQxCWkaaY/i6XS2DAPVzU8XZygvIMRamSbJqQYye7C6Fz2xnfF9p6ikBdRne+ynO3ELPpCBnE32YoGUCI2Q1Ql3RUk4Oun8xEXpLbPWimSajIijGehE=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(7416014)(376014)(19092799006)(38350700014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?DZXXwMvF0Bt54TWF4tOAzfq39lKYPKmOlo3JTQK7TelOruFewdsIDoVD/e0u?=
 =?us-ascii?Q?nMndn5gvpzxhnjNdTyOOgOvjQshydApknKS99ROeFZyzbwZ6I235y+3hMDIr?=
 =?us-ascii?Q?mEDzoUcYU89f4Axl0LbsaKoEfy570j5mo4fm0iKj2TmG/RrRQZLboLHiOt+Y?=
 =?us-ascii?Q?Vmx+IYkBl4xNNuZ5QaSVMoOU/AegwBUGIbzAobD16AXYI0lMWpkn+QQq89JV?=
 =?us-ascii?Q?DUIzDUsUOSVaCaEDczfpmvW044c0mVJHJ3OZSX6kNLw3nQhs6PpIL2ufT9hb?=
 =?us-ascii?Q?JRiBb2/ZA/gZ+DM+3v9uA3GGXKVR4WSkzpnQ9Y8AinoKAHBfePWa7hsJk2Op?=
 =?us-ascii?Q?aXxMQzZ4C8jojvwS9vpyFXwOEcImj9m/L2bR5FDo7ce/DUzMa33RgVjXgyws?=
 =?us-ascii?Q?Ykqo+pANyHxPTBbwwRZPS3Z0r+5MeO5SBks1e8/aYxkZOMExnlMxbvU1tthg?=
 =?us-ascii?Q?nHUexejMup4Hh917MCtHCLU0wQHXS0eTkezSj1iRw1oOs+OCgOafqbRx9XAA?=
 =?us-ascii?Q?qRLxrz9s+OjO49tVY0I1zg/NZfwZdIPM1UVXZ8fLfeNSsircs+LlEVAfCoim?=
 =?us-ascii?Q?rkjmSPI1b1OsFViNpzHYDOh5pRDNB+jDty9Y5AEFaYBCiRafSR/UlFHz+5L5?=
 =?us-ascii?Q?az3ugHfONCat/pIKds6U/W8KOteZE9xEkVSzxklpCBT+MEgf5xo+Dv/Gvoi8?=
 =?us-ascii?Q?h/g8kI4OHMrxyINs/y7sDC0GppGvIPCgbR5rvSJR085Ab+XKt1BG4hMYMR14?=
 =?us-ascii?Q?KMfEFbQoI7XnRx2WCSrODPyV3ar99fYFVYsJfhY/5wixwb9vYFc1Kw8slK8O?=
 =?us-ascii?Q?kzzVIXd7zUzXheZvIiKMv8Ur/mqbRbRBiyr+qVGDudY8bim54QIzpAffGccq?=
 =?us-ascii?Q?I2mTWeJvRc/vGPyR4tdEbZ7PAExlw/FYtlR4cu3+XIfTETejx+KEAnztzu4H?=
 =?us-ascii?Q?ggabQP5MXatxQ6wA2NDjUTU+Ngb95AimERq4VfCmpnPH0dXN4DTiR4cxrtN8?=
 =?us-ascii?Q?fEqi2SgHwgImCQVU+pwAs7HwIt/2JB9sf01tiV0XsfyOc/LbYzd0vgpC1r0A?=
 =?us-ascii?Q?Gnqh7h1Wvfl6JURT58dXa6qNGR3zucQFRgPNChQp9mHBve7Be1H6LILCv+1w?=
 =?us-ascii?Q?aFpFTs4PaX3D8kbdzzvlHPdvKfu8I1aTuW3dAroylkG3VRCCxmjJu+otR8Rl?=
 =?us-ascii?Q?gnjtygvkARvm9aoHgKsE2eYZUFcRfBfisfoYm1ax0PGFl4q/Zra+ddjp/NU+?=
 =?us-ascii?Q?oeKaa9XSdZpdnor7YGlT/1pTlxZfEhe/XETWZOAcOfwUhwzMEmmN2fUZwnI5?=
 =?us-ascii?Q?FPiF0zZ7H9NkYU2QzHFPk7Us+Te/fgjAmvJfccj3VcQWLcJOzQ1BUfB5+K31?=
 =?us-ascii?Q?2l8WFLiKWMeKMYK78zT8ucO3djfW4lNomt3U4/ZTOxT8xjvmMS5KW/6vVH5K?=
 =?us-ascii?Q?kaRbJT40mMMhjdZEqD4GJtFfSiVy2AXVvXJTFAZ/sY+U8Ml2D6yCPbUoVYMx?=
 =?us-ascii?Q?uShPM/6ePt2RU1E+N/sr0hhhJ2MZWOKEHwiimbMZeEWOgq0eP7VNb8Z9snC2?=
 =?us-ascii?Q?qg3yBo8G4cULo4VeZA6XoAZuJanb0zIjuoW/0tEYMeX4lbN2NWvWIW/UDAuv?=
 =?us-ascii?Q?J35F54dmj9+W0mShTzB/11H8TP3Ii5SFbU2w4ENN/lRDF1/z7l4dE/V0gSbq?=
 =?us-ascii?Q?54uNRG1YQtrVgw2iMazI5bOPygXA4fE+tkGeZYXn8+7q/+n30FZy1TwsDBYm?=
 =?us-ascii?Q?fBHO1zuHNA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 567e5ec7-0273-47f6-fec9-08de811a9124
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 16:07:03.9678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PQlPFtVEPmYYnjeA3g3dsMfs4hXVvOPDKoJ5KPVT5iy5mh6k+kvUPWTmCFNWCfF4XGw428zCUZ5VHqN0BDyh1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8659
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275417-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,variscite.com:email]
X-Rspamd-Queue-Id: C986A286BD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 07, 2026 at 04:54:47PM +0100, Stefano Radaelli wrote:
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> Enable PCIe support on the VAR-SOM Symphony carrier board by adding the
> external reference clock, configuring the PHY and providing the required
> clock and reset properties.
>
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> ---
...
>
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	fsl,tx-deemph-gen1 = <0x2d>;
> +	fsl,tx-deemph-gen2 = <0xf>;
> +	fsl,clkreq-unsupported;

vendor property should last but just before status

Frank

>

