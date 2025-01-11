Return-Path: <devicetree+bounces-137612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B364DA0A110
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 06:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7693C188A9B6
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 05:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343BA15534D;
	Sat, 11 Jan 2025 05:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="JpPMbOoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4708F372;
	Sat, 11 Jan 2025 05:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736574512; cv=fail; b=m3Vm+crjpCTk1hSRxQAUEVkLLd2H+p/0pzqlUPonCPW9pk13EtVAq6NAMQvoeWnpm0J2wwWrGfyw6qC+fvIR33PFVWkrhr0+LCSyv/ntmHcmtzz8M0LxLJcZaA6bx6ExpFMqhW5QlCr8oaOe3u2O2C7xHBavGWapf53sBwqgD0g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736574512; c=relaxed/simple;
	bh=hWnZaD2IWPSttH9rZWSc0gRD54fJ+BMkGCeGYMfoL3o=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=LDMpAhY3oJakmXZkBy/BAh6jbYHi4gc6HglWcHaF2UsnpRkFtAg0UHpUvEH5fcdOY21pcWWgyZNGJ0DkCm3BoNZGzfrWLe1Hw0HFiopIas1mGtVUq8nYESeEPdUJtbNbtC7/sl1sIGYlyHB5gd+/6UnNkc/gTA92bOVpDNX5tJ8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=JpPMbOoA; arc=fail smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736574510; x=1768110510;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=hWnZaD2IWPSttH9rZWSc0gRD54fJ+BMkGCeGYMfoL3o=;
  b=JpPMbOoAIdzwmGMWxwpB9c2XX1eoXcsGTi63msE3Xgg+Ahitmc8whE5e
   D1ibuwE/ekCyZjT0+1BfXg9S+gNx2KLBKAg3ybrlxxGUp+Z8pxX4R1MlZ
   ttxcZN/W4cMB0zAVOxTqYeps4r6UahzkHBMmxCleagWkEhSaf/FT9xhe1
   8EVwcHFa7E9wF6U7yRwYcXMF1kxtakQllSlrVgg3OK0YWt/0eNH4+CIAX
   yRcQkT/YYM+jJSrmv/TShyFKqBbJ9q0jLM3yAZLAli5Ppi+kMoOnoWhPO
   gL8QS9iByK7+eK3fJS6Zf+SpArHl1V1QTWHwOwrAD6yESXjENe38I8cek
   Q==;
X-CSE-ConnectionGUID: ttF++oygSQOLiKJfQ1pfWA==
X-CSE-MsgGUID: bCJ0mhCwQqiLQfPzWfs1qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="59358405"
X-IronPort-AV: E=Sophos;i="6.12,306,1728975600"; 
   d="scan'208";a="59358405"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jan 2025 21:47:50 -0800
X-CSE-ConnectionGUID: BZigYyfoRGyRbp8tZg8Rpw==
X-CSE-MsgGUID: BeNb4IddReC1oKnBtTxPpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,306,1728975600"; 
   d="scan'208";a="104482260"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 10 Jan 2025 21:47:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 21:47:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 21:47:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 21:47:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RZGogNu8c68mex/LBosscDevKuGadg7CSEz3Hl+eHtCyBcaXGtmQnjPNxBuWpll9txTJ2JcB8JAYES6ussaiDQCcF5GMFrl0ZBh8o5HRQ97EVXCTeAKWgoejLdn7uQIWS8StvhUSU0lxT8aD36YXeKA52clsmwl4o6PMQmkkNs28LRLf12jEf60we0Jb4cRemqtWjCkM374FNTHKKR6of7Y2yGxzYgXXhJomXID++JNMIQKQwPbjepfIiS+uI9eo/TAplJ28IVoDEBvmXMylfpKdg0OUK1zafUHRAQJKnXitaqTjZaaSfLgahPDlyPwNOpj83EmPrOHDj662EArnpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hWnZaD2IWPSttH9rZWSc0gRD54fJ+BMkGCeGYMfoL3o=;
 b=js3GyjlBGbzCqgmbefmqjTmPa4hF0IparEoLZnIq3tEJD3QOPZTJjIBFE3zfhWCJRe1Jlx/pSmdwkLL8w2rGUaMMCF0EpaUNvP/jwKEV/gpx1OGkYnahSBvpkXKIc72clWkqovmI8ItXdOSIuxIg3DGcvKD3UCemmcukuYfJKIhjOGekUz1owUigpvy6+/XvCxtj6PzN9MRl7lFc+VQ8V2xqro/npQwxD2BpTxaD7HGJuZxt+EKmPirevz97ke0nv9noLeMRGHthT0OuIVBBZtXbptNARBORdd4/wlU3NsQtXtklUCZmdGsagB/1fDOJ4zehOZaLSfxgK2Ud8l/LdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 by CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Sat, 11 Jan
 2025 05:47:46 +0000
Received: from BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f]) by BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f%3]) with mapi id 15.20.8314.019; Sat, 11 Jan 2025
 05:47:46 +0000
From: "Rabara, Niravkumar L" <niravkumar.l.rabara@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: lkp <lkp@intel.com>
Subject: RE: [PATCH] arm64: dts: socfpga: stratix10_swvp: remove invalid
 sysmgr properties
Thread-Topic: [PATCH] arm64: dts: socfpga: stratix10_swvp: remove invalid
 sysmgr properties
Thread-Index: AQHbY1MLWxxDp283cUq50UV3O4tWtrMP4SWAgAAQUdCAAAYHgIABF7Mg
Date: Sat, 11 Jan 2025 05:47:46 +0000
Message-ID: <BL3PR11MB6532341D8AA6F2DAF55F6AC6A21D2@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20250110112654.3475361-1-niravkumar.l.rabara@intel.com>
 <cd4f2221-34a4-4fff-b5ad-9faf4190c849@kernel.org>
 <BL3PR11MB6532C0F5634AC46C04B78733A21C2@BL3PR11MB6532.namprd11.prod.outlook.com>
 <a4f38646-df2b-4f58-afc6-399e58b29c9f@kernel.org>
In-Reply-To: <a4f38646-df2b-4f58-afc6-399e58b29c9f@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6532:EE_|CY8PR11MB7364:EE_
x-ms-office365-filtering-correlation-id: f5366344-3e95-4409-e469-08dd32037984
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NGZ3eFJVS2EyZjhkamZDNVVETEdVTFZocDF6ZlBveXk3V3ZscFRSSFJPU0hR?=
 =?utf-8?B?QWJwLzR6a0p4NDVMb0RLNHY4SjQ3U2hoVFZQckZMajhva3VCbXovZmdkRUti?=
 =?utf-8?B?WXV4YnQ5NXdDeXZNeWlQZFJxUXc3YXZHRkgzb3UrdlFXcWwwRU92Z04yOXE3?=
 =?utf-8?B?Zi9OUENSVDBSNUIyUUY2bVRRT2hHbjNoQmZvT2xLK1lMV25mUkg1TE1aOTl2?=
 =?utf-8?B?aVFUWWZVellucE9lemtEazRoRlZsUXhlaVdNTW5QSFlRY0I5ZWR0L0ZhSzVj?=
 =?utf-8?B?bW8wdkRLbnR4SXZJVHZZYnNvUmd5WWIrNjZCQ0tmeVBYRVh1R004MkNHS0h1?=
 =?utf-8?B?QUZIQ1p1Y0FNT3lqOXI0OWlLNzZsTzNWYWt5UG43NjRzcHA3SzBTWGZUTXFE?=
 =?utf-8?B?blY5NzZzU3pGK0hQd0oxN3pkYmdCRzRIRkp5M3FHMmNCMEVpVDFPSWF2ODlS?=
 =?utf-8?B?c3FTbXp6bVVlUkF2RUxmRC9hRG9mMGRVdVc3WFZORXNsRlJlZHRPR1JGTVBz?=
 =?utf-8?B?MFlTQWRJVTZFeEljb1M4clkxYmgxVVd4Z3pXaDkyZmpldVJ3OWszeHNCY1Qv?=
 =?utf-8?B?UTNHMUlxU3R4cWROd2JRZG1PcFZ1L0pxMzVQVEdnZkp6UnpXM1lGNkZ6L1Zz?=
 =?utf-8?B?ejVRcTV1eFloOENFRlhObHpaa1cxSGk4ZkZZNC9GZG15NVB4NitrMTh1RXpU?=
 =?utf-8?B?WGR6ODFmK2oyc0M3TjhqN04wK0pOOGdiTEMyc2liMkUwQkVDS3hIUml2R3E3?=
 =?utf-8?B?Rnpna0JsS2JJMzB3d3NiMWR5R1BQTHdsSXArTmQybjd0dzhBUlBnSUlUY0tt?=
 =?utf-8?B?dkpyYTlzblRudDR3OXc4MGh2cis3cXJha1h0NTAybGg4dWFGYk5mQUliYmcr?=
 =?utf-8?B?YkVsZS9RZ1RnLzlSbWhQM2o3ejdaaU5SZHozTGZzeDR0TktLb0NlMUNJTTN5?=
 =?utf-8?B?NjErOWFuSHhVMXE3ZFNOejNLUGt6VSsrdlJkZG1LMEZ0U3U4UDlmSFM2cDR5?=
 =?utf-8?B?NS9IUVYwOVdJb2NuV3lQcFM0K2QvdXZ5L1YyamRuUUp3dkZjSWo3dktLdWJv?=
 =?utf-8?B?cWJVVFhJM3dHQlJYYWNVbjl0WEF1M3dJb0pCK21CZXF0c0tkSHljRVNYTzI2?=
 =?utf-8?B?cnp4WkFrQTRxQWQ1aVQzR3VTT0N5bTlETFdVNWpXUWttOW9GaEdubitRdW9N?=
 =?utf-8?B?M3dnckE5Rk0zZWVWNUJvcXRDUTlRRkZZQ1RVRHpoYUw5ejdsR1dlZkhLZ3ph?=
 =?utf-8?B?YndzMXRxUytGeExvSXZmTVkwMDZqT3FhWk9VQ2JCZ0htMHF5MHlSc2hGMXJF?=
 =?utf-8?B?cVZiUTYvUUx3bUV2NTd6NUtaN2lndU92VUltRWQrRFNySWEwWEJFdTBqL0Ir?=
 =?utf-8?B?VnBEb1NYZnBDZGIrQ2V3NDBYQlhLOFNYYnNQTWFEQlZ2NzgybGhGeFAvOFJ3?=
 =?utf-8?B?UTU3S0ZXcEY4UzNwRDNvNERlOHR5TXp2K1BjRW53NTM3b09CUkN4WTZVZWNr?=
 =?utf-8?B?WE9hcU42K3oxNWEyVVN2UjcxUUJRVDlBVFdxMDYrM3ZQang4Mllab0ZLc1l6?=
 =?utf-8?B?NHZDUUMvc0dtQnl4YkFzZ1ZjbUpNeVpVVEhzUXh0QTFlUUY4YUt0ZmlXcFo5?=
 =?utf-8?B?VnhaVVBlOSs2eURBZjV1aXBqM1hBdXlvZk5xUUJOTUJGd0E3Rmc3RzhvOGNj?=
 =?utf-8?B?bEx4bWp5bnZoMyswUk40cW92dHI4bW5ENnpwaDNNNW5SaFVCRnI0S0x4ODV6?=
 =?utf-8?B?NWozYlRERS9ISy9Sd0o0WW9HbXpIdFRyWGVsblk1cnluWDEyWTRUcklKQXo5?=
 =?utf-8?B?aDBoLzgyZ3R5VmpvWmd4bjlaWGdJNnlWaXoveVA3N3RnbGNaZjVtbWFLU0F6?=
 =?utf-8?B?OENLU05sU0d4OTR5ZFd1dXc0c29uNWVyL0NJVUJoNTQwSkUwODkyYU84ZFpG?=
 =?utf-8?Q?5EZCYiO68ZDiMCd4fVnjebjVbG4DA7be?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR11MB6532.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dU9LV1p3QU81Y0UvQXlJaDh4SGRPdGNrTjZZT2tjTzFUOXZ3OXJ2bGowVnc4?=
 =?utf-8?B?WU1INnRwUjRGK1REd3RkZzU3TjB4SGRGcWxBRWs1eGdEL3hiQTR4UWxiZWVx?=
 =?utf-8?B?SDhCb0tDUHVteDBkeWszb2FjRUNjUnZnWGJncFNZd1ZUM21FVkZISWc3RUdw?=
 =?utf-8?B?dTlrR2ZWMXNoUFZWYTZUSnJLTjFKUXMzQUh6TTRxQmVmTERsSEd2bCt2VVo4?=
 =?utf-8?B?N2VvVTIxbHVJeW5XTHc1bllxKzRCalRYdGdRK3ovSXB6WlFpQm9iSWk5S1p5?=
 =?utf-8?B?TTlZSEluekRiNVlyV3ZSbElJTkZIMldxaEx1Qy9DaGdnYk1OUkdsSWluOUx3?=
 =?utf-8?B?OG15a2lvV0hXekRkZ2src3A4Z21od2w0eVArSWNlNDIyNGw5RG1aN2F5T1cw?=
 =?utf-8?B?Tm0xRytMemxXd0JmdWUzWGgrV29OY05KUlpZK3JqbUNMajFySDRETTFKZzQ4?=
 =?utf-8?B?VVJPTU9iU0xlSEh0UzZTVUlUdHNaUjZkN0ZaMlpDQ2xyU251UzBHSkFrZnJI?=
 =?utf-8?B?SnNwTmorQ2svdnVSTzJaRWtXaDV4TUtQZ2tLYVVHUlVnVUxPd1VlR2lQcm5Z?=
 =?utf-8?B?RGMyRDVMTGMzdlk3ZXNLRURCN1VUemViMXBremErbUNtV1VrT0wveS8vQ2U5?=
 =?utf-8?B?K25zSFZ6UWVtT0c4SFpNT0V1UTcvcndqQmZlMzlMUHJUTzdRMFF2d2QvYkts?=
 =?utf-8?B?QzdyZUNjUDYxa0tkT3MzRzZpM2JrQ3NNMWNjV3hlSVQ3d0tVWjZ0dHkzZmp0?=
 =?utf-8?B?YmIrV0JqdHhJcTZiM0RoaDVhOEI1NjNGbU9nSXdENUowT1JncW02dGk3bVFR?=
 =?utf-8?B?SkR2REprQW1MbWVwalVkdTBWRUlvUFlJa25Hc1ZvQWNKaXJQQXhCa1dRWjJr?=
 =?utf-8?B?RkRPSWtNOG5nMVdCb2VWWFM2bXR4Vk1mbG1nZ2RjcEZqckNPVFkyYjhmMnBC?=
 =?utf-8?B?ZWt4WTJFR0taejRxV0lReTQzZGV4Q09jVjdDRDNMS0VVLy9MN0pNS2szT1lO?=
 =?utf-8?B?eVphcFgwaU41Q0RkWSszMTIxNFZRdFE0TktaMWtEcWJCS0pSTWtHa05WL0U4?=
 =?utf-8?B?cnBxWkZTSWRiNjRZMXlhZnE0bitlemM1dEp3NllMOHgzTHBkS2FVbnhHU3Jz?=
 =?utf-8?B?R0xZMndRenhrb003cjN1b2JZd0Vnd2JOQ2xHQXU2elFQYnFrWDNlaFVQUmdj?=
 =?utf-8?B?QWxORGZwNWlpNXR0eUV1dWRyeXFSY3N4b0x4dDBLa0tYeXRSQSsvSXhkcFB3?=
 =?utf-8?B?ZXZtSG9NakNkVFdWS1FNSHVONU1HNWVuSFhBQVBpdUhKcVp0UU5ONU1lQlpm?=
 =?utf-8?B?VVRKSU5pTkIyVERqN3FHbUdqZGZBcTdWM3ZReWtqTFpFVjBvODdWZXBTOTVV?=
 =?utf-8?B?dmVtUmx6eVJRQ0ZkVENabnVoL2VpUk1icjlFREpqOXVTcFF4Z2wrVjQ5TE5j?=
 =?utf-8?B?VWdWZ1pFQnhMNjVzOVRDVFZTZWM5cG1raWo5Qzk0Nld0aC9kLzRmVDk3eFVW?=
 =?utf-8?B?K0U4empNUkZvZ1hHbUtWSEJJM09BdkVMbGM0andOM0Vkbi95bnlMbVp5clBW?=
 =?utf-8?B?UDZucTZQaDZtcTN4NjV4MzZERitQM0hmcFNQUGRzRDNtOVFMVnBCSE9jN0pG?=
 =?utf-8?B?d2E2WmZCZGJENmo1WGZuRllCa0I3dVZGUzkwejhLczloYmxpdUkvQzNJTk1N?=
 =?utf-8?B?Z0tDanIvNUNEekdsSHRxZTZ6NXJBemlrSzVNOEVVRGY2YUNzbWlXcDJMdk50?=
 =?utf-8?B?MXg0ZFg1dWZKZzBSempMa2E2NDQwMDhrL2NkbWFxdlErYmQ0cnFpamwzdkJN?=
 =?utf-8?B?OStBYnRvMHFWZ2Nydzh6bXYydG5jQjJpbS9Ud21SSzBjN0w2Z3I0dVNRai9P?=
 =?utf-8?B?RFYxSmNDR0pFbWFBUmFZd1cxVlNBYUplZ29iMUM0dkIzVFE3clhncTg0THJK?=
 =?utf-8?B?Vk1rSUVDa09pODRaUEorNGZQalgrVkd5K2NHTDF2dWJ5Z29KdEs3K1F6cmE0?=
 =?utf-8?B?R0VzelU4TTM2MFJDRDVMVnhabTJ0S2lCamxXamNOYzJoL0Yzd2IwR0ZHTU9F?=
 =?utf-8?B?TzNTRWNyODB2VHFKbUw4cE5TSlljZVErYStIS2RKZEMxUHdPT290d0FFR2Ns?=
 =?utf-8?B?ampiY21pTUpZaE1iTE94cDNpVXVQWEsxbDd1bHdxQWJlYklpTFVNRDFqVHNz?=
 =?utf-8?B?c1E9PQ==?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: f5366344-3e95-4409-e469-08dd32037984
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2025 05:47:46.0967
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axyakzm/TUcsVVjahD2obxfFP5lh9fKvILNc/u678Bx2hJ5+ylRQyDnuIYx+0CsUcz854mnywMcISLVjh2eBMA3X1ijdKZg+VQaUYOGQZLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7364
X-OriginatorOrg: intel.com

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBTZW50OiBGcmlkYXksIDEwIEphbnVhcnksIDIwMjUg
ODo1NyBQTQ0KPiBUbzogUmFiYXJhLCBOaXJhdmt1bWFyIEwgPG5pcmF2a3VtYXIubC5yYWJhcmFA
aW50ZWwuY29tPjsgRGluaCBOZ3V5ZW4NCj4gPGRpbmd1eWVuQGtlcm5lbC5vcmc+OyBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA8a3J6aytkdEBr
ZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6
IGxrcCA8bGtwQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czog
c29jZnBnYTogc3RyYXRpeDEwX3N3dnA6IHJlbW92ZSBpbnZhbGlkIHN5c21ncg0KPiBwcm9wZXJ0
aWVzDQo+IA0KPiBPbiAxMC8wMS8yMDI1IDEzOjM5LCBSYWJhcmEsIE5pcmF2a3VtYXIgTCB3cm90
ZToNCj4gPj4+ICAmc3lzbWdyIHsNCj4gPj4+ICAJcmVnID0gPDB4ZmZkMTIwMDAgMHgxMDAwPjsN
Cj4gPj4+IC0JaW50ZXJydXB0cyA9IDwweDAgMHgxMCAweDQ+Ow0KPiA+Pg0KPiA+PiBJcyB0aGlz
IGNvcnJlY3Q/IFNvbWUgYmFja2dyb3VuZCB3b3VsZCBiZSB1c2VmdWwuDQo+ID4NCj4gPiBzdHJh
dGl4MTBfc3d2cC5kdHMgaXMgZm9yIGxlZ2FjeSBTdHJhdGl4MTAgU1cgVmlydHVhbCBQbGF0Zm9y
bS4NCj4gPiBUaGUgc29jZnBnYSBzeXN0ZW0gbWFuYWdlciBkdCBiaW5kaW5nIGRvZXMgbm90IGlu
Y2x1ZGUgImludGVycnVwdCINCj4gPiBwcm9wZXJ0eSBhbmQgdGhlIGV4aXN0aW5nIHNvY2ZwZ2Eg
Ym9hcmQgZmlsZXMgZG9lcyBub3QgdXNlIGl0IGZvciBzeXNtZ3IuDQo+ID4gKGUuZy4gQ3ljbG9u
NS9BcnJpYTEwL3N0cmF0aXgxMC9BZ2lsZXgpDQo+ID4NCj4gPiBTb2NmcGdhIHN5c3RlbSBtYW5h
Z2VyIGRyaXZlcnMgKGFsdGVyYS1zeXNtZ3IuYy9zb2NmcGdhLmMpIGFsc28gZG9lcw0KPiA+IG5v
dCB1c2UgaW50ZXJydXB0IHByb3BlcnR5Lg0KPiA+IFRoZSBzdHJhdGl4MTBfc3d2cC5kdHMgaGFz
IHRoaXMgcHJvcGVydHkgc2luY2UgYmVnaW5uaW5nKHVudXNlZCkgYnV0DQo+ID4gZHRic19jaGVj
ayB3YXJuaW5nIG9ubHkgYXBwZWFyZWQgcmVjZW50bHkgd2hlbiBJIGNvbnZlcnQgc3lzdGVtIG1h
bmdlcg0KPiA+IGJpbmRpbmcgZnJvbSB0eHQgdG8geWFtbC4NCj4gQWxsIHRoaXMgSSBkZWR1Y2Vk
IGZyb20gdGhlIGNoYW5nZSwgYnV0IGl0IHN0aWxsIG5vdCBhbnN3ZXIgYWJvdXQgaGFyZHdhcmUu
DQoNClN5c3RlbSBNYW5hZ2VyIGhhcmR3YXJlIGJsb2NrIGNvbnRhaW5zIGNvbnRyb2wgYW5kIHN0
YXR1cyByZWdpc3RlcnMgZm9yDQpzb21lIElQcyBsaWtlIEVNQUMsIEZQR0EgdG8gU09DIGJyaWRn
ZSwgRUNDLCBVU0IgZXRjLg0KZS5nIA0KRm9yIEVNQUMsIHRvIGNvbmZpZ3VyZS9jaGVjayBQSFkg
aW50ZXJmYWNlIHNlbGVjdGlvbiBmb3IgR01JSS9SR01JSS9STUlJLg0KRm9yIEVDQywgaW50ZXJy
dXB0IG1hc2sgYW5kIHN0YXR1cyByZWdpc3RlciBmb3IgVVNCLCBPbmNoaXAgUkFNLCBFTUFDIGV0
Yy4gDQpTY3JhdGNoIHBhZCByZWdpc3RlcnMgdG8gcGFzcyBoYW5kb2ZmIGRhdGEgZnJvbSBGUEdB
IFNlY3VyZSBkZXZpY2UgbWFuYWdlcg0KdG8gYm9vdGxvYWRlci4gDQoNClRoZXJlIGlzIGEgZ2xv
YmFsIHN5c3RlbSBtYW5hZ2VyIGludGVycnVwdChTeXN0ZW0gTWFuZ2VyIC0+IEdJQyAtPiBDUFUp
DQp0byBzZXJ2ZSBzaW5nbGUvZG91YmxlIGJpdCBFQ0MgaW50ZXJydXB0IHRvIENQVS4gDQpTaW5j
ZSBpdHMgZGVkaWNhdGVkIGZvciBFQ0MgdXNhZ2UgaW4gSFcgaXQgaXMgbm90IGluY2x1ZGVkIGlu
IHN5c3RlbSBtYW5hZ2VyDQpkdCBiaW5kaW5ncyBpbnN0ZWFkIGl04oCZcyBhIHBhcnQgb2YgRUND
IG1hbmFnZXIgYmluZGluZ3MuDQoNClRoYW5rcywNCk5pcmF2DQo=

