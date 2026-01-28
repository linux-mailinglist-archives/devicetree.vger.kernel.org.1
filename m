Return-Path: <devicetree+bounces-260503-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mF41C9s3eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260503-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:22:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8ECA5812
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF36D321D0EC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8CAF3090DE;
	Wed, 28 Jan 2026 15:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Msj1g1Op"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011036.outbound.protection.outlook.com [40.107.130.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1852F83AE;
	Wed, 28 Jan 2026 15:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.36
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615027; cv=fail; b=NRwoP+mYey0yiMQQwxCdIpUISBXOq77HSMttc6SR7ai68X3H0HbQ5Abiidgd6gaJCJL5OUDPQ59uDCNJiiI9gkYso888cz3JN44DsV7Ja05OclPkj7/yOB4Z12Vb6IMq2eUfAni6yB8MULApzeXvGu5jru2+EQlWAboz3t9VSRY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615027; c=relaxed/simple;
	bh=Z4YlcYQzuiRDOyoTu8CuCO0sbkb2zFfJWVRg+3O60H8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=BDnfiPczdrJhurwiKibTBLyod/2pRr2JJlqPHfwPfDaxAL32eQhdAxk8vvYOjkj4ErJvHApySGvG2sI6K2J2Tl5La82yZKm1u04Fouq+S7h2Y6UJKbfoSNWUSSiCkZV0/nwCSiYqcg/JOetAzx/hHAJZdjC4cfXabEFTZWr/lL8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=fail (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Msj1g1Op reason="signature verification failed"; arc=fail smtp.client-ip=40.107.130.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tY+HtexllqvqU30dzUwUuaFUktNKTPkWW16SfOCVWafF7uJp0ZFsrSiB620cSTC8QIYQGHTwmamkSpyf+zGBENa6mnF1/cKoHSX33uSrB/eFu36kvWDfppz3Wye+gWmTKRoxsrhWE5mg6NufOFRom669ITy1OTRMB0q+m7T1kRq8BPIr5idOZ07gr+KTim1gziubcXG3QMnRgoqS/U8ZPyGNRQjH3yiC8FcLaGS781a1eGAOs/Ddv7Xp7x4u7xYNGcMG8x8ya2bBNPX4wSivuZD9UqxK5F07VZXfRjEB3kvAmOAz5CxsOasJIjEMBO9UbXcucdvYM60YPwZSWJYLbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qy4QC9rMSruRYMtWGeT1Ux+abBvWwHAPP3IM/fHexQA=;
 b=xsUDHaaBPC9wCkzP/11iVszVzZoduy843nSS7kHIN9Ro6Fqyslaf8yG5ZBKQ4Fq6x45GviDhdylvCSiXZXIya5bmgzJRXpTuGw8i+0YhtIYlIJy5lDsBVBwdLrV8xIX1mBgDtTkFY3C2JUqQJBOXVlN4ufQwwjBVHSi6LQ2D2Is5WgdQYTY77h00NQ4eNCspqz1L8zyWod4Bd4kU+hAGmbu9/6BlZNCRzaYJkXNjHm7O4XhdJ3FwvG3ASaOH/8q6eChV5ougykLYK7yWA2nzrvrf/yVXP4Idr9SNpM9ZKf0wbpGLhiutvBJxdmvX11xxn4EmTsqZsmAZRI65VFtG2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qy4QC9rMSruRYMtWGeT1Ux+abBvWwHAPP3IM/fHexQA=;
 b=Msj1g1OpQbA4tjfUCDSKTpxw+n8eh5SE1+kIyQ/u5tEeY22VHPDcnC0ubriB6scPjUyaCQnqIJjc9cPXoPycg1F1hwb3FJpnbeIaNdo6e8QCErTmozA497lpBuJANr5SA8VrPZkvfY8HgVxBWUJQUfWe6uBNqk1HR/bEUAhCJabKZp6cZo+h3ArRQ06XUxOhdXxQI4dEHMWqDOYivp+M/DDYpUDH4ZKu96vQCo868QEuXR2afYJjYfsLSa/0ejBL/8EWMocBFOsH3W0nR77H1qYQAOVBYXZIphSLIdaf7h3rZBwK+u7LcHXLwEuQeLltXciubL1kJ5GUsIPqxeYKzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by GVXPR04MB12344.eurprd04.prod.outlook.com (2603:10a6:150:318::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 15:43:43 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9520.005; Wed, 28 Jan 2026
 15:43:43 +0000
Date: Wed, 28 Jan 2026 10:43:35 -0500
From: Frank Li <Frank.li@nxp.com>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: freescale: fsl-ls1028a-tqmls1028a-mbls1028a:
 switch mmc aliases
Message-ID: <aXoupyIdHbZsbPNO@lizhi-Precision-Tower-5810>
References: <20260127085533.9738-1-matthias.schiffer@ew.tq-group.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260127085533.9738-1-matthias.schiffer@ew.tq-group.com>
X-ClientProxiedBy: SJ0PR03CA0197.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::22) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|GVXPR04MB12344:EE_
X-MS-Office365-Filtering-Correlation-Id: ac9eb4c8-e6a2-4043-41ad-08de5e8403fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|52116014|366016|7416014|376014|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?iso-8859-1?Q?6r99AJqU0L4s/X3Q0MgVR6x7ao7JIGInBfi3+og8d4kVg4kfrIfYbC4G//?=
 =?iso-8859-1?Q?xgAvEioQbb1QkWw+xAJQEO08BNKjuAvkbTHC4yA/YUZ49K25XF2XNaN4NI?=
 =?iso-8859-1?Q?ItTjZLaFVPyE2wI9zXkiVlzZMiW2R+O2JkSKYGx4+EeUYCkydG2uoiD+wn?=
 =?iso-8859-1?Q?9M31bQepboeBKBrdweoGo7OEIPGoOC4XS0klaeyApasLIuSt5TC9R+DXMR?=
 =?iso-8859-1?Q?3d06zh1TmEOhOb3V5lQIGRulUQwM5njooRDqUgEJFGR/MYhSjDFZelEcTw?=
 =?iso-8859-1?Q?TocjMRBXVDqCOEycoGlyhsE5FB0CtIrXawRsQj84UtGGvM5HpcH9jWRu+h?=
 =?iso-8859-1?Q?nnnhiYZP7ygv+rEfAGdmiSl0OXOiPEarVb7U/1DhvT0BmF8JXREPXK3rgJ?=
 =?iso-8859-1?Q?LbDP59fwMDxpJHiN1s2ikGbcbdz/I+gIPI8v0yFb1QL8Qbn9+D9oUUp7SR?=
 =?iso-8859-1?Q?+Qytb08GeUBYgDjSJYD6EZVBhmLeengI7rZRH37J0TXW5ale7ZlZvBfuG1?=
 =?iso-8859-1?Q?d7EHCXYuybz96ypnA602VLrl+lM9Umu6hc3v40BEbD6umuZcM2/VUz94mR?=
 =?iso-8859-1?Q?gILRrTklmmAGXncV7wJ/ntIMLjuVWBLpp6Cz+9ejpAkEecYatPzeJnpbhu?=
 =?iso-8859-1?Q?2k+kWDTEBojrk8oaiQDTnnYthJYnyF/7JjnL3NS763LXfBeBCW6h+uyv72?=
 =?iso-8859-1?Q?Sei2w5DHm7H+YX+iN1sCE9sMcnJXYgRca8Ae3eHfcO877OUJ+wb+FzlW4o?=
 =?iso-8859-1?Q?5aHaPGQMl/o/RjYZYh8BH0cw+5RsGAAvn+LIJmIGQgI0jviaomGEkbuEfs?=
 =?iso-8859-1?Q?158Vm71r0FEY/kr/yDWqtXR8LVgAuJtZe2zg2vIdrE6+k0drPIrwnAzyw3?=
 =?iso-8859-1?Q?y4gxxOsvJqCvTrfPJpjWvEvHM7jk6uMT2D88lmzV6fhIkutq+Ueicu4j6w?=
 =?iso-8859-1?Q?nzlM8i3h//FuppCBoLh457lRrGVJjgni0cNVRKplfHY/FGPyR6kXjARjIR?=
 =?iso-8859-1?Q?uicxKOXdtYYqYqWpD6kc6tCC4so5bpljHphtmzfuSdYxMQ6uD67WMdplu1?=
 =?iso-8859-1?Q?srLbCVfRu/A1oQqo+kT1YJ+sPnIETzq/vqOKM0Z5nJ1nrhA7sjKZhT+xV2?=
 =?iso-8859-1?Q?S10fq6DvT5Hmswdkq5vlye2Ap4gymIB+oTxJlojmRaEvyKjisYZXPwLcJ+?=
 =?iso-8859-1?Q?AJdFKeowCUMhyr592puscBZDcixgNTDvUpO3k+TG2kTflYWmtoBrUctGjX?=
 =?iso-8859-1?Q?W6+IsDVf2fkruaggTC7ChzTtULYN1q+eQ0wm9ziqmJ9nwA77Z9lPJBHmo4?=
 =?iso-8859-1?Q?Rj3Gxyyll2LLoIc3BWZdWd1yHcFlKmXSESBnX6ee+pXScQsNfK5Yzpr7pi?=
 =?iso-8859-1?Q?pGXlAm7knMKl63NLkd3Tqr37wG+NrQPti2AMdY3hnvnNKLqVqSPA9b5reW?=
 =?iso-8859-1?Q?nz+bHaylKkoIeeR5nolLf+I3rQXMUPON/W1cvbhFE1wL2F38GjJSst/Lqu?=
 =?iso-8859-1?Q?8T7aSv8FhMJL9rT0mfsjEHJQ/ExgnvwnwuTzh5QPtiRmcxMLAM1Ex7wJ3z?=
 =?iso-8859-1?Q?06wNg4wqzYXZmh12pGdZu+0WFXdXkdARHERy6kNezSOxTZNlDu+oFokqgP?=
 =?iso-8859-1?Q?mpBGmMWYelZhg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(366016)(7416014)(376014)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?qaGvoADk8udcJvOER7hDEt+JaTVxKehT1AWFE/3o2E4DGdJkIxe2hZFxRh?=
 =?iso-8859-1?Q?tRdmojhLCGQDPtFeY0fyxxHEGAkJ02r07k8KlQss9di9G7h1xiaLQTYQvO?=
 =?iso-8859-1?Q?EfY0KX/dfFayXnt1hIR9D9PbtVXBsNoPJuPHrMZ6zuJmLijtW0GNi41u0o?=
 =?iso-8859-1?Q?0CiEYoeJTxl4scBDiylQvvyiGLTAOnI3p0DAlDHN5/CshS9EkDSyZ9NMHX?=
 =?iso-8859-1?Q?fa2xQtotIVWX3H8WQr1qpcjuDI4XMmD3XXHjbmgvZdUZMWjEl1LgB9dRxC?=
 =?iso-8859-1?Q?K+RQ4KpXGyVVLJn1MV8tTkKxaKTj/gx4pa/4F2726oohPa7c9dLcliUk96?=
 =?iso-8859-1?Q?RUf/QAkPV2cSBs/oK2iZRHMpNVcL3+h0q3z3u+ZPE7WwpG0fgCLQB6vNK+?=
 =?iso-8859-1?Q?0yJ3M7A8SmlPa5tD+MFlU7TGqE+0KsFoEu3U/m1XpZ1cGXHl+Cmo6FbLiz?=
 =?iso-8859-1?Q?/0VK2Wz4Nq7dnY4rJSEF8yEnAuf7B+BNNQyHR3RC38c9eg1Tyd3DYDnOFs?=
 =?iso-8859-1?Q?5XwXRQ3gAguaO9TnJ1zzfryhxSJG6GEtu7S6UEfa7RRxEz7TpxEZB24kQq?=
 =?iso-8859-1?Q?PCqBVQJ8pT+RVatyVIMGV+yHpZwACzmW4V/x4d2Dsvbwes2iCzo3tzPxl2?=
 =?iso-8859-1?Q?ZSxA46OCTfeChV5ELQSl7H06mCOQJCgIWF+BAyNgIRxdEtp0ToZJAg82bz?=
 =?iso-8859-1?Q?INJlsNuT8SAiQUSY/G+qpO6UfHFOwcbKneR2Jz52VeeFxRE8PHrOJEgs5B?=
 =?iso-8859-1?Q?gH+tow0je0XuKRYBBaSc02LFPFDt+JogN0cKC4YsITTsqlIQFcLP+PKaN9?=
 =?iso-8859-1?Q?of8cPTxiJiL6X7lMmtjE1ByckdfvXeHwkticU86j6KcYVB4OdcDUpNtMR+?=
 =?iso-8859-1?Q?eSQC02ei3BysVSnO4JIwj4Oda+uLssVMvUK9mvg8gtBeYWChtWUkNvTkEZ?=
 =?iso-8859-1?Q?0jj080wLyN47dHjiwO7uTTscLdTBCB+XA0MbKBYMAREQidOQrxStAhNgsW?=
 =?iso-8859-1?Q?Bk6AQDouJAN+2JAbCPI6VBhKY/QrVgTQ3G8LwPILWATCCQfvhVpalIOyU8?=
 =?iso-8859-1?Q?2tqzn7UVqcuz4oeFl1ZdlNfmdjxKuKqmPkyiTdTfIWboxRpCMCq56VWZbn?=
 =?iso-8859-1?Q?bMtbE/UycJBZLGpdyes0Cv5CHJMPnNvIIiAUQO+obTQNK/9/oEAZnpVYpC?=
 =?iso-8859-1?Q?r7wSz4cOtht0PZucbbXa9eDq7yvFOrSu44pG7GRxOIN1IAvQHTIif24Ch+?=
 =?iso-8859-1?Q?zZMoS7SyezAQbhAk/QWUOcpXhuyGUfvRyUHvOBs6EcSJR/496LmkCk/3dl?=
 =?iso-8859-1?Q?vF9pFHKqKWiaEetM+jJEm1IBBE3Z2iiSLkWFQlk4WfP+jo4cV08PEqexvF?=
 =?iso-8859-1?Q?Ig+EZKAHoTMR1+GgrMf1GUclJfqP7VUOA3ZzdTbYes+M1JtFOQkElp6Lpv?=
 =?iso-8859-1?Q?g6YTDQY4/Fva1wfc3YNhXcqoXWvYYciO3ZJlGrmK704Chnw1gRLBx1Pq8v?=
 =?iso-8859-1?Q?L9l0vMZ1STNUByAIGjiaEm8vgNMWUgEQJdnr6Hf5c4WEYrL8P+QMNztP9d?=
 =?iso-8859-1?Q?HVomoTCvSGZUIqPUVoEMkZ4JhVcgMlxSSulgiq7epHBmBytFeIjaXwXpYW?=
 =?iso-8859-1?Q?fjZ655hG1+ejtzhI3T28rCTgNQFPOiuMXKxXEvV8oU9Aw1SoKFuHM7M1mc?=
 =?iso-8859-1?Q?Bbhy3lFhuKK74LyBXsWqtDFh5rIgX6SEemXOya+DQPLst13b30hKRjuEPS?=
 =?iso-8859-1?Q?qYBud3g+TQoJnpFTdM2phccNG9O1gTolxD1eBeiyQpMTtM?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac9eb4c8-e6a2-4043-41ad-08de5e8403fa
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 15:43:43.0170
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfifbSHOlSfy0naHo83saHslCmnMSKAl8R9+sIavsyn7Sxc/hyHNa7ZJ41BRF3Em2koowea7Syh7DVsdRcpPdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB12344
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	R_DKIM_REJECT(1.00)[nxp.com:s=selector1];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260503-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nxp.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: 7C8ECA5812
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 09:55:33AM +0100, Matthias Schiffer wrote:
> All modern TQ-Systems boards follow the convention that mmc0 is the eMMC
> and mmc1 is the SD-card when both interfaces exist, reducing differences
> between boards for both documentation and U-Boot code (which uses the
> same Device Trees). Adjust the recently added MBLS1028A Device Tree
> accordingly.
>
> Fixes: 0538ca1f102d ("arm64: dts: ls1028a: Add mbls1028a and mbls1028a-ind devicetrees")
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---

Reviewed-by: Frank Li <Frank.Li@nxp.com>

>
> Notes:
>
> - Gregor (author of the fixed commit) is not working for TQ anymore, so
>   his mail address does not exist anymore and he is omitted from cc
> - Normally we would consider modifying the aliases a breaking change;
>   fortunately, these Device Trees are only in linux-next for now
>
>
>  .../boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
> index cf338b2e80064..426a81e1743f1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
> @@ -17,8 +17,8 @@ aliases {
>  		gpio0 = &gpio1;
>  		gpio1 = &gpio2;
>  		gpio2 = &gpio3;
> -		mmc0 = &esdhc; /* SD-Card */
> -		mmc1 = &esdhc1; /* eMMC */
> +		mmc0 = &esdhc1; /* eMMC */
> +		mmc1 = &esdhc; /* SD-Card */
>  		serial0 = &duart0;
>  		serial1 = &duart1;
>  	};
> --
> TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
> Amtsgericht München, HRB 105018
> Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
> https://www.tq-group.com/
>

