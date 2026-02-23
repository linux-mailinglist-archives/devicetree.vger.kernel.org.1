Return-Path: <devicetree+bounces-267261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ANDE4r3m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E28841724B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85B58301F69F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6B2349B05;
	Mon, 23 Feb 2026 06:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="dXP79CBo"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013039.outbound.protection.outlook.com [40.93.201.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9244D34846C;
	Mon, 23 Feb 2026 06:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.39
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829116; cv=fail; b=CwM+dRgjBm60R+yRIW3G6NhhdZP7z9SqRUAb7E5da82Ri7/zeTp3V9h6gnpH+itZn7reACveCc7Qhnryk9W+pIyak5Er+n7cff20iIBujiO18JvDV9M2Mcmat9vjS6P/vve0bgYaNKhSBPmlTYsBmgJ9C7FFh/mKmqa7FD0wAT0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829116; c=relaxed/simple;
	bh=TU3vm6EnLxeWHY8lcGiWsfwuhOYG15/sDmDZt1rS++8=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=clqQJ7zE3RpqV+g9R1J7UNArU4YywemjRMxkjybKWGCKR31FBbMVqzQ4kAUlNnqN+SGhpjJBOA5U3H1+yA2TSI0T3sWg7xQurHKCx8NlsOditSQPCU9OWyKrL5JCZcZrSsn++Bh2pMF5mx4/SYRu/O3DCZMwact+h32ZEVBYGwI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=dXP79CBo; arc=fail smtp.client-ip=40.93.201.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NvD5kReL36ileY+0bTQAxd394Wb1bTlFe9vbJ994k/x2eEJYYNN0BouuF+DBlPQGLQaEAyxYdE/gV3xHvHzkrkv3VFzMyF+g4u1b3cK668cENMLtpXuN0oTdd/OdObBviuhOGNcxlODDHR69Vk91PHRvxD1xGz1wHnnsh2i5nrvW7if3A6CcT7SSy/3VPYCK/PgbJt9EYcHq4LPDpD1Bu07KQkaMZLivmfJGV7Y0AJe+daLLapvgisra6mbzPCIEEDurOZSvEBij+EKhXgo/tEuzsff3zua471GwnRnecuyBnW6ebk+TPlbkCmtDMhPhX8TCqtE/GOaBrP53MTF7Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TU3vm6EnLxeWHY8lcGiWsfwuhOYG15/sDmDZt1rS++8=;
 b=NIBGGbMfIWCZdHzMSGjtOCwdvA8UG0iEwMtRZqpbuf+G93tuVZqm6C1byJCPW2GsRx/+94fB6WB0Fk78EBuKZJnh4/CFlNnY66Opsu7JIMrq8gLrD75P/UbuDOeqev1edbNR/sJp+TP8xulkQovmb4ZIjM3Dim7U47B8dwheZEasL9ZMPprWYmE6jmoiEiwtDklm9hL8WB7GpQWhviq47AGUSPGaZwU05qNw/wfFOQ/+9rQfNUZtLnRxFV1Mcm0zRJFjx+ZumnFkCauc8NhsSgp5Rl2i/enolYUCQTH0a3CQMhsOJOpC8YXGyUXB1R6mDBo3CvmJroBWYmBXS7aPaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TU3vm6EnLxeWHY8lcGiWsfwuhOYG15/sDmDZt1rS++8=;
 b=dXP79CBo7wbckStk/FIXE+Bcigjd4ZkvGJkPA6N6NXrrtOk9AY7R1rsGfAd6trmzaZJis+cshzQ3GNPkKT5EyMEFpt+VN6/QFtkTRS0xhdm4s7JK5WnpmdwwjjfeB4wDvlQlq2hmJQf4M1YY+L9Nu0FVfCn+AeqQ0WIZVdDb2QYeHlwkZd43QRdHHjs0EFyqXyPqQTaSp/TMjAlkVnYHVYZlIGIeXW20qJwZ2nRtP7tZkQl3YyOjOP6LlPNM/kcMhu4B2zaRJ5CS24eUH4EX4hSug4YPSQuz/YSgV8i8FRwV8KCJL7lCG54WijDHX3w4GNeQY04cBczDro78LINpLA==
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by SJ0PR03MB7027.namprd03.prod.outlook.com (2603:10b6:a03:4e3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Mon, 23 Feb
 2026 06:45:10 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 06:45:10 +0000
From: "Ng, Tze Yee" <tze.yee.ng@altera.com>
To: "Ng, Tze Yee" <tze.yee.ng@altera.com>, Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
Thread-Topic: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
Thread-Index: AQHcjovA+E6Iyn32iUSsf2+pc/C6b7WQAs4A
Date: Mon, 23 Feb 2026 06:45:09 +0000
Message-ID: <907db5dd-414d-4333-8667-bfe9e69db576@altera.com>
References: <cover.1769407657.git.tzeyee.ng@altera.com>
In-Reply-To: <cover.1769407657.git.tzeyee.ng@altera.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB5950:EE_|SJ0PR03MB7027:EE_
x-ms-office365-filtering-correlation-id: 05bddf1a-7bfa-45d8-07f9-08de72a716f9
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?R1A0M3MrSjI3cnhQMG9pTWh4ald2UmNHMU9GcTdHNWZYZXB3cXZOTmE1YjRH?=
 =?utf-8?B?OXVCMDM3TExwQUJPMW9oTXN6TTM3MGlJNzhLU3F1WlNJVXg5VGI0R2YzM09W?=
 =?utf-8?B?djBzVjF5ZnRFUEJ5d1o1TXAvYkMxY3dMQStxTmh4MXhrWmZRQk9RL3h2YzRQ?=
 =?utf-8?B?cUR2V21kcGtLUWVSYmQwYlpVTEFkVmdMRUpnRXNJTVI4L3NrZnpNeEpjVEVC?=
 =?utf-8?B?M1ZlOVRmdVBLUVpmTW5MdytsQkJPbjRXM0JyTit5dU4xWmd5eWJ4aStaTThp?=
 =?utf-8?B?OHNqUmNKTlhrWUwzc1EwMUpkRjlib3ltVkVma2lONnc0VDdnOThvTWF3VlUz?=
 =?utf-8?B?SFJPeEY1eTJCOTk3RmxQemxEMWFFK0JEY21JM1B5cHozU2RWQmV2dVpHN2xY?=
 =?utf-8?B?bEprSlJNTnoyUUdqSzVUT1dpenlFT0Y3MFhLU29HQnRraElaMVM0aTJNQVlu?=
 =?utf-8?B?cEEwSS9WZWVsQzNXcUdObnk0OVROV3BPZ21tVjlKRGczMTFrbjBHbExlMUUy?=
 =?utf-8?B?Vk1XTGl6Z3kveVNab0NVK3NEZk5UaXVQM0k4aDZxRzZqUmh6M1cxUVdmcFAv?=
 =?utf-8?B?c0p6aGVrVDB0cWYrQWE4cFh6azByeWd5eTFBRlluejg4L25QSVRyMWlranNu?=
 =?utf-8?B?VjR2em5WOVJBOEpNdU13M1cwbjlpNktwRU1pTlgwSkxmbVNrTmVYS1Fxb1dT?=
 =?utf-8?B?ejl2N1RqdldkUmVNRW9PcE5Ib3A3OVpsVHNBaGFKT1ozZXJLWXFiT3R4SnFp?=
 =?utf-8?B?MHpwZlpqNCs5cHBKc1k1RXN6RFVRZ0s4YXJkVWExMlc3Mi84VmlXVmQzNnRY?=
 =?utf-8?B?aCtwTThuQUgrN1JuYW4ydnhubExOV29jUmtnaDlYbVVmQnFnT2JRaUdvTnQx?=
 =?utf-8?B?dkVWR3dXWXBXdHZQdi80SENJMEMyL0Y4cFBiYXg0dnpOR29nTXVIeU1hRnBD?=
 =?utf-8?B?MDNOcVg5N0dmQ3VHSTVKZDFDUnRWNnYvWHN2SWFCMVp3akhzMXNBVEY2cXR0?=
 =?utf-8?B?QWVzb1ZqSzJPd3ltclRTM0t0bVV4Q2JpMHhxcXYyWFlhdUU2VnIzSmpOb1RW?=
 =?utf-8?B?YWpvdHNoOFZMNUR2dFVLUEhQd3RjQ2FRbFB4bzEvZ2RxUkpRY2FBVFR6RWg0?=
 =?utf-8?B?NUVjZ2VOeXNUeVBQWENYd0tKem91VDZsYzJETWNlaUNqZW53bUpGWUx0ODF4?=
 =?utf-8?B?N25heVVtakh4WitUUGJyUnpCR28vRW5SYzNkaVBpU2g1RENZMDk1cHJTV0hY?=
 =?utf-8?B?NlNRTHJLVklHWCtyOFM0ZjZyYW1oUXIxeEZvR3RwdGhqaW52dmRwNUk1ZFJt?=
 =?utf-8?B?T2l1cjFvQk9vWjVYN0xjVlVSOGRvbDdJTnU4dUFaYTlDbGoyUU53VndoQVNm?=
 =?utf-8?B?aUhrL2diVVpmYjlHdUlGd0FZb0FGNUQ0VFJyNGZXQ0ptT2M2eEJReTA4ekda?=
 =?utf-8?B?WDA2Smo5VWw4OWxPVjN6djJLT0F5enE5bmNrTVcrMVpUTjZwRHNVYlJtOU1L?=
 =?utf-8?B?OUc2ZXRJWlJZUm5KcFVyS3lKc0ZWY3FzQUJidWxTWUZScC9CRFVaSHBUV1c4?=
 =?utf-8?B?UVRxdEV5RVU5S1hiUjVBMzZTN2FSbVJuVmJLZnZsWTZTVzNYUmFoWjErNTBI?=
 =?utf-8?B?QmJ3U0NYWW9uMkNpZFZSQmovOWVCdmtsc05GMTNXMm9sK0dUR01NOExQeWtX?=
 =?utf-8?B?TG9oZURmcjQ0dms3NHZGYjRLZUJNRFNEcXNKUzg0TGFkUUxUZGJnVnZOaDRR?=
 =?utf-8?B?VVA0My8rVDJCdVFrQ0cyd3ZCOUFISTZsS1Znd0lBeE92SG50V292dXQ1a1R1?=
 =?utf-8?B?cnlDL24xVHRUOFZkcWM1a2lQNSsvL2U1OFhWWllJTU9WcXRFbXgyVDdTTXZu?=
 =?utf-8?B?dFArSWN6ZGdnWmJBcjdnZld6dWF2NFFBQitEOTlydlRlNm1IM2VUZGs3Tld4?=
 =?utf-8?B?ajBCS1hHb0ZNMTB3d3pxMjhZZjIyWUpoeG9KRzFtbkNiUUZ3MG8vVWlCdkxD?=
 =?utf-8?B?aGJ6ODEvTTRhMHZ5aFlJSUp2eUUxdHpSLytBcjhORjA1Q0F5QS9wSHVQakxT?=
 =?utf-8?B?SVl1WC9wSWFWV1F4RjFxaXBqNzhlS2dvaVlPRmtlYS9rYUhIVXBDekN2aFZn?=
 =?utf-8?B?OWdRR2xaQkFuL1h6bEg2Y2JrMncySmhwZDhpS09xL3kwTUIzT2hEYTZoUkdP?=
 =?utf-8?Q?sPS0lEaB+M5Vl8S0l3+HGUQ=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?czB2bXRhTTBwbWljblcyTjMreGF2L1JNM0J1bmpVdklTTVo1cUZSMTI4NTUz?=
 =?utf-8?B?NDNRSzBydkNqZmd3KzliMFBuODJpOUowR2Y3c2txK1VmSHhreFM3clYxMmNr?=
 =?utf-8?B?TjhodUh5VlhvbDIranoxMHV0T3F6SlZSVm94UVdhMHJtRjFWU3NkZ2lhZ21y?=
 =?utf-8?B?dCtubkhoOWY4akJRVHludE54K2NzVHNiWTFCSUQ2TG9XckpoUW9qWCsxSW1W?=
 =?utf-8?B?QkZCc0FwaEErZ3RJemxzYkNJbERaay9mZUtFdm9aL0NlSDQyRlpOblhHSWxI?=
 =?utf-8?B?WTg0S3R2Z2RKcTFsbC9sakExUi9XZ0xFTmhIbEIvNEhsK3VLR0NkSzV0RC9T?=
 =?utf-8?B?ME1WR3RJcFIwSG1sbUlpVFRjK0ZpRjdrQVdBMjdyclNMYXo1RDdzQnhuSzJh?=
 =?utf-8?B?UUxkTTlKbVVQZ1lWR3FjZDdzZFZuTmliOFFTeVVYdmpiMTFWL1pFdzZyRXFH?=
 =?utf-8?B?YU9BMnVwMG1xSkE3dGNaZzFNZXlxaXZucDZrTXVqSXphY0MzbjJFVEVCR1Fq?=
 =?utf-8?B?aTlHVXQ2RjA5THJnMklPRktKS0M4dlZuK3pKdFY3c3podjZhejBiYmpRcU5v?=
 =?utf-8?B?Zmg2SDQ0c1c2YTMxUXQzdUVYUmYyVVltZWhoUU5nNVlxQ0NiT2RSTkR5ZXBx?=
 =?utf-8?B?K1JVMUd0RzByRUt1aXNMK3lXNWp1RGI5aWxsOEVGQjVVOFlTVmdZdGFVOVRO?=
 =?utf-8?B?TFI5em9mcmMwVWRpaVkyYkFDWk5GWjJYdGV2bHV0ZFg4cWFiWjFvSDVnWlk3?=
 =?utf-8?B?NHRucWlPRFk2RjNHSS8vcFFtbG1hVTZLSHU2dEp1RHhvVnBhWlZ1TTJWdUEw?=
 =?utf-8?B?ckZ2cFhyWXNhQlM5NTloU05RQy9JVkRFSk9iUkVKZzQzWWI2MDhLVGdlTCsz?=
 =?utf-8?B?RThEYWsxYU9hTVl6bG83Q0VFSko0QkxFNXFQcTRFdmZYZHBsNDJIYUZnS1ZY?=
 =?utf-8?B?WEJhWDNxQzY3YWNUWkJNdHhIWVNUTS9CWi84blRTTlJVdmppbDM5eEdSdnRG?=
 =?utf-8?B?SjVCbTRDRUtVY05aT3p0VkFRYWRFZzNiTXFzU1doMHNhUERFdFhJUS8wK2xL?=
 =?utf-8?B?V1NINW4rZFZ3RmtiT0ZKY1FUZDAzYmp0UzkrOHlBQ3pKK0RmemlCcFJUTU1S?=
 =?utf-8?B?YXVSMUNJdGQ0RGNISElVZnhBcXRjcFU0bytVWmZPVWZZVCtacG1wUWxRNGNp?=
 =?utf-8?B?UUpPMXFuWE8yVThENmRzYXNRSm9NalhXTnNsaHIxRG1WTlhTWVB3RlplWFM1?=
 =?utf-8?B?NklvaWpFY0wvT3JVWng4Y29ZNlFnOXZjbUdWS2hDSnFOMmM0R2xXVTlmZ0E2?=
 =?utf-8?B?NWpwYlNQTDNvTy83YkdhWU1oVTdNTnNteUVEL0JjaHVCY1g3SmFTcE1DTHFU?=
 =?utf-8?B?d1o4dmZhUnN5OTZ1OS9NWkZlKzhqRTI0R25uVWhaeUQybG1CbDhrZUlDRjJx?=
 =?utf-8?B?VHRLeUZlbUhkN0xrelBwY1R3QkZpTjQ3Z2M5K0R2VTVYOGlucXBUOE1UQWgw?=
 =?utf-8?B?di8xSThlOFhrM1VxR1N4cWcwUzhEdzFxK1F4ZFhoSklTQmRPYTl1cWxHVzBL?=
 =?utf-8?B?OXMxT0dtaDFDNDkzQTh4NjhLakZVNldmbldDbVc5MFRMOGNMeHlBenplTFlK?=
 =?utf-8?B?aEloeG5YMXBUUDRadW5BUjRkcUVpSTRKbEdOUFhLcDJEUlJkcWVpVGpVWW5H?=
 =?utf-8?B?bUJzNjFobDM4UTc2emNuOXMwNmNSNXlwWXdBR3lyc1dxd1dmLzdBNXEvR3c5?=
 =?utf-8?B?MFFQNXF1MnBsRWtMRVVqandHUHhEVmZRVmx2TS9xaUxjYTE0MGRUeDRHVUp2?=
 =?utf-8?B?MGRMVXZYZDZRZDFnZHJ5MG5WN1JOai9qaWNFS1lYNldSTkhDR09zbnhqUjFC?=
 =?utf-8?B?NVlxSnFJclFYak5DYWtQcERza0dNclJjL0QxcUdaak9uMnV6eWh0Q3F6cmxX?=
 =?utf-8?B?WFNiZTdZTnJjYXJoTTVWa1ZiendWSlgwY0lNQlBzRVZrVW9VeG5SZVdZUFFP?=
 =?utf-8?B?b2Y2NjFlSzhRcjJ2TXNld3JDUlI2L3EvQnN3N1JLcUZzbVZDaGM5T01EQTdj?=
 =?utf-8?B?SitrTVJqT1NPT1VocnlISjNBRUtaWi9XNHlSR3BjTGRyTk1lRnJoYzlGbVF6?=
 =?utf-8?B?NS9IaTd4d1BubE5ycldhL1I0dEVwRmJtVml3bGhvd1J4enRjTE1OaVBXQUJz?=
 =?utf-8?B?VUdiNGdYWWczWEJ3Tk1sWlZVSG95dUVvbHVaQTRKSzc2WjduQjA2cVliV0ZH?=
 =?utf-8?B?U1FkTXlEQlZYSFlXQWVmL3dOa2pFbFZwTVBDeU0rWDJsSjdxYks1OGVJYklG?=
 =?utf-8?B?U3FxcEtCRzJCSXZkbFAwSlIyWkRId1Zza3ZJUVJ5NDdRMUlRRWRnUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <87408416B25F734EA547026741F48193@namprd03.prod.outlook.com>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 05bddf1a-7bfa-45d8-07f9-08de72a716f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 06:45:10.3606
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kio2rkw50L5Hxb7zRHN0RqkvGVc7g2TIlzbrxRRMxsXyBpPU3OQm5nwNtC+EH3QwuWAXYOOs5sGH2MS+fy4FRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB7027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.94 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267261-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tze.yee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E28841724B9
X-Rspamd-Action: no action

T24gMjYvMS8yMDI2IDI6MTkgcG0sIE5nLCBUemUgWWVlIHdyb3RlOg0KPiBGcm9tOiBOZyBUemUg
WWVlIDx0emV5ZWUubmdAYWx0ZXJhLmNvbT4NCj4gDQo+IFRoZSBmaXJzdCBwYXRjaCBhZGRzIHRo
ZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXcNCj4gYm9hcmQg
Y29tcGF0aWJsZSBzdHJpbmcuIFRoZSBzZWNvbmQgcGF0Y2ggaW50cm9kdWNlcyBhIG5ldyBiYXNl
IGRldmljZQ0KPiB0cmVlIGluY2x1ZGUgZmlsZSAoc29jZnBnYV9zdHJhdGl4MTBfc29jZGsuZHRz
aSkgY29udGFpbmluZyBjb21tb24gYm9hcmQNCj4gY29uZmlndXJhdGlvbnMsIGFuZCB0aGUgZU1N
Qy1zcGVjaWZpYyBkZXZpY2UgdHJlZSBmaWxlDQo+IChzb2NmcGdhX3N0cmF0aXgxMF9zb2Nka19l
bW1jLmR0cykgdGhhdCBpbmNsdWRlcyB0aGUgYmFzZSBkdHNpIGFsb25nDQo+IHdpdGggZU1NQyBj
b250cm9sbGVyIGNvbmZpZ3VyYXRpb24uDQo+IA0KPiBUaGlzIGZvbGxvd3MgYSBoaWVyYXJjaGlj
YWwgc3RydWN0dXJlOg0KPiAtIHNvY2ZwZ2Ffc3RyYXRpeDEwLmR0c2k6IFNvQy1sZXZlbCBkZWZp
bml0aW9ucw0KPiAtIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0c2k6IEJvYXJkLWxldmVsIGNv
bW1vbiBjb25maWd1cmF0aW9ucw0KPiAtIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrX2VtbWMuZHRz
OiBlTU1DIGRhdWdodGVyIGJvYXJkIHNwZWNpZmljcw0KPiANCj4gQ2hhbmdlcyBpbiB2NToNCj4g
LSBNb3ZlIEFja2VkLWJ5J3MgYWJvdmUgdGhlIFNpZ25lZC1vZmYtYnk6IGFuZCByZW1vdmUgdGhl
IGVtcHR5DQo+IGxpbmUgYmV0d2VlbiB0aGVtLg0KPiAtIE5vIGNvZGUgY2hhbmdlDQo+IA0KPiBD
aGFuZ2VzIGluIHY0Og0KPiAtIEluY2x1ZGVkIEFja2VkLWJ5IGZyb20gUm9iIEhlcnJpbmcgYW5k
IEtyenlzenRvZiBLb3psb3dza2kgaW4gdGhlIHNlY29uZA0KPiAgICBwYXRjaCBjb21taXQgbWVz
c2FnZQ0KPiAtIE5vIGNvZGUgY2hhbmdlDQo+IA0KPiBDaGFuZ2VzIGluIHYzOg0KPiAtIFJlZmFj
dG9yIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0cyB0byB1c2UgdGhlIG5ldyBjb21tb24gZHRz
aSBmaWxlLA0KPiAgICBlbGltaW5hdGluZyBjb2RlIGR1cGxpY2F0aW9uDQo+IC0gTW92ZSBnbWFj
MiBhbmQgaTJjMiBub2RlcyBmcm9tIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0c2kgdG8NCj4g
ICAgc29jZnBnYV9zdHJhdGl4MTBfc29jZGtfZW1tYy5kdHMgYXMgdGhleSBhcmUgc3BlY2lmaWMg
dG8gdGhlIGVNTUMNCj4gICAgZGF1Z2h0ZXIgYm9hcmQgdmFyaWFudA0KPiAtIEZpeCBQSFkgYWRk
cmVzcyBpbiBzb2NmcGdhX3N0cmF0aXgxMF9zb2Nkay5kdHMgZnJvbSBAMCB0byBANA0KPiANCj4g
Q2hhbmdlcyBpbiB2MjoNCj4gLSBJbnRyb2R1Y2VkIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0
c2kgZm9yIGNvbW1vbiBib2FyZCBzZXR0aW5ncw0KPiAtIFVwZGF0ZWQgc29jZnBnYV9zdHJhdGl4
MTBfc29jZGtfZW1tYy5kdHMgdG8gaW5jbHVkZSB0aGUgbmV3IGR0c2kNCj4gLSBBZGRlZCBmYWxs
YmFjayBjb21wYXRpYmxlIHN0cmluZyAiYWx0cixzb2NmcGdhLXN0cmF0aXgxMC1zb2NkayIgaW4N
Cj4gICAgdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgYnJvYWRlciBjb21wYXRpYmlsaXR5
DQo+IA0KPiBOZyBUemUgWWVlICgyKToNCj4gICAgZHQtYmluZGluZ3M6IGFsdGVyYTogQWRkIGZh
bGxiYWNrIGNvbXBhdGlibGUgZm9yIFN0cmF0aXggMTAgU29DREsgZU1NQw0KPiAgICAgIHZhcmlh
bnQNCj4gICAgYXJtNjQ6IGR0czogc29jZnBnYTogc3RyYXRpeDEwOiBBZGQgZW1tYyBzdXBwb3J0
DQo+IA0KPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hbHRlcmEueWFtbCAgICAgICB8
ICA2ICsrDQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9hbHRlcmEvTWFrZWZpbGUgICAgICAgICAg
IHwgIDEgKw0KPiAgIC4uLi9kdHMvYWx0ZXJhL3NvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0cyAg
ICB8IDY3ICstLS0tLS0tLS0tLS0tLQ0KPiAgIC4uLi9kdHMvYWx0ZXJhL3NvY2ZwZ2Ffc3RyYXRp
eDEwX3NvY2RrLmR0c2kgICB8IDcxICsrKysrKysrKysrKysrKysNCj4gICAuLi4vYWx0ZXJhL3Nv
Y2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrX2VtbWMuZHRzICAgfCA4MSArKysrKysrKysrKysrKysrKysr
DQo+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxNjEgaW5zZXJ0aW9ucygrKSwgNjUgZGVsZXRpb25zKC0p
DQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWx0ZXJhL3NvY2Zw
Z2Ffc3RyYXRpeDEwX3NvY2RrLmR0c2kNCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9hbHRlcmEvc29jZnBnYV9zdHJhdGl4MTBfc29jZGtfZW1tYy5kdHMNCj4gDQoN
CkhpIG1haW50YWluZXJzLA0KDQpJIHdvdWxkIGxpa2UgdG8gZ2VudGx5IHBpbmcgb24gdGhpcyBw
YXRjaCBzZXJpZXMgdGhhdCB3YXMgc3VibWl0dGVkLiBUaGUgDQpzZXJpZXMgaGFzIHJlY2VpdmVk
IEFja2VkLWJ5IGZyb20gUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBLb3psb3dza2kNCmZvciB0
aGUgZHQtYmluZGluZ3MgcGF0Y2ggaW4gdjQsIGFuZCBhbGwgcmVxdWVzdGVkIGNoYW5nZXMgaGF2
ZSBiZWVuDQphZGRyZXNzZWQgaW4gdjUuDQoNClBhdGNoIHNlcmllcyBsaW5rOg0KaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsL2NvdmVyLjE3Njk0MDc2NTcuZ2l0LnR6ZXllZS5uZ0BhbHRlcmEu
Y29tLw0KDQpDb3VsZCB5b3UgcGxlYXNlIGxldCBtZSBrbm93IGlmIHRoZXJlIGFyZSBhbnkgY29u
Y2VybnMgb3IgYWRkaXRpb25hbA0KY2hhbmdlcyBuZWVkZWQgZm9yIHRoaXMgc2VyaWVzIHRvIGJl
IG1lcmdlZD8NCg0KVGhhbmtzIGZvciB5b3VyIHRpbWUgYW5kIGNvbnNpZGVyYXRpb24uDQoNCkJl
c3QgcmVnYXJkcywNClR6ZSBZZWUNCg0KDQo=

