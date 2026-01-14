Return-Path: <devicetree+bounces-254840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CB6D1D146
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DA5AB3017F98
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B195A37F106;
	Wed, 14 Jan 2026 08:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="uvXTfPF+"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010001.outbound.protection.outlook.com [40.93.198.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE9137F721;
	Wed, 14 Jan 2026 08:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378781; cv=fail; b=Nm3f079X4VQyCoFFshBBO6DU+0hAT8bZhOCYmw7ey7hYtJ3xfgexiQwlDs1gpVzDckl76w+ItBOGF0cxr8uYSzRkue+y0tlll9bX8mtLiNhCZF+PecbDLxmuWjYta8gFhjdqw5p1wCZrWLv7TdSsfVaakIwgsI6WcOyKh4knkZk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378781; c=relaxed/simple;
	bh=AaJEB5MlneK2addV3lOLdsVLayY8HT1KVyyoOXvs4TM=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ZVAMo7SY6MDVsg4WkyMUapIbZ04x9cXoUO2SsQpdtfzn1C7zVudJR4pkvjoosYqzyvAzC0W4J8M6z+ALAsahHYrFvPdak5e4uabXsJZbM/UNB89MramkFgLtB/hLZgO8gg0F1PhHd6dgSikzC+wL7jDGZuRf6osk7SiThUvbfUQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=uvXTfPF+; arc=fail smtp.client-ip=40.93.198.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O2D3xgEVWUdSnHsNO9cb1ttxmSaOediPgK6Yze99QC7oC+f1ODdZuhhpdCMdYNBVwUXGhVV16bgfu96HwqBB6y+h0/GPEWjjl1mWpX35bPYoBGvg6lWQotab18JMZTjkOQLP8hJaJkmGBYkYyFLJlXMAKcDZ8MpKi+Z0K+lip7Vk0DykubHfI4CWiq3qMcc3hVnj8rYXTFiSocVEJBBqRj83HdZ9WpqRX0SYkcyVXM1MUHpjzcutLU/bSVNr/FN1fcq1gt0rWoVcSTI8fyEmhM0+nddhQ9BeE1SzRzA5VlGir23iojPuojM9MB7LilJkBt6RCRrvZGFss2YUTPgpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AaJEB5MlneK2addV3lOLdsVLayY8HT1KVyyoOXvs4TM=;
 b=ieh6quOspBCOn24wk5pTVvdzsyGqNn0vnxshh69sCEA/QfkARZZPJtp6YSmfuFy00n6yqimvAa4aO68itTpE7lhyUykfaYiY1r9mxC7DyuuPtqSXn0tp3ff25lB7FH+Xv05zuCFH2txsktHCGGfucopmkR8lGOdgW1L/oqGF2DC/SQs9Ww8zYn0y91lriN9Wtnzaa15MI33xK7DwT+ZfApuz6dbZIsjLH5OnNPPf9PBuzTXepdq8jSklrpz5gS+eehtoSmyJVGGUe1IP9vroGQHly9Nc3rPIncQuYnZ3yOq0+s1ildDk0jnciXzfGhSaVS03PXBIbr7z6NpXyukZdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaJEB5MlneK2addV3lOLdsVLayY8HT1KVyyoOXvs4TM=;
 b=uvXTfPF+vwdFtYiayi6ujzWJq6uPSwfw7l/KgPZvyVjqtKzvRAvpv/CGwUUoZMb8f2+E8ByOoV3xU7MdEyBTALh/zWRlgv/dIP+9cBamSlpG1FcZP0ZxHTnI80OU6u6/mIUyt148nBEM5GSHCx1WnZmAPwLD4aIfB5sbLqB0+s4/sBIv1zcGkLiEyCPAUaA0100yJIfdZJ4lvBbyJ8liRfHRJSAY/ZyJiE8fauDeHtPCjGJSLkpfBMeMj7mkYzm3nQ+obTCIPr63+IOaN8T12ePug45o5nT8FEzj6TnPrqNO/EpxtS1uFx3hG91UI64874TRJSyb0h1/FZ6s4g+Aaw==
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by CH0PR03MB6146.namprd03.prod.outlook.com (2603:10b6:610:d1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 08:19:35 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 08:19:35 +0000
From: "Ng, Tze Yee" <tze.yee.ng@altera.com>
To: Dinh Nguyen <dinguyen@kernel.org>, "Ng, Tze Yee" <tze.yee.ng@altera.com>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: socfpga: agilex: add emmc support
Thread-Topic: [PATCH] arm64: dts: socfpga: agilex: add emmc support
Thread-Index: AQHcg3SEBDkD+2GAh0SVgKxhXxwWrLVQZIeAgADxlwA=
Date: Wed, 14 Jan 2026 08:19:35 +0000
Message-ID: <055d2e9d-ec73-4f9e-853c-68a4e64be653@altera.com>
References:
 <df9d1dbd52f6b21d660e6f0910215aba1e6a3841.1768187095.git.tzeyee.ng@altera.com>
 <e781a5d3-4c38-4547-89ba-168c6ee1e018@kernel.org>
In-Reply-To: <e781a5d3-4c38-4547-89ba-168c6ee1e018@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB5950:EE_|CH0PR03MB6146:EE_
x-ms-office365-filtering-correlation-id: f26c974d-c9a3-4c82-5082-08de5345a6f8
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?QUtlL01rSzNINlZEbGZ1L0cyZHBiV215Z0c2QWhEeGxTWEhPVHhlNFl4OE0y?=
 =?utf-8?B?WXUzbXl6clBmNGM5Uk8xcEhVdkdWdW9MV0NiKzFBODc5bE9uUTBwVE1NeWpN?=
 =?utf-8?B?QXA5ZSszNzl0WVV3K2F2aE5va0FTTzVHOUQzTzNpdU9sWVNid1VyT2lBdjZQ?=
 =?utf-8?B?SUFOK2J3MzUrMGx3emJ6QVk5eUlnend5eG1VZkZmOUZ0eGI4K1dhK1UzZENv?=
 =?utf-8?B?K3BQSWZVYWFTWWc3YUowZE1JbkdVcUhIb3JYRE40MmljcWVzclRGZlFCYWtx?=
 =?utf-8?B?TU9hbWpkN0tsTE40U3NyM1dGNC9sSW1DeUx0dWMwd1kxMmVFTHhqNlRodGMx?=
 =?utf-8?B?ZzJ2Z01uZyt4c3dHMitHKzhtNllodlI1U2dGekljbU5mV3R1Y0l4eDdpZUhi?=
 =?utf-8?B?dzZWdWI0ck5NeHkyVjJqOElkbEh3enFmSFE2R2E0UXpIYU9OckpyTW1ROUZh?=
 =?utf-8?B?RnN6SGVuK01ZZ0hXRW9EditkQ29mTWVLZGpveWdsR3V0RUtxeFJnd0NKNVll?=
 =?utf-8?B?eFBzRW5QZDJvazhDUXpTM2dJbllORlNFSW9ia2ZLbEdWajRNanVsUENyamR1?=
 =?utf-8?B?ZzU4QVJXY1ZpZG5icEEydUNUZnZka2E1ZmFYb0VGSGYwTFNMOE1XQ3B2QVpi?=
 =?utf-8?B?M05OV1pOcGpFUXR3NU4xc3dHcTNsaTVkbk1nVjZNOUp1ZEhFYlBVcW5PRk5l?=
 =?utf-8?B?RUtkdHNqeTlFQ3ZuN05GbTFhYkxMTGdEeVFMR210anRkdEh5bXE5ZzRzcXRV?=
 =?utf-8?B?UGJncTVRdkJmNTBqaDVtZnpleVNhRXgzZUIvVFBEZEZMVU1KWS9HNEFFYzJH?=
 =?utf-8?B?ZmxDeldscGhMRGR2L3AzVGtiSW5UWGFVWnBuMUdGbElmYTFxaFZPS3RXbDFL?=
 =?utf-8?B?V09Tb1lTcHkvbjRvMzVpZjAwQnpkeWNwL3pMUmpndUM3RW11THdJYmN0WDU0?=
 =?utf-8?B?a1NUbkFuakt0ajRieGZMQVlGOEoxdmhhTXJEaTJSWFJhSU1UV2VzL3lGVHVZ?=
 =?utf-8?B?VHNIU2FyNm1WdWc5THMwWlAvbnNYcloxenRWS2syZ0ltVEJTSUdQelFCWUU0?=
 =?utf-8?B?NG4yY1F0ZnRGL21YenhnM1hFcUxpTCs2QTM5OG1GaVp5WjlxRUhIaDUwSTd0?=
 =?utf-8?B?Mks1ekt2SjJUYlN1UmxITmFUcFpsWkZjTk9hMHNVelZjc0FwR2NocXhzeDRU?=
 =?utf-8?B?WERVRUE2blFCNjdYQkNNUHRZUUFKNisremhsam1CSS8xTTlTelFiMWp5RE4x?=
 =?utf-8?B?RUM2bFhzU2NZclpVc2VRQktkd3k2RzBkaDI0OG05Z3V1SGI4a1Z0REx6bDV0?=
 =?utf-8?B?YU11MDRoNWFGT0tOTDlmM1Exa01UVXkvcnMzSnY5S3lMOEQvTnFCTldmWUpa?=
 =?utf-8?B?Z2RwUjNEYlpXcXlwUE5DQTJsb2VwcDhpNXk5UUJ5MG5QWVhYRVhSN3NDc1dU?=
 =?utf-8?B?aElIUjlXRWpoNWtqdERZV3g1V0xOWnRKRFlpaG9XT3kyZ3ltaHEzS0d4Yk1l?=
 =?utf-8?B?bWNDeCtvWm11eS80V0lwc2w1VkY3RWN2aTVVSnFUbW94RU81cGQwaTMzemdU?=
 =?utf-8?B?MStJd0Q4QnpWU1FVcGUrTnlZWHk4T1psemc4ZlNiaTdkMTh4dDIzejVMbGNu?=
 =?utf-8?B?UW1URFJsay9zYWtlU2RpQXlhR2RMQk9VSjJpWXMvMy80YWRSbVRFM09Va0tN?=
 =?utf-8?B?NnhpcEVlVkg0MTFXUVBzZ0dUTGJKMnJVTnAxNTNDU2FOelpXN2V2ZTR4RWFN?=
 =?utf-8?B?Um9XRTQrSWsrMzVKM3k3N3FPRE4ybk92a2p0NGFzdFZmUmVxN21ldFR1R1hE?=
 =?utf-8?B?SFZqWmNGdnBxbWZ5M3BoTzVoNVdXVEFsWWVKRmphaU9Gb2U1ZVJJQ2l5SUJS?=
 =?utf-8?B?bEd3cXozUkNrTGFGd2plV1g1ajlXWGJHcGxqTmVxL1F0ZHBuYW1qRDFHa2ll?=
 =?utf-8?B?UHpTQ291QUNBQ3JZTTE5bkxLSEtVNHgxbHY0RWFuT05RdHpWeDZPSW1sdGhT?=
 =?utf-8?B?eEM1VjRwL0ZSb3hDV3hjRXJiem1QTnh5amNBU00vaGVLYXIzam43NzRZWGVK?=
 =?utf-8?Q?OlRQxR?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?V3cvekRUcHJxRDF6TmhBUlFzVlhnRDI4akhXQzhJZDNoaGZDb3VJY0pSUXJJ?=
 =?utf-8?B?aFV4akNlcnVRS2RLS01kUS9nTmYyRFhrZ2ltaFJEelY2TndNbDZLUnhNM0pi?=
 =?utf-8?B?bjEreTl6Vzlqb2xQaFMzcUloYlVNVnRBbjBYV0lOdHlIeDI5dmlkWGZoZmlw?=
 =?utf-8?B?ZDVyYzVoOEhSakZtUTFndktVcjVrR2sxSzNENnY3N2lBNHdnbmpoMTRxdC95?=
 =?utf-8?B?Zmg2N2xOaitGYkwyUm90MVdDTkMxd1d1TjE0VmpiTk1Rdy82SnhMVWF4bjlX?=
 =?utf-8?B?L2NxTzdudjFLWUVlREV6bUZkRFJhZEc5bm0wbkNReHdrVERQSjh3cGE5MW9j?=
 =?utf-8?B?UVk1eU5Fc1c4d2l4M0ZzbkJqRStiRXYrcHNHdXNnYW04Y2VQUDNpekMrUlZj?=
 =?utf-8?B?SkxzcDdtTmVnckUyK0QxT0haNXkvdURJd2pRN1RPRXR1MVQxVDlCU3JuYW11?=
 =?utf-8?B?bWVlZGptTmdNZjl2RjEzLzkyQmp4dkV2WkFKUmtnTEI2K0dSN2ZPbEpiUGJJ?=
 =?utf-8?B?NjVXZXFCZ3Qrc0s2SmI5YTRoZkpsSDlnV0lSZGNaRVU0eGEyRllyUFkxbUZm?=
 =?utf-8?B?eDBXUVJRdzVIV0pHQ2xOVkp4a20yazR1VGJnMFp5MjRWdXFXQnVwTFQ0TG9Z?=
 =?utf-8?B?UzlXODhGMWNobUY5WTJGdlR5V1JpcEVlbk5wNzgxcmNQWWZReEhHbHhVMTZl?=
 =?utf-8?B?c3liTHMvZGwyTkY3YzZqaG82Tk1LRFZDeTVYRXlDNTFiUExROHh5NzljQmRk?=
 =?utf-8?B?TGRvajROSDZYOHVhNjdVOWp5dWlYOE1vdmFycWRnenFsZWRRN3ExNkJ0RzNm?=
 =?utf-8?B?RmpVSTR1c04zYWt0Tzg5NGIySkgrRHhrMEtaN3lPMFZjcE1ILzMwWmFNaU9h?=
 =?utf-8?B?b3hzVGtEVVRFd3RSL2J0SFFDT0xuSVhZWGhoclF0Uy9ZYU5rOUsvVEtmdVNF?=
 =?utf-8?B?ankzalluaTJlYmtRVXl3MUkwTnprMWgzVHRSSEtWT2xaS3pVdGdxT2lpck13?=
 =?utf-8?B?RFg2Yk9IMEh4Uko3TGFoK2xxRHpYcmM5M1A4OVdQM1BhUHlBamQwaHZPNnp2?=
 =?utf-8?B?S29ZMUNpRWgwOFpabWlVVVFLRW1ya1VCTlVqcklETGl6bHBteW1uZUk0Umk5?=
 =?utf-8?B?ZFFjRHlQTklKVWJnaHRHSmZ4blR0N0twVlFaaG5HaFZXekE1ajVZNDZrZFha?=
 =?utf-8?B?V043QkloczFJc0RGTWNBZ0NSMWZIQlZZNUEvQXlHa0J0UmdsQjdsdkVXSDNS?=
 =?utf-8?B?bEpKcUs1UmI2OXNyNERYTHFDc2x4VDVoS2ptaWRnRzJsYWl0YXc2QnJwcGI2?=
 =?utf-8?B?ZUZ3bzlUS29GVFhCcUtadStoZVhEN3Yra1BrNDJLV2pQZDdEeVROaUlDUU9J?=
 =?utf-8?B?citkOFRLN3VPbWFZczU2M2NMTkp6bmxvTDJSSXlBVlE1TUxVNm1lYlp1NTZ4?=
 =?utf-8?B?NHJWNElyQ0hzMmFwK0hmcnBDc1VKbzRPTkpqTnE4WHkreks0aGxKMFczTnlM?=
 =?utf-8?B?N0lsZFNRWWpnNHk1MWx0MFJqTVdaTjFqQ1RSYk5RcW5QUmJrNjhjQTd2WGtm?=
 =?utf-8?B?OE1haG16S2ZhcTBDVFdNVHFYclg3emQwbmk4Qk1qN2w0MmpicUo2SC83RkxV?=
 =?utf-8?B?UWxPRkFqUXRFK05JVGU2MTFZaGVTRzFma0ROajIzSjZEaWNzUEJ5UkEyRFJ0?=
 =?utf-8?B?ejdJeTlKaWVrLzl1WVNFMnB3azZrQ2ZKVXlGN1NhSmxVbTZId3d4bmZXQVl5?=
 =?utf-8?B?UHpnYVZVcWpadnpycm5EeXNMWEM2Z3BPbWZ6ODZ4ZERWc1FBOWVPclpkaDQ0?=
 =?utf-8?B?QlFnQ0dwMkUxM05zdEsxNkZEdmJsOGVROUxnUGRNbC84MXVlRU1TazJQVW10?=
 =?utf-8?B?bU1QUHJlR243QmRKUVJyUmlHV3RTTzk5dmFqTjY2ZFBHcXVMNlBCL1JiVFBZ?=
 =?utf-8?B?MWUyT0ppR0x5MmMxejZ5YkxDWXlkYWlNYyt6NURiaFp3clFERG5BcDNMaHFw?=
 =?utf-8?B?aCtreUxmS29hbHdVRVZ2ZFgyS3BZQ1kyakRrZktza3NzVHlPcUlqMU9oYUFF?=
 =?utf-8?B?dExXSlY4endiZTArTFg3eVNxMnVUQmNlQUlYWDJnZFdFWXNheFVCVXNFZFRa?=
 =?utf-8?B?U1U1K3IydEQ2UVUyVzNDeGd3N3ZWcHZINW56UGtrOWZ2dzlhL1NobXdsWTc0?=
 =?utf-8?B?YWNxTUNXeDl3L1p6VkNxQ0dycUJzcVBEeHZZRDJUd3RmV3BUZXFmdUdXZWZC?=
 =?utf-8?B?ZjR6czJkbTd4WTN4OWNjVHVmRU9XRVF2ZHY3ZUlwb2dKN2FQVGlzSGRyZ24r?=
 =?utf-8?B?QXRNUUJCRTJyb0FIQ0srbEM3NC9ENHFEWmw0elBldjJLSTR1T1JTUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <18114577A452964BB73438115B958191@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f26c974d-c9a3-4c82-5082-08de5345a6f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 08:19:35.1869
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNEtM9mK/dGHl90ZQf2ru+4rruFX2JrJtprzrRH1qjuQxP3y6jaJtCQh1ra07rODEfC0Kato2VmfYWUAG5b3JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6146

T24gMTQvMS8yMDI2IDE6NTQgYW0sIERpbmggTmd1eWVuIHdyb3RlOg0KPiBbQ0FVVElPTjogVGhp
cyBlbWFpbCBpcyBmcm9tIG91dHNpZGUgeW91ciBvcmdhbml6YXRpb24uIFVubGVzcyB5b3UgdHJ1
c3QgDQo+IHRoZSBzZW5kZXIsIGRvIG5vdCBjbGljayBvbiBsaW5rcyBvciBvcGVuIGF0dGFjaG1l
bnRzIGFzIGl0IG1heSBiZSBhIA0KPiBmcmF1ZHVsZW50IGVtYWlsIGF0dGVtcHRpbmcgdG8gc3Rl
YWwgeW91ciBpbmZvcm1hdGlvbiBhbmQvb3IgY29tcHJvbWlzZSANCj4geW91ciBjb21wdXRlci5d
DQo+IA0KPiBPbiAxLzExLzI2IDIxOjM1LCB0emV5ZWUubmdAYWx0ZXJhLmNvbSB3cm90ZToNCj4+
IEZyb206IE5nIFR6ZSBZZWUgPHR6ZXllZS5uZ0BhbHRlcmEuY29tPg0KPj4NCj4+IFRoZSBBZ2ls
ZXggZGV2a2l0IHN1cHBvcnRzIGEgc2VwYXJhdGUgTkFORC9lTU1DIGRhdWdodGVyIGNhcmQuIFRo
ZQ0KPj4gTkFORC9lTU1DIGRhdWdodGVyIGNhcmQgcmVwbGFjZXMgdGhlIFNETU1DIHNsb3QgdGhh
dCBpcyBvbiB0aGUgZGVmYXVsdA0KPj4gZGF1Z2h0ZXIgY2FyZCBhbmQgdGh1cyByZXF1aXJlcyBh
IHNlcGFyYXRlIGJvYXJkIGR0cyBmaWxlLg0KPj4NCj4+IE5ldyBlTU1DIGR0cyB3aGljaCBpcyBi
YXNlZCBvbiB0aGUgZXhpc3RpbmcgTkFORCBkdHMsIHdoaWNoIGlzDQo+PiBuZWVkZWQgdG8gY29t
cGx5IHdpdGggc3BlYyBpbiB3aGljaCBlTU1DIGJvYXJkIElEIGlzIGRlc2lnbmF0ZWQgYXMgMi4N
Cj4+DQo+IA0KPiBDYW4geW91IGVsYWJvcmF0ZSB3aGF0IHlvdSBtZWFuIGJ5IHRoaXM/IEkgZG9u
J3Qgc2VlIGEgY2hhbmdlIHRoYXQgaXMNCj4gcmVsYXRlZC4NCj4gDQo+IERpbmgNClRoZSBib2Fy
ZCBJRCBpcyB0cmFuc3BhcmVudCB0byBMaW51eCBrZXJuZWwuIFdpbGwgZHJvcCB0aGUgYm9hcmQg
SUQgDQpyZWZlcmVuY2UgZnJvbSBjb21taXQuDQo=

