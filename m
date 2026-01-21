Return-Path: <devicetree+bounces-257801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KbyI2aRcGkaYgAAu9opvQ
	(envelope-from <devicetree+bounces-257801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:42:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BCF53BD2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 41E1C403E82
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C453A1A45;
	Wed, 21 Jan 2026 08:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="VqAwX47i"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011045.outbound.protection.outlook.com [40.93.194.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B394270552;
	Wed, 21 Jan 2026 08:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768984795; cv=fail; b=rxdKwsItdw1zx9amqtve2YCRdVfn4zgC1k9M8bZB0p1WupaYQd8H8dubfWy2GU91lceSxnRQIhrs2HVmeh9396coXvZdMDfJccVUJAlt3NYhT4CvJwhY6tHT5PtKM9rLH8QDBJ8CiTEnSQi2mWBCEUyYrT2aUZ+/ZsoKDYkE4cc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768984795; c=relaxed/simple;
	bh=9A4bLSVoUgHHIug/BdOQC4Moub8/PsIQxwwoiHJbnZ0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=pyLpFMFA8IvbmrhuDioNbbHYcNXoNjwW47t11ujnjVqqTdV5arvPqpiBAgUNT738D1poONistZiT7yoc4b+L5n7rvXHPg1spgMox6i2kbeFJsDgZ7Ns1T1o7M8OwCevHvfSpT+uNJM/Lx9RRq9lSZKw7lKFvVPrj2ObCPEKNiIA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=VqAwX47i; arc=fail smtp.client-ip=40.93.194.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rD4IcQdahzqbIwcHJRgLN9tlU+VA03j/mMwhMdNShgw1bYRpXJmEhleYRVxTLArFBjCPN5l0zP8eH0oo85+dbekqS06nHBy4Ii7bhVyJB0amQwTAaNYGPpR2iXaU9iUCRTO/9WyeHmbIaTO2jsKuhbHtSyqQAX/xZgyDzZuU7WCzI2TVQkPVewuEMr4dKme06UXsDP5hI69i/yCRJNYSgfQrdITrwI30HkcSu/UnKuZid4I10xtJ7svLXvpNNtM3KqvATFeaZDpu8GKNSTSwLmjKqW82WBR64ODWloqhWeKkyfyD3TlP9euMznAvsu1MnDpJgRU3pxcBkEUa98GDGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9A4bLSVoUgHHIug/BdOQC4Moub8/PsIQxwwoiHJbnZ0=;
 b=sD6YtmVqFUx5o3yqWOXTBPuqal27DAlzMa4h9FWFtQUywOF+bSumr+8NlrslDpLytv34uxjxt5vGBaJ3RZqLhgm4SZu5iaHAgLoLhhj+JC2ywEHOTrSWdavtt9id3Pgbjc1J+QJrm0rHjPAn7VcbOe7c0Ee0c6Taoo0FRvBzCFYzrYuS0XDj3p9ygtyRier7mhmGf21htGLDuHHxwlUf1UJLBNWVxs359VYVC86uzfNQZkmVWWnuVH7xQbHG6xeyxQvc4XAPO4ZBwcMIZybOZThXHlLDA+2+nDoczFNryqx2rdbp8I6Kr1lC5/53xTL0CnvA/VBBSLnMnxeqqULN6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9A4bLSVoUgHHIug/BdOQC4Moub8/PsIQxwwoiHJbnZ0=;
 b=VqAwX47ioPO72Wt48zKQMYCMvOo78m+/XipZRhxYYSH9DwVazKBa85oKJXz+y08y/zW0c6Jz9eoqkEZSqE8JcOFFvyH7CWu6iOhUIviwh4UDXS7eib+wI8y8Np/B0yAO9jswAHTVbxS2tcbJfCIX6MgXXGzDsv01feVNHwR7CqEpGWGRANx2SFHQOz7E0DS4oUjFomKol/iHtNTet6EzQpCHuVhiSifS5RNEOsn91GViGzRZfrCaxaEi0DsNuEbvdqg2u1uJKVDfbVK7xI1Tdsk8mD+9hRrqXFctycGDVwOaB5lnuUrKVmhJ7D3YqEsBQ3IwCkDe6Cc4GUyHDJWAMw==
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by BY5PR03MB4983.namprd03.prod.outlook.com (2603:10b6:a03:1e3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:39:48 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:39:47 +0000
From: "Ng, Tze Yee" <tze.yee.ng@altera.com>
To: Conor Dooley <conor@kernel.org>, "Ng, Tze Yee" <tze.yee.ng@altera.com>
CC: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: altera: document Stratix 10 eMMC
 compatible
Thread-Topic: [PATCH 1/2] dt-bindings: altera: document Stratix 10 eMMC
 compatible
Thread-Index: AQHcihRZhCfvhz2Gk0WRf/KC+zCQ5rVbdsQAgADYEoA=
Date: Wed, 21 Jan 2026 08:39:47 +0000
Message-ID: <6e2d08cd-758a-4e18-b00c-57f9a917ad84@altera.com>
References: <cover.1768916730.git.tzeyee.ng@altera.com>
 <cbfe8eb6547b6fcd815712ad637e061229ed63cd.1768916730.git.tzeyee.ng@altera.com>
 <20260120-factsheet-jurist-ddacd788d23c@spud>
In-Reply-To: <20260120-factsheet-jurist-ddacd788d23c@spud>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB5950:EE_|BY5PR03MB4983:EE_
x-ms-office365-filtering-correlation-id: bef9d7d3-db9c-4cb7-b17e-08de58c8a290
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?WDJ1YkV5QlVQaGhPbWVPVDV2TndpQUJsOWZGK2J1bXVSR01MeXdPZVBFdEdE?=
 =?utf-8?B?K2ZLUFl0TE5GWmZYQU9xVmpJdVNmR1RVSERXT0RqUmV0Q2t0bVFIRThmRVk3?=
 =?utf-8?B?eThrKzJuZXMxSFpNeElBaW8yTUExMHVIcEd3cWtBNHdyS1o4bmlqR1F3VGpl?=
 =?utf-8?B?aERGT2Y4MnFWeUpzZzJicWhvRGlYWktMQUpiRXcvUHJTaHVHNjZYYUFQY3ZK?=
 =?utf-8?B?WCtiU2JRdUZFT3FOa3lIMS9KZFhmTDZnRWd1VHR4bUh6Ty9neE9rU0JUZGhS?=
 =?utf-8?B?U2JnaDVYS3J1dUcrY1hrbnpBRkhnamVNZUloazRUMklhU3lWQ0NuaDdwbHFZ?=
 =?utf-8?B?eXREbUY2d255ZU41aUtGbjVicVhsQWsrM0FHNkNScTdxVnJWQkRZVk1wUmNm?=
 =?utf-8?B?RjdVQ3dwM0xUc3FJWE9MbWtKOGdOb2dCNmQzL0Y4V2Y0NXlCOVQvWnVvd0dT?=
 =?utf-8?B?Z3lZZVpaK2NUUUF5RnpCOVd1WWYxRjY4VTVpZlJIZHJXaTYrQU5ZbU8xQXpl?=
 =?utf-8?B?eFgvNmJWZGpVQldGLzNhSDJLSWdxbkFkcHZmVVZOMWdLcS9TbXIwSVkzZWlW?=
 =?utf-8?B?bHA3N09nMXNpLzJOTG5KTVZHS01CemhsWER1WDREUVd5Z21EaHRVR1VvckRw?=
 =?utf-8?B?L2ZuRTFhOFBSOUl5ZzVjeUNLWnRhakd3RE1Lb3pCQUFsSUN0dWZySHpJbGht?=
 =?utf-8?B?K1loVDNuWVcvdFptbzJNVDB3b3JTUVEyY2lCNVFCUHQxMFlCdjh0aVZLd0Ry?=
 =?utf-8?B?THN6MDh4cUJuSGVsV0RaMzhoWmhsdWFsakt1Y2Q3VGFac3d1bFR2MnFNZ1NO?=
 =?utf-8?B?QlNpZGU2aGYyeUYyeEFHU0hNbW9HdjRXbFNzMTVPNEp3d2tLYlQ1NU95cEtS?=
 =?utf-8?B?eVF6bzJCTXdQWHlDUFFrSEh2ODdPOFVtbm1ZU3UyT0lmbk5jK1BBSmsvR2h2?=
 =?utf-8?B?N3JncjJlQXNoNkJUK0twb2NlcXZmbXdyczlDVk45blEyYzZuRjByN2FzVVY5?=
 =?utf-8?B?bnlCbDVmMWV1SGdwYllhN3p5aHlPbU5xZUlhRWVuVDJGSXpNY29kZkhpMGt3?=
 =?utf-8?B?Zmw5ZHdnR1M1SzVhaC95N0tZOTNNdGU4VC9JK3h0b1RTNkNGMS94S3Exa1Zl?=
 =?utf-8?B?ajd6ekpWYXNNUWhLVGlaUkc3bStBcmRrU0xDL3ZkdU5kR1ZCZDdoVUdrSDhR?=
 =?utf-8?B?YlZqaDN4Q0tZZVpZWmk2NE9qVmFnNXNCeEsvbTdaUWVSRGR5dmErSm5vZHEr?=
 =?utf-8?B?NW9PUUlhOENpcXphUzVjR1FQdkVZTmpMNkxsdTZFdEhIK1ZvS1pyTDhHaXQx?=
 =?utf-8?B?U0hrQ0pXQk5Ed1hVcVU0QlE0V1BaeTF2MDZEY3JHQWJJTm1UaHpoaUlOU2Ir?=
 =?utf-8?B?NHM3dmVucUE1cE9tR3VZcURtNlRRTXJLdHVjWk1pY1MvNEhRa3pCM1E3WVZ4?=
 =?utf-8?B?QkJmcjhBY2FjZmhWek5PMWtUVmZRZk03cWlhUEcxOGpFK2YzcHM1MkhYYzFZ?=
 =?utf-8?B?RHRIN3VNeUtoL044T1ZPaVYxVkVhT1g2YmtUZ1NQYkxucUJGWjdMMG1CbEFl?=
 =?utf-8?B?RGQ1UTBDTkRXSEZuVFNROFNyTjR2cjdqR0wvLzUxdzFrV3VkMDBueGs4VDNa?=
 =?utf-8?B?MzdBUjRYQnQ1Y21BbzZIeEdMbTVUMHZabFYwRi8wVG5VNHcza2dVb1Y4dldI?=
 =?utf-8?B?WGZYTFZzZ3RtdEtnMkw5SVZXU1pWYVp4R0RVREJ6NjVtMDhPaXB1NkdtQUhs?=
 =?utf-8?B?TnFpclJhSS9ORGc4RU5BNDVGTk1Rd1hMZjZNQ3pGK282cVZOak9CS1QwZThS?=
 =?utf-8?B?SGRYcVU4eEgzd0tQckliQ0FqTlQyVXU0ZzlHVERsYVh0enI3aUlFQ2VJanZs?=
 =?utf-8?B?U2NjQ0hPNEswc1RZdU8zNnlEUVc1YXVzcEROVFJVb1l1ZkYwV2N1ZUJaMThH?=
 =?utf-8?B?RWx4dHJZKy9VL1lBaFBzRXFzUUF4aHpNQlRHdERUeHlOcmVEMUhWSkJyZVRj?=
 =?utf-8?B?M1pocTk2UTgrK001cm1xVEM3Tk5OOTNna2YzSDRteVN2bEJMMERFN0Z4Sk9t?=
 =?utf-8?B?YmlvUm11cVpFNTFRM3VtL1JZMzhCK25iVk9Rb200bk4vaVZ2OWN4dWRUek5h?=
 =?utf-8?B?OEowdFE4MlFVbEx3OFJnNGp0RVB4VlpuVHREdW1MSHNvQWVmTGZhVW1NVHRU?=
 =?utf-8?Q?eOvuk6PPvIBe58swPEHiyxo=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QndiZ3dab2tnYkF1ZHkxK1JPSHhQUytBYnVJTGI1aWpqOE54eTRGU3VCZVNV?=
 =?utf-8?B?SndvRE0wczFOMVVBQXlMdDdLRHY5d1YxWUZ4RDhaTUlWMGxMNTN4b0hsSVhk?=
 =?utf-8?B?a1dIdFV1d1FyakNEc3c2bG5vR3gwS296NEQyK015aDhpMUZGdFRIMmxPeFJP?=
 =?utf-8?B?UUFGUzg1SWVMMlo0V25Hblc4T1pDeE1mTE1LQ2lBZjErUTR4bjFDd2Y2c1Ns?=
 =?utf-8?B?YUE4U2hEcmtMQnhBOXZtckk5WmpYdkR1UERlWVZkbjFJajNHZW9UNEo5TjN4?=
 =?utf-8?B?VHNHTm5SdVU1aGF1ZEdmZm1ZbkIzK1JlQW5jWE5ObVRhOWl6d2lxdUlGdm5x?=
 =?utf-8?B?UVNTV3l5UmtNWE5zL28ySFhlTVVPWE9tYVNVdEE3Rnkyc0UyZGNKcTZJZExP?=
 =?utf-8?B?LzZSY1lvN0h3eU4wbUprcmtFNkh4bVN0c2JaKzJrRWRMK21YdngwN2szV2dP?=
 =?utf-8?B?R3dXNEtKMFAwc3ZGV050cjhOc1NySGtnRFZFL3hZTzFBcW1mYlRQUko2NS9J?=
 =?utf-8?B?NVFuVHp4VHZSd1pORFF5UWNvYzNOdng1SXIrMjlaRnFpYUkrcjcvUlkvM1l4?=
 =?utf-8?B?L0ZzcmlUYmxnaGxObTV0OUZEMlNHS2U5ZjNIUkRESGVzb0kxbFQ1bnVRcUE4?=
 =?utf-8?B?dWtQeHpXY0lRT0d0QmJTdktIVTdHWGxoSXNrRDNWSkxKaFg2cmdvZThFRDZR?=
 =?utf-8?B?MG81ZC8zcitvZ2svc2JjZW96TlNQbi9GZW93SFZJdXZhNVZKNkRncjJrUUUv?=
 =?utf-8?B?V3lSQU5wMGx3eCsvMnJ2dkZyVTRRaFBoWlFHa3ByV0Q2NVA3cEJDRlZFak5B?=
 =?utf-8?B?Q1dYY3AwODduNHk3ZW4rak83YlJqazJUdzdBeWVwWEFPTUlKMnVjOFluRHpw?=
 =?utf-8?B?bW1XcHp0azB5VmwxRUZyNUExcDV0Z1dMT0NlM0R0OSt3MHNsWGNqTnFaaTkz?=
 =?utf-8?B?TW9DTzFhdVBCbDVRWU96UTNEVjlwaVk3WC9MaEhac0orRDVZenVFbEhCd2lZ?=
 =?utf-8?B?WXZrcE9ucmxLOWN1RmtJcmpOVC9lZ0I4Y3BIdGJoZnlmQmFDdWJUeVJvMSsx?=
 =?utf-8?B?eHphZHZHd3VkREEyd2RjQis5TWVUdWhrVlF0Y3V4a1BMRmZVN3RUWC9KUTg1?=
 =?utf-8?B?UFBKK2VKSkhRbk94RUNzbnA4OXI2Vm5rRDNyclZqT1dGSGpRRk40eUxmczln?=
 =?utf-8?B?Y0lNVytmc3U4cUF5K1ZMZzZENzI5ejV4L0hrTXExY1pCODBYWW5WeFVNcmlM?=
 =?utf-8?B?SmRkRDZyS2xyY0ZoaCtla0Q4aXVvNEdKTnozN0FQZnY2K0l1Slp6Ni9RTmVH?=
 =?utf-8?B?TmNYLzAyeXNtV2d4bVNoTk5LVS9SV2FsRzBOb3dDMk1vZUNkcUFSNGpKMFox?=
 =?utf-8?B?a2tINzFjdk51ZUhtQlYwbWoraGd5NEh5bnhxbXlHN1BEY05nd2s3U1BKTEVn?=
 =?utf-8?B?a294NXlBTjc1bVpYSVRYNmpGWnFCcm5xVW9DcmllUUFlMWZCdjJXT1NBWnUw?=
 =?utf-8?B?bWh4bDZFMHZURHNubDVHdzhuYzlOSEF4cVZnVkpvenFOVDdtcE9HdUdsby8v?=
 =?utf-8?B?cGc5S0JiZWhiTUtENmN6V1N1UTBRUXJjYUFXZmo1UWQ5Q1FwRGlpK1g3d1Nl?=
 =?utf-8?B?RnJ6aFczUDNQbVVMWldXUWVUbEN3cVFUUWNHckExZUUzZGttSlBmeGk5WGFK?=
 =?utf-8?B?ZkY2cFd6Q0dWVVlzYW0rLzJleVI0eEtiZXNaNW91WkdzVDVqN3FYcUtSMWxu?=
 =?utf-8?B?U1VNT0htc1ZxOGZNRjRmcUNmVHFIU25vRlJ1aStTdmtQZEhxd3A5RUlPWXJZ?=
 =?utf-8?B?VjZ5VWhjS3g5ZGZBdVl5LzBpNUZ0K0RoWFFpeXdaZEVSQ3g3UStFcDBSRFha?=
 =?utf-8?B?RDdsd1VoTFZ3d3MzL255alVJQzlTamF3blJsVVdmclRYd1pGTHh0NjlzNy9r?=
 =?utf-8?B?RDFBbDlIaTlWbTU5TTZVTmxjeDVtRkNZRGMwaHIwc1RNNThmVnVzNTV4bjRY?=
 =?utf-8?B?Ukg5cmxoUk9CRFYyS3ZpZEFoYWdydnB0MFFySGlBVUhXVU41bjBRR3lraVBp?=
 =?utf-8?B?YnhwUFQ1RzhybDloN0pGUzY0TVNOUUhMWmFoY1V4WmtkRlVnRC9DaHZnY3pQ?=
 =?utf-8?B?MXpyYUFYOFdJUWF2RHc4NStDOVhhc2ZWOTRTSWZ2Z3ZWYTdCRjl3U1kyWC9V?=
 =?utf-8?B?V0hvZDZjanJLUG9vN0dYSmY3aTdZSzVGSTZqbzBxcS9kWFJvZjhOSk1vT2Fn?=
 =?utf-8?B?NGRSY1JjQXRySkpwQUUwRGZnMVdhdjRMSis0Y3E4dDRRckV1cTJJNVpDQi9l?=
 =?utf-8?B?Z0tTajFSSmJZRnJOMWpMOEpDYmxUSkJBcDJJZktFd0NESFpNT2Q3Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F610D571B95E342B0721C392B42917E@namprd03.prod.outlook.com>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: bef9d7d3-db9c-4cb7-b17e-08de58c8a290
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 08:39:47.6653
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PnU7iLOCEwsotT75SosUv1bJ9E7bttXju6K1ENPwQA2zSmC2Ni/A45eRZwGZ2rXX7jvTJS/n5H/X60o4U2DqFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR03MB4983
X-Spamd-Result: default: False [1.14 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-257801-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[altera.com,reject];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[altera.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tze.yee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	REDIRECTOR_URL(0.00)[aka.ms];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,aka.ms:url,altera.com:mid,altera.com:dkim]
X-Rspamd-Queue-Id: 34BCF53BD2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMjEvMS8yMDI2IDM6NDYgYW0sIENvbm9yIERvb2xleSB3cm90ZToNCj4gW1lvdSBkb24ndCBv
ZnRlbiBnZXQgZW1haWwgZnJvbSBjb25vckBrZXJuZWwub3JnLiBMZWFybiB3aHkgdGhpcyBpcyBp
bXBvcnRhbnQgYXQgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9u
IF0NCj4gDQo+IFtDQVVUSU9OOiBUaGlzIGVtYWlsIGlzIGZyb20gb3V0c2lkZSB5b3VyIG9yZ2Fu
aXphdGlvbi4gVW5sZXNzIHlvdSB0cnVzdCB0aGUgc2VuZGVyLCBkbyBub3QgY2xpY2sgb24gbGlu
a3Mgb3Igb3BlbiBhdHRhY2htZW50cyBhcyBpdCBtYXkgYmUgYSBmcmF1ZHVsZW50IGVtYWlsIGF0
dGVtcHRpbmcgdG8gc3RlYWwgeW91ciBpbmZvcm1hdGlvbiBhbmQvb3IgY29tcHJvbWlzZSB5b3Vy
IGNvbXB1dGVyLl0NCkhpIENvbm9yLA0KDQpKdXN0IHRvIGNvbmZpcm0gSSB1bmRlcnN0YW5kIGNv
cnJlY3RseSwgd291bGQgeW91IGxpa2UgbWUgdG8gdXBkYXRlIGJvdGg6DQoNCjEuIFRoZSBiaW5k
aW5nIHNjaGVtYSAoYWx0ZXJhLnlhbWwpIHRvIHNwbGl0IHRoZSBTdHJhdGl4IDEwIGJvYXJkcyBp
bnRvIA0KdHdvIHBhdHRlcm5zLCB3aXRoIHRoZSBlTU1DIHZhcmlhbnQgaGF2aW5nIGEgZmFsbGJh
Y2sgY2hhaW4/DQoNCiAgICAgICAtIGRlc2NyaXB0aW9uOiBTdHJhdGl4IDEwIGJvYXJkcw0KICAg
ICAgICAgaXRlbXM6DQogICAgICAgICAgIC0gZW51bToNCiAgICAgICAgICAgICAgIC0gYWx0cixz
b2NmcGdhLXN0cmF0aXgxMC1zb2Nkaw0KICAgICAgICAgICAgICAgLSBhbHRyLHNvY2ZwZ2Etc3Ry
YXRpeDEwLXN3dnANCiAgICAgICAgICAgLSBjb25zdDogYWx0cixzb2NmcGdhLXN0cmF0aXgxMA0K
DQogICAgICAgLSBkZXNjcmlwdGlvbjogU3RyYXRpeCAxMCBTb0NESyBlTU1DIHZhcmlhbnQNCiAg
ICAgICAgIGl0ZW1zOg0KICAgICAgICAgICAtIGNvbnN0OiBhbHRyLHNvY2ZwZ2Etc3RyYXRpeDEw
LXNvY2RrLWVtbWMNCiAgICAgICAgICAgLSBjb25zdDogYWx0cixzb2NmcGdhLXN0cmF0aXgxMC1z
b2Nkaw0KICAgICAgICAgICAtIGNvbnN0OiBhbHRyLHNvY2ZwZ2Etc3RyYXRpeDEwDQoNCjIuIFRo
ZSBkZXZpY2UgdHJlZSAoc29jZnBnYV9zdHJhdGl4MTBfc29jZGtfZW1tYy5kdHMpIHRvIHVwZGF0
ZSB0aGUgDQpjb21wYXRpYmxlIHByb3BlcnR5DQoNCmZyb206DQpjb21wYXRpYmxlID0gImFsdHIs
c29jZnBnYS1zdHJhdGl4MTAtc29jZGstZW1tYyIsICJhbHRyLHNvY2ZwZ2Etc3RyYXRpeDEwIjsN
Cg0KdG86DQpjb21wYXRpYmxlID0gImFsdHIsc29jZnBnYS1zdHJhdGl4MTAtc29jZGstZW1tYyIs
DQoiYWx0cixzb2NmcGdhLXN0cmF0aXgxMC1zb2NkayIsDQoiYWx0cixzb2NmcGdhLXN0cmF0aXgx
MCI7DQoNClBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGlzIGlzIHRoZSBleHBlY3RlZCBhcHByb2Fj
aCwgb3IgaWYgeW91IGhhZCANCnNvbWV0aGluZyBkaWZmZXJlbnQgaW4gbWluZC4NCg==

