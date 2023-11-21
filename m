Return-Path: <devicetree+bounces-17662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECFF7F3530
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03F20B21946
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 17:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D040C20DCF;
	Tue, 21 Nov 2023 17:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="c6cfm2Cj"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF104E8
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 09:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700588846; x=1732124846;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=ZaXACWZqfJtRoatZHCVuzsRq4u3hBkUnVY2P5bfqZ1I=;
  b=c6cfm2Cjdct4doodp/CZVlscEs7WD0HRMIKoIdESfh7fx1hUicpM0IeU
   9q4mNhjEEIVKDGQatcQsRkIciEb9UQXb0wXBAvqAbMD5CzKETz22TBDU8
   B3HEkKPpapTEeeroVtE9WvWtGhzulvfALSOkkZxneAQbrupb+o6DJIlbY
   MFvOcS4b0yMfvlhGlNp+JDuYLdNickdYmjqJi83LL47RHcqBION96O8SC
   iilIuia9to3QN3gt9vlilFtWhPWUjs6y8OA+LuHE8mpcWiJy82Abd2h4q
   8rTXzHJbql7J/nIP02I5VWF0tImNrQSmY3oEjt6OTLIE3RX8BkV89y+NJ
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="422986950"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; 
   d="scan'208";a="422986950"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2023 09:47:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="760170857"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; 
   d="scan'208";a="760170857"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 21 Nov 2023 09:47:25 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 09:47:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 09:47:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 09:47:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fvTwn64QKPBDmV3bniwnfMOEtpLCZr3j+WQ5OL+Gpar+yE9JbknUGZBxV7yRhZqdf5b2UYvih7U8u2v06l3Jn3insarQuC9dFUSSgicnq0BsI+X+17ukNMYnRXHN8EymWW6wst1v23oIjgbp185S1dCtveBGdfn8Tjwg3bRvrZU0v6Y/Je5P6DBFAB3y+SjTdpbxY9U8XwnwSWBm/ZidXf7z0KzyYHfmOCkKpphcxym5Yn5ZrrvCiv03r2qos1SZwValmOM4/gUcjgFPYA2BzJoaNbfeuv3lbbVm4EuVa7o4VEy62BRjAwBaY+IX5zPjS/g8bj3gQpLVH/GU9MJ/+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaXACWZqfJtRoatZHCVuzsRq4u3hBkUnVY2P5bfqZ1I=;
 b=n0IrZbPSw8fNo6vrhaWqaC1brH7qL/rlrHnTVUe4vpxxibPU49p30gR5c5K2xfsWrjADRQ15r+LKGhjgIAytj8SYwl4ljlDxbY8ExWSB6/EkDe6V/Kz1b2mVtK/B9ZTcnzGPBT32janDSIkJ1K096LFpNh8JLB9cY1s/W954vf9DilzjvdGpw9lvfq1BIfDM57mGFKoHWHHIo/TFDoCtbBG2Mt5iHPicOkgZTnqa6ZmEFQnHAyHAWXjIy7W5iFu4b8Q8ZEHiG/e7R8por6kYycNz50IyssNxhVGTESjqCji9sHSAEAbUqUc+UXae6GQfaMJ5Ov09v4/fMcrGHKPCsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5483.namprd11.prod.outlook.com (2603:10b6:408:104::10)
 by SJ0PR11MB5680.namprd11.prod.outlook.com (2603:10b6:a03:305::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Tue, 21 Nov
 2023 17:47:17 +0000
Received: from BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::6da1:a4b7:4771:14e1]) by BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::6da1:a4b7:4771:14e1%4]) with mapi id 15.20.7002.028; Tue, 21 Nov 2023
 17:47:17 +0000
From: "Chiu, Chasel" <chasel.chiu@intel.com>
To: Simon Glass <sjg@chromium.org>, Ard Biesheuvel <ardb@kernel.org>
CC: "Tan, Lean Sheng" <sheng.tan@9elements.com>, Devicetree Discuss
	<devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>, "Guo, Gua"
	<gua.guo@intel.com>, "Dong, Guo" <guo.dong@intel.com>, "Brune, Maximilian"
	<maximilian.brune@9elements.com>, "Chiu, Chasel" <chasel.chiu@intel.com>
Subject: RE: DMA not supported below 4GB
Thread-Topic: DMA not supported below 4GB
Thread-Index: AQHaHJxxDrMfGBBFxECNmgz4vuLDO7CFB9WAgAABx4CAAACTAA==
Date: Tue, 21 Nov 2023 17:47:17 +0000
Message-ID: <BN9PR11MB5483A1BF2EF6A54DB70CCB0FE6BBA@BN9PR11MB5483.namprd11.prod.outlook.com>
References: <CAPnjgZ3=HxH10KYkrE+1mYtPiYe4KJMD+zekTjpq6oq_qZ5kxA@mail.gmail.com>
 <CAMWxwJ1MbJ1US8g2-hXGbr-X4RncioHn9MTp9YK=8kXaQS4srA@mail.gmail.com>
 <CAMj1kXG2GxhM2nz04SEoj+FLyODs17pF7wBFqN0qXkOWhVHxcA@mail.gmail.com>
 <CAPnjgZ0YqiOuqCrfA9nZ_PD-Xep-T0YhR5Sxdwb=5Z0583UQJw@mail.gmail.com>
In-Reply-To: <CAPnjgZ0YqiOuqCrfA9nZ_PD-Xep-T0YhR5Sxdwb=5Z0583UQJw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5483:EE_|SJ0PR11MB5680:EE_
x-ms-office365-filtering-correlation-id: a07f58dc-f59c-48f5-f7c4-08dbeab9e741
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gur5N82n9a+2cMBEqRrfe05aXmAT4zeNSxMv2xPUr+HmgwQU8tMAYbvTyubAn1q84cloQWGH57uEFVp30gcc6P7JqqjY06+EAffe4muV4wiIPluCk6qSbXPyUdxF9vn/ff9ycq7Y0R04ZPBOXL90NzOD7qLrN2lcaL3yeHZANQ7LwYOOlM5boZ61YXA7C7e9qLVW9QIyq2u2I060t0bJVUjN+GrFKAYXvnQ5fgKxWL4dwtWoCwHy0wouCkfTnc5w83y8O8eIVExSZrp3tSA7cqjtkzWHE1KGlKPAe7D/dlymE1y4KVtSDrm0+s9CDe+pod8lXQrW4nefB7I8R/7vEMy0Zl5mFC9onIYbwmpE+2zZKzllGjFxgyq9ZPYtIc9dWC7meS42CuU/Elif9yZXZS7kzA2/8XrUyBWkB/mqTiIcrvvsuV1JUe4hTsT/2w05sCZ2paTToQYBTPi4bIIhwXaL0N3gGQwOeYdVt8VdlEfp56mkMQkoVEZiC8s21uegcUQDsCALoKnZvWAX953qrqfqvkviM5qNWJ0eLtLycFCUpeRHp2yLLBgHxgoRcAkbDXQAysBwB3gsIiI/LOlJ/Odybc2JzWSTsHGaYbis29Ofga8FU/C04J2yv1X7bzHi
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5483.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(39860400002)(396003)(346002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(66446008)(66556008)(64756008)(66946007)(110136005)(76116006)(66476007)(54906003)(478600001)(316002)(71200400001)(5660300002)(86362001)(38070700009)(41300700001)(33656002)(2906002)(52536014)(4326008)(8676002)(107886003)(26005)(38100700002)(8936002)(122000001)(83380400001)(55016003)(82960400001)(66574015)(53546011)(9686003)(6506007)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3c3REpveXVNMStWQ1ZKVTA2dU1ZSGREdlM5bGlUTVlHT1ZrSnlzMDJZVElj?=
 =?utf-8?B?L3p3Mi9KMUJPcGhnWUMzUWxXa3oxT2JTbVV4M1hGZU9BbkZWUGIvVitwRDJm?=
 =?utf-8?B?YkVpdmd0SFZva2ZDWU1pSFd2Y1JldXRZOUNVMlFYbW8xVXlVOU5FTzd1d3B2?=
 =?utf-8?B?YjhLWVNkYTlMWFJtbmRBU0tFem9kRDdyVnZ2QnZZZUNHbXRuZlZiYXZPTWRl?=
 =?utf-8?B?aHAwb1VjWUtWL2tobk5ucm5sSWNkeXNFYW85VjZaMjZLaTUzNDJkWTRZRjg3?=
 =?utf-8?B?OGFRbm9uWUl4SmU4YSs5UGVhUmtIOXlpb2tyNkprNEQxWTRBd0lscEZYamp6?=
 =?utf-8?B?dDRXWjB3czZqTnBBbmhBNXI1bE1jcjE1T1MwT3ROSnZQOWl2a3pwdm9XZDds?=
 =?utf-8?B?Um41MjBRR203ZE1lQktiOFM0V1JTU1lvQ3lFd2VIc2l6NnVIZGduVm9lVlhm?=
 =?utf-8?B?emt6YTZ2dlhvUmVrekI4WDA5RTZ2YWY5RFQwZlRRTVVMT0pjMkhwUjhneUpm?=
 =?utf-8?B?eG9yTnBONkR6dkd2OGdJQ1ZZWU5NdVp4K09iS1ZEcjFaaG1mdHJoTmVERU9o?=
 =?utf-8?B?QXF3RmxIby83Z0tVSnJoaUZrM2NjVXRVZ2t0ZS9IT2crOHIyUldsZkVuZDFK?=
 =?utf-8?B?cVlxSTYrNXVhYU1mR01ROCtkbTU2U3lyK0lRZFVGdWFuQUxvd1pXVEtyQ2la?=
 =?utf-8?B?RTk3UDg1WUljeW9TcWZkT2QwazZqNjBwMmxMaE90cWM0NXl4Y05WU3YzSWdx?=
 =?utf-8?B?SHdzcUtSbnF5aG1aT1BRVHkzQ2kxRXJkTTREQzZsa0MxZ3hXbWNaNG1IK0lZ?=
 =?utf-8?B?UGJYbEtwbFBTVkxqZ3ZTeXBMK3FpMFN5RkpvVy80U3V1bHI0akRYbEcyOXJX?=
 =?utf-8?B?ejNWSkdVUyszMjQzcURXNG1tc2JuUHBPTmxrUmJ0UHEwSnAzYkg4ODBCMEdw?=
 =?utf-8?B?bGZYNk5GdzhGRkVsZFhOcUw2YTdDSGdSUXZFcDIzVHpEVjBZUlM5cTRsa3Ny?=
 =?utf-8?B?Si9rOE5MOWhmVG1vSk5MRHpwVFEweU1uek02SVFPLzRmSkpsT1Blc1BEcmpH?=
 =?utf-8?B?MFlWcXdhdFViejhvYzdNY0UxdUFmQ294Nk5JbTFIUHBFNzg4bUpUeTZHWDRO?=
 =?utf-8?B?QUNQQUJRWnhNa0p2bUwvcGQxZ3RMRFRzdXBvQXIvOVlEUUp2bW91bXh5T1NU?=
 =?utf-8?B?M09MTWQ3R2NHaGlZRmNxWXJXTThYbDBpTTdxamxVWnA1bkFrSkVHeFhZQXlh?=
 =?utf-8?B?cVBiUjIxUUVLZjJpREpzOEhCandqdFlBTW9rRjk5Uit5SjMySWI2U3FBOUUx?=
 =?utf-8?B?MHJzbmlMYXdKL3c2TkFkc0JuZzJQV0p2VHpFL08zcmh6a2krTEdmQ25XaTJS?=
 =?utf-8?B?ZjdXaUZrcVY5RnRTekhiZDNoMFliYS9kZkFNUFNXQzZyOFRDTERPZnd2SjNu?=
 =?utf-8?B?K1ROMEczUTVYWVY0ZWtHWi8yMThjSk1BM0NQNVQ5NWcyNkJFTkNyU0tnRUdK?=
 =?utf-8?B?ZVZKclZ1ODhSSXNIRXRDSmgrcUNuN21EQmU1T2RxY2huVzYzejJYL1hUdlVY?=
 =?utf-8?B?SnZ5SllrWEpCeEw5QTlycFVGNFJzRmY1NkxYdUU2d3QyTk1sRXhkV3ZOMVZz?=
 =?utf-8?B?K1VCRTd4ZjJZeXNmejRDbW40TFNUdncra0MxSm41Slp5dUZzdDRQcDR4STVS?=
 =?utf-8?B?aWpZVHhxRkNReVpqVVpxYVZjOENVRHh2c1dxejd4WFJZTSt5QlRVR3F2NjJi?=
 =?utf-8?B?MHRrTDFqVTVyekxGbGFSVGRwM2xSSzVYTHNKakxFcjlyeEJKZG5CNjd3aGV6?=
 =?utf-8?B?QjhYQ2ZyalZtMXQyZXhsbHBlek0rRmtiZzZDbDFQNDRuM2liUGNFb0JxOFVY?=
 =?utf-8?B?S01ZWlFDdEtXVkNJTytWeGxFeXlvVjdYZzhDa2NLSWhLTjhvU0VheWtsbE54?=
 =?utf-8?B?WnVzd0NFc3ZnNFVLRnFBV1hZcjNEYVFMT2huSjhhbHpWcFYrT3NBaU5rM1RI?=
 =?utf-8?B?NU1MQndyQVdGbHptM2NPM1k2UGJSa0c3QktTNkJhNGg4Nnl4N1NVRXBSWFNj?=
 =?utf-8?B?OCt5MXBiSlhzWVZrRUM3TGY5VFgyOE5TTDRXdVNwcnl4MDRpT2xMRm1Xa25Z?=
 =?utf-8?Q?RSEaYxlj8kA60xoLjXCGUYOty?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5483.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a07f58dc-f59c-48f5-f7c4-08dbeab9e741
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2023 17:47:17.2522
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stpO6zPKscZA8WtYuHgZf1BaZm8HjMSNExYiw73D92nimm0QUWJQuR5Rt+ExGvOwB99w79AlrsgNtNtSExA2Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5680
X-OriginatorOrg: intel.com

DQpIaSBBcmQsDQoNCkknbSBub3QgZmFtaWxpYXIgd2l0aCBob3cgZG1hLXJhbmdlcyB3aWxsIGJl
IHV0aWxpemVkLCBjb3VsZCB5b3UgZWR1Y2F0ZSBtZSBtb3JlPw0KRm9yIGV4YW1wbGUsIFBsYXRm
b3JtSW5pdCBtYXkgYXNzaWduIGRtYS1yYW5nZXMgPSA8MCAweDEwMDAwMDAwMD4gLy8gMCB+IDRH
QiwgYnV0IHdlIHN0aWxsIHdhbnQgdG8gcHJldmVudCBETUEgYWNjZXNzIGZyb20gc29tZSBzZW5z
aXRpdmUgcmVnaW9ucyB3aXRoaW4gdGhpcyBodWdlIHJhbmdlLg0KRG9lcyB0aGF0IG1lYW4gd2Ug
cmVseSBvbiByZXNlcnZlZC1tZW1vcnkgbm9kZSB0byBwcmV2ZW50IERNQSBmcm9tIHNvbWUgcmVn
aW9ucz8gT3IgYXJlIHRoZXJlIGFueSBvdGhlciBub2RlcyB0aGF0IFBsYXRmb3JtSW5pdC9QYXls
b2FkIGhhcyB0byBwcm92aWRlPw0KDQpUaGFua3MsDQpDaGFzZWwNCg0KPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTaW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4NCj4g
U2VudDogVHVlc2RheSwgTm92ZW1iZXIgMjEsIDIwMjMgOTozOCBBTQ0KPiBUbzogQXJkIEJpZXNo
ZXV2ZWwgPGFyZGJAa2VybmVsLm9yZz4NCj4gQ2M6IFRhbiwgTGVhbiBTaGVuZyA8c2hlbmcudGFu
QDllbGVtZW50cy5jb20+OyBEZXZpY2V0cmVlIERpc2N1c3MNCj4gPGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnPjsgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz47IEd1bywgR3VhDQo+IDxn
dWEuZ3VvQGludGVsLmNvbT47IENoaXUsIENoYXNlbCA8Y2hhc2VsLmNoaXVAaW50ZWwuY29tPjsg
RG9uZywgR3VvDQo+IDxndW8uZG9uZ0BpbnRlbC5jb20+OyBCcnVuZSwgTWF4aW1pbGlhbiA8bWF4
aW1pbGlhbi5icnVuZUA5ZWxlbWVudHMuY29tPg0KPiBTdWJqZWN0OiBSZTogRE1BIG5vdCBzdXBw
b3J0ZWQgYmVsb3cgNEdCDQo+IA0KPiBIaSBBcmQsDQo+IA0KPiBPbiBUdWUsIDIxIE5vdiAyMDIz
IGF0IDEwOjMxLCBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPiB3cm90ZToNCj4gPg0K
PiA+IGRtYS1yYW5nZXMgaXMgc3VwcG9zZWQgdG8gaGFuZGxlIHRoaXMsIGJ1dCBJJ20gbm90IHN1
cmUgaG93IHdlbGwgaXQNCj4gaW50ZXJvcGVyYXRlcyB3aXRoIFNNTVVzICh3aGljaCByZW1hcCBE
TUEgYWRkcmVzc2VzIGludG8gYSB2aXJ0dWFsIGFkZHJlc3MNCj4gc3BhY2UsIGFuZCB0aGlzIGNh
biBib3RoIHNvbHZlIGFuZCBjcmVhdGUgaXNzdWVzIHdoZW4gaXQgY29tZXMgdG8gRE1BIGFkZHJl
c3MNCj4gbGltaXRzKS4NCj4gPg0KPiA+IEFkZGluZyBhICduby1kbWEtYWJvdmUtNGcnIHByb3Bl
cnR5IGlzIGEgYmFkIGlkZWEuIE5vdCBvbmx5IGRvZXMgaXQNCj4gPiByZXN1bHQgaW4gcG90ZW50
aWFsIGluY29uc2lzdGVuY2llcyB3cnQgJ2RtYS1yYW5nZXMnLCBpdCBhbHNvIG9ubHkNCj4gPiBk
ZXNjcmliZXMgMzIgYml0cyBvZiBETUEgYWRkcmVzc2luZyBjYXBhYmlsaXR5LCBhbmQgb3RoZXIg
RE1BDQo+ID4gYWRkcmVzc2luZyBsaW1pdHMgZXhpc3QgdG9vICg0MCBiaXRzIGlzIGFsc28gY29t
bW9uKQ0KPiANCj4gT0ssIHRoYW5rIHlvdSBmb3IgdGhhdC4gV2Ugd2lsbCB1c2UgZG1hLXJhbmdl
cyBmb3IgdGhpcy4NCj4gDQo+IFJlZ2FyZHMsDQo+IFNpbW9uDQo+IA0KPiA+DQo+ID4NCj4gPg0K
PiA+DQo+ID4gT24gVHVlLCAyMSBOb3YgMjAyMyBhdCAxMjowMSwgTGVhbiBTaGVuZyBUYW4gPHNo
ZW5nLnRhbkA5ZWxlbWVudHMuY29tPg0KPiB3cm90ZToNCj4gPj4NCj4gPj4gQWRkZWQgQXJkIGZv
ciBzb21lIGlucHV0IG9uIHRoaXMuDQo+ID4+DQo+ID4+IEJlc3QgUmVnYXJkcywNCj4gPj4gTGVh
biBTaGVuZyBUYW4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gOWVsZW1lbnRzIEdtYkgsIEtvcnR1
bXN0cmHDn2UgMTktMjEsIDQ0Nzg3IEJvY2h1bSwgR2VybWFueQ0KPiA+PiBFbWFpbDogc2hlbmcu
dGFuQDllbGVtZW50cy5jb20NCj4gPj4gUGhvbmU6ICs0OSAyMzQgNjggOTQgMTg4DQo+ID4+IE1v
YmlsZTogKzQ5IDE3NiA3NiAxMTM4NDINCj4gPj4NCj4gPj4gUmVnaXN0ZXJlZCBvZmZpY2U6IEJv
Y2h1bQ0KPiA+PiBDb21tZXJjaWFsIHJlZ2lzdGVyOiBBbXRzZ2VyaWNodCBCb2NodW0sIEhSQiAx
NzUxOQ0KPiA+PiBNYW5hZ2VtZW50OiBTZWJhc3RpYW4gR2VybWFuLCBFcmF5IEJhemFhcg0KPiA+
Pg0KPiA+PiBEYXRhIHByb3RlY3Rpb24gaW5mb3JtYXRpb24gYWNjb3JkaW5nIHRvIEFydC4gMTMg
R0RQUg0KPiA+Pg0KPiA+Pg0KPiA+PiBPbiBUdWUsIDE0IE5vdiAyMDIzIGF0IDIzOjE3LCBTaW1v
biBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4gd3JvdGU6DQo+ID4+Pg0KPiA+Pj4gSGksDQo+ID4+
Pg0KPiA+Pj4gU29tZSBkZXZpY2VzIGRvIG5vdCBzdXBwb3J0IERNQSBhYm92ZSA0R0IuIElzIHRo
ZXJlIGEgd2F5IHRvIGV4cHJlc3MNCj4gPj4+IHRoaXMgaW4gdGhlIGRldmljZXRyZWU/DQo+ID4+
Pg0KPiA+Pj4gU2hvdWxkIHdlIGFkZCBzb21ldGltZXMgYSAnbm8tZG1hLWFib3ZlLTRnJyBwcm9w
ZXJ0eT8NCj4gPj4+DQo+ID4+PiBPciBzaG91bGQgd2UgYmUgdXNpbmcgZG1hLXJhbmdlcyBmb3Ig
dGhpcz8NCj4gPj4+DQo+ID4+PiBSZWdhcmRzLA0KPiA+Pj4gU2ltb24NCj4gPj4+DQo=

