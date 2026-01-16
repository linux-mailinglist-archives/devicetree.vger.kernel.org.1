Return-Path: <devicetree+bounces-255966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA79D2F0AD
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06DA6308E98C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37C37324707;
	Fri, 16 Jan 2026 09:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="sWnJcZey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7655D221D96;
	Fri, 16 Jan 2026 09:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.135.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556922; cv=fail; b=JykebLYh/jLdj6BMhPy9HCyzNQwmFYp2kM3F7VptW9wdFjoFW0oZGCdNwSdCcP8P/ftjAhhWufGBxFctr/mO/lOzkUVzr4FdccKPHzs26T6p4+pInFwR7+DgMuraDrbb93KpX63HJFuazNoPR1WeHN5jR3a/gz8qeCkFveZ2QtQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556922; c=relaxed/simple;
	bh=WXNeRZ+ulftJZWVl8I1C+DrNTxyZnEX/zeK2GWFGXzw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=qGd97JEJMFa05Ol4MCaxxZWjkP6EA1FTvBnxpMdu53HAMw/g8cWSKyjjAjiaeqDSk7LA726js5inZkPY93MhN9t10XJQbSf63HcMAzCQ9xfelXIQlytrpJhg/IT7LATo3TJ/DOzeWzmLltu2IiutZF3eLKfBtZ6ZHlvo+3OX/wE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=sWnJcZey; arc=fail smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G6c0JS782597;
	Fri, 16 Jan 2026 04:48:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=WXNeR
	Z+ulftJZWVl8I1C+DrNTxyZnEX/zeK2GWFGXzw=; b=sWnJcZeypVNcHsMNXhSta
	BrNkMjXNiCuXGbYlw/rzH32KJtxx3DT4vkhqpDC0T0T1ugt8utzEYJ+7ZSNiH9dU
	7rkukR1GOpBW8arrYgcrzG4jszefBzdB1GE2IYfK2onGELE3V99BHhvpBly2faVU
	9RKe39/gS5jdPXLHLaD53eudr1CSZznyOL0hk1WFboruAu0TSl0ti0saKkLXmaxP
	JQtlsVufR7Cuf2van/TKrAjm5LmZGuYufXls4T/V6cBFM39ja7T53MUdotl32/Es
	efHLmW3ZfzPh+72gz3k56uw4WGvIASIMo8nrOBVTzDcIzF1hACRQV1st4Gy6n/Zc
	g==
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013025.outbound.protection.outlook.com [40.93.201.25])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bq98s3k0t-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 04:48:32 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D1NvL7AMue0UP9g03MflukK0bpsImU7OhBHE4voxahqYsHSEy4oGuoq7dLDRyaQGQkaCHUuoaysTfqyNdy2Kp+wdGBBni60xMK0OTiEhkXlcctSKEZzp8IOnsP+KICADVgAzjn5GzfuV44gdOAcaS/62Qi4mblWgb0m4iU61Rd7Z7wpWkT/oFHWqEHc63xVx8P17z8UJ/tzDqbijojWt0tfQNR0R2sZ8SvbTK0fQiEcxc1i5Yy92p8gkyAjHlMvKv1KuUrRzD7UbM69dcKHdnOAiR9uhl/5HtdtMmZII4HV1hroTetlb4v16pVEokYFDrl65h+dKcJdMn4xYOS0B2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WXNeRZ+ulftJZWVl8I1C+DrNTxyZnEX/zeK2GWFGXzw=;
 b=bHHdQhwCZrvy7zRFGasKT/cZd08Oh15E3BiG+FwiuRR+mVbAbAoJNWhb/4TLdFk0BpXGadraOkqQRZk3h6LHXB8sAabM8S8eDuxlakWZiEKN4Vb4YTitSl1IpdhH/3ruBXj33sCma4U9AIneMPs/RidQr/qtt5OVUJF5YLtFPY0JvweE5QX1P2iMAoCWbYMqDgwMHgiaa8j1Rxj6hxUHv21NkwhcG6WnEayJNCrBLHwDTUr9YvQ4M0ywu17MJ/YzbIImPJo3WBLkbESvMwH5VC+LgdYtgYugbjlOXdw2vE8FZ7XfUiOBwuN4DNuQHH09K5/yznFJ8F4VUPhbkqqp5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from CY4PR03MB3399.namprd03.prod.outlook.com (2603:10b6:910:57::13)
 by LV3PR03MB7561.namprd03.prod.outlook.com (2603:10b6:408:288::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.7; Fri, 16 Jan
 2026 09:48:30 +0000
Received: from CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376]) by CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376%4]) with mapi id 15.20.9520.003; Fri, 16 Jan 2026
 09:48:30 +0000
From: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas
 Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        David Lechner <dlechner@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
Thread-Topic: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
Thread-Index: AQHchhsqfUOOEqdLJUSwswlCA7iHLrVUeSWAgAATAKA=
Date: Fri, 16 Jan 2026 09:48:30 +0000
Message-ID:
 <CY4PR03MB339943974F603BCB61ECDE609B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260115121943.23715-5-antoniu.miclaus@analog.com>
 <20260116-lurking-beetle-of-imagination-2a05e6@quoll>
In-Reply-To: <20260116-lurking-beetle-of-imagination-2a05e6@quoll>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR03MB3399:EE_|LV3PR03MB7561:EE_
x-ms-office365-filtering-correlation-id: f37ac59c-4380-41fb-c21c-08de54e467f6
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?MTh0TnhkaEhpZGliWFg2eTdLOGVqY0FUMEVFNUpJTDU2YmtvaGxzMlI0Nmd0?=
 =?utf-8?B?dGlqdGRVQ2ZXdU02UnNLZE9UU2NmZVdRNUVrZ2MrWENzc1JpYTF1YU51T1Nx?=
 =?utf-8?B?RkI2dWw4WkdOQnNBdERNVytVTEV5MWN1TG1lWFd0RHVtT051WGVadDlUWjUw?=
 =?utf-8?B?emVKOUNzQ2pOODVzbFpWOTJqTHNtS1lqZVI3d2xFZ2dBZTd6eUpnSGQ1d2Ft?=
 =?utf-8?B?VDFxR2RQbjlzTHoxY0xwTy8vbElsQmREODJXUTBUNmJ1ZnJzc0txdkQ3NGc3?=
 =?utf-8?B?UC9mbG95UFFaWU5VYUJYWE5acXhKVndXRnQ1UThudHl4WUhTWXhSVGE4enBV?=
 =?utf-8?B?ZXloQWNFY0RGRUdUOW9UZ2FzK3FJdUJoM3dWSXJkMEhvTTViMzczcVNaRVRk?=
 =?utf-8?B?dko0RkxxMEYyMlE2anFUWnZPa2Y1S0xBekY1RnhwbmZjMTI2anpjVDdRU1Ra?=
 =?utf-8?B?azFHU0t0MFdMM1l3ZTAzNzFoMmM0WVdPZjZwNTN2dW9Ga2ZDVjlhUU05ckZQ?=
 =?utf-8?B?N3pYYllnemJJM3pTaUtxWUZiYmF5RnUrUUFUSUxBREY3MXUyckI3VGFreVdh?=
 =?utf-8?B?dEdCT3BkbmtyUCszbGUxWjlYT25LWlV1Z0xKUUNJeUszSkI0Y0UwOUZOT1NG?=
 =?utf-8?B?NG9LVWhNdjZmZ2hlUVV4RUVZK3BaNGU3OFBrY0w5a09CU1BGamVpUHFBMkNY?=
 =?utf-8?B?aW9nZHZlVGNwOWN1MHNOZWtaSmtrL2dOVzg1dzNlanlFcVMwZEN0QnppT0No?=
 =?utf-8?B?a21wMmtwb3ZiRlphb0J3Y2d0M2VQVTdLR200MkpxaFpBWUtHUlQ1RFp3U3BS?=
 =?utf-8?B?bHFrN3N3UWpIWGtYRjVJZWFUUlBxYTRSUzJFMWp4bGZJM2IyWlBDLzR5RFpE?=
 =?utf-8?B?bnFMV2I1OWFrVDBNWDJQellLWWJpY3ZOeHBHWkdwcnJKZ2tLZ2ovS2lZVjFi?=
 =?utf-8?B?RHladlptVlhtemJoNDA5VHU3WlFadDRLRmhUVFZrZGp5UmErRFIxR3FlT0Zz?=
 =?utf-8?B?bFFsc3JWTlhDclhCQlA2NVA4d3QxbDVhQW4xVVE5VGdCUEhzWnFIN3VmNnBJ?=
 =?utf-8?B?TkVpWlIyZmdnV1htd2FHYnI4UnBlZWZtN1M4NW81aWlSUFJPS2NIaDlLaUZ1?=
 =?utf-8?B?L0RldzgyOUlNZUlrUFFTejZkK0ljVHpCMzFwUDBxY3hCSFFESDNCbTNxRER4?=
 =?utf-8?B?QllRNlR2c21MM1Z6MmR1QWpzakdaVmU4T3luOTNpaldNWGZWSXZibUFmbDMx?=
 =?utf-8?B?MmJGSkErR2ovOWxoQ2N5aGRpQ3B0eERIaGl4LzExeUdZOHREbEFxUW15Qm9L?=
 =?utf-8?B?VmNaanhGcjllNys1UFZ0SHhndmlkYjBwNmYycDdSWTBRN1dHR3RsTmpDYnBw?=
 =?utf-8?B?cERpRFR6NGxRamErTHkxYW03eXh2eTlYdldUSVVOVDM0eTNlS3h0QVhNTXg4?=
 =?utf-8?B?bDQ2R05YT2h0c21BZkxhaTNxeUw0VWhTMy96WFhJQmZ4MGVCVi9UaDBhUVFx?=
 =?utf-8?B?QS9razFTTGJma2p6WWlvSmx1TFNHdW5FaXN1SncyeFhqT1RiWmRkOUc4cmdS?=
 =?utf-8?B?S0NOeHBCeVVPNjFRWWNEekoyclRGY2pKZW95K2FMcGtuUEs4cmttSkJUUllO?=
 =?utf-8?B?UVVOQkc1bTVIM1RNcFhrS3h5THlDK3QxWThCdDZxWk5VL0pJUnpFa0NHWWxX?=
 =?utf-8?B?VG9aU0FDbUtHQnpFYkdKM1VlZERJRFBlTG5EeVlCcVVWc25oK2hWRUQ0eFhR?=
 =?utf-8?B?cUtIM0lJY0tMOTZVUUlNQ1l4Y2tHb2NlSjNmOVJvY3d5Q0MwZjlWN3BMWVRs?=
 =?utf-8?B?YVFCMWd6akdBeXJZenBubklFS0FFNFQrVVVFY1ZUb01LZmgyWG92SXJ6Mzhz?=
 =?utf-8?B?TzROcm56L2dnbitidThCdWJDOHBXeVVDTFl5bUlROTcyUVprb0xLQ1FvY1dD?=
 =?utf-8?B?eDRqTHI4MWlBU0t5VGYzaEVZSmRXMG5xbXdEZXcrR2Y4MGhxalZ5L0lhWXJw?=
 =?utf-8?B?SnMwWU4rQjRxcXZ5RFJsUXh1MmZMRnNHejYrakpFMzE5NWdGSkhBcEFkVFlF?=
 =?utf-8?B?YUwyVFVZeXprZWZZZVd6M2NUMk9hZkFOMTYvMS9XOGExUnBZTnpmd0c4Q2VE?=
 =?utf-8?B?Q1JUbFBEYUd5SzJBOGtwc3lGRklXSkM0STB4M1MrK3ZqOE5zRHBYdUF3SXBU?=
 =?utf-8?Q?scNiV8alHvCK5OAVGVp1QZA=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR03MB3399.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Sm14a1V2V0xjRGM5VDlIQkJOY25hYnUvMHZWMU5IcEdIY1ZmbWd2a241bndW?=
 =?utf-8?B?dGlLek5XMDQ5aFBFU1EzSDN2RDU5c0hnQU1IbUlGeEZkRnBBdXIzdlhnaVNK?=
 =?utf-8?B?SXZhUzFwWVgycVV4eDhYdWM3NkNuYlZqTHd3RmQ4NWZqbnUwQ1RzYXArMmJj?=
 =?utf-8?B?NFZ6K1l0WGx2bnAvL01Xc2trMHgxb2JKSkpZSWZscjJ4SUpMSWdHQyt5ZTFE?=
 =?utf-8?B?U2ViZHAyTGhuRVZ5TklBVmJzeFhEWVRacThSNnByYzc3TjdlMEhvS3JIQUVO?=
 =?utf-8?B?L3FiV1lITVp1VXNwOFEyNnE5VkpROWcxSFozVGY1S25SMFhRM3BQa0pqSWZp?=
 =?utf-8?B?WGMwSUpJVEl4SEVrMm9QSHY4ZzRzMTRlNEV0NVpvQmY2TTREUU93SzBGTExK?=
 =?utf-8?B?Y0pzRVlDaDRPRUZQYmUxOXBDS3MvUm9Sem5hRTJlSmE5bWdhNUlHcENkazIw?=
 =?utf-8?B?SmhZcW9Wai9JRkJCQU9xb3Z1cjhOUDlBcTJEWmVMU1gzeUhWdEdQNHdSNUJ2?=
 =?utf-8?B?UmwzQW9jUnBkRUFtcEp3NTdDMTRySVpFVG8zNmYzQzZNYXpEYSttR3dBQmpH?=
 =?utf-8?B?L3FjWExTWnlLZW5qQjgzajd4SEZ1eXIvQld6QlpOTmVBYnBPeGYwMHdaZ3FZ?=
 =?utf-8?B?Y1A2WHhRZW9hYUljeUlFMy9ObWpOOEJCVkl5V3k1dVAvb0hqNHZaRURzZzAz?=
 =?utf-8?B?dUsxYnBUYVY5b2RFdG9ZejZ2TzVKSHJYeUc2RkRrd3laQ1BMMzAza1pQY2lG?=
 =?utf-8?B?TjVGVSt4VDBsZTJReCtvKzFCUUtscXUxUXVnNDFuS3NSK3hXdkExWWNURnNs?=
 =?utf-8?B?cDJFNEZKbkdlTHl1THNLYUtQM1A0YURnWEpESlBGTTZaNm5wczgyYmo4TjdF?=
 =?utf-8?B?aXRNSnpaUVNNQkdnUDJuUHU5eXVSVXdpV0VZVHJuTFJJK2JPQVF4eEZNODY0?=
 =?utf-8?B?Z3lNZ3NuQUZrL05mY1U4ZXdmYzlUUnZtOUMydmNYVjZyZzZUYnpIVUhiYnNK?=
 =?utf-8?B?SnBVL1ljNy9BS2p2c0o4MzFSZldSU0xKeVVWdHg4MVp6R3FPQ0JjT2kzcmV2?=
 =?utf-8?B?WTNoZ0VmbFlibWFuM3ozUUM1amViTExXZmhrYU5LaVBUeGZ6SDEwc0VRRUw1?=
 =?utf-8?B?U2tGZ3FNQk00SmV3ekpFQWVIa2c3REpZSmliVDYyaWR0ZU90enVaUXdqRnhU?=
 =?utf-8?B?YzFuWTFMMENucG5qS2ZDK0cwSGVnRXIxbU5iQmdmL2k0WFNET0ZxNkUrUkhU?=
 =?utf-8?B?Mmp4T00xejlENmllR0NKdlhzOGh5Zms2ekgyazVMS2g3MnFPTHAra1AyblRu?=
 =?utf-8?B?TVVxNnJXemFWSlZXWmNLWk8zVHhXYTR3cmF6U01ERGN6SUdSTVp1OFNyclpm?=
 =?utf-8?B?bjE4YUkxVE9zUFpjUUlabGZhNjhyNEZiTGgzcjI0S2xWUGxrUXNFMUlkVm56?=
 =?utf-8?B?MGtIanp2d0pMSGZ0c0EyVkdnSUVhaVVUa3lkQWs4YU1KN0l6Rktwc24wb3lI?=
 =?utf-8?B?b0IrQWFlS1FNNEtmSVVKVGQ0RytyTEgrdUplSVVQRjR5SkpzcGlLdkh0bUNH?=
 =?utf-8?B?K3ZsYnZYWjNZaXJrUkhwUmx6YzQ1REtqelhEVWptQ3VFOFpCTitnTUVlSmUz?=
 =?utf-8?B?MitBUDBZQnMyaDRxcnh2d3Q1bmM5Rld0Qm1Xb3V6L3lETW5qelpJM0pRV1BO?=
 =?utf-8?B?MEx3SjcrYkhDU3lKZVNveTUzMVNXYUNKNXpHOVZoTTBNcFZFNG92RU81N0cx?=
 =?utf-8?B?MldRRStnQmZQSGlIc3k5dmtiZWRkeWNrUlpBc3crOU1sZzJtYWpvaDZZOGN5?=
 =?utf-8?B?dERid1JZNFl1dFdWaG9ZK3ZRbFAzT05uRHBoclVEb1A0U29NdVcvelBYeDIr?=
 =?utf-8?B?cWl5WjQreWcraVM2SUpLTG8xaFhmamFic0g1ZEFUL3BJVWJ4VGVnVEMveDZY?=
 =?utf-8?B?WS8wS1JMb29MTmxlVWxmTjNqaThxYnZ4K3FiZ1ZLekVjaGpyb3V4NVdsYmto?=
 =?utf-8?B?MGd3enVsNXIvZnkwbXVUcUtjcDdlMXB2UFZpOGZpcHFlM2NuOHAzRFc3OEY5?=
 =?utf-8?B?NUxPSU4rb25DSGdHMTdlQXZDdlJTUHhIbEk4cExwRGZYcGdCd1RIRHBtYjIr?=
 =?utf-8?B?bUxOTDQ0Mm5DbTdKdVhCbEM4a3lDR01McFdRcGlvcGhHTmxMQzdJdktNM1hs?=
 =?utf-8?B?WkIwYUwyUk5UMFFuNjhQSlg5cjV1bFJPTVc2czR6Y0ZCVVdvZkJtcmw1MlFN?=
 =?utf-8?B?RGRya1pNS1ZLVGd3SEIxL25qK0lvRytYNmF6NXhCcGNJTXBORHRiaUorQWtU?=
 =?utf-8?B?VFdjUTJRN3BOY1paRzB2UThDYytkbGRCeHFwT0h6L0phYUhBTUFkQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR03MB3399.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f37ac59c-4380-41fb-c21c-08de54e467f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 09:48:30.6547
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0B8jKKsaNSrqx/Jpz3oG4nR2/nhOTJv76Fki+Lnb+ZogerFRfMwROKKyhO3QyWhsDDXwBGlb/CnbzivfU4ppqldWe6Nx0rA1yzXVLv03ybk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR03MB7561
X-Authority-Analysis: v=2.4 cv=QJBlhwLL c=1 sm=1 tr=0 ts=696a0970 cx=c_pps
 a=7LdyZ4/2TJtu80KvlWUjDA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=gAnH3GRIAAAA:8
 a=KKAkSRfTAAAA:8 a=IpJZQVW2AAAA:8 a=mvr7rUw_R4dIwK8oCLUA:9 a=QEXdDO2ut3YA:10
 a=cvBusfyB2V15izCimMoJ:22 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-GUID: H870Epol_ikDINiPtSAEmfU2vfOQLe4M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MiBTYWx0ZWRfX/Nhjn3zJRdjm
 hRJgtxnzbyOLUCVy1bUW7hH7TNuQiIAxAmpgHLp+caWS+eyfyRmPAg0DRx6XW01yTw/L+rThL7M
 Mzk3vswbMgEOzJL1kmv3pbqRCS7IfQXM71ZZ/z6jlOyi/rVXS3a1qfLiww3FfYW+I2PLxGSNDmR
 3rtkXozJ+6rPEH2kOvDoOzXOpzTAVv3Wq3dLKjdV1TavUrH5UPrLFZora75BCVlIxTJGri689Os
 1Qsdd0hpi931qBpbps12OW1vV40zuUwWVvwNOaoFUkNiP2NIjOlQ50lc/dnhMsktmcIjOWv63SH
 kUU2VN2Rcqk9iwowbx/KhehZrUcwyjVi+ZaNBxtn5bXC3gBIEOUYw2SEBxGLfiyt9QplsVRuTwz
 B8RVAassl+yG6kBmKNbtf2vsRyEqp8Tp7Xo9fAIbqU4KGqnjBjhK2zUsrCf0Uw6evOCMqtH6i2T
 XyTnb7mkLGAb9rJZL+w==
X-Proofpoint-ORIG-GUID: H870Epol_ikDINiPtSAEmfU2vfOQLe4M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160072

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnprQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxNiwgMjAyNiAxMDoz
MyBBTQ0KPiBUbzogTWljbGF1cywgQW50b25pdSA8QW50b25pdS5NaWNsYXVzQGFuYWxvZy5jb20+
DQo+IENjOiBQZXRlciBSb3NpbiA8cGVkYUBheGVudGlhLnNlPjsgUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz47IEtyenlzenRvZg0KPiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz47
IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz47DQo+IFNyaW5pdmFzIEthbmRhZ2F0
bGEgPHNyaW5pQGtlcm5lbC5vcmc+OyBKb2hhbiBIb3ZvbGQNCj4gPGpvaGFuK2xpbmFyb0BrZXJu
ZWwub3JnPjsgQmFydG9zeiBHb2xhc3pld3NraQ0KPiA8YmFydG9zei5nb2xhc3pld3NraUBsaW5h
cm8ub3JnPjsgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPjsNCj4gRGF2
aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPjsgZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggdjMgNC80XSBtdXg6IGdwaW8tbXV4OiBhZGQgYWRpLGFkZzI0MDQgc3VwcG9ydA0KPiAN
Cj4gW0V4dGVybmFsXQ0KPiANCj4gT24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgMDI6MTg6MjJQTSAr
MDIwMCwgQW50b25pdSBNaWNsYXVzIHdyb3RlOg0KPiA+IEFkZCBhZGksYWRnMjQwNCB0byB0aGUg
Y29tcGF0aWJsZSBsaXN0LiBUaGUgQURHMjQwNCBpcyBhIDQ6MSBhbmFsb2cNCj4gPiBtdWx0aXBs
ZXhlciB0aGF0IGJlbmVmaXRzIGZyb20gdGhlIGVuYWJsZSBHUElPIHN1cHBvcnQgdG8gcHJldmVu
dA0KPiA+IGdsaXRjaGVzIGR1cmluZyBjaGFubmVsIHRyYW5zaXRpb25zLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogQW50b25pdSBNaWNsYXVzIDxhbnRvbml1Lm1pY2xhdXNAYW5hbG9nLmNvbT4N
Cj4gPiAtLS0NCj4gPiBjaGFuZ2VzIGluIHYzOg0KPiA+ICAqIGludGVncmF0ZSB3aXRoIGdwaW8t
bXV4IGRyaXZlciBpbnN0ZWFkIG9mIHN0YW5kYWxvbmUgYWRnMjQwNCBkcml2ZXINCj4gPiAtLS0N
Cj4gPiAgZHJpdmVycy9tdXgvZ3Bpby5jIHwgMSArDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXV4L2dwaW8uYyBiL2Ry
aXZlcnMvbXV4L2dwaW8uYw0KPiA+IGluZGV4IDkzNDg3NDgzZTgxZi4uYmQ4ZjBjNjE3ZGQ2IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbXV4L2dwaW8uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbXV4
L2dwaW8uYw0KPiA+IEBAIC01OSw2ICs1OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXV4X2Nv
bnRyb2xfb3BzIG11eF9ncGlvX29wcyA9IHsNCj4gPg0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCBtdXhfZ3Bpb19kdF9pZHNbXSA9IHsNCj4gPiAgCXsgLmNvbXBhdGlibGUg
PSAiZ3Bpby1tdXgiLCB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJhZGksYWRnMjQwNCIsIH0s
DQo+IA0KPiBXaHkgZG8geW91IG5lZWQgdGhlIGNvbXBhdGlibGU/IEkgZG8gbm90IHVuZGVyc3Rh
bmQgdGhpcyBwYXRjaHNldC4gWW91DQo+IGFyZSBzYXlpbmcgeW91IGludGVncmF0ZSBpdCBpbnRv
IGdwaW8tbXV4LCBidXQgd2hhdCB5b3UgZGlkIGlzIHRvDQo+IGR1cGxpY2F0ZSB0aGUgY29tcGF0
aWJsZSBhbmQgYmluZGluZy4NCj4gDQo+IEhhbGYgb2YgeW91ciBwYXRjaGVzIGFyZSBub3QgbmVj
ZXNzYXJ5LCB5b3Ugb25seSBuZWVkZWQgdG8gYWRkDQo+IGVuYWJsZS1ncGlvcyB0byBncGlvLW11
eCB3aXRoIGFyZ3VtZW50IHRoYXQgQURHMjQwNCBjYW4gdXNlIHN1Y2ggYmluZGluZw0KPiAoaW4g
Y29tcGxldGUvZnVsbC9wcm9wZXIgd2F5KS4NCg0KSSBhbSBhIGJpdCBjb25mdXNlZCBvbiBob3cg
Y2FuIEkgZW1waGFzaXplIHRvIHRoZSB1c2VycyBleHBsaWNpdGx5Og0KIkhleSwgeW91IGNhbiB1
c2UgYWRnMjQwNCBkaXJlY3RseSB3aXRoIGdwaW8tbXV4Ig0KVGhlIHNhbWUgaXNzdWUgSSBoYWQg
d2l0aCBhZGcxNzEyIHNlcmllcyB3aGljaCBjYW4gYmUgdXNlZCBzdHJhaWdodCBhd2F5IHdpdGgg
Z3Bpby1tdXguDQpJZiB0aGVyZSBhcmUgcGVvcGxlL2N1c3RvbWVycyBsb29raW5nIGZvciBhZGcy
NDA0L2FkZzE3MTIgdGhlcmUgc2hvdWxkIGJlIGEgaGludCBzb21ld2hlcmUuDQpTb3JyeSBmb3Ig
bXkgcG9vciBrbm93bGVkZ2Ugb24gdGhpcywgYnV0IEkgbmVlZCBzb21lIGd1aWRhbmNlIG9uIHdo
YXQgdGhlIGJlc3QgYXBwcm9hY2ggaXMgdG8gc29sdmUgaXQuDQoNClRoYW5rcywNCj4gQmVzdCBy
ZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0K

