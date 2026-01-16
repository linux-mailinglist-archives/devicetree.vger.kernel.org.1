Return-Path: <devicetree+bounces-256158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 80689D332F3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F547300297E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D968336ED4;
	Fri, 16 Jan 2026 15:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="PBgEdO3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB4532939B;
	Fri, 16 Jan 2026 15:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.139.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577178; cv=fail; b=E3l+nbfa9zVGDlWC9zpXnkQMFwKrzGt3mG2uKcXwyswnktLd9qOKsw2oyX6m5+LvW/PMnWqUisnsuAHcxqj58ZFR5dYmDQDiIoBNLUOkSvxecgUIS9qeemotM7NKP9owLpalbvFUyTsagFqr3vAihDx1ZtGj6Evvz0sh3gJAaL0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577178; c=relaxed/simple;
	bh=t78kIUv3p7B0cblZUW7wqn+08nVwisI1MaafQv+1K6A=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=X6+Bb5wp1KRqgGs8uqPSGsShm41fDDfOUJMAjDSFrNWqn6urbYWo77upBHKi9KRJkEvGABww8ZT5EISBTqamuTFg/xHx1sYvIO7NIapJmoT8IvnlCaqsskd1XnyViJcbMryXHDC5TEprSCcZRA1FQgJldFkS90rX75X3IbJDrjI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=PBgEdO3b; arc=fail smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0516786.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G9wwNP181322;
	Fri, 16 Jan 2026 10:26:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=t78kI
	Uv3p7B0cblZUW7wqn+08nVwisI1MaafQv+1K6A=; b=PBgEdO3b918PWlgAte5gH
	g2b6pL/MnRr4vNwUtDGjspRDCCJ1VJfLpg2jzyFStQgzzFSJq8JjxhCSHZzNLL65
	9NlrszYXMaXofj7jR9n+Hqv+wM4cuqtEfE5dvRNkXochnDSWPXjdSj0stdgw4o4t
	HjzMp/5dSRsKPiKOQ67hX0TunRodHbvTe00RHPBow+DInbYz9XO9d6fhn3o82poU
	WBeownfNFeF+mknTXNjooru8N10QfRjVkO2zeLwzihuqu7sFoWbfbt5y87zQd3TU
	U8fWr1KQ/zeCyhi/s9rs1EE0Fk5c6nLb4LVPDQ7zn0GZaQM8cX7ok6k2JJLQgcTi
	g==
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012020.outbound.protection.outlook.com [40.107.200.20])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bqhs8954r-2
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 10:26:04 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pOpvhHNA32zlE9MYWE2oesTpPI6BXNgVmQnXnbMKWxgbMxqpRQhWthNiBql7j+PzoQu9p+uJaGBWOzEUyL38N9cFDE25USreBO5E7AZ6n58GHXMzTYCXUF5TSDB9KJmKedY5MNdXkezFKp0OVyQRen8Ojyu5jUXVlwPDzG3e/JFqdqcrUkCQY3IUige9y4CDuckoHSCavDaGrY8Kp6N5avzJeQmXLjAUJyhWn6EpWBvv3yIj1ypYuHMNXZLbZDvGRqPOYbyOB+vuP3S6Ci4NvvilY5Fero0n8+e0Krip//ZPGf4IrQtmYkq3XQjAQiie73se2bnzMjeJt8HOIhGzAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t78kIUv3p7B0cblZUW7wqn+08nVwisI1MaafQv+1K6A=;
 b=lOOjLKnBi2++/MUa7UtGtW7yHy5QzGsEL6gw+Vsxi8GOpcMCOBqnPxkWPG7Sqawq//FHKAfh8cFqXQTvKN/15X7WdfmoDeDeSZLsYuTCDH1lR6Fd8cH962uO8y0xS7hQLLzo/XQTSfcdX64RYL04vJkKwD5O0MCJ4iJLOf43eEQakwz+HVMiGJBw8yIh9ecu93O9nzOXaSgJXSfMUerwfIzOTQ2+piUafHzNBDoJzb0ulCL45ApWW1zYCnyLsRlc8nVfMNoE9rE0BOwaaSZ7F3FzP+jJHDMju21GfyI0phggD5cjOorsJU0dYCIhlUbF1TfGrKt5XPZkf2SrnvIt0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from CY4PR03MB3399.namprd03.prod.outlook.com (2603:10b6:910:57::13)
 by MW4PR03MB6346.namprd03.prod.outlook.com (2603:10b6:303:11d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Fri, 16 Jan
 2026 15:26:00 +0000
Received: from CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376]) by CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376%4]) with mapi id 15.20.9520.003; Fri, 16 Jan 2026
 15:26:00 +0000
From: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Johan Hovold <johan@kernel.org>
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
Thread-Index: AQHchhr3dov1UEjYeEaIFVcFak4Lq7VUeoUAgAAGg4CAAAo6QIAADzcAgABMYoA=
Date: Fri, 16 Jan 2026 15:26:00 +0000
Message-ID:
 <CY4PR03MB3399926330D164F88A7A1F339B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260116-jumping-premium-crow-693a1c@quoll>
 <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
 <CY4PR03MB3399D140FF51521F67AEF8599B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
 <ace6ef5e-d636-4886-8f8b-c318a81522aa@kernel.org>
In-Reply-To: <ace6ef5e-d636-4886-8f8b-c318a81522aa@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR03MB3399:EE_|MW4PR03MB6346:EE_
x-ms-office365-filtering-correlation-id: 48ed277e-270c-4fd2-5ea0-08de55138dc0
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?QWRDZUdNMVRYQTY5RnhLWlpRQ3FOdk0zaHNyMXBGYkxualpnd0pzR3F1VDJF?=
 =?utf-8?B?RGJmWGYxNjJjbG9NclAzM3FoSkFpM0lDMmg4ZFQ0dlFiK2lGLy9nT0tvc2N3?=
 =?utf-8?B?SFhlbUJPeExUSzJiQVFnK0tsUmczQ1hrTEFOUHpWVlRTenBTM2FZY1VhSXdJ?=
 =?utf-8?B?alhBdkhUT2VYaDQ4b0FvZ0QwTjB2L0UrOW9JMXEzOXQ4YmcvbTFPZHlidllI?=
 =?utf-8?B?MWRQTEwzbXBLenJoMGRiQUlCY3ByT3NLL2JVOGlRS1h0Qkp5S1NLM0V4aDBI?=
 =?utf-8?B?c0dnWXM4UHR2N1lUbFdXYjJtbUpHUFlnbXBtSmM0MFNUTGZzTUF0MEc4Vi9v?=
 =?utf-8?B?UGJtS3ZpdllhWnQ3Tm1QNEpqaDZPUEpCRDJ3WitRYnM2SzZNK1pqUU5Ua3N3?=
 =?utf-8?B?U3BZNExBdnF3ckRDTWlYSkpyZnN3dThqZGVRNC9DOEFQbU5Dc1Q0YUVndm9a?=
 =?utf-8?B?bFF4aXpwMVRnSFJoeFlwbEYxV2NmTTdQWStUTjRZc3lZNFlwNU0xZ21TVzB1?=
 =?utf-8?B?VUhreVY1TWV3OEdnOVY0Rk9RZEcveU14djNYcDRwcEJQcU9VMGV4Mmo2Q0Fm?=
 =?utf-8?B?cHA2dlh0eHFuWFZkUlhUTFFDeUx3R0FnODZIajBDYWlnbTNtUityckljbTJ5?=
 =?utf-8?B?U254T09PaUR1SUxLVWErTlNleHpsRjU5Q2lXK2dCS0VaS2prQVVRcTdLTnZi?=
 =?utf-8?B?MklzVXJNZkxhbFFQdTZqWE5qbDFEVmo4M0tnOEl4aEhjUituSCtWdzZ0Q3hw?=
 =?utf-8?B?Tk1aZ2xjZDlBbjVuSVhXeUdMNGN5UTRMaGN0NWVEaWp2Zk9KZzJNNFFJNVl0?=
 =?utf-8?B?WnIrSGtXSXd6OXZaZmxIcDNMSXcxQjlkcjBCN3pxMmRTSC93NXhoaC9yT2Ni?=
 =?utf-8?B?SnlFbkQwODJJeGhob0JpcUxSWW9YSDVxWU90Rjd2S1BNYjRVVyt5dnRZS0pm?=
 =?utf-8?B?QUtTOVFyUnZzTlEzOXVYUnVqL1RQbVBzeGNaby9yU3JDcGYxLzFPTTFTdHgx?=
 =?utf-8?B?S1RvK3RnekkwaFJBVElZa29PMUxhN0JxZzg4aTJUcWJZRjRZZ3VQeENUNjdl?=
 =?utf-8?B?SnJNSXl5S1Nad3Q0Mnc4Tm9OOEFhK29NQUVNZjA0MmdPc2Rsb1RzTUFUcVhM?=
 =?utf-8?B?azdaK3I5RUZtb1RrZnVYeEIzeFh3UGw2OFdjdmtrSGFXU0FBdktCNGc2c1Fn?=
 =?utf-8?B?KzJLeU9adTg5SHBlOEFrbGhvcU5TamY3SWZ6NVBsVW14SDk5a00zVkgxWis3?=
 =?utf-8?B?NjVmdWdjdkxab2ROd21WbDg1UkJBdHlXZUcrZTFIUDduZWR3ci92L1o2a3dz?=
 =?utf-8?B?NERrLzNadEVMY2o4eEg5UFdlOWllcWxMNTgwRTdXSnY0YTRxdzBHUG9jb0VS?=
 =?utf-8?B?bkVHTy9jSDBPNGVXTFN6d1lPOWdhdkM1QVN6UWFKV2plL1V6WnorY25tRDgx?=
 =?utf-8?B?QlhlUkkvNW1UbzhlbndoZlE1WFBsT0EyckdVcDZ3Zm5SeUxHRXkvMXIxUDZG?=
 =?utf-8?B?d21ycStkeGlBUUZsQy92QlZKZjE3LysybWh3TkJRa3VKS1lxS0xubE5RbVBT?=
 =?utf-8?B?bjAza3RlVDNubFBRbURxR2h2NzM5S1hMZEdjZk5QTGlLYjNndHdoRlQ1dFBC?=
 =?utf-8?B?YU9FbzdsRU5VekNteGQwZFUvOVIxVThqVHo4MUpuNVNIaXNUMThtQ0JpQ3VP?=
 =?utf-8?B?MktzVE94dUh2UFhMZGZscnNzVFFXT1JWTFVreHRTNXRtRU1heTF6VjdoalZk?=
 =?utf-8?B?Nkk0d2FONWZBdjVKZ2dSQnVzVFBRSkQ4ejF5V1hsb1NDNTlZeTI1dTgrM0NF?=
 =?utf-8?B?SzBxb1Q1RWd0UlBTUlhOZEJPQjZ1RVU1Z3VONm5HbisrM2pzNWY4VHgvdDV4?=
 =?utf-8?B?RGZ4Y0thQ0VxVmVlWmZyRzhRSWdiZWFCUENieHpaQm1xY2pZV2VwQ2xvZzlP?=
 =?utf-8?B?czFnak9sand4SnR3RWZVdFBzRlJlT085RzMyVTR0MzJNSjBONkdWSnVnWUV1?=
 =?utf-8?B?d25FZCs3aXV5WHcvcTY3SUtyS1FBbUlkd1VmL0dLcTY0ZndUcnp1aGV6cDR5?=
 =?utf-8?B?dHJSZHh6N0ZJNFNoYTRCTDFQUXVoa0JOZk14d0tSeUdBUE96T0NRWkk2aXpI?=
 =?utf-8?B?OU9OUkNkSzJrK1pRTW4vVmxmZmkrTUd3ZGhYWkhMQTBheWdTSytoY2VKcXhT?=
 =?utf-8?Q?At2G9hUbfmHJhGYSgGfUz0U=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR03MB3399.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?M1lCMnduYmlIbHpuUDM5VEQ1T0J6eDFmc0haUTdNMFVTTDl4Vkt0Q0VmQ1Fv?=
 =?utf-8?B?SXgxcHV3bFFxVnpiVzJCaU9oT3IvYWdycVVvdkU0NHp3Rno3VXQyVkZabFJx?=
 =?utf-8?B?SS9KZ0ZLS0N3NUd4RWhEdXlqNWZLbXdKVFZKY2ZNUTFKU0gwSnAxZC9kdGtP?=
 =?utf-8?B?ay9TVlRwUzdRNGpHSTh6Q0ozQXVkY2JvbHducEJFWXBaQXZtQXRaZDJRR0VT?=
 =?utf-8?B?S2R5UzJISnM4TjdJVVVMVjVVWDhIYzZWY0t5OFRndWZWNXVDQ1MxbUJjYlVp?=
 =?utf-8?B?aHFUa0duRGszUVdZVVJJeEw3aGl5S0lMd1FnSXk1RllVd0xDUkVuY3dXQkFh?=
 =?utf-8?B?aitJMlBLbFZtV3lnKzBZZ0haSG1VamdHVmwzci9vMW1oeTBtOHZqWDM5aXYx?=
 =?utf-8?B?UXhmblNLUXdGaDZoemljdkVsOGtLZ3hPaGo1QzZGT2F2WHRxUGtoRGRlMUFk?=
 =?utf-8?B?UisvbExJWlNaNDJ1QVdIMDI3aEE2d2VZY0JsZFpSczBsUTBKaVVxVXo0NG5F?=
 =?utf-8?B?VmkyQy9qSUlpcUowamQvMnFLemo3YVRXYll0aWZhSGFNL0kyazkzOFIxaytP?=
 =?utf-8?B?WnlDVWtlTXZTM2l3elFycFkvdTk1NWhVWFd1MGRtVTdrT1pwelZiZkh5REdy?=
 =?utf-8?B?VzNhOVVIZ3VOTGw2NjdnbTUrdlZ2UHgzbjlMaFFCRWdPcEZvN3J5S0tVMFpF?=
 =?utf-8?B?S0lPWTRnWkZ1cHZpalF3Q0VHcTJVQkdORlI3ak1Ua2g3S2JWUzZjYk5aOE1v?=
 =?utf-8?B?YWdQUEhMb095OHNaa0g0QTdtRGF1clExUjRERFVNNVRwejhEeDhwVnE1NitT?=
 =?utf-8?B?aWJpLytsMHZ2WnFXcGhzVFB0YlRNWnBOOVNTck5aVUs0TU5tSGJpWGM2NzVv?=
 =?utf-8?B?RFhoc2JVU0kwdFd0MDhibDZiTWsyMGNyRGowNVV3bThpVmZoVnczN3pPZ1lh?=
 =?utf-8?B?VmZlb0FWQWRTcUtnVDQ3clA4dUNxTkdsbWV0RUJXemJtYXZXcithWWMyT1VU?=
 =?utf-8?B?a1RXdTM2TTg0YXVuNTVNUjRUNk9NTCtpN2pBU2F1cjBGVTFYMUd2b0VYV3pE?=
 =?utf-8?B?c1FwTDc3cTFMcENhTXFqNVB0QTJwM3YrbnJoaVJBLzZENjdRdGNrUXY4T052?=
 =?utf-8?B?U2hRNmI4a0JQdmk2cDgrNXBqRE5YR2tHMzlZMUFiS2RTTUw1TWdxZ0laRzBi?=
 =?utf-8?B?b0o5MGVWWUlub0NKTFlYUzlrUWlBVFpoL00wUEVaN0FidzF1WFN5bnRLSnQx?=
 =?utf-8?B?aWFxVjdlNW5lT3V3K3ZmNFRSWjBVSVdVMU1ZYks0RjUwK05vVUtKZDRLaVdH?=
 =?utf-8?B?QW51eUFOMlc0eGg4eGVhRnRaQmMwOXRhYndoYW1jaTJXL0lBM3dzN3hMU0NM?=
 =?utf-8?B?bktvTzBhckNDWmZVN0xJT3hxdldTYTNrL3hFUThjaEFyd3dmKy94bjl5UnNt?=
 =?utf-8?B?eTRPT0kvVjdDYkJuYlNtRXcvNTZpbk9VVjlTMVdNMGRCUVRYRDdFektseDZZ?=
 =?utf-8?B?VmhDai9DT0ExdlpZb0FCdEpjMkxmTmgwVmswMUxUeGhlcTRSbTFEUEQ3UnJR?=
 =?utf-8?B?c1JMTFRjaHhMNXpwT0Fob2VMMW96eGJ3Y0Z2TElKSnV5ZXg0TVRFSEp2OHRU?=
 =?utf-8?B?YUVlMlZsVEQyWUpGY2RiYWJCQnZIY3JCcGdaTk1VU2hWRnYzUkQ0WWhwQ3NL?=
 =?utf-8?B?V2oyVGs4QTFNVVMxZ0RzcURyRFZSNWVMMzZlOWpQejlyQWE5NUdidGJzc0lw?=
 =?utf-8?B?VWJMYmx6RC9qaVZ5YlZDUk9xY1VlSHQyQ3I1bCswaGJBcXhHMVoyTGRLa1lx?=
 =?utf-8?B?Nmg5bXpwZHMwRXdoY3BqZ3c0cjlIVWdnaGNYVTl1dXVuNjgvY3l3L0U1NXZr?=
 =?utf-8?B?SzZacS9CL3g0QUlFQThMRlZNVWp2MXF0dFJUNHR1VldIeXVsd1JIc0xWMlFU?=
 =?utf-8?B?U3A3WmJNNHVrTkR6RWJEeDVvMkR4cVBpQUNETVlvOURKK1NlWVhhbmtzWERu?=
 =?utf-8?B?cUc0QUVkTnlFMXN2VTdQZlAwY1lLUHZrS3RxUWRHUzQ4YmwzeXVDMG5QeXJD?=
 =?utf-8?B?ZDBOTTFOd1k5a0JiMFI5TXFBU1ZKQnltOFJwTzZUZTlKRkVoZHg4NzBmKzZB?=
 =?utf-8?B?bUZldWJsNG5wZXN6VzV5aldXemxvajZycnVGUWpGd0o1UFFVMmR0VWZqaGRW?=
 =?utf-8?B?N3VrVXdOSDd1OElIYmp4VXdZSWpKcFZSaTRlTEZjZFY4V3drdURDeEFKSkli?=
 =?utf-8?B?ZmJ3eHNNL0RFOHV6Z2FQMFFMNjVRc0xOWkhQdUtlQ1h1c2RGMCs3ZUwvU1g4?=
 =?utf-8?B?T1dNTW1kRWU1UjJlVng0c0ZodTczWGduRVVTR2dlaE05TE0vcGJOZz09?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 48ed277e-270c-4fd2-5ea0-08de55138dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 15:26:00.3826
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uk5v3xSzFWCMAPSO9COW7RK1+8m11XcTfw6hSmRteCITgwB8Lory62QRd7jqBXIy8ySrwIRbT94cwOnM7xGSqUivE1OTc0yb1wCW8ngjr9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR03MB6346
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExMCBTYWx0ZWRfXzH1i2f52VdbT
 9Al7hHdDpuRieyIIvi4+0NtJFfPtRSGsJgosPxWHiAaTAua/vdOPM/yUYmaIi/nz1V6UOdsviHt
 KWCOzspudx5ioyS31ttezuoFhRaYVeBsiPaV4ElKl/Jazi8Dxnyxgb8JgEqGrnsAZHUg8pptZbK
 mCxWfhL/xnI96Rdp3m5gMVsOr17PAnvg4Is6wYtR/RSw1Qx8C/+juyii0te4pqTe0oWAI3uILjA
 nq9Lkf0nOZjiyo8qAWAi0SPByUTABduEPS6vGxnS7b1QKmGlF9iXl3oXDaUccahP1DGwxGzWJcY
 Q2wDRSNj/Nyx9vbhDqFqafmTpr/ZfXJEXAx0RaBCu5CRv7CHr7AoF2ew/6npwvavLShy+f69+x0
 CH/+dKrBRi5wz9OlMZleoN90m7mGH5YnJkpUDUVUyssa8QUYEMPJU9yvwq5JA+oI3IaQyOj8qeJ
 rxgMsJwvJDyjY2N7HRA==
X-Proofpoint-ORIG-GUID: ADbI_usuBAo1O96jppunGBMk8S4P_2AK
X-Authority-Analysis: v=2.4 cv=OJcqHCaB c=1 sm=1 tr=0 ts=696a588c cx=c_pps
 a=Og0UtPbLppQH9mpfBaDriA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=gAnH3GRIAAAA:8
 a=IpJZQVW2AAAA:8 a=hLVN_gOlUzyTphTljScA:9 a=QEXdDO2ut3YA:10
 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-GUID: ADbI_usuBAo1O96jppunGBMk8S4P_2AK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160110

DQoNCi0tDQpBbnRvbml1IE1pY2zEg3XFnw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4NCj4gU2VudDog
RnJpZGF5LCBKYW51YXJ5IDE2LCAyMDI2IDEyOjMyIFBNDQo+IFRvOiBNaWNsYXVzLCBBbnRvbml1
IDxBbnRvbml1Lk1pY2xhdXNAYW5hbG9nLmNvbT47IEpvaGFuIEhvdm9sZA0KPiA8am9oYW5Aa2Vy
bmVsLm9yZz4NCj4gQ2M6IFBldGVyIFJvc2luIDxwZWRhQGF4ZW50aWEuc2U+OyBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mDQo+IEtvemxvd3NraSA8a3J6aytkdEBrZXJu
ZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsNCj4gU3Jpbml2YXMg
S2FuZGFnYXRsYSA8c3JpbmlAa2VybmVsLm9yZz47IEpvaGFuIEhvdm9sZA0KPiA8am9oYW4rbGlu
YXJvQGtlcm5lbC5vcmc+OyBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+Ow0K
PiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
Zw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDAvNF0gbXV4OiBncGlvLW11eDogYWRkIGVuYWJs
ZSBHUElPIHN1cHBvcnQgYW5kDQo+IEFERzI0MDQNCj4gDQo+IFtFeHRlcm5hbF0NCj4gDQo+IE9u
IDE2LzAxLzIwMjYgMTA6MzksIE1pY2xhdXMsIEFudG9uaXUgd3JvdGU6DQo+ID4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEpvaGFuIEhvdm9sZCA8am9oYW5Aa2VybmVs
Lm9yZz4NCj4gPj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDE2LCAyMDI2IDExOjAxIEFNDQo+ID4+
IFRvOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+DQo+ID4+IENjOiBNaWNs
YXVzLCBBbnRvbml1IDxBbnRvbml1Lk1pY2xhdXNAYW5hbG9nLmNvbT47IFBldGVyIFJvc2luDQo+
ID4+IDxwZWRhQGF4ZW50aWEuc2U+OyBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6
eXN6dG9mIEtvemxvd3NraQ0KPiA+PiA8a3J6aytkdEBrZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5
IDxjb25vcitkdEBrZXJuZWwub3JnPjsgU3Jpbml2YXMNCj4gPj4gS2FuZGFnYXRsYSA8c3JpbmlA
a2VybmVsLm9yZz47IEpvaGFuIEhvdm9sZCA8am9oYW4rbGluYXJvQGtlcm5lbC5vcmc+Ow0KPiA+
PiBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+OyBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsNCj4gbGludXgtDQo+ID4+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gPj4g
U3ViamVjdDogUmU6IFtQQVRDSCB2MyAwLzRdIG11eDogZ3Bpby1tdXg6IGFkZCBlbmFibGUgR1BJ
TyBzdXBwb3J0IGFuZA0KPiA+PiBBREcyNDA0DQo+ID4+DQo+ID4+IFtFeHRlcm5hbF0NCj4gPj4N
Cj4gPj4gT24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDk6Mzc6MzZBTSArMDEwMCwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToNCj4gPj4+IE9uIFRodSwgSmFuIDE1LCAyMDI2IGF0IDAyOjE4OjE4
UE0gKzAyMDAsIEFudG9uaXUgTWljbGF1cyB3cm90ZToNCj4gPj4+PiBUaGlzIHNlcmllcyBleHRl
bmRzIHRoZSBncGlvLW11eCBkcml2ZXIgd2l0aCBvcHRpb25hbCBlbmFibGUgR1BJTw0KPiBzdXBw
b3J0DQo+ID4+Pj4gdG8gcHJldmVudCBnbGl0Y2hlcyBkdXJpbmcgY2hhbm5lbCB0cmFuc2l0aW9u
cywgdGhlbiBhZGRzIHN1cHBvcnQgZm9yIHRoZQ0KPiA+Pj4+IEFuYWxvZyBEZXZpY2VzIEFERzI0
MDQgbXVsdGlwbGV4ZXIgYXMgdGhlIGZpcnN0IHVzZXIgb2YgdGhpcyBmZWF0dXJlLg0KPiA+Pj4+
DQo+ID4+Pj4gVGhlIGVuYWJsZSBHUElPIGFsbG93cyB0aGUgbXVsdGlwbGV4ZXIgdG8gYmUgZGlz
YWJsZWQgYmVmb3JlIGNoYW5naW5nDQo+ID4+Pj4gYWRkcmVzcyBsaW5lcyBhbmQgcmUtZW5hYmxl
ZCBhZnRlciwgcHJldmVudGluZyBicmllZiBhY3RpdmF0aW9uIG9mDQo+ID4+Pj4gdW5pbnRlbmRl
ZCBjaGFubmVscyBkdXJpbmcgdHJhbnNpdGlvbnMuIFRoaXMgaXMgcGFydGljdWxhcmx5IGltcG9y
dGFudA0KPiA+Pj4+IGZvciBwcmVjaXNpb24gYW5hbG9nIGFwcGxpY2F0aW9ucy4NCj4gPj4+Pg0K
PiA+Pj4+IFRoZSBBREcyNDA0IGlzIGEgNDoxIGFuYWxvZyBtdWx0aXBsZXhlciB3aXRoIGxvdyAw
LjYyzqkgb24tcmVzaXN0YW5jZQ0KPiA+Pj4+IHRoYXQgcmVxdWlyZXMgdGhpcyBlbmFibGUgR1BJ
TyBmdW5jdGlvbmFsaXR5IGZvciBnbGl0Y2gtZnJlZSBvcGVyYXRpb24uDQo+ID4+Pj4NCj4gPj4+
PiBDaGFuZ2VzIGluIHYzOg0KPiA+Pj4+ICAqIEV4dGVuZCBncGlvLW11eCBkcml2ZXIgaW5zdGVh
ZCBvZiBjcmVhdGluZyBzdGFuZGFsb25lIGFkZzI0MDQgZHJpdmVyDQo+ID4+Pj4gICogTWFrZSBl
bmFibGUgR1BJTyBvcHRpb25hbCBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eQ0KPiA+Pj4+ICAq
IEFkZCBNVVhfSURMRV9ESVNDT05ORUNUIHN1cHBvcnQgdmlhIGVuYWJsZSBHUElPDQo+ID4+Pg0K
PiA+Pj4gWW91IGFyZSBkZXZlbG9waW5nIG9uIHNvbWUgb2xkIGtlcm5lbC4gWW91IGdvdCBzdGFs
ZSBDYyBsaXN0IG9mIGF0IGxlYXN0DQo+ID4+PiB0aHJlZSBwZW9wbGUhIEhvdyBjb3VsZCB5b3Ug
Zm9yIGV4YW1wbGUgZ2V0ICJqb2hhbitsaW5hcm9Aa2VybmVsLm9yZyIgLQ0KPiA+Pj4gZnJvbSB3
aGljaCBtYWludGFpbmVyIGVudHJ5IC0gYnV0IHRoYXQgYXQgbGVhc3QgaXMgbm90IGJvdW5jaW5n
IGxpa2UgdHdvDQo+ID4+PiBvdGhlcnMuDQo+ID4+DQo+ID4+IFByb2JhYmx5IGZyb20gdXNpbmcg
Z2V0X21haW50YWluZXIucGwgLS1naXQ6DQo+ID4+DQo+ID4+IAkkIHNjcmlwdHMvZ2V0X21haW50
YWluZXIucGwgLS1naXQgZHJpdmVycy9tdXgvZ3Bpby5jDQo+ID4+IAlQZXRlciBSb3NpbiA8cGVk
YUBheGVudGlhLnNlPiAobWFpbnRhaW5lcjpNVUxUSVBMRVhFUg0KPiA+PiBTVUJTWVNURU0pDQo+
ID4+IAlTcmluaXZhcyBLYW5kYWdhdGxhIDxzcmluaUBrZXJuZWwub3JnPg0KPiA+PiAoY29tbWl0
X3NpZ25lcjoxLzI9NTAlLGF1dGhvcmVkOjEvMj01MCUsYWRkZWRfbGluZXM6NS82PTgzJSkNCj4g
Pj4gCUtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gKGNvbW1pdF9zaWduZXI6
MS8yPTUwJSkNCj4gPj4gCUJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAa2VybmVsLm9yZz4gKGNv
bW1pdF9zaWduZXI6MS8yPTUwJSkNCj4gPj4gCURhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxp
YnJlLmNvbT4NCj4gPj4NCj4gKGNvbW1pdF9zaWduZXI6MS8yPTUwJSxhdXRob3JlZDoxLzI9NTAl
LGFkZGVkX2xpbmVzOjEvNj0xNyUscmVtb3ZlZA0KPiA+PiBfbGluZXM6My8zPTEwMCUpDQo+ID4+
IAlKb2hhbiBIb3ZvbGQgPGpvaGFuK2xpbmFyb0BrZXJuZWwub3JnPiAoY29tbWl0X3NpZ25lcjox
LzI9NTAlKQ0KPiA+PiAJbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQ0K
PiA+PiAJTVVMVElQTEVYRVIgU1VCU1lTVEVNIHN0YXR1czogT2RkIEZpeGVzDQo+ID4+DQo+ID4+
IEEgcmVjZW50IG1haWxtYXAgaXMgaW5kZWVkIG5lZWRlZCB0byByZW1hcCBCYXJ0b3N6J3Mgb2xk
IGFkZHJlc3MsDQo+ID4+IHRob3VnaC4NCj4gPj4NCj4gPg0KPiA+IFllcywgSSd2ZSB1c2VkICIt
LXRvLWNtZD0nLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC0tbm9yb2xlc3RhdHMiIHdoZW4N
Cj4gc2VuZGluZyB0aGUgcGF0Y2hlcy4NCj4gDQo+IFRoZW4gaG93IGRpZCB5b3UgZ2V0IG5vbi13
b3JraW5nIEJhcnRvc3ogYW5kIExpbnVzJyBlbWFpbHM/DQoNCkkgYW0gb24gdG9ydmFsZHMvbGlu
dXggbGF0ZXN0IG1hc3RlciBicmFuY2ggbm93LiBIZXJlIGlzIHRoZSBvdXRwdXQgb2YgLi9zY3Jp
cHRzL2dldF9tYWludGFpbmVyLnBsIC0tbm9yb2xlc3RhdHM6IA0KUGV0ZXIgUm9zaW4gPHBlZGFA
YXhlbnRpYS5zZT4NClJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQpLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprK2R0QGtlcm5lbC5vcmc+DQpDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5l
bC5vcmc+DQpBbnRvbml1IE1pY2xhdXMgPGFudG9uaXUubWljbGF1c0BhbmFsb2cuY29tPg0KU3Jp
bml2YXMgS2FuZGFnYXRsYSA8c3JpbmlAa2VybmVsLm9yZz4NCkJhcnRvc3ogR29sYXN6ZXdza2kg
PGJyZ2xAa2VybmVsLm9yZz4NCkRhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4N
CmRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnDQpsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
DQoNClJlZ2FyZHMsDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0K

