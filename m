Return-Path: <devicetree+bounces-136527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E98A05788
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3091E3A0807
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4676A1F76D6;
	Wed,  8 Jan 2025 10:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="LupyL5Sm"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA23A1E04B8;
	Wed,  8 Jan 2025 10:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736330421; cv=fail; b=tlUvEpLrAbbWm2CTaCLT2wgBWfGVF9gNZ1HTpeqitCx8DRJwlaNE7M+25NjM09sQCTNO+gGlusFbKK8iTbZ9MKOgvFrNbMpGEVIH2lJ3dYJTnm8BZX1mhO7kl2ZELkEEKbvbh1jzY/59Ul7IOn4yzrAqVFXX0Z6CvxLfX6VqSLc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736330421; c=relaxed/simple;
	bh=da9FQS9okHjEx6wMjPvNyjpfOZukL0ZjJTn/Wyh7Gqk=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=DOJFbKoqH3OXWqKJ6zdifRDIFS5TltB5cS4wvUx5GQ62r5lBT+QhQPz+g/wwJYORiyAW/OP2J3MOPUyRMnASddxamy7tir9ak+X0ka4pgVFDaG9F5PBmrvvyOgGffF7CwiYlld3lZxtLIqYpU7nmnQ23WIRa+BjN88jtXIVWbIE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=LupyL5Sm; arc=fail smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736330419; x=1767866419;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=da9FQS9okHjEx6wMjPvNyjpfOZukL0ZjJTn/Wyh7Gqk=;
  b=LupyL5SmnqYw7tNfnj6Grin21x/3y38K8i6IEVx3UWeo6Bcv6vqY1KY5
   Ez7AAd/PyHEQkHaf7QFIO3MzcqxA8w+QhzGhepu7vUqy0CH2JCOglzr+o
   1XK6GgBetBzkaR8diVYB/fQmyvw+JBQIK/SPRtevsjnQkrxknTDtoWE/5
   /R+CCblIXTAUyIF1rvpRQcmeaOw/UMMU2qWrIm4Mj8jSajSAiZ0BTpAaT
   wdSzFj7WxXAneb/RL9Uoa4GjghAK/x0w3Eiv/XHUMoihnErMFl4K49YKj
   RhA9TmvLE2a4h9NYldqLNaAiVWiLPl6HkKtltiTzRWhGKwI9QLSALeMuU
   A==;
X-CSE-ConnectionGUID: optA5I03QYaXNSkCmvS7Fw==
X-CSE-MsgGUID: bfTcKxJ1TNWKddcRV0zSzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47044295"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; 
   d="scan'208";a="47044295"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2025 02:00:18 -0800
X-CSE-ConnectionGUID: IPfQO5JIR62HetO5fI7MnA==
X-CSE-MsgGUID: jel2HC40TZGlk4I5gd9RbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; 
   d="scan'208";a="102968370"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 08 Jan 2025 02:00:17 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 02:00:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 02:00:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 02:00:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I0yHBR0ab0PyOHhWYB03zJMT5ZRFeIQzV1tJCLsp2MFtT6kmlz1QZsNIKArdRy5EzRDt23VsmgtufnKXQJwDwFst1OQoZ8IbEVHLeOgEheuCKWp5dyF5aCEnsy9mzQxvda647ymu5FMQuVRBryvVzEAI16nvf2+l2sDcZ7VRVI15FS7FYop2K93RvQSZYEY/1ZSXOEDLR9LrBp753hYC36OdvIVow+g6As9vzYWEsLMO97z9Vt1pV6+03xneLjlFgeQZj7At7pi4gRh7fd88gr+zoRsGgoiE/7mdlqLRnTdmONSEigPx1XbORS9mRGEozCE54LggljELKresVHOjiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=da9FQS9okHjEx6wMjPvNyjpfOZukL0ZjJTn/Wyh7Gqk=;
 b=xJeu9XIfMoaMFyGLulbWONn1gCZ6brRAx6dI3+pAb/Nxhv5F2sNO71UU1CfO/XQeC2DT6yqIjMB2xOb4ZHZXDVv4Zuu1wPQgxaRKHluc+/N5sDhgsY2pEuRHWzS5c4SiFPkqppSkjDmXmqroR8qLonyMZpl5osCD2s/15S2czJj62UZfT8+Y4Yvg5XOPhYOcRJt6/ow1qCkjOQJl7qBs6FVKGKFtXsiH+GZH39ulwxzF9RSJ5upOaor5/lG1oRGjeMGqXIDAWdMs2wTttBScAPIUT9A3fWK+Ys+1mwa+643nyjSfsbOwBMmXnZtImbsPGvb1bIWVZZVKd+8k/trzkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 10:00:06 +0000
Received: from BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f]) by BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f%3]) with mapi id 15.20.8314.019; Wed, 8 Jan 2025
 10:00:06 +0000
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
Thread-Index: AQHbYOGaw4AMuRPCakadlfqsJdPmcbMLCTkAgAAJaeCAAWVpAIAAK3ow
Date: Wed, 8 Jan 2025 10:00:06 +0000
Message-ID: <BL3PR11MB6532F7F7897B5A808158CB49A2122@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20250107084955.2750154-1-niravkumar.l.rabara@intel.com>
 <096f17cb-cb2a-4f09-8c31-e71348289c1b@kernel.org>
 <BL3PR11MB65326A8A7F2E413B0D8162A6A2112@BL3PR11MB6532.namprd11.prod.outlook.com>
 <e85dd7c3-0dfc-499b-bd74-f9be998e488a@kernel.org>
In-Reply-To: <e85dd7c3-0dfc-499b-bd74-f9be998e488a@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6532:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: 5a559633-63c1-485d-e26f-08dd2fcb3ac0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZEgzcmUzWnp4VVBaT0JIZEF2S2pSMlBQRmxPOGorZkFyZUhsb0pRekNpVFFN?=
 =?utf-8?B?bk5adlpVNXdWVm5UT0ttV1ovSzJOR1ZFY0JsWElXMEtKNzdEVUt3c1lYZ0RK?=
 =?utf-8?B?L3Iwb21NdWRzbk4zUWdDdXdGcUVwTGNGYXdSNjRuOStLdGxwakdUTE02NldS?=
 =?utf-8?B?dndkRVNiVnBoWHI5VVJGaURKYU1saEtES1NuN2xsaVdRbUdwRGRlSTRCRXBB?=
 =?utf-8?B?TVRnbGFqU1pLbHZCMjNWZFdST1VBdXYyZkxMa0YyTmJqLzdHNVJCZE43SEFP?=
 =?utf-8?B?WEVKUzZ5ZktYRXpaWTR0MnFmaFZRTjI4eEdTTXorRUMyNUZsQU0zdDFFQmY2?=
 =?utf-8?B?OHNpZTRFbm9GT2tSYUU2ZXBEVEplSVJLZ2hWNW9MTVZXQ1BZOXlQRlN5QUpU?=
 =?utf-8?B?T0k4bXoreFc3cC9uaG14bVJKVnQrcWdOeWVUYWxJejhiVXVkcU1oQk9iYnht?=
 =?utf-8?B?T09YdDEyU09KZ3FLVzBNMnB5SkFoZnlwMVZ0Y1NSMzlRR2NXS3VrZlEzUFJ0?=
 =?utf-8?B?cjd6L0lGa3FoYlVXemVLMWhzYTdkSTJtWENpM01KTzltVXI4WnhBQWJhRHhj?=
 =?utf-8?B?c0tVZTBDNlBWaDE5NXQzZnFQcHJRckNmUmdnbm5oYzkzYmZMdlNrR1l1b1Vw?=
 =?utf-8?B?WnVrUndKQnhqK2xjK0QwUFNsQUhqWlVLZFVxUmc3ZDVtSUUzMWc2V0R0YkFl?=
 =?utf-8?B?OUdKbDcvL1BoOThPNkVCYXFEaDljMUsrS0duQm0vZkllbjVIOVdyaU1jenJR?=
 =?utf-8?B?NmJLejViUWlwdk5kekpKekNGa2dRbXlDd0F4bUFMU3hnbVVpNEhWSFIvRlZa?=
 =?utf-8?B?VVVQQjJhcWI3UFJLRklocVpEMENaSjMvMmFya3pQb2xldFp5RkJyTXcwN1pQ?=
 =?utf-8?B?RlZJclBGT2N6RDdqZ3lIZ09CeCtIWnFWaTJNL1FUaUEyd0JwV3EreSt2dmhV?=
 =?utf-8?B?VkNXcWp5VE1JZ3dqSDFiSzQxaXFXbVhPK0FzSDg3bTVGdVVQYUs2UkpIb3NQ?=
 =?utf-8?B?S251bW9hbWRyeVkrN3Nqc0p2N0FqNHFTRTRoZmVIeGllaEVWdExOYVl1dCtV?=
 =?utf-8?B?YmE1RU9QemxRM0Yra0M0TTVweHlodlM3NmVHYmtuSWNXa3c1VGEyODRsdERW?=
 =?utf-8?B?dTFlTXdEWTFBQnFXK1dEV0p2TjQ2YXBuSEpZUXZGNWJIalVyMlk2QkdMaUpa?=
 =?utf-8?B?eDNYbHJOQVJVdmVCWGdBaTJpdGFWVFY2c1ZtVXJwUU5jRkN2dVR6WUNEWnVa?=
 =?utf-8?B?SFNCaXQ4ekp3S0w4SWpmUm5oYU1TbGhmSmozTEx2RnR6VUw0dzRZVlRsWmVt?=
 =?utf-8?B?N1YvV3B2WFdVb0JKbWEzZTJhMGRFU25hNVljWGFIRVFRcmd3a3JCa3BSeXZ5?=
 =?utf-8?B?dDVaUiszMzRZYk0wYVFUN2kycTJoeU9YbkJSNlRaMGJXK2w3V0wzSkRKSzA4?=
 =?utf-8?B?OFd5aXpoSDZoeEdCUFlST3VkWmNCMWQ3SDU3SzNxZlluWUZGUWRlWXMvaEQ5?=
 =?utf-8?B?QkF1dU5jZUpJcnFDUzRtR2VoZVExMkpENFNNSUgzNHBsYTFKZ2RTM3FtQ0lY?=
 =?utf-8?B?YWZPbnBRS1dzTGtWckcycVZEdERIYjJ6UXE1Q2dWNllBODlKcGRYM1BDTldm?=
 =?utf-8?B?MGt1ZzNLcTZRelhsVEM4LzJpWmQ1WmdiMHRGNWJ5Z1Fpa05JcDhWZzZsL292?=
 =?utf-8?B?Nys5NmpNMzRXTHRSRnZCVkl6TE80ZzNIeXE3SWhseUxETGIxRUdJeUJmYnFO?=
 =?utf-8?B?NXJjRXM1TVBMRHhlVXJUTGlKazBOYnFocFMxL0pHVXQ3cFJsZTA1L3BWaTl2?=
 =?utf-8?B?Y3lFcCtWMmpGdTdSdnA5dDE0emEvWFQ2dm1EVW1qY2NDdEx3U3RGWWIyR0Fi?=
 =?utf-8?Q?Z/T4uRaLA7sfz?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR11MB6532.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2V6UXBOblhoajh2UFhORFN4UHA4MjlFM25WMDk1ZjBTTWdMTXdFMWhQR1dl?=
 =?utf-8?B?Y1BBTkk1dEJPbGVhanliUFdDbFErdWNBSlpTb2c0ZmhiQjdkczN3dndpVzNn?=
 =?utf-8?B?djZWazQxeVZPNnVDbElMY0hRUmxvM3hqbGV4cE9IVk00NGoyQkRTdGJLTkY0?=
 =?utf-8?B?K1BGaFpranpBa2F6a0pCRjduNlFaUTV6Z0hFWjlIZWFJNnE1N1J1NmRaSVdX?=
 =?utf-8?B?QmZ4RW1QNVhkQUVtT3hTeDNZK3ZEVW9nTlFxUTZXZEZlSnUyYk0vdEowa0NN?=
 =?utf-8?B?M0EyTjY0aDdqZHZkUDRNWWFvL0FrQXJ3RXJ6cWxwVVFUTm1aMWVZTG5QNjNX?=
 =?utf-8?B?aFIwMXhnNHRhL2MyNkEvbHpSY1NmdllMdjlmblpiRENFdldiVzZlclFpaTV4?=
 =?utf-8?B?UzJZYVBRTHVRNElCcXRzY1QxNGt2M2htMzBGY0d6M1NOK1YwS0QxSEJWaXEr?=
 =?utf-8?B?MVU1c3Y0RGdhR0JVWmpaSkgvUnVvZWRvb2dlWmtpd253NUNDbTcwWnEySExz?=
 =?utf-8?B?cVllUEcxWGU3aWlJekIzd0hCeXYzTU5vN0o4VWU1bXluRGZENzNnMlJuUU12?=
 =?utf-8?B?YXZaWEhhSG9leUNKNTdSVjBmVG41TE5ZUEg1WFpORTlQT0RoRzBXdElyTnIw?=
 =?utf-8?B?OWcvNmMzd3RUVzNJZHVkUVNGQkFRV1U0OTFSbXliTGl6cDR5STZNck0rVEpH?=
 =?utf-8?B?MUFHRDN4WmEyWGlZOFNLZndWK0FKWk14V05HRThEbkZXd293YXRpbDgxdkkv?=
 =?utf-8?B?UHZkQ29YRVhUcmttZFNGQ2t4MEhqL2lxYnJHb2M0eS9TV3RXTDdaVCtGYitV?=
 =?utf-8?B?WWpHbk5MMGl0OUhwdnFQSG5rQm0zVmtVTFhEOWZTVnRMNUszelE1dHhBVEhu?=
 =?utf-8?B?ZkhqajBweWhkQlk2YTg2ZzV2Mm9Fa01rRkpiQTBsYmVwZmlUcjdqTWU2T3RO?=
 =?utf-8?B?WWk0Tmp1OUx3bXBXUWlhKzVodU5USlU5ZDBrbytmM2h2bWZ6RzA4MFZVY2ov?=
 =?utf-8?B?bkRRYThaZFZPN1NnTldrV2ZGVTFCdGxCbk1HRGYvNnRlbDBoT1piSGlkY0RT?=
 =?utf-8?B?OFVRVHdHVkc3bWRhbmNBdGljOU9PY1c1SWswMkw4Q0Vvd1d0MWhkeENUQ094?=
 =?utf-8?B?OWtndHBBTWFPdTUvdXY1ZitVaUxicDlpdUNYY3VhKzl3M3NpanN4cUx0Nm82?=
 =?utf-8?B?WkNxRHRnL0YweVRqTjE3WkdVVTcwcUZYdEpScjdCdUQ1MlZCNlVJM05ZVzlo?=
 =?utf-8?B?MW9yVisxRjF1UTVVek9oR1c2M3JIR0ZhZm1aWlcrV3dyelpUUlZEWXpNMTJF?=
 =?utf-8?B?R2RxWm9yZG12Q2pmcmtQSC9aVUVjZExyRGQzU3RJS3lROXF1YWZwRTFzS21q?=
 =?utf-8?B?UmRXS2F2aHc0QW1oWGZ0c1UySEcvNkNIMWg5WFFXbmJST2hHNU5PN2FFK2pJ?=
 =?utf-8?B?NUkrM05xRVluTGxJZWNIdTFpQ1QvYTZ4cFkyY0xNSEwvUGtHcGZ3ZllnWkZE?=
 =?utf-8?B?ZWJyTjdTaWVzZUhxSC9kbDB4NEVtV1YxbU9zUkVGYjB5MGg2QXNkMW5BbCti?=
 =?utf-8?B?L1l3dVIwQ0tuRWk5enhJdTZrSk4xK3BxVEk3dms5Z2FNS2wyeVFseTV6Unlo?=
 =?utf-8?B?b3ViVkxyZlRGeVNUQklRVWVTd0laN2FIVVlXSUQ0bzFKZ2ROOVhIbTU3dC9u?=
 =?utf-8?B?TE5kekxJMEpCbFoybEFWT2svV2RuOXRYNTJtMFA4dUJ1TExqMHU1dWlEUS9J?=
 =?utf-8?B?TTlLYzlPMEJQSU5yZ3dCY2h1V0d1eTlBYkg2Y2ZldWo4aHJmQzd6UkdwN1h0?=
 =?utf-8?B?N3pSK1hXdTN4UkhGaVNTL2hhcVFMcU9DOU9PUjZsbGVtUmVORHR0em9sVHdO?=
 =?utf-8?B?TGswOTJmYzNiRm5EbldpamZjL2MxVFFRNjFuLzZ5M3I1alRRY0JSYWlFSDQ1?=
 =?utf-8?B?aVVpbXk2UUJCS05lZUlRYmFHNi9obkdlZE9LS3JSSzFkVG9GYzd4S0ltc3FG?=
 =?utf-8?B?U3pZSDBoWFRQeGVEUGVzazRleTQyTlNScFI5a2RwSVIyeC9uZGZSK294Nnov?=
 =?utf-8?B?NmpENnN6dWpmUDFNbHpVd1dLYnZRbkFUcGVZRGg1OHlxTmI4aXhoQzVDQ1ho?=
 =?utf-8?B?MkFYRGRyVC9nQXZ5QUQ5L2d5azRNSXNDZHpYN2hxcEVEUUcvRUhSRCtjN3M3?=
 =?utf-8?B?Mnc9PQ==?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a559633-63c1-485d-e26f-08dd2fcb3ac0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 10:00:06.6593
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w08R4a1PMaeC7lbZY0P62ml54yQvph09KVFRzRHO591djj33H7gx9FFTBEW+OidM8cE1eS+lTIQz+9KrO6toVAUmKwjywWmVDcjA/ktUBNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
X-OriginatorOrg: intel.com

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBTZW50OiBXZWRuZXNkYXksIDggSmFudWFyeSwgMjAy
NSAzOjE0IFBNDQo+IFRvOiBSYWJhcmEsIE5pcmF2a3VtYXIgTCA8bmlyYXZrdW1hci5sLnJhYmFy
YUBpbnRlbC5jb20+OyBEaW5oIE5ndXllbg0KPiA8ZGluZ3V5ZW5Aa2VybmVsLm9yZz47IFJvYiBI
ZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpDQo+IDxrcnprK2R0
QGtlcm5lbC5vcmc+OyBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+Ow0KPiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBT
dWJqZWN0OiBSZTogW1BBVENIXSBhcm02NDogZHRzOiBzb2NmcGdhOiBhZ2lsZXg1OiBhZGQgY2xv
Y2stbmFtZXMgcHJvcGVydHkNCj4gdG8gbmFuZCBub2RlDQo+IA0KPiBPbiAwNy8wMS8yMDI1IDEx
OjIxLCBSYWJhcmEsIE5pcmF2a3VtYXIgTCB3cm90ZToNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4NCj4gPj4gU2VudDogVHVlc2RheSwgNyBKYW51YXJ5LCAyMDI1IDU6MjEgUE0N
Cj4gPj4gVG86IFJhYmFyYSwgTmlyYXZrdW1hciBMIDxuaXJhdmt1bWFyLmwucmFiYXJhQGludGVs
LmNvbT47IERpbmggTmd1eWVuDQo+ID4+IDxkaW5ndXllbkBrZXJuZWwub3JnPjsgUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz47IEtyenlzenRvZg0KPiA+PiBLb3psb3dza2kgPGtyemsrZHRA
a2VybmVsLm9yZz47IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz47DQo+ID4+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+
ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IHNvY2ZwZ2E6IGFnaWxleDU6IGFk
ZCBjbG9jay1uYW1lcw0KPiA+PiBwcm9wZXJ0eSB0byBuYW5kIG5vZGUNCj4gPj4NCj4gPj4gT24g
MDcvMDEvMjAyNSAwOTo0OSwgbmlyYXZrdW1hci5sLnJhYmFyYUBpbnRlbC5jb20gd3JvdGU6DQo+
ID4+PiBGcm9tOiBOaXJhdmt1bWFyIEwgUmFiYXJhIDxuaXJhdmt1bWFyLmwucmFiYXJhQGludGVs
LmNvbT4NCj4gPj4+DQo+ID4+PiBDYWRlbmNlIG5hbmQgY29udHJvbGxlciBkcml2ZXIgcmVxdWly
ZXMgY2xvY2stbmFtZXMgPSAibmZfY2xrIiBwcm9wZXJ0eS4NCj4gPj4+DQo+ID4+DQo+ID4+IEZp
eGVzIHRhZy4NCj4gPj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IE5pcmF2a3VtYXIgTCBSYWJhcmEg
PG5pcmF2a3VtYXIubC5yYWJhcmFAaW50ZWwuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgYXJjaC9h
cm02NC9ib290L2R0cy9pbnRlbC9zb2NmcGdhX2FnaWxleDUuZHRzaSB8IDEgKw0KPiA+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ludGVsL3NvY2ZwZ2FfYWdpbGV4NS5kdHNpDQo+ID4+PiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvaW50ZWwvc29jZnBnYV9hZ2lsZXg1LmR0c2kNCj4gPj4+IGluZGV4
IDUxYzZlMTllNDBiOC4uNDM1NzU3MmU5NmUzIDEwMDY0NA0KPiA+Pj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9pbnRlbC9zb2NmcGdhX2FnaWxleDUuZHRzaQ0KPiA+Pj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9pbnRlbC9zb2NmcGdhX2FnaWxleDUuZHRzaQ0KPiA+Pj4gQEAgLTI3Miw2
ICsyNzIsNyBAQCBuYW5kOiBuYW5kLWNvbnRyb2xsZXJAMTBiODAwMDAgew0KPiA+Pj4gIAkJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSA5NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4gPj4+ICAJCQlj
bG9ja3MgPSA8JmNsa21nciBBR0lMRVg1X05BTkRfTkZfQ0xLPjsNCj4gPj4+ICAJCQljZG5zLGJv
YXJkLWRlbGF5LXBzID0gPDQ4MzA+Ow0KPiA+Pj4gKwkJCWNsb2NrLW5hbWVzID0gIm5mX2NsayI7
DQo+ID4+DQo+ID4+IEl0IGRvZXMgbm90IGxvb2sgbGlrZSB5b3UgdGVzdGVkIHRoZSBEVFMgYWdh
aW5zdCBiaW5kaW5ncy4gUGxlYXNlIHJ1bg0KPiA+PiBgbWFrZSBkdGJzX2NoZWNrIFc9MWAgKHNl
ZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd3JpdGluZy0NCj4gPj4gc2NoZW1h
LnJzdCBvcg0KPiA+PiBodHRwczovL3d3dy5saW5hcm8ub3JnL2Jsb2cvdGlwcy1hbmQtdHJpY2tz
LWZvci12YWxpZGF0aW5nLQ0KPiA+PiBkZXZpY2V0cmVlLXNvdXJjZXMtd2l0aC10aGUtZGV2aWNl
dHJlZS1zY2hlbWEvDQo+ID4+IGZvciBpbnN0cnVjdGlvbnMpLg0KPiA+PiBNYXliZSB5b3UgbmVl
ZCB0byB1cGRhdGUgeW91ciBkdHNjaGVtYSBhbmQgeWFtbGxpbnQuIERvbid0IHJlbHkgb24NCj4g
Pj4gZGlzdHJvIHBhY2thZ2VzIGZvciBkdHNjaGVtYSBhbmQgYmUgc3VyZSB5b3UgYXJlIHVzaW5n
IHRoZSBsYXRlc3QNCj4gPj4gcmVsZWFzZWQgZHRzY2hlbWEuDQo+ID4NCj4gPiBJIGJlbGlldmUg
eW91IGFyZSBwb2ludGluZyB0byB0aGlzIGVycm9yIG1lc3NhZ2UNCj4gPiAvc29jQDAvbmFuZC1j
b250cm9sbGVyQDEwYjgwMDAwOiBmYWlsZWQgdG8gbWF0Y2ggYW55IHNjaGVtYSB3aXRoDQo+ID4g
Y29tcGF0aWJsZTogWydjZG5zLGhwLW5mYyddDQo+ID4NCj4gDQo+IE5vLiBJIHJlZmVyIHRvIHRo
aXMgY2xvY2stbmFtZXMgcHJvcGVydHkuIEFzIHlvdSBjYW4gZWFzaWx5IHNlZSBpbiB0aGUNCj4g
YmluZGluZzogdGhlcmUgaXMgbm8gY2xvY2stbmFtZXMuDQo+IA0KR290IGl0LiBJIG5lZWQgdG8g
dXBkYXRlIGJpbmRpbmcgd2l0aCBjbG9jay1uYW1lcyBwcm9wZXJ0eSBmaXJzdC4gDQoNClRoYW5r
cywNCk5pcmF2DQo=

