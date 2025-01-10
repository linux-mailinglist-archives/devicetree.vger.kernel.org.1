Return-Path: <devicetree+bounces-137451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE2EA090E0
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D8DE188DC8C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C1F7212B1D;
	Fri, 10 Jan 2025 12:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="TI0fOIrp"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB220E71D;
	Fri, 10 Jan 2025 12:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.198.163.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512792; cv=fail; b=YZt7w0soQYrRsi9fSs+vZ01KZJHEbs8LL71+vKRYlQj7vJ4z4Ro0coVnAge1usN6WkS993hzmVbAyKUkZ1lqpdyD0UC9d0HwJEvpnwj3n5i03MBiRXFc94PJ67+qEiVroKZO1fvBQJJnrIrYLogztU8n/dP23IlPSaKVjm9qE1U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512792; c=relaxed/simple;
	bh=29avWou8Hd6IHvYlCjCbWU1dtn6M/QhqT1vRgV1h2os=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=mxxKIX2zcm6wppH0CkT34byM11d7y/0fWvnJQMYuRlQgLrIRZWI+fS3hIGSPtuHvK+8HbYsiLYu3llAaTlJu/DwVfeXhP+cQyP84KoZuHR3XQ3QnZj4VEFHgmDrU0nJLNT656KZAbkEvssXvYrV/BRPHdRC3YRhXNofEtuIDLRA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=TI0fOIrp; arc=fail smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736512790; x=1768048790;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=29avWou8Hd6IHvYlCjCbWU1dtn6M/QhqT1vRgV1h2os=;
  b=TI0fOIrpFkVeUYcJVUb3uYGfQXYDLFFMSXPIia4q0Do08J9R0mZ3RPvq
   UDLPizS63UuC8OdfqMHKkeJ3WRYeKbs20lsi2x/UTl9PjUAiZqKd8o4hX
   fdoniR2p4bxK64PvevvR5wbcFhVZYZxlCKX0f3apP4S4Nuck1pgIAa7wE
   K8xCF7Mmv7vsKO9qy9b3+MF8QeTvzabqDM/bmsniNYokXjAeBR/9tuGte
   bIX+PV9Zuir+WWJakP2rqa23li2mN+AwGeeNnHCg7y0VpETuEpnguf7Yh
   Um9osNYecnyXfhSq0juW+yoQMojrLhe5RiHzXxxz24z1b34ZYUrgHvbDQ
   A==;
X-CSE-ConnectionGUID: SydaHfd5Q82TE51bEoTAaw==
X-CSE-MsgGUID: 76kQS24wTUuhejJ9MHojMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="24410085"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; 
   d="scan'208";a="24410085"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jan 2025 04:39:49 -0800
X-CSE-ConnectionGUID: aTvrUqIsRb67okprZOEC1w==
X-CSE-MsgGUID: qEj0wl1UTdGY6qTyO4zfPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; 
   d="scan'208";a="134562159"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 10 Jan 2025 04:39:49 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 04:39:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 04:39:48 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 04:39:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9kzjCa8iwPBfRp0+aRx8h5L+bc3WZYS1QT5egsEln0HNVvjEAxTIFtgz3yHDuMncPDTRfNSsrOD3yaoDSEHiCDbiQrMqDipJenddgdVtf3dDqAQH/VsrkJoa0lra0CWexZt4ZzNBlspzvGKKYVmFPvWgS/QvQy5wSDHxxjAwG3CzcJO1McA4ad8ExbdXAzS3wloqDEmETpj7gASb8PHiKPnr9t07YpvVS2gxRhguEVHC0OVfSovn8S5ftvU3wcER50xP8FHdigbfqCaPdTem3weYXp2ESc/Ik6tXnfgSfO4GwtgwjSIhxZRVVq+6An+NGiTVit066MFsTou56ROPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29avWou8Hd6IHvYlCjCbWU1dtn6M/QhqT1vRgV1h2os=;
 b=NGXKZRanzpJARPbfi/e4xTC1lDtkB8EoglyK8MmxHpZNXaoFkyTFDYTwhJmnBoacMsQE7juB3ZdDie+amGSqLElgp8OflmSj2P4dAcbczgvFz+go/cALbBrXvSQWHPebCKXYthOdy/V8fF3IOzhHLyJHwVo9LYXLhQhJpQeB6dLrKqYyrztc+TqiPtmc+wqTtCN/VVrUWiVkG29VVVY64raTxr5Wve11pe56ylDgL/f0Ah42vkwD1UOJJdfKVtfsb9skeujIRDH0YEfQ7yy5ulwd19CDEK00MDhOuaI7ig2MKlM4Erdh8zFvt6s3HLCxq1D8r+a17TJhmUgeXG10NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 by PH7PR11MB6497.namprd11.prod.outlook.com (2603:10b6:510:1f2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 12:39:46 +0000
Received: from BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f]) by BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f%3]) with mapi id 15.20.8314.019; Fri, 10 Jan 2025
 12:39:46 +0000
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
Thread-Index: AQHbY1MLWxxDp283cUq50UV3O4tWtrMP4SWAgAAQUdA=
Date: Fri, 10 Jan 2025 12:39:46 +0000
Message-ID: <BL3PR11MB6532C0F5634AC46C04B78733A21C2@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20250110112654.3475361-1-niravkumar.l.rabara@intel.com>
 <cd4f2221-34a4-4fff-b5ad-9faf4190c849@kernel.org>
In-Reply-To: <cd4f2221-34a4-4fff-b5ad-9faf4190c849@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6532:EE_|PH7PR11MB6497:EE_
x-ms-office365-filtering-correlation-id: da7413a7-05d2-4136-afca-08dd3173dd57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aG1DQTBCWjNhbC9VODVEVldpUEtRbk1RZFhkQUFZNW5RR3ozaFEvR3FOQmVt?=
 =?utf-8?B?SStQczJaZHNBcTBWQ1RWWFZFbStUODNTSEs4VnRwa2hoc3Jnc3BnRTR4Q1V0?=
 =?utf-8?B?UDUyUGJsR01ReXNCVXEwbzIrVGpycjRoemZQTDd0ckR3alNFT0tkQy9HbFND?=
 =?utf-8?B?akVrT00vS2VmVFpkcnp3ejZDNGhmQmdxSmh3ZXR2L0dGL2tEdGFkUzR6MHhE?=
 =?utf-8?B?ajlSQ1NZdzJiY0pEU2M0ZnMwZU9GcHRydFI4UjZpUGtjQmVML0VObks2SmNX?=
 =?utf-8?B?aDJsUjJmUFVPbG9rcG1vUXhncUlLYTRNNWl4YmIwUERwVUttcWt3ZkhqeEV4?=
 =?utf-8?B?bGFQV2I3bm9vZi9JR3pNaDZSam5jelJFRndQaWNSVkVpZ2dnMXlzdkhDNnlY?=
 =?utf-8?B?MGw1bDFsMGVBMktPWWJjbkpXa2Q3Z1FtSm4zckJBd28rbzV3Z0M1OXA4VW9s?=
 =?utf-8?B?YU9tQnliRDdZRS9mWnJLYVlxUmtTYzh3S05uZUVBakNBY3IyRGl5ZTcxRkE1?=
 =?utf-8?B?VVBLOCtseGFYODJ6anlLeFhnMGlBUDBpME1wMTc1VHBYdzdzeC9PN3A1U0lh?=
 =?utf-8?B?QnlsWHJGcXd6a1N0TjJIaEFZb3dlUUw0U3JhK09UKzRqSXM3dXpCOERtM2p0?=
 =?utf-8?B?VGtsaFI0S1c2U2dJek1XTS85UmdjWHZML0FXRklnSVhwc1VOSmdlbGhNKzdS?=
 =?utf-8?B?VEFaN1NVRlltZC9HRDVXZTF4SWdJUEIwWThtRmFia3VZVTlNNDh6ejV6MU1D?=
 =?utf-8?B?ODRoY3MxaEwwS1RSak95cEtVQ1FmTzdPSU55dGVzaUppY1Q5all3bUxjdlRv?=
 =?utf-8?B?UmNWdUVLNDA5SUJ5TE40eFRNVHVaVlc1MjN0bzRENDF5YVFEeHJ3K2gxYlZH?=
 =?utf-8?B?QXdUNGtrUGs4YlZyUkI0Y3hvOXkvdmNtVkx4a3lseEljTHhrZEt0ai9kTVh4?=
 =?utf-8?B?L1FmMzE0Rm5xQ25TQkU5TjNtVWhFdHhpZ1YxY2ZqbmtEVUJ5TzdUYlEweWdI?=
 =?utf-8?B?cUdOQTJiU3EzelB0aTNtdG4wR1lPUTkwN3JIVVRSUVk5NnNFeEdoUVlhSy9y?=
 =?utf-8?B?RG5HV25GNDFvWUl4T2tOa0NuVG5Wam1NSTUzTEZUQ25kWU80UzU5dnlCTzBU?=
 =?utf-8?B?eGVWa3NpTHpNTitBbmhDYkpuVHJpUDZVOVpOV3l3aXdJMTdMKzRHYXBpem9s?=
 =?utf-8?B?Zno3YTVSa3lQd1dzdmsyMWZ0eVNmSS9qbzNwK1MxRWhFSU5mYzFyeU5sa0Ri?=
 =?utf-8?B?cUo0VkFPSk8zbENEMmVqRzJtZ21jUkNjUnRFMWpqVHV6amRRVkhybHVGS0I5?=
 =?utf-8?B?SHBBbk1xZU1Kbmdwd01Ncnk4Q0dQY3dQT3JiTWZzbjloSDNPc0QzeDZlTU1U?=
 =?utf-8?B?U0YxdTFFWElIelFOOTZUR3pCWVRnZWRjWmZGY3laOFNLT3lIM1VHMDBzdzdP?=
 =?utf-8?B?dFNxT2lwY1pKRWNkVWgvRzBoWUp3Ym5TeGZCaEZEYVl3Snp0YjNoZVRJdjRu?=
 =?utf-8?B?djkrTVdYYVhrdUVKQXhadGVDdXNieEdBYUJQV21HVzcrTWxYSlhYU3JxQ1kz?=
 =?utf-8?B?VU5PRW1YM1lqOWpTQ3NEeHQ1Z0U0SXNSdDZaTkxsbTJYV2VDbjBHaHNGYkQ0?=
 =?utf-8?B?QmNrRnI0RytCMndqVzV3d0QxM0FhNjl2QUIwS0dwUkpDVHZtKzN0S21tV3h5?=
 =?utf-8?B?RkRVeTN2SktCQXNxK0JodE9adXNqTVE3RlZTeXVZdE8zaS9kcURKVFpvZWk3?=
 =?utf-8?B?MmlhVzVtbkVEN1dCb2ZIb3pHMSsxOWVFU1dUc0x2dDJuYkF3b1dVL09TMmda?=
 =?utf-8?B?a1hETG5sNEdTVVhuM0NDdEIydTdXMDRKdnQyOTZJVnM5UERJcTZlaGJ2OUV5?=
 =?utf-8?B?Tk93VFJkbGpQODg1NmhiVlFWeFR3cTU1UXRSbEprQ1VaeUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR11MB6532.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U05mcVJtbEhWM2R0Y3haQWk3M0NuNzJxaWhGRDI3Znd1UkhuSzJUZVBvemtt?=
 =?utf-8?B?WGRxVUZXSTl3eHdCT0xnWWkvZWliTGFnTndiODlzbHR4c2ZxcjlqL2Y3TmNP?=
 =?utf-8?B?a1RLbkJ2OVcvaUw2ZkZnMWNTUG9vQnk4bHAvNGlZVVI1RTYvQ0VCQmRjT2Vt?=
 =?utf-8?B?c2txWTlDK0IyUThoUzg0VmR2ejdaMnpzMEpvMjhjVU9KdVdvbTVGYzJUcjRI?=
 =?utf-8?B?dnFrc1VOWlhHb1JpSFBnNHAwNkd3Qy9pZkhNK25hcUc2NnI1cmx3U2dneDJU?=
 =?utf-8?B?QmNnT0VCWXJtbmh5ZmszUW83OVlETFhFVFhhbWdOdDZ0anJTN0VaVDVhRktr?=
 =?utf-8?B?UXRKV214QytKaTZUZHU0ZkZ2ZEx5bXJJU3FjUGZodFVMK25ZMWlZNDV1RUJU?=
 =?utf-8?B?TTkvNjlxbFVDRzFVbVgybTFnWEgyWERYczJZc0JOa1ZjdkxEVzdYWW5XSVE3?=
 =?utf-8?B?QS9Tdjhod1JrUjdNVG5QdW9qNVlPZ3BVR3N4VlVMUHp6ZE9UWEZ4QTUrNkE2?=
 =?utf-8?B?TDJpNVcyaE5xR1ZtYkFjZXBJNGs0eWVIZlZDaEQrc1NUM3dYZm55WjIxRzRy?=
 =?utf-8?B?RTRmb2dRUjdzV1pBVWxtbk5FZVNHNWJqdmlKaUJnc2FlcVVsY2xLbGFCbXUy?=
 =?utf-8?B?aDEyam1OZ2FVZ1RBVjRPaHJqQm5SM3A3MGYvanlGdlpCWjdOUS9Ca3VocVRp?=
 =?utf-8?B?UUdsWVladFR1ZUJ1eW5uZDN1K09pNGZWVTJpM2VSenlDNWh1Vjd3b25LbkpC?=
 =?utf-8?B?Y1ZDWEpid2gzUEtKWkRRLzI2cldLcjNadVpWN2srRm5HL29uYklhcys5c0J5?=
 =?utf-8?B?UGtGK0lkWnZPNlkvNk9reVl4R1dacDh6bDJic2ljY0t0eE0wN1B1Yi8zM2xz?=
 =?utf-8?B?RHZmcHVvc2ZQb3FZVk1QOGo4T3FlajJlVWs0bkpnM1dCcWVpZno0V1p3L2sr?=
 =?utf-8?B?TUMzQTBvc1FvdHh0dGtXOWlWQm93Q2JBaXRPQVR6Zm80YlNjTExJMWxRK0ZZ?=
 =?utf-8?B?ODg0a051QXQwOFQ2RXNqTHphTmJYQnhGR2UvQ0RXWDArYTNrZTBhdEE4Y05U?=
 =?utf-8?B?dXFlNEQxdzR1cHNiQTRxQ0wwK2V4OFBqTzBwSHgxVGVVd1g3RnByNWRtajUx?=
 =?utf-8?B?REpydzUxdlA3cTZMMUlPekp4OXlVdmFwNUVOL2Rrakk0UGk2M2s0VnYwWlAz?=
 =?utf-8?B?MzJJOVV1OVJBVi9lMEhlTnU1b1dVcEFRcjhXNEUxVHBua1d3a2IvdlR6NjIx?=
 =?utf-8?B?MHBhQkpSWk82VEk4UHpURnFGdnByWDYzbVZwcWNpMk90bnI2enNvdmR1SUdL?=
 =?utf-8?B?WkJCMk1ZSStIdjZNeEJaL1pLUmNsZGt4alJTTERjQ285OHF3ekdxMUdZNnpr?=
 =?utf-8?B?OEowN0kvT21RMVV3cWorRmYrbUJYemVXSTUyeGdKMjlvQTgydDVlWTFnbmg1?=
 =?utf-8?B?ZU5TZ3NxcFFuSERkNUpzS3Z4c21JQW1kWEhkRUQycXltOGxhMUMwL3RzVEJH?=
 =?utf-8?B?QjY4Y3ZwNEg4VHlzWjR4c1p1cEdJMnlQRzh4bE80Wk9qb2V1ZVNIbWxYSG1E?=
 =?utf-8?B?L0x6YmZLMlpPRmZmR2cySlloMks5VjVIa1RpQ0JaUE9CMnR2RVF2azc0Rk1V?=
 =?utf-8?B?Sk40aklqb2t2eVIxRFJma2JtZ0xEcTEyT1Rha056NTlyTnBLN2RNR1lYV2xM?=
 =?utf-8?B?QzJJdzVja01VeWtTUEJjZEVXL3pnSDZ5U2kvZjJLWEhBdzdEelV4Rzhoa1pr?=
 =?utf-8?B?ZkM5OWV5azJhbDFFRzJzMHNPdUJGNTMra0xRZVFzbVFjYXFWZHpGb3kyUXhP?=
 =?utf-8?B?a1JSN21tWGhKU2pKdmFKVGpJT1RPcVVsUU9OSWk5dXZaQ1hiQjNLMy9Uc21J?=
 =?utf-8?B?ZXdWZHlqKy9HUDI1SkZ1SXU2SzV4TDBLMnFtOVRZYUFvbFpETDIzcXlWcUZs?=
 =?utf-8?B?ZzFDR2N6OFRWT0p2dWZ4bEE3aytIMG42WU5XTmk5MDJZWUpCVWdSdXpLalIy?=
 =?utf-8?B?c1RmM0Zvd1Ard1d6RU4zWHZBSzhTZlJicFhVUFlsdEI4OWQ2MjJwSUE5ellB?=
 =?utf-8?B?WktpSDM0a2ZqY0FpeDV2Rm1XK1d1NG00aUVsZURoR2ZWdkNmN3pGN3paWTVB?=
 =?utf-8?B?QWx1MENWcjF6R2U2VUxsUTlVai83UzdUZTI4UThhVmJaQllnWnVGbndkNnBn?=
 =?utf-8?B?SCtaMFc5UC96b0NYWTRuQUtZait4L0hTaDJBZ2VzbGZRaG02TGtRWE5PNXYr?=
 =?utf-8?B?VWl6cCtpclhvN1FjRjVlSGVZVk13PT0=?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: da7413a7-05d2-4136-afca-08dd3173dd57
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 12:39:46.0707
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B0QyA6eOPrWO3wn1M5ALZOjdDNARTzGy9SciqLXovhNFCCQC4y9Lz0sdWwFg2zib0lzhS4thqUcIKz2j+G5d5jAc33XfVCbh/qmxzmrniRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6497
X-OriginatorOrg: intel.com

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBTZW50OiBGcmlkYXksIDEwIEphbnVhcnksIDIwMjUg
NzozNyBQTQ0KPiBUbzogUmFiYXJhLCBOaXJhdmt1bWFyIEwgPG5pcmF2a3VtYXIubC5yYWJhcmFA
aW50ZWwuY29tPjsgRGluaCBOZ3V5ZW4NCj4gPGRpbmd1eWVuQGtlcm5lbC5vcmc+OyBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA8a3J6aytkdEBr
ZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6
IGxrcCA8bGtwQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czog
c29jZnBnYTogc3RyYXRpeDEwX3N3dnA6IHJlbW92ZSBpbnZhbGlkDQo+IHN5c21nciBwcm9wZXJ0
aWVzDQo+IA0KPiBPbiAxMC8wMS8yMDI1IDEyOjI2LCBuaXJhdmt1bWFyLmwucmFiYXJhQGludGVs
LmNvbSB3cm90ZToNCj4gPiBGcm9tOiBOaXJhdmt1bWFyIEwgUmFiYXJhIDxuaXJhdmt1bWFyLmwu
cmFiYXJhQGludGVsLmNvbT4NCj4gPg0KPiA+IFJlbW92ZWQgaW52YWxpZCBzeXMtbWdyIHByb3Bl
cnRpZXMgZm9yIHN0cmF0aXgxMCBhbmQgZml4ZWQNCj4gDQo+ICJSZW1vdmUiDQo+IA0KPiA+IGR0
YnNfY2hlY2sgd2FybmluZ3MgbGlrZToNCj4gPg0KPiA+IHNvY2ZwZ2Ffc3RyYXRpeDEwX3N3dnAu
ZHRiOiBzeXNtZ3JAZmZkMTIwMDA6IGNwdTEtc3RhcnQtYWRkcjogRmFsc2UNCj4gPiBzY2hlbWEg
ZG9lcyBub3QgYWxsb3cgNDI5MTg0NjcwNCBmcm9tIHNjaGVtYSAkaWQ6DQo+ID4gaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvc29jL2FsdGVyYS9hbHRyLHN5cy1tZ3IueWFtbCMNCj4gPiBz
b2NmcGdhX3N0cmF0aXgxMF9zd3ZwLmR0Yjogc3lzbWdyQGZmZDEyMDAwOiAnaW50ZXJydXB0cycg
ZG9lcyBub3QNCj4gPiBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycN
Cj4gPiBmcm9tIHNjaGVtYSAkaWQ6DQo+ID4gaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
c29jL2FsdGVyYS9hbHRyLHN5cy1tZ3IueWFtbCMNCj4gDQo+IFRoaXMgbWVzc2FnZSBpcyBub3Qg
cmVhZGFibGUuIERvbid0IHdyYXAgaXQuDQoNCldpbGwgZml4IHRoaXMgaW4gdjIuIA0KPiANCj4g
Pg0KPiA+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4NCj4g
PiBDbG9zZXM6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI1
MDEwOTE3NDguTDJXMlJ3RTUtbGtwQGludGVsLg0KPiA+IGNvbS8NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBOaXJhdmt1bWFyIEwgUmFiYXJhIDxuaXJhdmt1bWFyLmwucmFiYXJhQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbHRlcmEvc29jZnBnYV9zdHJhdGl4MTBf
c3d2cC5kdHMgfCAyIC0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWx0ZXJhL3NvY2ZwZ2Ffc3Ry
YXRpeDEwX3N3dnAuZHRzDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsdGVyYS9zb2NmcGdh
X3N0cmF0aXgxMF9zd3ZwLmR0cw0KPiA+IGluZGV4IDBkODM3ZDNlNjVhNS4uZmNlMWRjMmViYWQw
IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWx0ZXJhL3NvY2ZwZ2Ffc3Ry
YXRpeDEwX3N3dnAuZHRzDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbHRlcmEvc29j
ZnBnYV9zdHJhdGl4MTBfc3d2cC5kdHMNCj4gPiBAQCAtMTEwLDYgKzExMCw0IEBAICZyc3Qgew0K
PiA+DQo+ID4gICZzeXNtZ3Igew0KPiA+ICAJcmVnID0gPDB4ZmZkMTIwMDAgMHgxMDAwPjsNCj4g
PiAtCWludGVycnVwdHMgPSA8MHgwIDB4MTAgMHg0PjsNCj4gDQo+IElzIHRoaXMgY29ycmVjdD8g
U29tZSBiYWNrZ3JvdW5kIHdvdWxkIGJlIHVzZWZ1bC4NCg0Kc3RyYXRpeDEwX3N3dnAuZHRzIGlz
IGZvciBsZWdhY3kgU3RyYXRpeDEwIFNXIFZpcnR1YWwgUGxhdGZvcm0uDQpUaGUgc29jZnBnYSBz
eXN0ZW0gbWFuYWdlciBkdCBiaW5kaW5nIGRvZXMgbm90IGluY2x1ZGUgImludGVycnVwdCIgcHJv
cGVydHkNCmFuZCB0aGUgZXhpc3Rpbmcgc29jZnBnYSBib2FyZCBmaWxlcyBkb2VzIG5vdCB1c2Ug
aXQgZm9yIHN5c21nci4NCihlLmcuIEN5Y2xvbjUvQXJyaWExMC9zdHJhdGl4MTAvQWdpbGV4KQ0K
DQpTb2NmcGdhIHN5c3RlbSBtYW5hZ2VyIGRyaXZlcnMgKGFsdGVyYS1zeXNtZ3IuYy9zb2NmcGdh
LmMpIGFsc28gZG9lcyBub3QgdXNlDQppbnRlcnJ1cHQgcHJvcGVydHkuDQpUaGUgc3RyYXRpeDEw
X3N3dnAuZHRzIGhhcyB0aGlzIHByb3BlcnR5IHNpbmNlIGJlZ2lubmluZyh1bnVzZWQpIGJ1dCAN
CmR0YnNfY2hlY2sgd2FybmluZyBvbmx5IGFwcGVhcmVkIHJlY2VudGx5IHdoZW4gSSBjb252ZXJ0
IHN5c3RlbSBtYW5nZXIgYmluZGluZw0KZnJvbSB0eHQgdG8geWFtbC4NCg0KVGhhbmtzLA0KTmly
YXYNCg==

