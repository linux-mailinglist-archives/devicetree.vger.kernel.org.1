Return-Path: <devicetree+bounces-152497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E74A4939C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21F483B5204
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5878225332D;
	Fri, 28 Feb 2025 08:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Q0UJLTHa"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR03CU001.outbound.protection.outlook.com (mail-westeuropeazon11012038.outbound.protection.outlook.com [52.101.71.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718E38F6B;
	Fri, 28 Feb 2025 08:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.71.38
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740731610; cv=fail; b=gUtQJaKLoVt2NYd+bWD8BybvD/z7DO8gwqxBztED95r9Kn14O3jQV3fgu//LGnaiVDfPH3kaeqmpVJfoSJqbNMQzi50HIDzaHJ4UYR86kY/w+d5blcBR0SjqZ+1Nvb2dm3nL2JVSGqtpOjvx8rv2Mm3/+vnclh704sEk3jBYXRU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740731610; c=relaxed/simple;
	bh=8oCuPsXbxPlbjZ24Jw8nmsGwZplQoINELdF5bCDreds=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=FuPv7s727NKbkydabg9/twmhceBjqvIKsf7ygIyLbMRFa5PIctNMRjQamdu0NHmLuqyLyvUJkQGu+C4ua+Zh7r/l67bynnVBooPrfwM1MMgyty0N9InpMa2xVBH7R8NJa5iGJ7JBFAz6SglYmvvVHfWi9JSXp77RmNn6zMTG9YU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Q0UJLTHa; arc=fail smtp.client-ip=52.101.71.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lkdgFhKphKhEOm0bU4YIMCBEe6PWzKMk2JpYRrppKfp7HVrb1hAQInihgcPbYY5i2fZZ0kOXHqJZySdCsz7JrAVAjLz+jVcL+9OFkSsNGs83kVgFCtdvgKcZ1seomn4bKV9fuDgYlO9iR2kAyPSkAzwITI4fnHSKAkYaXWtp0MQEmwT4KRpHbNFNS/CO4MvtSmVU6bWRTrNT63r5QY3+TYt0WSuq+l91LgGqJTjtTQmvGNo7HPBmtR7QeTaCw9qB1cOVes5g3eb5FIhsq+ICY6uYYiAGa6sXlH7DmWkxm+YFkKrLn8OMCtEhiucsq1GSVnTSIaHohDvEfXzucCCg9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBZnH/+RCmjj2LM/TPFMNvnwZT+Vz0Kd/LBDz5I2540=;
 b=T1qWNH+9UDBjMIfxlNKbFuqHvahUxRpYi4/HIvF8SiKSEa9sEatOY3j0HCFaRAGU0hImK2xOBs/orIlpax20ooQeiml/a6rjoTsn8j6RbkMQ7plA8L8u4AmzlxwnSblQkfpctER/2C77gaCfpSaDmk/iyX48DnWglDfq32RH1qJizIzcvs5AfAGoBAk0qWWubhHJbvjL6ecrjx7s3AM73mlx6X/BgJas4RwaCUL06+s1h5DHYFhZ0dcKEtI15arSGRCgBzqn5sUzXcy851wxRUjMPIoMx3Org4/T7AtZy0UFm1TEx+m2ThDJvwSwQGz1yDG5pCVgo1UD52e7JrgO0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBZnH/+RCmjj2LM/TPFMNvnwZT+Vz0Kd/LBDz5I2540=;
 b=Q0UJLTHa5r42mvMi6VjtZWJEooHdu02C46wC/s8nCcwu1AxLOh3aElrzQ1jbqcNHPJvksxq4EONu2r+kssPPZ9Zpreuax0VfilnXR6eigPUgzFnrd43sGqTm3dvKRJ7OiFN0lnzDY47qZ3r9tI/9boSD+WN0Q9rU0TxwBHOp1r6LfUor0fibZaREM5H1Anv83AlCkoXIDXyTQweaaxbQfdvQ9n9Uo3u82a+Qx0zTaaqEJWrEB/AiiVzwAR1Eet9e4qNjiuk+czsEz2mlchIESPSWSyhg8lm3zb7hYqr2gLKvdal8VUFxb+pPOAKTFT0H2NvEC70zyL4J/j8su2DDKw==
Received: from PAXPR04MB8254.eurprd04.prod.outlook.com (2603:10a6:102:1cd::24)
 by AS5PR04MB9943.eurprd04.prod.outlook.com (2603:10a6:20b:67f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Fri, 28 Feb
 2025 08:33:15 +0000
Received: from PAXPR04MB8254.eurprd04.prod.outlook.com
 ([fe80::2755:55ac:5d6f:4f87]) by PAXPR04MB8254.eurprd04.prod.outlook.com
 ([fe80::2755:55ac:5d6f:4f87%6]) with mapi id 15.20.8489.019; Fri, 28 Feb 2025
 08:33:15 +0000
From: Ming Qian <ming.qian@nxp.com>
To: Nas Chung <nas.chung@chipsnmedia.com>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "hverkuil@xs4all.nl" <hverkuil@xs4all.nl>,
	"sebastian.fricke@collabora.com" <sebastian.fricke@collabora.com>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "jackson.lee@chipsnmedia.com"
	<jackson.lee@chipsnmedia.com>, "lafley.kim@chipsnmedia.com"
	<lafley.kim@chipsnmedia.com>
Subject: RE: [EXT] [PATCH 6/8] media: chips-media: wave6: Add Wave6 vpu
 interface
Thread-Topic: [EXT] [PATCH 6/8] media: chips-media: wave6: Add Wave6 vpu
 interface
Thread-Index: AQHbe5uMVSM0NDwCKEmUPYEH+qJG1rNcfeQA
Date: Fri, 28 Feb 2025 08:33:15 +0000
Message-ID:
 <PAXPR04MB82546C88DE6DF137D00DBC1BE7CC2@PAXPR04MB8254.eurprd04.prod.outlook.com>
References: <20250210090725.4580-1-nas.chung@chipsnmedia.com>
 <20250210090725.4580-7-nas.chung@chipsnmedia.com>
In-Reply-To: <20250210090725.4580-7-nas.chung@chipsnmedia.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8254:EE_|AS5PR04MB9943:EE_
x-ms-office365-filtering-correlation-id: f55f6550-b26e-41b3-f543-08dd57d28bc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?PzCgSsrALVOjFpiIF+HPauWlT7Wv1Z4Zn181EwUClMh9dO+S870SSpTYB44x?=
 =?us-ascii?Q?ZQjbD4/zW8L4IF4SbL0e2TuTvesmv9kt0eiNQqMQUmvdvnrVd3M4dUYVxwTW?=
 =?us-ascii?Q?2LiYHkU0T76HhOeJvDD7156zaCu5oxZ6zv6aEYb1n1N4igfZAJeFUTO/Q7+x?=
 =?us-ascii?Q?U+Ofz6L45bAooCqoipN3X1G6CRH12ibwz5De2yVMEn77xa6dNm8vr3+wLKip?=
 =?us-ascii?Q?sX/+O1PeIDj3GReDmWRRLSnIIFZLaxdevoTR1LMdLIY1mFalmHq/xhZ+2tls?=
 =?us-ascii?Q?7AGuLCCjbFvus/NvaLyPorlUTBfs/jsXjUyF5KA1CJTQnHgYIo9R4LptDy8D?=
 =?us-ascii?Q?yOViIS1nuSIO6qDBekWLcCYHvlTaoGpfG/Mmg/JYOleKPpMNla01fWmXyjKM?=
 =?us-ascii?Q?jPbK/mkfCB1DOSTYfzzIsju8gdb9P0JTj9DsVn3HQL2I/qVig7zGDT0Brgt0?=
 =?us-ascii?Q?QlP4FCAZwK+FF5QK21kp97xDsYjMdcq61PZ9/ScSRMfK5AtmeLMfErqXC/RW?=
 =?us-ascii?Q?jNGOHzKMrEjmaOvjA0Yui6KrRCoUpbRm3nR2Z3BnJjq3dfTdXRR2EkeRW6MP?=
 =?us-ascii?Q?0zn5jQnmO1/jpOgvhwVCm/B1+luj0/atdE5SezMLrrH2+KFf4HLpQ9G7UeGA?=
 =?us-ascii?Q?z9r20UB+LA0l/Kb+AyJfTqWy2NaBefQWoHgnxKsX3GHn2zVi6NRJCcKqgzG3?=
 =?us-ascii?Q?KCpTRFKl1wi4ilBfXLS5tgPV3bbpAyx7lGMf7yVFARid2kcqzRumzL7EPrLV?=
 =?us-ascii?Q?vbB0g1toKLED0dxZ7hzodwmcwIDcmo0bNasc/os1dosl3viPnYMvNbq+O9wq?=
 =?us-ascii?Q?fPziFU81SLf4s2xb1Dgjshfe+ViAXvLUuXE6uUs7YFq64QAIh4Ik41DjRI3u?=
 =?us-ascii?Q?XQzTABhwa/+qznzubd0i7BXtt2qey1j/Jvype6p1PlgVQFnYFQo41+wd4nF1?=
 =?us-ascii?Q?rcoW0s7MlIaGc+908Wos88j0it7U0bnkmikQGaNGIPzgqnjlg7UYKnU1NT7J?=
 =?us-ascii?Q?Z59t/jicm4xDyYbkyCUzVVL5ywpk5OTAYApWWA1KTxjWG4SMXjXZfZHftlFo?=
 =?us-ascii?Q?hmdnJL79wCTUAIfsO4cnfngDaWoqHhKIfLXTGzNzI99Z93JcYXAI5deNNYeH?=
 =?us-ascii?Q?7rdvw6mzJmY+h7Z9qLSU4jsLQ4XJzGPjESAm+6Om7Eujd0byygC9vWVlsh6c?=
 =?us-ascii?Q?BIgAMYv0DrcTag+JLQmQ+hOPycigad8qlZ5aOQRm7QVVW8FUxPGqMVZuezlv?=
 =?us-ascii?Q?CtV6Pr+/iwzzKedsV8vUc+edgQf0EfbrupNipw6Brg0VQsYobsPWoSy3x238?=
 =?us-ascii?Q?WRbI8C0oKgoQ9OmoS6WHr2XiL0VR30ldEcUk+03RhXrUnH5mm0EqBh5DNVh3?=
 =?us-ascii?Q?KV6FWMBoDRasEUlpe1hhJ73KKYA5jzmZQHV6Xs6ADeVpZOYLp8it0apHm6x3?=
 =?us-ascii?Q?hHUpV/M95pIDxSaUsHZq0/fHWAFnsss2?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8254.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?+HLhRaZE9Va1SIxBgJXVs9bxlRNh3iDEA2HVGDGUXiUgVjXqTmLmtbXAhL16?=
 =?us-ascii?Q?DvyB3H9C3qFsyg2Jb/6hmzbjThMZBIe/gjYaKoBmA/K7RobCqiQOHv/S8V6l?=
 =?us-ascii?Q?XYA/GBZkK4al206+E+S8jv4huG8scZST6r6SYB4zWAO2cWAXiyG9jhUNm/59?=
 =?us-ascii?Q?LKaJ1zO4Hb95U043FxFIJY9VXtSze8Bxenr5zFGf+y5PwRxFLi7pljhFR4xb?=
 =?us-ascii?Q?o2MNQF4VYvRZC2jMXboyKvnSGX0UdJXZxnbcZL3pXjdnqDRcmfydE/drm2Pw?=
 =?us-ascii?Q?DbhMr21fOf94KmBqsDtafTUENKYQTdB+c9pukeXUpERmNc1CumfPZMSqeEDM?=
 =?us-ascii?Q?lBaLvaf2cm2X4P8vh86VH/D8AfmlwSZ0aWIzFltQc3zBlCsVui19UrtLXoNz?=
 =?us-ascii?Q?nLVm8skYyujQwxXqpz7CJyqT1gqfQHb6QcpaNYo2XNjX/egtbgUvRZwaDi7Y?=
 =?us-ascii?Q?dlT7GGZXBA28hv19yIbEZjOR6l3GHyY6+KIxgpT8DBlC3ZC5FaiSSryZ/dQ1?=
 =?us-ascii?Q?X0a0/TR5vYwhr2sXQ5zog5EDnA3DVyNooaCPuCLP62fm0nXBErD6PbUZEdtg?=
 =?us-ascii?Q?1Pv0W/y+6gnsexK2ALtZIdhEdJOBT1XsDjlImyrn0N8ALmdPGfFHIUVX5/sM?=
 =?us-ascii?Q?gTZ7lVeJ9rjlN+NfGheiejEWm6FtqZHy7viwyrYFIoLr3s/I+pZ+Qwql80Tr?=
 =?us-ascii?Q?n7TktzGFZ9TC+GRbUt17+/SbivHyEW2kCyTymJyuyqM72D4qbpDzkbPpDabW?=
 =?us-ascii?Q?Dw75Boksn5jEwqh+DMcO5mxyg/L9cxitElZzTG9TmqJMr5uAf3PdoL1qbaWc?=
 =?us-ascii?Q?M93CaDDD/noUmVKZJ+wP6LrOt+qbZxC58idXKTP3vGjfcLmhCzyi9z3o7HEH?=
 =?us-ascii?Q?O1U/0XP+dLFN1Xx1QOEan/Q2U9KtMlneoJfdjrYr24RAtNcIDelS1qvmcvPK?=
 =?us-ascii?Q?QvO8bS2d2vvmzq3OiuzdIfxYTyRwtQkvrpxCAyCw647ClSc+r87hjtpZJ1VX?=
 =?us-ascii?Q?0tQGK4aF3lI729vUlXjSW85uUu0/dIv6cviNTd35T/ccJPkwJSjZEQ1LW6OB?=
 =?us-ascii?Q?HXrhfj9r0xdi3Qwyreuq3VES4B7nvQGqLRJID87chkH53g3y3hgDdG1Br0WD?=
 =?us-ascii?Q?wSDgjwyqvnzvTVuuE3XlLcNRtcQBbWaR81iUXi1h3T03Eo4gi7hJI22dkIDP?=
 =?us-ascii?Q?up6X/Qv0Oh3pAlhL+tucb+R8gRE14gLDelKmnIimHnhjXv6CONFkX56Hda7w?=
 =?us-ascii?Q?h9zKyny/nKpRzbU795ihClezshSgnGWUvNXOp7Kt+9wMoR17RyfvsTfO2HhB?=
 =?us-ascii?Q?293UCqUM/Ie/87eNTS5BAA0o1zo/0meIQpvzKialofLyDz2VS2rC7lqoXO3O?=
 =?us-ascii?Q?wTmvbG10EFl0cLzP7Y9eWGF+IwBp72nCIoJP685yiRw+DAFTRSvpXpQjaPRP?=
 =?us-ascii?Q?1e+HayEOjacqQxHUR3tJBFGum3bF6rFuqp+p9Tzesi3aoxJEBmRHCu7bi5hr?=
 =?us-ascii?Q?6vcmVCAIJGbPVsxHTULIRlrxKLdLGpA4tSRzMc46M8efHgiAE+/o7cB+2T6d?=
 =?us-ascii?Q?ukOeIsKah2xx4tFsHNA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8254.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f55f6550-b26e-41b3-f543-08dd57d28bc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 08:33:15.5776
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GMC+Zqb40Mbg9igVKGi/WOjofxR7/2XGJrPwQHPg+R4DgjxEH+HDuDbly5nHgZwsqx6JPNtVG+YYNdPgtbr3GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9943

Hi Nas,


>+static int wave6_wait_vpu_busy(struct vpu_device *vpu_dev, unsigned int
>addr)
>+{
>+       u32 data;
>+
>+       return read_poll_timeout(wave6_vdi_readl, data, !data,
>+                                0, W6_VPU_POLL_TIMEOUT, false, vpu_dev, a=
ddr);

In our test, setting the delay interval to 0, it likely make the read_poll_=
timeout() in high loading.
And it may led to CREATE_INSTANCE cmd timeout.
Sometimes the decoder may fail to display the Carplay video stream.

Thanks,
Ming


>+}
>+
>+void wave6_vpu_enable_interrupt(struct vpu_device *vpu_dev)
>+{
>+       u32 data;
>+
>+       data =3D BIT(W6_INT_BIT_ENC_SET_PARAM);
>+       data |=3D BIT(W6_INT_BIT_ENC_PIC);
>+       data |=3D BIT(W6_INT_BIT_INIT_SEQ);
>+       data |=3D BIT(W6_INT_BIT_DEC_PIC);
>+       data |=3D BIT(W6_INT_BIT_BSBUF_ERROR);
>+       data |=3D BIT(W6_INT_BIT_REQ_WORK_BUF);
>+
>+       vpu_write_reg(vpu_dev, W6_VPU_VINT_ENABLE, data);
>+}
>+
>+void wave6_vpu_check_state(struct vpu_device *vpu_dev)
>+{
>+       if (vpu_dev->ctrl) {
>+               int state =3D wave6_vpu_ctrl_get_state(vpu_dev->ctrl);
>+
>+               if (state =3D=3D WAVE6_VPU_STATE_PREPARE)
>+                       wave6_vpu_ctrl_wait_done(vpu_dev->ctrl);
>+       } else {
>+               u32 val;
>+               int ret;
>+
>+               ret =3D read_poll_timeout(vpu_read_reg, val, val !=3D 0, 0=
,
>+                                       W6_VPU_POLL_TIMEOUT, false,
>+                                       vpu_dev, W6_VPU_VCPU_CUR_PC);
>+               if (!ret)
>+                       vpu_dev->entity.on_boot(vpu_dev->dev);
>+       }
>+}
>+
>+bool wave6_vpu_is_init(struct vpu_device *vpu_dev)
>+{
>+       return vpu_read_reg(vpu_dev, W6_VPU_VCPU_CUR_PC) !=3D 0;
>+}
>+
>+static int32_t wave6_vpu_get_product_id(struct vpu_device *vpu_dev)
>+{
>+       u32 product_id =3D PRODUCT_ID_NONE;
>+       u32 val;
>+
>+       val =3D vpu_read_reg(vpu_dev, W6_VPU_RET_PRODUCT_VERSION);
>+
>+       switch (val) {
>+       case WAVE617_CODE:
>+               product_id =3D PRODUCT_ID_617; break;
>+       case WAVE627_CODE:
>+               product_id =3D PRODUCT_ID_627; break;
>+       case WAVE633_CODE:
>+       case WAVE637_CODE:
>+       case WAVE663_CODE:
>+       case WAVE677_CODE:
>+               product_id =3D PRODUCT_ID_637; break;
>+       default:
>+               dev_err(vpu_dev->dev, "Invalid product (%x)\n", val);
>+               break;
>+       }
>+
>+       return product_id;
>+}
>+
>+static void wave6_send_command(struct vpu_device *vpu_dev, u32 id, u32
>std, u32 cmd)
>+{
>+       if (cmd =3D=3D W6_CMD_CREATE_INSTANCE) {
>+               vpu_write_reg(vpu_dev, W6_CMD_INSTANCE_INFO, (std << 16));
>+
>+               vpu_write_reg(vpu_dev, W6_VPU_BUSY_STATUS, 1);
>+               vpu_write_reg(vpu_dev, W6_COMMAND, cmd);
>+
>+               vpu_write_reg(vpu_dev, W6_VPU_HOST_INT_REQ, 1);
>+       } else {
>+               vpu_write_reg(vpu_dev, W6_CMD_INSTANCE_INFO, (std << 16) |=
 (id
>& 0xffff));
>+
>+               vpu_write_reg(vpu_dev, W6_VPU_BUSY_STATUS, 1);
>+               vpu_write_reg(vpu_dev, W6_COMMAND, cmd);
>+
>+               vpu_write_reg(vpu_dev, W6_VPU_HOST_INT_REQ, 1);
>+       }
>+
>+       trace_send_command(vpu_dev, id, std, cmd);
>+}
>+
>+static int wave6_send_query(struct vpu_device *vpu_dev, u32 id, u32 std,
>+                           enum wave6_query_option query_opt)
>+{
>+       int ret;
>+       u32 reg_val;
>+
>+       vpu_write_reg(vpu_dev, W6_QUERY_OPTION, query_opt);
>+       wave6_send_command(vpu_dev, id, std, W6_CMD_QUERY);
>+
>+       ret =3D wave6_wait_vpu_busy(vpu_dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(vpu_dev->dev, "query timed out opt=3D0x%x\n", quer=
y_opt);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(vpu_dev, W6_RET_SUCCESS)) {
>+               reg_val =3D vpu_read_reg(vpu_dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(vpu_dev, reg_val);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_get_version(struct vpu_device *vpu_dev, uint32_t
>*version_info,
>+                         uint32_t *revision)
>+{
>+       struct vpu_attr *attr =3D &vpu_dev->attr;
>+       u32 reg_val;
>+       u8 *str;
>+       int ret;
>+       u32 hw_config_def1, hw_config_feature;
>+
>+       ret =3D wave6_send_query(vpu_dev, 0, 0,
>W6_QUERY_OPT_GET_VPU_INFO);
>+       if (ret)
>+               return ret;
>+
>+       reg_val =3D vpu_read_reg(vpu_dev, W6_RET_PRODUCT_NAME);
>+       str =3D (u8 *)&reg_val;
>+       attr->product_name[0] =3D str[3];
>+       attr->product_name[1] =3D str[2];
>+       attr->product_name[2] =3D str[1];
>+       attr->product_name[3] =3D str[0];
>+       attr->product_name[4] =3D 0;
>+
>+       attr->product_id =3D wave6_vpu_get_product_id(vpu_dev);
>+       attr->product_version =3D vpu_read_reg(vpu_dev,
>W6_RET_PRODUCT_VERSION);
>+       attr->fw_version =3D vpu_read_reg(vpu_dev, W6_RET_FW_API_VERSION);
>+       attr->fw_revision =3D vpu_read_reg(vpu_dev, W6_RET_FW_VERSION);
>+       hw_config_def1 =3D vpu_read_reg(vpu_dev, W6_RET_STD_DEF1);
>+       hw_config_feature =3D vpu_read_reg(vpu_dev, W6_RET_CONF_FEATURE);
>+
>+       attr->support_hevc10bit_enc =3D (hw_config_feature >> 3) & 1;
>+       attr->support_avc10bit_enc =3D (hw_config_feature >> 11) & 1;
>+
>+       attr->support_decoders =3D 0;
>+       attr->support_encoders =3D 0;
>+       if (attr->product_id =3D=3D PRODUCT_ID_617) {
>+               attr->support_decoders =3D (((hw_config_def1 >> 2) & 0x01)=
 <<
>STD_HEVC);
>+               attr->support_decoders |=3D (((hw_config_def1 >> 3) & 0x01=
) <<
>STD_AVC);
>+       } else if (attr->product_id =3D=3D PRODUCT_ID_627) {
>+               attr->support_encoders =3D (((hw_config_def1 >> 0) & 0x01)=
 <<
>STD_HEVC);
>+               attr->support_encoders |=3D (((hw_config_def1 >> 1) & 0x01=
) <<
>STD_AVC);
>+       } else if (attr->product_id =3D=3D PRODUCT_ID_637) {
>+               attr->support_decoders =3D (((hw_config_def1 >> 2) & 0x01)=
 <<
>STD_HEVC);
>+               attr->support_decoders |=3D (((hw_config_def1 >> 3) & 0x01=
) <<
>STD_AVC);
>+               attr->support_encoders =3D (((hw_config_def1 >> 0) & 0x01)=
 <<
>STD_HEVC);
>+               attr->support_encoders |=3D (((hw_config_def1 >> 1) & 0x01=
) <<
>STD_AVC);
>+       }
>+
>+       attr->support_dual_core =3D (hw_config_def1 >> 26) & 0x01;
>+       attr->support_bitstream_mode =3D BS_MODE_PIC_END;
>+
>+       if (version_info)
>+               *version_info =3D attr->fw_version;
>+       if (revision)
>+               *revision =3D attr->fw_revision;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_build_up_dec_param(struct vpu_instance *inst,
>+                                struct dec_open_param *param)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       u32 reg_val;
>+       int ret;
>+
>+       p_dec_info->cycle_per_tick =3D 256;
>+       p_dec_info->sec_axi_info.use_dec_ip =3D true;
>+       p_dec_info->sec_axi_info.use_dec_lf_row =3D true;
>+       switch (inst->std) {
>+       case W_HEVC_DEC:
>+               p_dec_info->seq_change_mask =3D SEQ_CHANGE_ENABLE_ALL_HEVC=
;
>+               break;
>+       case W_AVC_DEC:
>+               p_dec_info->seq_change_mask =3D SEQ_CHANGE_ENABLE_ALL_AVC;
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_TEMP_BASE,
>param->inst_buffer.temp_base);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_TEMP_SIZE,
>param->inst_buffer.temp_size);
>+
>+       reg_val =3D wave6_vdi_convert_endian(param->stream_endian);
>+       reg_val =3D (~reg_val & VDI_128BIT_ENDIAN_MASK);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_BS_PARAM,
>reg_val);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_ADDR_EXT,
>param->ext_addr_vcpu);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_DISP_MODE,
>param->disp_mode);
>+
>+       reg_val =3D (COMMAND_QUEUE_DEPTH << 8) | (1 << 4) | 1;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_CORE_INFO,
>reg_val);
>+
>+       reg_val =3D (param->is_secure_inst << 8) | (param->inst_priority);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_CREATE_INST_PRIORITY,
>reg_val);
>+       vpu_write_reg(inst->dev,
>W6_CMD_DEC_CREATE_INST_TIMEOUT_CYCLE_COUNT,
>+                     W6_VPU_TIMEOUT_CYCLE_COUNT);
>+
>+       wave6_send_command(inst->dev, 0, inst->std,
>W6_CMD_CREATE_INSTANCE);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reason_code =3D vpu_read_reg(inst->dev, W6_RET_FAIL_RE=
ASON);
>+
>+               wave6_print_reg_err(inst->dev, reason_code);
>+               return -EIO;
>+       }
>+
>+       inst->id =3D vpu_read_reg(inst->dev, W6_RET_INSTANCE_ID);
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_init_seq(struct vpu_instance *inst)
>+{
>+       struct dec_info *p_dec_info;
>+       u32 cmd_option =3D W6_INIT_SEQ_OPT_NORMAL, bs_option;
>+       int ret;
>+
>+       if (!inst->codec_info)
>+               return -EINVAL;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+       if (p_dec_info->thumbnail_mode)
>+               cmd_option =3D W6_INIT_SEQ_OPT_W_THUMBNAIL;
>+
>+       bs_option =3D 0;
>+       switch (p_dec_info->open_param.bs_mode) {
>+       case BS_MODE_INTERRUPT:
>+               bs_option =3D 0;
>+               break;
>+       case BS_MODE_PIC_END:
>+               bs_option =3D BSOPTION_ENABLE_EXPLICIT_END;
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_INIT_SEQ_BS_RD_PTR,
>p_dec_info->stream_rd_ptr);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_INIT_SEQ_BS_WR_PTR,
>p_dec_info->stream_wr_ptr);
>+
>+       if (p_dec_info->stream_end)
>+               bs_option =3D 3;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_INIT_SEQ_BS_OPTION,
>bs_option);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_INIT_SEQ_OPTION,
>cmd_option);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_INIT_SEQ);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reason_code =3D vpu_read_reg(inst->dev, W6_RET_FAIL_RE=
ASON);
>+
>+               wave6_print_reg_err(inst->dev, reason_code);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+static void wave6_get_dec_seq_result(struct vpu_instance *inst, struct
>dec_initial_info *info)
>+{
>+       u32 reg_val;
>+       u32 profile_compatibility;
>+       u32 left, right, top, bottom;
>+
>+       info->rd_ptr =3D wave6_vpu_dec_get_rd_ptr(inst);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_PIC_SIZE);
>+       info->pic_width =3D ((reg_val >> 16) & 0xffff);
>+       info->pic_height =3D (reg_val & 0xffff);
>+       info->min_frame_buffer_count =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_NUM_REQUIRED_FBC_FB);
>+       info->frame_buf_delay =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_NUM_REORDER_DELAY);
>+       info->req_mv_buffer_count =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_NUM_REQUIRED_COL_BUF);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_CROP_LEFT_RIGHT);
>+       left =3D (reg_val >> 16) & 0xffff;
>+       right =3D reg_val & 0xffff;
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_CROP_TOP_BOTTOM);
>+       top =3D (reg_val >> 16) & 0xffff;
>+       bottom =3D reg_val & 0xffff;
>+
>+       info->pic_crop_rect.left =3D left;
>+       info->pic_crop_rect.right =3D info->pic_width - right;
>+       info->pic_crop_rect.top =3D top;
>+       info->pic_crop_rect.bottom =3D info->pic_height - bottom;
>+
>+       info->f_rate_numerator =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_FRAME_RATE_NR);
>+       info->f_rate_denominator =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_FRAME_RATE_DR);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_COLOR_SAMPLE_INFO);
>+       info->luma_bitdepth =3D (reg_val >> 0) & 0x0f;
>+       info->chroma_bitdepth =3D (reg_val >> 4) & 0x0f;
>+       info->chroma_format_idc =3D (reg_val >> 8) & 0x0f;
>+       info->aspect_rate_info =3D (reg_val >> 16) & 0xff;
>+       info->is_ext_sar =3D (info->aspect_rate_info =3D=3D
>H264_VUI_SAR_IDC_EXTENDED ? true : false);
>+       if (info->is_ext_sar)
>+               info->aspect_rate_info =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_ASPECT_RATIO);
>+       info->bitrate =3D vpu_read_reg(inst->dev, W6_RET_DEC_BIT_RATE);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_SEQ_PARAM);
>+       info->level =3D reg_val & 0xff;
>+       profile_compatibility =3D (reg_val >> 12) & 0xff;
>+       info->profile =3D (reg_val >> 24) & 0x1f;
>+       info->tier =3D (reg_val >> 29) & 0x01;
>+
>+       if (inst->std =3D=3D W_HEVC_DEC) {
>+               if (!info->profile) {
>+                       if ((profile_compatibility & 0x06) =3D=3D 0x06)
>+                               info->profile =3D HEVC_PROFILE_MAIN;
>+                       else if ((profile_compatibility & 0x04) =3D=3D 0x0=
4)
>+                               info->profile =3D HEVC_PROFILE_MAIN10;
>+                       else if ((profile_compatibility & 0x08) =3D=3D 0x0=
8)
>+                               info->profile =3D HEVC_PROFILE_STILLPICTUR=
E;
>+                       else
>+                               info->profile =3D HEVC_PROFILE_MAIN;
>+               }
>+       } else if (inst->std =3D=3D W_AVC_DEC) {
>+               info->profile =3D (reg_val >> 24) & 0x7f;
>+       }
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_COLOR_CONFIG);
>+       if (reg_val) {
>+               info->color.video_signal_type_present =3D true;
>+               info->color.color_description_present =3D reg_val & 0x1;
>+               info->color.color_primaries =3D (reg_val >> 1) & 0xFF;
>+               info->color.transfer_characteristics =3D (reg_val >> 9) & =
0xFF;
>+               info->color.matrix_coefficients =3D (reg_val >> 17) & 0xFF=
;
>+               info->color.color_range =3D (reg_val >> 25) & 0x1;
>+               info->color.chroma_sample_position =3D (reg_val >> 26) & 0=
x3;
>+       } else {
>+               info->color.video_signal_type_present =3D false;
>+       }
>+}
>+
>+int wave6_vpu_dec_get_seq_info(struct vpu_instance *inst, struct
>dec_initial_info *info)
>+{
>+       int ret;
>+
>+       ret =3D wave6_send_query(inst->dev, inst->id, inst->std,
>W6_QUERY_OPT_GET_RESULT);
>+       if (ret)
>+               return ret;
>+
>+       if (vpu_read_reg(inst->dev, W6_RET_DEC_DECODING_SUCCESS) !=3D 1) {
>+               info->err_reason =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_ERR_INFO);
>+               ret =3D -EIO;
>+       } else {
>+               info->warn_info =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_WARN_INFO);
>+       }
>+
>+       wave6_get_dec_seq_result(inst, info);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_register_frame_buffer(struct vpu_instance *inst,
>+                                       struct frame_buffer *fb_arr,
>+                                       enum tiled_map_type map_type, u32 =
count)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       size_t fbc_remain, mv_remain, fbc_idx =3D 0, mv_idx =3D 0;
>+       size_t i, k, group_num, mv_count;
>+       dma_addr_t fbc_cr_tbl_addr;
>+       u32 reg_val;
>+       u32 endian;
>+       int ret;
>+
>+       mv_count =3D p_dec_info->initial_info.req_mv_buffer_count;
>+
>+       for (i =3D 0; i < count; i++) {
>+               if (!p_dec_info->vb_fbc_y_tbl[i].daddr)
>+                       return -EINVAL;
>+               if (!p_dec_info->vb_fbc_c_tbl[i].daddr)
>+                       return -EINVAL;
>+       }
>+       for (i =3D 0; i < mv_count; i++) {
>+               if (!p_dec_info->vb_mv[i].daddr)
>+                       return -EINVAL;
>+       }
>+
>+       endian =3D wave6_vdi_convert_endian(p_dec_info-
>>open_param.frame_endian);
>+
>+       reg_val =3D (p_dec_info->initial_info.pic_width << 16) |
>+                 (p_dec_info->initial_info.pic_height);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_PIC_SIZE, reg_val);
>+       reg_val =3D (p_dec_info->initial_info.chroma_format_idc << 25) |
>+                 (p_dec_info->initial_info.luma_bitdepth << 21) |
>+                 (p_dec_info->initial_info.chroma_bitdepth << 17);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_COMMON_PIC_INFO,
>reg_val);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_DEFAULT_CDF, 0);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_SEGMAP, 0);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_MV_COL_PRE_ENT, 0);
>+
>+       fbc_remain =3D count;
>+       mv_remain =3D mv_count;
>+       group_num =3D (count > mv_count) ? ((ALIGN(count, 16) / 16) - 1) :
>+                                        ((ALIGN(mv_count, 16) / 16) - 1);
>+       for (i =3D 0; i <=3D group_num; i++) {
>+               bool first_group =3D (i =3D=3D 0) ? true : false;
>+               bool last_group =3D (i =3D=3D group_num) ? true : false;
>+               u32 set_fbc_num =3D (fbc_remain >=3D 16) ? 16 : fbc_remain=
;
>+               u32 set_mv_num =3D (mv_remain >=3D 16) ? 16 : mv_remain;
>+               u32 fbc_start_no =3D i * 16;
>+               u32 fbc_end_no =3D fbc_start_no + set_fbc_num - 1;
>+               u32 mv_start_no =3D i * 16;
>+               u32 mv_end_no =3D mv_start_no + set_mv_num - 1;
>+
>+               reg_val =3D (p_dec_info->open_param.enable_non_ref_fbc_wri=
te <<
>26) |
>+                         (endian << 16) |
>+                         (last_group << 4) |
>+                         (first_group << 3);
>+               vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_OPTION, reg_val=
);
>+
>+               reg_val =3D (fbc_start_no << 24) | (fbc_end_no << 16) |
>+                         (mv_start_no << 5) | mv_end_no;
>+               vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_NUM, reg_val);
>+
>+               for (k =3D 0; k < set_fbc_num; k++) {
>+                       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_FBC_Y0 =
+ (k *
>24),
>+                                     fb_arr[fbc_idx].buf_y);
>+                       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_FBC_C0 =
+ (k *
>24),
>+                                     fb_arr[fbc_idx].buf_cb);
>+                       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_FBC_CR0=
 + (k *
>8),
>+                                     fb_arr[fbc_idx].buf_cr);
>+                       vpu_write_reg(inst->dev,
>W6_CMD_DEC_SET_FB_FBC_Y_OFFSET0 + (k * 24),
>+                                     p_dec_info->vb_fbc_y_tbl[fbc_idx].da=
ddr);
>+                       vpu_write_reg(inst->dev,
>W6_CMD_DEC_SET_FB_FBC_C_OFFSET0 + (k * 24),
>+                                     p_dec_info->vb_fbc_c_tbl[fbc_idx].da=
ddr);
>+                       fbc_cr_tbl_addr =3D p_dec_info->vb_fbc_c_tbl[fbc_i=
dx].daddr +
>+                                               (p_dec_info->vb_fbc_c_tbl[=
fbc_idx].size >> 1);
>+                       vpu_write_reg(inst->dev,
>W6_CMD_DEC_SET_FB_FBC_CR_OFFSET0 + (k * 8),
>+                                     fbc_cr_tbl_addr);
>+                       fbc_idx++;
>+               }
>+               fbc_remain -=3D k;
>+
>+               for (k =3D 0; k < set_mv_num; k++) {
>+                       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_FB_MV_COL0=
 + (k
>* 24),
>+                                     p_dec_info->vb_mv[mv_idx].daddr);
>+                       mv_idx++;
>+               }
>+               mv_remain -=3D k;
>+
>+               wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_SET_FB);
>+               ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS)=
;
>+               if (ret) {
>+                       dev_err(inst->dev->dev, "%s: timeout\n", __func__)=
;
>+                       return ret;
>+               }
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS))
>+               return -EIO;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_register_display_buffer(struct vpu_instance *inst, stru=
ct
>frame_buffer fb)
>+{
>+       int ret;
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       u32 reg_val, cbcr_interleave, nv21;
>+       u32 endian;
>+       u32 addr_y, addr_cb, addr_cr;
>+       u32 color_format;
>+       u32 justified =3D WTL_RIGHT_JUSTIFIED;
>+       u32 format_no =3D WTL_PIXEL_8BIT;
>+
>+       cbcr_interleave =3D inst->cbcr_interleave;
>+       nv21 =3D inst->nv21;
>+
>+       endian =3D wave6_vdi_convert_endian(p_dec_info-
>>open_param.frame_endian);
>+
>+       switch (p_dec_info->wtl_format) {
>+       case FORMAT_420:
>+       case FORMAT_420_P10_16BIT_MSB:
>+       case FORMAT_420_P10_16BIT_LSB:
>+       case FORMAT_420_P10_32BIT_MSB:
>+       case FORMAT_420_P10_32BIT_LSB:
>+               color_format =3D 1;
>+               break;
>+       case FORMAT_422:
>+       case FORMAT_422_P10_16BIT_MSB:
>+       case FORMAT_422_P10_16BIT_LSB:
>+       case FORMAT_422_P10_32BIT_MSB:
>+       case FORMAT_422_P10_32BIT_LSB:
>+               color_format =3D 2;
>+               break;
>+       case FORMAT_444:
>+       case FORMAT_444_P10_16BIT_MSB:
>+       case FORMAT_444_P10_16BIT_LSB:
>+       case FORMAT_444_P10_32BIT_MSB:
>+       case FORMAT_444_P10_32BIT_LSB:
>+               color_format =3D 3;
>+               break;
>+       case FORMAT_400:
>+       case FORMAT_400_P10_16BIT_MSB:
>+       case FORMAT_400_P10_16BIT_LSB:
>+       case FORMAT_400_P10_32BIT_MSB:
>+       case FORMAT_400_P10_32BIT_LSB:
>+               color_format =3D 0;
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       reg_val =3D (color_format << 3) |
>+                 (inst->scaler_info.scale_mode << 1) |
>+                 (inst->scaler_info.enable);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_SCL_PARAM, reg_val);
>+       reg_val =3D (inst->scaler_info.width << 16) |
>+                 (inst->scaler_info.height);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_SCL_PIC_SIZE,
>reg_val);
>+       reg_val =3D (p_dec_info->initial_info.pic_width << 16) |
>+                 (p_dec_info->initial_info.pic_height);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_PIC_SIZE, reg_val);
>+
>+       switch (p_dec_info->wtl_format) {
>+       case FORMAT_420_P10_16BIT_MSB:
>+       case FORMAT_422_P10_16BIT_MSB:
>+       case FORMAT_444_P10_16BIT_MSB:
>+       case FORMAT_400_P10_16BIT_MSB:
>+               justified =3D WTL_RIGHT_JUSTIFIED;
>+               format_no =3D WTL_PIXEL_16BIT;
>+               break;
>+       case FORMAT_420_P10_16BIT_LSB:
>+       case FORMAT_422_P10_16BIT_LSB:
>+       case FORMAT_444_P10_16BIT_LSB:
>+       case FORMAT_400_P10_16BIT_LSB:
>+               justified =3D WTL_LEFT_JUSTIFIED;
>+               format_no =3D WTL_PIXEL_16BIT;
>+               break;
>+       case FORMAT_420_P10_32BIT_MSB:
>+       case FORMAT_422_P10_32BIT_MSB:
>+       case FORMAT_444_P10_32BIT_MSB:
>+       case FORMAT_400_P10_32BIT_MSB:
>+               justified =3D WTL_RIGHT_JUSTIFIED;
>+               format_no =3D WTL_PIXEL_32BIT;
>+               break;
>+       case FORMAT_420_P10_32BIT_LSB:
>+       case FORMAT_422_P10_32BIT_LSB:
>+       case FORMAT_444_P10_32BIT_LSB:
>+       case FORMAT_400_P10_32BIT_LSB:
>+               justified =3D WTL_LEFT_JUSTIFIED;
>+               format_no =3D WTL_PIXEL_32BIT;
>+               break;
>+       default:
>+               break;
>+       }
>+
>+       reg_val =3D (REGISTER_DISPLAY_BUFFER << 28) | (color_format << 24)=
 |
>+                 (DEFAULT_PIXEL_ORDER << 23) | (justified << 22) | (forma=
t_no <<
>20) |
>+                 (nv21 << 17) | (cbcr_interleave << 16) | (fb.stride);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_COMMON_PIC_INFO,
>reg_val);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_OPTION, (endian <<
>16));
>+       reg_val =3D (fb.luma_bitdepth << 22) |
>+                 (fb.chroma_bitdepth << 18) |
>+                 (fb.chroma_format_idc << 16);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_PIC_INFO, reg_val);
>+
>+       if (p_dec_info->open_param.cbcr_order =3D=3D CBCR_ORDER_REVERSED) =
{
>+               addr_y =3D fb.buf_y;
>+               addr_cb =3D fb.buf_cr;
>+               addr_cr =3D fb.buf_cb;
>+       } else {
>+               addr_y =3D fb.buf_y;
>+               addr_cb =3D fb.buf_cb;
>+               addr_cr =3D fb.buf_cr;
>+       }
>+
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_Y_BASE, addr_y);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_CB_BASE, addr_cb);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_SET_DISP_CR_BASE, addr_cr);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_DEC_SET_DISP);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS))
>+               return -EIO;
>+
>+       wave6_dec_set_display_buffer(inst, fb);
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_decode(struct vpu_instance *inst, struct dec_param *option,
>u32 *fail_res)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       struct dec_open_param *p_open_param =3D &p_dec_info->open_param;
>+       u32 mode_option =3D W6_DEC_PIC_OPT_NORMAL, bs_option, reg_val;
>+       int ret;
>+
>+       if (p_dec_info->thumbnail_mode) {
>+               mode_option =3D W6_DEC_PIC_OPT_W_THUMBNAIL;
>+       } else if (option->skipframe_mode) {
>+               switch (option->skipframe_mode) {
>+               case WAVE_SKIPMODE_NON_IRAP:
>+                       mode_option =3D W6_DEC_PIC_OPT_SKIP_NON_IRAP;
>+                       break;
>+               case WAVE_SKIPMODE_NON_REF:
>+                       mode_option =3D W6_DEC_PIC_OPT_SKIP_NON_REF_PIC;
>+                       break;
>+               default:
>+                       break;
>+               }
>+       }
>+
>+       bs_option =3D 0;
>+       switch (p_open_param->bs_mode) {
>+       case BS_MODE_INTERRUPT:
>+               bs_option =3D 0;
>+               break;
>+       case BS_MODE_PIC_END:
>+               bs_option =3D BSOPTION_ENABLE_EXPLICIT_END;
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_BS_RD_PTR, p_dec_info-
>>stream_rd_ptr);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_BS_WR_PTR, p_dec_info-
>>stream_wr_ptr);
>+       if (p_dec_info->stream_end)
>+               bs_option =3D 3;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_BS_OPTION, bs_option);
>+
>+       reg_val =3D (p_dec_info->sec_axi_info.use_dec_ip << 1) |
>+                 p_dec_info->sec_axi_info.use_dec_lf_row;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_USE_SEC_AXI, reg_val);
>+
>+       reg_val =3D (option->disable_film_grain << 6) |
>+                 (option->decode_cra_as_bla << 5) |
>+                 mode_option;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_OPTION, reg_val);
>+       reg_val =3D (DECODE_ALL_SPATIAL_LAYERS << 9) |
>+                 (TEMPORAL_ID_MODE_ABSOLUTE << 8) |
>+                 DECODE_ALL_TEMPORAL_LAYERS;
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_TEMPORAL_ID_PLUS1,
>reg_val);
>+       vpu_write_reg(inst->dev,
>W6_CMD_DEC_PIC_SEQ_CHANGE_ENABLE_FLAG,
>+                     p_dec_info->seq_change_mask);
>+       reg_val =3D ((option->timestamp.hour & 0x1F) << 26) |
>+                 ((option->timestamp.min & 0x3F) << 20) |
>+                 ((option->timestamp.sec & 0x3F) << 14) |
>+                 (option->timestamp.ms & 0x3FFF);
>+       vpu_write_reg(inst->dev, W6_CMD_DEC_PIC_TIMESTAMP, reg_val);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std, W6_CMD_DEC_PIC)=
;
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               *fail_res =3D vpu_read_reg(inst->dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(inst->dev, *fail_res);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_get_result(struct vpu_instance *inst, struct
>dec_output_info *result)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       u32 reg_val, nal_unit_type, i;
>+       int decoded_index =3D -1, display_index =3D -1;
>+       int ret;
>+
>+       ret =3D wave6_send_query(inst->dev, inst->id, inst->std,
>W6_QUERY_OPT_GET_RESULT);
>+       if (ret)
>+               return ret;
>+
>+       result->decoding_success =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_DECODING_SUCCESS);
>+       if (!result->decoding_success)
>+               result->error_reason =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_ERR_INFO);
>+       else
>+               result->warn_info =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_WARN_INFO);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_PIC_TYPE);
>+       nal_unit_type =3D (reg_val & 0x3f0) >> 4;
>+       result->nal_type =3D nal_unit_type;
>+
>+       if (inst->std =3D=3D W_HEVC_DEC) {
>+               if (reg_val & 0x04)
>+                       result->pic_type =3D PIC_TYPE_B;
>+               else if (reg_val & 0x02)
>+                       result->pic_type =3D PIC_TYPE_P;
>+               else if (reg_val & 0x01)
>+                       result->pic_type =3D PIC_TYPE_I;
>+               else
>+                       result->pic_type =3D PIC_TYPE_MAX;
>+               if ((nal_unit_type =3D=3D 19 || nal_unit_type =3D=3D 20) &=
& result->pic_type
>=3D=3D PIC_TYPE_I)
>+                       result->pic_type =3D PIC_TYPE_IDR;
>+       } else if (inst->std =3D=3D W_AVC_DEC) {
>+               if (reg_val & 0x04)
>+                       result->pic_type =3D PIC_TYPE_B;
>+               else if (reg_val & 0x02)
>+                       result->pic_type =3D PIC_TYPE_P;
>+               else if (reg_val & 0x01)
>+                       result->pic_type =3D PIC_TYPE_I;
>+               else
>+                       result->pic_type =3D PIC_TYPE_MAX;
>+               if (nal_unit_type =3D=3D 5 && result->pic_type =3D=3D PIC_=
TYPE_I)
>+                       result->pic_type =3D PIC_TYPE_IDR;
>+       }
>+       result->ctu_size =3D 16 << ((reg_val >> 10) & 0x3);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_DECODED_FLAG);
>+       if (reg_val) {
>+               struct frame_buffer fb;
>+               dma_addr_t addr =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_DECODED_ADDR);
>+
>+               fb =3D wave6_dec_get_display_buffer(inst, addr, false);
>+               result->frame_decoded_addr =3D addr;
>+               result->frame_decoded =3D true;
>+               decoded_index =3D fb.index;
>+       }
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_DISPLAY_FLAG);
>+       if (reg_val) {
>+               struct frame_buffer fb;
>+               dma_addr_t addr =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_DISPLAY_ADDR);
>+
>+               fb =3D wave6_dec_get_display_buffer(inst, addr, false);
>+               result->frame_display_addr =3D addr;
>+               result->frame_display =3D true;
>+               display_index =3D fb.index;
>+       }
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_DISP_IDC);
>+       for (i =3D 0; i < WAVE6_MAX_FBS; i++) {
>+               if (reg_val & (1 << i)) {
>+                       dma_addr_t addr =3D vpu_read_reg(inst->dev,
>+                                               W6_RET_DEC_DISP_LINEAR_ADD=
R_0 + i * 4);
>+
>+                       result->disp_frame_addr[result->disp_frame_num] =
=3D addr;
>+                       result->disp_frame_num++;
>+               }
>+       }
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_RELEASE_IDC);
>+       for (i =3D 0; i < WAVE6_MAX_FBS; i++) {
>+               if (reg_val & (1 << i)) {
>+                       struct frame_buffer fb;
>+                       dma_addr_t addr =3D vpu_read_reg(inst->dev,
>+                                               W6_RET_DEC_DISP_LINEAR_ADD=
R_0 + i * 4);
>+
>+                       fb =3D wave6_dec_get_display_buffer(inst, addr, tr=
ue);
>+                       result->release_disp_frame_addr[result-
>>release_disp_frame_num] =3D fb.buf_y;
>+                       result->release_disp_frame_num++;
>+               }
>+       }
>+
>+       result->stream_end =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_STREAM_END);
>+       result->notification_flags =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_NOTIFICATION);
>+
>+       if (inst->std =3D=3D W_HEVC_DEC) {
>+               result->decoded_poc =3D -1;
>+               result->display_poc =3D -1;
>+               if (decoded_index >=3D 0)
>+                       result->decoded_poc =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_PIC_POC);
>+       } else if (inst->std =3D=3D W_AVC_DEC) {
>+               result->decoded_poc =3D -1;
>+               result->display_poc =3D -1;
>+               if (decoded_index >=3D 0)
>+                       result->decoded_poc =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_PIC_POC);
>+       }
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_PIC_SIZE);
>+       result->dec_pic_width =3D reg_val >> 16;
>+       result->dec_pic_height =3D reg_val & 0xffff;
>+
>+       result->num_of_err_m_bs =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_ERR_CTB_NUM) >> 16;
>+       result->num_of_tot_m_bs =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_ERR_CTB_NUM) & 0xffff;
>+       result->byte_pos_frame_start =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_AU_START_POS);
>+       result->byte_pos_frame_end =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_AU_END_POS);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_RECOVERY_POINT);
>+       result->h265_rp_sei.recovery_poc_cnt =3D reg_val & 0xFFFF;
>+       result->h265_rp_sei.exact_match =3D (reg_val >> 16) & 0x01;
>+       result->h265_rp_sei.broken_link =3D (reg_val >> 17) & 0x01;
>+       result->h265_rp_sei.exist =3D (reg_val >> 18) & 0x01;
>+       if (!result->h265_rp_sei.exist) {
>+               result->h265_rp_sei.recovery_poc_cnt =3D 0;
>+               result->h265_rp_sei.exact_match =3D false;
>+               result->h265_rp_sei.broken_link =3D false;
>+       }
>+
>+       result->last_frame_in_au =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_LAST_FRAME_FLAG);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_DEC_TIMESTAMP);
>+       result->timestamp.hour =3D (reg_val >> 26) & 0x1F;
>+       result->timestamp.min =3D (reg_val >> 20) & 0x3F;
>+       result->timestamp.sec =3D (reg_val >> 14) & 0x3F;
>+       result->timestamp.ms =3D reg_val & 0x3FFF;
>+
>+       result->cycle.host_cmd_s =3D vpu_read_reg(inst->dev,
>W6_RET_CQ_IN_TICK);
>+       result->cycle.host_cmd_e =3D vpu_read_reg(inst->dev,
>W6_RET_RQ_OUT_TICK);
>+       result->cycle.proc_s =3D vpu_read_reg(inst->dev, W6_RET_HW_RUN_TIC=
K);
>+       result->cycle.proc_e =3D vpu_read_reg(inst->dev,
>W6_RET_HW_DONE_TICK);
>+       result->cycle.vpu_s =3D vpu_read_reg(inst->dev, W6_RET_FW_RUN_TICK=
);
>+       result->cycle.vpu_e =3D vpu_read_reg(inst->dev, W6_RET_FW_DONE_TIC=
K);
>+       result->cycle.frame_cycle =3D (result->cycle.vpu_e - result-
>>cycle.host_cmd_s) *
>+                                   p_dec_info->cycle_per_tick;
>+       result->cycle.proc_cycle =3D (result->cycle.proc_e - result->cycle=
.proc_s) *
>+                                  p_dec_info->cycle_per_tick;
>+       result->cycle.vpu_cycle =3D ((result->cycle.vpu_e - result->cycle.=
vpu_s) -
>+                                  (result->cycle.proc_e - result->cycle.p=
roc_s)) *
>+                                 p_dec_info->cycle_per_tick;
>+
>+       if (decoded_index >=3D 0 && decoded_index < WAVE6_MAX_FBS) {
>+               if (inst->std =3D=3D W_HEVC_DEC || inst->std =3D=3D W_AVC_=
DEC)
>+                       p_dec_info->dec_out_info[decoded_index].decoded_po=
c =3D
>result->decoded_poc;
>+       }
>+
>+       if (display_index >=3D 0 && display_index < WAVE6_MAX_FBS) {
>+               if (inst->std =3D=3D W_HEVC_DEC || inst->std =3D=3D W_AVC_=
DEC)
>+                       result->display_poc =3D p_dec_info-
>>dec_out_info[display_index].decoded_poc;
>+
>+               result->disp_pic_width =3D p_dec_info-
>>dec_out_info[display_index].dec_pic_width;
>+               result->disp_pic_height =3D p_dec_info-
>>dec_out_info[display_index].dec_pic_height;
>+       }
>+
>+       result->rd_ptr =3D wave6_vpu_dec_get_rd_ptr(inst);
>+       result->wr_ptr =3D p_dec_info->stream_wr_ptr;
>+
>+       result->sequence_no =3D p_dec_info->initial_info.sequence_no;
>+       if (decoded_index >=3D 0 && decoded_index < WAVE6_MAX_FBS)
>+               p_dec_info->dec_out_info[decoded_index] =3D *result;
>+
>+       if (display_index >=3D 0 && display_index < WAVE6_MAX_FBS) {
>+               result->num_of_tot_m_bs_in_disp =3D
>+                       p_dec_info->dec_out_info[display_index].num_of_tot=
_m_bs;
>+               result->num_of_err_m_bs_in_disp =3D
>+                       p_dec_info->dec_out_info[display_index].num_of_err=
_m_bs;
>+       } else {
>+               result->num_of_tot_m_bs_in_disp =3D 0;
>+               result->num_of_err_m_bs_in_disp =3D 0;
>+       }
>+
>+       if (result->notification_flags & DEC_NOTI_FLAG_SEQ_CHANGE) {
>+               wave6_get_dec_seq_result(inst, &p_dec_info->initial_info);
>+               p_dec_info->initial_info.sequence_no++;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_fini_seq(struct vpu_instance *inst, u32 *fail_res)
>+{
>+       int ret;
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_DESTROY_INSTANCE);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret)
>+               return -ETIMEDOUT;
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               *fail_res =3D vpu_read_reg(inst->dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(inst->dev, *fail_res);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+void wave6_vpu_dec_set_bitstream_end(struct vpu_instance *inst, bool eos)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       p_dec_info->stream_end =3D eos ? true : false;
>+}
>+
>+dma_addr_t wave6_vpu_dec_get_rd_ptr(struct vpu_instance *inst)
>+{
>+       return vpu_read_reg(inst->dev, W6_RET_DEC_BS_RD_PTR);
>+}
>+
>+int wave6_vpu_dec_flush(struct vpu_instance *inst)
>+{
>+       int ret, index;
>+       u32 unused_idc;
>+       u32 used_idc;
>+       u32 using_idc;
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_FLUSH_INSTANCE);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret)
>+               return -ETIMEDOUT;
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reg_val;
>+
>+               reg_val =3D vpu_read_reg(inst->dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(inst->dev, reg_val);
>+               return -EIO;
>+       }
>+
>+       ret =3D wave6_send_query(inst->dev, inst->id, inst->std,
>W6_QUERY_OPT_GET_FLUSH_CMD_INFO);
>+       if (ret)
>+               return ret;
>+
>+       unused_idc =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_FLUSH_CMD_BUF_STATE_UNUSED_IDC);
>+       if (unused_idc)
>+               dev_dbg(inst->dev->dev, "%s: unused_idc %d\n", __func__,
>unused_idc);
>+
>+       used_idc =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_FLUSH_CMD_BUF_STATE_USED_IDC);
>+       if (used_idc)
>+               dev_dbg(inst->dev->dev, "%s: used_idc %d\n", __func__, use=
d_idc);
>+
>+       using_idc =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_FLUSH_CMD_BUF_STATE_USING_IDC);
>+       if (using_idc)
>+               dev_err(inst->dev->dev, "%s: using_idc %d\n", __func__, us=
ing_idc);
>+
>+       for (index =3D 0; index < WAVE6_MAX_FBS; index++) {
>+               struct frame_buffer fb;
>+               bool remove =3D false;
>+               dma_addr_t addr =3D vpu_read_reg(inst->dev,
>+                                              W6_RET_DEC_FLUSH_CMD_DISP_A=
DDR_0 + index *
>4);
>+
>+               if ((unused_idc >> index) & 0x1)
>+                       remove =3D true;
>+               if ((used_idc >> index) & 0x1)
>+                       remove =3D true;
>+
>+               fb =3D wave6_dec_get_display_buffer(inst, addr, remove);
>+       }
>+
>+       return 0;
>+}
>+
>+struct enc_cmd_set_param_reg {
>+       u32 enable;
>+       u32 src_size;
>+       u32 custom_map_endian;
>+       u32 sps_param;
>+       u32 pps_param;
>+       u32 gop_param;
>+       u32 intra_param;
>+       u32 conf_win_top_bot;
>+       u32 conf_win_left_right;
>+       u32 rdo_param;
>+       u32 slice_param;
>+       u32 intra_refresh;
>+       u32 intra_min_max_qp;
>+       u32 rc_frame_rate;
>+       u32 rc_target_rate;
>+       u32 rc_param;
>+       u32 hvs_param;
>+       u32 rc_max_bitrate;
>+       u32 rc_vbv_buffer_size;
>+       u32 inter_min_max_qp;
>+       u32 rot_param;
>+       u32 num_units_in_tick;
>+       u32 time_scale;
>+       u32 num_ticks_poc_diff_one;
>+       u32 max_intra_pic_bit;
>+       u32 max_inter_pic_bit;
>+       u32 bg_param;
>+       u32 non_vcl_param;
>+       u32 vui_rbsp_addr;
>+       u32 hrd_rbsp_addr;
>+       u32 qround_offset;
>+       u32 quant_param_1;
>+       u32 quant_param_2;
>+       u32 custom_gop_param;
>+       u32 custom_gop_pic_param[MAX_GOP_NUM];
>+       u32 tile_param;
>+       u32 custom_lambda[MAX_CUSTOM_LAMBDA_NUM];
>+       u32 temporal_layer_qp[MAX_NUM_CHANGEABLE_TEMPORAL_LAYER];
>+       u32 scl_src_size;
>+       u32 scl_param;
>+       u32 color_param;
>+       u32 sar_param;
>+       u32 sar_extended;
>+};
>+
>+struct enc_cmd_change_param_reg {
>+       u32 enable;
>+       u32 rc_target_rate;
>+};
>+
>+int wave6_vpu_build_up_enc_param(struct device *dev, struct vpu_instance
>*inst,
>+                                struct enc_open_param *param)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       u32 reg_val;
>+       int ret;
>+
>+       p_enc_info->cycle_per_tick =3D 256;
>+       p_enc_info->line_buf_int_en =3D param->line_buf_int_en;
>+       p_enc_info->stride =3D 0;
>+       p_enc_info->initial_info_obtained =3D false;
>+       p_enc_info->sec_axi_info.use_enc_rdo =3D true;
>+       p_enc_info->sec_axi_info.use_enc_lf =3D true;
>+
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_TEMP_BASE,
>param->inst_buffer.temp_base);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_TEMP_SIZE,
>param->inst_buffer.temp_size);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_AR_TABLE_BASE,
>param->inst_buffer.ar_base);
>+
>+       reg_val =3D wave6_vdi_convert_endian(param->stream_endian);
>+       reg_val =3D (~reg_val & VDI_128BIT_ENDIAN_MASK);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_BS_PARAM,
>reg_val);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_SRC_OPT, 0);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_ADDR_EXT,
>param->ext_addr_vcpu);
>+
>+       reg_val =3D (COMMAND_QUEUE_DEPTH << 8) | (1 << 4) | 1;
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_CORE_INFO,
>reg_val);
>+
>+       reg_val =3D (param->is_secure_inst << 8) | (param->inst_priority);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_CREATE_INST_PRIORITY,
>reg_val);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_CREATE_INST_TIMEOUT_CYCLE_COUNT,
>+                     W6_VPU_TIMEOUT_CYCLE_COUNT);
>+
>+       wave6_send_command(inst->dev, 0, inst->std,
>W6_CMD_CREATE_INSTANCE);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reason_code =3D vpu_read_reg(inst->dev, W6_RET_FAIL_RE=
ASON);
>+
>+               wave6_print_reg_err(inst->dev, reason_code);
>+               return -EIO;
>+       }
>+
>+       inst->id =3D vpu_read_reg(inst->dev, W6_RET_INSTANCE_ID);
>+
>+       return 0;
>+}
>+
>+static int wave6_set_enc_crop_info(u32 codec, struct enc_codec_param
>*param, int rot_mode,
>+                                  int width, int height)
>+{
>+       int aligned_width =3D (codec =3D=3D W_HEVC_ENC) ? ALIGN(width, 32)=
 :
>ALIGN(width, 16);
>+       int aligned_height =3D (codec =3D=3D W_HEVC_ENC) ? ALIGN(height, 3=
2) :
>ALIGN(height, 16);
>+       int pad_right, pad_bot;
>+       int crop_right, crop_left, crop_top, crop_bot;
>+       int prp_mode =3D rot_mode >> 1;
>+
>+       if (codec =3D=3D W_HEVC_ENC &&
>+           (!rot_mode || prp_mode =3D=3D 14))
>+               return 0;
>+
>+       pad_right =3D aligned_width - width;
>+       pad_bot =3D aligned_height - height;
>+
>+       if (param->conf_win.right > 0)
>+               crop_right =3D param->conf_win.right + pad_right;
>+       else
>+               crop_right =3D pad_right;
>+
>+       if (param->conf_win.bottom > 0)
>+               crop_bot =3D param->conf_win.bottom + pad_bot;
>+       else
>+               crop_bot =3D pad_bot;
>+
>+       crop_top =3D param->conf_win.top;
>+       crop_left =3D param->conf_win.left;
>+
>+       param->conf_win.top =3D crop_top;
>+       param->conf_win.left =3D crop_left;
>+       param->conf_win.bottom =3D crop_bot;
>+       param->conf_win.right =3D crop_right;
>+
>+       if (prp_mode =3D=3D 1 || prp_mode =3D=3D 15) {
>+               param->conf_win.top =3D crop_right;
>+               param->conf_win.left =3D crop_top;
>+               param->conf_win.bottom =3D crop_left;
>+               param->conf_win.right =3D crop_bot;
>+       } else if (prp_mode =3D=3D 2 || prp_mode =3D=3D 12) {
>+               param->conf_win.top =3D crop_bot;
>+               param->conf_win.left =3D crop_right;
>+               param->conf_win.bottom =3D crop_top;
>+               param->conf_win.right =3D crop_left;
>+       } else if (prp_mode =3D=3D 3 || prp_mode =3D=3D 13) {
>+               param->conf_win.top =3D crop_left;
>+               param->conf_win.left =3D crop_bot;
>+               param->conf_win.bottom =3D crop_right;
>+               param->conf_win.right =3D crop_top;
>+       } else if (prp_mode =3D=3D 4 || prp_mode =3D=3D 10) {
>+               param->conf_win.top =3D crop_bot;
>+               param->conf_win.bottom =3D crop_top;
>+       } else if (prp_mode =3D=3D 8 || prp_mode =3D=3D 6) {
>+               param->conf_win.left =3D crop_right;
>+               param->conf_win.right =3D crop_left;
>+       } else if (prp_mode =3D=3D 5 || prp_mode =3D=3D 11) {
>+               param->conf_win.top =3D crop_left;
>+               param->conf_win.left =3D crop_top;
>+               param->conf_win.bottom =3D crop_right;
>+               param->conf_win.right =3D crop_bot;
>+       } else if (prp_mode =3D=3D 7 || prp_mode =3D=3D 9) {
>+               param->conf_win.top =3D crop_right;
>+               param->conf_win.left =3D crop_bot;
>+               param->conf_win.bottom =3D crop_left;
>+               param->conf_win.right =3D crop_top;
>+       }
>+
>+       return 0;
>+}
>+
>+static bool wave6_update_enc_info(struct enc_info *p_enc_info)
>+{
>+       struct enc_open_param open_param =3D p_enc_info->open_param;
>+
>+       p_enc_info->width =3D open_param.pic_width;
>+       p_enc_info->height =3D open_param.pic_height;
>+
>+       switch (open_param.output_format) {
>+       case FORMAT_420:
>+       case FORMAT_420_P10_16BIT_MSB:
>+       case FORMAT_420_P10_16BIT_LSB:
>+       case FORMAT_420_P10_32BIT_MSB:
>+       case FORMAT_420_P10_32BIT_LSB:
>+               p_enc_info->color_format =3D 1;
>+               break;
>+       case FORMAT_422:
>+       case FORMAT_422_P10_16BIT_MSB:
>+       case FORMAT_422_P10_16BIT_LSB:
>+       case FORMAT_422_P10_32BIT_MSB:
>+       case FORMAT_422_P10_32BIT_LSB:
>+               p_enc_info->color_format =3D 2;
>+               break;
>+       case FORMAT_444:
>+       case FORMAT_444_P10_16BIT_MSB:
>+       case FORMAT_444_P10_16BIT_LSB:
>+       case FORMAT_444_P10_32BIT_MSB:
>+       case FORMAT_444_P10_32BIT_LSB:
>+               p_enc_info->color_format =3D 3;
>+               break;
>+       case FORMAT_400:
>+       case FORMAT_400_P10_16BIT_MSB:
>+       case FORMAT_400_P10_16BIT_LSB:
>+       case FORMAT_400_P10_32BIT_MSB:
>+       case FORMAT_400_P10_32BIT_LSB:
>+               p_enc_info->color_format =3D 0;
>+               break;
>+       default:
>+               return false;
>+       }
>+
>+       return true;
>+}
>+
>+static void wave6_gen_set_param_reg_common(struct enc_info *p_enc_info,
>enum codec_std std,
>+                                          struct enc_cmd_set_param_reg *r=
eg)
>+{
>+       struct enc_open_param *p_open_param =3D &p_enc_info->open_param;
>+       struct enc_codec_param *p_param =3D &p_open_param->codec_param;
>+       unsigned int i, endian;
>+       u32 rot_mir_mode =3D 0;
>+
>+       endian =3D wave6_vdi_convert_endian(p_param->custom_map_endian);
>+       endian =3D (~endian & VDI_128BIT_ENDIAN_MASK);
>+
>+       if (p_enc_info->rotation_enable) {
>+               switch (p_enc_info->rotation_angle) {
>+               case 0:
>+                       rot_mir_mode |=3D 0x0; break;
>+               case 90:
>+                       rot_mir_mode |=3D 0x3; break;
>+               case 180:
>+                       rot_mir_mode |=3D 0x5; break;
>+               case 270:
>+                       rot_mir_mode |=3D 0x7; break;
>+               }
>+       }
>+
>+       if (p_enc_info->mirror_enable) {
>+               switch (p_enc_info->mirror_direction) {
>+               case MIRDIR_NONE:
>+                       rot_mir_mode |=3D 0x0; break;
>+               case MIRDIR_VER:
>+                       rot_mir_mode |=3D 0x9; break;
>+               case MIRDIR_HOR:
>+                       rot_mir_mode |=3D 0x11; break;
>+               case MIRDIR_HOR_VER:
>+                       rot_mir_mode |=3D 0x19; break;
>+               }
>+       }
>+
>+       wave6_set_enc_crop_info(std, p_param, rot_mir_mode, p_enc_info-
>>width, p_enc_info->height);
>+
>+       reg->src_size =3D (p_enc_info->height << 16) | p_enc_info->width;
>+       reg->custom_map_endian =3D endian;
>+       reg->gop_param =3D (p_param->temp_layer_cnt << 16) |
>+                        (p_param->temp_layer[3].change_qp << 11) |
>+                        (p_param->temp_layer[2].change_qp << 10) |
>+                        (p_param->temp_layer[1].change_qp << 9) |
>+                        (p_param->temp_layer[0].change_qp << 8) |
>+                        p_param->gop_preset_idx;
>+       reg->intra_refresh =3D (p_param->intra_refresh_arg << 16) | p_para=
m-
>>intra_refresh_mode;
>+       reg->intra_min_max_qp =3D (p_param->max_qp_i << 6) | p_param-
>>min_qp_i;
>+       reg->rc_frame_rate =3D p_param->frame_rate;
>+       reg->rc_target_rate =3D p_param->bitrate;
>+       reg->rc_param =3D (p_param->rc_update_speed << 24) |
>+                       (p_param->rc_initial_level << 20) |
>+                       ((p_param->rc_initial_qp & 0x3f) << 14) |
>+                       (p_param->rc_mode << 13) |
>+                       (p_param->pic_rc_max_dqp << 7) |
>+                       (p_param->en_vbv_overflow_drop_frame << 3) |
>+                       (p_param->en_cu_level_rate_control << 1) |
>+                       p_param->en_rate_control;
>+       reg->hvs_param =3D (p_param->max_delta_qp << 12) | p_param-
>>hvs_qp_scale_div2;
>+       reg->rc_max_bitrate =3D p_param->max_bitrate;
>+       reg->rc_vbv_buffer_size =3D p_param->cpb_size;
>+       reg->inter_min_max_qp =3D (p_param->max_qp_b << 18) |
>+                               (p_param->min_qp_b << 12) |
>+                               (p_param->max_qp_p << 6) |
>+                               p_param->min_qp_p;
>+       reg->rot_param =3D rot_mir_mode;
>+       reg->conf_win_top_bot =3D (p_param->conf_win.bottom << 16) | p_par=
am-
>>conf_win.top;
>+       reg->conf_win_left_right =3D (p_param->conf_win.right << 16) | p_p=
aram-
>>conf_win.left;
>+       reg->num_units_in_tick =3D p_param->num_units_in_tick;
>+       reg->time_scale =3D p_param->time_scale;
>+       reg->num_ticks_poc_diff_one =3D p_param->num_ticks_poc_diff_one;
>+       reg->max_intra_pic_bit =3D p_param->max_intra_pic_bit;
>+       reg->max_inter_pic_bit =3D p_param->max_inter_pic_bit;
>+       reg->bg_param =3D ((p_param->bg_delta_qp & 0x3F) << 24) |
>+                       (p_param->bg_th_mean_diff << 10) |
>+                       (p_param->bg_th_diff << 1) |
>+                       p_param->en_bg_detect;
>+       reg->qround_offset =3D (p_param->q_round_inter << 13) |
>+                            (p_param->q_round_intra << 2);
>+       reg->custom_gop_param =3D p_param->gop_param.custom_gop_size;
>+       for (i =3D 0; i < p_param->gop_param.custom_gop_size; i++) {
>+               struct custom_gop_pic_param pic_param =3D p_param-
>>gop_param.pic_param[i];
>+
>+               reg->custom_gop_pic_param[i] =3D (pic_param.temporal_id <<=
 26) |
>+                                              ((pic_param.ref_poc_l1 & 0x=
3F) << 20) |
>+                                              ((pic_param.ref_poc_l0 & 0x=
3F) << 14) |
>+                                              (pic_param.use_multi_ref_p =
<< 13) |
>+                                              (pic_param.pic_qp << 7) |
>+                                              (pic_param.poc_offset << 2)=
 |
>+                                              pic_param.pic_type;
>+       }
>+       for (i =3D 0; i < MAX_CUSTOM_LAMBDA_NUM; i++) {
>+               reg->custom_lambda[i] =3D (p_param->custom_lambda_ssd[i] <=
< 7) |
>+                                       p_param->custom_lambda_sad[i];
>+       }
>+       for (i =3D 0; i < MAX_NUM_CHANGEABLE_TEMPORAL_LAYER; i++) {
>+               reg->temporal_layer_qp[i] =3D (p_param->temp_layer[i].qp_b=
 << 12) |
>+                                           (p_param->temp_layer[i].qp_p <=
< 6) |
>+                                           p_param->temp_layer[i].qp_i;
>+       }
>+       reg->scl_src_size =3D (p_open_param->pic_height << 16) | p_open_pa=
ram-
>>pic_width;
>+       reg->scl_param =3D (p_enc_info->scaler_info.coef_mode << 1) | p_en=
c_info-
>>scaler_info.enable;
>+       reg->color_param =3D ((p_param->color.chroma_sample_position & 0x3=
) <<
>26) |
>+                          (p_param->color.color_range << 25) |
>+                          ((p_param->color.matrix_coefficients & 0xFF) <<=
 17) |
>+                          ((p_param->color.transfer_characteristics & 0xF=
F) << 9) |
>+                          ((p_param->color.color_primaries & 0xFF) << 1) =
|
>+                          p_param->color.color_description_present;
>+       reg->sar_param =3D ((p_param->sar.idc & 0xFF) << 1) |
>+                        (p_param->sar.enable & 0x1);
>+       reg->sar_extended =3D ((p_param->sar.height & 0xFFFF) << 16) |
>+                           (p_param->sar.width & 0xFFFF);
>+}
>+
>+static void wave6_gen_set_param_reg_hevc(struct enc_info *p_enc_info,
>+                                        struct enc_cmd_set_param_reg *reg=
)
>+{
>+       struct enc_open_param *p_open_param =3D &p_enc_info->open_param;
>+       struct enc_codec_param *p_param =3D &p_open_param->codec_param;
>+
>+       reg->sps_param =3D (p_param->en_scaling_list << 31) |
>+                        (p_param->en_still_picture << 30) |
>+                        (p_param->en_auto_level_adjusting << 28) |
>+                        (p_param->en_strong_intra_smoothing << 27) |
>+                        (p_param->en_intra_trans_skip << 25) |
>+                        (p_param->en_sao << 24) |
>+                        (p_param->en_temporal_mvp << 23) |
>+                        (p_param->en_long_term << 21) |
>+                        (p_enc_info->color_format << 19) |
>+                        (p_param->internal_bit_depth << 14) |
>+                        (p_param->tier << 12) |
>+                        (p_param->level << 3) |
>+                        p_param->profile;
>+       reg->pps_param =3D ((p_param->cr_qp_offset & 0x1F) << 19) |
>+                        ((p_param->cb_qp_offset & 0x1F) << 14) |
>+                        ((p_param->tc_offset_div2 & 0xF) << 10) |
>+                        ((p_param->beta_offset_div2 & 0xF) << 6)  |
>+                        ((!p_param->en_dbk) << 5)  |
>+                        (p_param->en_lf_cross_slice_boundary << 2) |
>+                        (p_param->en_constrained_intra_pred << 1);
>+       reg->intra_param =3D (p_param->intra_period << 16) |
>+                          (p_param->forced_idr_header << 9) |
>+                          (p_param->qp << 3) |
>+                          p_param->decoding_refresh_type;
>+       reg->rdo_param =3D (p_param->en_custom_lambda << 22) |
>+                        (p_param->en_me_center << 21) |
>+                        (p_param->en_qp_map << 20) |
>+                        (p_param->en_mode_map << 19) |
>+                        (p_param->en_q_round_offset << 17) |
>+                        (p_param->dis_coef_clear << 4) |
>+                        (p_param->en_adaptive_round << 3) |
>+                        (p_param->en_hvs_qp << 2);
>+       reg->slice_param =3D (p_param->slice_arg << 3) | p_param->slice_mo=
de;
>+       reg->quant_param_2 =3D ((p_param->lambda_dqp_inter & 0x3F) << 14) =
|
>+                            ((p_param->lambda_dqp_intra & 0x3F) << 8);
>+       reg->non_vcl_param =3D (p_open_param->hrd_rbsp_data_size << 18) |
>+                            (p_open_param->enc_hrd_rbsp_in_vps << 2) |
>+                            (NON_VCL_PARAM_ENCODE_VUI) |
>+                            p_open_param->enc_aud;
>+       reg->hrd_rbsp_addr =3D p_open_param->hrd_rbsp_data_addr;
>+}
>+
>+static void wave6_gen_set_param_reg_avc(struct enc_info *p_enc_info,
>+                                       struct enc_cmd_set_param_reg *reg)
>+{
>+       struct enc_open_param *p_open_param =3D &p_enc_info->open_param;
>+       struct enc_codec_param *p_param =3D &p_open_param->codec_param;
>+
>+       reg->sps_param =3D (p_param->en_scaling_list << 31) |
>+                        (p_param->en_auto_level_adjusting << 28) |
>+                        (p_param->en_long_term << 21) |
>+                        (p_enc_info->color_format << 19) |
>+                        (p_param->internal_bit_depth << 14) |
>+                        (p_param->level << 3) |
>+                        p_param->profile;
>+       reg->pps_param =3D (p_param->en_cabac << 30) |
>+                        (p_param->en_transform8x8 << 29) |
>+                        ((p_param->cr_qp_offset & 0x1F) << 19) |
>+                        ((p_param->cb_qp_offset & 0x1F) << 14) |
>+                        ((p_param->tc_offset_div2 & 0xF) << 10) |
>+                        ((p_param->beta_offset_div2 & 0xF) << 6) |
>+                        ((!p_param->en_dbk) << 5) |
>+                        (p_param->en_lf_cross_slice_boundary << 2) |
>+                        (p_param->en_constrained_intra_pred << 1);
>+       reg->intra_param =3D (p_param->forced_idr_header << 28) |
>+                          (p_param->idr_period << 17) |
>+                          (p_param->intra_period << 6) |
>+                          p_param->qp;
>+       reg->rdo_param =3D (p_param->en_custom_lambda << 22) |
>+                        (p_param->en_me_center << 21) |
>+                        (p_param->en_qp_map << 20) |
>+                        (p_param->en_mode_map << 19) |
>+                        (p_param->en_q_round_offset << 17) |
>+                        (p_param->dis_coef_clear << 4) |
>+                        (p_param->en_adaptive_round << 3) |
>+                        (p_param->en_hvs_qp << 2);
>+       reg->slice_param =3D (p_param->slice_arg << 3) | p_param->slice_mo=
de;
>+       reg->quant_param_2 =3D ((p_param->lambda_dqp_inter & 0x3F) << 14) =
|
>+                            ((p_param->lambda_dqp_intra & 0x3F) << 8);
>+       reg->non_vcl_param =3D (p_open_param->hrd_rbsp_data_size << 18) |
>+                            (p_open_param->enc_hrd_rbsp_in_vps << 2) |
>+                            (NON_VCL_PARAM_ENCODE_VUI) |
>+                            p_open_param->enc_aud;
>+       reg->hrd_rbsp_addr =3D p_open_param->hrd_rbsp_data_addr;
>+}
>+
>+static void wave6_gen_change_param_reg_common(struct vpu_instance
>*inst,
>+                                             struct enc_info *p_enc_info,
>+                                             struct enc_cmd_change_param_=
reg *reg)
>+{
>+       if (p_enc_info->open_param.codec_param.bitrate !=3D inst-
>>enc_ctrls.bitrate) {
>+               reg->enable |=3D
>BIT(W6_PARAM_CHANGE_ENABLE_BIT_RC_TARGET_RATE);
>+               reg->rc_target_rate =3D inst->enc_ctrls.bitrate;
>+               p_enc_info->open_param.codec_param.bitrate =3D inst-
>>enc_ctrls.bitrate;
>+       }
>+}
>+
>+int wave6_vpu_enc_init_seq(struct vpu_instance *inst)
>+{
>+       struct enc_cmd_set_param_reg reg;
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       u32 i;
>+       int ret;
>+
>+       memset(&reg, 0, sizeof(struct enc_cmd_set_param_reg));
>+
>+       if (!wave6_update_enc_info(p_enc_info))
>+               return -EINVAL;
>+
>+       wave6_gen_set_param_reg_common(p_enc_info, inst->std, &reg);
>+       if (inst->std =3D=3D W_HEVC_ENC)
>+               wave6_gen_set_param_reg_hevc(p_enc_info, &reg);
>+       else if (inst->std =3D=3D W_AVC_ENC)
>+               wave6_gen_set_param_reg_avc(p_enc_info, &reg);
>+
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_OPTION,
>W6_SET_PARAM_OPT_COMMON);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_ENABLE,
>reg.enable);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SRC_SIZE,
>reg.src_size);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CUSTOM_MAP_ENDIAN,
>reg.custom_map_endian);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SPS_PARAM,
>reg.sps_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_PPS_PARAM,
>reg.pps_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_GOP_PARAM,
>reg.gop_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_INTRA_PARAM,
>reg.intra_param);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CONF_WIN_TOP_BOT, reg.conf_win_top_bot);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CONF_WIN_LEFT_RIGHT,
>reg.conf_win_left_right);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RDO_PARAM,
>reg.rdo_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SLICE_PARAM,
>reg.slice_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_INTRA_REFRESH,
>reg.intra_refresh);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_INTRA_MIN_MAX_QP, reg.intra_min_max_qp);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RC_FRAME_RATE,
>reg.rc_frame_rate);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RC_TARGET_RATE,
>reg.rc_target_rate);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RC_PARAM,
>reg.rc_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_HVS_PARAM,
>reg.hvs_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RC_MAX_BITRATE,
>reg.rc_max_bitrate);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_RC_VBV_BUFFER_SIZE, reg.rc_vbv_buffer_size);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_INTER_MIN_MAX_QP, reg.inter_min_max_qp);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_ROT_PARAM,
>reg.rot_param);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_NUM_UNITS_IN_TICK, reg.num_units_in_tick);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_TIME_SCALE,
>reg.time_scale);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_NUM_TICKS_POC_DIFF_ONE,
>+                     reg.num_ticks_poc_diff_one);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_MAX_INTRA_PIC_BIT, reg.max_intra_pic_bit);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_MAX_INTER_PIC_BIT, reg.max_inter_pic_bit);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_BG_PARAM,
>reg.bg_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_NON_VCL_PARAM,
>reg.non_vcl_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_VUI_RBSP_ADDR,
>reg.vui_rbsp_addr);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_HRD_RBSP_ADDR,
>reg.hrd_rbsp_addr);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_QROUND_OFFSET,
>reg.qround_offset);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_QUANT_PARAM_1,
>reg.quant_param_1);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_QUANT_PARAM_2,
>reg.quant_param_2);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PARAM, reg.custom_gop_param);
>+       for (i =3D 0; i < MAX_GOP_NUM; i++)
>+               vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_0 + (i * 4),
>+                             reg.custom_gop_pic_param[i]);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_TILE_PARAM,
>reg.tile_param);
>+       for (i =3D 0; i < MAX_CUSTOM_LAMBDA_NUM; i++)
>+               vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_0 + (i * 4),
>+                             reg.custom_lambda[i]);
>+       for (i =3D 0; i < MAX_NUM_CHANGEABLE_TEMPORAL_LAYER; i++)
>+               vpu_write_reg(inst->dev,
>W6_CMD_ENC_SET_PARAM_TEMPORAL_LAYER_0_QP + (i * 4),
>+                             reg.temporal_layer_qp[i]);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SCL_SRC_SIZE,
>reg.scl_src_size);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SCL_PARAM,
>reg.scl_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_COLOR_PARAM,
>reg.color_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SAR_PARAM,
>reg.sar_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_SAR_EXTENDED,
>reg.sar_extended);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_ENC_SET_PARAM);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reason_code =3D vpu_read_reg(inst->dev, W6_RET_FAIL_RE=
ASON);
>+
>+               wave6_print_reg_err(inst->dev, reason_code);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_get_seq_info(struct vpu_instance *inst, struct
>enc_initial_info *info)
>+{
>+       int ret;
>+
>+       ret =3D wave6_send_query(inst->dev, inst->id, inst->std,
>W6_QUERY_OPT_GET_RESULT);
>+       if (ret)
>+               return ret;
>+
>+       if (vpu_read_reg(inst->dev, W6_RET_ENC_ENCODING_SUCCESS) !=3D 1) {
>+               info->err_reason =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_ERR_INFO);
>+               ret =3D -EIO;
>+       } else {
>+               info->warn_info =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_WARN_INFO);
>+       }
>+
>+       info->min_frame_buffer_count =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_NUM_REQUIRED_FBC_FB);
>+       info->min_src_frame_count =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_MIN_SRC_BUF_NUM);
>+       info->max_latency_pictures =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_MAX_LATENCY_PICTURES);
>+       info->req_mv_buffer_count =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_NUM_REQUIRED_COL_BUF);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_change_seq(struct vpu_instance *inst, bool *changed)
>+{
>+       struct enc_cmd_change_param_reg reg;
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int ret;
>+
>+       memset(&reg, 0, sizeof(struct enc_cmd_change_param_reg));
>+
>+       wave6_gen_change_param_reg_common(inst, p_enc_info, &reg);
>+
>+       if (!reg.enable)
>+               return 0;
>+
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_OPTION,
>W6_SET_PARAM_OPT_CHANGE_PARAM);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_ENABLE,
>reg.enable);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_PARAM_RC_TARGET_RATE,
>reg.rc_target_rate);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_ENC_SET_PARAM);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_warn(inst->dev->dev, "enc set param timed out\n");
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               u32 reason_code =3D vpu_read_reg(inst->dev, W6_RET_FAIL_RE=
ASON);
>+
>+               wave6_print_reg_err(inst->dev, reason_code);
>+               return -EIO;
>+       }
>+
>+       *changed =3D true;
>+
>+       return 0;
>+}
>+
>+struct enc_cmd_set_fb_reg {
>+       u32 option;
>+       u32 pic_info;
>+       u32 pic_size;
>+       u32 num_fb;
>+       u32 fbc_stride;
>+       u32 fbc_y[WAVE6_MAX_FBS];
>+       u32 fbc_c[WAVE6_MAX_FBS];
>+       u32 fbc_cr[WAVE6_MAX_FBS];
>+       u32 fbc_y_offset[WAVE6_MAX_FBS];
>+       u32 fbc_c_offset[WAVE6_MAX_FBS];
>+       u32 fbc_cr_offset[WAVE6_MAX_FBS];
>+       u32 mv_col[WAVE6_MAX_FBS];
>+       u32 sub_sampled[WAVE6_MAX_FBS];
>+       u32 default_cdf;
>+};
>+
>+static void wave6_gen_set_fb_reg(struct enc_info *p_enc_info, enum
>codec_std std,
>+                                struct frame_buffer *fb_arr, struct enc_c=
md_set_fb_reg
>*reg)
>+{
>+       struct enc_open_param *p_open_param =3D &p_enc_info->open_param;
>+       u32 mv_count =3D p_enc_info->initial_info.req_mv_buffer_count;
>+       u32 buf_width, buf_height;
>+       u32 stride_l, stride_c, i;
>+
>+       if (std =3D=3D W_AVC_ENC) {
>+               buf_width =3D ALIGN(p_enc_info->width, 16);
>+               buf_height =3D ALIGN(p_enc_info->height, 16);
>+               if (p_enc_info->rotation_angle =3D=3D 90 || p_enc_info->ro=
tation_angle
>=3D=3D 270) {
>+                       buf_width =3D ALIGN(p_enc_info->height, 16);
>+                       buf_height =3D ALIGN(p_enc_info->width, 16);
>+               }
>+       } else {
>+               buf_width =3D ALIGN(p_enc_info->width, 8);
>+               buf_height =3D ALIGN(p_enc_info->height, 8);
>+               if ((p_enc_info->rotation_angle !=3D 0 || p_enc_info-
>>mirror_direction !=3D 0) &&
>+                   !(p_enc_info->rotation_angle =3D=3D 180 &&
>+                     p_enc_info->mirror_direction =3D=3D MIRDIR_HOR_VER))=
 {
>+                       buf_width =3D ALIGN(p_enc_info->width, 32);
>+                       buf_height =3D ALIGN(p_enc_info->height, 32);
>+               }
>+               if (p_enc_info->rotation_angle =3D=3D 90 || p_enc_info->ro=
tation_angle
>=3D=3D 270) {
>+                       buf_width =3D ALIGN(p_enc_info->height, 32);
>+                       buf_height =3D ALIGN(p_enc_info->width, 32);
>+               }
>+       }
>+
>+       if ((p_enc_info->rotation_angle !=3D 0 || p_enc_info->mirror_direc=
tion !=3D 0)
>&&
>+           !(p_enc_info->rotation_angle =3D=3D 180 &&
>+             p_enc_info->mirror_direction =3D=3D MIRDIR_HOR_VER)) {
>+               stride_l =3D ALIGN((buf_width + 63), 64);
>+               stride_c =3D ALIGN((buf_width + 31), 32) / 2;
>+       } else {
>+               stride_l =3D ALIGN((p_enc_info->width) + 63, 64);
>+               stride_c =3D ALIGN((p_enc_info->width) + 31, 32) / 2;
>+       }
>+
>+       reg->option =3D (p_open_param->enable_non_ref_fbc_write << 26) | (=
1 <<
>4) | (1 << 3);
>+       reg->pic_info =3D p_enc_info->stride;
>+       reg->pic_size =3D (buf_width << 16) | buf_height;
>+       reg->num_fb =3D ((p_enc_info->num_frame_buffers - 1) << 16) | (mv_=
count
>- 1);
>+       reg->fbc_stride =3D (stride_l << 16) | stride_c;
>+       reg->default_cdf =3D 0;
>+
>+       for (i =3D 0; i < p_enc_info->num_frame_buffers; i++) {
>+               reg->fbc_y[i] =3D fb_arr[i].buf_y;
>+               reg->fbc_c[i] =3D fb_arr[i].buf_cb;
>+               reg->fbc_cr[i] =3D fb_arr[i].buf_cr;
>+               reg->fbc_y_offset[i] =3D p_enc_info->vb_fbc_y_tbl[i].daddr=
;
>+               reg->fbc_c_offset[i] =3D p_enc_info->vb_fbc_c_tbl[i].daddr=
;
>+               reg->fbc_cr_offset[i] =3D p_enc_info->vb_fbc_c_tbl[i].dadd=
r +
>+                                               (p_enc_info->vb_fbc_c_tbl[=
i].size >> 1);
>+               reg->sub_sampled[i] =3D p_enc_info->vb_sub_sam_buf[i].dadd=
r;
>+       }
>+       for (i =3D 0; i < mv_count; i++)
>+               reg->mv_col[i] =3D p_enc_info->vb_mv[i].daddr;
>+}
>+
>+int wave6_vpu_enc_register_frame_buffer(struct vpu_instance *inst, struct
>frame_buffer *fb_arr)
>+{
>+       struct enc_cmd_set_fb_reg *reg;
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       u32 mv_count =3D p_enc_info->initial_info.req_mv_buffer_count;
>+       int ret;
>+       u32 idx;
>+
>+       for (idx =3D 0; idx < p_enc_info->num_frame_buffers; idx++) {
>+               if (!p_enc_info->vb_fbc_y_tbl[idx].daddr)
>+                       return -EINVAL;
>+               if (!p_enc_info->vb_fbc_c_tbl[idx].daddr)
>+                       return -EINVAL;
>+               if (!p_enc_info->vb_sub_sam_buf[idx].daddr)
>+                       return -EINVAL;
>+       }
>+       for (idx =3D 0; idx < mv_count; idx++) {
>+               if (!p_enc_info->vb_mv[idx].daddr)
>+                       return -EINVAL;
>+       }
>+
>+       reg =3D kzalloc(sizeof(*reg), GFP_KERNEL);
>+       if (!reg)
>+               return -ENOMEM;
>+
>+       wave6_gen_set_fb_reg(p_enc_info, inst->std, fb_arr, reg);
>+
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_OPTION, reg->option);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_PIC_INFO, reg-
>>pic_info);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_PIC_SIZE, reg->pic_size=
);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_NUM, reg->num_fb);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_STRIDE, reg-
>>fbc_stride);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_DEFAULT_CDF, reg-
>>default_cdf);
>+       for (idx =3D 0; idx < p_enc_info->num_frame_buffers; idx++) {
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_Y0 + (idx *=
 24),
>reg->fbc_y[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_C0 + (idx *=
 24),
>reg->fbc_c[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_CR0 + (idx =
*
>8), reg->fbc_cr[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_Y_OFFSET0 +
>(idx * 24),
>+                             reg->fbc_y_offset[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_C_OFFSET0 +
>(idx * 24),
>+                             reg->fbc_c_offset[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_FBC_CR_OFFSET0 =
+
>(idx * 8),
>+                             reg->fbc_cr_offset[idx]);
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_SUB_SAMPLED0 +
>(idx * 24),
>+                             reg->sub_sampled[idx]);
>+       }
>+       for (idx =3D 0; idx < mv_count; idx++)
>+               vpu_write_reg(inst->dev, W6_CMD_ENC_SET_FB_MV_COL0 + (idx =
*
>24), reg->mv_col[idx]);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std, W6_CMD_SET_FB);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               kfree(reg);
>+               return ret;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               kfree(reg);
>+               return -EIO;
>+       }
>+
>+       kfree(reg);
>+       return 0;
>+}
>+
>+struct enc_cmd_enc_pic_reg {
>+       u32 bs_start;
>+       u32 bs_size;
>+       u32 bs_option;
>+       u32 use_sec_axi;
>+       u32 report_param;
>+       u32 mv_histo_class0;
>+       u32 mv_histo_class1;
>+       u32 custom_map_param;
>+       u32 custom_map_addr;
>+       u32 src_pic_idx;
>+       u32 src_addr_y;
>+       u32 src_addr_u;
>+       u32 src_addr_v;
>+       u32 src_stride;
>+       u32 src_format;
>+       u32 src_axi_sel;
>+       u32 code_option;
>+       u32 pic_param;
>+       u32 longterm_pic;
>+       u32 prefix_sei_nal_addr;
>+       u32 prefix_sei_info;
>+       u32 suffix_sei_nal_addr;
>+       u32 suffix_sei_info;
>+       u32 timestamp;
>+       u32 csc_coeff[MAX_CSC_COEFF_NUM];
>+};
>+
>+static bool is_format_conv(enum frame_buffer_format in_fmt,
>+                          enum frame_buffer_format out_fmt)
>+{
>+       if (in_fmt =3D=3D FORMAT_420 ||
>+           in_fmt =3D=3D FORMAT_420_P10_16BIT_MSB ||
>+           in_fmt =3D=3D FORMAT_420_P10_16BIT_LSB ||
>+           in_fmt =3D=3D FORMAT_420_P10_32BIT_MSB ||
>+           in_fmt =3D=3D FORMAT_420_P10_32BIT_LSB) {
>+               if (out_fmt !=3D FORMAT_420 &&
>+                   out_fmt !=3D FORMAT_420_P10_16BIT_MSB &&
>+                   out_fmt !=3D FORMAT_420_P10_16BIT_LSB &&
>+                   out_fmt !=3D FORMAT_420_P10_32BIT_MSB &&
>+                   out_fmt !=3D FORMAT_420_P10_32BIT_LSB)
>+                       return true;
>+       } else if (in_fmt =3D=3D FORMAT_422 ||
>+                  in_fmt =3D=3D FORMAT_422_P10_16BIT_MSB ||
>+                  in_fmt =3D=3D FORMAT_422_P10_16BIT_LSB ||
>+                  in_fmt =3D=3D FORMAT_422_P10_32BIT_MSB ||
>+                  in_fmt =3D=3D FORMAT_422_P10_32BIT_LSB) {
>+               if (out_fmt !=3D FORMAT_422 &&
>+                   out_fmt !=3D FORMAT_422_P10_16BIT_MSB &&
>+                   out_fmt !=3D FORMAT_422_P10_16BIT_LSB &&
>+                   out_fmt !=3D FORMAT_422_P10_32BIT_MSB &&
>+                   out_fmt !=3D FORMAT_422_P10_32BIT_LSB)
>+                       return true;
>+       } else if (in_fmt =3D=3D FORMAT_444 ||
>+                  in_fmt =3D=3D FORMAT_444_P10_16BIT_MSB ||
>+                  in_fmt =3D=3D FORMAT_444_P10_16BIT_LSB ||
>+                  in_fmt =3D=3D FORMAT_444_P10_32BIT_MSB ||
>+                  in_fmt =3D=3D FORMAT_444_P10_32BIT_LSB) {
>+               if (out_fmt !=3D FORMAT_444 &&
>+                   out_fmt !=3D FORMAT_444_P10_16BIT_MSB &&
>+                   out_fmt !=3D FORMAT_444_P10_16BIT_LSB &&
>+                   out_fmt !=3D FORMAT_444_P10_32BIT_MSB &&
>+                   out_fmt !=3D FORMAT_444_P10_32BIT_LSB)
>+                       return true;
>+       }
>+
>+       return false;
>+}
>+
>+static void wave6_gen_enc_pic_reg(struct enc_info *p_enc_info, bool
>cbcr_interleave, bool nv21,
>+                                 struct enc_param *opt, struct enc_cmd_en=
c_pic_reg *reg)
>+{
>+       struct enc_open_param open =3D p_enc_info->open_param;
>+       struct enc_codec_param param =3D open.codec_param;
>+       bool is_lsb =3D false;
>+       bool is_10bit =3D false;
>+       bool is_3p4b =3D false;
>+       u32 stride_c;
>+       u32 src_frame_format;
>+       u32 endian;
>+       u32 color_format;
>+       bool is_ayuv =3D false;
>+       bool is_csc_format =3D false;
>+       bool is_24bit =3D false;
>+       bool format_conv;
>+
>+       endian =3D wave6_vdi_convert_endian(open.source_endian);
>+       endian =3D (~endian & VDI_128BIT_ENDIAN_MASK);
>+       format_conv =3D is_format_conv(open.src_format, open.output_format=
);
>+
>+       switch (open.src_format) {
>+       case FORMAT_420:
>+       case FORMAT_420_P10_16BIT_MSB:
>+       case FORMAT_420_P10_16BIT_LSB:
>+               color_format =3D 1;
>+               stride_c =3D (cbcr_interleave) ? opt->source_frame->stride=
 :
>+                                              (opt->source_frame->stride =
/ 2);
>+               break;
>+       case FORMAT_420_P10_32BIT_MSB:
>+       case FORMAT_420_P10_32BIT_LSB:
>+               color_format =3D 1;
>+               stride_c =3D (cbcr_interleave) ? opt->source_frame->stride=
 :
>+                                              ALIGN((opt->source_frame->s=
tride / 2), 16);
>+               break;
>+       case FORMAT_422:
>+       case FORMAT_422_P10_16BIT_MSB:
>+       case FORMAT_422_P10_16BIT_LSB:
>+               color_format =3D 2;
>+               stride_c =3D (cbcr_interleave) ? opt->source_frame->stride=
 :
>+                                              (opt->source_frame->stride =
/ 2);
>+               stride_c =3D (format_conv) ? (stride_c * 2) : stride_c;
>+               break;
>+       case FORMAT_422_P10_32BIT_MSB:
>+       case FORMAT_422_P10_32BIT_LSB:
>+               color_format =3D 2;
>+               stride_c =3D (cbcr_interleave) ? opt->source_frame->stride=
 :
>+                                              ALIGN((opt->source_frame->s=
tride / 2), 16);
>+               stride_c =3D (format_conv) ? (stride_c * 2) : stride_c;
>+               break;
>+       case FORMAT_444:
>+       case FORMAT_444_P10_16BIT_MSB:
>+       case FORMAT_444_P10_16BIT_LSB:
>+               color_format =3D 3;
>+               stride_c =3D (cbcr_interleave) ? (opt->source_frame->strid=
e * 2) :
>+                                              opt->source_frame->stride;
>+               stride_c =3D (format_conv) ? (stride_c * 2) : stride_c;
>+               break;
>+       case FORMAT_444_P10_32BIT_MSB:
>+       case FORMAT_444_P10_32BIT_LSB:
>+               color_format =3D 3;
>+               stride_c =3D (cbcr_interleave) ? ALIGN((opt->source_frame-=
>stride * 2),
>16) :
>+                                              opt->source_frame->stride;
>+               stride_c =3D (format_conv) ? (stride_c * 2) : stride_c;
>+               break;
>+       case FORMAT_YUV444_24BIT:
>+               color_format =3D 0;
>+               stride_c =3D ALIGN((opt->source_frame->stride * 2), 16);
>+               break;
>+       case FORMAT_RGB_24BIT_PACKED:
>+       case FORMAT_YUV444_24BIT_PACKED:
>+       case FORMAT_RGB_32BIT_PACKED:
>+       case FORMAT_RGB_P10_32BIT_PACKED:
>+       case FORMAT_YUV444_32BIT_PACKED:
>+       case FORMAT_YUV444_P10_32BIT_PACKED:
>+               color_format =3D 4;
>+               stride_c =3D 0;
>+               break;
>+       case FORMAT_YUYV:
>+       case FORMAT_YVYU:
>+       case FORMAT_UYVY:
>+       case FORMAT_VYUY:
>+       case FORMAT_YUYV_P10_16BIT_MSB:
>+       case FORMAT_YVYU_P10_16BIT_MSB:
>+       case FORMAT_UYVY_P10_16BIT_MSB:
>+       case FORMAT_VYUY_P10_16BIT_MSB:
>+       case FORMAT_YUYV_P10_16BIT_LSB:
>+       case FORMAT_YVYU_P10_16BIT_LSB:
>+       case FORMAT_UYVY_P10_16BIT_LSB:
>+       case FORMAT_VYUY_P10_16BIT_LSB:
>+       case FORMAT_YUYV_P10_32BIT_MSB:
>+       case FORMAT_YVYU_P10_32BIT_MSB:
>+       case FORMAT_UYVY_P10_32BIT_MSB:
>+       case FORMAT_VYUY_P10_32BIT_MSB:
>+       case FORMAT_YUYV_P10_32BIT_LSB:
>+       case FORMAT_YVYU_P10_32BIT_LSB:
>+       case FORMAT_UYVY_P10_32BIT_LSB:
>+       case FORMAT_VYUY_P10_32BIT_LSB:
>+               color_format =3D 2;
>+               stride_c =3D 0;
>+               break;
>+       default:
>+               color_format =3D 0;
>+               stride_c =3D 0;
>+               break;
>+       }
>+
>+       switch (open.src_format) {
>+       case FORMAT_420:
>+       case FORMAT_422:
>+       case FORMAT_444:
>+       case FORMAT_400:
>+       case FORMAT_YUYV:
>+       case FORMAT_YVYU:
>+       case FORMAT_UYVY:
>+       case FORMAT_VYUY:
>+               is_lsb =3D false;
>+               is_3p4b =3D false;
>+               break;
>+       case FORMAT_420_P10_16BIT_MSB:
>+       case FORMAT_422_P10_16BIT_MSB:
>+       case FORMAT_444_P10_16BIT_MSB:
>+       case FORMAT_400_P10_16BIT_MSB:
>+       case FORMAT_YUYV_P10_16BIT_MSB:
>+       case FORMAT_YVYU_P10_16BIT_MSB:
>+       case FORMAT_UYVY_P10_16BIT_MSB:
>+       case FORMAT_VYUY_P10_16BIT_MSB:
>+               is_lsb =3D false;
>+               is_10bit =3D true;
>+               is_3p4b =3D false;
>+               break;
>+       case FORMAT_420_P10_16BIT_LSB:
>+       case FORMAT_422_P10_16BIT_LSB:
>+       case FORMAT_444_P10_16BIT_LSB:
>+       case FORMAT_400_P10_16BIT_LSB:
>+       case FORMAT_YUYV_P10_16BIT_LSB:
>+       case FORMAT_YVYU_P10_16BIT_LSB:
>+       case FORMAT_UYVY_P10_16BIT_LSB:
>+       case FORMAT_VYUY_P10_16BIT_LSB:
>+               is_lsb =3D true;
>+               is_10bit =3D true;
>+               is_3p4b =3D false;
>+               break;
>+       case FORMAT_420_P10_32BIT_MSB:
>+       case FORMAT_422_P10_32BIT_MSB:
>+       case FORMAT_444_P10_32BIT_MSB:
>+       case FORMAT_400_P10_32BIT_MSB:
>+       case FORMAT_YUYV_P10_32BIT_MSB:
>+       case FORMAT_YVYU_P10_32BIT_MSB:
>+       case FORMAT_UYVY_P10_32BIT_MSB:
>+       case FORMAT_VYUY_P10_32BIT_MSB:
>+               is_lsb =3D false;
>+               is_10bit =3D true;
>+               is_3p4b =3D true;
>+               break;
>+       case FORMAT_420_P10_32BIT_LSB:
>+       case FORMAT_422_P10_32BIT_LSB:
>+       case FORMAT_444_P10_32BIT_LSB:
>+       case FORMAT_400_P10_32BIT_LSB:
>+       case FORMAT_YUYV_P10_32BIT_LSB:
>+       case FORMAT_YVYU_P10_32BIT_LSB:
>+       case FORMAT_UYVY_P10_32BIT_LSB:
>+       case FORMAT_VYUY_P10_32BIT_LSB:
>+               is_lsb =3D true;
>+               is_10bit =3D true;
>+               is_3p4b =3D true;
>+               break;
>+       case FORMAT_RGB_32BIT_PACKED:
>+               is_ayuv =3D false;
>+               is_csc_format =3D true;
>+               break;
>+       case FORMAT_RGB_P10_32BIT_PACKED:
>+               is_ayuv =3D false;
>+               is_csc_format =3D true;
>+               is_10bit =3D true;
>+               break;
>+       case FORMAT_YUV444_32BIT_PACKED:
>+               is_ayuv =3D true;
>+               is_csc_format =3D true;
>+               break;
>+       case FORMAT_YUV444_P10_32BIT_PACKED:
>+               is_ayuv =3D true;
>+               is_csc_format =3D true;
>+               is_10bit =3D true;
>+               break;
>+       case FORMAT_RGB_24BIT_PACKED:
>+               is_ayuv =3D false;
>+               is_csc_format =3D true;
>+               is_24bit =3D true;
>+               break;
>+       case FORMAT_YUV444_24BIT_PACKED:
>+               is_ayuv =3D true;
>+               is_csc_format =3D true;
>+               is_24bit =3D true;
>+               break;
>+       case FORMAT_YUV444_24BIT:
>+               is_ayuv =3D true;
>+               break;
>+       default:
>+               break;
>+       }
>+
>+       src_frame_format =3D (nv21 << 2) | (cbcr_interleave << 1);
>+       switch (open.packed_format) {
>+       case PACKED_YUYV:
>+               src_frame_format =3D 1; break;
>+       case PACKED_YVYU:
>+               src_frame_format =3D 5; break;
>+       case PACKED_UYVY:
>+               src_frame_format =3D 9; break;
>+       case PACKED_VYUY:
>+               src_frame_format =3D 13; break;
>+       default:
>+               break;
>+       }
>+
>+       reg->bs_start =3D opt->pic_stream_buffer_addr;
>+       reg->bs_size =3D opt->pic_stream_buffer_size;
>+       reg->bs_option =3D (p_enc_info->line_buf_int_en << 6);
>+       reg->use_sec_axi =3D (p_enc_info->sec_axi_info.use_enc_rdo << 1) |
>+                          p_enc_info->sec_axi_info.use_enc_lf;
>+       reg->report_param =3D (param.en_report_mv_histo << 1);
>+       reg->mv_histo_class0 =3D (param.report_mv_histo_threshold0 << 16) =
|
>+                              param.report_mv_histo_threshold1;
>+       reg->mv_histo_class1 =3D (param.report_mv_histo_threshold2 << 16) =
|
>+                              param.report_mv_histo_threshold3;
>+
>+       reg->src_pic_idx =3D opt->src_idx;
>+       if (opt->src_end)
>+               reg->src_pic_idx =3D 0xFFFFFFFF;
>+
>+       reg->src_addr_y =3D opt->source_frame->buf_y;
>+       if (open.cbcr_order =3D=3D CBCR_ORDER_NORMAL) {
>+               reg->src_addr_u =3D opt->source_frame->buf_cb;
>+               reg->src_addr_v =3D opt->source_frame->buf_cr;
>+       } else {
>+               reg->src_addr_u =3D opt->source_frame->buf_cr;
>+               reg->src_addr_v =3D opt->source_frame->buf_cb;
>+       }
>+       reg->src_stride =3D (opt->source_frame->stride << 16) | stride_c;
>+       reg->src_format =3D (color_format << 28) |
>+                         (is_24bit << 25) |
>+                         (is_ayuv << 24) |
>+                         (is_csc_format << 20) |
>+                         (opt->csc.format_order << 16) |
>+                         (endian << 12) |
>+                         (is_lsb << 6) |
>+                         (is_3p4b << 5) |
>+                         (is_10bit << 4) |
>+                         src_frame_format;
>+       reg->src_axi_sel =3D DEFAULT_SRC_AXI;
>+       reg->code_option =3D (opt->src_end << 10) |
>+                          (W6_ENC_PIC_OPT_VCL) |
>+                          (W6_ENC_PIC_OPT_HEADER_IMPLICIT);
>+       reg->pic_param =3D (param.intra_4x4 << 28) |
>+                        (opt->force_pic_type << 21) |
>+                        (opt->force_pic_type_enable << 20) |
>+                        (opt->force_pic_qp_b << 14) |
>+                        (opt->force_pic_qp_p << 8) |
>+                        (opt->force_pic_qp_i << 2) |
>+                        (opt->force_pic_qp_enable << 1) |
>+                        opt->skip_picture;
>+       reg->timestamp =3D ((opt->timestamp.hour & 0x1F) << 26) |
>+                        ((opt->timestamp.min & 0x3F) << 20) |
>+                        ((opt->timestamp.sec & 0x3F) << 14) |
>+                        ((opt->timestamp.ms & 0x3FFF));
>+       reg->csc_coeff[0] =3D ((opt->csc.coef_ry & 0x3FF) << 20) |
>+                           ((opt->csc.coef_gy & 0x3FF) << 10) |
>+                           (opt->csc.coef_by & 0x3FF);
>+       reg->csc_coeff[1] =3D ((opt->csc.coef_rcb & 0x3FF) << 20) |
>+                           ((opt->csc.coef_gcb & 0x3FF) << 10) |
>+                           (opt->csc.coef_bcb & 0x3FF);
>+       reg->csc_coeff[2] =3D ((opt->csc.coef_rcr & 0x3FF) << 20) |
>+                           ((opt->csc.coef_gcr & 0x3FF) << 10) |
>+                           (opt->csc.coef_bcr & 0x3FF);
>+       reg->csc_coeff[3] =3D ((opt->csc.offset_y & 0x3FF) << 20) |
>+                           ((opt->csc.offset_cb & 0x3FF) << 10) |
>+                           (opt->csc.offset_cr & 0x3FF);
>+}
>+
>+int wave6_vpu_encode(struct vpu_instance *inst, struct enc_param *option,
>u32 *fail_res)
>+{
>+       struct enc_cmd_enc_pic_reg reg;
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int ret;
>+
>+       memset(&reg, 0, sizeof(struct enc_cmd_enc_pic_reg));
>+
>+       wave6_gen_enc_pic_reg(p_enc_info, inst->cbcr_interleave,
>+                             inst->nv21, option, &reg);
>+
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_BS_START, reg.bs_start);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_BS_SIZE, reg.bs_size);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_BS_OPTION, reg.bs_option);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_USE_SEC_AXI,
>reg.use_sec_axi);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_REPORT_PARAM,
>reg.report_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_MV_HISTO_CLASS0,
>reg.mv_histo_class0);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_MV_HISTO_CLASS1,
>reg.mv_histo_class1);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_PIC_CUSTOM_MAP_OPTION_PARAM,
>reg.custom_map_param);
>+       vpu_write_reg(inst->dev,
>W6_CMD_ENC_PIC_CUSTOM_MAP_OPTION_ADDR, reg.custom_map_addr);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_PIC_IDX,
>reg.src_pic_idx);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_ADDR_Y,
>reg.src_addr_y);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_ADDR_U,
>reg.src_addr_u);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_ADDR_V,
>reg.src_addr_v);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_STRIDE, reg.src_stride=
);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_FORMAT,
>reg.src_format);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SRC_AXI_SEL,
>reg.src_axi_sel);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_CODE_OPTION,
>reg.code_option);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_PIC_PARAM,
>reg.pic_param);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_LONGTERM_PIC,
>reg.longterm_pic);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_PREFIX_SEI_NAL_ADDR,
>reg.prefix_sei_nal_addr);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_PREFIX_SEI_INFO,
>reg.prefix_sei_info);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SUFFIX_SEI_NAL_ADDR,
>reg.suffix_sei_nal_addr);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_SUFFIX_SEI_INFO,
>reg.suffix_sei_info);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_TIMESTAMP,
>reg.timestamp);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_CSC_COEFF_0,
>reg.csc_coeff[0]);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_CSC_COEFF_1,
>reg.csc_coeff[1]);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_CSC_COEFF_2,
>reg.csc_coeff[2]);
>+       vpu_write_reg(inst->dev, W6_CMD_ENC_PIC_CSC_COEFF_3,
>reg.csc_coeff[3]);
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std, W6_CMD_ENC_PIC)=
;
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret) {
>+               dev_err(inst->dev->dev, "%s: timeout\n", __func__);
>+               return -ETIMEDOUT;
>+       }
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               *fail_res =3D vpu_read_reg(inst->dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(inst->dev, *fail_res);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_get_result(struct vpu_instance *inst, struct
>enc_output_info *result)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       u32 reg_val;
>+       int ret;
>+
>+       ret =3D wave6_send_query(inst->dev, inst->id, inst->std,
>W6_QUERY_OPT_GET_RESULT);
>+       if (ret)
>+               return ret;
>+
>+       result->encoding_success =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_ENCODING_SUCCESS);
>+       if (!result->encoding_success)
>+               result->error_reason =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_ERR_INFO);
>+       else
>+               result->warn_info =3D vpu_read_reg(inst->dev,
>W6_RET_DEC_WARN_INFO);
>+
>+       result->enc_pic_cnt =3D vpu_read_reg(inst->dev, W6_RET_ENC_PIC_NUM=
);
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_ENC_PIC_TYPE);
>+       result->pic_type =3D reg_val & 0xFFFF;
>+
>+       result->enc_vcl_nut =3D vpu_read_reg(inst->dev, W6_RET_ENC_VCL_NUT=
);
>+       result->recon_frame_index =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_IDX);
>+       if (result->recon_frame_index >=3D 0)
>+               result->recon_frame =3D inst->frame_buf[result->recon_fram=
e_index];
>+
>+       result->non_ref_pic =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_NON_REF_PIC_FLAG);
>+       result->num_of_slices =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_SLICE_NUM);
>+       result->pic_skipped =3D vpu_read_reg(inst->dev, W6_RET_ENC_PIC_SKI=
P);
>+       result->num_of_intra =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_NUM_INTRA);
>+       result->num_of_merge =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_NUM_MERGE);
>+       result->num_of_skip_block =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_NUM_SKIP);
>+       result->bitstream_wrap_around =3D 0;
>+
>+       result->avg_ctu_qp =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_AVG_CTU_QP);
>+       result->enc_pic_byte =3D vpu_read_reg(inst->dev, W6_RET_ENC_PIC_BY=
TE);
>+
>+       result->enc_gop_pic_idx =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_GOP_PIC_IDX);
>+       result->enc_pic_poc =3D vpu_read_reg(inst->dev, W6_RET_ENC_PIC_POC=
);
>+       result->enc_src_idx =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_USED_SRC_IDX);
>+       result->wr_ptr =3D vpu_read_reg(inst->dev, W6_RET_ENC_WR_PTR);
>+       result->rd_ptr =3D vpu_read_reg(inst->dev, W6_RET_ENC_RD_PTR);
>+
>+       result->pic_distortion_low =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_DIST_LOW);
>+       result->pic_distortion_high =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PIC_DIST_HIGH);
>+
>+       result->mv_histo.cnt0 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_HISTO_CNT_0);
>+       result->mv_histo.cnt1 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_HISTO_CNT_1);
>+       result->mv_histo.cnt2 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_HISTO_CNT_2);
>+       result->mv_histo.cnt3 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_HISTO_CNT_3);
>+       result->mv_histo.cnt4 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_HISTO_CNT_4);
>+
>+       result->fme_sum.lower_x0 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME0_X_DIR_LOWER);
>+       result->fme_sum.higher_x0 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME0_X_DIR_HIGHER);
>+       result->fme_sum.lower_y0 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME0_Y_DIR_LOWER);
>+       result->fme_sum.higher_y0 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME0_Y_DIR_HIGHER);
>+       result->fme_sum.lower_x1 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME1_X_DIR_LOWER);
>+       result->fme_sum.higher_x1 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME1_X_DIR_HIGHER);
>+       result->fme_sum.lower_y1 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME1_Y_DIR_LOWER);
>+       result->fme_sum.higher_y1 =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUM_ME1_Y_DIR_HIGHER);
>+
>+       result->src_y_addr =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SRC_Y_ADDR);
>+       result->custom_map_addr =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_CUSTOM_MAP_OPTION_ADDR);
>+       result->prefix_sei_nal_addr =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_PREFIX_SEI_NAL_ADDR);
>+       result->suffix_sei_nal_addr =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_SUFFIX_SEI_NAL_ADDR);
>+
>+       reg_val =3D vpu_read_reg(inst->dev, W6_RET_ENC_TIMESTAMP);
>+       result->timestamp.hour =3D (reg_val >> 26) & 0x1F;
>+       result->timestamp.min =3D (reg_val >> 20) & 0x3F;
>+       result->timestamp.sec =3D (reg_val >> 14) & 0x3F;
>+       result->timestamp.ms =3D reg_val & 0x3FFF;
>+
>+       result->bitstream_buffer =3D vpu_read_reg(inst->dev,
>W6_RET_ENC_RD_PTR);
>+
>+       if (result->recon_frame_index =3D=3D RECON_IDX_FLAG_HEADER_ONLY)
>+               result->bitstream_size =3D result->enc_pic_byte;
>+       else if (result->recon_frame_index < 0)
>+               result->bitstream_size =3D 0;
>+       else
>+               result->bitstream_size =3D result->enc_pic_byte;
>+
>+       result->cycle.host_cmd_s =3D vpu_read_reg(inst->dev,
>W6_RET_CQ_IN_TICK);
>+       result->cycle.host_cmd_e =3D vpu_read_reg(inst->dev,
>W6_RET_RQ_OUT_TICK);
>+       result->cycle.proc_s =3D vpu_read_reg(inst->dev, W6_RET_HW_RUN_TIC=
K);
>+       result->cycle.proc_e =3D vpu_read_reg(inst->dev,
>W6_RET_HW_DONE_TICK);
>+       result->cycle.vpu_s =3D vpu_read_reg(inst->dev, W6_RET_FW_RUN_TICK=
);
>+       result->cycle.vpu_e =3D vpu_read_reg(inst->dev, W6_RET_FW_DONE_TIC=
K);
>+       result->cycle.frame_cycle =3D (result->cycle.vpu_e - result-
>>cycle.host_cmd_s) *
>+                                   p_enc_info->cycle_per_tick;
>+       result->cycle.proc_cycle =3D (result->cycle.proc_e - result->cycle=
.proc_s) *
>+                                  p_enc_info->cycle_per_tick;
>+       result->cycle.vpu_cycle =3D ((result->cycle.vpu_e - result->cycle.=
vpu_s) -
>+                                  (result->cycle.proc_e - result->cycle.p=
roc_s)) *
>+                                 p_enc_info->cycle_per_tick;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_fini_seq(struct vpu_instance *inst, u32 *fail_res)
>+{
>+       int ret;
>+
>+       wave6_send_command(inst->dev, inst->id, inst->std,
>W6_CMD_DESTROY_INSTANCE);
>+       ret =3D wave6_wait_vpu_busy(inst->dev, W6_VPU_BUSY_STATUS);
>+       if (ret)
>+               return -ETIMEDOUT;
>+
>+       if (!vpu_read_reg(inst->dev, W6_RET_SUCCESS)) {
>+               *fail_res =3D vpu_read_reg(inst->dev, W6_RET_FAIL_REASON);
>+               wave6_print_reg_err(inst->dev, *fail_res);
>+               return -EIO;
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_gop_param(struct vpu_instance *inst, struc=
t
>enc_codec_param *p_param)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+       int i;
>+       bool low_delay =3D true;
>+
>+       if (p_param->gop_preset_idx =3D=3D PRESET_IDX_CUSTOM_GOP) {
>+               if (p_param->gop_param.custom_gop_size > 1) {
>+                       int min_val =3D p_param->gop_param.pic_param[0].po=
c_offset;
>+
>+                       for (i =3D 1; i < p_param->gop_param.custom_gop_si=
ze; i++) {
>+                               if (min_val > p_param-
>>gop_param.pic_param[i].poc_offset) {
>+                                       low_delay =3D false;
>+                                       break;
>+                               }
>+                               min_val =3D p_param->gop_param.pic_param[i=
].poc_offset;
>+                       }
>+               }
>+       } else if (p_param->gop_preset_idx =3D=3D PRESET_IDX_ALL_I ||
>+                  p_param->gop_preset_idx =3D=3D PRESET_IDX_IPP ||
>+                  p_param->gop_preset_idx =3D=3D PRESET_IDX_IBBB ||
>+                  p_param->gop_preset_idx =3D=3D PRESET_IDX_IPPPP ||
>+                  p_param->gop_preset_idx =3D=3D PRESET_IDX_IBBBB ||
>+                  p_param->gop_preset_idx =3D=3D PRESET_IDX_IPP_SINGLE) {
>+       }
>+
>+       if (p_param->gop_preset_idx >=3D PRESET_IDX_MAX) {
>+               dev_err(dev, "gop_preset_idx: %d\n", p_param->gop_preset_i=
dx);
>+               return -EINVAL;
>+       }
>+
>+       if (p_param->gop_preset_idx =3D=3D PRESET_IDX_CUSTOM_GOP) {
>+               if (p_param->gop_param.custom_gop_size < 1 ||
>+                   p_param->gop_param.custom_gop_size > MAX_GOP_NUM) {
>+                       dev_err(dev, "custom_gop_size: %d\n", p_param-
>>gop_param.custom_gop_size);
>+                       return -EINVAL;
>+               }
>+               for (i =3D 0; i < p_param->gop_param.custom_gop_size; i++)=
 {
>+                       struct custom_gop_pic_param pic_param =3D p_param-
>>gop_param.pic_param[i];
>+
>+                       if (pic_param.pic_type !=3D PIC_TYPE_I &&
>+                           pic_param.pic_type !=3D PIC_TYPE_P &&
>+                           pic_param.pic_type !=3D PIC_TYPE_B) {
>+                               dev_err(dev, "pic_param[%d].pic_type: %d\n=
", i,
>pic_param.pic_type);
>+                               return -EINVAL;
>+                       }
>+                       if (pic_param.poc_offset < 1 ||
>+                           pic_param.poc_offset > p_param-
>>gop_param.custom_gop_size) {
>+                               dev_err(dev, "pic_param[%d].poc_offset: %d=
\n",
>+                                       i, pic_param.poc_offset);
>+                               return -EINVAL;
>+                       }
>+                       if (pic_param.use_multi_ref_p < 0 ||
>pic_param.use_multi_ref_p > 1) {
>+                               dev_err(dev, "pic_param[%d].use_multi_ref_=
p: %d\n",
>+                                       i, pic_param.use_multi_ref_p);
>+                               return -EINVAL;
>+                       }
>+                       if (pic_param.temporal_id < 0 || pic_param.tempora=
l_id > 3) {
>+                               dev_err(dev, "pic_param[%d].temporal_id: %=
d\n",
>+                                       i, pic_param.temporal_id);
>+                               return -EINVAL;
>+                       }
>+               }
>+               if (inst->std =3D=3D W_AVC_ENC && !low_delay) {
>+                       for (i =3D 0; i < p_param->gop_param.custom_gop_si=
ze; i++) {
>+                               if (p_param->gop_param.pic_param[i].tempor=
al_id > 0) {
>+                                       dev_err(dev, "std: %d,
>pic_param[%d].temporal_id: %d\n",
>+                                               inst->std, i,
>+                                               p_param->gop_param.pic_par=
am[i].temporal_id);
>+                                       return -EINVAL;
>+                               }
>+                       }
>+               }
>+       }
>+
>+       if (inst->std =3D=3D W_HEVC_ENC) {
>+               if (p_param->decoding_refresh_type > DEC_REFRESH_TYPE_IDR)=
 {
>+                       dev_err(dev, "decoding_refresh_type: %d\n", p_para=
m-
>>decoding_refresh_type);
>+                       return -EINVAL;
>+               }
>+       } else {
>+               if (p_param->decoding_refresh_type !=3D
>DEC_REFRESH_TYPE_NON_IRAP) {
>+                       dev_err(dev, "decoding_refresh_type: %d\n", p_para=
m-
>>decoding_refresh_type);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_tile_slice_param(struct vpu_instance *inst=
,
>+                                               int width, int height,
>+                                               struct enc_codec_param *p_=
param)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+
>+       if (p_param->slice_mode > 2) {
>+               dev_err(dev, "slice_mode: %d\n", p_param->slice_mode);
>+               return -EINVAL;
>+       }
>+       if (p_param->slice_mode =3D=3D 1) {
>+               unsigned int ctu_size =3D (inst->std =3D=3D W_AVC_ENC) ? 1=
6 : 64;
>+               unsigned int mb_num =3D ((width + ctu_size - 1) / ctu_size=
) *
>+                                     ((height + ctu_size - 1) / ctu_size)=
;
>+
>+               if (p_param->slice_arg < 1 || p_param->slice_arg > 0x3FFFF=
) {
>+                       dev_err(dev, "slice_arg: %d\n", p_param->slice_arg=
);
>+                       return -EINVAL;
>+               }
>+               if (p_param->slice_arg > mb_num) {
>+                       dev_info(dev, "slice_arg: %d, mb_num: %d\n",
>+                                p_param->slice_arg, mb_num);
>+                       p_param->slice_arg =3D mb_num;
>+               }
>+               if (inst->std =3D=3D W_AVC_ENC && p_param->slice_arg < 4) =
{
>+                       dev_info(dev, "std: %d, slice_arg: %d\n",
>+                                inst->std, p_param->slice_arg);
>+                       p_param->slice_arg =3D 4;
>+               }
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_rc_param(struct vpu_instance *inst, struct
>enc_codec_param *p_param)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+
>+       if (p_param->frame_rate < 1 || p_param->frame_rate > 960) {
>+               dev_err(dev, "frame_rate: %d\n", p_param->frame_rate);
>+               return -EINVAL;
>+       }
>+       if (p_param->bitrate > 1500000000) {
>+               dev_err(dev, "bitrate: %d\n", p_param->bitrate);
>+               return -EINVAL;
>+       }
>+       if (p_param->qp > 51) {
>+               dev_err(dev, "qp: %d\n", p_param->qp);
>+               return -EINVAL;
>+       }
>+       if (p_param->min_qp_i > 51 || p_param->min_qp_p > 51 || p_param-
>>min_qp_b > 51) {
>+               dev_err(dev, "min_qp_i: %d, min_qp_p: %d, min_qp_b: %d\n",
>+                       p_param->min_qp_i, p_param->min_qp_p, p_param-
>>min_qp_b);
>+               return -EINVAL;
>+       }
>+       if (p_param->max_qp_i > 51 || p_param->max_qp_p > 51 || p_param-
>>max_qp_b > 51) {
>+               dev_err(dev, "max_qp_i: %d, max_qp_p: %d, max_qp_b: %d\n",
>+                       p_param->max_qp_i, p_param->max_qp_p, p_param-
>>max_qp_b);
>+               return -EINVAL;
>+       }
>+       if (p_param->min_qp_i > p_param->max_qp_i) {
>+               dev_err(dev, "min_qp_i: %d, max_qp_i: %d\n", p_param->min_=
qp_i,
>p_param->max_qp_i);
>+               return -EINVAL;
>+       }
>+       if (p_param->min_qp_p > p_param->max_qp_p) {
>+               dev_err(dev, "min_qp_p: %d, max_qp_p: %d\n", p_param-
>>min_qp_p, p_param->max_qp_p);
>+               return -EINVAL;
>+       }
>+       if (p_param->min_qp_b > p_param->max_qp_b) {
>+               dev_err(dev, "min_qp_b: %d, max_qp_b: %d\n", p_param-
>>min_qp_b, p_param->max_qp_b);
>+               return -EINVAL;
>+       }
>+       if (p_param->rc_initial_qp < -1 || p_param->rc_initial_qp > 51) {
>+               dev_err(dev, "rc_initial_qp: %d\n", p_param->rc_initial_qp=
);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_rate_control !=3D 1 && p_param->en_rate_control !=
=3D 0) {
>+               dev_err(dev, "en_rate_control: %d\n", p_param->en_rate_con=
trol);
>+               return -EINVAL;
>+       }
>+       if (p_param->rc_mode > 1) {
>+               dev_err(dev, "rc_mode: %d\n", p_param->rc_mode);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_rate_control) {
>+               if (p_param->bitrate <=3D p_param->frame_rate) {
>+                       dev_err(dev, "bitrate: %d, frame_rate: %d\n",
>+                               p_param->bitrate, p_param->frame_rate);
>+                       return -EINVAL;
>+               }
>+               if (p_param->rc_initial_qp !=3D -1) {
>+                       if (p_param->rc_initial_qp < p_param->min_qp_i) {
>+                               dev_err(dev, "rc_initial_qp: %d, min_qp_i:=
 %d\n",
>+                                       p_param->rc_initial_qp, p_param->m=
in_qp_i);
>+                               return -EINVAL;
>+                       }
>+                       if (p_param->rc_initial_qp > p_param->max_qp_i) {
>+                               dev_err(dev, "rc_initial_qp: %d, max_qp_i:=
 %d\n",
>+                                       p_param->rc_initial_qp, p_param->m=
ax_qp_i);
>+                               return -EINVAL;
>+                       }
>+               }
>+       } else {
>+               if (p_param->qp < p_param->min_qp_i) {
>+                       dev_err(dev, "qp: %d, min_qp_i: %d\n", p_param->qp=
, p_param-
>>min_qp_i);
>+                       return -EINVAL;
>+               }
>+               if (p_param->qp < p_param->min_qp_p) {
>+                       dev_err(dev, "qp: %d, min_qp_p: %d\n", p_param->qp=
,
>p_param->min_qp_p);
>+                       return -EINVAL;
>+               }
>+               if (p_param->qp < p_param->min_qp_b) {
>+                       dev_err(dev, "qp: %d, min_qp_b: %d\n", p_param->qp=
,
>p_param->min_qp_b);
>+                       return -EINVAL;
>+               }
>+               if (p_param->qp > p_param->max_qp_i) {
>+                       dev_err(dev, "qp: %d, max_qp_i: %d\n", p_param->qp=
,
>p_param->max_qp_i);
>+                       return -EINVAL;
>+               }
>+               if (p_param->qp > p_param->max_qp_p) {
>+                       dev_err(dev, "qp: %d, max_qp_p: %d\n", p_param->qp=
,
>p_param->max_qp_p);
>+                       return -EINVAL;
>+               }
>+               if (p_param->qp > p_param->max_qp_b) {
>+                       dev_err(dev, "qp: %d, max_qp_b: %d\n", p_param->qp=
,
>p_param->max_qp_b);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_intra_param(struct vpu_instance *inst,
>+                                          int width, int height,
>+                                          struct enc_codec_param *p_param=
)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+       unsigned int ctu_size =3D (inst->std =3D=3D W_AVC_ENC) ? 16 : 64;
>+       unsigned int num_ctu_col =3D (width + ctu_size - 1) / ctu_size;
>+       unsigned int num_ctu_row =3D (height + ctu_size - 1) / ctu_size;
>+
>+       if (p_param->intra_refresh_mode > INTRA_REFRESH_COLUMN) {
>+               dev_err(dev, "intra_refresh_mode: %d\n", p_param-
>>intra_refresh_mode);
>+               return -EINVAL;
>+       }
>+       if (p_param->intra_refresh_mode !=3D INTRA_REFRESH_NONE) {
>+               if (p_param->intra_refresh_arg < 1 || p_param->intra_refre=
sh_arg >
>511) {
>+                       dev_err(dev, "intra_refresh_arg: %d\n", p_param-
>>intra_refresh_arg);
>+                       return -EINVAL;
>+               }
>+       }
>+       if (p_param->intra_refresh_mode =3D=3D INTRA_REFRESH_ROW &&
>+           p_param->intra_refresh_arg > num_ctu_row) {
>+               dev_err(dev, "intra_refresh_mode: %d, intra_refresh_arg: %=
d\n",
>+                       p_param->intra_refresh_mode, p_param->intra_refres=
h_arg);
>+               return -EINVAL;
>+       }
>+       if (p_param->intra_refresh_mode =3D=3D INTRA_REFRESH_COLUMN &&
>+           p_param->intra_refresh_arg > num_ctu_col) {
>+               dev_err(dev, "intra_refresh_mode: %d, intra_refresh_arg: %=
d\n",
>+                       p_param->intra_refresh_mode, p_param->intra_refres=
h_arg);
>+               return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_custom_param(struct vpu_instance *inst,
>+                                           struct enc_codec_param *p_para=
m)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+       int i;
>+
>+       if (p_param->en_qp_map !=3D 1 && p_param->en_qp_map !=3D 0) {
>+               dev_err(dev, "en_qp_map: %d\n", p_param->en_qp_map);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_mode_map !=3D 1 && p_param->en_mode_map !=3D 0) {
>+               dev_err(dev, "en_mode_map: %d\n", p_param->en_mode_map);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_custom_lambda !=3D 1 && p_param-
>>en_custom_lambda !=3D 0) {
>+               dev_err(dev, "en_custom_lambda: %d\n", p_param-
>>en_custom_lambda);
>+               return -EINVAL;
>+       }
>+       for (i =3D 0; i < MAX_CUSTOM_LAMBDA_NUM; i++) {
>+               if (p_param->custom_lambda_ssd[i] > 16383) {
>+                       dev_err(dev, "custom_lambda_ssd[%d]: %d\n",
>+                               i, p_param->custom_lambda_ssd[i]);
>+                       return -EINVAL;
>+               }
>+               if (p_param->custom_lambda_sad[i] > 127) {
>+                       dev_err(dev, "custom_lambda_sad[%d]: %d\n",
>+                               i, p_param->custom_lambda_sad[i]);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_conf_win_size_param(struct vpu_instance
>*inst,
>+                                                  int width, int height,
>+                                                  struct vpu_rect conf_wi=
n)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+
>+       if (conf_win.left % 2 || conf_win.top % 2 || conf_win.right % 2 ||
>conf_win.bottom % 2) {
>+               dev_err(dev, "conf_win left: %d, top: %d, right: %d, botto=
m: %d\n",
>+                       conf_win.left, conf_win.top, conf_win.right, conf_=
win.bottom);
>+               return -EINVAL;
>+       }
>+       if (conf_win.left > 8192 || conf_win.top > 8192 ||
>+           conf_win.right > 8192 || conf_win.bottom > 8192) {
>+               dev_err(dev, "conf_win left: %d, top: %d, right: %d, botto=
m: %d\n",
>+                       conf_win.left, conf_win.top, conf_win.right, conf_=
win.bottom);
>+               return -EINVAL;
>+       }
>+       if ((conf_win.right + conf_win.left) > width) {
>+               dev_err(dev, "conf_win.left: %d, conf_win.right: %d, width=
: %d\n",
>+                       conf_win.left, conf_win.right, width);
>+               return -EINVAL;
>+       }
>+       if ((conf_win.bottom + conf_win.top) > height) {
>+               dev_err(dev, "conf_win.top: %d, conf_win.bottom: %d,
>height: %d\n",
>+                       conf_win.top, conf_win.bottom, height);
>+               return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+static int wave6_vpu_enc_check_temporal_layer_param(struct vpu_instance
>*inst,
>+                                                   struct enc_codec_param=
 *p_param)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+       int i;
>+
>+       if (p_param->temp_layer_cnt < 1 || p_param->temp_layer_cnt > 4) {
>+               dev_err(dev, "temp_layer_cnt: %d\n", p_param->temp_layer_c=
nt);
>+               return -EINVAL;
>+       }
>+       if (p_param->temp_layer_cnt > 1) {
>+               if (p_param->gop_preset_idx =3D=3D PRESET_IDX_CUSTOM_GOP |=
|
>+                   p_param->gop_preset_idx =3D=3D PRESET_IDX_ALL_I) {
>+                       dev_err(dev, "temp_layer_cnt: %d, gop_preset_idx: =
%d\n",
>+                               p_param->temp_layer_cnt, p_param->gop_pres=
et_idx);
>+                       return -EINVAL;
>+               }
>+       }
>+       for (i =3D 0; i < MAX_NUM_CHANGEABLE_TEMPORAL_LAYER; i++) {
>+               if (p_param->temp_layer[i].change_qp !=3D 1 &&
>+                   p_param->temp_layer[i].change_qp !=3D 0) {
>+                       dev_err(dev, "temp_layer[%d].change_qp: %d\n",
>+                               i, p_param->temp_layer[i].change_qp);
>+                       return -EINVAL;
>+               }
>+               if (p_param->temp_layer[i].qp_b > 51) {
>+                       dev_err(dev, "temp_layer[%d].qp_b: %d\n", i, p_par=
am-
>>temp_layer[i].qp_b);
>+                       return -EINVAL;
>+               }
>+               if (p_param->temp_layer[i].qp_p > 51) {
>+                       dev_err(dev, "temp_layer[%d].qp_p: %d\n", i, p_par=
am-
>>temp_layer[i].qp_p);
>+                       return -EINVAL;
>+               }
>+               if (p_param->temp_layer[i].qp_i > 51) {
>+                       dev_err(dev, "temp_layer[%d].qp_i: %d\n", i, p_par=
am-
>>temp_layer[i].qp_i);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_check_open_param(struct vpu_instance *inst, struct
>enc_open_param *pop)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct device *dev =3D vpu_dev->dev;
>+       struct vpu_attr *attr =3D &inst->dev->attr;
>+       struct enc_codec_param *p_param =3D &pop->codec_param;
>+
>+       if (inst->std !=3D W_HEVC_ENC && inst->std !=3D W_AVC_ENC) {
>+               dev_err(dev, "std %d\n", inst->std);
>+               return -EOPNOTSUPP;
>+       }
>+
>+       if (pop->pic_width % W6_ENC_PIC_SIZE_STEP || pop->pic_height %
>W6_ENC_PIC_SIZE_STEP) {
>+               dev_err(dev, "pic_width: %d | pic_height: %d\n", pop->pic_=
width,
>pop->pic_height);
>+               return -EINVAL;
>+       }
>+       if (pop->pic_width < W6_MIN_ENC_PIC_WIDTH || pop->pic_width >
>W6_MAX_ENC_PIC_WIDTH) {
>+               dev_err(dev, "pic_width: %d\n", pop->pic_width);
>+               return -EINVAL;
>+       }
>+       if (pop->pic_height < W6_MIN_ENC_PIC_HEIGHT || pop->pic_height >
>W6_MAX_ENC_PIC_HEIGHT) {
>+               dev_err(dev, "pic_height: %d\n", pop->pic_height);
>+               return -EINVAL;
>+       }
>+
>+       if (pop->packed_format && inst->cbcr_interleave =3D=3D 1) {
>+               dev_err(dev, "packed_format: %d, cbcr_interleave: %d\n",
>+                       pop->packed_format, inst->cbcr_interleave);
>+               return -EINVAL;
>+       }
>+       if (pop->packed_format && inst->nv21 =3D=3D 1) {
>+               dev_err(dev, "packed_format: %d, nv21: %d\n", pop->packed_=
format,
>inst->nv21);
>+               return -EINVAL;
>+       }
>+       if (pop->src_format =3D=3D FORMAT_RGB_32BIT_PACKED ||
>+           pop->src_format =3D=3D FORMAT_YUV444_32BIT_PACKED ||
>+           pop->src_format =3D=3D FORMAT_RGB_P10_32BIT_PACKED ||
>+           pop->src_format =3D=3D FORMAT_YUV444_P10_32BIT_PACKED) {
>+               if (!inst->cbcr_interleave) {
>+                       dev_err(dev, "src_format: %d, cbcr_interleave: %d\=
n",
>+                               pop->src_format, inst->cbcr_interleave);
>+                       return -EINVAL;
>+               }
>+               if (inst->nv21 =3D=3D 1) {
>+                       dev_err(dev, "src_format: %d, nv21: %d\n", pop->sr=
c_format,
>inst->nv21);
>+                       return -EINVAL;
>+               }
>+       }
>+       if (pop->src_format =3D=3D FORMAT_RGB_24BIT_PACKED ||
>+           pop->src_format =3D=3D FORMAT_YUV444_24BIT_PACKED) {
>+               if (!inst->cbcr_interleave || inst->nv21 =3D=3D 1) {
>+                       dev_err(dev, "src_format: %d, cbcr_interleave: %d,=
 nv21: %d\n",
>+                               pop->src_format, inst->cbcr_interleave, in=
st->nv21);
>+                       return -EINVAL;
>+               }
>+       }
>+       if (pop->src_format =3D=3D FORMAT_YUV444_24BIT) {
>+               if (!inst->cbcr_interleave) {
>+                       dev_err(dev, "src_format: %d, cbcr_interleave: %d\=
n",
>+                               pop->src_format, inst->cbcr_interleave);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       if (wave6_vpu_enc_check_gop_param(inst, p_param)) {
>+               dev_err(dev, "failed wave6_vpu_enc_check_gop_param()\n");
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_tile_slice_param(inst, pop->pic_width, pop=
-
>>pic_height, p_param)) {
>+               dev_err(dev, "failed wave6_vpu_enc_check_tile_slice_param(=
)\n");
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_rc_param(inst, p_param)) {
>+               dev_err(dev, "failed wave6_vpu_enc_check_rc_param()\n");
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_intra_param(inst, pop->pic_width, pop-
>>pic_height, p_param)) {
>+               dev_err(dev, "failed wave6_vpu_enc_check_intra_param()\n")=
;
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_custom_param(inst, p_param)) {
>+               dev_err(dev, "failed wave6_vpu_enc_check_custom_param()\n"=
);
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_conf_win_size_param(inst, pop->pic_width,
>pop->pic_height,
>+                                                   p_param->conf_win)) {
>+               dev_err(dev, "failed
>wave6_vpu_enc_check_conf_win_size_param()\n");
>+               return -EINVAL;
>+       }
>+       if (wave6_vpu_enc_check_temporal_layer_param(inst, p_param)) {
>+               dev_err(dev, "failed
>wave6_vpu_enc_check_temporal_layer_param()\n");
>+               return -EINVAL;
>+       }
>+
>+       if (p_param->internal_bit_depth !=3D 8 && p_param->internal_bit_de=
pth !=3D
>10) {
>+               dev_err(dev, "internal_bit_depth: %d\n", p_param-
>>internal_bit_depth);
>+               return -EINVAL;
>+       }
>+       if (p_param->intra_period > 2047) {
>+               dev_err(dev, "intra_period: %d\n", p_param->intra_period);
>+               return -EINVAL;
>+       }
>+       if (p_param->intra_period =3D=3D 1 && p_param->gop_preset_idx =3D=
=3D
>PRESET_IDX_ALL_I) {
>+               dev_err(dev, "intra_period: %d, gop_preset_idx: %d\n",
>+                       p_param->intra_period, p_param->gop_preset_idx);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_long_term !=3D 1 && p_param->en_long_term !=3D 0) =
{
>+               dev_err(dev, "en_long_term: %d\n", p_param->en_long_term);
>+               return -EINVAL;
>+       }
>+       if (p_param->cpb_size < 10 || p_param->cpb_size > 100000) {
>+               dev_err(dev, "cpb_size: %d\n", p_param->cpb_size);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_cu_level_rate_control !=3D 1 && p_param-
>>en_cu_level_rate_control !=3D 0) {
>+               dev_err(dev, "en_cu_level_rate_control: %d\n", p_param-
>>en_cu_level_rate_control);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_vbv_overflow_drop_frame !=3D 1 && p_param-
>>en_vbv_overflow_drop_frame !=3D 0) {
>+               dev_err(dev, "en_vbv_overflow_drop_frame: %d\n",
>+                       p_param->en_vbv_overflow_drop_frame);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_hvs_qp !=3D 1 && p_param->en_hvs_qp !=3D 0) {
>+               dev_err(dev, "en_hvs_qp: %d\n", p_param->en_hvs_qp);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_hvs_qp) {
>+               if (p_param->hvs_qp_scale_div2 < 1 || p_param-
>>hvs_qp_scale_div2 > 4) {
>+                       dev_err(dev, "hvs_qp_scale_div2: %d\n", p_param-
>>hvs_qp_scale_div2);
>+                       return -EINVAL;
>+               }
>+       }
>+       if (p_param->max_delta_qp > 12) {
>+               dev_err(dev, "max_delta_qp: %d\n", p_param->max_delta_qp);
>+               return -EINVAL;
>+       }
>+       if (p_param->rc_update_speed > 255) {
>+               dev_err(dev, "rc_update_speed: %d\n", p_param-
>>rc_update_speed);
>+               return -EINVAL;
>+       }
>+       if (p_param->max_bitrate > 1500000000) {
>+               dev_err(dev, "max_bitrate: %d\n", p_param->max_bitrate);
>+               return -EINVAL;
>+       }
>+       if (p_param->rc_initial_level > 15) {
>+               dev_err(dev, "rc_initial_level: %d\n", p_param->rc_initial=
_level);
>+               return -EINVAL;
>+       }
>+       if (p_param->pic_rc_max_dqp > 51) {
>+               dev_err(dev, "pic_rc_max_dqp: %d\n", p_param->pic_rc_max_d=
qp);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_bg_detect !=3D 1 && p_param->en_bg_detect !=3D 0) =
{
>+               dev_err(dev, "en_bg_detect: %d\n", p_param->en_bg_detect);
>+               return -EINVAL;
>+       }
>+       if (p_param->bg_th_diff > 255) {
>+               dev_err(dev, "bg_th_diff: %d\n", p_param->bg_th_diff);
>+               return -EINVAL;
>+       }
>+       if (p_param->bg_th_mean_diff > 255) {
>+               dev_err(dev, "bg_th_mean_diff: %d\n", p_param-
>>bg_th_mean_diff);
>+               return -EINVAL;
>+       }
>+       if (p_param->bg_delta_qp < -16 || p_param->bg_delta_qp > 15) {
>+               dev_err(dev, "bg_delta_qp: %d\n", p_param->bg_delta_qp);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_me_center !=3D 1 && p_param->en_me_center !=3D 0) =
{
>+               dev_err(dev, "en_me_center: %d\n", p_param->en_me_center);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_dbk !=3D 1 && p_param->en_dbk !=3D 0) {
>+               dev_err(dev, "en_dbk: %d\n", p_param->en_dbk);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_scaling_list !=3D 1 && p_param->en_scaling_list !=
=3D 0) {
>+               dev_err(dev, "en_scaling_list: %d\n", p_param->en_scaling_=
list);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_adaptive_round !=3D 1 && p_param-
>>en_adaptive_round !=3D 0) {
>+               dev_err(dev, "en_adaptive_round: %d\n", p_param-
>>en_adaptive_round);
>+               return -EINVAL;
>+       }
>+       if (p_param->q_round_intra > 255) {
>+               dev_err(dev, "q_round_intra: %d\n", p_param->q_round_intra=
);
>+               return -EINVAL;
>+       }
>+       if (p_param->q_round_inter > 255) {
>+               dev_err(dev, "q_round_inter: %d\n", p_param->q_round_inter=
);
>+               return -EINVAL;
>+       }
>+       if (p_param->dis_coef_clear !=3D 1 && p_param->dis_coef_clear !=3D=
 0) {
>+               dev_err(dev, "dis_coef_clear: %d\n", p_param->dis_coef_cle=
ar);
>+               return -EINVAL;
>+       }
>+       if (p_param->lambda_dqp_intra < -32 || p_param->lambda_dqp_intra >
>31) {
>+               dev_err(dev, "lambda_dqp_intra: %d\n", p_param-
>>lambda_dqp_intra);
>+               return -EINVAL;
>+       }
>+       if (p_param->lambda_dqp_inter < -32 || p_param->lambda_dqp_inter >
>31) {
>+               dev_err(dev, "lambda_dqp_inter: %d\n", p_param-
>>lambda_dqp_inter);
>+               return -EINVAL;
>+       }
>+       if (p_param->en_q_round_offset !=3D 1 && p_param-
>>en_q_round_offset !=3D 0) {
>+               dev_err(dev, "en_q_round_offset: %d\n", p_param-
>>en_q_round_offset);
>+               return -EINVAL;
>+       }
>+       if (p_param->forced_idr_header > 2) {
>+               dev_err(dev, "forced_idr_header: %d\n", p_param-
>>forced_idr_header);
>+               return -EINVAL;
>+       }
>+       if (p_param->num_units_in_tick > INT_MAX) {
>+               dev_err(dev, "num_units_in_tick: %d\n", p_param-
>>num_units_in_tick);
>+               return -EINVAL;
>+       }
>+       if (p_param->time_scale > INT_MAX) {
>+               dev_err(dev, "time_scale: %d\n", p_param->time_scale);
>+               return -EINVAL;
>+       }
>+       if (p_param->max_intra_pic_bit > 1500000000) {
>+               dev_err(dev, "max_intra_pic_bit: %d\n", p_param-
>>max_intra_pic_bit);
>+               return -EINVAL;
>+       }
>+       if (p_param->max_inter_pic_bit > 1500000000) {
>+               dev_err(dev, "max_inter_pic_bit: %d\n", p_param-
>>max_inter_pic_bit);
>+               return -EINVAL;
>+       }
>+
>+       if (p_param->color.color_range > 1) {
>+               dev_err(dev, "color_range: %d\n", p_param->color.color_ran=
ge);
>+               return -EINVAL;
>+       }
>+       if (p_param->color.matrix_coefficients > 255) {
>+               dev_err(dev, "matrix_coefficients: %d\n", p_param-
>>color.matrix_coefficients);
>+               return -EINVAL;
>+       }
>+       if (p_param->color.transfer_characteristics > 255) {
>+               dev_err(dev, "transfer_characteristics: %d\n",
>+                       p_param->color.transfer_characteristics);
>+               return -EINVAL;
>+       }
>+       if (p_param->color.color_primaries > 255) {
>+               dev_err(dev, "color_primaries: %d\n", p_param-
>>color.color_primaries);
>+               return -EINVAL;
>+       }
>+       if (inst->std =3D=3D W_HEVC_ENC) {
>+               if (p_param->internal_bit_depth =3D=3D 10 && !attr-
>>support_hevc10bit_enc) {
>+                       dev_err(dev, "internal_bit_depth: %d,
>support_hevc10bit_enc: %d\n",
>+                               p_param->internal_bit_depth, attr-
>>support_hevc10bit_enc);
>+                       return -EOPNOTSUPP;
>+               }
>+               if (p_param->idr_period !=3D 0) {
>+                       dev_err(dev, "idr_period: %d\n", p_param->idr_peri=
od);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_strong_intra_smoothing !=3D 1 &&
>+                   p_param->en_strong_intra_smoothing !=3D 0) {
>+                       dev_err(dev, "en_strong_intra_smoothing: %d\n",
>+                               p_param->en_strong_intra_smoothing);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_constrained_intra_pred !=3D 1 &&
>+                   p_param->en_constrained_intra_pred !=3D 0) {
>+                       dev_err(dev, "en_constrained_intra_pred: %d\n",
>+                               p_param->en_constrained_intra_pred);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_intra_trans_skip !=3D 1 && p_param-
>>en_intra_trans_skip !=3D 0) {
>+                       dev_err(dev, "en_intra_trans_skip: %d\n", p_param-
>>en_intra_trans_skip);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_temporal_mvp !=3D 1 && p_param-
>>en_temporal_mvp !=3D 0) {
>+                       dev_err(dev, "en_temporal_mvp: %d\n", p_param-
>>en_temporal_mvp);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_cabac !=3D 0) {
>+                       dev_err(dev, "en_cabac: %d\n", p_param->en_cabac);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_transform8x8 !=3D 0) {
>+                       dev_err(dev, "en_transform8x8: %d\n", p_param-
>>en_transform8x8);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_lf_cross_slice_boundary !=3D 1 &&
>+                   p_param->en_lf_cross_slice_boundary !=3D 0) {
>+                       dev_err(dev, "en_lf_cross_slice_boundary: %d\n",
>+                               p_param->en_lf_cross_slice_boundary);
>+                       return -EINVAL;
>+               }
>+               if (p_param->beta_offset_div2 < -6 || p_param->beta_offset=
_div2 >
>6) {
>+                       dev_err(dev, "beta_offset_div2: %d\n", p_param-
>>beta_offset_div2);
>+                       return -EINVAL;
>+               }
>+               if (p_param->tc_offset_div2 < -6 || p_param->tc_offset_div=
2 > 6) {
>+                       dev_err(dev, "tc_offset_div2: %d\n", p_param->tc_o=
ffset_div2);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_sao !=3D 1 && p_param->en_sao !=3D 0) {
>+                       dev_err(dev, "en_sao: %d\n", p_param->en_sao);
>+                       return -EINVAL;
>+               }
>+               if (p_param->cb_qp_offset < -12 || p_param->cb_qp_offset >=
 12) {
>+                       dev_err(dev, "cb_qp_offset: %d\n", p_param->cb_qp_=
offset);
>+                       return -EINVAL;
>+               }
>+               if (p_param->cr_qp_offset < -12 || p_param->cr_qp_offset >=
 12) {
>+                       dev_err(dev, "cr_qp_offset: %d\n", p_param->cr_qp_=
offset);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_still_picture !=3D 1 && p_param->en_still_=
picture !=3D 0)
>{
>+                       dev_err(dev, "en_still_picture: %d\n", p_param-
>>en_still_picture);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_auto_level_adjusting !=3D 1 &&
>+                   p_param->en_auto_level_adjusting !=3D 0) {
>+                       dev_err(dev, "en_auto_level_adjusting: %d\n",
>+                               p_param->en_auto_level_adjusting);
>+                       return -EINVAL;
>+               }
>+               if (p_param->tier > 1) {
>+                       dev_err(dev, "tier: %d\n", p_param->tier);
>+                       return -EINVAL;
>+               }
>+               if (p_param->profile > HEVC_PROFILE_STILLPICTURE) {
>+                       dev_err(dev, "profile: %d\n", p_param->profile);
>+                       return -EINVAL;
>+               }
>+               if (p_param->internal_bit_depth =3D=3D 10 && p_param->prof=
ile =3D=3D
>HEVC_PROFILE_MAIN) {
>+                       dev_err(dev, "internal_bit_depth: %d, profile: %d\=
n",
>+                               p_param->internal_bit_depth, p_param->prof=
ile);
>+                       return -EINVAL;
>+               }
>+               if (p_param->num_ticks_poc_diff_one < 1 ||
>+                   p_param->num_ticks_poc_diff_one > 65535) {
>+                       dev_err(dev, "num_ticks_poc_diff_one: %d\n",
>+                               p_param->num_ticks_poc_diff_one);
>+                       return -EINVAL;
>+               }
>+               if (p_param->color.chroma_sample_position !=3D 0) {
>+                       dev_err(dev, "chroma_sample_position: %d\n",
>+                               p_param->color.chroma_sample_position);
>+                       return -EINVAL;
>+               }
>+               if (p_param->intra_4x4 > 3 || p_param->intra_4x4 =3D=3D 1)=
 {
>+                       dev_err(dev, "intra_4x4: %d\n", p_param->intra_4x4=
);
>+                       return -EINVAL;
>+               }
>+       } else if (inst->std =3D=3D W_AVC_ENC) {
>+               if (p_param->internal_bit_depth =3D=3D 10 && !attr-
>>support_avc10bit_enc) {
>+                       dev_err(dev, "internal_bit_depth: %d,
>support_avc10bit_enc: %d\n",
>+                               p_param->internal_bit_depth, attr->support=
_avc10bit_enc);
>+                       return -EOPNOTSUPP;
>+               }
>+               if (p_param->idr_period > 2047) {
>+                       dev_err(dev, "idr_period: %d\n", p_param->idr_peri=
od);
>+                       return -EINVAL;
>+               }
>+               if (p_param->idr_period =3D=3D 1 && p_param->gop_preset_id=
x =3D=3D
>PRESET_IDX_ALL_I) {
>+                       dev_err(dev, "idr_period: %d, gop_preset_idx: %d\n=
",
>+                               p_param->idr_period, p_param->gop_preset_i=
dx);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_strong_intra_smoothing !=3D 0) {
>+                       dev_err(dev, "en_strong_intra_smoothing: %d\n",
>+                               p_param->en_strong_intra_smoothing);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_constrained_intra_pred !=3D 1 &&
>+                   p_param->en_constrained_intra_pred !=3D 0) {
>+                       dev_err(dev, "en_constrained_intra_pred: %d\n",
>+                               p_param->en_constrained_intra_pred);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_intra_trans_skip !=3D 0) {
>+                       dev_err(dev, "en_intra_trans_skip: %d\n", p_param-
>>en_intra_trans_skip);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_temporal_mvp !=3D 0) {
>+                       dev_err(dev, "en_temporal_mvp: %d\n", p_param-
>>en_temporal_mvp);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_cabac !=3D 1 && p_param->en_cabac !=3D 0) =
{
>+                       dev_err(dev, "en_cabac: %d\n", p_param->en_cabac);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_transform8x8 !=3D 1 && p_param-
>>en_transform8x8 !=3D 0) {
>+                       dev_err(dev, "en_transform8x8: %d\n", p_param-
>>en_transform8x8);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_lf_cross_slice_boundary !=3D 1 &&
>+                   p_param->en_lf_cross_slice_boundary !=3D 0) {
>+                       dev_err(dev, "en_lf_cross_slice_boundary: %d\n",
>+                               p_param->en_lf_cross_slice_boundary);
>+                       return -EINVAL;
>+               }
>+               if (p_param->beta_offset_div2 < -6 || p_param->beta_offset=
_div2 >
>6) {
>+                       dev_err(dev, "beta_offset_div2: %d\n", p_param-
>>beta_offset_div2);
>+                       return -EINVAL;
>+               }
>+               if (p_param->tc_offset_div2 < -6 || p_param->tc_offset_div=
2 > 6) {
>+                       dev_err(dev, "tc_offset_div2: %d\n", p_param->tc_o=
ffset_div2);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_sao !=3D 0) {
>+                       dev_err(dev, "en_sao: %d\n", p_param->en_sao);
>+                       return -EINVAL;
>+               }
>+               if (p_param->cb_qp_offset < -12 || p_param->cb_qp_offset >=
 12) {
>+                       dev_err(dev, "cb_qp_offset: %d\n", p_param->cb_qp_=
offset);
>+                       return -EINVAL;
>+               }
>+               if (p_param->cr_qp_offset < -12 || p_param->cr_qp_offset >=
 12) {
>+                       dev_err(dev, "cr_qp_offset: %d\n", p_param->cr_qp_=
offset);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_still_picture !=3D 0) {
>+                       dev_err(dev, "en_still_picture: %d\n", p_param-
>>en_still_picture);
>+                       return -EINVAL;
>+               }
>+               if (p_param->en_auto_level_adjusting !=3D 1 &&
>+                   p_param->en_auto_level_adjusting !=3D 0) {
>+                       dev_err(dev, "en_auto_level_adjusting: %d\n",
>+                               p_param->en_auto_level_adjusting);
>+                       return -EINVAL;
>+               }
>+               if (p_param->tier !=3D 0) {
>+                       dev_err(dev, "tier: %d\n", p_param->tier);
>+                       return -EINVAL;
>+               }
>+               if (p_param->profile > H264_PROFILE_HIGH10) {
>+                       dev_err(dev, "profile: %d\n", p_param->profile);
>+                       return -EINVAL;
>+               }
>+               if (p_param->profile) {
>+                       if (p_param->internal_bit_depth =3D=3D 10 &&
>+                           p_param->profile !=3D H264_PROFILE_HIGH10) {
>+                               dev_err(dev, "internal_bit_depth: %d, prof=
ile: %d\n",
>+                                       p_param->internal_bit_depth, p_par=
am->profile);
>+                               return -EINVAL;
>+                       }
>+               }
>+               if (p_param->num_ticks_poc_diff_one !=3D 0) {
>+                       dev_err(dev, "num_ticks_poc_diff_one: %d\n",
>+                               p_param->num_ticks_poc_diff_one);
>+                       return -EINVAL;
>+               }
>+               if (p_param->color.chroma_sample_position !=3D 0) {
>+                       dev_err(dev, "chroma_sample_position: %d\n",
>+                               p_param->color.chroma_sample_position);
>+                       return -EINVAL;
>+               }
>+               if (p_param->intra_4x4 !=3D 0) {
>+                       dev_err(dev, "intra_4x4: %d\n", p_param->intra_4x4=
);
>+                       return -EINVAL;
>+               }
>+       }
>+
>+       return 0;
>+}
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-hw.h
>b/drivers/media/platform/chips-media/wave6/wave6-hw.h
>new file mode 100644
>index 000000000000..a40477dc023e
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-hw.h
>@@ -0,0 +1,69 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - wave6 backend interface
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_HW_H__
>+#define __WAVE6_HW_H__
>+
>+#define STD_AVC                0
>+#define STD_HEVC       12
>+
>+enum product_id {
>+       PRODUCT_ID_617,
>+       PRODUCT_ID_627,
>+       PRODUCT_ID_637,
>+       PRODUCT_ID_NONE,
>+};
>+
>+#define BSOPTION_ENABLE_EXPLICIT_END   BIT(0)
>+#define NON_VCL_PARAM_ENCODE_VUI       BIT(1)
>+
>+#define DECODE_ALL_TEMPORAL_LAYERS     0
>+#define DECODE_ALL_SPATIAL_LAYERS      0
>+
>+#define REGISTER_DISPLAY_BUFFER        1
>+#define DEFAULT_PIXEL_ORDER    1
>+
>+#define WTL_RIGHT_JUSTIFIED    0
>+#define WTL_LEFT_JUSTIFIED     1
>+#define WTL_PIXEL_8BIT         0
>+#define WTL_PIXEL_16BIT                1
>+#define WTL_PIXEL_32BIT                2
>+
>+#define MAX_CSC_COEFF_NUM      4
>+
>+bool wave6_vpu_is_init(struct vpu_device *vpu_dev);
>+void wave6_vpu_check_state(struct vpu_device *vpu_dev);
>+int wave6_vpu_get_version(struct vpu_device *vpu_dev, u32 *version_info,
>uint32_t *revision);
>+void wave6_vpu_enable_interrupt(struct vpu_device *vpu_dev);
>+int wave6_vpu_build_up_dec_param(struct vpu_instance *inst, struct
>dec_open_param *param);
>+
>+void wave6_vpu_dec_set_bitstream_end(struct vpu_instance *inst, bool eos)=
;
>+int wave6_vpu_dec_register_frame_buffer(struct vpu_instance *inst,
>+                                       struct frame_buffer *fb_arr, enum =
tiled_map_type
>map_type,
>+                                       uint32_t count);
>+int wave6_vpu_dec_register_display_buffer(struct vpu_instance *inst, stru=
ct
>frame_buffer fb);
>+int wave6_vpu_dec_init_seq(struct vpu_instance *inst);
>+int wave6_vpu_dec_get_seq_info(struct vpu_instance *inst, struct
>dec_initial_info *info);
>+int wave6_vpu_decode(struct vpu_instance *inst, struct dec_param *option,
>u32 *fail_res);
>+int wave6_vpu_dec_get_result(struct vpu_instance *inst, struct
>dec_output_info *result);
>+int wave6_vpu_dec_fini_seq(struct vpu_instance *inst, u32 *fail_res);
>+dma_addr_t wave6_vpu_dec_get_rd_ptr(struct vpu_instance *inst);
>+int wave6_vpu_dec_flush(struct vpu_instance *inst);
>+
>+int wave6_vpu_build_up_enc_param(struct device *dev, struct vpu_instance
>*inst,
>+                                struct enc_open_param *param);
>+int wave6_vpu_enc_init_seq(struct vpu_instance *inst);
>+int wave6_vpu_enc_change_seq(struct vpu_instance *inst, bool *changed);
>+int wave6_vpu_enc_get_seq_info(struct vpu_instance *inst, struct
>enc_initial_info *info);
>+int wave6_vpu_enc_register_frame_buffer(struct vpu_instance *inst,
>+                                       struct frame_buffer *fb_arr);
>+int wave6_vpu_encode(struct vpu_instance *inst, struct enc_param *option,
>u32 *fail_res);
>+int wave6_vpu_enc_get_result(struct vpu_instance *inst, struct
>enc_output_info *result);
>+int wave6_vpu_enc_fini_seq(struct vpu_instance *inst, u32 *fail_res);
>+int wave6_vpu_enc_check_open_param(struct vpu_instance *inst, struct
>enc_open_param *pop);
>+
>+#endif /* __WAVE6_HW_H__ */
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-regdefine.h
>b/drivers/media/platform/chips-media/wave6/wave6-regdefine.h
>new file mode 100644
>index 000000000000..05d563cf9d55
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-regdefine.h
>@@ -0,0 +1,675 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - wave6 register definitions
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_REGDEFINE_H__
>+#define __WAVE6_REGDEFINE_H__
>+
>+enum wave6_command {
>+       W6_CMD_INIT_VPU         =3D 0x0001,
>+       W6_CMD_WAKEUP_VPU       =3D 0x0002,
>+       W6_CMD_SLEEP_VPU        =3D 0x0004,
>+       W6_CMD_CREATE_INSTANCE  =3D 0x0008,
>+       W6_CMD_FLUSH_INSTANCE   =3D 0x0010,
>+       W6_CMD_DESTROY_INSTANCE =3D 0x0020,
>+       W6_CMD_INIT_SEQ         =3D 0x0040,
>+       W6_CMD_SET_FB           =3D 0x0080,
>+       W6_CMD_DEC_PIC          =3D 0x0100,
>+       W6_CMD_ENC_PIC          =3D 0x0100,
>+       W6_CMD_ENC_SET_PARAM    =3D 0x0200,
>+       W6_CMD_DEC_SET_DISP     =3D 0x0400,
>+       W6_CMD_INIT_WORK_BUF    =3D 0x1000,
>+       W6_CMD_QUERY            =3D 0x4000,
>+};
>+
>+enum wave6_init_seq_option {
>+       W6_INIT_SEQ_OPT_NORMAL          =3D 1,
>+       W6_INIT_SEQ_OPT_W_THUMBNAIL     =3D 17,
>+};
>+
>+enum wave6_set_param_option {
>+       W6_SET_PARAM_OPT_COMMON         =3D 0,
>+       W6_SET_PARAM_OPT_CHANGE_PARAM   =3D 1,
>+};
>+
>+enum wave6_dec_pic_option {
>+       W6_DEC_PIC_OPT_NORMAL           =3D 0,
>+       W6_DEC_PIC_OPT_W_THUMBNAIL      =3D 16,
>+       W6_DEC_PIC_OPT_SKIP_NON_IRAP    =3D 17,
>+       W6_DEC_PIC_OPT_SKIP_NON_REF_PIC =3D 19,
>+};
>+
>+enum wave6_enc_pic_option {
>+       W6_ENC_PIC_OPT_HEADER_IMPLICIT  =3D 1,
>+       W6_ENC_PIC_OPT_VCL              =3D 2,
>+};
>+
>+enum wave6_query_option {
>+       W6_QUERY_OPT_GET_VPU_INFO       =3D 0,
>+       W6_QUERY_OPT_GET_RESULT         =3D 2,
>+       W6_QUERY_OPT_GET_FLUSH_CMD_INFO =3D 10,
>+};
>+
>+enum wave6_interrupt_bit {
>+       W6_INT_BIT_INIT_VPU             =3D 0,
>+       W6_INT_BIT_WAKEUP_VPU           =3D 1,
>+       W6_INT_BIT_SLEEP_VPU            =3D 2,
>+       W6_INT_BIT_CREATE_INSTANCE      =3D 3,
>+       W6_INT_BIT_FLUSH_INSTANCE       =3D 4,
>+       W6_INT_BIT_DESTROY_INSTANCE     =3D 5,
>+       W6_INT_BIT_INIT_SEQ             =3D 6,
>+       W6_INT_BIT_SET_FB               =3D 7,
>+       W6_INT_BIT_DEC_PIC              =3D 8,
>+       W6_INT_BIT_ENC_PIC              =3D 8,
>+       W6_INT_BIT_ENC_SET_PARAM        =3D 9,
>+       W6_INT_BIT_SET_DISP             =3D 10,
>+       W6_INT_BIT_REQ_WORK_BUF         =3D 12,
>+       W6_INT_BIT_BSBUF_ERROR          =3D 15,
>+};
>+
>+enum wave6_param_change_enable_bit {
>+       W6_PARAM_CHANGE_ENABLE_BIT_RC_TARGET_RATE =3D 10
>+};
>+
>+#define W6_REG_BASE    0x00000000
>+#define W6_CMD_REG_BASE        0x00000200
>+#define W6_CMD_REG_END 0x00000600
>+
>+#define W6_VPU_VCPU_CUR_PC                            (W6_REG_BASE + 0x00=
04)
>+#define W6_VPU_VINT_REASON_CLR                        (W6_REG_BASE + 0x00=
34)
>+#define W6_VPU_HOST_INT_REQ                           (W6_REG_BASE + 0x00=
38)
>+#define W6_VPU_VINT_CLEAR                             (W6_REG_BASE + 0x00=
3C)
>+#define W6_VPU_VPU_INT_STS                            (W6_REG_BASE + 0x00=
44)
>+#define W6_VPU_VINT_ENABLE                            (W6_REG_BASE + 0x00=
48)
>+#define W6_VPU_VINT_REASON                            (W6_REG_BASE + 0x00=
4C)
>+#define W6_VPU_REMAP_CTRL_GB                          (W6_REG_BASE + 0x00=
60)
>+#define W6_VPU_REMAP_VADDR_GB                         (W6_REG_BASE + 0x00=
64)
>+#define W6_VPU_REMAP_PADDR_GB                         (W6_REG_BASE + 0x00=
68)
>+#define W6_VPU_REMAP_CORE_START_GB                    (W6_REG_BASE +
>0x006C)
>+#define W6_VPU_BUSY_STATUS                            (W6_REG_BASE + 0x00=
70)
>+#define W6_VPU_RET_PRODUCT_VERSION                    (W6_REG_BASE +
>0x0094)
>+
>+/* COMMON */
>+#define W6_COMMAND_GB                                 (W6_REG_BASE + 0x10=
4)
>+#define W6_COMMAND                                    (W6_REG_BASE + 0x20=
0)
>+#define W6_QUERY_OPTION                               (W6_REG_BASE + 0x20=
4)
>+#define W6_CMD_INSTANCE_INFO                          (W6_REG_BASE + 0x21=
0)
>+#define W6_CMD_INIT_VPU_SEC_AXI_BASE_CORE0            (W6_REG_BASE +
>0x364)
>+#define W6_CMD_INIT_VPU_SEC_AXI_SIZE_CORE0            (W6_REG_BASE +
>0x368)
>+#define W6_CMD_SET_CTRL_WORK_BUF_ADDR                 (W6_REG_BASE +
>0x5F0)
>+#define W6_CMD_SET_CTRL_WORK_BUF_SIZE                 (W6_REG_BASE +
>0x5F4)
>+#define W6_RET_SUCCESS                                (W6_REG_BASE + 0x20=
8)
>+#define W6_RET_FAIL_REASON                            (W6_REG_BASE + 0x20=
C)
>+#define W6_RET_INSTANCE_ID                            (W6_REG_BASE + 0x22=
0)
>+#define W6_RET_CQ_IN_TICK                             (W6_REG_BASE + 0x23=
C)
>+#define W6_RET_FW_RUN_TICK                            (W6_REG_BASE + 0x24=
0)
>+#define W6_RET_HW_RUN_TICK                            (W6_REG_BASE + 0x24=
4)
>+#define W6_RET_HW_DONE_TICK                           (W6_REG_BASE + 0x24=
8)
>+#define W6_RET_FW_DONE_TICK                           (W6_REG_BASE + 0x24=
C)
>+#define W6_RET_RQ_OUT_TICK                            (W6_REG_BASE + 0x25=
0)
>+
>+/* COMMON - QUERY : GET_VPU_INFO */
>+#define W6_RET_FW_VERSION                             (W6_REG_BASE + 0x30=
0)
>+#define W6_RET_PRODUCT_NAME                           (W6_REG_BASE + 0x30=
4)
>+#define W6_RET_PRODUCT_VERSION                        (W6_REG_BASE + 0x30=
8)
>+#define W6_RET_STD_DEF0                               (W6_REG_BASE + 0x30=
C)
>+#define W6_RET_STD_DEF1                               (W6_REG_BASE + 0x31=
0)
>+#define W6_RET_CONF_FEATURE                           (W6_REG_BASE + 0x31=
4)
>+#define W6_RET_CONF_DATE                              (W6_REG_BASE + 0x31=
8)
>+#define W6_RET_CONF_REVISION                          (W6_REG_BASE + 0x31=
C)
>+#define W6_RET_CONF_TYPE                              (W6_REG_BASE + 0x32=
0)
>+#define W6_RET_FW_API_VERSION                         (W6_REG_BASE + 0x32=
C)
>+#define W6_RET_SHA_ID                                 (W6_REG_BASE + 0x33=
0)
>+
>+/* DECODER - CREATE_INSTANCE */
>+#define W6_CMD_DEC_CREATE_INST_BS_PARAM               (W6_REG_BASE +
>0x310)
>+#define W6_CMD_DEC_CREATE_INST_ADDR_EXT               (W6_REG_BASE +
>0x318)
>+#define W6_CMD_DEC_CREATE_INST_DISP_MODE              (W6_REG_BASE +
>0x31C)
>+#define W6_CMD_DEC_CREATE_INST_CORE_INFO              (W6_REG_BASE +
>0x330)
>+#define W6_CMD_DEC_CREATE_INST_PRIORITY               (W6_REG_BASE +
>0x334)
>+#define W6_CMD_DEC_CREATE_INST_TEMP_BASE              (W6_REG_BASE +
>0x348)
>+#define W6_CMD_DEC_CREATE_INST_TEMP_SIZE              (W6_REG_BASE +
>0x34C)
>+#define W6_CMD_DEC_CREATE_INST_TIMEOUT_CYCLE_COUNT
>(W6_REG_BASE + 0x3A8)
>+
>+/* DECODER - INIT_SEQ */
>+#define W6_CMD_DEC_INIT_SEQ_OPTION                    (W6_REG_BASE +
>0x204)
>+#define W6_CMD_DEC_INIT_SEQ_BS_RD_PTR                 (W6_REG_BASE +
>0x300)
>+#define W6_CMD_DEC_INIT_SEQ_BS_WR_PTR                 (W6_REG_BASE +
>0x304)
>+#define W6_CMD_DEC_INIT_SEQ_BS_OPTION                 (W6_REG_BASE +
>0x308)
>+
>+/* DECODER - SET_FB */
>+#define W6_CMD_DEC_SET_FB_OPTION                      (W6_REG_BASE + 0x20=
4)
>+#define W6_CMD_DEC_SET_FB_COMMON_PIC_INFO             (W6_REG_BASE
>+ 0x300)
>+#define W6_CMD_DEC_SET_FB_PIC_SIZE                    (W6_REG_BASE + 0x30=
4)
>+#define W6_CMD_DEC_SET_FB_NUM                         (W6_REG_BASE + 0x30=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_Y0                      (W6_REG_BASE + 0x31=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C0                      (W6_REG_BASE + 0x31=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET0               (W6_REG_BASE +
>0x318)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET0               (W6_REG_BASE +
>0x31C)
>+#define W6_CMD_DEC_SET_FB_MV_COL0                     (W6_REG_BASE +
>0x320)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED0                (W6_REG_BASE +
>0x324)
>+#define W6_CMD_DEC_SET_FB_FBC_Y1                      (W6_REG_BASE + 0x32=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C1                      (W6_REG_BASE + 0x32=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET1               (W6_REG_BASE +
>0x330)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET1               (W6_REG_BASE +
>0x334)
>+#define W6_CMD_DEC_SET_FB_MV_COL1                     (W6_REG_BASE +
>0x338)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED1                (W6_REG_BASE +
>0x33C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y2                      (W6_REG_BASE + 0x34=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C2                      (W6_REG_BASE + 0x34=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET2               (W6_REG_BASE +
>0x348)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET2               (W6_REG_BASE +
>0x34C)
>+#define W6_CMD_DEC_SET_FB_MV_COL2                     (W6_REG_BASE +
>0x350)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED2                (W6_REG_BASE +
>0x354)
>+#define W6_CMD_DEC_SET_FB_FBC_Y3                      (W6_REG_BASE + 0x35=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C3                      (W6_REG_BASE + 0x35=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET3               (W6_REG_BASE +
>0x360)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET3               (W6_REG_BASE +
>0x364)
>+#define W6_CMD_DEC_SET_FB_MV_COL3                     (W6_REG_BASE +
>0x368)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED3                (W6_REG_BASE +
>0x36C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y4                      (W6_REG_BASE + 0x37=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C4                      (W6_REG_BASE + 0x37=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET4               (W6_REG_BASE +
>0x378)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET4               (W6_REG_BASE +
>0x37C)
>+#define W6_CMD_DEC_SET_FB_MV_COL4                     (W6_REG_BASE +
>0x380)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED4                (W6_REG_BASE +
>0x384)
>+#define W6_CMD_DEC_SET_FB_FBC_Y5                      (W6_REG_BASE + 0x38=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C5                      (W6_REG_BASE + 0x38=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET5               (W6_REG_BASE +
>0x390)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET5               (W6_REG_BASE +
>0x394)
>+#define W6_CMD_DEC_SET_FB_MV_COL5                     (W6_REG_BASE +
>0x398)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED5                (W6_REG_BASE +
>0x39C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y6                      (W6_REG_BASE + 0x3A=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C6                      (W6_REG_BASE + 0x3A=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET6               (W6_REG_BASE +
>0x3A8)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET6               (W6_REG_BASE +
>0x3AC)
>+#define W6_CMD_DEC_SET_FB_MV_COL6                     (W6_REG_BASE +
>0x3B0)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED6                (W6_REG_BASE +
>0x3B4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y7                      (W6_REG_BASE + 0x3B=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C7                      (W6_REG_BASE + 0x3B=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET7               (W6_REG_BASE +
>0x3C0)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET7               (W6_REG_BASE +
>0x3C4)
>+#define W6_CMD_DEC_SET_FB_MV_COL7                     (W6_REG_BASE +
>0x3C8)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED7                (W6_REG_BASE +
>0x3CC)
>+#define W6_CMD_DEC_SET_FB_FBC_Y8                      (W6_REG_BASE + 0x3D=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C8                      (W6_REG_BASE + 0x3D=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET8               (W6_REG_BASE +
>0x3D8)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET8               (W6_REG_BASE +
>0x3DC)
>+#define W6_CMD_DEC_SET_FB_MV_COL8                     (W6_REG_BASE +
>0x3E0)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED8                (W6_REG_BASE +
>0x3E4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y9                      (W6_REG_BASE + 0x3E=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C9                      (W6_REG_BASE + 0x3E=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET9               (W6_REG_BASE +
>0x3F0)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET9               (W6_REG_BASE +
>0x3F4)
>+#define W6_CMD_DEC_SET_FB_MV_COL9                     (W6_REG_BASE +
>0x3F8)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED9                (W6_REG_BASE +
>0x3FC)
>+#define W6_CMD_DEC_SET_FB_FBC_Y10                     (W6_REG_BASE + 0x40=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C10                     (W6_REG_BASE + 0x40=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET10              (W6_REG_BASE +
>0x408)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET10              (W6_REG_BASE +
>0x40C)
>+#define W6_CMD_DEC_SET_FB_MV_COL10                    (W6_REG_BASE +
>0x410)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED10               (W6_REG_BASE +
>0x414)
>+#define W6_CMD_DEC_SET_FB_FBC_Y11                     (W6_REG_BASE + 0x41=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C11                     (W6_REG_BASE + 0x41=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET11              (W6_REG_BASE +
>0x420)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET11              (W6_REG_BASE +
>0x424)
>+#define W6_CMD_DEC_SET_FB_MV_COL11                    (W6_REG_BASE +
>0x428)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED11               (W6_REG_BASE +
>0x42C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y12                     (W6_REG_BASE + 0x43=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C12                     (W6_REG_BASE + 0x43=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET12              (W6_REG_BASE +
>0x438)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET12              (W6_REG_BASE +
>0x43C)
>+#define W6_CMD_DEC_SET_FB_MV_COL12                    (W6_REG_BASE +
>0x440)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED12               (W6_REG_BASE +
>0x444)
>+#define W6_CMD_DEC_SET_FB_FBC_Y13                     (W6_REG_BASE + 0x44=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C13                     (W6_REG_BASE + 0x44=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET13              (W6_REG_BASE +
>0x450)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET13              (W6_REG_BASE +
>0x454)
>+#define W6_CMD_DEC_SET_FB_MV_COL13                    (W6_REG_BASE +
>0x458)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED13               (W6_REG_BASE +
>0x45C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y14                     (W6_REG_BASE + 0x46=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_C14                     (W6_REG_BASE + 0x46=
4)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET14              (W6_REG_BASE +
>0x468)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET14              (W6_REG_BASE +
>0x46C)
>+#define W6_CMD_DEC_SET_FB_MV_COL14                    (W6_REG_BASE +
>0x470)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED14               (W6_REG_BASE +
>0x474)
>+#define W6_CMD_DEC_SET_FB_FBC_Y15                     (W6_REG_BASE + 0x47=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_C15                     (W6_REG_BASE + 0x47=
C)
>+#define W6_CMD_DEC_SET_FB_FBC_Y_OFFSET15              (W6_REG_BASE +
>0x480)
>+#define W6_CMD_DEC_SET_FB_FBC_C_OFFSET15              (W6_REG_BASE +
>0x484)
>+#define W6_CMD_DEC_SET_FB_MV_COL15                    (W6_REG_BASE +
>0x488)
>+#define W6_CMD_DEC_SET_FB_SUB_SAMPLED15               (W6_REG_BASE +
>0x48C)
>+#define W6_CMD_DEC_SET_FB_DEFAULT_CDF                 (W6_REG_BASE +
>0x494)
>+#define W6_CMD_DEC_SET_FB_SEGMAP                      (W6_REG_BASE +
>0x498)
>+#define W6_CMD_DEC_SET_FB_MV_COL_PRE_ENT              (W6_REG_BASE +
>0x4DC)
>+#define W6_CMD_DEC_SET_FB_FBC_CR0                     (W6_REG_BASE + 0x4F=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET0              (W6_REG_BASE +
>0x4F4)
>+#define W6_CMD_DEC_SET_FB_FBC_CR1                     (W6_REG_BASE + 0x4F=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET1              (W6_REG_BASE +
>0x4FC)
>+#define W6_CMD_DEC_SET_FB_FBC_CR2                     (W6_REG_BASE + 0x50=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET2              (W6_REG_BASE +
>0x504)
>+#define W6_CMD_DEC_SET_FB_FBC_CR3                     (W6_REG_BASE + 0x50=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET3              (W6_REG_BASE +
>0x50C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR4                     (W6_REG_BASE + 0x51=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET4              (W6_REG_BASE +
>0x514)
>+#define W6_CMD_DEC_SET_FB_FBC_CR5                     (W6_REG_BASE + 0x51=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET5              (W6_REG_BASE +
>0x51C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR6                     (W6_REG_BASE + 0x52=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET6              (W6_REG_BASE +
>0x524)
>+#define W6_CMD_DEC_SET_FB_FBC_CR7                     (W6_REG_BASE + 0x52=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET7              (W6_REG_BASE +
>0x52C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR8                     (W6_REG_BASE + 0x53=
0)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET8              (W6_REG_BASE +
>0x534)
>+#define W6_CMD_DEC_SET_FB_FBC_CR9                     (W6_REG_BASE + 0x53=
8)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET9              (W6_REG_BASE +
>0x53C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR10                    (W6_REG_BASE +
>0x540)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET10             (W6_REG_BASE +
>0x544)
>+#define W6_CMD_DEC_SET_FB_FBC_CR11                    (W6_REG_BASE +
>0x548)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET11             (W6_REG_BASE +
>0x54C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR12                    (W6_REG_BASE +
>0x550)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET12             (W6_REG_BASE +
>0x554)
>+#define W6_CMD_DEC_SET_FB_FBC_CR13                    (W6_REG_BASE +
>0x558)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET13             (W6_REG_BASE +
>0x55C)
>+#define W6_CMD_DEC_SET_FB_FBC_CR14                    (W6_REG_BASE +
>0x560)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET14             (W6_REG_BASE +
>0x564)
>+#define W6_CMD_DEC_SET_FB_FBC_CR15                    (W6_REG_BASE +
>0x568)
>+#define W6_CMD_DEC_SET_FB_FBC_CR_OFFSET15             (W6_REG_BASE +
>0x56C)
>+
>+/* DECODER - SET_DISP */
>+#define W6_CMD_DEC_SET_DISP_OPTION                    (W6_REG_BASE +
>0x204)
>+#define W6_CMD_DEC_SET_DISP_COMMON_PIC_INFO           (W6_REG_BASE
>+ 0x300)
>+#define W6_CMD_DEC_SET_DISP_PIC_SIZE                  (W6_REG_BASE +
>0x304)
>+#define W6_CMD_DEC_SET_DISP_PIC_INFO                  (W6_REG_BASE +
>0x308)
>+#define W6_CMD_DEC_SET_DISP_Y_BASE                    (W6_REG_BASE +
>0x30C)
>+#define W6_CMD_DEC_SET_DISP_CB_BASE                   (W6_REG_BASE +
>0x310)
>+#define W6_CMD_DEC_SET_DISP_CR_BASE                   (W6_REG_BASE +
>0x314)
>+#define W6_CMD_DEC_SET_DISP_SCL_PARAM                 (W6_REG_BASE +
>0x318)
>+#define W6_CMD_DEC_SET_DISP_SCL_PIC_SIZE              (W6_REG_BASE +
>0x31C)
>+
>+/* DECODER - DEC_PIC */
>+#define W6_CMD_DEC_PIC_OPTION                         (W6_REG_BASE + 0x20=
4)
>+#define W6_CMD_DEC_PIC_BS_RD_PTR                      (W6_REG_BASE + 0x30=
0)
>+#define W6_CMD_DEC_PIC_BS_WR_PTR                      (W6_REG_BASE + 0x30=
4)
>+#define W6_CMD_DEC_PIC_BS_OPTION                      (W6_REG_BASE + 0x30=
8)
>+#define W6_CMD_DEC_PIC_USE_SEC_AXI                    (W6_REG_BASE + 0x30=
C)
>+#define W6_CMD_DEC_PIC_SEQ_CHANGE_ENABLE_FLAG
>(W6_REG_BASE + 0x310)
>+#define W6_CMD_DEC_PIC_TEMPORAL_ID_PLUS1              (W6_REG_BASE +
>0x318)
>+#define W6_CMD_DEC_PIC_TIMESTAMP                      (W6_REG_BASE + 0x32=
C)
>+
>+/* DECODER - QUERY : GET_RESULT */
>+#define W6_RET_DEC_BS_RD_PTR                          (W6_REG_BASE + 0x30=
C)
>+#define W6_RET_DEC_SEQ_PARAM                          (W6_REG_BASE + 0x31=
0)
>+#define W6_RET_DEC_COLOR_SAMPLE_INFO                  (W6_REG_BASE +
>0x314)
>+#define W6_RET_DEC_ASPECT_RATIO                       (W6_REG_BASE + 0x31=
8)
>+#define W6_RET_DEC_BIT_RATE                           (W6_REG_BASE + 0x31=
C)
>+#define W6_RET_DEC_FRAME_RATE_NR                      (W6_REG_BASE + 0x32=
0)
>+#define W6_RET_DEC_FRAME_RATE_DR                      (W6_REG_BASE + 0x32=
4)
>+#define W6_RET_DEC_NUM_REQUIRED_FBC_FB                (W6_REG_BASE +
>0x328)
>+#define W6_RET_DEC_NUM_REORDER_DELAY                  (W6_REG_BASE +
>0x32C)
>+#define W6_RET_DEC_NOTIFICATION                       (W6_REG_BASE + 0x33=
4)
>+#define W6_RET_DEC_PIC_SIZE                           (W6_REG_BASE + 0x33=
C)
>+#define W6_RET_DEC_CROP_TOP_BOTTOM                    (W6_REG_BASE +
>0x340)
>+#define W6_RET_DEC_CROP_LEFT_RIGHT                    (W6_REG_BASE + 0x34=
4)
>+#define W6_RET_DEC_AU_START_POS                       (W6_REG_BASE + 0x34=
8)
>+#define W6_RET_DEC_AU_END_POS                         (W6_REG_BASE + 0x34=
C)
>+#define W6_RET_DEC_PIC_TYPE                           (W6_REG_BASE + 0x35=
0)
>+#define W6_RET_DEC_PIC_POC                            (W6_REG_BASE + 0x35=
4)
>+#define W6_RET_DEC_RECOVERY_POINT                     (W6_REG_BASE + 0x35=
8)
>+#define W6_RET_DEC_DECODED_ADDR                       (W6_REG_BASE + 0x36=
0)
>+#define W6_RET_DEC_DISPLAY_ADDR                       (W6_REG_BASE + 0x36=
4)
>+#define W6_RET_DEC_ERR_CTB_NUM                        (W6_REG_BASE + 0x37=
0)
>+#define W6_RET_DEC_DISPLAY_FLAG                       (W6_REG_BASE + 0x3A=
8)
>+#define W6_RET_DEC_RELEASE_IDC                        (W6_REG_BASE + 0x3A=
C)
>+#define W6_RET_DEC_DISP_IDC                           (W6_REG_BASE + 0x3B=
0)
>+#define W6_RET_DEC_STREAM_END                         (W6_REG_BASE + 0x3C=
0)
>+#define W6_RET_DEC_DECODED_FLAG                       (W6_REG_BASE + 0x3C=
4)
>+#define W6_RET_DEC_WARN_INFO                          (W6_REG_BASE + 0x3C=
C)
>+#define W6_RET_DEC_ERR_INFO                           (W6_REG_BASE + 0x3D=
0)
>+#define W6_RET_DEC_DECODING_SUCCESS                   (W6_REG_BASE +
>0x3D4)
>+#define W6_RET_DEC_TIMESTAMP                          (W6_REG_BASE + 0x3D=
8)
>+#define W6_RET_DEC_LAST_FRAME_FLAG                    (W6_REG_BASE +
>0x3E0)
>+#define W6_RET_DEC_NUM_REQUIRED_COL_BUF               (W6_REG_BASE +
>0x3E4)
>+#define W6_RET_DEC_DISP_LINEAR_ADDR_0                 (W6_REG_BASE +
>0x3E8)
>+#define W6_RET_DEC_DISP_LINEAR_ADDR_30                (W6_REG_BASE +
>0x460)
>+#define W6_RET_DEC_COLOR_CONFIG                       (W6_REG_BASE + 0x57=
C)
>+
>+/* DECODER - QUERY : GET_FLUSH_CMD_INFO */
>+#define W6_RET_DEC_FLUSH_CMD_DISP_ADDR_0              (W6_REG_BASE +
>0x300)
>+#define W6_RET_DEC_FLUSH_CMD_DISP_ADDR_1E             (W6_REG_BASE +
>0x378)
>+#define W6_RET_DEC_FLUSH_CMD_BUF_STATE_UNUSED_IDC
>(W6_REG_BASE + 0x57C)
>+#define W6_RET_DEC_FLUSH_CMD_BUF_STATE_USED_IDC
>(W6_REG_BASE + 0x580)
>+#define W6_RET_DEC_FLUSH_CMD_BUF_STATE_USING_IDC
>(W6_REG_BASE + 0x584)
>+
>+/* ENCODER - CREATE_INSTANCE */
>+#define W6_CMD_ENC_CREATE_INST_BS_PARAM               (W6_REG_BASE +
>0x310)
>+#define W6_CMD_ENC_CREATE_INST_SRC_OPT                (W6_REG_BASE +
>0x314)
>+#define W6_CMD_ENC_CREATE_INST_ADDR_EXT               (W6_REG_BASE +
>0x318)
>+#define W6_CMD_ENC_CREATE_INST_CORE_INFO              (W6_REG_BASE +
>0x330)
>+#define W6_CMD_ENC_CREATE_INST_PRIORITY               (W6_REG_BASE +
>0x334)
>+#define W6_CMD_ENC_CREATE_INST_TEMP_BASE              (W6_REG_BASE +
>0x348)
>+#define W6_CMD_ENC_CREATE_INST_TEMP_SIZE              (W6_REG_BASE +
>0x34C)
>+#define W6_CMD_ENC_CREATE_INST_AR_TABLE_BASE          (W6_REG_BASE
>+ 0x358)
>+#define W6_CMD_ENC_CREATE_INST_TIMEOUT_CYCLE_COUNT
>(W6_REG_BASE + 0x3A8)
>+
>+/* ENCODER - SET_PARAM */
>+#define W6_CMD_ENC_SET_PARAM_OPTION                   (W6_REG_BASE +
>0x204)
>+#define W6_CMD_ENC_SET_PARAM_ENABLE                   (W6_REG_BASE +
>0x300)
>+#define W6_CMD_ENC_SET_PARAM_SRC_SIZE                 (W6_REG_BASE +
>0x304)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_MAP_ENDIAN
>(W6_REG_BASE + 0x308)
>+#define W6_CMD_ENC_SET_PARAM_SPS_PARAM                (W6_REG_BASE +
>0x30C)
>+#define W6_CMD_ENC_SET_PARAM_PPS_PARAM                (W6_REG_BASE +
>0x310)
>+#define W6_CMD_ENC_SET_PARAM_GOP_PARAM                (W6_REG_BASE +
>0x314)
>+#define W6_CMD_ENC_SET_PARAM_INTRA_PARAM              (W6_REG_BASE +
>0x318)
>+#define W6_CMD_ENC_SET_PARAM_CONF_WIN_TOP_BOT
>(W6_REG_BASE + 0x31C)
>+#define W6_CMD_ENC_SET_PARAM_CONF_WIN_LEFT_RIGHT
>(W6_REG_BASE + 0x320)
>+#define W6_CMD_ENC_SET_PARAM_RDO_PARAM                (W6_REG_BASE +
>0x324)
>+#define W6_CMD_ENC_SET_PARAM_SLICE_PARAM              (W6_REG_BASE +
>0x328)
>+#define W6_CMD_ENC_SET_PARAM_INTRA_REFRESH            (W6_REG_BASE
>+ 0x32C)
>+#define W6_CMD_ENC_SET_PARAM_INTRA_MIN_MAX_QP
>(W6_REG_BASE + 0x330)
>+#define W6_CMD_ENC_SET_PARAM_RC_FRAME_RATE            (W6_REG_BASE
>+ 0x334)
>+#define W6_CMD_ENC_SET_PARAM_RC_TARGET_RATE           (W6_REG_BASE
>+ 0x338)
>+#define W6_CMD_ENC_SET_PARAM_RC_PARAM                 (W6_REG_BASE +
>0x33C)
>+#define W6_CMD_ENC_SET_PARAM_HVS_PARAM                (W6_REG_BASE +
>0x340)
>+#define W6_CMD_ENC_SET_PARAM_RC_MAX_BITRATE           (W6_REG_BASE
>+ 0x344)
>+#define W6_CMD_ENC_SET_PARAM_RC_VBV_BUFFER_SIZE
>(W6_REG_BASE + 0x348)
>+#define W6_CMD_ENC_SET_PARAM_INTER_MIN_MAX_QP
>(W6_REG_BASE + 0x34C)
>+#define W6_CMD_ENC_SET_PARAM_ROT_PARAM                (W6_REG_BASE +
>0x350)
>+#define W6_CMD_ENC_SET_PARAM_NUM_UNITS_IN_TICK
>(W6_REG_BASE + 0x354)
>+#define W6_CMD_ENC_SET_PARAM_TIME_SCALE               (W6_REG_BASE +
>0x358)
>+#define W6_CMD_ENC_SET_PARAM_NUM_TICKS_POC_DIFF_ONE
>(W6_REG_BASE + 0x35C)
>+#define W6_CMD_ENC_SET_PARAM_MAX_INTRA_PIC_BIT
>(W6_REG_BASE + 0x360)
>+#define W6_CMD_ENC_SET_PARAM_MAX_INTER_PIC_BIT
>(W6_REG_BASE + 0x364)
>+#define W6_CMD_ENC_SET_PARAM_BG_PARAM                 (W6_REG_BASE +
>0x36C)
>+#define W6_CMD_ENC_SET_PARAM_NON_VCL_PARAM
>(W6_REG_BASE + 0x370)
>+#define W6_CMD_ENC_SET_PARAM_VUI_RBSP_ADDR            (W6_REG_BASE
>+ 0x374)
>+#define W6_CMD_ENC_SET_PARAM_HRD_RBSP_ADDR            (W6_REG_BASE
>+ 0x378)
>+#define W6_CMD_ENC_SET_PARAM_QROUND_OFFSET
>(W6_REG_BASE + 0x380)
>+#define W6_CMD_ENC_SET_PARAM_QUANT_PARAM_1
>(W6_REG_BASE + 0x384)
>+#define W6_CMD_ENC_SET_PARAM_QUANT_PARAM_2
>(W6_REG_BASE + 0x388)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PARAM
>(W6_REG_BASE + 0x38C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_0
>(W6_REG_BASE + 0x390)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_1
>(W6_REG_BASE + 0x394)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_2
>(W6_REG_BASE + 0x398)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_3
>(W6_REG_BASE + 0x39C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_4
>(W6_REG_BASE + 0x3A0)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_5
>(W6_REG_BASE + 0x3A4)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_6
>(W6_REG_BASE + 0x3A8)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_GOP_PIC_PARAM_7
>(W6_REG_BASE + 0x3AC)
>+#define W6_CMD_ENC_SET_PARAM_TILE_PARAM               (W6_REG_BASE +
>0x3D0)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_0
>(W6_REG_BASE + 0x3D4)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_1
>(W6_REG_BASE + 0x3D8)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_2
>(W6_REG_BASE + 0x3DC)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_3
>(W6_REG_BASE + 0x3E0)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_4
>(W6_REG_BASE + 0x3E4)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_5
>(W6_REG_BASE + 0x3E8)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_6
>(W6_REG_BASE + 0x3EC)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_7
>(W6_REG_BASE + 0x3F0)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_8
>(W6_REG_BASE + 0x3F4)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_9
>(W6_REG_BASE + 0x3F8)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_10
>(W6_REG_BASE + 0x3FC)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_11
>(W6_REG_BASE + 0x400)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_12
>(W6_REG_BASE + 0x404)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_13
>(W6_REG_BASE + 0x408)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_14
>(W6_REG_BASE + 0x40C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_15
>(W6_REG_BASE + 0x410)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_16
>(W6_REG_BASE + 0x414)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_17
>(W6_REG_BASE + 0x418)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_18
>(W6_REG_BASE + 0x41C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_19
>(W6_REG_BASE + 0x420)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_20
>(W6_REG_BASE + 0x424)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_21
>(W6_REG_BASE + 0x428)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_22
>(W6_REG_BASE + 0x42C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_23
>(W6_REG_BASE + 0x430)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_24
>(W6_REG_BASE + 0x434)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_25
>(W6_REG_BASE + 0x438)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_26
>(W6_REG_BASE + 0x43C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_27
>(W6_REG_BASE + 0x440)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_28
>(W6_REG_BASE + 0x444)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_29
>(W6_REG_BASE + 0x448)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_30
>(W6_REG_BASE + 0x44C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_31
>(W6_REG_BASE + 0x450)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_32
>(W6_REG_BASE + 0x454)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_33
>(W6_REG_BASE + 0x458)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_34
>(W6_REG_BASE + 0x45C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_35
>(W6_REG_BASE + 0x460)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_36
>(W6_REG_BASE + 0x464)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_37
>(W6_REG_BASE + 0x468)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_38
>(W6_REG_BASE + 0x46C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_39
>(W6_REG_BASE + 0x470)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_40
>(W6_REG_BASE + 0x474)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_41
>(W6_REG_BASE + 0x478)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_42
>(W6_REG_BASE + 0x47C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_43
>(W6_REG_BASE + 0x480)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_44
>(W6_REG_BASE + 0x484)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_45
>(W6_REG_BASE + 0x488)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_46
>(W6_REG_BASE + 0x48C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_47
>(W6_REG_BASE + 0x490)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_48
>(W6_REG_BASE + 0x494)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_49
>(W6_REG_BASE + 0x498)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_50
>(W6_REG_BASE + 0x49C)
>+#define W6_CMD_ENC_SET_PARAM_CUSTOM_LAMBDA_51
>(W6_REG_BASE + 0x4A0)
>+#define W6_CMD_ENC_SET_PARAM_TEMPORAL_LAYER_0_QP
>(W6_REG_BASE + 0x4A4)
>+#define W6_CMD_ENC_SET_PARAM_TEMPORAL_LAYER_1_QP
>(W6_REG_BASE + 0x4A8)
>+#define W6_CMD_ENC_SET_PARAM_TEMPORAL_LAYER_2_QP
>(W6_REG_BASE + 0x4AC)
>+#define W6_CMD_ENC_SET_PARAM_TEMPORAL_LAYER_3_QP
>(W6_REG_BASE + 0x4B0)
>+#define W6_CMD_ENC_SET_PARAM_SCL_SRC_SIZE             (W6_REG_BASE +
>0x4B4)
>+#define W6_CMD_ENC_SET_PARAM_SCL_PARAM                (W6_REG_BASE +
>0x4B8)
>+#define W6_CMD_ENC_SET_PARAM_COLOR_PARAM              (W6_REG_BASE
>+ 0x4F8)
>+#define W6_CMD_ENC_SET_PARAM_SAR_PARAM                (W6_REG_BASE +
>0x4FC)
>+#define W6_CMD_ENC_SET_PARAM_SAR_EXTENDED             (W6_REG_BASE
>+ 0x500)
>+
>+/* ENCODER - SET_FB */
>+#define W6_CMD_ENC_SET_FB_OPTION                      (W6_REG_BASE + 0x20=
4)
>+#define W6_CMD_ENC_SET_FB_PIC_INFO                    (W6_REG_BASE +
>0x300)
>+#define W6_CMD_ENC_SET_FB_PIC_SIZE                    (W6_REG_BASE + 0x30=
4)
>+#define W6_CMD_ENC_SET_FB_NUM                         (W6_REG_BASE + 0x30=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_STRIDE                  (W6_REG_BASE +
>0x30C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y0                      (W6_REG_BASE + 0x31=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C0                      (W6_REG_BASE + 0x31=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET0               (W6_REG_BASE +
>0x318)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET0               (W6_REG_BASE +
>0x31C)
>+#define W6_CMD_ENC_SET_FB_MV_COL0                     (W6_REG_BASE +
>0x320)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED0                (W6_REG_BASE +
>0x324)
>+#define W6_CMD_ENC_SET_FB_FBC_Y1                      (W6_REG_BASE + 0x32=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C1                      (W6_REG_BASE + 0x32=
C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET1               (W6_REG_BASE +
>0x330)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET1               (W6_REG_BASE +
>0x334)
>+#define W6_CMD_ENC_SET_FB_MV_COL1                     (W6_REG_BASE +
>0x338)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED1                (W6_REG_BASE +
>0x33C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y2                      (W6_REG_BASE + 0x34=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C2                      (W6_REG_BASE + 0x34=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET2               (W6_REG_BASE +
>0x348)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET2               (W6_REG_BASE +
>0x34C)
>+#define W6_CMD_ENC_SET_FB_MV_COL2                     (W6_REG_BASE +
>0x350)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED2                (W6_REG_BASE +
>0x354)
>+#define W6_CMD_ENC_SET_FB_FBC_Y3                      (W6_REG_BASE + 0x35=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C3                      (W6_REG_BASE + 0x35=
C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET3               (W6_REG_BASE +
>0x360)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET3               (W6_REG_BASE +
>0x364)
>+#define W6_CMD_ENC_SET_FB_MV_COL3                     (W6_REG_BASE +
>0x368)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED3                (W6_REG_BASE +
>0x36C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y4                      (W6_REG_BASE + 0x37=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C4                      (W6_REG_BASE + 0x37=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET4               (W6_REG_BASE +
>0x378)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET4               (W6_REG_BASE +
>0x37C)
>+#define W6_CMD_ENC_SET_FB_MV_COL4                     (W6_REG_BASE +
>0x380)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED4                (W6_REG_BASE +
>0x384)
>+#define W6_CMD_ENC_SET_FB_FBC_Y5                      (W6_REG_BASE + 0x38=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C5                      (W6_REG_BASE + 0x38=
C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET5               (W6_REG_BASE +
>0x390)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET5               (W6_REG_BASE +
>0x394)
>+#define W6_CMD_ENC_SET_FB_MV_COL5                     (W6_REG_BASE +
>0x398)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED5                (W6_REG_BASE +
>0x39C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y6                      (W6_REG_BASE + 0x3A=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C6                      (W6_REG_BASE + 0x3A=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET6               (W6_REG_BASE +
>0x3A8)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET6               (W6_REG_BASE +
>0x3AC)
>+#define W6_CMD_ENC_SET_FB_MV_COL6                     (W6_REG_BASE +
>0x3B0)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED6                (W6_REG_BASE +
>0x3B4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y7                      (W6_REG_BASE + 0x3B=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C7                      (W6_REG_BASE + 0x3B=
C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET7               (W6_REG_BASE +
>0x3C0)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET7               (W6_REG_BASE +
>0x3C4)
>+#define W6_CMD_ENC_SET_FB_MV_COL7                     (W6_REG_BASE +
>0x3C8)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED7                (W6_REG_BASE +
>0x3CC)
>+#define W6_CMD_ENC_SET_FB_FBC_Y8                      (W6_REG_BASE + 0x3D=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C8                      (W6_REG_BASE + 0x3D=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET8               (W6_REG_BASE +
>0x3D8)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET8               (W6_REG_BASE +
>0x3DC)
>+#define W6_CMD_ENC_SET_FB_MV_COL8                     (W6_REG_BASE +
>0x3E0)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED8                (W6_REG_BASE +
>0x3E4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y9                      (W6_REG_BASE + 0x3E=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C9                      (W6_REG_BASE + 0x3E=
C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET9               (W6_REG_BASE +
>0x3F0)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET9               (W6_REG_BASE +
>0x3F4)
>+#define W6_CMD_ENC_SET_FB_MV_COL9                     (W6_REG_BASE +
>0x3F8)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED9                (W6_REG_BASE +
>0x3FC)
>+#define W6_CMD_ENC_SET_FB_FBC_Y10                     (W6_REG_BASE + 0x40=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C10                     (W6_REG_BASE + 0x40=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET10              (W6_REG_BASE +
>0x408)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET10              (W6_REG_BASE +
>0x40C)
>+#define W6_CMD_ENC_SET_FB_MV_COL10                    (W6_REG_BASE +
>0x410)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED10               (W6_REG_BASE +
>0x414)
>+#define W6_CMD_ENC_SET_FB_FBC_Y11                     (W6_REG_BASE + 0x41=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C11                     (W6_REG_BASE +
>0x41C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET11              (W6_REG_BASE +
>0x420)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET11              (W6_REG_BASE +
>0x424)
>+#define W6_CMD_ENC_SET_FB_MV_COL11                    (W6_REG_BASE +
>0x428)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED11               (W6_REG_BASE +
>0x42C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y12                     (W6_REG_BASE + 0x43=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C12                     (W6_REG_BASE + 0x43=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET12              (W6_REG_BASE +
>0x438)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET12              (W6_REG_BASE +
>0x43C)
>+#define W6_CMD_ENC_SET_FB_MV_COL12                    (W6_REG_BASE +
>0x440)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED12               (W6_REG_BASE +
>0x444)
>+#define W6_CMD_ENC_SET_FB_FBC_Y13                     (W6_REG_BASE + 0x44=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C13                     (W6_REG_BASE +
>0x44C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET13              (W6_REG_BASE +
>0x450)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET13              (W6_REG_BASE +
>0x454)
>+#define W6_CMD_ENC_SET_FB_MV_COL13                    (W6_REG_BASE +
>0x458)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED13               (W6_REG_BASE +
>0x45C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y14                     (W6_REG_BASE + 0x46=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_C14                     (W6_REG_BASE + 0x46=
4)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET14              (W6_REG_BASE +
>0x468)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET14              (W6_REG_BASE +
>0x46C)
>+#define W6_CMD_ENC_SET_FB_MV_COL14                    (W6_REG_BASE +
>0x470)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED14               (W6_REG_BASE +
>0x474)
>+#define W6_CMD_ENC_SET_FB_FBC_Y15                     (W6_REG_BASE + 0x47=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_C15                     (W6_REG_BASE +
>0x47C)
>+#define W6_CMD_ENC_SET_FB_FBC_Y_OFFSET15              (W6_REG_BASE +
>0x480)
>+#define W6_CMD_ENC_SET_FB_FBC_C_OFFSET15              (W6_REG_BASE +
>0x484)
>+#define W6_CMD_ENC_SET_FB_MV_COL15                    (W6_REG_BASE +
>0x488)
>+#define W6_CMD_ENC_SET_FB_SUB_SAMPLED15               (W6_REG_BASE +
>0x48C)
>+#define W6_CMD_ENC_SET_FB_DEFAULT_CDF                 (W6_REG_BASE +
>0x494)
>+#define W6_CMD_ENC_SET_FB_FBC_CR0                     (W6_REG_BASE + 0x4F=
0)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET0              (W6_REG_BASE +
>0x4F4)
>+#define W6_CMD_ENC_SET_FB_FBC_CR1                     (W6_REG_BASE + 0x4F=
8)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET1              (W6_REG_BASE +
>0x4FC)
>+#define W6_CMD_ENC_SET_FB_FBC_CR2                     (W6_REG_BASE +
>0x500)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET2              (W6_REG_BASE +
>0x504)
>+#define W6_CMD_ENC_SET_FB_FBC_CR3                     (W6_REG_BASE +
>0x508)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET3              (W6_REG_BASE +
>0x50C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR4                     (W6_REG_BASE +
>0x510)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET4              (W6_REG_BASE +
>0x514)
>+#define W6_CMD_ENC_SET_FB_FBC_CR5                     (W6_REG_BASE +
>0x518)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET5              (W6_REG_BASE +
>0x51C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR6                     (W6_REG_BASE +
>0x520)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET6              (W6_REG_BASE +
>0x524)
>+#define W6_CMD_ENC_SET_FB_FBC_CR7                     (W6_REG_BASE +
>0x528)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET7              (W6_REG_BASE +
>0x52C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR8                     (W6_REG_BASE +
>0x530)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET8              (W6_REG_BASE +
>0x534)
>+#define W6_CMD_ENC_SET_FB_FBC_CR9                     (W6_REG_BASE +
>0x538)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET9              (W6_REG_BASE +
>0x53C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR10                    (W6_REG_BASE +
>0x540)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET10             (W6_REG_BASE +
>0x544)
>+#define W6_CMD_ENC_SET_FB_FBC_CR11                    (W6_REG_BASE +
>0x548)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET11             (W6_REG_BASE +
>0x54C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR12                    (W6_REG_BASE +
>0x550)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET12             (W6_REG_BASE +
>0x554)
>+#define W6_CMD_ENC_SET_FB_FBC_CR13                    (W6_REG_BASE +
>0x558)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET13             (W6_REG_BASE +
>0x55C)
>+#define W6_CMD_ENC_SET_FB_FBC_CR14                    (W6_REG_BASE +
>0x560)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET14             (W6_REG_BASE +
>0x564)
>+#define W6_CMD_ENC_SET_FB_FBC_CR15                    (W6_REG_BASE +
>0x568)
>+#define W6_CMD_ENC_SET_FB_FBC_CR_OFFSET15             (W6_REG_BASE +
>0x56C)
>+
>+/* ENCODER - ENC_PIC */
>+#define W6_CMD_ENC_PIC_BS_START                       (W6_REG_BASE + 0x30=
0)
>+#define W6_CMD_ENC_PIC_BS_SIZE                        (W6_REG_BASE + 0x30=
4)
>+#define W6_CMD_ENC_PIC_BS_OPTION                      (W6_REG_BASE + 0x30=
8)
>+#define W6_CMD_ENC_PIC_USE_SEC_AXI                    (W6_REG_BASE + 0x30=
C)
>+#define W6_CMD_ENC_PIC_REPORT_PARAM                   (W6_REG_BASE +
>0x310)
>+#define W6_CMD_ENC_PIC_MV_HISTO_CLASS0                (W6_REG_BASE +
>0x318)
>+#define W6_CMD_ENC_PIC_MV_HISTO_CLASS1                (W6_REG_BASE +
>0x31C)
>+#define W6_CMD_ENC_PIC_CUSTOM_MAP_OPTION_PARAM
>(W6_REG_BASE + 0x320)
>+#define W6_CMD_ENC_PIC_CUSTOM_MAP_OPTION_ADDR
>(W6_REG_BASE + 0x324)
>+#define W6_CMD_ENC_PIC_SRC_PIC_IDX                    (W6_REG_BASE + 0x32=
C)
>+#define W6_CMD_ENC_PIC_SRC_ADDR_Y                     (W6_REG_BASE +
>0x330)
>+#define W6_CMD_ENC_PIC_SRC_ADDR_U                     (W6_REG_BASE +
>0x334)
>+#define W6_CMD_ENC_PIC_SRC_ADDR_V                     (W6_REG_BASE +
>0x338)
>+#define W6_CMD_ENC_PIC_SRC_STRIDE                     (W6_REG_BASE + 0x33=
C)
>+#define W6_CMD_ENC_PIC_SRC_FORMAT                     (W6_REG_BASE +
>0x340)
>+#define W6_CMD_ENC_PIC_SRC_AXI_SEL                    (W6_REG_BASE + 0x34=
8)
>+#define W6_CMD_ENC_PIC_CODE_OPTION                    (W6_REG_BASE +
>0x34C)
>+#define W6_CMD_ENC_PIC_PIC_PARAM                      (W6_REG_BASE + 0x35=
0)
>+#define W6_CMD_ENC_PIC_LONGTERM_PIC                   (W6_REG_BASE +
>0x354)
>+#define W6_CMD_ENC_PIC_PREFIX_SEI_NAL_ADDR            (W6_REG_BASE +
>0x358)
>+#define W6_CMD_ENC_PIC_PREFIX_SEI_INFO                (W6_REG_BASE +
>0x35C)
>+#define W6_CMD_ENC_PIC_SUFFIX_SEI_NAL_ADDR            (W6_REG_BASE +
>0x360)
>+#define W6_CMD_ENC_PIC_SUFFIX_SEI_INFO                (W6_REG_BASE +
>0x364)
>+#define W6_CMD_ENC_PIC_CSC_COEFF_0                    (W6_REG_BASE +
>0x374)
>+#define W6_CMD_ENC_PIC_CSC_COEFF_1                    (W6_REG_BASE +
>0x378)
>+#define W6_CMD_ENC_PIC_CSC_COEFF_2                    (W6_REG_BASE +
>0x37C)
>+#define W6_CMD_ENC_PIC_CSC_COEFF_3                    (W6_REG_BASE +
>0x380)
>+#define W6_CMD_ENC_PIC_TIMESTAMP                      (W6_REG_BASE + 0x3F=
8)
>+
>+/* ENCODER - QUERY : GET_RESULT */
>+#define W6_RET_ENC_RD_PTR                             (W6_REG_BASE + 0x30=
0)
>+#define W6_RET_ENC_WR_PTR                             (W6_REG_BASE + 0x30=
4)
>+#define W6_RET_ENC_NUM_REQUIRED_FBC_FB                (W6_REG_BASE +
>0x308)
>+#define W6_RET_ENC_MIN_SRC_BUF_NUM                    (W6_REG_BASE +
>0x30C)
>+#define W6_RET_ENC_PIC_TYPE                           (W6_REG_BASE + 0x31=
0)
>+#define W6_RET_ENC_PIC_POC                            (W6_REG_BASE + 0x31=
4)
>+#define W6_RET_ENC_PIC_IDX                            (W6_REG_BASE + 0x31=
8)
>+#define W6_RET_ENC_PIC_SLICE_NUM                      (W6_REG_BASE + 0x31=
C)
>+#define W6_RET_ENC_PIC_SKIP                           (W6_REG_BASE + 0x32=
0)
>+#define W6_RET_ENC_PIC_NUM_INTRA                      (W6_REG_BASE + 0x32=
4)
>+#define W6_RET_ENC_PIC_NUM_MERGE                      (W6_REG_BASE +
>0x328)
>+#define W6_RET_ENC_PIC_NON_REF_PIC_FLAG               (W6_REG_BASE +
>0x32C)
>+#define W6_RET_ENC_PIC_NUM_SKIP                       (W6_REG_BASE + 0x33=
0)
>+#define W6_RET_ENC_PIC_AVG_CTU_QP                     (W6_REG_BASE + 0x33=
4)
>+#define W6_RET_ENC_PIC_BYTE                           (W6_REG_BASE + 0x33=
8)
>+#define W6_RET_ENC_GOP_PIC_IDX                        (W6_REG_BASE + 0x33=
C)
>+#define W6_RET_ENC_USED_SRC_IDX                       (W6_REG_BASE + 0x34=
0)
>+#define W6_RET_ENC_PIC_NUM                            (W6_REG_BASE + 0x34=
4)
>+#define W6_RET_ENC_VCL_NUT                            (W6_REG_BASE + 0x34=
8)
>+#define W6_RET_ENC_PIC_DIST_LOW                       (W6_REG_BASE + 0x35=
0)
>+#define W6_RET_ENC_PIC_DIST_HIGH                      (W6_REG_BASE + 0x35=
4)
>+#define W6_RET_ENC_PIC_MAX_LATENCY_PICTURES           (W6_REG_BASE +
>0x358)
>+#define W6_RET_ENC_HISTO_CNT_0                        (W6_REG_BASE + 0x36=
0)
>+#define W6_RET_ENC_HISTO_CNT_1                        (W6_REG_BASE + 0x36=
4)
>+#define W6_RET_ENC_HISTO_CNT_2                        (W6_REG_BASE + 0x36=
8)
>+#define W6_RET_ENC_HISTO_CNT_3                        (W6_REG_BASE + 0x36=
C)
>+#define W6_RET_ENC_HISTO_CNT_4                        (W6_REG_BASE + 0x37=
0)
>+#define W6_RET_ENC_WARN_INFO                          (W6_REG_BASE + 0x3A=
C)
>+#define W6_RET_ENC_ERR_INFO                           (W6_REG_BASE + 0x3B=
0)
>+#define W6_RET_ENC_ENCODING_SUCCESS                   (W6_REG_BASE +
>0x3B4)
>+#define W6_RET_ENC_SUM_ME0_X_DIR_LOWER                (W6_REG_BASE +
>0x3B8)
>+#define W6_RET_ENC_SUM_ME0_X_DIR_HIGHER               (W6_REG_BASE +
>0x3BC)
>+#define W6_RET_ENC_SUM_ME0_Y_DIR_LOWER                (W6_REG_BASE +
>0x3C0)
>+#define W6_RET_ENC_SUM_ME0_Y_DIR_HIGHER               (W6_REG_BASE +
>0x3C4)
>+#define W6_RET_ENC_SUM_ME1_X_DIR_LOWER                (W6_REG_BASE +
>0x3C8)
>+#define W6_RET_ENC_SUM_ME1_X_DIR_HIGHER               (W6_REG_BASE +
>0x3CC)
>+#define W6_RET_ENC_SUM_ME1_Y_DIR_LOWER                (W6_REG_BASE +
>0x3D0)
>+#define W6_RET_ENC_SUM_ME1_Y_DIR_HIGHER               (W6_REG_BASE +
>0x3D4)
>+#define W6_RET_ENC_SRC_Y_ADDR                         (W6_REG_BASE + 0x3E=
8)
>+#define W6_RET_ENC_CUSTOM_MAP_OPTION_ADDR             (W6_REG_BASE
>+ 0x3EC)
>+#define W6_RET_ENC_PREFIX_SEI_NAL_ADDR                (W6_REG_BASE +
>0x3F0)
>+#define W6_RET_ENC_SUFFIX_SEI_NAL_ADDR                (W6_REG_BASE +
>0x3F4)
>+#define W6_RET_ENC_TIMESTAMP                          (W6_REG_BASE + 0x40=
0)
>+#define W6_RET_ENC_NUM_REQUIRED_COL_BUF               (W6_REG_BASE +
>0x404)
>+
>+#endif /* __WAVE6_REGDEFINE_H__ */
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vdi.c
>b/drivers/media/platform/chips-media/wave6/wave6-vdi.c
>new file mode 100644
>index 000000000000..c255780fef0a
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vdi.c
>@@ -0,0 +1,52 @@
>+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>+/*
>+ * Wave6 series multi-standard codec IP - low level access interface
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#include <linux/delay.h>
>+#include <linux/bug.h>
>+#include "wave6-vdi.h"
>+#include "wave6-vpu.h"
>+#include "wave6-regdefine.h"
>+#include "wave6-trace.h"
>+
>+#define VDI_SYSTEM_ENDIAN VDI_LITTLE_ENDIAN
>+#define VDI_128BIT_BUS_SYSTEM_ENDIAN VDI_128BIT_LITTLE_ENDIAN
>+
>+void wave6_vdi_writel(struct vpu_device *vpu_dev, unsigned int addr,
>unsigned int data)
>+{
>+       writel(data, vpu_dev->reg_base + addr);
>+       trace_writel(vpu_dev->dev, addr, data);
>+}
>+
>+unsigned int wave6_vdi_readl(struct vpu_device *vpu_dev, u32 addr)
>+{
>+       unsigned int data;
>+
>+       data =3D readl(vpu_dev->reg_base + addr);
>+       trace_readl(vpu_dev->dev, addr, data);
>+
>+       return data;
>+}
>+
>+unsigned int wave6_vdi_convert_endian(unsigned int endian)
>+{
>+       switch (endian) {
>+       case VDI_LITTLE_ENDIAN:
>+               endian =3D 0x00;
>+               break;
>+       case VDI_BIG_ENDIAN:
>+               endian =3D 0x0f;
>+               break;
>+       case VDI_32BIT_LITTLE_ENDIAN:
>+               endian =3D 0x04;
>+               break;
>+       case VDI_32BIT_BIG_ENDIAN:
>+               endian =3D 0x03;
>+               break;
>+       }
>+
>+       return (endian & 0x0f);
>+}
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vdi.h
>b/drivers/media/platform/chips-media/wave6/wave6-vdi.h
>new file mode 100644
>index 000000000000..bb43b24547ed
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vdi.h
>@@ -0,0 +1,59 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - low level access interface
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_VDI_H__
>+#define __WAVE6_VDI_H__
>+
>+#include <linux/string.h>
>+#include <linux/slab.h>
>+#include <linux/device.h>
>+#include "wave6-vpuconfig.h"
>+
>+#define vpu_write_reg(VPU_DEV, ADDR, DATA) wave6_vdi_writel(VPU_DEV,
>ADDR, DATA)
>+#define vpu_read_reg(VPU_DEV, ADDR) wave6_vdi_readl(VPU_DEV, ADDR)
>+
>+struct vpu_buf {
>+       size_t size;
>+       dma_addr_t daddr;
>+       void *vaddr;
>+       struct device *dev;
>+};
>+
>+struct vpu_dma_buf {
>+       size_t size;
>+       dma_addr_t dma_addr;
>+       void *vaddr;
>+       phys_addr_t phys_addr;
>+};
>+
>+enum endian_mode {
>+       VDI_LITTLE_ENDIAN =3D 0,
>+       VDI_BIG_ENDIAN,
>+       VDI_32BIT_LITTLE_ENDIAN,
>+       VDI_32BIT_BIG_ENDIAN,
>+       VDI_128BIT_LITTLE_ENDIAN =3D 16,
>+       VDI_128BIT_LE_BYTE_SWAP,
>+       VDI_128BIT_LE_WORD_SWAP,
>+       VDI_128BIT_LE_WORD_BYTE_SWAP,
>+       VDI_128BIT_LE_DWORD_SWAP,
>+       VDI_128BIT_LE_DWORD_BYTE_SWAP,
>+       VDI_128BIT_LE_DWORD_WORD_SWAP,
>+       VDI_128BIT_LE_DWORD_WORD_BYTE_SWAP,
>+       VDI_128BIT_BE_DWORD_WORD_BYTE_SWAP,
>+       VDI_128BIT_BE_DWORD_WORD_SWAP,
>+       VDI_128BIT_BE_DWORD_BYTE_SWAP,
>+       VDI_128BIT_BE_DWORD_SWAP,
>+       VDI_128BIT_BE_WORD_BYTE_SWAP,
>+       VDI_128BIT_BE_WORD_SWAP,
>+       VDI_128BIT_BE_BYTE_SWAP,
>+       VDI_128BIT_BIG_ENDIAN =3D 31,
>+       VDI_ENDIAN_MAX
>+};
>+
>+#define VDI_128BIT_ENDIAN_MASK 0xf
>+
>+#endif /* __WAVE6_VDI_H__ */
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vpuapi.c
>b/drivers/media/platform/chips-media/wave6/wave6-vpuapi.c
>new file mode 100644
>index 000000000000..a4f278918b15
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vpuapi.c
>@@ -0,0 +1,1001 @@
>+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>+/*
>+ * Wave6 series multi-standard codec IP - wave6 helper interface
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#include <linux/bug.h>
>+#include "wave6-vpuapi.h"
>+#include "wave6-regdefine.h"
>+#include "wave6-hw.h"
>+#include "wave6-vpu-dbg.h"
>+#include "wave6-trace.h"
>+
>+static int wave6_check_dec_open_param(struct vpu_instance *inst, struct
>dec_open_param *param)
>+{
>+       struct vpu_attr *attr =3D &inst->dev->attr;
>+
>+       if (param->bs_mode !=3D attr->support_bitstream_mode)
>+               return -EINVAL;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_open(struct vpu_instance *inst, struct dec_open_param
>*pop)
>+{
>+       struct dec_info *p_dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D wave6_check_dec_open_param(inst, pop);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       if (!wave6_vpu_is_init(vpu_dev)) {
>+               mutex_unlock(&vpu_dev->hw_lock);
>+               return -ENODEV;
>+       }
>+
>+       inst->codec_info =3D kzalloc(sizeof(*inst->codec_info), GFP_KERNEL=
);
>+       if (!inst->codec_info) {
>+               mutex_unlock(&vpu_dev->hw_lock);
>+               return -ENOMEM;
>+       }
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+       memcpy(&p_dec_info->open_param, pop, sizeof(struct
>dec_open_param));
>+
>+       ret =3D wave6_vpu_build_up_dec_param(inst, pop);
>+       if (ret)
>+               goto free_codec_info;
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return 0;
>+
>+free_codec_info:
>+       kfree(inst->codec_info);
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_close(struct vpu_instance *inst, u32 *fail_res)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       *fail_res =3D 0;
>+       if (!inst->codec_info)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_dec_fini_seq(inst, fail_res);
>+       if (ret) {
>+               dev_warn(inst->dev->dev, "dec seq end timed out\n");
>+
>+               if (*fail_res =3D=3D WAVE6_SYSERR_VPU_STILL_RUNNING) {
>+                       mutex_unlock(&vpu_dev->hw_lock);
>+                       return ret;
>+               }
>+       }
>+
>+       dev_dbg(inst->dev->dev, "dec seq end complete\n");
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       kfree(inst->codec_info);
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_issue_seq_init(struct vpu_instance *inst)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_dec_init_seq(inst);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_complete_seq_init(struct vpu_instance *inst, struct
>dec_initial_info *info)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_dec_get_seq_info(inst, info);
>+       if (!ret)
>+               p_dec_info->initial_info_obtained =3D true;
>+
>+       info->rd_ptr =3D wave6_vpu_dec_get_rd_ptr(inst);
>+       info->wr_ptr =3D p_dec_info->stream_wr_ptr;
>+
>+       p_dec_info->initial_info =3D *info;
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_get_aux_buffer_size(struct vpu_instance *inst,
>+                                     struct dec_aux_buffer_size_info info=
,
>+                                     uint32_t *size)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       int width =3D info.width;
>+       int height =3D info.height;
>+       int buf_size, twice;
>+
>+       if (info.type =3D=3D AUX_BUF_FBC_Y_TBL) {
>+               switch (inst->std) {
>+               case W_HEVC_DEC:
>+                       buf_size =3D WAVE6_FBC_LUMA_TABLE_SIZE(width, heig=
ht);
>+                       break;
>+               case W_AVC_DEC:
>+                       buf_size =3D WAVE6_FBC_LUMA_TABLE_SIZE(width, heig=
ht);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+               buf_size =3D ALIGN(buf_size, 16);
>+       } else if (info.type =3D=3D AUX_BUF_FBC_C_TBL) {
>+               if (p_dec_info->initial_info.chroma_format_idc =3D=3D 2)
>+                       twice =3D 2;
>+               else if (p_dec_info->initial_info.chroma_format_idc =3D=3D=
 3)
>+                       twice =3D 4;
>+               else
>+                       twice =3D 1;
>+
>+               switch (inst->std) {
>+               case W_HEVC_DEC:
>+                       buf_size =3D WAVE6_FBC_CHROMA_TABLE_SIZE(width, he=
ight);
>+                       break;
>+               case W_AVC_DEC:
>+                       buf_size =3D WAVE6_FBC_CHROMA_TABLE_SIZE(width, he=
ight);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+               buf_size =3D buf_size * twice;
>+               buf_size =3D ALIGN(buf_size, 16);
>+       } else if (info.type =3D=3D AUX_BUF_MV_COL) {
>+               switch (inst->std) {
>+               case W_HEVC_DEC:
>+                       buf_size =3D WAVE6_DEC_HEVC_MVCOL_BUF_SIZE(width, =
height);
>+                       break;
>+               case W_AVC_DEC:
>+                       buf_size =3D WAVE6_DEC_AVC_MVCOL_BUF_SIZE(width, h=
eight);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+               buf_size =3D ALIGN(buf_size, 16);
>+       } else {
>+               return -EINVAL;
>+       }
>+
>+       *size =3D buf_size;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_register_aux_buffer(struct vpu_instance *inst,
>+                                     struct aux_buffer_info info)
>+{
>+       struct dec_info *p_dec_info;
>+       struct aux_buffer *aux_bufs =3D info.buf_array;
>+       struct dec_aux_buffer_size_info size_info;
>+       unsigned int expected_size;
>+       unsigned int i;
>+       int ret;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       size_info.width =3D p_dec_info->initial_info.pic_width;
>+       size_info.height =3D p_dec_info->initial_info.pic_height;
>+       size_info.type =3D info.type;
>+
>+       ret =3D wave6_vpu_dec_get_aux_buffer_size(inst, size_info,
>&expected_size);
>+       if (ret)
>+               return ret;
>+
>+       switch (info.type) {
>+       case AUX_BUF_FBC_Y_TBL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_dec_info->vb_fbc_y_tbl[aux_bufs[i].index].daddr =
=3D
>aux_bufs[i].addr;
>+                       p_dec_info->vb_fbc_y_tbl[aux_bufs[i].index].size =
=3D
>aux_bufs[i].size;
>+               }
>+               break;
>+       case AUX_BUF_FBC_C_TBL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_dec_info->vb_fbc_c_tbl[aux_bufs[i].index].daddr =
=3D
>aux_bufs[i].addr;
>+                       p_dec_info->vb_fbc_c_tbl[aux_bufs[i].index].size =
=3D
>aux_bufs[i].size;
>+               }
>+               break;
>+       case AUX_BUF_MV_COL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_dec_info->vb_mv[aux_bufs[i].index].daddr =3D aux=
_bufs[i].addr;
>+                       p_dec_info->vb_mv[aux_bufs[i].index].size =3D aux_=
bufs[i].size;
>+               }
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_register_frame_buffer_ex(struct vpu_instance *inst,
>+                                          int num_of_dec_fbs, int stride,
>+                                          int height, int map_type)
>+{
>+       struct dec_info *p_dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       struct frame_buffer *fb;
>+
>+       if (num_of_dec_fbs > WAVE6_MAX_FBS)
>+               return -EINVAL;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+       p_dec_info->stride =3D stride;
>+
>+       if (!p_dec_info->initial_info_obtained)
>+               return -EINVAL;
>+
>+       if (stride < p_dec_info->initial_info.pic_width || (stride % 8) ||
>+           height < p_dec_info->initial_info.pic_height)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       fb =3D inst->frame_buf;
>+       ret =3D wave6_vpu_dec_register_frame_buffer(inst, &fb[0],
>COMPRESSED_FRAME_MAP,
>+                                                 num_of_dec_fbs);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_register_display_buffer_ex(struct vpu_instance *inst,
>struct frame_buffer fb)
>+{
>+       struct dec_info *p_dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       if (!p_dec_info->initial_info_obtained)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_dec_register_display_buffer(inst, fb);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_get_bitstream_buffer(struct vpu_instance *inst,
>dma_addr_t *p_rd_ptr,
>+                                      dma_addr_t *p_wr_ptr)
>+{
>+       struct dec_info *p_dec_info;
>+       dma_addr_t rd_ptr;
>+       dma_addr_t wr_ptr;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       int ret;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       rd_ptr =3D wave6_vpu_dec_get_rd_ptr(inst);
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       wr_ptr =3D p_dec_info->stream_wr_ptr;
>+
>+       if (p_rd_ptr)
>+               *p_rd_ptr =3D rd_ptr;
>+       if (p_wr_ptr)
>+               *p_wr_ptr =3D wr_ptr;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_update_bitstream_buffer(struct vpu_instance *inst, int
>size)
>+{
>+       struct dec_info *p_dec_info;
>+       dma_addr_t wr_ptr;
>+       dma_addr_t rd_ptr;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (!inst->codec_info)
>+               return -EINVAL;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+       wr_ptr =3D p_dec_info->stream_wr_ptr;
>+       rd_ptr =3D p_dec_info->stream_rd_ptr;
>+
>+       if (size > 0) {
>+               if (wr_ptr < rd_ptr && rd_ptr <=3D wr_ptr + size)
>+                       return -EINVAL;
>+
>+               wr_ptr +=3D size;
>+
>+               p_dec_info->stream_wr_ptr =3D wr_ptr;
>+               p_dec_info->stream_rd_ptr =3D rd_ptr;
>+       }
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       wave6_vpu_dec_set_bitstream_end(inst, (size =3D=3D 0));
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_start_one_frame(struct vpu_instance *inst, struct
>dec_param *param, u32 *res_fail)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (!p_dec_info->stride)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_decode(inst, param, res_fail);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_set_rd_ptr(struct vpu_instance *inst, dma_addr_t addr,
>bool update_wr_ptr)
>+{
>+       struct dec_info *p_dec_info =3D &inst->codec_info->dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       p_dec_info->stream_rd_ptr =3D addr;
>+       if (update_wr_ptr)
>+               p_dec_info->stream_wr_ptr =3D addr;
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_get_output_info(struct vpu_instance *inst, struct
>dec_output_info *info)
>+{
>+       struct dec_info *p_dec_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (!info)
>+               return -EINVAL;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       memset(info, 0, sizeof(*info));
>+
>+       ret =3D wave6_vpu_dec_get_result(inst, info);
>+       if (ret) {
>+               info->rd_ptr =3D p_dec_info->stream_rd_ptr;
>+               info->wr_ptr =3D p_dec_info->stream_wr_ptr;
>+               goto err_out;
>+       }
>+
>+err_out:
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_dec_give_command(struct vpu_instance *inst, enum
>codec_command cmd, void *param)
>+{
>+       struct dec_info *p_dec_info;
>+
>+       if (!inst || !inst->codec_info)
>+               return -EINVAL;
>+
>+       p_dec_info =3D &inst->codec_info->dec_info;
>+
>+       switch (cmd) {
>+       case ENABLE_DEC_THUMBNAIL_MODE:
>+               p_dec_info->thumbnail_mode =3D 1;
>+               break;
>+       case DEC_RESET_FRAMEBUF_INFO: {
>+               int i;
>+
>+               for (i =3D 0; i < WAVE6_MAX_FBS; i++) {
>+                       wave6_free_dma(&inst->frame_vbuf[i]);
>+                       memset(&inst->frame_buf[i], 0, sizeof(struct frame=
_buffer));
>+                       memset(&p_dec_info->disp_buf[i], 0, sizeof(struct
>frame_buffer));
>+
>+                       wave6_free_dma(&inst->aux_vbuf[AUX_BUF_MV_COL][i])=
;
>+                       memset(&p_dec_info->vb_mv[i], 0, sizeof(struct vpu=
_buf));
>+
>+                       wave6_free_dma(&inst->aux_vbuf[AUX_BUF_FBC_Y_TBL][=
i]);
>+                       memset(&p_dec_info->vb_fbc_y_tbl[i], 0, sizeof(str=
uct
>vpu_buf));
>+
>+                       wave6_free_dma(&inst->aux_vbuf[AUX_BUF_FBC_C_TBL][=
i]);
>+                       memset(&p_dec_info->vb_fbc_c_tbl[i], 0, sizeof(str=
uct
>vpu_buf));
>+               }
>+               break;
>+       }
>+       case DEC_GET_SEQ_INFO: {
>+               struct dec_initial_info *seq_info =3D param;
>+
>+               *seq_info =3D p_dec_info->initial_info;
>+               break;
>+       }
>+
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_dec_flush_instance(struct vpu_instance *inst)
>+{
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+       int ret;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_dec_flush(inst);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_open(struct vpu_instance *inst, struct enc_open_param
>*pop)
>+{
>+       struct enc_info *p_enc_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D wave6_vpu_enc_check_open_param(inst, pop);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       if (!wave6_vpu_is_init(vpu_dev)) {
>+               mutex_unlock(&vpu_dev->hw_lock);
>+               return -ENODEV;
>+       }
>+
>+       inst->codec_info =3D kzalloc(sizeof(*inst->codec_info), GFP_KERNEL=
);
>+       if (!inst->codec_info) {
>+               mutex_unlock(&vpu_dev->hw_lock);
>+               return -ENOMEM;
>+       }
>+
>+       p_enc_info =3D &inst->codec_info->enc_info;
>+       p_enc_info->open_param =3D *pop;
>+
>+       ret =3D wave6_vpu_build_up_enc_param(vpu_dev->dev, inst, pop);
>+       if (ret)
>+               goto free_codec_info;
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return 0;
>+
>+free_codec_info:
>+       kfree(inst->codec_info);
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_close(struct vpu_instance *inst, u32 *fail_res)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       *fail_res =3D 0;
>+       if (!inst->codec_info)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_enc_fini_seq(inst, fail_res);
>+       if (ret) {
>+               dev_warn(inst->dev->dev, "enc seq end timed out\n");
>+
>+               if (*fail_res =3D=3D WAVE6_SYSERR_VPU_STILL_RUNNING) {
>+                       mutex_unlock(&vpu_dev->hw_lock);
>+                       return ret;
>+               }
>+       }
>+
>+       dev_dbg(inst->dev->dev, "enc seq end timed out\n");
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       kfree(inst->codec_info);
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_get_aux_buffer_size(struct vpu_instance *inst,
>+                                     struct enc_aux_buffer_size_info info=
,
>+                                     uint32_t *size)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int width, height, buf_size, twice;
>+
>+       if (inst->std =3D=3D W_AVC_ENC) {
>+               width =3D ALIGN(info.width, 16);
>+               height =3D ALIGN(info.height, 16);
>+               if (info.rotation_angle =3D=3D 90 || info.rotation_angle =
=3D=3D 270) {
>+                       width =3D ALIGN(info.height, 16);
>+                       height =3D ALIGN(info.width, 16);
>+               }
>+       } else {
>+               width =3D ALIGN(info.width, 8);
>+               height =3D ALIGN(info.height, 8);
>+               if ((info.rotation_angle || info.mirror_direction) &&
>+                   !(info.rotation_angle =3D=3D 180 && info.mirror_direct=
ion =3D=3D
>MIRDIR_HOR_VER)) {
>+                       width =3D ALIGN(info.width, 32);
>+                       height =3D ALIGN(info.height, 32);
>+               }
>+               if (info.rotation_angle =3D=3D 90 || info.rotation_angle =
=3D=3D 270) {
>+                       width =3D ALIGN(info.height, 32);
>+                       height =3D ALIGN(info.width, 32);
>+               }
>+       }
>+
>+       if (info.type =3D=3D AUX_BUF_FBC_Y_TBL) {
>+               switch (inst->std) {
>+               case W_HEVC_ENC:
>+                       buf_size =3D WAVE6_FBC_LUMA_TABLE_SIZE(width, heig=
ht);
>+                       break;
>+               case W_AVC_ENC:
>+                       buf_size =3D WAVE6_FBC_LUMA_TABLE_SIZE(width, heig=
ht);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+       } else if (info.type =3D=3D AUX_BUF_FBC_C_TBL) {
>+               switch (p_enc_info->open_param.output_format) {
>+               case FORMAT_422:
>+               case FORMAT_422_P10_16BIT_MSB:
>+               case FORMAT_422_P10_16BIT_LSB:
>+               case FORMAT_422_P10_32BIT_MSB:
>+               case FORMAT_422_P10_32BIT_LSB:
>+                       twice =3D 2;
>+                       break;
>+               case FORMAT_444:
>+               case FORMAT_444_P10_16BIT_MSB:
>+               case FORMAT_444_P10_16BIT_LSB:
>+               case FORMAT_444_P10_32BIT_MSB:
>+               case FORMAT_444_P10_32BIT_LSB:
>+                       twice =3D 4;
>+                       break;
>+               default:
>+                       twice =3D 1;
>+                       break;
>+               }
>+               switch (inst->std) {
>+               case W_HEVC_ENC:
>+                       buf_size =3D WAVE6_FBC_CHROMA_TABLE_SIZE(width, he=
ight);
>+                       break;
>+               case W_AVC_ENC:
>+                       buf_size =3D WAVE6_FBC_CHROMA_TABLE_SIZE(width, he=
ight);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+               buf_size =3D buf_size * twice;
>+       } else if (info.type =3D=3D AUX_BUF_MV_COL) {
>+               switch (inst->std) {
>+               case W_HEVC_ENC:
>+                       buf_size =3D WAVE6_ENC_HEVC_MVCOL_BUF_SIZE(width, =
height);
>+                       break;
>+               case W_AVC_ENC:
>+                       buf_size =3D WAVE6_ENC_AVC_MVCOL_BUF_SIZE(width, h=
eight);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+       } else if (info.type =3D=3D AUX_BUF_SUB_SAMPLE) {
>+               switch (inst->std) {
>+               case W_HEVC_ENC:
>+               case W_AVC_ENC:
>+                       buf_size =3D WAVE6_ENC_SUBSAMPLED_SIZE(width, heig=
ht);
>+                       break;
>+               default:
>+                       return -EINVAL;
>+               }
>+       } else {
>+               return -EINVAL;
>+       }
>+
>+       *size =3D buf_size;
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_register_aux_buffer(struct vpu_instance *inst,
>+                                     struct aux_buffer_info info)
>+{
>+       struct enc_info *p_enc_info;
>+       struct aux_buffer *aux_bufs =3D info.buf_array;
>+       struct enc_aux_buffer_size_info size_info;
>+       unsigned int expected_size;
>+       unsigned int i;
>+       int ret;
>+
>+       p_enc_info =3D &inst->codec_info->enc_info;
>+
>+       size_info.width =3D p_enc_info->width;
>+       size_info.height =3D p_enc_info->height;
>+       size_info.type =3D info.type;
>+       size_info.rotation_angle =3D p_enc_info->rotation_angle;
>+       size_info.mirror_direction =3D p_enc_info->mirror_direction;
>+
>+       ret =3D wave6_vpu_enc_get_aux_buffer_size(inst, size_info,
>&expected_size);
>+       if (ret)
>+               return ret;
>+
>+       switch (info.type) {
>+       case AUX_BUF_FBC_Y_TBL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_enc_info->vb_fbc_y_tbl[aux_bufs[i].index].daddr =
=3D
>aux_bufs[i].addr;
>+                       p_enc_info->vb_fbc_y_tbl[aux_bufs[i].index].size =
=3D
>aux_bufs[i].size;
>+               }
>+               break;
>+       case AUX_BUF_FBC_C_TBL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_enc_info->vb_fbc_c_tbl[aux_bufs[i].index].daddr =
=3D
>aux_bufs[i].addr;
>+                       p_enc_info->vb_fbc_c_tbl[aux_bufs[i].index].size =
=3D
>aux_bufs[i].size;
>+               }
>+               break;
>+       case AUX_BUF_MV_COL:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_enc_info->vb_mv[aux_bufs[i].index].daddr =3D aux=
_bufs[i].addr;
>+                       p_enc_info->vb_mv[aux_bufs[i].index].size =3D aux_=
bufs[i].size;
>+               }
>+               break;
>+       case AUX_BUF_SUB_SAMPLE:
>+               for (i =3D 0; i < info.num; i++) {
>+                       if (expected_size > aux_bufs[i].size)
>+                               return -EINVAL;
>+
>+                       p_enc_info->vb_sub_sam_buf[aux_bufs[i].index].dadd=
r =3D
>aux_bufs[i].addr;
>+                       p_enc_info->vb_sub_sam_buf[aux_bufs[i].index].size=
 =3D
>aux_bufs[i].size;
>+               }
>+               break;
>+       default:
>+               return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_register_frame_buffer_ex(struct vpu_instance *inst, int
>num, unsigned int stride,
>+                                          int height, enum tiled_map_type=
 map_type)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (p_enc_info->stride)
>+               return -EINVAL;
>+
>+       if (!p_enc_info->initial_info_obtained)
>+               return -EINVAL;
>+
>+       if (num < p_enc_info->initial_info.min_frame_buffer_count)
>+               return -EINVAL;
>+
>+       if (!stride || stride % 8)
>+               return -EINVAL;
>+
>+       if (height < 0)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       p_enc_info->num_frame_buffers =3D num;
>+       p_enc_info->stride =3D stride;
>+
>+       ret =3D wave6_vpu_enc_register_frame_buffer(inst, &inst->frame_buf=
[0]);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+static int wave6_check_enc_param(struct vpu_instance *inst, struct
>enc_param *param)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       bool is_rgb_format =3D false;
>+
>+       if (!param)
>+               return -EINVAL;
>+
>+       if (!param->skip_picture && !param->source_frame)
>+               return -EINVAL;
>+
>+       if (!p_enc_info->open_param.codec_param.bitrate && inst->std =3D=
=3D
>W_HEVC_ENC) {
>+               if (param->force_pic_qp_enable) {
>+                       if (param->force_pic_qp_i < 0 || param->force_pic_=
qp_i > 63)
>+                               return -EINVAL;
>+
>+                       if (param->force_pic_qp_p < 0 || param->force_pic_=
qp_p > 63)
>+                               return -EINVAL;
>+
>+                       if (param->force_pic_qp_b < 0 || param->force_pic_=
qp_b > 63)
>+                               return -EINVAL;
>+               }
>+               if ((param->pic_stream_buffer_addr % 16 || !param-
>>pic_stream_buffer_size))
>+                       return -EINVAL;
>+       }
>+
>+       if ((param->pic_stream_buffer_addr % 8 || !param-
>>pic_stream_buffer_size))
>+               return -EINVAL;
>+
>+       if (p_enc_info->open_param.src_format =3D=3D FORMAT_RGB_32BIT_PACK=
ED
>||
>+           p_enc_info->open_param.src_format =3D=3D
>FORMAT_RGB_P10_32BIT_PACKED ||
>+           p_enc_info->open_param.src_format =3D=3D FORMAT_RGB_24BIT_PACK=
ED)
>+               is_rgb_format =3D true;
>+
>+       if (is_rgb_format) {
>+               if (param->csc.coef_ry > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_gy > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_by > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_rcb > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_gcb > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_bcb > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_rcr > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_gcr > 1023)
>+                       return -EINVAL;
>+               if (param->csc.coef_bcr > 1023)
>+                       return -EINVAL;
>+               if (param->csc.offset_y > 1023)
>+                       return -EINVAL;
>+               if (param->csc.offset_cb > 1023)
>+                       return -EINVAL;
>+               if (param->csc.offset_cr > 1023)
>+                       return -EINVAL;
>+       }
>+
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_start_one_frame(struct vpu_instance *inst, struct
>enc_param *param, u32 *fail_res)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       *fail_res =3D 0;
>+
>+       if (!p_enc_info->stride)
>+               return -EINVAL;
>+
>+       ret =3D wave6_check_enc_param(inst, param);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_encode(inst, param, fail_res);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_get_output_info(struct vpu_instance *inst, struct
>enc_output_info *info)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (!info)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       memset(info, 0, sizeof(*info));
>+
>+       ret =3D wave6_vpu_enc_get_result(inst, info);
>+       if (ret)
>+               goto unlock;
>+
>+unlock:
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_give_command(struct vpu_instance *inst, enum
>codec_command cmd, void *param)
>+{
>+       struct enc_info *p_enc_info;
>+
>+       if (!inst || !inst->codec_info)
>+               return -EINVAL;
>+
>+       p_enc_info =3D &inst->codec_info->enc_info;
>+
>+       switch (cmd) {
>+       case ENABLE_ROTATION:
>+               p_enc_info->rotation_enable =3D true;
>+               break;
>+       case ENABLE_MIRRORING:
>+               p_enc_info->mirror_enable =3D true;
>+               break;
>+       case SET_MIRROR_DIRECTION: {
>+               enum mirror_direction mir_dir;
>+
>+               mir_dir =3D *(enum mirror_direction *)param;
>+               if (mir_dir !=3D MIRDIR_NONE && mir_dir !=3D MIRDIR_HOR &&
>+                   mir_dir !=3D MIRDIR_VER && mir_dir !=3D MIRDIR_HOR_VER=
)
>+                       return -EINVAL;
>+               p_enc_info->mirror_direction =3D mir_dir;
>+               break;
>+       }
>+       case SET_ROTATION_ANGLE: {
>+               int angle;
>+
>+               angle =3D *(int *)param;
>+               if (angle && angle !=3D 90 && angle !=3D 180 && angle !=3D=
 270)
>+                       return -EINVAL;
>+               if (p_enc_info->initial_info_obtained && (angle =3D=3D 90 =
|| angle =3D=3D
>270))
>+                       return -EINVAL;
>+               p_enc_info->rotation_angle =3D angle;
>+               break;
>+       }
>+       default:
>+               return -EINVAL;
>+       }
>+       return 0;
>+}
>+
>+int wave6_vpu_enc_issue_seq_init(struct vpu_instance *inst)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_enc_init_seq(inst);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_issue_seq_change(struct vpu_instance *inst, bool
>*changed)
>+{
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_enc_change_seq(inst, changed);
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return ret;
>+}
>+
>+int wave6_vpu_enc_complete_seq_init(struct vpu_instance *inst, struct
>enc_initial_info *info)
>+{
>+       struct enc_info *p_enc_info =3D &inst->codec_info->enc_info;
>+       int ret;
>+       struct vpu_device *vpu_dev =3D inst->dev;
>+
>+       if (!info)
>+               return -EINVAL;
>+
>+       ret =3D mutex_lock_interruptible(&vpu_dev->hw_lock);
>+       if (ret)
>+               return ret;
>+
>+       ret =3D wave6_vpu_enc_get_seq_info(inst, info);
>+       if (ret) {
>+               p_enc_info->initial_info_obtained =3D false;
>+               mutex_unlock(&vpu_dev->hw_lock);
>+               return ret;
>+       }
>+
>+       if (!p_enc_info->initial_info_obtained) {
>+               p_enc_info->initial_info_obtained =3D true;
>+               p_enc_info->initial_info =3D *info;
>+       }
>+
>+       mutex_unlock(&vpu_dev->hw_lock);
>+
>+       return 0;
>+}
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vpuapi.h
>b/drivers/media/platform/chips-media/wave6/wave6-vpuapi.h
>new file mode 100644
>index 000000000000..93c9a7b9374c
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vpuapi.h
>@@ -0,0 +1,993 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - wave6 helper interface
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_VPUAPI_H__
>+#define __WAVE6_VPUAPI_H__
>+
>+#include <linux/kfifo.h>
>+#include <linux/idr.h>
>+#include <media/v4l2-device.h>
>+#include <media/v4l2-mem2mem.h>
>+#include <media/v4l2-ctrls.h>
>+#include "wave6-vpuerror.h"
>+#include "wave6-vpuconfig.h"
>+#include "wave6-vdi.h"
>+#include "wave6-vpu-ctrl.h"
>+
>+struct vpu_attr;
>+
>+enum vpu_instance_type {
>+       VPU_INST_TYPE_DEC       =3D 0,
>+       VPU_INST_TYPE_ENC       =3D 1
>+};
>+
>+enum vpu_instance_state {
>+       VPU_INST_STATE_NONE     =3D 0,
>+       VPU_INST_STATE_OPEN     =3D 1,
>+       VPU_INST_STATE_INIT_SEQ =3D 2,
>+       VPU_INST_STATE_PIC_RUN  =3D 3,
>+       VPU_INST_STATE_SEEK     =3D 4,
>+       VPU_INST_STATE_STOP     =3D 5
>+};
>+
>+#define WAVE6_MAX_FBS 31
>+
>+#define WAVE6_DEC_HEVC_MVCOL_BUF_SIZE(_w, _h) \
>+       ((ALIGN((_w), 256) / 16) * (ALIGN((_h), 64) / 16) * 1 * 16)
>+#define WAVE6_DEC_AVC_MVCOL_BUF_SIZE(_w, _h) \
>+       ((ALIGN((_w), 64) / 16) * (ALIGN((_h), 16) / 16) * 5 * 16)
>+#define WAVE6_FBC_LUMA_TABLE_SIZE(_w, _h) \
>+       (ALIGN((_w), 256) * ALIGN((_h), 64) / 32)
>+#define WAVE6_FBC_CHROMA_TABLE_SIZE(_w, _h) \
>+       (ALIGN(((_w) / 2), 256) * ALIGN((_h), 64) / 32)
>+#define WAVE6_ENC_AVC_MVCOL_BUF_SIZE(_w, _h) \
>+       ((ALIGN((_w), 512) / 512) * (ALIGN((_h), 16) / 16) * 16)
>+#define WAVE6_ENC_HEVC_MVCOL_BUF_SIZE(_w, _h) \
>+       ((ALIGN((_w), 64) / 64) * (ALIGN((_h), 64) / 64) * 128)
>+#define WAVE6_ENC_SUBSAMPLED_SIZE(_w, _h) \
>+       (ALIGN(((_w) / 4), 16) * ALIGN(((_h) / 4), 32))
>+
>+enum codec_std {
>+       W_HEVC_DEC      =3D 0x00,
>+       W_HEVC_ENC      =3D 0x01,
>+       W_AVC_DEC       =3D 0x02,
>+       W_AVC_ENC       =3D 0x03,
>+       STD_UNKNOWN     =3D 0xFF
>+};
>+
>+#define HEVC_PROFILE_MAIN 1
>+#define HEVC_PROFILE_MAIN10 2
>+#define HEVC_PROFILE_STILLPICTURE 3
>+#define HEVC_PROFILE_MAIN10_STILLPICTURE 2
>+
>+#define H264_PROFILE_BP 1
>+#define H264_PROFILE_MP 2
>+#define H264_PROFILE_EXTENDED 3
>+#define H264_PROFILE_HP 4
>+#define H264_PROFILE_HIGH10 5
>+
>+#define H264_VUI_SAR_IDC_EXTENDED 255
>+
>+#define DEC_REFRESH_TYPE_NON_IRAP 0
>+#define DEC_REFRESH_TYPE_IDR 2
>+
>+#define DEFAULT_TEMP_LAYER_CNT 1
>+#define DEFAULT_RC_INITIAL_LEVEL 8
>+#define DEFAULT_RC_INITIAL_QP -1
>+#define DEFAULT_PIC_RC_MAX_DQP 3
>+#define DEFAULT_EN_ADAPTIVE_ROUND 1
>+#define DEFAULT_Q_ROUND_INTER 85
>+#define DEFAULT_Q_ROUND_INTRA 171
>+#define DEFAULT_EN_INTRA_TRANS_SKIP 1
>+#define DEFAULT_EN_ME_CENTER 1
>+#define DEFAULT_INTRA_4X4 3
>+#define DEFAULT_EN_AUTO_LEVEL_ADJUSTING 1
>+#define DEFAULT_NUM_TICKS_POC_DIFF 100
>+#define DEFAULT_RC_UPDATE_SPEED_CBR 64
>+#define DEFAULT_RC_UPDATE_SPEED_VBR 16
>+#define DEFAULT_VUI_VIDEO_SIGNAL_TYPE_PRESENT_FLAG 1
>+#define DEFAULT_VUI_COLOR_DESCRIPTION_PRESENT_FLAG 1
>+
>+#define SEQ_CHANGE_ENABLE_PROFILE BIT(5)
>+#define SEQ_CHANGE_ENABLE_SIZE BIT(16)
>+#define SEQ_CHANGE_ENABLE_BITDEPTH BIT(18)
>+#define SEQ_CHANGE_ENABLE_DPB_COUNT BIT(19)
>+
>+#define SEQ_CHANGE_ENABLE_ALL_HEVC (SEQ_CHANGE_ENABLE_PROFILE |
>\
>+               SEQ_CHANGE_ENABLE_SIZE | \
>+               SEQ_CHANGE_ENABLE_BITDEPTH | \
>+               SEQ_CHANGE_ENABLE_DPB_COUNT)
>+
>+#define SEQ_CHANGE_ENABLE_ALL_AVC (SEQ_CHANGE_ENABLE_SIZE | \
>+               SEQ_CHANGE_ENABLE_BITDEPTH | \
>+               SEQ_CHANGE_ENABLE_DPB_COUNT)
>+
>+#define DEC_NOTI_FLAG_NO_FB 0x2
>+#define DEC_NOTI_FLAG_SEQ_CHANGE 0x1
>+
>+#define RECON_IDX_FLAG_ENC_END -1
>+#define RECON_IDX_FLAG_ENC_DELAY -2
>+#define RECON_IDX_FLAG_HEADER_ONLY -3
>+#define RECON_IDX_FLAG_CHANGE_PARAM -4
>+
>+enum codec_command {
>+       ENABLE_ROTATION,
>+       ENABLE_MIRRORING,
>+       SET_MIRROR_DIRECTION,
>+       SET_ROTATION_ANGLE,
>+       ENABLE_DEC_THUMBNAIL_MODE,
>+       DEC_RESET_FRAMEBUF_INFO,
>+       DEC_GET_SEQ_INFO,
>+};
>+
>+enum cb_cr_order {
>+       CBCR_ORDER_NORMAL,
>+       CBCR_ORDER_REVERSED
>+};
>+
>+enum mirror_direction {
>+       MIRDIR_NONE,
>+       MIRDIR_VER,
>+       MIRDIR_HOR,
>+       MIRDIR_HOR_VER
>+};
>+
>+enum chroma_format {
>+       YUV400,
>+       YUV420,
>+       YUV422,
>+       YUV444,
>+};
>+
>+enum frame_buffer_format {
>+       FORMAT_ERR =3D -1,
>+
>+       FORMAT_420 =3D 0,
>+       FORMAT_422,
>+       FORMAT_224,
>+       FORMAT_444,
>+       FORMAT_400,
>+
>+       FORMAT_420_P10_16BIT_MSB =3D 5,
>+       FORMAT_420_P10_16BIT_LSB,
>+       FORMAT_420_P10_32BIT_MSB,
>+       FORMAT_420_P10_32BIT_LSB,
>+
>+       FORMAT_422_P10_16BIT_MSB,
>+       FORMAT_422_P10_16BIT_LSB,
>+       FORMAT_422_P10_32BIT_MSB,
>+       FORMAT_422_P10_32BIT_LSB,
>+
>+       FORMAT_444_P10_16BIT_MSB,
>+       FORMAT_444_P10_16BIT_LSB,
>+       FORMAT_444_P10_32BIT_MSB,
>+       FORMAT_444_P10_32BIT_LSB,
>+
>+       FORMAT_400_P10_16BIT_MSB,
>+       FORMAT_400_P10_16BIT_LSB,
>+       FORMAT_400_P10_32BIT_MSB,
>+       FORMAT_400_P10_32BIT_LSB,
>+
>+       FORMAT_YUYV,
>+       FORMAT_YUYV_P10_16BIT_MSB,
>+       FORMAT_YUYV_P10_16BIT_LSB,
>+       FORMAT_YUYV_P10_32BIT_MSB,
>+       FORMAT_YUYV_P10_32BIT_LSB,
>+
>+       FORMAT_YVYU,
>+       FORMAT_YVYU_P10_16BIT_MSB,
>+       FORMAT_YVYU_P10_16BIT_LSB,
>+       FORMAT_YVYU_P10_32BIT_MSB,
>+       FORMAT_YVYU_P10_32BIT_LSB,
>+
>+       FORMAT_UYVY,
>+       FORMAT_UYVY_P10_16BIT_MSB,
>+       FORMAT_UYVY_P10_16BIT_LSB,
>+       FORMAT_UYVY_P10_32BIT_MSB,
>+       FORMAT_UYVY_P10_32BIT_LSB,
>+
>+       FORMAT_VYUY,
>+       FORMAT_VYUY_P10_16BIT_MSB,
>+       FORMAT_VYUY_P10_16BIT_LSB,
>+       FORMAT_VYUY_P10_32BIT_MSB,
>+       FORMAT_VYUY_P10_32BIT_LSB,
>+
>+       FORMAT_RGB_32BIT_PACKED =3D 90,
>+       FORMAT_YUV444_32BIT_PACKED,
>+       FORMAT_RGB_P10_32BIT_PACKED,
>+       FORMAT_YUV444_P10_32BIT_PACKED,
>+
>+       FORMAT_RGB_24BIT_PACKED =3D 95,
>+       FORMAT_YUV444_24BIT_PACKED,
>+       FORMAT_YUV444_24BIT,
>+
>+       FORMAT_MAX,
>+};
>+
>+enum packed_format_num {
>+       NOT_PACKED =3D 0,
>+       PACKED_YUYV,
>+       PACKED_YVYU,
>+       PACKED_UYVY,
>+       PACKED_VYUY,
>+};
>+
>+enum pic_type {
>+       PIC_TYPE_I =3D 0,
>+       PIC_TYPE_P =3D 1,
>+       PIC_TYPE_B =3D 2,
>+       PIC_TYPE_IDR =3D 5,
>+       PIC_TYPE_MAX
>+};
>+
>+enum enc_force_pic_type {
>+       ENC_FORCE_PIC_TYPE_I =3D 0,
>+       ENC_FORCE_PIC_TYPE_P =3D 1,
>+       ENC_FORCE_PIC_TYPE_B =3D 2,
>+       ENC_FORCE_PIC_TYPE_IDR =3D 3,
>+       ENC_FORCE_PIC_TYPE_DISABLED =3D 4,
>+};
>+
>+enum bitstream_mode {
>+       BS_MODE_INTERRUPT,
>+       BS_MODE_RESERVED,
>+       BS_MODE_PIC_END,
>+};
>+
>+enum display_mode {
>+       DISP_MODE_DISP_ORDER,
>+       DISP_MODE_DEC_ORDER,
>+};
>+
>+enum sw_reset_mode {
>+       SW_RESET_SAFETY,
>+       SW_RESET_FORCE,
>+       SW_RESET_ON_BOOT
>+};
>+
>+enum tiled_map_type {
>+       LINEAR_FRAME_MAP =3D 0,
>+       COMPRESSED_FRAME_MAP =3D 17,
>+};
>+
>+enum temporal_id_mode {
>+       TEMPORAL_ID_MODE_ABSOLUTE,
>+       TEMPORAL_ID_MODE_RELATIVE,
>+};
>+
>+enum aux_buffer_type {
>+       AUX_BUF_FBC_Y_TBL,
>+       AUX_BUF_FBC_C_TBL,
>+       AUX_BUF_MV_COL,
>+       AUX_BUF_SUB_SAMPLE,
>+       AUX_BUF_TYPE_MAX,
>+};
>+
>+enum intra_refresh_mode {
>+       INTRA_REFRESH_NONE =3D 0,
>+       INTRA_REFRESH_ROW =3D 1,
>+       INTRA_REFRESH_COLUMN =3D 2,
>+};
>+
>+struct vpu_attr {
>+       u32 product_id;
>+       char product_name[8];
>+       u32 product_version;
>+       u32 fw_version;
>+       u32 fw_revision;
>+       u32 support_decoders;
>+       u32 support_encoders;
>+       u32 support_bitstream_mode;
>+       bool support_avc10bit_enc;
>+       bool support_hevc10bit_enc;
>+       bool support_dual_core;
>+};
>+
>+struct frame_buffer {
>+       dma_addr_t buf_y;
>+       dma_addr_t buf_cb;
>+       dma_addr_t buf_cr;
>+       enum tiled_map_type map_type;
>+       unsigned int stride;
>+       unsigned int width;
>+       unsigned int height;
>+       int index;
>+       u32 luma_bitdepth: 4;
>+       u32 chroma_bitdepth: 4;
>+       u32 chroma_format_idc: 2;
>+};
>+
>+struct vpu_rect {
>+       u32 left;
>+       u32 top;
>+       u32 right;
>+       u32 bottom;
>+};
>+
>+struct timestamp_info {
>+       u32 hour;
>+       u32 min;
>+       u32 sec;
>+       u32 ms;
>+};
>+
>+struct sar_info {
>+       u32 enable;
>+       u32 idc;
>+       u32 width;
>+       u32 height;
>+};
>+
>+struct aux_buffer {
>+       int index;
>+       int size;
>+       dma_addr_t addr;
>+};
>+
>+struct aux_buffer_info {
>+       int num;
>+       struct aux_buffer *buf_array;
>+       enum aux_buffer_type type;
>+};
>+
>+struct instance_buffer {
>+       dma_addr_t temp_base;
>+       u32 temp_size;
>+       dma_addr_t ar_base;
>+};
>+
>+struct report_cycle {
>+       u32 host_cmd_s;
>+       u32 host_cmd_e;
>+       u32 proc_s;
>+       u32 proc_e;
>+       u32 vpu_s;
>+       u32 vpu_e;
>+       u32 frame_cycle;
>+       u32 proc_cycle;
>+       u32 vpu_cycle;
>+};
>+
>+struct color_param {
>+       u32 chroma_sample_position;
>+       u32 color_range;
>+       u32 matrix_coefficients;
>+       u32 transfer_characteristics;
>+       u32 color_primaries;
>+       bool color_description_present;
>+       bool video_signal_type_present;
>+};
>+
>+struct sec_axi_info {
>+       bool use_dec_ip;
>+       bool use_dec_lf_row;
>+       bool use_enc_rdo;
>+       bool use_enc_lf;
>+};
>+
>+struct dec_aux_buffer_size_info {
>+       int width;
>+       int height;
>+       enum aux_buffer_type type;
>+};
>+
>+struct dec_scaler_info {
>+       bool enable;
>+       int width;
>+       int height;
>+       u32 scale_mode;
>+};
>+
>+struct dec_open_param {
>+       enum cb_cr_order cbcr_order;
>+       enum endian_mode frame_endian;
>+       enum endian_mode stream_endian;
>+       enum bitstream_mode bs_mode;
>+       enum display_mode disp_mode;
>+       bool enable_non_ref_fbc_write;
>+       u32 ext_addr_vcpu: 8;
>+       bool is_secure_inst;
>+       u32 inst_priority: 5;
>+       struct instance_buffer inst_buffer;
>+};
>+
>+struct dec_initial_info {
>+       u32 pic_width;
>+       u32 pic_height;
>+       u32 f_rate_numerator;
>+       u32 f_rate_denominator;
>+       struct vpu_rect pic_crop_rect;
>+       u32 min_frame_buffer_count;
>+       u32 req_mv_buffer_count;
>+       u32 frame_buf_delay;
>+       u32 profile;
>+       u32 level;
>+       u32 tier;
>+       bool is_ext_sar;
>+       u32 aspect_rate_info;
>+       u32 bitrate;
>+       u32 chroma_format_idc;
>+       u32 luma_bitdepth;
>+       u32 chroma_bitdepth;
>+       u32 err_reason;
>+       int warn_info;
>+       dma_addr_t rd_ptr;
>+       dma_addr_t wr_ptr;
>+       unsigned int sequence_no;
>+       struct color_param color;
>+};
>+
>+#define WAVE_SKIPMODE_WAVE_NONE 0
>+#define WAVE_SKIPMODE_NON_IRAP 1
>+#define WAVE_SKIPMODE_NON_REF 2
>+
>+struct dec_param {
>+       int skipframe_mode;
>+       bool decode_cra_as_bla;
>+       bool disable_film_grain;
>+       struct timestamp_info timestamp;
>+};
>+
>+struct h265_rp_sei {
>+       unsigned int exist;
>+       int recovery_poc_cnt;
>+       bool exact_match;
>+       bool broken_link;
>+};
>+
>+struct dec_output_info {
>+       int nal_type;
>+       int pic_type;
>+       int num_of_err_m_bs;
>+       int num_of_tot_m_bs;
>+       int num_of_err_m_bs_in_disp;
>+       int num_of_tot_m_bs_in_disp;
>+       int disp_pic_width;
>+       int disp_pic_height;
>+       int dec_pic_width;
>+       int dec_pic_height;
>+       int decoded_poc;
>+       int display_poc;
>+       struct h265_rp_sei h265_rp_sei;
>+       dma_addr_t rd_ptr;
>+       dma_addr_t wr_ptr;
>+       dma_addr_t byte_pos_frame_start;
>+       dma_addr_t byte_pos_frame_end;
>+       dma_addr_t frame_decoded_addr;
>+       dma_addr_t frame_display_addr;
>+       int error_reason;
>+       int warn_info;
>+       unsigned int sequence_no;
>+       struct report_cycle cycle;
>+       dma_addr_t release_disp_frame_addr[WAVE6_MAX_FBS];
>+       dma_addr_t disp_frame_addr[WAVE6_MAX_FBS];
>+       struct timestamp_info timestamp;
>+       u32 notification_flags;
>+       u32 release_disp_frame_num: 5;
>+       u32 disp_frame_num: 5;
>+       u32 ctu_size: 2;
>+       bool frame_display;
>+       bool frame_decoded;
>+       bool stream_end;
>+       bool last_frame_in_au;
>+       bool decoding_success;
>+};
>+
>+struct dec_info {
>+       struct dec_open_param open_param;
>+       struct dec_initial_info initial_info;
>+       dma_addr_t stream_wr_ptr;
>+       dma_addr_t stream_rd_ptr;
>+       bool stream_end;
>+       struct vpu_buf vb_mv[WAVE6_MAX_FBS];
>+       struct vpu_buf vb_fbc_y_tbl[WAVE6_MAX_FBS];
>+       struct vpu_buf vb_fbc_c_tbl[WAVE6_MAX_FBS];
>+       struct frame_buffer disp_buf[WAVE6_MAX_FBS];
>+       int stride;
>+       bool initial_info_obtained;
>+       struct sec_axi_info sec_axi_info;
>+       struct dec_output_info dec_out_info[WAVE6_MAX_FBS];
>+       bool thumbnail_mode;
>+       int seq_change_mask;
>+       u32 cycle_per_tick;
>+       enum frame_buffer_format wtl_format;
>+};
>+
>+#define MAX_CUSTOM_LAMBDA_NUM 52
>+#define MAX_NUM_TEMPORAL_LAYER 7
>+#define MAX_GOP_NUM 8
>+#define MAX_NUM_CHANGEABLE_TEMPORAL_LAYER 4
>+
>+struct custom_gop_pic_param {
>+       int pic_type;
>+       int poc_offset;
>+       int pic_qp;
>+       int use_multi_ref_p;
>+       int ref_poc_l0;
>+       int ref_poc_l1;
>+       int temporal_id;
>+};
>+
>+struct custom_gop_param {
>+       int custom_gop_size;
>+       struct custom_gop_pic_param pic_param[MAX_GOP_NUM];
>+};
>+
>+struct temporal_layer_param {
>+       bool change_qp;
>+       u32 qp_i;
>+       u32 qp_p;
>+       u32 qp_b;
>+};
>+
>+struct enc_aux_buffer_size_info {
>+       int width;
>+       int height;
>+       enum aux_buffer_type type;
>+       enum mirror_direction mirror_direction;
>+       int rotation_angle;
>+};
>+
>+struct enc_scaler_info {
>+       bool enable;
>+       int width;
>+       int height;
>+       int coef_mode;
>+};
>+
>+struct enc_codec_param {
>+       u32 internal_bit_depth;
>+       u32 decoding_refresh_type;
>+       u32 idr_period;
>+       u32 intra_period;
>+       u32 gop_preset_idx;
>+       u32 frame_rate;
>+       u32 bitrate;
>+       u32 cpb_size;
>+       u32 hvs_qp_scale_div2;
>+       u32 max_delta_qp;
>+       int rc_initial_qp;
>+       u32 rc_update_speed;
>+       u32 max_bitrate;
>+       u32 rc_mode;
>+       u32 rc_initial_level;
>+       u32 pic_rc_max_dqp;
>+       u32 bg_th_diff;
>+       u32 bg_th_mean_diff;
>+       int bg_delta_qp;
>+       u32 intra_refresh_mode;
>+       u32 intra_refresh_arg;
>+       int beta_offset_div2;
>+       int tc_offset_div2;
>+       u32 qp;
>+       u32 min_qp_i;
>+       u32 max_qp_i;
>+       u32 min_qp_p;
>+       u32 max_qp_p;
>+       u32 min_qp_b;
>+       u32 max_qp_b;
>+       int cb_qp_offset;
>+       int cr_qp_offset;
>+       u32 q_round_intra;
>+       u32 q_round_inter;
>+       int lambda_dqp_intra;
>+       int lambda_dqp_inter;
>+       u32 slice_mode;
>+       u32 slice_arg;
>+       u32 level;
>+       u32 tier;
>+       u32 profile;
>+       struct vpu_rect conf_win;
>+       u32 forced_idr_header;
>+       u16 custom_lambda_ssd[MAX_CUSTOM_LAMBDA_NUM];
>+       u16 custom_lambda_sad[MAX_CUSTOM_LAMBDA_NUM];
>+       struct custom_gop_param gop_param;
>+       struct temporal_layer_param
>temp_layer[MAX_NUM_CHANGEABLE_TEMPORAL_LAYER];
>+       u32 temp_layer_cnt;
>+       u32 report_mv_histo_threshold0;
>+       u32 report_mv_histo_threshold1;
>+       u32 report_mv_histo_threshold2;
>+       u32 report_mv_histo_threshold3;
>+       enum endian_mode custom_map_endian;
>+       u32 num_units_in_tick;
>+       u32 time_scale;
>+       u32 num_ticks_poc_diff_one;
>+       struct color_param color;
>+       struct sar_info sar;
>+       u32 max_intra_pic_bit;
>+       u32 max_inter_pic_bit;
>+       u32 intra_4x4;
>+
>+       u32 en_constrained_intra_pred: 1;
>+       u32 en_long_term: 1;
>+       u32 en_intra_trans_skip: 1;
>+       u32 en_me_center: 1;
>+       u32 en_rate_control: 1;
>+       u32 en_transform8x8: 1;
>+       u32 en_hvs_qp: 1;
>+       u32 en_bg_detect: 1;
>+       u32 en_temporal_mvp: 1;
>+       u32 en_cabac: 1;
>+       u32 en_dbk: 1;
>+       u32 en_sao: 1;
>+       u32 en_lf_cross_slice_boundary: 1;
>+       u32 en_scaling_list: 1;
>+       u32 en_adaptive_round: 1;
>+       u32 en_qp_map: 1;
>+       u32 en_mode_map: 1;
>+       u32 en_q_round_offset: 1;
>+       u32 en_still_picture: 1;
>+       u32 en_strong_intra_smoothing: 1;
>+       u32 en_custom_lambda: 1;
>+       u32 en_report_mv_histo: 1;
>+       u32 dis_coef_clear: 1;
>+       u32 en_cu_level_rate_control: 1;
>+       u32 en_vbv_overflow_drop_frame: 1;
>+       u32 en_auto_level_adjusting: 1;
>+};
>+
>+struct enc_open_param {
>+       int pic_width;
>+       int pic_height;
>+       struct enc_codec_param codec_param;
>+       enum cb_cr_order cbcr_order;
>+       enum endian_mode stream_endian;
>+       enum endian_mode source_endian;
>+       bool line_buf_int_en;
>+       enum packed_format_num packed_format;
>+       enum frame_buffer_format src_format;
>+       enum frame_buffer_format output_format;
>+       bool enable_non_ref_fbc_write;
>+       bool enc_hrd_rbsp_in_vps;
>+       u32 hrd_rbsp_data_size;
>+       dma_addr_t hrd_rbsp_data_addr;
>+       u32 ext_addr_vcpu: 8;
>+       bool is_secure_inst;
>+       u32 inst_priority: 5;
>+       struct instance_buffer inst_buffer;
>+       bool enc_aud;
>+};
>+
>+struct enc_initial_info {
>+       u32 min_frame_buffer_count;
>+       u32 min_src_frame_count;
>+       u32 req_mv_buffer_count;
>+       int max_latency_pictures;
>+       int err_reason;
>+       int warn_info;
>+};
>+
>+struct enc_csc_param {
>+       u32 format_order;
>+       u32 coef_ry;
>+       u32 coef_gy;
>+       u32 coef_by;
>+       u32 coef_rcb;
>+       u32 coef_gcb;
>+       u32 coef_bcb;
>+       u32 coef_rcr;
>+       u32 coef_gcr;
>+       u32 coef_bcr;
>+       u32 offset_y;
>+       u32 offset_cb;
>+       u32 offset_cr;
>+};
>+
>+struct enc_param {
>+       struct frame_buffer *source_frame;
>+       bool skip_picture;
>+       dma_addr_t pic_stream_buffer_addr;
>+       int pic_stream_buffer_size;
>+       bool force_pic_qp_enable;
>+       int force_pic_qp_i;
>+       int force_pic_qp_p;
>+       int force_pic_qp_b;
>+       bool force_pic_type_enable;
>+       int force_pic_type;
>+       int src_idx;
>+       bool src_end;
>+       u32 bitrate;
>+       struct enc_csc_param csc;
>+       struct timestamp_info timestamp;
>+};
>+
>+struct enc_report_fme_sum {
>+       u32 lower_x0;
>+       u32 higher_x0;
>+       u32 lower_y0;
>+       u32 higher_y0;
>+       u32 lower_x1;
>+       u32 higher_x1;
>+       u32 lower_y1;
>+       u32 higher_y1;
>+};
>+
>+struct enc_report_mv_histo {
>+       u32 cnt0;
>+       u32 cnt1;
>+       u32 cnt2;
>+       u32 cnt3;
>+       u32 cnt4;
>+};
>+
>+struct enc_output_info {
>+       dma_addr_t bitstream_buffer;
>+       u32 bitstream_size;
>+       int bitstream_wrap_around;
>+       int pic_type;
>+       int num_of_slices;
>+       int recon_frame_index;
>+       struct frame_buffer recon_frame;
>+       dma_addr_t rd_ptr;
>+       dma_addr_t wr_ptr;
>+       int pic_skipped;
>+       int num_of_intra;
>+       int num_of_merge;
>+       int num_of_skip_block;
>+       int avg_ctu_qp;
>+       int enc_pic_byte;
>+       int enc_gop_pic_idx;
>+       int enc_pic_poc;
>+       int enc_src_idx;
>+       int enc_vcl_nut;
>+       int enc_pic_cnt;
>+       int error_reason;
>+       int warn_info;
>+       u32 pic_distortion_low;
>+       u32 pic_distortion_high;
>+       bool non_ref_pic;
>+       bool encoding_success;
>+       struct enc_report_fme_sum fme_sum;
>+       struct enc_report_mv_histo mv_histo;
>+       struct report_cycle cycle;
>+       struct timestamp_info timestamp;
>+       dma_addr_t src_y_addr;
>+       dma_addr_t custom_map_addr;
>+       dma_addr_t prefix_sei_nal_addr;
>+       dma_addr_t suffix_sei_nal_addr;
>+};
>+
>+enum gop_preset_idx {
>+       PRESET_IDX_CUSTOM_GOP =3D 0,
>+       PRESET_IDX_ALL_I =3D 1,
>+       PRESET_IDX_IPP =3D 2,
>+       PRESET_IDX_IBBB =3D 3,
>+       PRESET_IDX_IBPBP =3D 4,
>+       PRESET_IDX_IBBBP =3D 5,
>+       PRESET_IDX_IPPPP =3D 6,
>+       PRESET_IDX_IBBBB =3D 7,
>+       PRESET_IDX_RA_IB =3D 8,
>+       PRESET_IDX_IPP_SINGLE =3D 9,
>+       PRESET_IDX_MAX,
>+};
>+
>+struct enc_info {
>+       struct enc_open_param open_param;
>+       struct enc_initial_info initial_info;
>+       int num_frame_buffers;
>+       int stride;
>+       bool rotation_enable;
>+       bool mirror_enable;
>+       enum mirror_direction mirror_direction;
>+       int rotation_angle;
>+       bool initial_info_obtained;
>+       struct sec_axi_info sec_axi_info;
>+       bool line_buf_int_en;
>+       struct vpu_buf vb_mv[WAVE6_MAX_FBS];
>+       struct vpu_buf vb_fbc_y_tbl[WAVE6_MAX_FBS];
>+       struct vpu_buf vb_fbc_c_tbl[WAVE6_MAX_FBS];
>+       struct vpu_buf vb_sub_sam_buf[WAVE6_MAX_FBS];
>+       u32 cycle_per_tick;
>+       u32 width;
>+       u32 height;
>+       struct enc_scaler_info scaler_info;
>+       int color_format;
>+};
>+
>+struct h264_enc_controls {
>+       u32 profile;
>+       u32 level;
>+       u32 min_qp;
>+       u32 max_qp;
>+       u32 i_frame_qp;
>+       u32 p_frame_qp;
>+       u32 b_frame_qp;
>+       u32 loop_filter_mode;
>+       u32 loop_filter_beta;
>+       u32 loop_filter_alpha;
>+       u32 _8x8_transform;
>+       u32 constrained_intra_prediction;
>+       u32 chroma_qp_index_offset;
>+       u32 entropy_mode;
>+       u32 i_period;
>+       u32 vui_sar_enable;
>+       u32 vui_sar_idc;
>+       u32 vui_ext_sar_width;
>+       u32 vui_ext_sar_height;
>+       u32 cpb_size;
>+};
>+
>+struct hevc_enc_controls {
>+       u32 profile;
>+       u32 level;
>+       u32 min_qp;
>+       u32 max_qp;
>+       u32 i_frame_qp;
>+       u32 p_frame_qp;
>+       u32 b_frame_qp;
>+       u32 loop_filter_mode;
>+       u32 lf_beta_offset_div2;
>+       u32 lf_tc_offset_div2;
>+       u32 refresh_type;
>+       u32 refresh_period;
>+       u32 const_intra_pred;
>+       u32 strong_smoothing;
>+       u32 tmv_prediction;
>+};
>+
>+struct enc_controls {
>+       u32 rot_angle;
>+       u32 mirror_direction;
>+       u32 bitrate;
>+       u32 bitrate_mode;
>+       u32 gop_size;
>+       u32 frame_rc_enable;
>+       u32 mb_rc_enable;
>+       u32 slice_mode;
>+       u32 slice_max_mb;
>+       u32 prepend_spspps_to_idr;
>+       u32 intra_refresh_period;
>+       struct h264_enc_controls h264;
>+       struct hevc_enc_controls hevc;
>+       u32 force_key_frame;
>+       u32 frame_skip_mode;
>+};
>+
>+struct vpu_device {
>+       struct device *dev;
>+       struct v4l2_device v4l2_dev;
>+       struct v4l2_m2m_dev *m2m_dev;
>+       struct video_device *video_dev_dec;
>+       struct video_device *video_dev_enc;
>+       struct mutex dev_lock; /* the lock for the src,dst v4l2 queues */
>+       struct mutex hw_lock; /* lock hw configurations */
>+       int irq;
>+       u32 fw_version;
>+       u32 fw_revision;
>+       u32 hw_version;
>+       struct vpu_attr attr;
>+       u32 last_performance_cycles;
>+       void __iomem *reg_base;
>+       struct device *ctrl;
>+       int product_code;
>+       struct vpu_buf temp_vbuf;
>+       struct clk_bulk_data *clks;
>+       int num_clks;
>+       struct clk *clk_vpu;
>+       struct completion irq_done;
>+       struct kfifo irq_status;
>+       struct delayed_work task_timer;
>+       struct wave6_vpu_entity entity;
>+       bool active;
>+       int pause_request;
>+       struct mutex pause_lock; /* the lock for the pause/resume m2m job.=
 */
>+       const struct wave6_match_data *res;
>+       struct dentry *debugfs;
>+};
>+
>+struct vpu_instance;
>+
>+struct vpu_instance_ops {
>+       int (*start_process)(struct vpu_instance *inst);
>+       void (*finish_process)(struct vpu_instance *inst, bool error);
>+};
>+
>+struct vpu_performance_info {
>+       ktime_t ts_first;
>+       ktime_t ts_last;
>+       s64 latency_first;
>+       s64 latency_max;
>+       s64 min_process_time;
>+       s64 max_process_time;
>+       u64 total_sw_time;
>+       u64 total_hw_time;
>+};
>+
>+struct vpu_instance {
>+       struct v4l2_fh v4l2_fh;
>+       struct v4l2_ctrl_handler v4l2_ctrl_hdl;
>+       struct vpu_device *dev;
>+
>+       struct v4l2_pix_format_mplane src_fmt;
>+       struct v4l2_pix_format_mplane dst_fmt;
>+       struct v4l2_rect crop;
>+       struct v4l2_rect codec_rect;
>+       enum v4l2_colorspace colorspace;
>+       enum v4l2_xfer_func xfer_func;
>+       enum v4l2_ycbcr_encoding ycbcr_enc;
>+       enum v4l2_quantization quantization;
>+
>+       enum vpu_instance_state state;
>+       enum vpu_instance_state state_in_seek;
>+       enum vpu_instance_type type;
>+       const struct vpu_instance_ops *ops;
>+
>+       enum codec_std std;
>+       u32 id;
>+       union {
>+               struct enc_info enc_info;
>+               struct dec_info dec_info;
>+       } *codec_info;
>+       struct frame_buffer frame_buf[WAVE6_MAX_FBS];
>+       struct vpu_buf frame_vbuf[WAVE6_MAX_FBS];
>+       u32 queued_src_buf_num;
>+       u32 queued_dst_buf_num;
>+       u32 processed_buf_num;
>+       u32 error_buf_num;
>+       u32 sequence;
>+       bool next_buf_last;
>+       bool cbcr_interleave;
>+       bool nv21;
>+       bool eos;
>+
>+       struct vpu_buf aux_vbuf[AUX_BUF_TYPE_MAX][WAVE6_MAX_FBS];
>+       struct vpu_buf ar_vbuf;
>+       bool thumbnail_mode;
>+       enum display_mode disp_mode;
>+
>+       unsigned int frame_rate;
>+       struct enc_controls enc_ctrls;
>+       struct dec_scaler_info scaler_info;
>+       bool error_recovery;
>+
>+       struct vpu_performance_info performance;
>+
>+       struct dentry *debugfs;
>+};
>+
>+void wave6_vdi_writel(struct vpu_device *vpu_device, unsigned int addr,
>unsigned int data);
>+unsigned int wave6_vdi_readl(struct vpu_device *vpu_dev, unsigned int
>addr);
>+unsigned int wave6_vdi_convert_endian(unsigned int endian);
>+
>+int wave6_vpu_dec_open(struct vpu_instance *inst, struct dec_open_param
>*pop);
>+int wave6_vpu_dec_close(struct vpu_instance *inst, u32 *fail_res);
>+int wave6_vpu_dec_issue_seq_init(struct vpu_instance *inst);
>+int wave6_vpu_dec_complete_seq_init(struct vpu_instance *inst, struct
>dec_initial_info *info);
>+int wave6_vpu_dec_get_aux_buffer_size(struct vpu_instance *inst,
>+                                     struct dec_aux_buffer_size_info info=
,
>+                                     uint32_t *size);
>+int wave6_vpu_dec_register_aux_buffer(struct vpu_instance *inst, struct
>aux_buffer_info info);
>+int wave6_vpu_dec_register_frame_buffer_ex(struct vpu_instance *inst, int
>num_of_dec_fbs,
>+                                          int stride, int height, int map=
_type);
>+int wave6_vpu_dec_register_display_buffer_ex(struct vpu_instance *inst,
>struct frame_buffer fb);
>+int wave6_vpu_dec_start_one_frame(struct vpu_instance *inst, struct
>dec_param *param,
>+                                 u32 *res_fail);
>+int wave6_vpu_dec_get_output_info(struct vpu_instance *inst, struct
>dec_output_info *info);
>+int wave6_vpu_dec_set_rd_ptr(struct vpu_instance *inst, dma_addr_t addr,
>bool update_wr_ptr);
>+int wave6_vpu_dec_give_command(struct vpu_instance *inst, enum
>codec_command cmd, void *parameter);
>+int wave6_vpu_dec_get_bitstream_buffer(struct vpu_instance *inst,
>dma_addr_t *p_rd_ptr,
>+                                      dma_addr_t *p_wr_ptr);
>+int wave6_vpu_dec_update_bitstream_buffer(struct vpu_instance *inst, int
>size);
>+int wave6_vpu_dec_flush_instance(struct vpu_instance *inst);
>+
>+int wave6_vpu_enc_open(struct vpu_instance *inst, struct enc_open_param
>*enc_op_param);
>+int wave6_vpu_enc_close(struct vpu_instance *inst, u32 *fail_res);
>+int wave6_vpu_enc_issue_seq_init(struct vpu_instance *inst);
>+int wave6_vpu_enc_issue_seq_change(struct vpu_instance *inst, bool
>*changed);
>+int wave6_vpu_enc_complete_seq_init(struct vpu_instance *inst, struct
>enc_initial_info *info);
>+int wave6_vpu_enc_get_aux_buffer_size(struct vpu_instance *inst,
>+                                     struct enc_aux_buffer_size_info info=
,
>+                                     uint32_t *size);
>+int wave6_vpu_enc_register_aux_buffer(struct vpu_instance *inst, struct
>aux_buffer_info info);
>+int wave6_vpu_enc_register_frame_buffer_ex(struct vpu_instance *inst, int
>num, unsigned int stride,
>+                                          int height, enum tiled_map_type=
 map_type);
>+int wave6_vpu_enc_start_one_frame(struct vpu_instance *inst, struct
>enc_param *param,
>+                                 u32 *fail_res);
>+int wave6_vpu_enc_get_output_info(struct vpu_instance *inst, struct
>enc_output_info *info);
>+int wave6_vpu_enc_give_command(struct vpu_instance *inst, enum
>codec_command cmd, void *parameter);
>+
>+#endif /* __WAVE6_VPUAPI_H__ */
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vpuconfig.h
>b/drivers/media/platform/chips-media/wave6/wave6-vpuconfig.h
>new file mode 100644
>index 000000000000..9078f3741644
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vpuconfig.h
>@@ -0,0 +1,80 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - product config definitions
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_VPUCONFIG_H__
>+#define __WAVE6_VPUCONFIG_H__
>+
>+#define WAVE617_CODE                    0x6170
>+#define WAVE627_CODE                    0x6270
>+#define WAVE633_CODE                    0x6330
>+#define WAVE637_CODE                    0x6370
>+#define WAVE663_CODE                    0x6630
>+#define WAVE677_CODE                    0x6670
>+
>+#define PRODUCT_CODE_W_SERIES(x) ({                                    \
>+               int c =3D x;                                              =
\
>+               ((c) =3D=3D WAVE617_CODE || (c) =3D=3D WAVE627_CODE ||    =
      \
>+                (c) =3D=3D WAVE633_CODE || (c) =3D=3D WAVE637_CODE ||    =
      \
>+                (c) =3D=3D WAVE663_CODE || (c) =3D=3D WAVE677_CODE);     =
      \
>+})
>+
>+#define WAVE627ENC_WORKBUF_SIZE         (512 * 1024)
>+#define WAVE637DEC_WORKBUF_SIZE         (2 * 512 * 1024)
>+#define WAVE637DEC_WORKBUF_SIZE_FOR_CQ  (3 * 512 * 1024)
>+
>+#define MAX_NUM_INSTANCE                32
>+
>+#define W6_MAX_PIC_STRIDE               (4096U * 4)
>+#define W6_DEF_DEC_PIC_WIDTH            720U
>+#define W6_DEF_DEC_PIC_HEIGHT           480U
>+#define W6_MIN_DEC_PIC_WIDTH            64U
>+#define W6_MIN_DEC_PIC_HEIGHT           64U
>+#define W6_MAX_DEC_PIC_WIDTH            4096U
>+#define W6_MAX_DEC_PIC_HEIGHT           4096U
>+#define W6_DEC_PIC_SIZE_STEP            1
>+
>+#define W6_DEF_ENC_PIC_WIDTH            416U
>+#define W6_DEF_ENC_PIC_HEIGHT           240U
>+#define W6_MIN_ENC_PIC_WIDTH            256U
>+#define W6_MIN_ENC_PIC_HEIGHT           128U
>+#define W6_MAX_ENC_PIC_WIDTH            4096U
>+#define W6_MAX_ENC_PIC_HEIGHT           4096U
>+#define W6_ENC_PIC_SIZE_STEP            8
>+#define W6_ENC_CROP_X_POS_STEP          32
>+#define W6_ENC_CROP_Y_POS_STEP          2
>+#define W6_ENC_CROP_STEP                2
>+
>+#define W6_VPU_POLL_TIMEOUT             300000
>+#define W6_BOOT_WAIT_TIMEOUT            10000
>+#define W6_VPU_TIMEOUT                  6000
>+#define W6_VPU_TIMEOUT_CYCLE_COUNT      (8000000 * 4 * 4)
>+
>+#define HOST_ENDIAN                     VDI_128BIT_LITTLE_ENDIAN
>+#define VPU_FRAME_ENDIAN                HOST_ENDIAN
>+#define VPU_STREAM_ENDIAN               HOST_ENDIAN
>+#define VPU_USER_DATA_ENDIAN            HOST_ENDIAN
>+#define VPU_SOURCE_ENDIAN               HOST_ENDIAN
>+
>+#define USE_SRC_PRP_AXI         0
>+#define USE_SRC_PRI_AXI         1
>+#define DEFAULT_SRC_AXI         USE_SRC_PRP_AXI
>+
>+#define COMMAND_QUEUE_DEPTH             (1)
>+
>+#define W6_REMAP_INDEX0                 0
>+#define W6_REMAP_INDEX1                 1
>+#define W6_REMAP_MAX_SIZE               (1024 * 1024)
>+
>+#define WAVE6_ARBUF_SIZE                (1024)
>+#define WAVE6_MAX_CODE_BUF_SIZE         (4 * 1024 * 1024)
>+#define WAVE6_CODE_BUF_SIZE             (1 * 1024 * 1024)
>+#define WAVE6_EXTRA_CODE_BUF_SIZE       (256 * 1024)
>+#define WAVE6_TEMPBUF_SIZE              (3 * 1024 * 1024)
>+
>+#define WAVE6_UPPER_PROC_AXI_ID     0x0
>+
>+#endif /* __WAVE6_VPUCONFIG_H__ */
>diff --git a/drivers/media/platform/chips-media/wave6/wave6-vpuerror.h
>b/drivers/media/platform/chips-media/wave6/wave6-vpuerror.h
>new file mode 100644
>index 000000000000..8bf2e1e9522d
>--- /dev/null
>+++ b/drivers/media/platform/chips-media/wave6/wave6-vpuerror.h
>@@ -0,0 +1,262 @@
>+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
>+/*
>+ * Wave6 series multi-standard codec IP - wave6 vpu error values
>+ *
>+ * Copyright (C) 2025 CHIPS&MEDIA INC
>+ */
>+
>+#ifndef __WAVE6_VPUERROR_H__
>+#define __WAVE6_VPUERROR_H__
>+
>+/* WAVE6 COMMON SYSTEM ERROR (FAIL_REASON) */
>+#define WAVE6_SYSERR_QUEUEING_FAIL                                     0x=
00000001
>+#define WAVE6_SYSERR_DECODER_FUSE                                      0x=
00000002
>+#define WAVE6_SYSERR_INSTRUCTION_ACCESS_VIOLATION
>0x00000004
>+#define WAVE6_SYSERR_PRIVILEDGE_VIOLATION                              0x=
00000008
>+#define WAVE6_SYSERR_DATA_ADDR_ALIGNMENT
>0x00000010
>+#define WAVE6_SYSERR_DATA_ACCESS_VIOLATION
>0x00000020
>+#define WAVE6_SYSERR_ACCESS_VIOLATION_HW
>0x00000040
>+#define WAVE6_SYSERR_INSTRUCTION_ADDR_ALIGNMENT
>0x00000080
>+#define WAVE6_SYSERR_UNKNOWN                                           0x=
00000100
>+#define WAVE6_SYSERR_BUS_ERROR                                         0x=
00000200
>+#define WAVE6_SYSERR_DOUBLE_FAULT                                      0x=
00000400
>+#define WAVE6_SYSERR_RESULT_NOT_READY                                  0x=
00000800
>+#define WAVE6_SYSERR_VPU_STILL_RUNNING                                 0x=
00001000
>+#define WAVE6_SYSERR_UNKNOWN_CMD                                       0x=
00002000
>+#define WAVE6_SYSERR_UNKNOWN_CODEC_STD
>0x00004000
>+#define WAVE6_SYSERR_UNKNOWN_QUERY_OPTION
>0x00008000
>+#define WAVE6_SYSERR_WATCHDOG_TIMEOUT
>0x00020000
>+#define WAVE6_SYSERR_NOT_SUPPORT                                       0x=
00100000
>+#define WAVE6_SYSERR_TEMP_SEC_BUF_OVERFLOW
>0x00200000
>+#define WAVE6_SYSERR_NOT_SUPPORT_PROFILE
>0x00400000
>+#define WAVE6_SYSERR_TIMEOUT_CODEC_FW
>0x40000000
>+#define WAVE6_SYSERR_FATAL_VPU_HANGUP                                  0x=
f0000000
>+
>+/* WAVE6 COMMAND QUEUE ERROR (FAIL_REASON) */
>+#define WAVE6_CMDQ_ERR_NOT_QUEABLE_CMD
>0x00000001
>+#define WAVE6_CMDQ_ERR_SKIP_MODE_ENABLE
>0x00000002
>+#define WAVE6_CMDQ_ERR_INST_FLUSHING                                   0x=
00000003
>+#define WAVE6_CMDQ_ERR_INST_INACTIVE                                   0x=
00000004
>+#define WAVE6_CMDQ_ERR_QUEUE_FAIL                                      0x=
00000005
>+#define WAVE6_CMDQ_ERR_CMD_BUF_FULL                                    0x=
00000006
>+
>+/* WAVE6 ERROR ON DECODER (ERR_INFO) */
>+#define HEVC_SPSERR_SEQ_PARAMETER_SET_ID
>0x00001000
>+#define HEVC_SPSERR_CHROMA_FORMAT_IDC
>0x00001001
>+#define HEVC_SPSERR_PIC_WIDTH_IN_LUMA_SAMPLES
>0x00001002
>+#define HEVC_SPSERR_PIC_HEIGHT_IN_LUMA_SAMPLES
>0x00001003
>+#define HEVC_SPSERR_CONF_WIN_LEFT_OFFSET
>0x00001004
>+#define HEVC_SPSERR_CONF_WIN_RIGHT_OFFSET
>0x00001005
>+#define HEVC_SPSERR_CONF_WIN_TOP_OFFSET
>0x00001006
>+#define HEVC_SPSERR_CONF_WIN_BOTTOM_OFFSET
>0x00001007
>+#define HEVC_SPSERR_BIT_DEPTH_LUMA_MINUS8
>0x00001008
>+#define HEVC_SPSERR_BIT_DEPTH_CHROMA_MINUS8
>0x00001009
>+#define HEVC_SPSERR_LOG2_MAX_PIC_ORDER_CNT_LSB_MINUS4
>0x0000100A
>+#define HEVC_SPSERR_SPS_MAX_DEC_PIC_BUFFERING
>0x0000100B
>+#define HEVC_SPSERR_SPS_MAX_NUM_REORDER_PICS
>0x0000100C
>+#define HEVC_SPSERR_SPS_MAX_LATENCY_INCREASE
>0x0000100D
>+#define HEVC_SPSERR_LOG2_MIN_LUMA_CODING_BLOCK_SIZE_MINUS3
>0x0000100E
>+#define HEVC_SPSERR_LOG2_DIFF_MAX_MIN_LUMA_CODING_BLOCK_SIZE
>0x0000100F
>+#define HEVC_SPSERR_LOG2_MIN_TRANSFORM_BLOCK_SIZE_MINUS2
>0x00001010
>+#define HEVC_SPSERR_LOG2_DIFF_MAX_MIN_TRANSFORM_BLOCK_SIZE
>0x00001011
>+#define HEVC_SPSERR_MAX_TRANSFORM_HIERARCHY_DEPTH_INTER
>0x00001012
>+#define HEVC_SPSERR_MAX_TRANSFORM_HIERARCHY_DEPTH_INTRA
>0x00001013
>+#define HEVC_SPSERR_SCALING_LIST                                       0x=
00001014
>+#define
>HEVC_SPSERR_LOG2_DIFF_MIN_PCM_LUMA_CODING_BLOCK_SIZE_MINUS3
>0x00001015
>+#define
>HEVC_SPSERR_LOG2_DIFF_MAX_MIN_PCM_LUMA_CODING_BLOCK_SIZE
>0x00001016
>+#define HEVC_SPSERR_NUM_SHORT_TERM_REF_PIC_SETS
>0x00001017
>+#define HEVC_SPSERR_NUM_LONG_TERM_REF_PICS_SPS
>0x00001018
>+#define HEVC_SPSERR_GBU_PARSING_ERROR                                  0x=
00001019
>+#define HEVC_SPSERR_EXTENSION_FLAG                                     0x=
0000101A
>+#define HEVC_SPSERR_VUI_ERROR                                          0x=
0000101B
>+#define HEVC_SPSERR_ACTIVATE_SPS                                       0x=
0000101C
>+#define HEVC_SPSERR_PROFILE_SPACE                                      0x=
0000101D
>+#define HEVC_PPSERR_PPS_PIC_PARAMETER_SET_ID
>0x00002000
>+#define HEVC_PPSERR_PPS_SEQ_PARAMETER_SET_ID
>0x00002001
>+#define HEVC_PPSERR_NUM_REF_IDX_L0_DEFAULT_ACTIVE_MINUS1
>0x00002002
>+#define HEVC_PPSERR_NUM_REF_IDX_L1_DEFAULT_ACTIVE_MINUS1
>0x00002003
>+#define HEVC_PPSERR_INIT_QP_MINUS26                                    0x=
00002004
>+#define HEVC_PPSERR_DIFF_CU_QP_DELTA_DEPTH
>0x00002005
>+#define HEVC_PPSERR_PPS_CB_QP_OFFSET                                   0x=
00002006
>+#define HEVC_PPSERR_PPS_CR_QP_OFFSET                                   0x=
00002007
>+#define HEVC_PPSERR_NUM_TILE_COLUMNS_MINUS1
>0x00002008
>+#define HEVC_PPSERR_NUM_TILE_ROWS_MINUS1
>0x00002009
>+#define HEVC_PPSERR_COLUMN_WIDTH_MINUS1
>0x0000200A
>+#define HEVC_PPSERR_ROW_HEIGHT_MINUS1                                  0x=
0000200B
>+#define HEVC_PPSERR_PPS_BETA_OFFSET_DIV2                               0x=
0000200C
>+#define HEVC_PPSERR_PPS_TC_OFFSET_DIV2                                 0x=
0000200D
>+#define HEVC_PPSERR_SCALING_LIST                                       0x=
0000200E
>+#define HEVC_PPSERR_LOG2_PARALLEL_MERGE_LEVEL_MINUS2
>0x0000200F
>+#define HEVC_PPSERR_NUM_TILE_COLUMNS_RANGE_OUT
>0x00002010
>+#define HEVC_PPSERR_NUM_TILE_ROWS_RANGE_OUT
>0x00002011
>+#define HEVC_PPSERR_MORE_RBSP_DATA_ERROR
>0x00002012
>+#define HEVC_PPSERR_PPS_PIC_PARAMETER_SET_ID_RANGE_OUT
>0x00002013
>+#define HEVC_PPSERR_PPS_SEQ_PARAMETER_SET_ID_RANGE_OUT
>0x00002014
>+#define
>HEVC_PPSERR_NUM_REF_IDX_L0_DEFAULT_ACTIVE_MINUS1_RANGE_OUT
>0x00002015
>+#define
>HEVC_PPSERR_NUM_REF_IDX_L1_DEFAULT_ACTIVE_MINUS1_RANGE_OUT
>0x00002016
>+#define HEVC_PPSERR_PPS_CB_QP_OFFSET_RANGE_OUT
>0x00002017
>+#define HEVC_PPSERR_PPS_CR_QP_OFFSET_RANGE_OUT
>0x00002018
>+#define HEVC_PPSERR_COLUMN_WIDTH_MINUS1_RANGE_OUT
>0x00002019
>+#define HEVC_PPSERR_ROW_HEIGHT_MINUS1_RANGE_OUT
>0x00002020
>+#define HEVC_PPSERR_PPS_BETA_OFFSET_DIV2_RANGE_OUT
>0x00002021
>+#define HEVC_PPSERR_PPS_TC_OFFSET_DIV2_RANGE_OUT
>0x00002022
>+#define HEVC_SHERR_SLICE_PIC_PARAMETER_SET_ID
>0x00003000
>+#define HEVC_SHERR_ACTIVATE_PPS                                        0x=
00003001
>+#define HEVC_SHERR_ACTIVATE_SPS                                        0x=
00003002
>+#define HEVC_SHERR_SLICE_TYPE                                          0x=
00003003
>+#define HEVC_SHERR_FIRST_SLICE_IS_DEPENDENT_SLICE
>0x00003004
>+#define HEVC_SHERR_SHORT_TERM_REF_PIC_SET_SPS_FLAG
>0x00003005
>+#define HEVC_SHERR_SHORT_TERM_REF_PIC_SET
>0x00003006
>+#define HEVC_SHERR_SHORT_TERM_REF_PIC_SET_IDX
>0x00003007
>+#define HEVC_SHERR_NUM_LONG_TERM_SPS                                   0x=
00003008
>+#define HEVC_SHERR_NUM_LONG_TERM_PICS
>0x00003009
>+#define HEVC_SHERR_LT_IDX_SPS_IS_OUT_OF_RANGE
>0x0000300A
>+#define HEVC_SHERR_DELTA_POC_MSB_CYCLE_LT
>0x0000300B
>+#define HEVC_SHERR_NUM_REF_IDX_L0_ACTIVE_MINUS1
>0x0000300C
>+#define HEVC_SHERR_NUM_REF_IDX_L1_ACTIVE_MINUS1
>0x0000300D
>+#define HEVC_SHERR_COLLOCATED_REF_IDX                                  0x=
0000300E
>+#define HEVC_SHERR_PRED_WEIGHT_TABLE                                   0x=
0000300F
>+#define HEVC_SHERR_FIVE_MINUS_MAX_NUM_MERGE_CAND
>0x00003010
>+#define HEVC_SHERR_SLICE_QP_DELTA                                      0x=
00003011
>+#define HEVC_SHERR_SLICE_QP_DELTA_IS_OUT_OF_RANGE
>0x00003012
>+#define HEVC_SHERR_SLICE_CB_QP_OFFSET                                  0x=
00003013
>+#define HEVC_SHERR_SLICE_CR_QP_OFFSET                                  0x=
00003014
>+#define HEVC_SHERR_SLICE_BETA_OFFSET_DIV2                              0x=
00003015
>+#define HEVC_SHERR_SLICE_TC_OFFSET_DIV2                                0x=
00003016
>+#define HEVC_SHERR_NUM_ENTRY_POINT_OFFSETS
>0x00003017
>+#define HEVC_SHERR_OFFSET_LEN_MINUS1                                   0x=
00003018
>+#define HEVC_SHERR_SLICE_SEGMENT_HEADER_EXTENSION_LENGTH
>0x00003019
>+#define HEVC_SHERR_WRONG_POC_IN_STILL_PICTURE_PROFILE
>0x0000301A
>+#define HEVC_SHERR_SLICE_TYPE_ERROR_IN_STILL_PICTURE_PROFILE
>0x0000301B
>+#define HEVC_SHERR_PPS_ID_NOT_EQUAL_PREV_VALUE
>0x0000301C
>+#define HEVC_SPECERR_OVER_PICTURE_WIDTH_SIZE
>0x00004000
>+#define HEVC_SPECERR_OVER_PICTURE_HEIGHT_SIZE
>0x00004001
>+#define HEVC_SPECERR_OVER_CHROMA_FORMAT
>0x00004002
>+#define HEVC_SPECERR_OVER_BIT_DEPTH                                    0x=
00004003
>+#define HEVC_SPECERR_OVER_BUFFER_OVER_FLOW
>0x00004004
>+#define HEVC_SPECERR_OVER_WRONG_BUFFER_ACCESS
>0x00004005
>+#define HEVC_ETCERR_INIT_SEQ_SPS_NOT_FOUND
>0x00005000
>+#define HEVC_ETCERR_DEC_PIC_VCL_NOT_FOUND
>0x00005001
>+#define HEVC_ETCERR_NO_VALID_SLICE_IN_AU                               0x=
00005002
>+#define HEVC_ETCERR_INPLACE_V                                          0x=
0000500F
>+
>+#define AVC_SPSERR_SEQ_PARAMETER_SET_ID                                0x=
00001000
>+#define AVC_SPSERR_CHROMA_FORMAT_IDC                                   0x=
00001001
>+#define AVC_SPSERR_PIC_WIDTH_IN_LUMA_SAMPLES
>0x00001002
>+#define AVC_SPSERR_PIC_HEIGHT_IN_LUMA_SAMPLES
>0x00001003
>+#define AVC_SPSERR_CONF_WIN_LEFT_OFFSET                                0x=
00001004
>+#define AVC_SPSERR_CONF_WIN_RIGHT_OFFSET
>0x00001005
>+#define AVC_SPSERR_CONF_WIN_TOP_OFFSET                                 0x=
00001006
>+#define AVC_SPSERR_CONF_WIN_BOTTOM_OFFSET
>0x00001007
>+#define AVC_SPSERR_BIT_DEPTH_LUMA_MINUS8
>0x00001008
>+#define AVC_SPSERR_BIT_DEPTH_CHROMA_MINUS8
>0x00001009
>+#define AVC_SPSERR_SPS_MAX_DEC_PIC_BUFFERING
>0x0000100B
>+#define AVC_SPSERR_SPS_MAX_NUM_REORDER_PICS
>0x0000100C
>+#define AVC_SPSERR_SCALING_LIST                                        0x=
00001014
>+#define AVC_SPSERR_GBU_PARSING_ERROR                                   0x=
00001019
>+#define AVC_SPSERR_VUI_ERROR                                           0x=
0000101B
>+#define AVC_SPSERR_ACTIVATE_SPS                                        0x=
0000101C
>+#define AVC_PPSERR_PPS_PIC_PARAMETER_SET_ID
>0x00002000
>+#define AVC_PPSERR_PPS_SEQ_PARAMETER_SET_ID
>0x00002001
>+#define AVC_PPSERR_NUM_REF_IDX_L0_DEFAULT_ACTIVE_MINUS1
>0x00002002
>+#define AVC_PPSERR_NUM_REF_IDX_L1_DEFAULT_ACTIVE_MINUS1
>0x00002003
>+#define AVC_PPSERR_INIT_QP_MINUS26                                     0x=
00002004
>+#define AVC_PPSERR_PPS_CB_QP_OFFSET                                    0x=
00002006
>+#define AVC_PPSERR_PPS_CR_QP_OFFSET                                    0x=
00002007
>+#define AVC_PPSERR_SCALING_LIST                                        0x=
0000200E
>+#define AVC_PPSERR_MORE_RBSP_DATA_ERROR
>0x00002012
>+#define AVC_PPSERR_PPS_PIC_PARAMETER_SET_ID_RANGE_OUT
>0x00002013
>+#define AVC_PPSERR_PPS_SEQ_PARAMETER_SET_ID_RANGE_OUT
>0x00002014
>+#define
>AVC_PPSERR_NUM_REF_IDX_L0_DEFAULT_ACTIVE_MINUS1_RANGE_OUT
>0x00002015
>+#define
>AVC_PPSERR_NUM_REF_IDX_L1_DEFAULT_ACTIVE_MINUS1_RANGE_OUT
>0x00002016
>+#define AVC_PPSERR_PPS_CB_QP_OFFSET_RANGE_OUT
>0x00002017
>+#define AVC_PPSERR_PPS_CR_QP_OFFSET_RANGE_OUT
>0x00002018
>+#define AVC_SHERR_SLICE_PIC_PARAMETER_SET_ID
>0x00003000
>+#define AVC_SHERR_ACTIVATE_PPS                                         0x=
00003001
>+#define AVC_SHERR_ACTIVATE_SPS                                         0x=
00003002
>+#define AVC_SHERR_SLICE_TYPE                                           0x=
00003003
>+#define AVC_SHERR_FIRST_MB_IN_SLICE                                    0x=
00003004
>+#define AVC_SHERR_RPLM                                                 0x=
00003006
>+#define AVC_SHERR_LT_IDX_SPS_IS_OUT_OF_RANGE
>0x0000300A
>+#define AVC_SHERR_NUM_REF_IDX_L0_ACTIVE_MINUS1
>0x0000300C
>+#define AVC_SHERR_NUM_REF_IDX_L1_ACTIVE_MINUS1
>0x0000300D
>+#define AVC_SHERR_PRED_WEIGHT_TABLE                                    0x=
0000300F
>+#define AVC_SHERR_SLICE_QP_DELTA                                       0x=
00003011
>+#define AVC_SHERR_SLICE_BETA_OFFSET_DIV2                               0x=
00003015
>+#define AVC_SHERR_SLICE_TC_OFFSET_DIV2                                 0x=
00003016
>+#define AVC_SHERR_DISABLE_DEBLOCK_FILTER_IDC
>0x00003017
>+#define AVC_SPECERR_OVER_PICTURE_WIDTH_SIZE
>0x00004000
>+#define AVC_SPECERR_OVER_PICTURE_HEIGHT_SIZE
>0x00004001
>+#define AVC_SPECERR_OVER_CHROMA_FORMAT
>0x00004002
>+#define AVC_SPECERR_OVER_BIT_DEPTH                                     0x=
00004003
>+#define AVC_SPECERR_OVER_BUFFER_OVER_FLOW
>0x00004004
>+#define AVC_SPECERR_OVER_WRONG_BUFFER_ACCESS
>0x00004005
>+#define AVC_ETCERR_INIT_SEQ_SPS_NOT_FOUND
>0x00005000
>+#define AVC_ETCERR_DEC_PIC_VCL_NOT_FOUND
>0x00005001
>+#define AVC_ETCERR_NO_VALID_SLICE_IN_AU                                0x=
00005002
>+#define AVC_ETCERR_ASO                                                 0x=
00005004
>+#define AVC_ETCERR_FMO                                                 0x=
00005005
>+#define AVC_ETCERR_INPLACE_V                                           0x=
0000500F
>+
>+/* WAVE6 WARNING ON DECODER (WARN_INFO) */
>+#define HEVC_SPSWARN_MAX_SUB_LAYERS_MINUS1
>0x00000001
>+#define HEVC_SPSWARN_GENERAL_RESERVED_ZERO_44BITS
>0x00000002
>+#define HEVC_SPSWARN_RESERVED_ZERO_2BITS
>0x00000004
>+#define HEVC_SPSWARN_SUB_LAYER_RESERVED_ZERO_44BITS
>0x00000008
>+#define HEVC_SPSWARN_GENERAL_LEVEL_IDC                                 0x=
00000010
>+#define HEVC_SPSWARN_SPS_MAX_DEC_PIC_BUFFERING_VALUE_OVER
>0x00000020
>+#define HEVC_SPSWARN_RBSP_TRAILING_BITS                                0x=
00000040
>+#define HEVC_SPSWARN_ST_RPS_UE_ERROR                                   0x=
00000080
>+#define HEVC_SPSWARN_EXTENSION_FLAG                                    0x=
01000000
>+#define HEVC_SPSWARN_REPLACED_WITH_PREV_SPS
>0x02000000
>+#define HEVC_PPSWARN_RBSP_TRAILING_BITS                                0x=
00000100
>+#define HEVC_PPSWARN_REPLACED_WITH_PREV_PPS
>0x00000200
>+#define HEVC_SHWARN_FIRST_SLICE_SEGMENT_IN_PIC_FLAG
>0x00001000
>+#define HEVC_SHWARN_NO_OUTPUT_OF_PRIOR_PICS_FLAG
>0x00002000
>+#define HEVC_SHWARN_PIC_OUTPUT_FLAG                                    0x=
00004000
>+#define HEVC_SHWARN_DUPLICATED_SLICE_SEGMENT
>0x00008000
>+#define HEVC_ETCWARN_INIT_SEQ_VCL_NOT_FOUND
>0x00010000
>+#define HEVC_ETCWARN_MISSING_REFERENCE_PICTURE
>0x00020000
>+#define HEVC_ETCWARN_WRONG_TEMPORAL_ID
>0x00040000
>+#define HEVC_ETCWARN_ERROR_PICTURE_IS_REFERENCED
>0x00080000
>+#define HEVC_SPECWARN_OVER_PROFILE                                     0x=
00100000
>+#define HEVC_SPECWARN_OVER_LEVEL                                       0x=
00200000
>+#define HEVC_PRESWARN_PARSING_ERR                                      0x=
04000000
>+#define HEVC_PRESWARN_MVD_OUT_OF_RANGE
>0x08000000
>+#define HEVC_PRESWARN_CU_QP_DELTA_VAL_OUT_OF_RANGE
>0x09000000
>+#define HEVC_PRESWARN_COEFF_LEVEL_REMAINING_OUT_OF_RANGE
>0x0A000000
>+#define HEVC_PRESWARN_PCM_ERR                                          0x=
0B000000
>+#define HEVC_PRESWARN_OVERCONSUME                                      0x=
0C000000
>+#define HEVC_PRESWARN_END_OF_SUBSET_ONE_BIT_ERR
>0x10000000
>+#define HEVC_PRESWARN_END_OF_SLICE_SEGMENT_FLAG
>0x20000000
>+
>+#define AVC_SPSWARN_RESERVED_ZERO_2BITS                                0x=
00000004
>+#define AVC_SPSWARN_GENERAL_LEVEL_IDC                                  0x=
00000010
>+#define AVC_SPSWARN_RBSP_TRAILING_BITS                                 0x=
00000040
>+#define AVC_PPSWARN_RBSP_TRAILING_BITS                                 0x=
00000100
>+#define AVC_SHWARN_NO_OUTPUT_OF_PRIOR_PICS_FLAG
>0x00002000
>+#define AVC_ETCWARN_INIT_SEQ_VCL_NOT_FOUND
>0x00010000
>+#define AVC_ETCWARN_MISSING_REFERENCE_PICTURE
>0x00020000
>+#define AVC_ETCWARN_ERROR_PICTURE_IS_REFERENCED
>0x00080000
>+#define AVC_SPECWARN_OVER_PROFILE                                      0x=
00100000
>+#define AVC_SPECWARN_OVER_LEVEL                                        0x=
00200000
>+#define AVC_PRESWARN_MVD_RANGE_OUT                                     0x=
00400000
>+#define AVC_PRESWARN_MB_QPD_RANGE_OUT
>0x00500000
>+#define AVC_PRESWARN_COEFF_RANGE_OUT                                   0x=
00600000
>+#define AVC_PRESWARN_MV_RANGE_OUT                                      0x=
00700000
>+#define AVC_PRESWARN_MB_SKIP_RUN_RANGE_OUT
>0x00800000
>+#define AVC_PRESWARN_MB_TYPE_RANGE_OUT
>0x00900000
>+#define AVC_PRESWARN_SUB_MB_TYPE_RANGE_OUT
>0x00A00000
>+#define AVC_PRESWARN_CBP_RANGE_OUT                                     0x=
00B00000
>+#define AVC_PRESWARN_INTRA_CHROMA_PRED_MODE_RANGE_OUT
>0x00C00000
>+#define AVC_PRESWARN_REF_IDX_RANGE_OUT
>0x00D00000
>+#define AVC_PRESWARN_COEFF_TOKEN_RANGE_OUT
>0x00E00000
>+#define AVC_PRESWARN_TOTAL_ZERO_RANGE_OUT
>0x00F00000
>+#define AVC_PRESWARN_RUN_BEFORE_RANGE_OUT
>0x01000000
>+#define AVC_PRESWARN_OVERCONSUME                                       0x=
01100000
>+#define AVC_PRESWARN_MISSING_SLICE                                     0x=
01200000
>+
>+/* WAVE6 WARNING ON ENCODER (WARN_INFO) */
>+#define WAVE6_ETCWARN_FORCED_SPLIT_BY_CU8X8
>0x000000001
>+
>+#endif /* __WAVE6_VPUERROR_H__ */
>--
>2.31.1
>


