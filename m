Return-Path: <devicetree+bounces-255996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A0D2F79C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC3883106A30
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF4829A31C;
	Fri, 16 Jan 2026 10:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="Vu4vFvQQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0492E2D24B7;
	Fri, 16 Jan 2026 10:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.139.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558661; cv=fail; b=CGrD8ihTI0lBte37T0ZZJjxJnczddRn8RmM8/I8Fkhtrm9hW0kGiHMEUWM6ytZSzqdWmtEaCQG0KHA7UVD9lDdMscJxH2ZEq0Uuoux2mvcR885TCDxuIPuHW4deckRQWYF5dJZhYPwJZu/PO68//zJB6B6AoYhX+Tp2i2NmDAYU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558661; c=relaxed/simple;
	bh=spxyfwx/eXIFK4eayu6mn6AIRr/17D42mqRMA9RlsZQ=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=f8RBZm8jhdwzoErXAjm9SYj/Bs+ik2SQ7KXgC0X8o5IiIhQck40nWMxePHIHYhb5TMs2ur1BAjY6BrIR/V3Iz2socPa3uDe9+eti4vBRE3l1Bgnz6JTp9uiZdlPCrBYjUlKtK87LiPjgnDjXnwfdkuF0lfUA+a7MdFJDmq5+Tc8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=Vu4vFvQQ; arc=fail smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7ZDUk738607;
	Fri, 16 Jan 2026 04:39:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=spxyf
	wx/eXIFK4eayu6mn6AIRr/17D42mqRMA9RlsZQ=; b=Vu4vFvQQsgAFbrWGCZ0GY
	abCAy7q6QANTmP1ZIXg407QndnS7/Jy7WheZHRdZEgoKoF72f3TJ6Ib/ckGaaPmX
	KA5yqj3hINUWygbJC79JwtPaRSt0kj1c26ARZH3fkHMM+f1pZ/wsPzo9T7183pe4
	2u3DbfCG3fDBGToaUAyxNF5/pi4OuJJ+9wIu+0EaBHgxPBZyzY+8HbEKwhikCa4q
	0kfSqOXSWpEZ2iv5Mi5WTVq8nzV07dF4UeH2H12xe+EGDw+GnLqDXbfhbpALL8WG
	YCe6I75CqJBppy38Y9nE+8qZptQPDZklPX5GXIwzm9aF+clDVkVXlMVFtlUHicM/
	A==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011061.outbound.protection.outlook.com [52.101.62.61])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bq97r2w8g-2
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 04:39:09 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KJM1THl7kPT7DWGyjf3RS4fvwBsWqPaZ/AltqdUAln5/7i2hNc8X0LYUyQVvfhnbkOcEQzzjHXuPt8ZJlsMHq37+/BzLiHtgXcUePfJEhBcjh7Vl+lx4xV6NhBYUEx4DUJiANX5Wc13Dy6ONraP5Pos+wxFER+7A0GxPSGr1GEAbkYY+ZOlDNxSZsaJ6+7vnT94Sj4HWMqSXrnCuDFB8c0czG0dtCCKhr6gGI5OYqBy76cx7Mz3RPbw1OhcQ4Qx9drkyJQNnOUaRLT/wSpP3U7+jjFcdUhavHP23UP+4Xv9AVHb58+JtHjp82ik+gd/flrd3RzRTi/qgIfuhoZRoFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spxyfwx/eXIFK4eayu6mn6AIRr/17D42mqRMA9RlsZQ=;
 b=YpncU7V+CXqdEDsZtXzBeselOjr0A0NYdozPuQg8+0kUJnobbLnNKbdZ8PMZ+cgBdDhEWhNYaIAa37HgwUYZqec2rgwc9qv+AWiLasH22Se5VXFOhwDY6irNGLDxnRilgKaNlBn6ze8hMbhTjRxFBoU4hHIUvBCcuOw19VwP7vMjDwAuGr/0rCUWUJSu9AD2/ucDxhJGcSrCS7sawVMSm0YZTYuq9TZFt/DK7k4iQoaD/Vgszz0N4DLi7kSlU8neWX281FFFq0BzveOV5M+R7FHRL+00yzPoEs3NsbleCJDXAe8Nc43uVg2qhcjireuSe6l7Li4zAqR9gpkvoEZB7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from CY4PR03MB3399.namprd03.prod.outlook.com (2603:10b6:910:57::13)
 by LV3PR03MB7561.namprd03.prod.outlook.com (2603:10b6:408:288::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.7; Fri, 16 Jan
 2026 09:39:06 +0000
Received: from CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376]) by CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376%4]) with mapi id 15.20.9520.003; Fri, 16 Jan 2026
 09:39:06 +0000
From: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
To: Johan Hovold <johan@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas
 Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        David
 Lechner <dlechner@baylibre.com>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
Thread-Topic: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and
 ADG2404
Thread-Index: AQHchhr3dov1UEjYeEaIFVcFak4Lq7VUeoUAgAAGg4CAAAo6QA==
Date: Fri, 16 Jan 2026 09:39:06 +0000
Message-ID:
 <CY4PR03MB3399D140FF51521F67AEF8599B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260116-jumping-premium-crow-693a1c@quoll>
 <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
In-Reply-To: <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR03MB3399:EE_|LV3PR03MB7561:EE_
x-ms-office365-filtering-correlation-id: 5937a53d-dcce-4f55-e173-08de54e317a0
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?bitqUlBERmF2TkxMaCtrTDdCR0YyMXh0a0dCNHF2TDhCUXhQbk5nMWphRGx0?=
 =?utf-8?B?NnRwdnFrREt0TEViS1F2TGFmL1FtcldxdmRBQm1kL2tmSWxtanJIY05KTWhE?=
 =?utf-8?B?K3VVM1RocnUwdGs5d2dsM3lCRUhrdWV4NE5GYWVqcXMwa0xrcDIxMkZYVnpV?=
 =?utf-8?B?NGs4ZWZhQm50ck53OXlHUTVCdjVrMVU2cWkxbUpoUGhnQmcwTGFwL0tNQTcr?=
 =?utf-8?B?RTZwc1ZSTGZncHBhSVh4c2hBaFFCSnA4RDVVTkJOU3hBbUY2b1RrSEJjdkxL?=
 =?utf-8?B?S0dxcDc0VHpaY1h0VmtJc2N3c0xmd3FQdlIyWDN5MVFNb1hUOWVnbWF3azdl?=
 =?utf-8?B?bGpZU203TGoxckpGWFdEYWZoLzFiYVlOZkpKRE8vTXMxVzFFOTBJRUFaVmFt?=
 =?utf-8?B?OGpnOWtVaFdJVFhSVEE4TGgyTjZxSWk0ZFkvUjFYekZRUUNuRG5HeUp5S2JB?=
 =?utf-8?B?TllEUytMRGFseVVCUDFEcXZ5MUdaNTRGWFozUFFneE5GOFhzcDE2TDhUdTIw?=
 =?utf-8?B?VXJ3RUFic1YrNHRiTXJMYnl0cTJ0d3RMRndrMElQcmRzeGh4b3YzeFk2Z1g2?=
 =?utf-8?B?YVVWaUI2N3dmcmJYTTYvT2g4VE9LclVBNFNTMEttK21VZHBxc2Zhek50QlRo?=
 =?utf-8?B?T1J2SXZocm5Yam1IY3VLNk5DYU4vV0JoRU05VkhIK2xzZFlqZUpsdlA3TzZO?=
 =?utf-8?B?dlFWVEw5RlEyRW1wUWg1UlIvclFHNk9aQzlLWHJUQUZuci96S2YwL2RkanY3?=
 =?utf-8?B?dHc1NmxGdXlhcUJBd2FwdDNFQWhmVU1IMGpVU2s3QUt5MWJJYzVUb1Q5MGNE?=
 =?utf-8?B?Y2plUHJ1UWZtWTY3S0lqQXFPdFo5OGpEZmNoWnlKdGFFV0NkOU01N1kwRUV2?=
 =?utf-8?B?c2czQ25JcUxLd0VOSmpLbjdmUVFpaWQxTFRsTi9LdjREZG9lektYM0pKL1By?=
 =?utf-8?B?b0JoRzU4OEwvajBtUWI3MFI0OEFCZGRWS1ZOYzhkcUpIc3I1YkVEbG80K3dz?=
 =?utf-8?B?MHRVZjJCa1NwRS9hQnQ5Ui8vQzVVY1BzNHc2bzliK0crOWRGa3ExZDBVR0dl?=
 =?utf-8?B?Z0drUy9XYkJiUWh5Qmw2NDlsV0NMeWdsdVIzN3FzTmJkRTJvTkllN09LaXpJ?=
 =?utf-8?B?OEx0enQ5d1lJY1BWRGhTb09tYlovRGpvU1ZSVTRiRkMyU0lrTTUwSHczaUho?=
 =?utf-8?B?OWl0SE91RytBaWY4YjNSM09Pc2dSV1pORHRCcG1VR2VjTGNQMWhMR0h2Y0xv?=
 =?utf-8?B?NWpLV0MybGVZS0hwUTVhYkNZNnJpMG5XSjlwQlY3akFlNE5MVVNnczYzVXpm?=
 =?utf-8?B?Vk5wQ042Y2k4REdXWVVTQWtUVWNLUjM4SVZiSUJZYzdPL01KdUVvdjVNNWUv?=
 =?utf-8?B?QTYwQ2hnOUcycnRsK0lHQnRaY0N4aWYwSk9DYWs1NVhSOEo0Qit4S1lVYVJS?=
 =?utf-8?B?QmxiaFFvWWg1MUh3akxXOXRIcGMwVVh4RldoYWU4eHk4dHhTNjNyd3RIWHZa?=
 =?utf-8?B?REsreXVLbEhRNUo2eCtjWGlaKzdlSDJaeXROUVlXNHUyZVJxbDd3c1JLS2Vp?=
 =?utf-8?B?VldRYkZBNHBBZTVPTXNZbkhackx0Qk1FMTU3VFQyWVN0dytkL1IwZ2FnTElj?=
 =?utf-8?B?eVpycG5LVXAwSlVNeXpwN3JXUmZ3MW1ENUVzVVhrKzVaOUNVQ1d3cVZ2SXYw?=
 =?utf-8?B?SEJxcCtOOXN2VVQ0VzMrOTVPWVpzTzhDSGhOd3VQVDBDTnRjZjdUWDdUcEQr?=
 =?utf-8?B?L0RpdWljZHJoWUtzTU1BTjJrbW1UNm5kY3JOaVViMTZEMHR2b2Z3YTN4R2VK?=
 =?utf-8?B?UmRDbDBibHMzYUtzZ1J5dzkzYmRYTFVyMEhoUGtvT2YxUG9WMWRNZS8yWkZq?=
 =?utf-8?B?QThFd1luaDcxb2dDZGMyVEoycWNQYlV3WjMvRzA5cXBJNXhHdXBFL09IalMr?=
 =?utf-8?B?ZUxEaGg2K2M4VCtSZmJ0UjlTZlM4MkpzS0FDbEdpNVFMZC9pYTlwSkNvMUlz?=
 =?utf-8?B?ZUNXa3FOWE92bWdqdURLUzN5MlAzbDlwSnJzQXg5S1J6MDdPZk9ubEc3SWcz?=
 =?utf-8?B?aE1sbVZvc2ZJZHF5U21VbFZ4dUphanJsbENZdHFUbE1scEM2Z1Bvb2ZTbmh1?=
 =?utf-8?B?bHRsNXpaQTBnWnd4RGhxM0x3ZHN3blpOTVBhdUN6ZXMxdTVpeldOOXo1Mm1s?=
 =?utf-8?Q?fqYF+7PrXBJkTn7ruz5C8FA=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR03MB3399.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?L1JVWjRDWm43c0l2Q0ZlbkRLN0NrcUVTMlVodkd4UEQvYXhLTGN4OW9rSHNN?=
 =?utf-8?B?TWEydlJDdmYzNWF4ZFpHQjR5ZENTQ0taaFpteFBDdy9NWXRRdXp0L0VUNXpS?=
 =?utf-8?B?a0l6TEhMMnVIZ3N2Z1pHTytLd0JnK1dmOW10bjBxRUZSMTJSNkdXb25aSTh2?=
 =?utf-8?B?QWg3U2NrUlVTSHpKYkZwdTN5ci9VeWVad0JNeC9hN1c4SllVeGZUaFhBNlpY?=
 =?utf-8?B?bUlHYzBzOEd1dloydmwxWngvVUpwSW5obUttY3FsRkFaMHY2TVRvOUFQRENE?=
 =?utf-8?B?aVRoOHBUYlNiVGlwSi9BRU9wbTRlWk1vZ0hGU2R4dFZ1dS9xOUViSVI4TWRK?=
 =?utf-8?B?ZDhxRjNWdExSYnFhaENTMmxhVEJqWmg5VUl2ZWxDZ2RIa1Z2RzlGaEpBb0Ez?=
 =?utf-8?B?MTRXUWJ2WWV3anhKeWtodTZ5cnE0a2RFNE5JWGlmanRubS9ZZTJyMG9ETnpS?=
 =?utf-8?B?SG1nN3ZXQmdwb2tzWUo1MEFzdzAvYWZuQ3FCSDRZY09WN2hMTzd5QjVodFV3?=
 =?utf-8?B?akZwa2h0TUFtZW16cmRISHhzcXBMajRLL0pzakpBT1B5ZlRWNHJ5U3draTY1?=
 =?utf-8?B?TnNia0M3bzNuRWdiTFVxZm9pMzdBQTB6V2plWXR3M1Q1SDZKcmsrVjQ1UG9C?=
 =?utf-8?B?U1poK3BSVFdSTFlEUDlsSnBpckk2TWZOQWNwTGgwV0xEQndIeVVUeUJPZDRT?=
 =?utf-8?B?bnY2VWx6bGVTUmZhMlU1V2JDZytKVHFDNjd1TTAzZEJ3dVNXNTlPVVZBNlRi?=
 =?utf-8?B?Ui8zNUU1eEx6RSt3OGl5UXhHQ0l0UTNUWGNsb1pjWWszWlNjZE93MnM3b3dN?=
 =?utf-8?B?Nkx4SkRvaThNanVldkZrNml1QjZsQ1lIZlprQi9xcTVqWmhnWmkxc3M2c05R?=
 =?utf-8?B?MVR1bmlZTFR2QVc1SlVWUmJMOFhDMWlQUHlqTDF4MVd5alZDOHFnSlJ1RlZh?=
 =?utf-8?B?YUhESUVOZ0JGUzg5T0FqOHgyVjVrQTk4NTZHV1N1ekFNTDU2MTFrS0oySXFl?=
 =?utf-8?B?VzZqaGJvMlVEZDExcFlOM0I5NmJSQVFmcUQ1WGI5M2Jnek1ZajBCeE9ZbVFG?=
 =?utf-8?B?SGs2cXZGV3kra1BxcHJOVXFxS3d5VGdtcG1mUUJGQ09aRHkrei92Mkw4WXpH?=
 =?utf-8?B?MG1RTGxOaU5JWnJNS0hNYU5ITi9PUXZBU0NIWVBHS3hLVytVQnF4TEkrYjQy?=
 =?utf-8?B?T2JkQzlZT2cxeWVEa0JWTUJLNWYrb2hIRVVnbG5HVWZUS2NYaU1hYUdOdnJ3?=
 =?utf-8?B?MzdXL3A4cWUzNXFZWE45emlpUk94TGI1aTZhSXBuVmxOMFUvVE1tUjlqWVUr?=
 =?utf-8?B?YjJvUjdJQk9QYnRhQUFsSjRnWmhtWlBSb1NVeWcxWDZ4QUg0T0VVYkR3NEIw?=
 =?utf-8?B?OStmdGRQUXR2emxQTEZUZGlSOVRoOCtzL2pFcjdJV0x5d2ZxOTVPNFhoU2g0?=
 =?utf-8?B?ajZMVlFFSGlRN2RaNVA1MHJ6YzduOFM3b3NLL2tNNTdZREkveDc2b2dIaHFY?=
 =?utf-8?B?ZG1FOEtnMC9kVE9pVE9wYStmVmhuUjJkaWVhMjU1TXE0TGNFMU9wQjdKWWlH?=
 =?utf-8?B?ZXpjS0xiK3ZCVGdhL21ManFTNGVCVmU4NC9pSUFXdjZZZEdmek0zQTJRT1FS?=
 =?utf-8?B?MHIvSWozekczdWh5MTJXNkt5NWhnQiswd01NdEx2THh2eHBneGRFYU93MlBo?=
 =?utf-8?B?eGVIdHljY0ptak9kcGZMNkY5K2N0LzZEWUlRWE1xMDFJLzczSnpXM0V5SFg4?=
 =?utf-8?B?Ly9UeDQwUHlvL1hGL2pDSFpvVGJQNWtXeHlBZjR4TSt6RFlIRDk2MzJkZExD?=
 =?utf-8?B?VjA5NWZEUnVrUCtQMHNjbjBqanEvNzJWVVFVbHRpM2RCdUR4eFVqcFV3bzdy?=
 =?utf-8?B?SUI4Ykg4NkF4TW9xRGl0Z1liRzkzR01hZmpjc0ZIdWgrK2hzRnBvaFd5ZGN3?=
 =?utf-8?B?NTJmektLMzNIcUpVNkNyNW8yTGtPRE9ST2tPRnkxbUlML0lPMmE5eUhMcTdK?=
 =?utf-8?B?NXFBMTVkSzVDT25zOFJubUVxaWJPZ2htN1FhNFVza2twaGVBUDFidHFORTUz?=
 =?utf-8?B?d3Vzby9zZytxdkI0R1FwU0g1ekRxMXdCanVkSERHemJ4TlhKSWdXUERoUDND?=
 =?utf-8?B?cnNsTUczWUpHY0JtQ2FLQ3BIVkFGZGFzbGJqc3N1dEpQOFZxbnp6SmsyQkll?=
 =?utf-8?B?ZFdVcVZCcWsxcS9FckxlWWswenVRaDladHJza0VzRnFQalpKbGlZdFVwQ0lS?=
 =?utf-8?B?VmxjckQvYUV4ejQ0Ly9rZ1JrYzZPUzBJOVR1dzFnU1Bsd1NOL21HMnRYNXIr?=
 =?utf-8?B?VFh4Yy9TRnFwSkVnRFJUck1qeVRlZmdLeUk4LzdtelZhcHVUdDlUUT09?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 5937a53d-dcce-4f55-e173-08de54e317a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 09:39:06.3267
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4pZtMe7ghoZ2MSjcyJ7E/sEze8LP98fP+NAzacRvOapL5tebZnxPP5rSU1WN8x1Jwueh513WmV0qaDPkBuNpD0D/KZLpYNNxX+hkrZHBMXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR03MB7561
X-Authority-Analysis: v=2.4 cv=FvcIPmrq c=1 sm=1 tr=0 ts=696a073d cx=c_pps
 a=WxwGY4H08PlrDVivH1wjUg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=gAnH3GRIAAAA:8
 a=IpJZQVW2AAAA:8 a=5pQOY2M69fC6qdtvQt4A:9 a=QEXdDO2ut3YA:10
 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MCBTYWx0ZWRfX2Y4KFUURxaoP
 U0Siw6RSp4mtozEQUyl0EftuxNHT5AI4XMg9TZesJW+Ia5aow+QAEZ9wb1CC5kk/yutv46mccwH
 ONxeUmfKDpplQZP7k1UbOGGrYvZiqQ4VssX3z//WFed+Fe77tHHgzQXbElgV/RLFKtJrvggjZ+P
 OnklvyUyN6DF9e57+beR2xysRqA21ZYDNX6yZNJW/wven2xNsUav9BbippxOpFF7j5/FP8eWeqy
 Y4LoHEju1jc4ystRCJNz57QXlDzpm1MwFtgOCCeJwfMwpz8tbuGHbaCncTYGNIbDFhcvfZO4/60
 5nfXSq1c11Azw5XysyZpnzCkR1hFp9ESgtxpTIMKdHI82MK81V7lmQsUa8EFK5jP+yPrlxEzEDL
 OA8jqaO3nkYXfQbRhgIffOO7Ljo+co66XCc5aO4bE8WGioTJq5yA/IrJK7B4U/eEY/Q3ykGOo88
 E1HDilDV0MYvk8l+LpA==
X-Proofpoint-GUID: bFNQ109-VXMmLZqPbExyA3qSymLD5DCm
X-Proofpoint-ORIG-GUID: bFNQ109-VXMmLZqPbExyA3qSymLD5DCm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160070

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2hhbiBIb3ZvbGQgPGpvaGFu
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxNiwgMjAyNiAxMTowMSBBTQ0K
PiBUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBDYzogTWljbGF1
cywgQW50b25pdSA8QW50b25pdS5NaWNsYXVzQGFuYWxvZy5jb20+OyBQZXRlciBSb3Npbg0KPiA8
cGVkYUBheGVudGlhLnNlPjsgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz47IEtyenlzenRv
ZiBLb3psb3dza2kNCj4gPGtyemsrZHRAa2VybmVsLm9yZz47IENvbm9yIERvb2xleSA8Y29ub3Ir
ZHRAa2VybmVsLm9yZz47IFNyaW5pdmFzDQo+IEthbmRhZ2F0bGEgPHNyaW5pQGtlcm5lbC5vcmc+
OyBKb2hhbiBIb3ZvbGQgPGpvaGFuK2xpbmFyb0BrZXJuZWwub3JnPjsNCj4gRGF2aWQgTGVjaG5l
ciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPjsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMg
MC80XSBtdXg6IGdwaW8tbXV4OiBhZGQgZW5hYmxlIEdQSU8gc3VwcG9ydCBhbmQNCj4gQURHMjQw
NA0KPiANCj4gW0V4dGVybmFsXQ0KPiANCj4gT24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDk6Mzc6
MzZBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gPiBPbiBUaHUsIEphbiAx
NSwgMjAyNiBhdCAwMjoxODoxOFBNICswMjAwLCBBbnRvbml1IE1pY2xhdXMgd3JvdGU6DQo+ID4g
PiBUaGlzIHNlcmllcyBleHRlbmRzIHRoZSBncGlvLW11eCBkcml2ZXIgd2l0aCBvcHRpb25hbCBl
bmFibGUgR1BJTyBzdXBwb3J0DQo+ID4gPiB0byBwcmV2ZW50IGdsaXRjaGVzIGR1cmluZyBjaGFu
bmVsIHRyYW5zaXRpb25zLCB0aGVuIGFkZHMgc3VwcG9ydCBmb3IgdGhlDQo+ID4gPiBBbmFsb2cg
RGV2aWNlcyBBREcyNDA0IG11bHRpcGxleGVyIGFzIHRoZSBmaXJzdCB1c2VyIG9mIHRoaXMgZmVh
dHVyZS4NCj4gPiA+DQo+ID4gPiBUaGUgZW5hYmxlIEdQSU8gYWxsb3dzIHRoZSBtdWx0aXBsZXhl
ciB0byBiZSBkaXNhYmxlZCBiZWZvcmUgY2hhbmdpbmcNCj4gPiA+IGFkZHJlc3MgbGluZXMgYW5k
IHJlLWVuYWJsZWQgYWZ0ZXIsIHByZXZlbnRpbmcgYnJpZWYgYWN0aXZhdGlvbiBvZg0KPiA+ID4g
dW5pbnRlbmRlZCBjaGFubmVscyBkdXJpbmcgdHJhbnNpdGlvbnMuIFRoaXMgaXMgcGFydGljdWxh
cmx5IGltcG9ydGFudA0KPiA+ID4gZm9yIHByZWNpc2lvbiBhbmFsb2cgYXBwbGljYXRpb25zLg0K
PiA+ID4NCj4gPiA+IFRoZSBBREcyNDA0IGlzIGEgNDoxIGFuYWxvZyBtdWx0aXBsZXhlciB3aXRo
IGxvdyAwLjYyzqkgb24tcmVzaXN0YW5jZQ0KPiA+ID4gdGhhdCByZXF1aXJlcyB0aGlzIGVuYWJs
ZSBHUElPIGZ1bmN0aW9uYWxpdHkgZm9yIGdsaXRjaC1mcmVlIG9wZXJhdGlvbi4NCj4gPiA+DQo+
ID4gPiBDaGFuZ2VzIGluIHYzOg0KPiA+ID4gICogRXh0ZW5kIGdwaW8tbXV4IGRyaXZlciBpbnN0
ZWFkIG9mIGNyZWF0aW5nIHN0YW5kYWxvbmUgYWRnMjQwNCBkcml2ZXINCj4gPiA+ICAqIE1ha2Ug
ZW5hYmxlIEdQSU8gb3B0aW9uYWwgZm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkNCj4gPiA+ICAq
IEFkZCBNVVhfSURMRV9ESVNDT05ORUNUIHN1cHBvcnQgdmlhIGVuYWJsZSBHUElPDQo+ID4NCj4g
PiBZb3UgYXJlIGRldmVsb3Bpbmcgb24gc29tZSBvbGQga2VybmVsLiBZb3UgZ290IHN0YWxlIENj
IGxpc3Qgb2YgYXQgbGVhc3QNCj4gPiB0aHJlZSBwZW9wbGUhIEhvdyBjb3VsZCB5b3UgZm9yIGV4
YW1wbGUgZ2V0ICJqb2hhbitsaW5hcm9Aa2VybmVsLm9yZyIgLQ0KPiA+IGZyb20gd2hpY2ggbWFp
bnRhaW5lciBlbnRyeSAtIGJ1dCB0aGF0IGF0IGxlYXN0IGlzIG5vdCBib3VuY2luZyBsaWtlIHR3
bw0KPiA+IG90aGVycy4NCj4gDQo+IFByb2JhYmx5IGZyb20gdXNpbmcgZ2V0X21haW50YWluZXIu
cGwgLS1naXQ6DQo+IA0KPiAJJCBzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC0tZ2l0IGRyaXZl
cnMvbXV4L2dwaW8uYw0KPiAJUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4gKG1haW50YWlu
ZXI6TVVMVElQTEVYRVINCj4gU1VCU1lTVEVNKQ0KPiAJU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jp
bmlAa2VybmVsLm9yZz4NCj4gKGNvbW1pdF9zaWduZXI6MS8yPTUwJSxhdXRob3JlZDoxLzI9NTAl
LGFkZGVkX2xpbmVzOjUvNj04MyUpDQo+IAlLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5l
bC5vcmc+IChjb21taXRfc2lnbmVyOjEvMj01MCUpDQo+IAlCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGtlcm5lbC5vcmc+IChjb21taXRfc2lnbmVyOjEvMj01MCUpDQo+IAlEYXZpZCBMZWNobmVy
IDxkbGVjaG5lckBiYXlsaWJyZS5jb20+DQo+IChjb21taXRfc2lnbmVyOjEvMj01MCUsYXV0aG9y
ZWQ6MS8yPTUwJSxhZGRlZF9saW5lczoxLzY9MTclLHJlbW92ZWQNCj4gX2xpbmVzOjMvMz0xMDAl
KQ0KPiAJSm9oYW4gSG92b2xkIDxqb2hhbitsaW5hcm9Aa2VybmVsLm9yZz4gKGNvbW1pdF9zaWdu
ZXI6MS8yPTUwJSkNCj4gCWxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcgKG9wZW4gbGlzdCkN
Cj4gCU1VTFRJUExFWEVSIFNVQlNZU1RFTSBzdGF0dXM6IE9kZCBGaXhlcw0KPiANCj4gQSByZWNl
bnQgbWFpbG1hcCBpcyBpbmRlZWQgbmVlZGVkIHRvIHJlbWFwIEJhcnRvc3oncyBvbGQgYWRkcmVz
cywNCj4gdGhvdWdoLg0KPg0KIA0KWWVzLCBJJ3ZlIHVzZWQgIi0tdG8tY21kPScuL3NjcmlwdHMv
Z2V0X21haW50YWluZXIucGwgLS1ub3JvbGVzdGF0cyIgd2hlbiBzZW5kaW5nIHRoZSBwYXRjaGVz
Lg0KDQo+IEpvaGFuDQo=

