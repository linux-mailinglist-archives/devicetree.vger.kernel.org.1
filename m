Return-Path: <devicetree+bounces-136089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C63AA03C37
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A495C3A4A21
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B7C1E0B75;
	Tue,  7 Jan 2025 10:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Eg8ppE0b"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4407F18CC15;
	Tue,  7 Jan 2025 10:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736245355; cv=fail; b=QCwns1dnlyPTXF3lAhU9U+NOG7bPjCmQvw0IaOQl0xGENQIcz4Sui3/5P7MnDcdQzMY8HVs6OSh9zo47m2BUVIpP6edsI7EO3I0FLiD3PpotmCfhyExd0GhwlRUA9VgwD7KZltP41TPsN+RKpRID5jHwzNS1xB6ziq5VN98suZg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736245355; c=relaxed/simple;
	bh=KAfekpfkRDk+LMMzjxE93BuZfkOsi2EyX17xijlzl0E=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=Zo7t15lDVV3N4qP2CcZbgdEDheJXtrR3Wev/tzkXrpN+SMO7vrmjryaujKc0Pa5MtTBYXjDvrv0ay/GZKeB0jwFtsMSKs+RqpA5Vu3QJqVuOFpwD/8Tu48IsIEls0y3DVEbgBTSUie8ysp6hcVBhYXSxok4RH++yd2NWb+wpXU0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Eg8ppE0b; arc=fail smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736245352; x=1767781352;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=KAfekpfkRDk+LMMzjxE93BuZfkOsi2EyX17xijlzl0E=;
  b=Eg8ppE0bW3g8O61cwykDqZuPdtlmjgZoHMRB48vkRuTeTBO04oK1ynkV
   l7OcMB3HSrKB2Oc+mYEy1CQ0cA3rx2GO2Tu3wy0SC3Lqc1r5/iwbXoktE
   Yo6t0Ny4TcbHaC4E90fEEsdAgpFpxozUTozpEy3l3ypKHsWwKIsjcq3pm
   shcvNWCFBzv/s4Kn22JOxow9eN0p3X9EfmJKSjcGd+SJCSK6y7ZFvgRLb
   OmKyylkDsVSOXu6fVNmfJCEHuXgKQwoexubsmI0BTM62x5r3rftUslfX5
   dSHiWJMOqSrfQopTYSg3OXh9wcO43N8uIQNeAm+jXNNB216/xkfddLjJq
   w==;
X-CSE-ConnectionGUID: MVOriM6jQNW2H2upT3TeuQ==
X-CSE-MsgGUID: 3pBRTM6fQoivvYx0q08Mgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="47412370"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="47412370"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 02:22:16 -0800
X-CSE-ConnectionGUID: u9KwoqiaTwGkF9q3SNyWSw==
X-CSE-MsgGUID: D4XF38ygRmaL7RuERALyNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="107606312"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 07 Jan 2025 02:22:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 02:22:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 02:22:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 02:22:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pQHdsQDlHtj/45X0xsHnSOuFoJDMbPPH5qN6MhjqFA7pIQnJ9be8PH5+238gu1jwizQhrVyrWVs6At7+5B1VRcMFXimLTi9GLGtEzI8ec4GOoBhNHLWzt1VWTYF6pNAHNr0KgOiSJLWPSq5B6ZnazCiZ8qAA3SE7wgmPxj8XiLm4wF5C7ssYeLO14EOfJXOGqmxgvOjv4GVBEPAiDKSNYnSjcF7OGA4xELW6supEMTgaozmbyXY8xYpW/5d0gzw+zGieM2KxJkjRpuhrlWuBCCLtz1L7dzop4bD/aIIz+BoOc5R2J56QQc++KmUmB74stKZRgmwLt8SYbsulo2NgMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAfekpfkRDk+LMMzjxE93BuZfkOsi2EyX17xijlzl0E=;
 b=Cv4sxr6KqmkmqQqGVx47m1RhDstBYr1RtYSkOKt06jUDrXn0IC1sifIW0Vmlt95jypsGPBbJRgBYsQtX56McRzSV/gJaHHz6LC3pTXjE9Uyo4NjaXwIPwOm9IwWq9no3UrLupulKQyyecCdlojZ3LhJ0a1WFOhgeLTz0uy6mjsADgmpBNEHpBAkUkradQ5ylGdv7OMJvrnCzU5yZ0GBguITAsliwRgUXST7w2SWYmVXnZHx8revVTw9qT9Hjatgmt5yVz72SZlp58UrdL2uWkHdmUmz1YrdXKGA6yRwcbUBF+wvXiS3eiu+/3s/F7j1BHmZpDjFKKR1fBkQL3prGJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 by DS0PR11MB8686.namprd11.prod.outlook.com (2603:10b6:8:1a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 10:21:42 +0000
Received: from BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f]) by BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f%3]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 10:21:42 +0000
From: "Rabara, Niravkumar L" <niravkumar.l.rabara@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: socfpga: agilex5: add clock-names property to
 nand node
Thread-Topic: [PATCH] arm64: dts: socfpga: agilex5: add clock-names property
 to nand node
Thread-Index: AQHbYOGaw4AMuRPCakadlfqsJdPmcbMLCTkAgAAJaeA=
Date: Tue, 7 Jan 2025 10:21:42 +0000
Message-ID: <BL3PR11MB65326A8A7F2E413B0D8162A6A2112@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20250107084955.2750154-1-niravkumar.l.rabara@intel.com>
 <096f17cb-cb2a-4f09-8c31-e71348289c1b@kernel.org>
In-Reply-To: <096f17cb-cb2a-4f09-8c31-e71348289c1b@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6532:EE_|DS0PR11MB8686:EE_
x-ms-office365-filtering-correlation-id: 5c6a7af9-e1be-410a-8b8e-08dd2f051495
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|10070799003|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cUplTTZxQVh5Yk9MNDFzUGNWdzJyc2lCSzBCL21vSzlMT2lxUlFwOEZUMFcw?=
 =?utf-8?B?ZGtqOFRTOEI1V3c5N1NscGFmUDA4Q05HYXZXS0RPaE1VL094TkV0TGJVMUdu?=
 =?utf-8?B?eHMxem5SU3VnVXBoRzZZbjBVdURDWHdwanNiK3ZROFFzOG95N1VzOURRZHFR?=
 =?utf-8?B?TDdFNnFjRTdobGdzbVQzNnhPMTIrdE5kNGRlVXVwYS9YSm5TM1UyZ0MvNEJu?=
 =?utf-8?B?WTJ0SDRMZ1g3Z3hHNG1TZWhxRERQcktOUGRxVXUzZzduclJmN1B4aFc2SUND?=
 =?utf-8?B?dkNTaHFQUU9FZ0N1MUUrQ2VuajZjUjUyZWNMbC9OYVZOZ0pabWJENjhkcFd1?=
 =?utf-8?B?N0JST1hrNFhvbFI4RmpRTVBIOHFwcjNDYTBlcWVJazYyYlVwaG1SOW0rSVZU?=
 =?utf-8?B?WFFqMXErcmVPUE8xN0NCdzFlSDBFYWtnaHRpaG9taUp1UUZmUWR5M2xLTDZY?=
 =?utf-8?B?UlJCS1Irai9JcjQyeFVURWxwakRQZWZ5b25rVnhaWVJHbUtzOVpDeWFOZDJp?=
 =?utf-8?B?ZEVvLyt5WnI1RWZVN1ZWQ3o1a0NYRGpMdVh6MzBhZ2V0UDAybzQ3cHd6SjRh?=
 =?utf-8?B?dXcrMmdhamF0MEJHOCsvTjZjd3ppYnJYaXRYU1lZb1pTMWxuT2dSR0RJeG1L?=
 =?utf-8?B?dy8vS1VHUXpGdzdUcWRWQi9kQTdWSk8xZjdYRmsvWUd6V1ZXb2xQOG92QXRa?=
 =?utf-8?B?YUt4TmRNTm9Qa0tKb0R1S0l6eXkzbzdiT1JoSk9lOHdnaTFJV0xqQTJmZWR0?=
 =?utf-8?B?RXNRSDh5b0RVd24zNVlXNExZMEFLM1Z6eVlYNkIxZmxPT0JFeURDaDdxUW9r?=
 =?utf-8?B?V2EvWTl0dFYyYURCcVVkUmpZbW93VGVSbE9aWE1DQlNZMHZmY2VVTVFEeHlO?=
 =?utf-8?B?YUNtOGQrN3hWKzEwejJNODV0K3YrSHVMUTQraVZLWlFXUlVQTnAweEpxam1W?=
 =?utf-8?B?SGx5S3hIaUdjYURLS3FrNUFaTWtFWmNBWnd6TEtwMkN6YkFwRnVNdzJmV3Nq?=
 =?utf-8?B?QUpzRTdnaEdCSWJxWmtFTzZsRnJHS2RQZ1NsZEpRMnhEdkNPRjF5Y2wycEt5?=
 =?utf-8?B?aThvWCtmL3RmSGxFMU1jMFN3Qm9UelpndDdxMXpWZUhtSFpMcGFvSjB2YUVx?=
 =?utf-8?B?cWN2SENuck9lUUZvRVAzcG9BTFB3TXNRQnpxNk5lTC9DS0VUMDhacTVXUFFY?=
 =?utf-8?B?OXN2WTdCWmRFSktoQUplWU5ZSEJwa2NwRHpHaTFhN2Fob2JqaEUwYlExQzli?=
 =?utf-8?B?WHFmMFR0SFdRcFhOcWRoOGVEdjIrZ2diTURRbVFFRmVjaU5sdGlOZmpCOW5x?=
 =?utf-8?B?Zk5ITmVBelg0dGZ6cFBvUnhkQTMwL1hKdGsyakd3eW5kRmxaMHRHM2NJVXVh?=
 =?utf-8?B?TXp4eEZsN3VvaFVEamJzOW1qbFIrWmF0Z3JRdVoySk9vU3hWblpiRnRCQzlK?=
 =?utf-8?B?UFhOMXMvZmg2bVpwVFhpeU1KZ1R2M01za0VxbVhpenJJdHlCTU8vYmVBTzFM?=
 =?utf-8?B?VHQraUdFckhDMUpmL2t2Y2ZlbW12ZWNxVHEycjlsUU9BTzN6NDUvVEhSbVFk?=
 =?utf-8?B?UktPYituZ3pWZEc2U2t4Nklianp4bGtvd3FFL0lHNytCWDF4VXBGRzlod01w?=
 =?utf-8?B?ZEVURWxpMmtzT3k4VFU4cDI1T243Um5sZXQ0Mm55N0x6aGJUQTJMYVV6SVht?=
 =?utf-8?B?ZHBWN3pxL0NWMVQ4M3lWNW42MzdFKyswMmhXTnkzOXRGQzFYL04yeVVsNXdW?=
 =?utf-8?B?aklDdXVUMXRtNFNKa1h0eWYwYXhHZ2d1Z0FGdlJHbm9kc1pvQ21RZ0RVRW5N?=
 =?utf-8?B?UDJCUFVmdkpZak9iczBqSWFBZGVCdUZMQmNhZVQ1SGhYS0Yyd1NhRkR4b0Yw?=
 =?utf-8?Q?shBBcy7jZdavQ?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR11MB6532.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTVIZUR2VTNnVkRESmZxRU5SVkNPQUVTM2pmS2ZjZm9XOHpTR2F6ZmZ1VWhi?=
 =?utf-8?B?c1FvcWdQTU9laHZobWxwK05YaDFmeWNGYmhsVCs4QmE0cmFlSjFEZjNDK1A2?=
 =?utf-8?B?N0lvcVNNYkJQZDRPK0tXZUtJajBSUGdzWnEwUGxuZFdqa3c0Q3NHenpGVmk0?=
 =?utf-8?B?Qi9JdWovRGxqYTNRNGd2Rjk0UFZkRFh6LzBTZWVkdGxvN01TL01tbVpPeHFK?=
 =?utf-8?B?NE5nUnpza1Z3Wk9lR2pUQzM3ZjdKbVFKZXpsWXNuaGY3RlBLbVVRNXFuc29H?=
 =?utf-8?B?dUREaTdTb1RxMlh5MGpnS2kzM3lsNU4wL0VBTnJlLy9CWnZyMGhncE12NGpR?=
 =?utf-8?B?b21FUHRaMnhsSU43ZU5iaVNqeU5rUEw1U0p4OGZPdDVXUjNSRzh0Y1I0RWVL?=
 =?utf-8?B?WWd3U3RYYkt6RnlzcE1QM3h0VE5CTDVLV3J0c2JlQlc0eTBxTVY3M29DVlBV?=
 =?utf-8?B?cENPTzRFWjVwZG1SRndkSEFHTzFhM2JaYm0rWkhuL3p1RVVWU2w2MzRqWlcz?=
 =?utf-8?B?clNycFh3MVRENFRyNTRtd0FBR3JBcEV6Qk1ONXpiMW1kdzhjS0hDTVhMMFZ6?=
 =?utf-8?B?TzIvdURhMXNlYk90ZkV3eUUrSXovQk5BSFdjcXZCTkNlSDIvUlNWVXI2eGho?=
 =?utf-8?B?Y01yTll6RGIweU93dlJKSXRRUEkxdjBjcTY2MXVmcVhSc0tkUi9mWDlUa1Z6?=
 =?utf-8?B?RDFwbE16UU9Vdk9rZm5FUlBZbkpwcWZWSWRYZERFUjRhQ3ZqZ3FtUDBFeUpQ?=
 =?utf-8?B?N3J4MWgxa3NtOVBUbHg2ZXBQU3M4MFBTK0tTVExJVmdoQXFiWmVXR2pPMldW?=
 =?utf-8?B?QjBXMExTQXIwdjExOG1qdGdqWHl1eXNGVjRDdFJnUFBWT3haUHhVS3dUWmpP?=
 =?utf-8?B?UUlBVG5BNXJDSGlCbjNxY1ZSZmMrc25NL0FVYjVHVjNhRG9LTEljTGdVMVJy?=
 =?utf-8?B?V3JsaHNwV0VhTXp3LzZpRW5TcTgwUThTS3Z2K2NUb3NLOWZxOFBmY2gybUU0?=
 =?utf-8?B?R0J2T3U3WGlFM0VXRkFlRlhNWlc0Z1g3OTRGUGxYaEZjYlRJUzZ3czc4NXdN?=
 =?utf-8?B?QjRnck5RTElGZ3JMdk9ucXZvSGlwQnRMT1hJQkZtREdNbk15R2t0c1NhbVN3?=
 =?utf-8?B?VHcvV0NWb2srN3ozbXNhSC85a2M5M2l0UGRCSFlQWVllOS9BTUovek5MbnU1?=
 =?utf-8?B?UklSR1pRMHpKUkVUd2gxb0dCM0pQaVJtMndxUlU1VTUyYk84VUtpVWZoOWFC?=
 =?utf-8?B?YSs4ekMyaTZPZW43di9oc1Ircm45SGxIcjBvV3NSOGY1MHVkWkZPNERLdUEw?=
 =?utf-8?B?WmFvWURITVdNaDczNXBMcTJ3bjE0RVNlbUtldTVlNmt4UzhoQnVGQTlCTkg0?=
 =?utf-8?B?MjBSK3ROdHBHVnlycTV3V0ltSXZVeGt1cWNXbW1Tb0FzOFRvZjA4ODBKN21D?=
 =?utf-8?B?a2d5UmlkL2hYVWxCd0xqUVJQOE9nSlpFZ2Z1NFlZOWV3bzh6Kzg3M0FPVTFR?=
 =?utf-8?B?S1BYemNqSVhwR2xpd1MxZlZJS1JXT0VxTUdLTjRMemtrcE5qbUk4S2xDdDRZ?=
 =?utf-8?B?OUFTNGJBME9POTRHY216cGpqVWgxcWJKcFFHb3lxNVJYWmUvTVdXMU1rQkNx?=
 =?utf-8?B?THFUUUpIeEovLy9kTDIvRUw1eG1zeWZZcUJDd1oxSGx6dGYwanoxSWtjdVFx?=
 =?utf-8?B?RTVacTI0Q04vbkJUa2hTRXFtWmpUb0xkc05nTnAxWkJmQ1dDUzhtSXhaK1RM?=
 =?utf-8?B?bjlEYjhmMUNwd3oxNXFVemZ3UG5jeWNNakUwZHc3cmhhZWtCSGhxNTJqWWh0?=
 =?utf-8?B?VmNBa0RBUlRrMlpBRGg4bzBVL2ovdWFFVU9YL0RpTjJxZjJ6OUI5RTEwRkdG?=
 =?utf-8?B?ZWx4U2pZRHNBdWx0dDltbFB0M3BpUDBFbGo0TGFsS1Y0Tm9xbjhpQXlYdTRY?=
 =?utf-8?B?VThBNU53ZU03NjBRNjZTN1QwUDhlWkh1SE9CeVY2MzJmU3ZYZUNLZCs3R1BT?=
 =?utf-8?B?M0Y1SVVGK2dtNkQwMUFxR1FmMENUdHB2cFh4MWVCWEFiU1lVMzVHelVBS3Fy?=
 =?utf-8?B?emtwWUZST2tPdmdSOWw5LzQ5WHhkTW1EUG5xanA1WXFtMHc3bkpBek1mMSs4?=
 =?utf-8?B?OGVrUklGc2xjRkZQd2xtYjFLUGNUNCtKeVNieWlPbEl3elZtRkJKbHVBbzJO?=
 =?utf-8?B?Tngya3oyblBlaEk5VU9EOGxPMHF0UHZKenlSN05mdEZMVXJRU3F4RWdOS2E4?=
 =?utf-8?B?RW5Jdm9Fa2NPeWV6MUF6Qk5QSzhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6532.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c6a7af9-e1be-410a-8b8e-08dd2f051495
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:21:42.2546
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5H9M1nb6xCG/8Dcn8zKxKdCpWM5I0I0wHRoU8OG4lBVP5e8UnDVten3ZCSDOrhrH0lcy1i/8PHIQ2jBcpP4wZrnhQJXe53gRwGVC1uqsmjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8686
X-OriginatorOrg: intel.com

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBTZW50OiBUdWVzZGF5LCA3IEphbnVhcnksIDIwMjUg
NToyMSBQTQ0KPiBUbzogUmFiYXJhLCBOaXJhdmt1bWFyIEwgPG5pcmF2a3VtYXIubC5yYWJhcmFA
aW50ZWwuY29tPjsgRGluaCBOZ3V5ZW4NCj4gPGRpbmd1eWVuQGtlcm5lbC5vcmc+OyBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA8a3J6aytkdEBr
ZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3Vi
amVjdDogUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogc29jZnBnYTogYWdpbGV4NTogYWRkIGNsb2Nr
LW5hbWVzIHByb3BlcnR5DQo+IHRvIG5hbmQgbm9kZQ0KPiANCj4gT24gMDcvMDEvMjAyNSAwOTo0
OSwgbmlyYXZrdW1hci5sLnJhYmFyYUBpbnRlbC5jb20gd3JvdGU6DQo+ID4gRnJvbTogTmlyYXZr
dW1hciBMIFJhYmFyYSA8bmlyYXZrdW1hci5sLnJhYmFyYUBpbnRlbC5jb20+DQo+ID4NCj4gPiBD
YWRlbmNlIG5hbmQgY29udHJvbGxlciBkcml2ZXIgcmVxdWlyZXMgY2xvY2stbmFtZXMgPSAibmZf
Y2xrIiBwcm9wZXJ0eS4NCj4gPg0KPiANCj4gRml4ZXMgdGFnLg0KPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBOaXJhdmt1bWFyIEwgUmFiYXJhIDxuaXJhdmt1bWFyLmwucmFiYXJhQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9pbnRlbC9zb2NmcGdhX2FnaWxleDUu
ZHRzaSB8IDEgKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ludGVsL3NvY2ZwZ2FfYWdpbGV4NS5k
dHNpDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ludGVsL3NvY2ZwZ2FfYWdpbGV4NS5kdHNp
DQo+ID4gaW5kZXggNTFjNmUxOWU0MGI4Li40MzU3NTcyZTk2ZTMgMTAwNjQ0DQo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9pbnRlbC9zb2NmcGdhX2FnaWxleDUuZHRzaQ0KPiA+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvaW50ZWwvc29jZnBnYV9hZ2lsZXg1LmR0c2kNCj4gPiBAQCAt
MjcyLDYgKzI3Miw3IEBAIG5hbmQ6IG5hbmQtY29udHJvbGxlckAxMGI4MDAwMCB7DQo+ID4gIAkJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSA5NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4gPiAgCQkJ
Y2xvY2tzID0gPCZjbGttZ3IgQUdJTEVYNV9OQU5EX05GX0NMSz47DQo+ID4gIAkJCWNkbnMsYm9h
cmQtZGVsYXktcHMgPSA8NDgzMD47DQo+ID4gKwkJCWNsb2NrLW5hbWVzID0gIm5mX2NsayI7DQo+
IA0KPiBJdCBkb2VzIG5vdCBsb29rIGxpa2UgeW91IHRlc3RlZCB0aGUgRFRTIGFnYWluc3QgYmlu
ZGluZ3MuIFBsZWFzZSBydW4gYG1ha2UNCj4gZHRic19jaGVjayBXPTFgIChzZWUgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dyaXRpbmctDQo+IHNjaGVtYS5yc3Qgb3IgaHR0cHM6
Ly93d3cubGluYXJvLm9yZy9ibG9nL3RpcHMtYW5kLXRyaWNrcy1mb3ItdmFsaWRhdGluZy0NCj4g
ZGV2aWNldHJlZS1zb3VyY2VzLXdpdGgtdGhlLWRldmljZXRyZWUtc2NoZW1hLw0KPiBmb3IgaW5z
dHJ1Y3Rpb25zKS4NCj4gTWF5YmUgeW91IG5lZWQgdG8gdXBkYXRlIHlvdXIgZHRzY2hlbWEgYW5k
IHlhbWxsaW50LiBEb24ndCByZWx5IG9uIGRpc3Rybw0KPiBwYWNrYWdlcyBmb3IgZHRzY2hlbWEg
YW5kIGJlIHN1cmUgeW91IGFyZSB1c2luZyB0aGUgbGF0ZXN0IHJlbGVhc2VkDQo+IGR0c2NoZW1h
Lg0KDQpJIGJlbGlldmUgeW91IGFyZSBwb2ludGluZyB0byB0aGlzIGVycm9yIG1lc3NhZ2UNCi9z
b2NAMC9uYW5kLWNvbnRyb2xsZXJAMTBiODAwMDA6IGZhaWxlZCB0byBtYXRjaCBhbnkgc2NoZW1h
IHdpdGgNCmNvbXBhdGlibGU6IFsnY2RucyxocC1uZmMnXQ0KDQpJIGhhdmUgYWxyZWFkeSBjb252
ZXJ0ZWQgQ2FkZW5jZSBOQU5EIGNvbnRyb2xsZXIgdHh0IHRvIHlhbWwgYmluZGluZ3MuDQpodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDEyMDkwODE4MjYuMTI0MjIxNC0xLW5pcmF2a3Vt
YXIubC5yYWJhcmFAaW50ZWwuY29tLw0KVGhpcyBwYXRjaCBpcyBhcHBsaWVkIHRvIG5hbmQvbmV4
dCBhbmQgZml4ZWQgdGhlIFsnY2RucyxocC1uZmMnXSBlcnJvci4gDQoNCkkgd2lsbCBtZW50aW9u
IHRoaXMgYmluZGluZyBwYXRjaCBhcyBkZXBlbmRlbmN5IGluIHYyIHBhdGNoLiANCg0KPiANCj4g
QmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg==

