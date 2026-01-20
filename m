Return-Path: <devicetree+bounces-257439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG4yLgaob2ndEgAAu9opvQ
	(envelope-from <devicetree+bounces-257439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:06:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 288DF470C7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F27EE9630B8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB36E43E4B8;
	Tue, 20 Jan 2026 14:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="Pasc+4SU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248E943900A;
	Tue, 20 Jan 2026 14:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.139.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768919331; cv=fail; b=MpMLV7lvU6MDl9/a8Q5mla8phJk2iCR5ZAW0dd78x7SUcTqHSCJRaNLoMHZ24J7Ui6pGfNOgGKKvzHhsVc+MZwgeDmiDw1OsIYJqjPE2MRe2Y7rN/PGp2Q8Esw6BVLSCWU5dK7m7KusVzjLPkA/ggVnKdgBqBht0VMgVW/bCoZI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768919331; c=relaxed/simple;
	bh=Maw3mSRN9YYhS0y7WZnwCKwEI7GO02eMEl3jJ/6mfUQ=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=lEZmkOqGs7rR71B1Cn8RM7NDxL0wNmizdyEk7jp7RDZsF13GSsIPN4ktF7WY6Ij0Wooi0GNDhtAYEotpZqbY5vTYiJnZrKthgcx7JA3bDOlVLQdAuppXwLKg34EU0q53qTYK/wBf0Hg3783YsZAEPvz5qrgjew3R5dCgHvsUPnc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=Pasc+4SU; arc=fail smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K7Y6hL870122;
	Tue, 20 Jan 2026 09:28:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=Maw3m
	SRN9YYhS0y7WZnwCKwEI7GO02eMEl3jJ/6mfUQ=; b=Pasc+4SUDefip4Sqd71zK
	Ze71eZIgtmHq5OdRcNLv+9EO+/wEyVSq7BGvSqB5zAUZeDIl+0IUtFDwKvCOkGiP
	BSgu3ZQCzKqbLpeDFdXWY60xUmwEMdsMJwHuHDZqBnGUV9rn7VepiQWgNJNdlHLl
	QL3e9dmQx5+MQGcUQZk3DkQAvjid/bbD+YHZ5JtIu8g7IRClgmX30awZPWdh5KMm
	vJryVNfwudbbAoameHmCkphE5ikjF46cnRUKeby+xGS0gwXAI3Gpv8amb2qa3JOO
	WMKM7XOPbIocy5D5Z0nqvnBEm23Zr1CTeic0k0kgvjvPgRGDLt+qGOezDlyv7Jrq
	g==
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013016.outbound.protection.outlook.com [40.93.201.16])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bsxspjbqc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 20 Jan 2026 09:28:21 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XG/jK9L0GyGAMfu0NS3BfUFfV/3DnCpTE1iuem7/pdhQRWqRwwyo6doEv7rytADfrugVNZZFRfNUzYT40CHB7/4LmKI/nuRPWwa502yglx1z0TRwaFu/x7YI6YAuk7mylnURkQWmiMI91mipDEJs+cV8A9TgoFyPtkrVOZG/0gArkNy9CKC1Yig4YKfV9V7pvwLINXvcHCKTm0S8Tzv4ce4RMSfsahLyeknQZ6BSj/uydsodclKEFkn+sod14mxibAaQPbvyyYye9QjaQRa/MV6EGV7OByruCQOrTIiOOfZ8OeSejuuNsfztQbc68PY4toZSXHGWE2/moj94rk2q9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Maw3mSRN9YYhS0y7WZnwCKwEI7GO02eMEl3jJ/6mfUQ=;
 b=mYEr5pKWhOHxiH8EeM3BB9947ZDf79aT1bHRZ8p5kdaDC46boVmYYFd5n2LLAu46bpssHo4pMIoshbiBRPHHp1aV/6A2Mfwi434lQS12Fr/yPwljDTP7pJZzWvN7qk1gvCl0v6UgHk8XHWQT18k67UQSiWQbzo1IYkrbJDXQdX5H2nbp+L2MimpwBkvBbe2VgzYT6g3nzVvnfUmRIB6X1jjIleXfXsmcqIp0G0MbkhTTqWTXBbJGndizSfvfwtXOuD4xqnD42mRxHJ5GJ8WIow2w81++d4U6Pb2wZOAYvxRqqQjE50Cyjl/cE8oQGw1b9MhkgIUw3jSXrFJouuvcJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from CY4PR03MB3399.namprd03.prod.outlook.com (2603:10b6:910:57::13)
 by DM6PR03MB4972.namprd03.prod.outlook.com (2603:10b6:5:1e4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Tue, 20 Jan
 2026 14:28:16 +0000
Received: from CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376]) by CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376%4]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 14:28:16 +0000
From: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
To: Linus Walleij <linusw@kernel.org>
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
Subject: RE: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
Thread-Topic: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
Thread-Index: AQHchxtbbOjcE2XGE0Ogv5eM3naLObVYk24AgAKNpoA=
Date: Tue, 20 Jan 2026 14:28:15 +0000
Message-ID:
 <CY4PR03MB339998CE283A3D13B534F47A9B89A@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
 <CAD++jLnTM2u0pD3EddbfpmAHY_SDb-cm+5kfEWWEF9o0i5LSmw@mail.gmail.com>
In-Reply-To:
 <CAD++jLnTM2u0pD3EddbfpmAHY_SDb-cm+5kfEWWEF9o0i5LSmw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR03MB3399:EE_|DM6PR03MB4972:EE_
x-ms-office365-filtering-correlation-id: 7d2861aa-dfdf-4602-b4cc-08de583026ab
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?emZwYTdaNHk1ejNTbHBXdldGVExtQU5OZHFHSlpDNjJoNy9rcU1IL0ZaWVVQ?=
 =?utf-8?B?QzVJbGVKenpyUExSdkw5UGUyeVUvZllwWDA3S3VpV2d0TGUrbUlIZ0V6a3kx?=
 =?utf-8?B?UTY4OE1UVzRicm12MW1jT0lDRHEveVhPUWw5NHdGdlExeXdINjdMTkZJK2tO?=
 =?utf-8?B?eWg2djlwUGNKcWd6dUF2QmRIWHROMXZKRG40bWhoM0Exb0NXNVhBRHZYd0ZH?=
 =?utf-8?B?MzcrTjZCWkR0T20yMUxiUTZndDIxQlpKWUdxcEdya2RVN3VVVFNueWFmaFQr?=
 =?utf-8?B?UDNkTkh6c2tmSXZJdHpWb0VuU0o3c1pKVmFiZWhvY29RNktPSjNuNnRMYXEx?=
 =?utf-8?B?SC91cDh2KzBYVWNwM0RXNUxCSUd2ZzNIRkg5Wi9PellQM05GYndMTHpLUW5W?=
 =?utf-8?B?M0xVMmZVckc4WkpuMm5wbUhacTdXTWZ2VGprWmVIdFQzelY4Qk9mMXl6YkZS?=
 =?utf-8?B?UkxnS0NqSGZERWlJeGFhbXVHOHB0VGxtRld5U05LRWJZcWN6Tm4wN0prUWJU?=
 =?utf-8?B?eTU1amFlK1NsaTgvaEVDREVxOVFlaDVvdXRyNUc2QnZGWVZmcEM5TWNtc1Nk?=
 =?utf-8?B?WXhIM0p5OFByL3A2L2xXVS9tVFNRMU5ObFhVMFIyZXZtWWgzaG1EbjRnV1hS?=
 =?utf-8?B?MDRhWTlGb2F4Ri96Zy8vZnJmdHAyM09JZFp1RTZRenMrZWV6d1lkbDdTM28x?=
 =?utf-8?B?Zi9kWGZ3RXRaUXFzbHlrMmU5RDhzT3ZqQXhnb3paRnhITjN3NnF2WURUcjVO?=
 =?utf-8?B?MzJrNktaVEFxQkRRYU5YM1lkc0l5Q2VaM3NHdDF5SUZZSUtIc3h5dWhCdFZH?=
 =?utf-8?B?blRKNUtGWkI2TWZQRFl6aENURHV5SVF2djMwMFdESW8xeVp6TzFGK01pMXdP?=
 =?utf-8?B?dnVDWDk5R0grZ0duQnE3NDg2ZXZrQWRjTW9BRmRobTkzcVZMSTB4V0ZCeDNw?=
 =?utf-8?B?d01JOVhTSm10dkpGcDZRWnVWQVdueUV3ak4zRDFpMW5OZGd5Z0hNSTlObGFa?=
 =?utf-8?B?WkRpQjQvTS9DMUlRR1BGMzFGUFNlclB6SWhVb043Zk9TL2pEdFpEZEN1MmFM?=
 =?utf-8?B?eFJyY3Bxby9GcnNRUC9sQktpQjlid09seDFLTXBLbXZub3I0akppK2VOVWpS?=
 =?utf-8?B?RExkZEdUN01vVkt6dHh1MGVtZ1R1SjVVR0ZEYk9PV1RILzRFa2ljVWp3UHh1?=
 =?utf-8?B?VGNqVkZkRUIxSXhEQVpvQXhURUozaEFoMHVTNFVTL3ptMnZGMUNZNVhYcnJj?=
 =?utf-8?B?Z3dDbDExeG1XWXZJamRCVEZXWE9acDdWZ0x3NVMxZ1MvOGdORGdkWUNvc1Ax?=
 =?utf-8?B?blNLbVBIK1FvYzRFWCtlZFc2VFp6c2JrV2dNREZUK3plUzREbVRRWW1uOVZY?=
 =?utf-8?B?ZVNQVUp4UGdQMExJYjM2QjFGMHllUU5Cc2JBalNlK2MyaVN6TEdCUXArTmln?=
 =?utf-8?B?T2tMd0JpM1ZDejR6THBNMWRkUHk1OVNYbnJ4MWhiTTJjcy9yKys0cWIvcm9P?=
 =?utf-8?B?dEFiS1pkbzI1NWc4T3AzZEFweHg1ZUtGY2FFS2NDWnVqVUVvb0gra3JscUVF?=
 =?utf-8?B?MzhlVHlmdG4xbzcza01BQW9TMksxSU81cW1yaW1BYnhPY0orQWIyaEhwaVJK?=
 =?utf-8?B?ZFRhcHdVQ2xGUUx6V0Z2NGNqM0FSR3VLT3VUYitrVyt2aURLajRkaFhQdkpW?=
 =?utf-8?B?ZzluSStiWjZRb2MvSExESXJ5OHB3OFJWaktZZmVOajRjWVRYY1dadWpIR1E0?=
 =?utf-8?B?S0ZVZ05ZMFlMK2JrU1BpVjZRTVhHak9hRWJuNXkwVVdpOUxwVWtCcEFqRzQv?=
 =?utf-8?B?K1Jkc3VGU2VPdG51VmVxUmVyNkFkQWxZK2tJSjVIdTFCQVVFKzdwaHhpdjdo?=
 =?utf-8?B?dGtHcnJ2R203WlZmc3kxSXFoQlBOYTNNam9CeEthdkJ5ZkFSdk1YUVdOUVB2?=
 =?utf-8?B?K3h0YXZCYWo1U1pNZkUrUWVYQWdWeEszT1lBaHhtRjh0enQ3U3J6SHh1OFlG?=
 =?utf-8?B?TGVTZ3NzLzVwSEgrc1krMTlwRVErcmIxZUlvVDFrZ2daeGhuL3cyMGMwamhW?=
 =?utf-8?B?TUp6RFNQY0sxRFVJY3dhVHJJWm5Nak1yK2w4VmJwZklWL0dQM0xsZXpOV2tL?=
 =?utf-8?B?QkVmWGpSM1hjTkY0OS93cXdSUDduckpMZ3VYOGVSR0Y0U05pYzVKRld0VEtC?=
 =?utf-8?Q?RTcEKf+WBcpuW0zo5ZcuH1c=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR03MB3399.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZE8wTU1LOFB5Z1diWkJyblRTZTVtVnZ4cDI4TXBSK1MzWUNPVW1pcmxYeUlX?=
 =?utf-8?B?eHNiQmJMNEtIeFpyMC9IR0xjK3l0VGpmam9SMzZsMk1MRGVjUDB5WVlDUHU0?=
 =?utf-8?B?LzFVV3dhZExqZEpQQnVVdHZFTVBuYXlCb0xHOUZlY2djd1grRmpzb0p4UFFl?=
 =?utf-8?B?OFAxQ1BpUENNazI1R3VxME1JTlZVSVJCcGs0aDNOd1B0dnRYSXBsZTF5clVq?=
 =?utf-8?B?ZVkyUUkxZVZjY0JtTE9wYlZweEQ1MnF0dEhhVW1NelowMXdHT2RHaHBGL0NQ?=
 =?utf-8?B?d0h0UmYvZGJKZTE5U0hBeXliZmZhOHFkQjhyVkdsMTFHdnMxS0JJYWgxMmtD?=
 =?utf-8?B?RVFkQ1dMNzllamR4T2JyZkJRd2VBOGx0RERKenlSWHZmdk0rVVhhMC81RUE2?=
 =?utf-8?B?L0dCVlJWb25IMHlKakNlT3Q3VGRONCt2ajJ4VC9BU28wMk1sdUZmcC9zQ1RO?=
 =?utf-8?B?c0RSWmNabU9qb1hRV2dVNmJ0aGNqbjhoVGJZQ0tKdkV5SzJhbmxBSEp4THo3?=
 =?utf-8?B?b3h6dVBpY0tDakVIaUd4Vkk4WC90cUJ3Q05rNW9HRnN5YjMyaTJhenp1cklI?=
 =?utf-8?B?VDRWM21vN1VmZTRrSCtSWUsyK3dtSW45U216MkltRmJ0elhnVnNpQmFYcG1Q?=
 =?utf-8?B?Y3JxQlIrUXlEWUJGc3o0Q0wvbkdUVlh3cmlkYWw2Y2c4TGlsNnlkeUY5RFB6?=
 =?utf-8?B?c3ViZWhVVDBGU3VyZDc3MEtNVzN2aWI2blhwckJBOURiQ2FMTFpsb3JvelNY?=
 =?utf-8?B?bXY4Mk11aXZwVHdJbFA4bU1QZkZ1RW1KeU9KeEUyVTV4Sjc0T1hzek05QUNH?=
 =?utf-8?B?a2FJQWpyUTczdEpWKzB5LzJmT1JXb3RjckVLcldZcVhMWEtWa25wOWRpTUh2?=
 =?utf-8?B?UkRrcGxjWitRdXE0VHB4OEhnWGdaTlRQa3NtUG9kUUZvU1RhbXlHYXJYYitR?=
 =?utf-8?B?QTN6SWRzVDZoV0U4S05TY3k1WSs0ZDFyL0J3WE9adFd4SmpIcEZ6RCtGeDBo?=
 =?utf-8?B?TFZxU3JVanRxNnFnblVQdDh4aFkzU1oyL25vRHpyYkdHa1dkbkV0czAwMmJa?=
 =?utf-8?B?WHBnRFljRFdXTWw0YjZCSFRqalRPTld5bStWQlJGVmJaVjFsVm95alI4OEVk?=
 =?utf-8?B?aXU0dlZzLzlPS01SNW9YQ3dHUjdXOXEzQ2ZaMjRuUXJMaFZQREtPV3JYc2xl?=
 =?utf-8?B?UEhjSjZ3eHBoREZPT2VKNUs2QWxiS2d2RVIvMEFkSkw5dnFtM1RDVnhVRmlX?=
 =?utf-8?B?RU5JS0Q5V0d6ejJhbEtmRVd2dnFVVUl0REVxam5SUDVHV2FXUkw0QVBiZC9T?=
 =?utf-8?B?di8rQzZWY3E4UlZrYmhPRWpGelI4THVnZGU3QVJPSWd1VzZDNjlZRlVWbW9I?=
 =?utf-8?B?b1lCUW1HdXJibFJxRERCdzA0UWViVDZmRG84azZlakpNTDF6MFVsSTNqZERy?=
 =?utf-8?B?STlybkpKdy9haXRwT0NzenFCb2EzVDBUb01PRnM5MWYvWTVJMGNIRW5LcTJ5?=
 =?utf-8?B?NUdvZ1ZMNGw2SEZIckE1L0FzdEk2OWlIN0d2T1VyeTBuRE9EV3UwbDdBRUMy?=
 =?utf-8?B?TUVNRUliSzU5blJLVjllbTVQL1RLTFAyNzR3UmFtYm8vMUhmZU5WUmpKOE5i?=
 =?utf-8?B?Wm91UjFNVHpyaUNCeWNlTjVqLzJERDdGUHhaR2dyd1dMTEN0czJPVXdXbEdM?=
 =?utf-8?B?bm41UUdWVUoya3pWU3NrN0YwVklhUnFRYk1NeksxaHNNZHF3ZzdiTm5Odm1E?=
 =?utf-8?B?eTdJT1paNE1nbnJEckc2eVppQzUwWUh5U01iZk1DS3grQ2VHWlZ5QUNraFBF?=
 =?utf-8?B?eWJJTU9PYlg4UE1SYkJubG4xRC9hTnR5UGViVndneWlEc2pPclhFeTdNVU9G?=
 =?utf-8?B?SlpVc2NuRmNNQ2JjT2lSLzYrS0EzSWc4S3pzdlJlSjgweS9TcmI0YndQM1p4?=
 =?utf-8?B?T2FESEJMOEg5VXp0UWZENlYycEllNkVKS1k0aWc0cCtWSzMxWjZ1REFPZXZG?=
 =?utf-8?B?N2xqRU11UTAzS1pwMmo0SWY0NDhlVzF6MWRqcE9ab3Q2dnNVVlhQRjJEdXpy?=
 =?utf-8?B?VGt4b3VqWlJDd2JaRlJRNjlZR1RLTUpINzVHN1RrczRhUm5CSy9UNldOR1Nw?=
 =?utf-8?B?bjhiRVQxM1B6Ky9wSitJZHJWVUt2SDNRYVBQVURETXoyNHd5U1BDK0tSblZz?=
 =?utf-8?B?emIyN29WVVJOM3F3Z3RmeW5JU0tzenpvUFlXWjdKc20yL0RZS216dGFvamU5?=
 =?utf-8?B?UEZwK01IWWZCYzJOcHMzY05hclptOTF4Ulg2dDVtWUVSZmFJUnUvOHJLUytw?=
 =?utf-8?B?VUlYZzI2YnV1YmV2b1VoQ3lyeE5XYTdmTU1sU0puOXdYWnpOM2NvUT09?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d2861aa-dfdf-4602-b4cc-08de583026ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 14:28:16.3557
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u0kfzya4qgeJyPIijIetCZeB5ancnW81wD1IyUrEIY04ioB903pwCjmo2VUx8XuDk0FBev5TxiHrZP+NPfs0GOzNVrppvlam5IyDGjHoUFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4972
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDExOSBTYWx0ZWRfXw7zY0yRbmEIN
 3hmBUTTT66n7F1ncyNj4xkaZqek/A+iCyM0w9q0CtD7qlinHmNPT4B0RFjMlUCOB1fHnOX4iHJs
 +zpwh+5yK+2nINwuAQ4VlKpiDwC53bhewqv2JGy2zTvNx2r2xHtu6dEeK7riiD680RXkq7Q9igG
 M8AApZRRT6AI2YE5ndukIsRsa9VSSErh1FIP+iYAwzegoHWi0RIOCAntZDG6QLkUdU3znh8jAFS
 9odw/cdD0sAmuj8eXQs/q83yYFqjWJuf4Rl8yBuun7A1ERsPsGPTXSrzrB57agrNprvGbXH/PVP
 HZLnInY8DpjKAHFdeC3qcggpAVckERSHx5oHwe7UV0I8O3hEBL+PiEOH1IEc+1VNJZiRACha8kz
 uqKovwInPzgjsSM4T6clEKy5xn5nO6wdU7rnlEpjfntxBqIt8KJlYGmsiBZn0V+fhTYDxZOXKiQ
 Tf3WueUKDnq6KzxJ8sA==
X-Authority-Analysis: v=2.4 cv=APzwlQjn c=1 sm=1 tr=0 ts=696f9105 cx=c_pps
 a=YOgfsySBG6Gh3lLixmEA+w==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=gAnH3GRIAAAA:8
 a=IpJZQVW2AAAA:8 a=7OdVWf6QymJkfuCrR2AA:9 a=QEXdDO2ut3YA:10
 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-GUID: 6Ya7zAgFK7XgekN_Q7JjAPWpcK228nBi
X-Proofpoint-ORIG-GUID: 6Ya7zAgFK7XgekN_Q7JjAPWpcK228nBi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200119
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,baylibre.com:email,axentia.se:email,CY4PR03MB3399.namprd03.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[analog.com,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Antoniu.Miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 288DF470C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMaW51cyBXYWxsZWlqIDxsaW51
c3dAa2VybmVsLm9yZz4NCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDE5LCAyMDI2IDE6MTkgQU0N
Cj4gVG86IE1pY2xhdXMsIEFudG9uaXUgPEFudG9uaXUuTWljbGF1c0BhbmFsb2cuY29tPg0KPiBD
YzogUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT47IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+OyBLcnp5c3p0b2YNCj4gS296bG93c2tpIDxrcnprK2R0QGtlcm5lbC5vcmc+OyBDb25v
ciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+Ow0KPiBTcmluaXZhcyBLYW5kYWdhdGxhIDxz
cmluaUBrZXJuZWwub3JnPjsgSm9oYW4gSG92b2xkDQo+IDxqb2hhbitsaW5hcm9Aa2VybmVsLm9y
Zz47IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT47DQo+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjQgMC8yXSBtdXg6IGdwaW8tbXV4OiBhZGQgZW5hYmxlIEdQSU8gc3VwcG9y
dA0KPiANCj4gW0V4dGVybmFsXQ0KPiANCj4gSGkgQW50b25pdSwNCj4gDQo+IHRoYW5rcyBmb3Ig
eW91ciBwYXRjaCENCj4gDQo+IE9uIEZyaSwgSmFuIDE2LCAyMDI2IGF0IDQ6MzjigK9QTSBBbnRv
bml1IE1pY2xhdXMNCj4gPGFudG9uaXUubWljbGF1c0BhbmFsb2cuY29tPiB3cm90ZToNCj4gDQo+
ID4gVGhpcyBzZXJpZXMgYWRkcyBvcHRpb25hbCBlbmFibGUgR1BJTyBzdXBwb3J0IHRvIHRoZSBn
cGlvLW11eCBkcml2ZXIuDQo+ID4gVGhlIGVuYWJsZSBHUElPIGFsbG93cyB0aGUgbXVsdGlwbGV4
ZXIgdG8gYmUgZGlzYWJsZWQgYmVmb3JlIGNoYW5naW5nDQo+ID4gYWRkcmVzcyBsaW5lcyBhbmQg
cmUtZW5hYmxlZCBhZnRlciwgcHJldmVudGluZyBnbGl0Y2hlcyB0aGF0IGNvdWxkDQo+ID4gYnJp
ZWZseSBhY3RpdmF0ZSB1bmludGVuZGVkIGNoYW5uZWxzIGR1cmluZyB0cmFuc2l0aW9ucy4NCj4g
Pg0KPiA+IFRoaXMgZmVhdHVyZSBpcyB1c2VmdWwgZm9yIGRldmljZXMgbGlrZSB0aGUgQW5hbG9n
IERldmljZXMgQURHMjQwNA0KPiA+ICg0OjEgbXV4KSB0aGF0IHJlcXVpcmUgZW5hYmxlIGNvbnRy
b2wgZm9yIGdsaXRjaC1mcmVlIG9wZXJhdGlvbi4gVGhlDQo+ID4gYmluZGluZyBkb2N1bWVudGF0
aW9uIG5vdyBpbmNsdWRlcyBBREcyNDA0IGFzIGEgc3VwcG9ydGVkIGRldmljZSB3aXRoDQo+ID4g
YSBkZWRpY2F0ZWQgZXhhbXBsZS4NCj4gDQo+IE92ZXJhbGwgdGhlIGlkZWEgaXMgc291bmQhDQo+
IA0KPiBJIGRvbid0IGtub3cgaWYgImVuYWJsZSIgaXMgYSBnb29kIG5hbWUgZm9yIHRoaXMgR1BJ
TyB0aG91Z2gsDQo+IGJlY2F1c2UgYXMgSSB1bmRlcnN0YW5kIGl0IHRoZSBzaWduYWwgcGFzc2Vz
IHRocm91Z2ggdGhlIG11eCBldmVuDQo+IGlmIGl0IGlzICJkaXNhYmxlZCI/DQo+IA0KPiBJIHdv
dWxkIGNhbGwgaXQgImhvbGQiIGFuZCBtYWtlIGl0IGFjdGl2ZSBsb3cgaWYgaXQgaG9sZHMgdGhl
IG11eA0KPiBzdGF0ZSB3aGVuIHRoaXMgc2lnbmFsIGlzIGxvdy4NCj4gDQo+IGhvbGQtZ3Bpb3Mg
PSA8JmdwaW8gMCBHUElPX0FDVElWRV9MT1c+Ow0KPiANCj4gdGhpcyB3aWxsIGhhdmUgdGhlIGlu
dGVuZGVkIHNlbWFudGljLg0KPiANCg0KVGhhbmtzIGZvciB0aGUgZmVlZGJhY2shDQoNCkxvb2tp
bmcgYXQgdGhlIEFERzI0MDQgdHJ1dGggdGFibGUsICJlbmFibGUiIGFwcGVhcnMNCnRvIGJlIHNl
bWFudGljYWxseSBjb3JyZWN0Og0KDQogIEVOICBBMSAgQTAgIFMxICAgUzIgICBTMyAgIFM0DQog
IDAgICBYICAgWCAgIE9mZiAgT2ZmICBPZmYgIE9mZg0KICAxICAgMCAgIDAgICBPbiAgIE9mZiAg
T2ZmICBPZmYNCiAgMSAgIDAgICAxICAgT2ZmICBPbiAgIE9mZiAgT2ZmDQogIDEgICAxICAgMCAg
IE9mZiAgT2ZmICBPbiAgIE9mZg0KICAxICAgMSAgIDEgICBPZmYgIE9mZiAgT2ZmICBPbg0KDQpX
aGVuIEVOPTAsIGFsbCBzd2l0Y2hlcyBhcmUgT0ZGIGFuZCBubyBzaWduYWwgcGFzc2VzIHRocm91
Z2ggDQp0aGUgbXV4IC0gaXQncyB0cnVseSBkaXNhYmxlZC4gV2hlbiBFTj0xLCBleGFjdGx5IG9u
ZSBjaGFubmVsIGlzDQpzZWxlY3RlZCBiYXNlZCBvbiB0aGUgYWRkcmVzcyBwaW5zIEExL0EwLg0K
DQogIFRoZSBpbXBsZW1lbnRhdGlvbiB1c2VzIHRoaXMgdG86DQogIC0gS2VlcCBhbGwgY2hhbm5l
bHMgZGlzY29ubmVjdGVkIHdoZW4gaWRsZSAoRU49MCkNCiAgLSBEaXNhYmxlIGR1cmluZyBhZGRy
ZXNzIGNoYW5nZXMgdG8gcHJldmVudCBnbGl0Y2hlcw0KICAtIEVuYWJsZSB0byBhY3RpdmF0ZSB0
aGUgc2VsZWN0ZWQgY2hhbm5lbA0KDQpMb29raW5nIGZvcndhcmQgdG8geW91ciBmZWVkYmFjay4N
Cg0KUmVnYXJkcywNCkFudG9uaXUNCg0KPiBZb3VycywNCj4gTGludXMgV2FsbGVpag0K

