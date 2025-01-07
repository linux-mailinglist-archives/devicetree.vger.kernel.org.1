Return-Path: <devicetree+bounces-136060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D29A03A8F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C5A81886539
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81561E3779;
	Tue,  7 Jan 2025 09:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OoMLEukU"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF601A0BCA;
	Tue,  7 Jan 2025 09:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.198.163.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240619; cv=fail; b=C6rkqG3GXx2qKq1kc5re7nP2k6CVG3I7QAt1zGVjov3xN/PvWRsaAEImreZT0bYwpyptNp6V15nkga0m+eZXk11km7M0qabO2r6MlPlaWwK4p/t7QWc5JzNA78hkSGRWL9zeOX7tqVB7owGtPCMw0xQ0fwjwEZlLWFyHTxijIVs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240619; c=relaxed/simple;
	bh=DjinJzCcPr1kN3GkPfKZtrYorQlFeIoYC/gpF4IVGuE=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=nJsTlUnGN9IW8RmepceX7zTGQNNKTX3cv1GKQbDJamZW55QRfkA2/iX0NQvJebF4wtIJ8v59X8Ou4arY4j/YPb1L5h6qYyeGhQjf/n35vu4f/Ec2HYw99fviLZOBFE7jlTEzZczkzfWJye96IpTNZv6dWHpMkgnZ21wUNo938Tw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OoMLEukU; arc=fail smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736240617; x=1767776617;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=DjinJzCcPr1kN3GkPfKZtrYorQlFeIoYC/gpF4IVGuE=;
  b=OoMLEukU0GDfoS9sMUA3Au+GPKRpz0HjBqVaP07A5uBIL3a8RqH45ide
   QFwztsd4On6xvzxEaEOg4Dk02Tq92RDscxc4suY/2BcRzU9aheLcaebOY
   HnwPRPT5PYVmDKCvm+d1sLaBrRxjdTEEwojW3Psu3VAlhrqldZqxC5UN6
   23nfFqNMvLlXb1ES83t9yxA4+aaMpCz/BAXeaxm+OLtS9P5AwWQxp6vcZ
   dvPtzzQR30eotcmzzPkp/YysaW6azfGQqFD5caGsqzFC/8WbcjtUx3Goc
   WOWx2ZFYgIzIQc+L6lKAjZisdqYvQzSwCrBDKQ6xDARHWoUSnWMyCpIBE
   w==;
X-CSE-ConnectionGUID: UkMQPr8OQtqQztEM41KSPw==
X-CSE-MsgGUID: UyBicBlGSKCGJ18nozCm3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="40354144"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="40354144"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 01:03:36 -0800
X-CSE-ConnectionGUID: QGjny90TQjSMMcbHgabyyQ==
X-CSE-MsgGUID: 2MGW9kH8TK+ERcFV8wGD0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="102604105"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 07 Jan 2025 01:03:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 01:03:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 01:03:35 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 01:03:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dg7JkenNBGilZW2PFC0qJU2rQS58E4vX6VG1yReuqSV1GicIpsjs35j9Goe7S0oWDUje86/TZKiqkUy/AsJwCMV+ItgUyXJDdyua4eYKkKa5GFirqXhqjxnk6v2vzR9QuUc5VwBvxfyHTNMiftTH2C5tYapyBw5tp8xYZUj91MV/jW9J2m9bs0IT9HKbvIiTIe49mpT/p2ZmBjbEMPt+eoARWlClopVAsu01zIG2umAhnY6fMtDtOtNmZBi6DPxaJ7QoYZNRolz460JicrdfQVAPKulf6EwkOgtP2t6yhHL3MtYj+HuoI6u7IlzS13LugtM1Bfg0E0qLvIaqX164IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N6V1xNqOU74ZqFLU+VNytU+TY2uf8l+dZIUG1C+OG4Y=;
 b=HDyl8RqUvYFONceET4mHyvX06xe5/To++c+2hbhGa6iOHBU0G156yA/TZ6HkZuEbhBPcH88qdMotabIxDvqau+VOLsvpHlcZJaAlauO9Kiul0JW++/xjbhQ7mZrV3TFkpPi9dVnhOfBprPPw+vSEmn+L01+GDKKO62XzGSyTldpPO8lPt2lcXePCmQOBJhn77RKjWEHJa89Z9dgt6H9QysBt/5FnEHpXlC3zlRFjf5utHf85kJSLUGncQTKvUNhtW1vaLXmoMO0I+eEqmxrTaRpz/iKMwqYsZ2bK+oqBICrDBmVrMyO07ypGT8fyPnWkUcOF/ZJJGnNk2fUL5hs+2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 by DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.17; Tue, 7 Jan 2025 09:02:52 +0000
Received: from BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f]) by BL3PR11MB6532.namprd11.prod.outlook.com
 ([fe80::2458:53b4:e821:c92f%3]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 09:02:52 +0000
From: "Rabara, Niravkumar L" <niravkumar.l.rabara@intel.com>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
Thread-Topic: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
Thread-Index: AQHbYOFs9oeqQQ/Rv0eT39gblXCMPLMLABiAgAADtDA=
Date: Tue, 7 Jan 2025 09:02:52 +0000
Message-ID: <BL3PR11MB6532492BDAE86BF81EC8E403A2112@BL3PR11MB6532.namprd11.prod.outlook.com>
References: <20250107084831.2750035-1-niravkumar.l.rabara@intel.com>
 <20250107084831.2750035-2-niravkumar.l.rabara@intel.com>
In-Reply-To: <20250107084831.2750035-2-niravkumar.l.rabara@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6532:EE_|DS7PR11MB7808:EE_
x-ms-office365-filtering-correlation-id: 599eb9b9-1b55-4f9c-b654-08dd2efa115a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3HocTG3HG+Qn0cwkJ9SV52lhM7W9gCO0g5YUP8DS5qoJIrWW5D9v4XttErKX?=
 =?us-ascii?Q?kkVLIhjI2b11VsWzZC9s2LFLOvuWOPrM6a2nYQ+33JQ4VA0/KEydkhB5ynU0?=
 =?us-ascii?Q?EjD+S/gCN+mk+qORdDeyDLlJNGSJw8EQYwaQOFI9rTd9uxBfDRGxl7o0g7Hf?=
 =?us-ascii?Q?Cv+LrCFc6IRJ6CQ/+J5ajrgNo8X27KC/YZJaZzfb8n38irZ0MFBhBAjd/XT/?=
 =?us-ascii?Q?3GcebWIMYW5W0vjIdAZX/ErFdZdi5dwZlK5bZz78hxIXsgiLDcNXBusPkmk9?=
 =?us-ascii?Q?SAUC48gWFydauLzASHZCKGDGadnghF2nmuG/CPgmeVlT7OgXYYBotQPYEzwt?=
 =?us-ascii?Q?PJIiZnSYxgmvPYUsQ/W3Vs2RK/82cIzQ1bqJa8u0cSKftDtCmij+wSDMahqg?=
 =?us-ascii?Q?IGj9/N4UbMhC7Wx0mCwU0zB1w33LKkQDcpLpQWCYrjyvY9TLtfMXzWKumD04?=
 =?us-ascii?Q?GzeX96XJI+N6tRmkRO7XhwqJvyuMXNFg2ERdAi5HiNsl2AVctfdMWrH9mqMc?=
 =?us-ascii?Q?CpzzX+ATCaa73pVoL3ZEEzfeM+UbKKCDtZICutCKrQjXZd/MaJmL+z9lLHB6?=
 =?us-ascii?Q?DhvJKSRDlaqft7mumL9Bt9GhPiJ+8lvEa9hvozP4A/Cp5h1rNTp4oJbas4dY?=
 =?us-ascii?Q?aLXOUY0nUBhstiHDZE1tFTzCQ/m4BRSqcdTchsFTXGerutGW63Vt2y24ZCVF?=
 =?us-ascii?Q?kvJ6pj8ggD0Y3PZaZXzNYPPew8lO/nHf5T5x+jXT6irwvnL7nqua2fHyuAAm?=
 =?us-ascii?Q?I0Ffv5Rt9i8usGaOk2Ip9QyeijztLKSQ9dnFkhuli7E44i2B8PnFobubszAG?=
 =?us-ascii?Q?MOVYQCfOF0YH1M8sPBVaoeOcVqDvswkN5qIbeqX1/l9xQHLejhTlARKKHh1Q?=
 =?us-ascii?Q?xydTKviPw5ADGLSQbUmKzUua5K0gXdSKww713uYFwG2DIFUQAVQqPn9FlqEE?=
 =?us-ascii?Q?ffkIYZmbd4LKSk6bGAgT+8mLhjPhAHHzt3HvgZG9AaVxmizv4/Lo4N1M3+fR?=
 =?us-ascii?Q?TWyGQJIIQuU3NrsoWwKFj8RZs7LRhiwXhqER7N45KqNcBE+A4yl6dQJONAjP?=
 =?us-ascii?Q?EW4xl4J+zWbsI+xtXgvwIJg8RQYC88SWDaJusZbqq2LJVyTeQMK0SdeRa2Fp?=
 =?us-ascii?Q?nPncf1rihPffnnC8ppzqQJC7bnToUlVadnOPPqaVSI+NzZhwI5TSKMY5KDGv?=
 =?us-ascii?Q?2Cz5ZAgvhlrOy2IevMFEq87JHz34LMOnKuqYscpusNItDk1ZHsiCr/XjLyte?=
 =?us-ascii?Q?gF5f7XSj8M5N+as6A+HPMcZsfVBYG5obDpjTXgaYOhSDfP0WuQDyUUsm/ZJ7?=
 =?us-ascii?Q?tte3XkPgh8j6gByuCcMfIRqOGyRTmyDq3xwNSf4Z/JQVwmwbQ7WjCFPg5rye?=
 =?us-ascii?Q?2//xDeCseQOKRak5hE07zWnpAlulPqq27RWUBhrT/gDeksP7GcrAtanM5y8j?=
 =?us-ascii?Q?r0Y6DQro4W4xllwvVg2txR7jH/8OosGN?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR11MB6532.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HK6v943ML/8EsGbiBvHgyIc0tfcO6XR1Rcrsd7Z3FCMFiS/+aveMMdYhSnMd?=
 =?us-ascii?Q?VaTGKsDRrJEVKH7x3ev3WZaCJn48w0hn6xixpB6/OiVrzVK59AHgND72fMMn?=
 =?us-ascii?Q?SKyEOkmTLB27U9WMi7xJJh/48bn3f1ACIovWDsJ+XKRVT/V2SNroetRL8C9N?=
 =?us-ascii?Q?FKYFKyVw7a80ktbsPSUDWfH9ofGDRKWQpK4J4yxu9PNgy/5diUkuJPmpSKMF?=
 =?us-ascii?Q?emS5wDaqH0TTmZN/Mnab0Xz7IRAcfPOJT2q9HvI1Ti1N/VLL+0UQNJq6X1Rq?=
 =?us-ascii?Q?4urgfZoUDF6R2JoSHP7RCax+0O1SfdUVEy2dF8LzyuPjCaFspDot/RTCA/U7?=
 =?us-ascii?Q?gA3aCISOwb4032/YRl75cPmMYZZxZVFuwPLUmgIufI6n99p5jL7z3P+q+TSo?=
 =?us-ascii?Q?jnQFQMD9grDmF+1RTaSXetw4cWyxSpXpyXZM8HG4gs41tXMbELScB4fEmAYp?=
 =?us-ascii?Q?sWpKVzFXYkzCAurr4l/gyg4ye+xiZ2cQuvX2qgXKhEAGL6Kvzt9du5hl2Ywl?=
 =?us-ascii?Q?mFoVdMGgt+axURGtXCHmP5s+t1eIxHFHn9ItLquXWVq8DVBjopqEigNm06ua?=
 =?us-ascii?Q?Jz4miomgWreSeJaLrKbl+GZ5BEKf5nR2BMuLi6FsXzYp7UeeUZwQki7nCk4l?=
 =?us-ascii?Q?slYNR0AgFFL6xxMHNj9NhwiBUEyBlgUDDfXf9OBOYoZBCZXRwN8TVZx5wvvk?=
 =?us-ascii?Q?sPiSn5Yz4boDpzmYEt9kNPu/5kDoCAp5uVlSGGggwPzT4tqiD6ep7YKTl3M5?=
 =?us-ascii?Q?eTm6B/wvQYbVIIA2O1/ymvf6CPgP0E67TbSiPPVQee+hw/ZPuXeOL3LGHF9d?=
 =?us-ascii?Q?kjj/WfAxuO/TJu6nJvHzeLd4r0DflMfYmbD8JqLxvHHR2EeGbBPRVDVGkvPD?=
 =?us-ascii?Q?u+RgCTgjOnzUCyyXgftJg/yWzRuca37Y4DV+Cq9OK4G/z87hTvVMwxqSvaFh?=
 =?us-ascii?Q?85ee/OnvjFkWXveULgT509meqlh9wQURIUn6YJfv2sKUSLctwiNITvf1jmEh?=
 =?us-ascii?Q?aFAVyiNYWNb5r6Utom52sFPbl8F9GE7UhkfiI/4bbw0Ws25G/CDn3PjJp2MG?=
 =?us-ascii?Q?bFx5omVcoxCH68eYSo6wY77E80M9IpjQ6fEetuVHcNA3BphiHbGRWdmyD3ZE?=
 =?us-ascii?Q?TmpXtqVifU0FHGMo0yVb3fSapKkP+eSNK7C1zZaZpf3WcpySr2lz7ViKEjnz?=
 =?us-ascii?Q?qlGjAyekj5nVAsDGO18DwFwS+XsM5guzZ1t149wQSkFEQhjuo538chGDknr8?=
 =?us-ascii?Q?ABlyyUPmh6ORgVJUDd8MViuhWWauOovI+10mJgK8BNfpSMY9oZAPVhiYT9Bx?=
 =?us-ascii?Q?Ts4sRwY/UFm+pINe3p6mBxc65uDKqcLrlSFlk2vhOU1xenNvznBk7rOn1DAY?=
 =?us-ascii?Q?X2IW+YHBSFAVuMQCxzwbSWkw3qeIA5Oyc8i8V/41FyMezEy6hPjr7EjLHU0k?=
 =?us-ascii?Q?zP9xkuP6fu4SCkxmFGYQhb0ddQUeEO97/P6dQA9rz8pCwCrdNlxHLKLxRdaR?=
 =?us-ascii?Q?WYz9eI4nf2geC/ZPPzeRQTZXT8h5wFiUi5bQEyaUepmr7mPWGou+cVgMe4Vg?=
 =?us-ascii?Q?akQqQ8G2xaWyd2raD7CLMIan2ScU+E3LUIQmmWrfRt6nfn6/4DJFzZMzw2gW?=
 =?us-ascii?Q?mTHq7HB0meEWwCvwctIFua0A9JN84jwniNGL3rt3BVaYLLQOaql6OtyoXsAc?=
 =?us-ascii?Q?pm2FTg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6532.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 599eb9b9-1b55-4f9c-b654-08dd2efa115a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 09:02:52.4085
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1O+dth5o17tDlIutN4nS/nxQcQD6kiCact8EWcpJIc1wxv5c/WlI+6bR8Fuv+lJHs+RAghvg75y8GSkLdaCIPjM/JfaXfLOr0X3Ym7A0kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
X-OriginatorOrg: intel.com

Please ignore this patch email - it is a duplicate. Sent by mistake.=20

> -----Original Message-----
> From: Rabara, Niravkumar L <niravkumar.l.rabara@intel.com>
> Sent: Tuesday, 7 January, 2025 4:49 PM
> To: Dinh Nguyen <dinguyen@kernel.org>; Rob Herring <robh@kernel.org>;
> Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> <conor+dt@kernel.org>; Rabara, Niravkumar L
> <niravkumar.l.rabara@intel.com>; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
>=20
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>=20
> The Agilex5 devkit supports a separate NAND daughter card.
> The NAND daughter card replaces the SDMMC slot that is on the default
> daughter card thus requires a separate board dts file.
>=20
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
>  arch/arm64/boot/dts/intel/Makefile            |  1 +
>  .../dts/intel/socfpga_agilex5_socdk_nand.dts  | 89 +++++++++++++++++++
>  2 files changed, 90 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
>=20
> diff --git a/arch/arm64/boot/dts/intel/Makefile
> b/arch/arm64/boot/dts/intel/Makefile
> index d39cfb723f5b..33f6d01266b1 100644
> --- a/arch/arm64/boot/dts/intel/Makefile
> +++ b/arch/arm64/boot/dts/intel/Makefile
> @@ -3,5 +3,6 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) +=3D
> socfpga_agilex_n6000.dtb \
>  				socfpga_agilex_socdk.dtb \
>  				socfpga_agilex_socdk_nand.dtb \
>  				socfpga_agilex5_socdk.dtb \
> +				socfpga_agilex5_socdk_nand.dtb \
>  				socfpga_n5x_socdk.dtb
>  dtb-$(CONFIG_ARCH_KEEMBAY) +=3D keembay-evm.dtb diff --git
> a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
> b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
> new file mode 100644
> index 000000000000..3eeae5c4e24a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
> @@ -0,0 +1,89 @@
> +// SPDX-License-Identifier:     GPL-2.0
> +/*
> + * Copyright (C) 2025, Altera Corporation  */ #include
> +"socfpga_agilex5.dtsi"
> +
> +/ {
> +	model =3D "SoCFPGA Agilex5 SoCDK";
> +	compatible =3D "intel,socfpga-agilex5-socdk", "intel,socfpga-agilex5";
> +
> +	aliases {
> +		serial0 =3D &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +		led0 {
> +			label =3D "hps_led0";
> +			gpios =3D <&porta 6 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led1 {
> +			label =3D "hps_led1";
> +			gpios =3D <&porta 7 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		/* We expect the bootloader to fill in the reg */
> +		reg =3D <0x0 0x80000000 0x0 0x0>;
> +	};
> +};
> +
> +&gpio0 {
> +	status =3D "okay";
> +};
> +
> +&gpio1 {
> +	status =3D "okay";
> +};
> +
> +&i2c0 {
> +	status =3D "okay";
> +};
> +
> +&i3c0 {
> +	status =3D "okay";
> +};
> +
> +&i3c1 {
> +	status =3D "okay";
> +};
> +
> +&osc1 {
> +	clock-frequency =3D <25000000>;
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +};
> +
> +&watchdog0 {
> +	status =3D "okay";
> +};
> +
> +&nand {
> +	status =3D "okay";
> +
> +	flash@0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		reg =3D <0>;
> +		nand-bus-width =3D <8>;
> +
> +		partition@0 {
> +			label =3D "u-boot";
> +			reg =3D <0 0x200000>;
> +		};
> +		partition@200000 {
> +			label =3D "root";
> +			reg =3D <0x200000 0xffe00000>;
> +		};
> +	};
> +};
> --
> 2.25.1


