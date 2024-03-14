Return-Path: <devicetree+bounces-50364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC2687B5EC
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 01:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 671461C211F0
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 00:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABACA1A38D6;
	Thu, 14 Mar 2024 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="WPiHaKv6"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2077.outbound.protection.outlook.com [40.107.114.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC4524C
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 00:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710377633; cv=fail; b=Gpe81ciMPwZxS/ynED8sZz6fq4tmkVjyfFv6uSd0nyRfBYx1y+5tVEPCh2EgiZimGGQR4pxgrdkws8/TsBydXrGIulGVhZmB+jUAUoQ1/urOaO5aeTETHPsRSJCcfxMtsTvF2GmXfL04Dt2CkrM6IoTLbqphR1N8LSzNpSZZui0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710377633; c=relaxed/simple;
	bh=5q7nsZaApG7dax8RbpTXolRzdFNmhum2kPQv1vbJia0=;
	h=Message-ID:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=GNQPvYafo8I64GS8IX/Cm2UDUSix4IpHL97i4WioZllXpcmwS0lMts3gufdHBlwPE5QEeja8OpMkYonO9gwZZ+jy7mF9SogGzXmHBd6K9cPpmukATZHTkppIh8VKKUJ4XcZSxZQoAHXCxkJJLi5fn4oWsWtU3eh/BNBVeCguQ4Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=WPiHaKv6; arc=fail smtp.client-ip=40.107.114.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwV8zrryBy7Oey85s8SZmDOMrGLtNOCGsDEYrXWyJP2AqED0gPGeWW1S1jlr1l0oowDN4/Fs6A9+bHyz8rWaoU/M4poQZidKe4KtZzU67Oeh/+dav2rINCNd7oT1PVsnZlpi+fRFXK6BPqe2uwsnR2wJ83ozQY+OoyvITL2oEzoG1+7JiXzxv8tQ07pfjbCk6JAET9ZR/anlq6ReYIbDtXykgmLPOGSLB3zl18IynMjGV2mf6L8EyA2AQf6C2DI0/rBta/AN8suennX0z0I2Vpkt/koIeterwpBwOT3h8gbI2sj1vhOv5JO7POmzydmdKnXTBmmPMILB4HFk7CRiJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5q7nsZaApG7dax8RbpTXolRzdFNmhum2kPQv1vbJia0=;
 b=PRuRHRq9dBqD9YlhaOpn+stRo4J9gOa4uWeXKFrbPkWAemH6W+6Np9G14RNgrE8u7CcpvUthWC5kSJ/2ltK4Y5OtNnC0y2pNgYjM4cl2oFqdL7fYg3ngjehBcWCosASyBffnOOAHTxqJe66L79z/xGDVrqs2D1Ic+rliT/P56nHWbknntx5vbXHzE34dAS+mLIlUgCcQbIZMlKAb5WFvIV6Ytca863v4S6Tb4f7yIb4hsVB4z8388ouWvkAB/43Kkp5twdakIyCTaArWzcUGHjoMUPmd/WfMs+LQpY0N2Q/ju80OlI6CH1RinYhUyjQzPjN32orw1sFjq2GgUtpQIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5q7nsZaApG7dax8RbpTXolRzdFNmhum2kPQv1vbJia0=;
 b=WPiHaKv6j1AAPdCHb/mk4K2P1k3ieuAwFH2IkFlgYn5jlShDaG+0EYrz6Z4GKBmEZm7QYN23RI2D62YuErL/p3TM4T4Xr5ZPIO0PffViYqmGspuDKYnX7cbo7wXekTIMItl0raTVTy6iD5hTlu9GJb6qkuvO5HOeg73QEQcoaz0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11289.jpnprd01.prod.outlook.com
 (2603:1096:400:3c4::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 00:53:47 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::131e:55c0:a4a0:713b]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::131e:55c0:a4a0:713b%7]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 00:53:47 +0000
Message-ID: <87y1aleiqt.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>,
	Pierre-Louis Bossart
 <pierre-louis.bossart@linux.intel.com>,
	Bard Liao
 <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley
 <conor+dt@kernel.org>,
	Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map more generic
In-Reply-To: <1jh6haih3f.fsf@starbuckisacylon.baylibre.com>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
	<87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
	<e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
	<87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
	<7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
	<1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
	<b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
	<1jh6haih3f.fsf@starbuckisacylon.baylibre.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Thu, 14 Mar 2024 00:53:47 +0000
X-ClientProxiedBy: TYAPR03CA0009.apcprd03.prod.outlook.com
 (2603:1096:404:14::21) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11289:EE_
X-MS-Office365-Filtering-Correlation-Id: b54d0e35-e6e4-4333-7a95-08dc43c134b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	YDyTf+UrzzCp+dL4aYuIfymA3imJBt7ltlZvxtdgjTy8DeqipxhNUXjlaGyX0cVN/ol+mGjxmrdXBq0SlLj/ZM4eqq9RteoFSNA7ftGsOtMfNMTiCpOH1zaxuyxHsUAbfJ08z1jrUYtlguMmS+yvo/efJFigsHedIe2jr2o/I3ltU8n55CmwaNB0BfLhynKLWuITBwv4ZW6uHjH7Yjd+RmQgKtoziDCb+cfSEvz0dkmI5J5QoG1nkic1a+R0WBO+lVOf7Avt687lj+bOBvOe7dU8FH5VDGMBQEEZJhlHAYqtAirkKrHgUdFeYxC1kcrt0YiAaVm2QWab1AlIm3aG6BbsXp0Kg9Nslef4zqJrHETaAk2trRemI2YOQxuPJAGnZsFpBvd139x+ROck0Tqt8/u8PpYzChNZA/vRnQKvbKQMU/P8Y4ElMHmgaBy1VbcyqJp+FB3Md9vjBALim24GK0BvbpKr16A8eBMqmfcNT45+H5zV0WRirWu/fexDRbQSyibyGVv+wtk/tNq6baMF70SbkU0eWAdI1NODd/cFCQ/Y/UyoOgVv2CeqsTc7RFDBJTVW7VRBnVea3QmJLqP5V4MIcAA3dx0sXAini3gt3afZWYY0ExOtcpL+WIOvrvJ+QiGH5jyyNE2L9TTazfq7hp9NZ7ZxTRMYB4bytIyAWHWGhVpdyBrPXZf5i+qUT3qst1fJh9Pkq3Bptbo/yMt+yQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(1800799015)(7416005)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?wniTaOLbfauE/ql+gAzsONro2x02WW2NyDXmV7Qf97nLq1V7kh+hchn8MXnA?=
 =?us-ascii?Q?ATrdiQToFDUFIi9vsfhZ0IKAZkiKll0VWi0OF1kLytATUox+586wfJeSFcp5?=
 =?us-ascii?Q?Zg5+cp32/GT4DYgfNgkXvdZ+hRtxrLtgesTep1+MPmpdEdB7iFSv0+LFpJuc?=
 =?us-ascii?Q?ISnLTJE21PePk+fjF8GgnBpwTQDXblr9nxKXKpf/mVgk/xjB5Ny3WbGgWYqX?=
 =?us-ascii?Q?RxWCERQ8cwj5PoPRe3E7Du5E1F+g+2SdQlyqDgVpCTkhzQInaEckjuuBxxvK?=
 =?us-ascii?Q?5oH8sp6r+buthm0FWhm1xJZoq6lYUTU6lUIT2LH1dNPFymLcb8wWkAUrriOn?=
 =?us-ascii?Q?du+FK32D3lVhTxgaTmzu1rFrnwIZ0HbqGXR77V+gZh86kkc4lGbSRD60A+mB?=
 =?us-ascii?Q?2vafo8SJXm2sRplnlbyIXKxAv6qv+YmrcIw7NEPm9h8z/CjF0C9YLeQ5u3mS?=
 =?us-ascii?Q?vEgLZwrnUpJ0O6mAlRbIEg/9i4Fn59k8RK8EvKAGKvfDPmyJ7DsNKzh3oDDj?=
 =?us-ascii?Q?Jti5diSZXgvzVQw+5yYkkeuFj+mzTsPrUEywC52u/g1H1IQaBOr6aLP04Q/S?=
 =?us-ascii?Q?OQSiH49jLrIqA1xatYf1+YNyIs5uATCQAFIkoKKX/z2aayHEvp17ot3x3CdJ?=
 =?us-ascii?Q?Ed5sTcdoqHSYY+VO/D2sz13pPsE7ID82qzxz5/NOzKRHCOnM8UAsAu8PtG1J?=
 =?us-ascii?Q?4qThuYB2xF91AJheqYP+c5oRGg48LzxkDVUO47tJEp7gqkh9yUJJ52xdnrnN?=
 =?us-ascii?Q?3kyqm0kL4+JzTefMV30TIKb8jSftGtHIieV6MyuGRpQ94NftdrKUOXeRZfyE?=
 =?us-ascii?Q?WyeiZ/MUScu4e6zD30yFZbCeYYrFcsY6FrWI1IWPKbQlYEV0mjTdRgV5aDbo?=
 =?us-ascii?Q?P7PgCladvTFQdeG6TzPC9axGrHRkPGWx300tMEd4ljO3WOz2TlsQ/e+BRnJE?=
 =?us-ascii?Q?C2ojsCELitPX0gu1FauAKNYulEbVUwnVNr5l5FsbVuQ7v3K3/r/9bkTon60N?=
 =?us-ascii?Q?8IlVStnZMXk/gykrF1iD+8Gqs37sQr0EYo/vU8DKy98avKB4bLS1DLDNnX7n?=
 =?us-ascii?Q?stuOocZkDA9ozkioChUGQx6ICKnX+kYQ7gCNb2Ou/7Mbvit+KoPOpEqZBSmL?=
 =?us-ascii?Q?tuonYt1LgtOSK92JrUpJz4fdqeiSxD2tJEZmbpaQJMqnKlfDEynwIeXDk2lb?=
 =?us-ascii?Q?u4iwY3eflTQPEk5MtPiRSh/JIo9oL8EH56cBudw0hVrgZWpq/GUKvWJf/L/v?=
 =?us-ascii?Q?ObsYRNnh1yfx6UnMa3qWlZG7tklQtZG2K5K28ylYfOZne08uImxgEtYogf8G?=
 =?us-ascii?Q?Ry7730dT6CLfLFEz+GCzgJWnpB7TEYB6CmIXMUHpESX1NH4dypsr/MImy4ch?=
 =?us-ascii?Q?PY1Gnt7T3Ff0LlcQnlgivRZDDRS5Imgkqx77j6FZpxluofAP7Dv9UcmjFOUB?=
 =?us-ascii?Q?nz4u7Gkp3DXAxoIGAlBlaIBRuIaD47ZJjTEaF/9p7cKuoxluPdxsZphxMKf+?=
 =?us-ascii?Q?MlvS2Rkg/x05V2uxYjeSHnI0AP6Zdo+JJrX1eyejxQrJHcPIZyXAV8/+IeLD?=
 =?us-ascii?Q?N+FC7yCTxIsv4t1cmEcapnpfE2f0esIGvjFmm3f74eoVKYxxASZdtltie73t?=
 =?us-ascii?Q?VVFgyhw7HUb40rcMsp2DES0=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b54d0e35-e6e4-4333-7a95-08dc43c134b7
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 00:53:47.3121
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0++5x7PQ4a+65OBMyQFdv5xqFu8xZIwciTtUJcYScVYSmZBtXrZaOFXmLww0xA9MOl8/RKQa6qvelrKBnNQVShwcXSyL3y6R5b0ytlB7jrMxm+FA3/j9k5kwxdTZAZl1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11289


Hi Jerome

> Fragment is here:
(snip)
> I'll continue to check but this is apparently related to the options
> turned on by the debug fragment. Maybe it could be interesting to check
> another non-intel SoC manufacturer using DPCM with this fragment ?
> (another device relying on cleared ch_maps - Renesas and/or MTK maybe ?)

I tryed to add your debug fragment into my normal defconfig.
The kernel size indeed become very huge, and boot process becomes slow,
but kernel start works, and DPCM test could work for me.

I tested on v6.8 Kernel and Renesas ULCB-KF board with DPCM sound settings,
and with ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dtsi
which is using Multi-CPU/Codec, DPCM, Codec2Codec, etc.

Thank you for your help !!

Best regards
---
Renesas Electronics
Ph.D. Kuninori Morimoto

