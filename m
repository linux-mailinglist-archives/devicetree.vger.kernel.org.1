Return-Path: <devicetree+bounces-17679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 866C37F3684
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F6F11C20934
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D805677D;
	Tue, 21 Nov 2023 18:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="CTsYRcXO"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E29CB
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700592716; x=1732128716;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=tqKR8KnsjbCyMYxqYDvidqBpZz1PrhSo0kUV+IwxkfI=;
  b=CTsYRcXO4sQ2ClD22VvnmXitwXoY0iGLSUC0dI98BY2KreD3SSfiLVy1
   GnLGHV932949YfG1NgWeD7B2yqUbBj9to/1REp8rLGq85A+vTBASvfFk/
   fBdswLkP8qyx9aVr0Lhb9LhK5nIfOn+JVZcqO7OkrYit+WKj91YF3hN+d
   qnRRuBcQArDGTOXq7ROkhysutcO9ube03fzmeAK7xUXZUlp0LiXOXhduB
   NBvVJ/8yhfitvnUQMOSYBzfu8u6nIaewBRKK+ElwVF7ZWDEBGt1pc+EN2
   0Xg/18OVvkHUyCGgtt8A8qB0nYo4Ty27WVElq4vEAucXEsYL+HvnlPw92
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="382300712"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; 
   d="scan'208";a="382300712"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2023 10:51:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="910553118"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; 
   d="scan'208";a="910553118"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 21 Nov 2023 10:51:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 10:51:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 10:51:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 10:51:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jc4HLoQS6Ap1SMQlqBBC9YnsjZ+FNaHJoyeI74TL5N8vDBci4Ct004Wh0INISPopOnNHPUs5/qt72m3OwqNYaqVVtFHhDLcyM76Yk0sT44A+FFMXn/0Bg9xPsnPZuy7y3K5Q6ZzBORbGj8Jj2QchKOhFZPt865ilhdi/wNvJbgmRr0PujLafHe2CtpXUmO2AwRcfs8DpDj3S0KXEaTK3FFXLEutefyCwypZskO9XDk+Qatlsa4VKJAMprmW7Hh61S32JvybnTBWpDyAShDI74PE1lnN6pLGDBxZAt0GrqUWBRNoiWIxvoBqOYguzTNE2MRvB7wmiv6Ck83f+sz2vBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tqKR8KnsjbCyMYxqYDvidqBpZz1PrhSo0kUV+IwxkfI=;
 b=NTtVuOVkmkwHEj2NUisKphZI33zGckmFnmr+FqQUlOHuAh8v57bB38s1F495BNnvna8yQe9Mrp3gR+sVANNEG16udsFQ6VyIZjGWzp3Uksc7527NWRSLBlMZrxLbtlsx0fsk2FKlKNoBp4BYh6uM6yt185fX6VeGo9+LoEcfPShx5FSbxwYskqVe+qsm1lreYkIyQIoY0FvfAdOWOO5Nui47sKOBsHOeXqroOEtwvW8ggn+ubqvR/iiSG3PoTHmw25p+HWd5m8zg4GHYhPMGw7l6am9vAX7rC4nKBV612tuyuHjlXxR7HsVvRLCMGVFLTqqxCiSL2sjUZ299DuUtOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5483.namprd11.prod.outlook.com (2603:10b6:408:104::10)
 by BL1PR11MB5365.namprd11.prod.outlook.com (2603:10b6:208:308::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Tue, 21 Nov
 2023 18:51:52 +0000
Received: from BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::6da1:a4b7:4771:14e1]) by BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::6da1:a4b7:4771:14e1%4]) with mapi id 15.20.7002.028; Tue, 21 Nov 2023
 18:51:52 +0000
From: "Chiu, Chasel" <chasel.chiu@intel.com>
To: Ard Biesheuvel <ardb@kernel.org>
CC: Simon Glass <sjg@chromium.org>, "Tan, Lean Sheng"
	<sheng.tan@9elements.com>, Devicetree Discuss <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>, "Guo, Gua" <gua.guo@intel.com>, "Dong, Guo"
	<guo.dong@intel.com>, "Brune, Maximilian" <maximilian.brune@9elements.com>,
	"Chiu, Chasel" <chasel.chiu@intel.com>
Subject: RE: DMA not supported below 4GB
Thread-Topic: DMA not supported below 4GB
Thread-Index: AQHaHJxxDrMfGBBFxECNmgz4vuLDO7CFB9WAgAABx4CAAACTAIAAES8AgAABl7A=
Date: Tue, 21 Nov 2023 18:51:52 +0000
Message-ID: <BN9PR11MB5483268619805D183F79740EE6BBA@BN9PR11MB5483.namprd11.prod.outlook.com>
References: <CAPnjgZ3=HxH10KYkrE+1mYtPiYe4KJMD+zekTjpq6oq_qZ5kxA@mail.gmail.com>
 <CAMWxwJ1MbJ1US8g2-hXGbr-X4RncioHn9MTp9YK=8kXaQS4srA@mail.gmail.com>
 <CAMj1kXG2GxhM2nz04SEoj+FLyODs17pF7wBFqN0qXkOWhVHxcA@mail.gmail.com>
 <CAPnjgZ0YqiOuqCrfA9nZ_PD-Xep-T0YhR5Sxdwb=5Z0583UQJw@mail.gmail.com>
 <BN9PR11MB5483A1BF2EF6A54DB70CCB0FE6BBA@BN9PR11MB5483.namprd11.prod.outlook.com>
 <CAMj1kXG-rzPBaQSwjJmnWY-TB0P1=Lw4y77TC6cMJeHK9ceGfA@mail.gmail.com>
In-Reply-To: <CAMj1kXG-rzPBaQSwjJmnWY-TB0P1=Lw4y77TC6cMJeHK9ceGfA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5483:EE_|BL1PR11MB5365:EE_
x-ms-office365-filtering-correlation-id: 7df36c98-ec5b-420c-19b0-08dbeac2ecff
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQbp/sWltJvU5YE6+eEdMieT5j5n2r+MiMzrXqzlggfWoRjeqwugr1qz7Pa18Ivjp4K8GUrqx0RYhLnTRuINsmKnAP507DTqDGXVNNK5x5f5+6LI77uG3AdJB97pY9EoqnbNZzN85bX/S7MZWyI5b+LBzuBL4itWaWTHvw0pMu+T874q+H4h1iSbTGzQwwZeg+OMhRgA/LxWFYR/EVNOCswzezWJT5x9AdupTEMXMq47iKiDYqdBFOng6TmBHs5nWGr0WvNydPo6DjBwqaxF3wS9PcM61cDfm394r27XGeEMR29t6PQEQZAqV6GnbYfewVbqnLTNpd2JWKcquIRFm4wwHr0TAxy9fjOSa/jrJiQF5AFWFntFgnbjM7kMizVhqMZ1PRbU+clPzi1svE3uOg9G2SJy4yb2cbOjq5p/0aiSQthx4iiZfzCIG2OTFgDzf6dbAo3XkFff3XS/c7S5VB51XFpCblO6xWcIA9ATPNeOky/RT3/ffqJTO6cLF/mXky6zVyjzxDIBy7UPNdpao3oskGSr9OU/s7YaHEwPuLqq8k66AWzcfDR1iS8/4ugd55w8UftQuzDa62bB1v9XEbdE0y8YAS8gZjSR8wpO0DB79MCEAlenf1wDxGRPDXnz
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5483.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(396003)(136003)(366004)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(7696005)(53546011)(6506007)(107886003)(26005)(71200400001)(55016003)(9686003)(316002)(478600001)(122000001)(66574015)(82960400001)(83380400001)(6916009)(66556008)(66946007)(66446008)(54906003)(66476007)(64756008)(76116006)(52536014)(8936002)(4326008)(8676002)(86362001)(38100700002)(5660300002)(2906002)(33656002)(41300700001)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YW84a2UvSGE1QWs4MEo3MzJFMTA5TkhhWTBucWUyYVN1OWd6N3c5eXpPOUlq?=
 =?utf-8?B?QUU0MVZya0I3Kzl5T3o0azFwUFZvS0ZRY04vTnloQmQvQllpTWYrditSWU1n?=
 =?utf-8?B?cmdPSzlYY3IvOWM4Uk05ZWpzZmtpSkFQbDROZk9zdHJMeDhQbXVvcmdrcCtP?=
 =?utf-8?B?VzR0M25nbytpdEJHYjBGbjlydGlFSHp1RFFOSmVtMXdRQWtralZuWm5yQjRC?=
 =?utf-8?B?YlZHTG9CL3VIQTloeFBRYXRtMktRaFplVlZKU1RDSGdRNXpyNUVoQ0JwdFhY?=
 =?utf-8?B?R3FIZWkxT2p5Y0hNbzZTMVNPWDBUREtGMFo1OWVWck9CMDEvZ1VhR2lIY2sv?=
 =?utf-8?B?d0ZFTk1XSE9hSzcvclVCMnRyZGVra0IrZ1NyMTN3VitCeEZqd2xRbEFMdjlL?=
 =?utf-8?B?Q1ZNVTQ2VzRSUDdSMVRaU09rb3VhZThRL1dWS09ERDFsMnptNzE3dFdnZWVi?=
 =?utf-8?B?Qkt5Sjg1K1FqbFY2OXNmRzBVM3FHOEhVOWc5QlhSRVErU1BUZVFCZDdZZlNU?=
 =?utf-8?B?VUUwSHlmNy9DeEI1ZG82eDdlUzVHMmR5aFhoVmtETEczZjlRdmpMRkVoQjlP?=
 =?utf-8?B?dCtrSzdkb1Q1YlZWaW9aR3c5QWU4Rk9JeldSYXM3b25KQWtWU0NSSnY4RDgv?=
 =?utf-8?B?QnhXOHVLTmp6NmFKU3pnM093VjBYVmt2VTY0cEJ1WkNXUkUzVEpiMDVyZXVq?=
 =?utf-8?B?a3R5V1M0b0xuTW8rczdxeDJKWWh3M0U3L2pzb2xnM0pLSkhNNG1YSDdiaUFx?=
 =?utf-8?B?ZVdxcURNOXkrTU5LazZoZkl3SE81UkkvK2w0U1Q1TCtMalhPdlBwMll2S29I?=
 =?utf-8?B?c1NoUStDVjc5Rkx5UG5lZk5xbURzRnNpR29ZS1gyUWhQNGlmcFNiVk5wUmw4?=
 =?utf-8?B?UFdtbm5UTkZBZytsYUtjQzllZnEwdmpMNFhBR3JOTzI4dzZpR00wUGlROEkx?=
 =?utf-8?B?Wkd5Q3gyd3lWaG9sSUFGRlhOSlJmSGZ5QytITEt1MUVGejMvN0pkZ0JsOTF3?=
 =?utf-8?B?N2tMRGJTRCtQcHdDK1ZnV05NTHdaZlB1RDlNWnZ5ajBLVWM0Nkx3MjRtbHkv?=
 =?utf-8?B?ZWRCc2VScE1JUEFQNWk1czd6em5JV3lOeDI4QVVpcnl1cXlHbVlBblhWK0U1?=
 =?utf-8?B?d2RmL0JRWjZ6NnY0UHIrN1RWSThJT29BVVdVUDVMS3I4T05mdmxncjV5YUF2?=
 =?utf-8?B?aEh1K1YrUFRuZjlNM3ZSSmt4R0w4Ykx1WVY3cHRKVWlkRjlwVTRuSHhpdStB?=
 =?utf-8?B?dWhWOXUxbnY1WjF0cXFDNU9RTkVqOWp1elVZa1BOdDBxdXNoNnRCSHJ2NExN?=
 =?utf-8?B?cGx1U240bDBaZjJKT3dFRmQ2NFpzeFEwbzM5RTV6MlZTZVZUY0pIdFY3alRB?=
 =?utf-8?B?c3JpOXFvRzNRaTZteGtNMVp2NnVYZG1KSk0wWHVEdzBmamhlYWg1SkhyZkkr?=
 =?utf-8?B?RDZpeWdOL2pNTTlJU01GcDE4VXptR1FsS28rT2ttVmY2aTEvaEJFR3hjL2Ev?=
 =?utf-8?B?a0tGbTdlbnczOHZGMXpWa0dSWTZPbTh0Y2daM2MwUXhRdUQwd1h5bTltK2xn?=
 =?utf-8?B?SHRuZmw0U1FWcWVKWTBDTnc0b3pqc0UvWS8rem9GNzZvaTBNR0VNNUt1RDNX?=
 =?utf-8?B?UUxqODMxcnpSWSs4Y05aWGU5ckFaSlZFRHdKOFRPY3ZrUENRc0N4WVNUdVda?=
 =?utf-8?B?SFFXTFVNbmtjM3UxbmRDVVIyZ0UrdmZ6OHN6Wm1nc0Z2Uk9Lc0dDQ2JhVWR3?=
 =?utf-8?B?eFAwSFhzTGlUblNDb2VFNmoxeVd2OVhjTnNCZFJwK1RaZTVkU29sWGZjOEtv?=
 =?utf-8?B?UjVYVzUvZkNNYkNNYm4waTVGbGhUaGtKSGNpWkxPZFprbGJnVXI3M3dKdkV0?=
 =?utf-8?B?TGE4ZXc3dFlQVU8yb1RJdEJJQzRqV3RUYTh4M3pYMWdDbzg4bnBtRERuZjNn?=
 =?utf-8?B?cWsrYlFQWWZySkhsZ0M1aVEzOGc3eE5VTUZ1ekxuenNML2RQZVFFempwQ3BQ?=
 =?utf-8?B?TER5QXdpWjF5QXVJY01ESmpnSjNnNnN5dGI1WVBTRkg1QlBFMkdKakdSNmY2?=
 =?utf-8?B?YWljU1hNdHphU0k3WWdndXBVYTFkaTUyMjZTaURqSzBHUExPT1hwYUFyRXkx?=
 =?utf-8?Q?fTSqb6ldQjhEZ0B69lvaka8+W?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 7df36c98-ec5b-420c-19b0-08dbeac2ecff
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2023 18:51:52.3243
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0V85yQsl0oWVEtZr0LPnUycV4MxaJCnO5D4OZrFuW99jrd98hvF+hXuu44t4C9ZP9KnxcTMyI9uBGP9q8fXziw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5365
X-OriginatorOrg: intel.com

DQpUaGFua3MgZm9yIGRldGFpbCBzaGFyaW5nIEFyZCENCkkgdGhpbmsgZG1hLXJhbmdlcyBpcyBn
b29kIGVub3VnaCBmb3IgcGF5bG9hZCBmb3Igbm93Lg0KDQpUaGFua3MsDQpDaGFzZWwNCg0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFyZCBCaWVzaGV1dmVsIDxhcmRi
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDIxLCAyMDIzIDEwOjQxIEFN
DQo+IFRvOiBDaGl1LCBDaGFzZWwgPGNoYXNlbC5jaGl1QGludGVsLmNvbT4NCj4gQ2M6IFNpbW9u
IEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPjsgVGFuLCBMZWFuIFNoZW5nDQo+IDxzaGVuZy50YW5A
OWVsZW1lbnRzLmNvbT47IERldmljZXRyZWUgRGlzY3VzcyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmc+Ow0KPiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPjsgR3VvLCBHdWEgPGd1YS5n
dW9AaW50ZWwuY29tPjsgRG9uZywgR3VvDQo+IDxndW8uZG9uZ0BpbnRlbC5jb20+OyBCcnVuZSwg
TWF4aW1pbGlhbiA8bWF4aW1pbGlhbi5icnVuZUA5ZWxlbWVudHMuY29tPg0KPiBTdWJqZWN0OiBS
ZTogRE1BIG5vdCBzdXBwb3J0ZWQgYmVsb3cgNEdCDQo+IA0KPiBPbiBUdWUsIDIxIE5vdiAyMDIz
IGF0IDEyOjQ3LCBDaGl1LCBDaGFzZWwgPGNoYXNlbC5jaGl1QGludGVsLmNvbT4gd3JvdGU6DQo+
ID4NCj4gPg0KPiA+IEhpIEFyZCwNCj4gPg0KPiA+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBob3cg
ZG1hLXJhbmdlcyB3aWxsIGJlIHV0aWxpemVkLCBjb3VsZCB5b3UgZWR1Y2F0ZSBtZQ0KPiBtb3Jl
Pw0KPiA+IEZvciBleGFtcGxlLCBQbGF0Zm9ybUluaXQgbWF5IGFzc2lnbiBkbWEtcmFuZ2VzID0g
PDAgMHgxMDAwMDAwMDA+IC8vIDAgfg0KPiA0R0IsIGJ1dCB3ZSBzdGlsbCB3YW50IHRvIHByZXZl
bnQgRE1BIGFjY2VzcyBmcm9tIHNvbWUgc2Vuc2l0aXZlIHJlZ2lvbnMgd2l0aGluDQo+IHRoaXMg
aHVnZSByYW5nZS4NCj4gDQo+IGRtYS1yYW5nZXMgaXMgdHlwaWNhbGx5IHVzZWQgdG8gZGVzY3Jp
YmUgaG93IERNQSBhZGRyZXNzZXMgbWFwIHRvIENQVSBwaHlzaWNhbA0KPiBhZGRyZXNzZXMsIChp
LmUuLCBob3cgdGhlIGludGVyY29ubmVjdCBpcyB3aXJlZCB1cCkgYW5kIGNvbnNpc3RzIG9mIGEg
c2VyaWVzIG9mIDxjcHUNCj4gYWRkciwgZG1hIGFkZHIsIHNpemU+IHRyaXBsZXRzIGRlc2NyaWJp
bmcgd2hpY2ggcmVnaW9ucyBhcmUgdmFsaWQgYW5kIGhvdyB0aGV5IGFyZQ0KPiB0cmFuc2xhdGVk
Lg0KPiANCj4gSSBzdXBwb3NlIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIG9taXQgc29tZSBvdGhl
cndpc2UgYWNjZXNzaWJsZSBSQU0gcmVnaW9ucw0KPiBmcm9tIHRoaXMgZGVzY3JpcHRpb24sIGJ1
dCBpdCB3aWxsIG9ubHkgcHJldmVudCB0aGUgRE1BIHNvZnR3YXJlIGxheWVyIGZyb20gdXNpbmcN
Cj4gdGhlIHJlZ2lvbiwgd2hpY2ggaXQgc2hvdWxkbid0IGJlIGRvaW5nIGFueXdheSBpZiBpdCBp
cyBub3QgYXZhaWxhYmxlIGZvciBhbGxvY2F0aW9uLg0KPiBJT1csIHRoZSBkZXZpY2Ugd2lsbCBz
dGlsbCBiZSBjYXBhYmxlIG9mIERNQSdpbmcgaW50byB0aGUgbWVtb3J5IGlmIHRoZSBoYXJkd2Fy
ZQ0KPiBwZXJtaXRzIGl0Lg0KPiANCj4gPiBEb2VzIHRoYXQgbWVhbiB3ZSByZWx5IG9uIHJlc2Vy
dmVkLW1lbW9yeSBub2RlIHRvIHByZXZlbnQgRE1BIGZyb20gc29tZQ0KPiByZWdpb25zPw0KPiAN
Cj4gL3Jlc2VydmVkLW1lbW9yeSBwcmV2ZW50cyBSQU0gZnJvbSBiZWluZyB1c2VkIHRvIGFsbG9j
YXRlIERNQSBidWZmZXJzLCBidXQgaXQNCj4gZG9lcyBub3QgcHJldmVudCBhIGRldmljZSBkcml2
ZXIgZnJvbSBjcmVhdGluZyBETUEgdHJhbnNhY3Rpb25zIHRoYXQgYWNjZXNzIHRoaXMNCj4gbWVt
b3J5Lg0KPiANCj4gPiBPciBhcmUgdGhlcmUgYW55IG90aGVyIG5vZGVzIHRoYXQgUGxhdGZvcm1J
bml0L1BheWxvYWQgaGFzIHRvIHByb3ZpZGU/DQo+ID4NCj4gDQo+IElmIHlvdSB3YW50IHRvIHBy
ZXZlbnQgRE1BIGFjY2VzcyB0byBzZW5zaXRpdmUgUkFNIHJlZ2lvbnMsIHlvdSBuZWVkIGFuDQo+
IElPTU1VLCBpbiB3aGljaCBjYXNlIHlvdSBuZWVkIHRvIHNldCBkbWEtcmFuZ2VzIGFwcHJvcHJp
YXRlbHkgZm9yIHRoZSBEVCBub2RlDQo+IHRoYXQgZGVzY3JpYmVzIHRoZSBJT01NVSwgYW5kIGV2
ZXJ5dGhpbmcgZWxzZSBpcyBtYW5hZ2VkIGJ5IHRoZSBJT01NVSBkcml2ZXIuDQo+IA0KPiBJZiB5
b3UgZG9uJ3QgaGF2ZSBhIElPTU1VLCBwbGF5aW5nIHdpdGggJ2RtYS1yYW5nZXMnIGlzIG9ubHkg
Z29pbmcgdG8gZ2l2ZSB5b3UgYQ0KPiBmYWxzZSBzZW5zZSBvZiBzZWN1cml0eSAoSU1ITyksIGdp
dmVuIHRoYXQgaXQgZG9lcyBub3QgcHJldmVudCB0aGUgaGFyZHdhcmUgZnJvbQ0KPiBhY2Nlc3Np
bmcgdGhlIG1lbW9yeS4gKGUuZy4sIGFueSBETUEgY2FwYWJsZSBkZXZpY2UgdXNpbmcgZGVzY3Jp
cHRvcnMgaW4gUkFNDQo+IGNvdWxkIGJlIHRyaWNrZWQgaW50byBhY2Nlc3NpbmcgdGhlIG1lbW9y
eSB3aGVuIHN1Y2ggYSBkZXNjcmlwdG9yIGdldHMNCj4gY29ycnVwdGVkKQ0KPiANCj4gDQo+IA0K
PiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFNpbW9uIEdsYXNz
IDxzamdAY2hyb21pdW0ub3JnPg0KPiA+ID4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgMjEsIDIw
MjMgOTozOCBBTQ0KPiA+ID4gVG86IEFyZCBCaWVzaGV1dmVsIDxhcmRiQGtlcm5lbC5vcmc+DQo+
ID4gPiBDYzogVGFuLCBMZWFuIFNoZW5nIDxzaGVuZy50YW5AOWVsZW1lbnRzLmNvbT47IERldmlj
ZXRyZWUgRGlzY3Vzcw0KPiA+ID4gPGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPjsgUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz47IEd1bywNCj4gPiA+IEd1YSA8Z3VhLmd1b0BpbnRlbC5j
b20+OyBDaGl1LCBDaGFzZWwgPGNoYXNlbC5jaGl1QGludGVsLmNvbT47IERvbmcsDQo+ID4gPiBH
dW8gPGd1by5kb25nQGludGVsLmNvbT47IEJydW5lLCBNYXhpbWlsaWFuDQo+ID4gPiA8bWF4aW1p
bGlhbi5icnVuZUA5ZWxlbWVudHMuY29tPg0KPiA+ID4gU3ViamVjdDogUmU6IERNQSBub3Qgc3Vw
cG9ydGVkIGJlbG93IDRHQg0KPiA+ID4NCj4gPiA+IEhpIEFyZCwNCj4gPiA+DQo+ID4gPiBPbiBU
dWUsIDIxIE5vdiAyMDIzIGF0IDEwOjMxLCBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3Jn
PiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gZG1hLXJhbmdlcyBpcyBzdXBwb3NlZCB0byBoYW5k
bGUgdGhpcywgYnV0IEknbSBub3Qgc3VyZSBob3cgd2VsbA0KPiA+ID4gPiBpdA0KPiA+ID4gaW50
ZXJvcGVyYXRlcyB3aXRoIFNNTVVzICh3aGljaCByZW1hcCBETUEgYWRkcmVzc2VzIGludG8gYSB2
aXJ0dWFsDQo+ID4gPiBhZGRyZXNzIHNwYWNlLCBhbmQgdGhpcyBjYW4gYm90aCBzb2x2ZSBhbmQg
Y3JlYXRlIGlzc3VlcyB3aGVuIGl0DQo+ID4gPiBjb21lcyB0byBETUEgYWRkcmVzcyBsaW1pdHMp
Lg0KPiA+ID4gPg0KPiA+ID4gPiBBZGRpbmcgYSAnbm8tZG1hLWFib3ZlLTRnJyBwcm9wZXJ0eSBp
cyBhIGJhZCBpZGVhLiBOb3Qgb25seSBkb2VzDQo+ID4gPiA+IGl0IHJlc3VsdCBpbiBwb3RlbnRp
YWwgaW5jb25zaXN0ZW5jaWVzIHdydCAnZG1hLXJhbmdlcycsIGl0IGFsc28NCj4gPiA+ID4gb25s
eSBkZXNjcmliZXMgMzIgYml0cyBvZiBETUEgYWRkcmVzc2luZyBjYXBhYmlsaXR5LCBhbmQgb3Ro
ZXIgRE1BDQo+ID4gPiA+IGFkZHJlc3NpbmcgbGltaXRzIGV4aXN0IHRvbyAoNDAgYml0cyBpcyBh
bHNvIGNvbW1vbikNCj4gPiA+DQo+ID4gPiBPSywgdGhhbmsgeW91IGZvciB0aGF0LiBXZSB3aWxs
IHVzZSBkbWEtcmFuZ2VzIGZvciB0aGlzLg0KPiA+ID4NCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBT
aW1vbg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4g
T24gVHVlLCAyMSBOb3YgMjAyMyBhdCAxMjowMSwgTGVhbiBTaGVuZyBUYW4NCj4gPiA+ID4gPHNo
ZW5nLnRhbkA5ZWxlbWVudHMuY29tPg0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+Pg0KPiA+ID4gPj4g
QWRkZWQgQXJkIGZvciBzb21lIGlucHV0IG9uIHRoaXMuDQo+ID4gPiA+Pg0KPiA+ID4gPj4gQmVz
dCBSZWdhcmRzLA0KPiA+ID4gPj4gTGVhbiBTaGVuZyBUYW4NCj4gPiA+ID4+DQo+ID4gPiA+Pg0K
PiA+ID4gPj4NCj4gPiA+ID4+IDllbGVtZW50cyBHbWJILCBLb3J0dW1zdHJhw59lIDE5LTIxLCA0
NDc4NyBCb2NodW0sIEdlcm1hbnkNCj4gPiA+ID4+IEVtYWlsOiBzaGVuZy50YW5AOWVsZW1lbnRz
LmNvbQ0KPiA+ID4gPj4gUGhvbmU6ICs0OSAyMzQgNjggOTQgMTg4DQo+ID4gPiA+PiBNb2JpbGU6
ICs0OSAxNzYgNzYgMTEzODQyDQo+ID4gPiA+Pg0KPiA+ID4gPj4gUmVnaXN0ZXJlZCBvZmZpY2U6
IEJvY2h1bQ0KPiA+ID4gPj4gQ29tbWVyY2lhbCByZWdpc3RlcjogQW10c2dlcmljaHQgQm9jaHVt
LCBIUkIgMTc1MTkNCj4gPiA+ID4+IE1hbmFnZW1lbnQ6IFNlYmFzdGlhbiBHZXJtYW4sIEVyYXkg
QmF6YWFyDQo+ID4gPiA+Pg0KPiA+ID4gPj4gRGF0YSBwcm90ZWN0aW9uIGluZm9ybWF0aW9uIGFj
Y29yZGluZyB0byBBcnQuIDEzIEdEUFINCj4gPiA+ID4+DQo+ID4gPiA+Pg0KPiA+ID4gPj4gT24g
VHVlLCAxNCBOb3YgMjAyMyBhdCAyMzoxNywgU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+
IHdyb3RlOg0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gSGksDQo+ID4gPiA+Pj4NCj4gPiA+ID4+PiBT
b21lIGRldmljZXMgZG8gbm90IHN1cHBvcnQgRE1BIGFib3ZlIDRHQi4gSXMgdGhlcmUgYSB3YXkg
dG8NCj4gPiA+ID4+PiBleHByZXNzIHRoaXMgaW4gdGhlIGRldmljZXRyZWU/DQo+ID4gPiA+Pj4N
Cj4gPiA+ID4+PiBTaG91bGQgd2UgYWRkIHNvbWV0aW1lcyBhICduby1kbWEtYWJvdmUtNGcnIHBy
b3BlcnR5Pw0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gT3Igc2hvdWxkIHdlIGJlIHVzaW5nIGRtYS1y
YW5nZXMgZm9yIHRoaXM/DQo+ID4gPiA+Pj4NCj4gPiA+ID4+PiBSZWdhcmRzLA0KPiA+ID4gPj4+
IFNpbW9uDQo+ID4gPiA+Pj4NCg==

