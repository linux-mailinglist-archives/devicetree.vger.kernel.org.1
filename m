Return-Path: <devicetree+bounces-78847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6899138B9
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B5C9283844
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 07:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9484412E1D1;
	Sun, 23 Jun 2024 07:17:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2111.outbound.protection.partner.outlook.cn [139.219.146.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E9912C526;
	Sun, 23 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.111
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719127045; cv=fail; b=F19/N5WWoM3JF/wnSAIG7c1GdqSaAZW6E1NiKgkvPVaC7OKKA797kekqCc7152Vy1T1rQTJV9fT7zS9eLNZv7zMaS7NrkDtozV0TTgFvdxz31qwtR6/nTGg5NSq2gyJNf12TvZGY168lFsk3Dl4niZ6kXBbyigXeLwhm2L5RfiA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719127045; c=relaxed/simple;
	bh=8ErU3akpy7kPygEuBAi1AO7Y4qabeFoEqCTl5rhEq+Y=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=CQIt0BOGCYf4yS2DzdGBP7WQtpXg643E27AmuACT9xVkw9zZIXu+feXWqc+BPdQGhzHjjJB10Fv3hlOJ1v/EU/qYHbG7d/4oCerhWxy0XbOVaFr2Y9R7iYkLSKaiNqFc8adVJz1ACxbDL28yebf7vItMgloWURKZBbhIqodiCcw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.111
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVymgIy93OVrWaJxR2OlsHi/LhpNkPeG0CG/n0DRCgTc3laBLz9r8SJN6i4y3f8l9mhGqZEHBeUu7MH0mHyuGcvqF4P+C+sZb1f/iraB2HW6LzfcdYQD854eA7wwFGQpRqzW/JwZCRrETPIqneD8J4zGdjQwig5tgIQzzummA4/Wiwv8LNfvteMcfGm53f0rdnkamHKy8dMd67GfQmLkcFRMYw5vFKKSuNWsgHqQnEfCeciQ9j0JVAJ8IJ+D23WlC7ctLm9fYxBi4L0+Sley7lB+rBM1UPYjiOQu450tpxz5Zke71J6YKlfs6R6Ypj4iaIxat/ruWfHklLd3mwY/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ErU3akpy7kPygEuBAi1AO7Y4qabeFoEqCTl5rhEq+Y=;
 b=L3DA1OY+ORZlwwjtpyvfbnageQREu9wZyG4j8UtBxGj70zEg/vQfbMkeR5L1zTxh3sQBSQQk8JAo1QuPvtrlJDnNlepuiBEN9YVFu+2CJ953Ak4nuwdW8NHHMWT+Ae8Br2zJpHA6GmSmCk8oTFBsW81fHyFpPFyjuykLDnrSpKFDvCwNjU2yluq/rLA4CNODQrpR8FeTFiql2HkHnmhJ7ZGchuWTZwZutiY25MdJwRdcMMBnWDbEnIlvfsVYFLV8CQ/6FoDNxZ23n6hbguEMRt4U9/tMyx1G7Pn9SGS6nnULT1iCFczt5E9B30lv+nGag+Wj9iD7WVnKBVcM3XGsQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) by NTZPR01MB1097.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:a::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7656.33; Sun, 23 Jun
 2024 07:17:15 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::6f7e:8193:c2f7:74be]) by
 NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn ([fe80::6f7e:8193:c2f7:74be%7])
 with mapi id 15.20.7677.036; Sun, 23 Jun 2024 07:17:15 +0000
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Maxime Ripard <mripard@kernel.org>
CC: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org"
	<rfoss@kernel.org>, "Laurent.pinchart@ideasonboard.com"
	<Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com"
	<airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "hjc@rock-chips.com"
	<hjc@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>,
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, Xingyu Wu
	<xingyu.wu@starfivetech.com>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang
 Chen <shengyang.chen@starfivetech.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v4 03/10] drm/rockchip:hdmi: migrate to use inno-hdmi
 bridge driver
Thread-Topic: [PATCH v4 03/10] drm/rockchip:hdmi: migrate to use inno-hdmi
 bridge driver
Thread-Index: AQHaqyrBD8Ow+H9quE+poUAIOyCterGi2/AAgDI8hoA=
Date: Sun, 23 Jun 2024 07:17:14 +0000
Message-ID:
 <NTZPR01MB1050EA346F8F3284BFC5AD5BEECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-4-keith.zhao@starfivetech.com>
 <20240522-opalescent-orchid-worm-2996ad@houat>
In-Reply-To: <20240522-opalescent-orchid-worm-2996ad@houat>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB1050:EE_|NTZPR01MB1097:EE_
x-ms-office365-filtering-correlation-id: 93173afe-bbd7-4be4-e2a5-08dc93548221
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230037|41320700010|366013|7416011|1800799021|38070700015;
x-microsoft-antispam-message-info:
 RFtluXP8zrlXAwHpy7bTXw8VLgKI42Rx3GzQVN/NLq94SAH/p7XugukENnQ+NLY+jCMOZVwguJp0fA8Bd84OY2FCovnkb1FLqcbiL7J1jPMP5dapk/sbJZIDJ1m0CA9aYh5UMgLhpHiDF7PWI8BtzQbnUETa6Yd7Flxf2L8yOro85QG8UhlKziy9REKFPbfYCj5FHIpsaPN5z6l+RnLHXh1AHW9ydgZJ/nJ/VoY6A1e556NVNEExvOdDYnnB3DTJNsF3cREGo7QVjPBjqsrmBm//9jdEkWsAQHkKlGYMGEgjisY/N/m5nsgmL17gGBJeGhZQnwaTcemPVZMeOii+Mbz+IHfsjNIPhIsPHp7eQm6awJ70cL8EifnbPm6UeEWQRGPUW6sJyDJBy3Li4DFi5boT5ljd0hzUtYrPSsuq0XCc8I+TMaDJEyf136Kc8swxXR7wpOtsR1fqrGJbg0RBsW8AKEFm/uzM8JYqeiArAUn0xzro1NJLl/d68dRQnSQt/NCsVuQccacO3W89Fl+yg8X5F0RP9MvNWKRh+f9XDWW0iqwqujSyPsdhns5u4pLW9kFvDWn7yQhy8tcBHRUMNpmeJNOpMDiS2Jfwk9KA5L3CyjiEI5SUJ7zIWxNKJx35
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230037)(41320700010)(366013)(7416011)(1800799021)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?ejN0L3o2Q09qamE0VWlSekdLLzduSitIWUpyRGZKeG1TVHdrMjBvMC9yajVT?=
 =?gb2312?B?MWFiQnZWZmx2dllrOTZwUjh1U0g1Z0FyaE15Vi9yRC81cWVvTy9Rb0ppQXd5?=
 =?gb2312?B?MC94bGpuNmdrSGV5cnVmOW13cG5FS2RTcWJKMWlwVFNwVjlMc2JDRHpZTTVW?=
 =?gb2312?B?ZGgvMy9ESHM2UXV1V3pERkhVaTVsYm16ZUk0MDBrVjN2b05MeDZQaHVlY3NF?=
 =?gb2312?B?NmRSa1g4bWRWRytQNWU4N1FJUEF1TUVFNEZMNjhVbXdVMW9GaFdmZllTWkJU?=
 =?gb2312?B?aFNGRytRYlVFREQrZ044YXlJdHNlSElhVVNScEFkWmZ6NkgwZ3RsKzU4anlB?=
 =?gb2312?B?ajlQZk9HU1dHT3FLN3dqQ1huVGN0a24vYXpUTEVUdWRGeFB4Q2Q0ejhzYjQ4?=
 =?gb2312?B?ZkJOUGJjZTlVKys3U1p4Z1JXT3lXeFdkMHNQZFdVemorTDI3NDBVMElvZTNK?=
 =?gb2312?B?dDYyWkY0NVNTQUpZdlF6TnlkdUdZM3FhRk1nVy8rOWNqaitSYU5YeHpkN2t3?=
 =?gb2312?B?RlpoQ0lSZFd0ZDY4bmN4d0pqeHNvdzF0THhaV0tyWmpvS3lYYlAreU51KzBY?=
 =?gb2312?B?Q3ZFVEhBZTZmMXl2czF2ZVlIQWF5Slp6QWlBa292bm9YSFZZanNHR1VNVDM0?=
 =?gb2312?B?MjRWb2VSYWRTa2VJYStXVkp3TTJJVFRxVitrM1RLdUFuaEdGT3lrQUxsaUJp?=
 =?gb2312?B?aXYvMDhFOVhXQjM4aHB5L0RycWFtUFdHYWZ1aWdLZXVsVUNwaWNtN3h4UkJT?=
 =?gb2312?B?OGhFaVMrTFpCMEJVcEc2TmFxVURYNzBnZEdNcmg0bzl0ek52U3hHSkQyU2pL?=
 =?gb2312?B?TVFOVjhwVm9OaXd3M1ZwN29XUkNWYnY4YlR3RTJmNUNST2ZpMWFtYVdUVVg5?=
 =?gb2312?B?dDBrYzV4Y3d2dEVmTElnOEhtRjd6MjJZakhDekZ4MzVwLzFsYTcrSzZOa1lj?=
 =?gb2312?B?Y1ZDblFmMFVLQ2J5YkZiVnFXdmgyZGFydDQzTjQ4RHVHdnVjc3M1WGZsOTRT?=
 =?gb2312?B?bHdjNTR2V2pmWmNWSnp3N0dkVmpSaFZCanBlZFU5TmlRb0R3Z3lFcUdzMHV0?=
 =?gb2312?B?alNsdE1Tdm00aWVDY0t5UlVUSXg1aE50a3hreVB1UzJCY2IyQks3K24raThp?=
 =?gb2312?B?S1lrL2JnbHFOeVdEK1RWUzJoa3B6N0s1RUU1RmxsS0NvdDBXM2t4MWlrUEFE?=
 =?gb2312?B?NS9EckkrUEtuTkdWZFdlM1BQUmNGOE1sN1huNUhHblIwdHZ6QXNTNnVNTEUr?=
 =?gb2312?B?TU9NVGw3a0ZGSlhrd2xxdExMcUJ6NFVYS09mVGtBS21NMjFsUk9jUmx5TmdH?=
 =?gb2312?B?N1U3NGFBcFpYdGRCanlWVjhtRGRYWm5VTjdDQ1FXQXRaT3RCN29NS3hnVjNq?=
 =?gb2312?B?NXYrd3c1d1lBTGpJS0NTVlk1bEFYUG44QzBTNmlqMWErazBTSzZxMHltK29M?=
 =?gb2312?B?MGcwcnU3d0dURVpHQ3RpWjdRVkJhRTFxTzFRZW9ZUHhTQy9tSkd0NDY2akxi?=
 =?gb2312?B?ek9HVVMxUkw2RzJHVGhUQU1oUThpVGZiaXdpNkVEdG15N2JOaTV6ek5vbyt2?=
 =?gb2312?B?U0xJb3BRL0dzeU5xNnB3c3hhdlZETWJ0WmgzOHhQVlF3OGNkczZpMHhObklC?=
 =?gb2312?B?Y0E2SDB1Z0VnVUZLOUFLdWw3dCt0SjdnaTVtLy9jUERzQjNGd2tTMGwxWXZq?=
 =?gb2312?B?TE9QNkRMSzVpR3lIMmVhU0UyL01KM2VNM0Q4ZitBc3N3Mzl2R3hzcWRmZlpO?=
 =?gb2312?B?WUhUUTN1d0FYR0swRlJxYm5yTlYxV2dmTWlNQ1RQRUtnUklpd1hURWJEMWZK?=
 =?gb2312?B?aWhhU3MvN2xGSW5CSGxncDZ5d255cTJUZmhpV2RjWWRvK0ZTMHNZOXk5aGNj?=
 =?gb2312?B?eGpzaDVDL1MxVk5tRG5MSnZKb1RHMjBxSklrL3lFYnFJWnBWNlE3RHlBQXVE?=
 =?gb2312?B?K202MGxxcG9SL0E2ZzdycHZ4U0dWUkxla1BnMWgvNmNNMnExQXorQUxyNlpX?=
 =?gb2312?B?dlNiYk0zb2ZFMlFPV1dpbUlZdjM3VzAxOXl4TXF0STNoa0FzSVh2M3RPNnlO?=
 =?gb2312?B?NzNSdlZyc2FUY3RLRTRUT29Fc2dTT01NdU9YWVNqUkREclBxN0lOYWpQamtj?=
 =?gb2312?B?OE9lc2RERkdKNTE4cDJTMCtQcUxucVlMbWxtZE1wRDFTdC9Ld2I4YUExeEFn?=
 =?gb2312?B?dEE9PQ==?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 93173afe-bbd7-4be4-e2a5-08dc93548221
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2024 07:17:14.9003
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TtrjQQhgGWq/Cv1qwttzpaIApbMbmquIS7lab31TUMXZ7uc/DpdByHFruIz6inXhbpBShcoZTYHQv66VWUUQ6Y9af6i8NlbLIsVux4s9IsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1097

SGkgTWF4aW1lo7oNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1h
eGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gU2VudDogMjAyNMTqNdTCMjLI1SAx
NToyNQ0KPiBUbzogS2VpdGggWmhhbyA8a2VpdGguemhhb0BzdGFyZml2ZXRlY2guY29tPg0KPiBD
YzogYW5kcnplai5oYWpkYUBpbnRlbC5jb207IG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc7IHJm
b3NzQGtlcm5lbC5vcmc7DQo+IExhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbTsgam9u
YXNAa3dpYm9vLnNlOw0KPiBqZXJuZWouc2tyYWJlY0BnbWFpbC5jb207IG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbTsNCj4gdHppbW1lcm1hbm5Ac3VzZS5kZTsgYWlybGllZEBnbWFp
bC5jb207IGRhbmllbEBmZndsbC5jaDsgcm9iaEBrZXJuZWwub3JnOw0KPiBrcnprK2R0QGtlcm5l
bC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGhqY0Byb2NrLWNoaXBzLmNvbTsNCj4gaGVpa29A
c250ZWNoLmRlOyBhbmR5LnlhbkByb2NrLWNoaXBzLmNvbTsgWGluZ3l1IFd1DQo+IDx4aW5neXUu
d3VAc3RhcmZpdmV0ZWNoLmNvbT47IHAuemFiZWxAcGVuZ3V0cm9uaXguZGU7IEphY2sgWmh1DQo+
IDxqYWNrLnpodUBzdGFyZml2ZXRlY2guY29tPjsgU2hlbmd5YW5nIENoZW4NCj4gPHNoZW5neWFu
Zy5jaGVuQHN0YXJmaXZldGVjaC5jb20+OyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZzsNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjQgMDMvMTBdIGRybS9yb2NrY2hpcDpoZG1pOiBtaWdyYXRlIHRvIHVzZSBp
bm5vLWhkbWkNCj4gYnJpZGdlIGRyaXZlcg0KPiANCj4gSGksDQo+IA0KPiBPbiBUdWUsIE1heSAy
MSwgMjAyNCBhdCAwNjo1ODoxMFBNIEdNVCwga2VpdGggd3JvdGU6DQo+ID4gQWRkIHRoZSBST0NL
Q0hJUCBpbm5vIGhkbWkgZHJpdmVyIHRoYXQgdXNlcyB0aGUgSW5ubyBEZXNpZ25XYXJlIEhETUkN
Cj4gPiBUWCBicmlkZ2UgYW5kIHJlbW92ZSB0aGUgb2xkIHNlcGFyYXRlIG9uZS4NCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IGtlaXRoIDxrZWl0aC56aGFvQHN0YXJmaXZldGVjaC5jb20+DQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICB8
ICAgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAg
ICAgfCAgICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWktcm9j
a2NoaXAuYyB8ICA1MTcgKysrKysrKysNCj4gPiAgLi4uL3tpbm5vX2hkbWkuaCA9PiBpbm5vX2hk
bWktcm9ja2NoaXAuaH0gICAgIHwgICA0NSAtDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9pbm5vX2hkbWkuYyAgICAgICAgICB8IDEwNzMgLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgNSBm
aWxlcyBjaGFuZ2VkLCA1MTkgaW5zZXJ0aW9ucygrKSwgMTExOSBkZWxldGlvbnMoLSkgIGNyZWF0
ZSBtb2RlDQo+ID4gMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWktcm9j
a2NoaXAuYw0KPiA+ICByZW5hbWUgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3tpbm5vX2hkbWku
aCA9PiBpbm5vX2hkbWktcm9ja2NoaXAuaH0NCj4gPiAoODUlKSAgZGVsZXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYw0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvS2NvbmZpZw0KPiA+IGluZGV4IDFiZjNlMjgyOWNkMC4uY2M2Y2ZkNWEzMGQ2
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcNCj4gPiBAQCAtNzQsNiArNzQs
NyBAQCBjb25maWcgUk9DS0NISVBfRFdfTUlQSV9EU0kNCj4gPg0KPiA+ICBjb25maWcgUk9DS0NI
SVBfSU5OT19IRE1JDQo+ID4gIAlib29sICJSb2NrY2hpcCBzcGVjaWZpYyBleHRlbnNpb25zIGZv
ciBJbm5vc2lsaWNvbiBIRE1JIg0KPiA+ICsJc2VsZWN0IERSTV9JTk5PX0hETUkNCj4gPiAgCWhl
bHANCj4gPiAgCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVjaWZp
YyBleHRlbnNpb25zDQo+ID4gIAkgIGZvciB0aGUgSW5ub3NpbGljb24gSERNSSBkcml2ZXIuIElm
IHlvdSB3YW50IHRvIGVuYWJsZSBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvTWFrZWZpbGUNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtlZmlsZQ0K
PiA+IGluZGV4IDNmZjdiMjFjMDQxNC4uNGIyZDBjYmE4ZGIzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtlZmlsZQ0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9NYWtlZmlsZQ0KPiA+IEBAIC0xMiw3ICsxMiw3IEBAIHJvY2tjaGlwZHJtLSQo
Q09ORklHX1JPQ0tDSElQX0FOQUxPR0lYX0RQKSArPQ0KPiA+IGFuYWxvZ2l4X2RwLXJvY2tjaGlw
Lm8NCj4gPiAgcm9ja2NoaXBkcm0tJChDT05GSUdfUk9DS0NISVBfQ0ROX0RQKSArPSBjZG4tZHAt
Y29yZS5vIGNkbi1kcC1yZWcubw0KPiA+ICByb2NrY2hpcGRybS0kKENPTkZJR19ST0NLQ0hJUF9E
V19IRE1JKSArPSBkd19oZG1pLXJvY2tjaGlwLm8NCj4gPiAgcm9ja2NoaXBkcm0tJChDT05GSUdf
Uk9DS0NISVBfRFdfTUlQSV9EU0kpICs9DQo+IGR3LW1pcGktZHNpLXJvY2tjaGlwLm8NCj4gPiAt
cm9ja2NoaXBkcm0tJChDT05GSUdfUk9DS0NISVBfSU5OT19IRE1JKSArPSBpbm5vX2hkbWkubw0K
PiA+ICtyb2NrY2hpcGRybS0kKENPTkZJR19ST0NLQ0hJUF9JTk5PX0hETUkpICs9IGlubm9faGRt
aS1yb2NrY2hpcC5vDQo+ID4gIHJvY2tjaGlwZHJtLSQoQ09ORklHX1JPQ0tDSElQX0xWRFMpICs9
IHJvY2tjaGlwX2x2ZHMubw0KPiA+ICByb2NrY2hpcGRybS0kKENPTkZJR19ST0NLQ0hJUF9SR0Ip
ICs9IHJvY2tjaGlwX3JnYi5vDQo+ID4gIHJvY2tjaGlwZHJtLSQoQ09ORklHX1JPQ0tDSElQX1JL
MzA2Nl9IRE1JKSArPSByazMwNjZfaGRtaS5vIGRpZmYNCj4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9pbm5vX2hkbWktcm9ja2NoaXAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS1yb2NrY2hpcC5jDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQN
Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjY5ZDBlOTEzZTEzYg0KPiA+IC0tLSAvZGV2L251bGwN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLXJvY2tjaGlwLmMN
Cj4gPiBAQCAtMCwwICsxLDUxNyBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5DQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAoQykgRnV6aG91IFJvY2tj
aGlwIEVsZWN0cm9uaWNzIENvLkx0ZA0KPiA+ICsgKiAgICBaaGVuZyBZYW5nIDx6aGVuZ3lhbmdA
cm9jay1jaGlwcy5jb20+DQo+ID4gKyAqICAgIFlha2lyIFlhbmcgPHlra0Byb2NrLWNoaXBzLmNv
bT4NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8bGludXgvaXJxLmg+DQo+ID4gKyNp
bmNsdWRlIDxsaW51eC9jbGsuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+DQo+ID4g
KyNpbmNsdWRlIDxsaW51eC9lcnIuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2hkbWkuaD4NCj4g
PiArI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGlu
dXgvbW9kdWxlLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPg0KPiA+ICsjaW5jbHVk
ZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+DQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8ZHJtL2Jy
aWRnZS9pbm5vX2hkbWkuaD4NCj4gPiArI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+DQo+ID4g
KyNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gPiArI2luY2x1ZGUgPGRybS9k
cm1fZWRpZC5oPg0KPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPg0KPiA+ICsjaW5jbHVkZSA8
ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4NCj4gPiArI2luY2x1ZGUgPGRybS9kcm1fc2ltcGxlX2tt
c19oZWxwZXIuaD4NCj4gPiArDQo+ID4gKyNpbmNsdWRlICJyb2NrY2hpcF9kcm1fZHJ2LmgiDQo+
ID4gKw0KPiA+ICsjaW5jbHVkZSAiaW5ub19oZG1pLXJvY2tjaGlwLmgiDQo+ID4gKw0KPiA+ICsj
ZGVmaW5lIElOTk9fSERNSV9NSU5fVE1EU19DTE9DSyAgMjUwMDAwMDBVDQo+ID4gKw0KPiA+ICtz
dHJ1Y3QgcmtfaW5ub19oZG1pIHsNCj4gPiArCXN0cnVjdCByb2NrY2hpcF9lbmNvZGVyIGVuY29k
ZXI7DQo+ID4gKwlzdHJ1Y3QgaW5ub19oZG1pIGlubm9faGRtaTsNCj4gPiArCXN0cnVjdCBjbGsg
KnBjbGs7DQo+ID4gKwlzdHJ1Y3QgY2xrICpyZWZjbGs7DQo+ID4gK307DQo+ID4gKw0KPiA+ICtz
dGF0aWMgc3RydWN0IGlubm9faGRtaSAqcmtfZW5jb2Rlcl90b19pbm5vX2hkbWkoc3RydWN0IGRy
bV9lbmNvZGVyDQo+ID4gKyplbmNvZGVyKSB7DQo+ID4gKwlzdHJ1Y3Qgcm9ja2NoaXBfZW5jb2Rl
ciAqcmtlbmNvZGVyID0gdG9fcm9ja2NoaXBfZW5jb2RlcihlbmNvZGVyKTsNCj4gPiArCXN0cnVj
dCBya19pbm5vX2hkbWkgKnJrX2hkbWkgPSBjb250YWluZXJfb2YocmtlbmNvZGVyLCBzdHJ1Y3QN
Cj4gPiArcmtfaW5ub19oZG1pLCBlbmNvZGVyKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gJnJrX2hk
bWktPmlubm9faGRtaTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArZW51bSB7DQo+ID4gKwlDU0NfUkdC
XzBfMjU1X1RPX0lUVTYwMV8xNl8yMzVfOEJJVCwNCj4gPiArCUNTQ19SR0JfMF8yNTVfVE9fSVRV
NzA5XzE2XzIzNV84QklULA0KPiA+ICsJQ1NDX1JHQl8wXzI1NV9UT19SR0JfMTZfMjM1XzhCSVQs
DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3QgY2hhciBjb2VmZl9jc2NbXVsyNF0g
PSB7DQo+ID4gKwkvKg0KPiA+ICsJICogUkdCMllVVjo2MDEgU0QgbW9kZToNCj4gPiArCSAqICAg
Q2IgPSAtMC4yOTFHIC0gMC4xNDhSICsgMC40MzlCICsgMTI4DQo+ID4gKwkgKiAgIFkgID0gMC41
MDRHICArIDAuMjU3UiArIDAuMDk4QiArIDE2DQo+ID4gKwkgKiAgIENyID0gLTAuMzY4RyArIDAu
NDM5UiAtIDAuMDcxQiArIDEyOA0KPiA+ICsJICovDQo+ID4gKwl7DQo+ID4gKwkJMHgxMSwgMHg1
ZiwgMHgwMSwgMHg4MiwgMHgxMCwgMHgyMywgMHgwMCwgMHg4MCwNCj4gPiArCQkweDAyLCAweDFj
LCAweDAwLCAweGExLCAweDAwLCAweDM2LCAweDAwLCAweDFlLA0KPiA+ICsJCTB4MTEsIDB4Mjks
IDB4MTAsIDB4NTksIDB4MDEsIDB4ODIsIDB4MDAsIDB4ODANCj4gPiArCX0sDQo+ID4gKwkvKg0K
PiA+ICsJICogUkdCMllVVjo3MDkgSEQgbW9kZToNCj4gPiArCSAqICAgQ2IgPSAtIDAuMzM4RyAt
IDAuMTAxUiArIDAuNDM5QiArIDEyOA0KPiA+ICsJICogICBZICA9IDAuNjE0RyAgICsgMC4xODNS
ICsgMC4wNjJCICsgMTYNCj4gPiArCSAqICAgQ3IgPSAtIDAuMzk5RyArIDAuNDM5UiAtIDAuMDQw
QiArIDEyOA0KPiA+ICsJICovDQo+ID4gKwl7DQo+ID4gKwkJMHgxMSwgMHg5OCwgMHgwMSwgMHhj
MSwgMHgxMCwgMHgyOCwgMHgwMCwgMHg4MCwNCj4gPiArCQkweDAyLCAweDc0LCAweDAwLCAweGJi
LCAweDAwLCAweDNmLCAweDAwLCAweDEwLA0KPiA+ICsJCTB4MTEsIDB4NWEsIDB4MTAsIDB4Njcs
IDB4MDEsIDB4YzEsIDB4MDAsIDB4ODANCj4gPiArCX0sDQo+ID4gKwkvKg0KPiA+ICsJICogUkdC
WzA6MjU1XTJSR0JbMTY6MjM1XToNCj4gPiArCSAqICAgUicgPSBSIHggKDIzNS0xNikvMjU1ICsg
MTY7DQo+ID4gKwkgKiAgIEcnID0gRyB4ICgyMzUtMTYpLzI1NSArIDE2Ow0KPiA+ICsJICogICBC
JyA9IEIgeCAoMjM1LTE2KS8yNTUgKyAxNjsNCj4gPiArCSAqLw0KPiA+ICsJew0KPiA+ICsJCTB4
MDAsIDB4MDAsIDB4MDMsIDB4NkYsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MTAsDQo+ID4gKwkJMHgw
MywgMHg2RiwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgxMCwNCj4gPiArCQkweDAw
LCAweDAwLCAweDAwLCAweDAwLCAweDAzLCAweDZGLCAweDAwLCAweDEwDQo+ID4gKwl9LA0KPiA+
ICt9Ow0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBpbm5vX2hkbWlfcGh5X2NvbmZpZyByazMw
MzZfaGRtaV9waHlfY29uZmlnc1tdID0gew0KPiA+ICsJeyAgNzQyNTAwMDAsIDB4M2YsIDB4YmIg
fSwNCj4gPiArCXsgMTY1MDAwMDAwLCAweDZmLCAweGJiIH0sDQo+ID4gKwl7ICAgICAgfjBVTCwg
MHgwMCwgMHgwMCB9DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0IGlubm9faGRt
aV9waHlfY29uZmlnIHJrMzEyOF9oZG1pX3BoeV9jb25maWdzW10gPSB7DQo+ID4gKwl7ICA3NDI1
MDAwMCwgMHgzZiwgMHhhYSB9LA0KPiA+ICsJeyAxNjUwMDAwMDAsIDB4NWYsIDB4YWEgfSwNCj4g
PiArCXsgICAgICB+MFVMLCAweDAwLCAweDAwIH0NCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRp
YyBpbnQgaW5ub19oZG1pX2ZpbmRfcGh5X2NvbmZpZyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pLA0K
PiA+ICsJCQkJICAgICB1bnNpZ25lZCBsb25nIHBpeGVsY2xrKQ0KPiA+ICt7DQo+ID4gKwljb25z
dCBzdHJ1Y3QgaW5ub19oZG1pX3BoeV9jb25maWcgKnBoeV9jb25maWdzID0NCj4gaGRtaS0+cGxh
dF9kYXRhLT5waHlfY29uZmlnczsNCj4gPiArCWludCBpOw0KPiA+ICsNCj4gPiArCWZvciAoaSA9
IDA7IHBoeV9jb25maWdzW2ldLnBpeGVsY2xvY2sgIT0gfjBVTDsgaSsrKSB7DQo+ID4gKwkJaWYg
KHBpeGVsY2xrIDw9IHBoeV9jb25maWdzW2ldLnBpeGVsY2xvY2spDQo+ID4gKwkJCXJldHVybiBp
Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCURSTV9ERVZfREVCVUcoaGRtaS0+ZGV2LCAiTm8gcGh5
IGNvbmZpZ3VyYXRpb24gZm9yIHBpeGVsY2xvY2sgJWx1XG4iLA0KPiA+ICsJCSAgICAgIHBpeGVs
Y2xrKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gLUVJTlZBTDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAr
c3RhdGljIHZvaWQgaW5ub19oZG1pX3N0YW5kYnkoc3RydWN0IGlubm9faGRtaSAqaGRtaSkgew0K
PiA+ICsJaW5ub19oZG1pX3N5c19wb3dlcihoZG1pLCBmYWxzZSk7DQo+ID4gKw0KPiA+ICsJaGRt
aV93cml0ZWIoaGRtaSwgSERNSV9QSFlfRFJJVkVSLCAweDAwKTsNCj4gPiArCWhkbWlfd3JpdGVi
KGhkbWksIEhETUlfUEhZX1BSRV9FTVBIQVNJUywgMHgwMCk7DQo+ID4gKwloZG1pX3dyaXRlYiho
ZG1pLCBIRE1JX1BIWV9DSEdfUFdSLCAweDAwKTsNCj4gPiArCWhkbWlfd3JpdGViKGhkbWksIEhE
TUlfUEhZX1NZU19DVEwsIDB4MTUpOyB9Ow0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgaW5ub19o
ZG1pX3Bvd2VyX3VwKHN0cnVjdCBpbm5vX2hkbWkgKmhkbWksDQo+ID4gKwkJCSAgICAgICB1bnNp
Z25lZCBsb25nIG1waXhlbGNsb2NrKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW5ub19oZG1pX3Bo
eV9jb25maWcgKnBoeV9jb25maWc7DQo+ID4gKwlpbnQgcmV0ID0gaW5ub19oZG1pX2ZpbmRfcGh5
X2NvbmZpZyhoZG1pLCBtcGl4ZWxjbG9jayk7DQo+ID4gKw0KPiA+ICsJaWYgKHJldCA8IDApIHsN
Cj4gPiArCQlwaHlfY29uZmlnID0gaGRtaS0+cGxhdF9kYXRhLT5kZWZhdWx0X3BoeV9jb25maWc7
DQo+ID4gKwkJRFJNX0RFVl9FUlJPUihoZG1pLT5kZXYsDQo+ID4gKwkJCSAgICAgICJVc2luZyBk
ZWZhdWx0IHBoeSBjb25maWd1cmF0aW9uIGZvciBUTURTIHJhdGUgJWx1IiwNCj4gPiArCQkJICAg
ICAgbXBpeGVsY2xvY2spOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlwaHlfY29uZmlnID0gJmhk
bWktPnBsYXRfZGF0YS0+cGh5X2NvbmZpZ3NbcmV0XTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlp
bm5vX2hkbWlfc3lzX3Bvd2VyKGhkbWksIGZhbHNlKTsNCj4gPiArDQo+ID4gKwloZG1pX3dyaXRl
YihoZG1pLCBIRE1JX1BIWV9QUkVfRU1QSEFTSVMsDQo+IHBoeV9jb25maWctPnByZV9lbXBoYXNp
cyk7DQo+ID4gKwloZG1pX3dyaXRlYihoZG1pLCBIRE1JX1BIWV9EUklWRVIsDQo+IHBoeV9jb25m
aWctPnZvbHRhZ2VfbGV2ZWxfY29udHJvbCk7DQo+ID4gKwloZG1pX3dyaXRlYihoZG1pLCBIRE1J
X1BIWV9TWVNfQ1RMLCAweDE1KTsNCj4gPiArCWhkbWlfd3JpdGViKGhkbWksIEhETUlfUEhZX1NZ
U19DVEwsIDB4MTQpOw0KPiA+ICsJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9QSFlfU1lTX0NUTCwg
MHgxMCk7DQo+ID4gKwloZG1pX3dyaXRlYihoZG1pLCBIRE1JX1BIWV9DSEdfUFdSLCAweDBmKTsN
Cj4gPiArCWhkbWlfd3JpdGViKGhkbWksIEhETUlfUEhZX1NZTkMsIDB4MDApOw0KPiA+ICsJaGRt
aV93cml0ZWIoaGRtaSwgSERNSV9QSFlfU1lOQywgMHgwMSk7DQo+ID4gKw0KPiA+ICsJaW5ub19o
ZG1pX3N5c19wb3dlcihoZG1pLCB0cnVlKTsNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyB2
b2lkIGlubm9faGRtaV9yZXNldChzdHJ1Y3QgaW5ub19oZG1pICpoZG1pKSB7DQo+ID4gKwl1MzIg
dmFsOw0KPiA+ICsJdTMyIG1zazsNCj4gPiArDQo+ID4gKwloZG1pX21vZGIoaGRtaSwgSERNSV9T
WVNfQ1RSTCwgbV9SU1RfRElHSVRBTCwNCj4gdl9OT1RfUlNUX0RJR0lUQUwpOw0KPiA+ICsJdWRl
bGF5KDEwMCk7DQo+ID4gKw0KPiA+ICsJaGRtaV9tb2RiKGhkbWksIEhETUlfU1lTX0NUUkwsIG1f
UlNUX0FOQUxPRywNCj4gdl9OT1RfUlNUX0FOQUxPRyk7DQo+ID4gKwl1ZGVsYXkoMTAwKTsNCj4g
PiArDQo+ID4gKwltc2sgPSBtX1JFR19DTEtfSU5WIHwgbV9SRUdfQ0xLX1NPVVJDRSB8IG1fUE9X
RVIgfCBtX0lOVF9QT0w7DQo+ID4gKwl2YWwgPSB2X1JFR19DTEtfSU5WIHwgdl9SRUdfQ0xLX1NP
VVJDRV9TWVMgfCB2X1BXUl9PTiB8DQo+IHZfSU5UX1BPTF9ISUdIOw0KPiA+ICsJaGRtaV9tb2Ri
KGhkbWksIEhETUlfU1lTX0NUUkwsIG1zaywgdmFsKTsNCj4gPiArDQo+ID4gKwlpbm5vX2hkbWlf
c3RhbmRieShoZG1pKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBpbm5vX2hkbWlf
Y29uZmlnX3ZpZGVvX2NzYyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pKSB7DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gJmhkbWktPmNvbm5lY3RvcjsNCj4gPiArCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlID0gY29ubmVjdG9yLT5zdGF0ZTsNCj4g
PiArCXN0cnVjdCBpbm5vX2hkbWlfY29ubmVjdG9yX3N0YXRlICppbm5vX2Nvbm5fc3RhdGUgPQ0K
PiA+ICsJCQkJCXRvX2lubm9faGRtaV9jb25uX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiA+ICsJaW50
IGMwX2MyX2NoYW5nZSA9IDA7DQo+ID4gKwlpbnQgY3NjX2VuYWJsZSA9IDA7DQo+ID4gKwlpbnQg
Y3NjX21vZGUgPSAwOw0KPiA+ICsJaW50IGF1dG9fY3NjID0gMDsNCj4gPiArCWludCB2YWx1ZTsN
Cj4gPiArCWludCBpOw0KPiA+ICsNCj4gPiArCS8qIElucHV0IHZpZGVvIG1vZGUgaXMgU0RSIFJH
QjI0Yml0LCBkYXRhIGVuYWJsZSBzaWduYWwgZnJvbSBleHRlcm5hbCAqLw0KPiA+ICsJaGRtaV93
cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwxLCB2X0RFX0VYVEVSTkFMIHwNCj4gPiArCQkg
ICAgdl9WSURFT19JTlBVVF9GT1JNQVQoVklERU9fSU5QVVRfU0RSX1JHQjQ0NCkpOw0KPiA+ICsN
Cj4gPiArCS8qIElucHV0IGNvbG9yIGhhcmRjb2RlIHRvIFJHQiwgYW5kIG91dHB1dCBjb2xvciBo
YXJkY29kZSB0byBSR0I4ODggKi8NCj4gPiArCXZhbHVlID0gdl9WSURFT19JTlBVVF9CSVRTKFZJ
REVPX0lOUFVUXzhCSVRTKSB8DQo+ID4gKwkJdl9WSURFT19PVVRQVVRfQ09MT1IoMCkgfA0KPiA+
ICsJCXZfVklERU9fSU5QVVRfQ1NQKDApOw0KPiA+ICsJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9W
SURFT19DT05UUkwyLCB2YWx1ZSk7DQo+ID4gKw0KPiA+ICsJaWYgKGlubm9fY29ubl9zdGF0ZS0+
ZW5jX291dF9mb3JtYXQgPT0gSERNSV9DT0xPUlNQQUNFX1JHQikgew0KPiA+ICsJCWlmIChpbm5v
X2Nvbm5fc3RhdGUtPnJnYl9saW1pdGVkX3JhbmdlKSB7DQo+ID4gKwkJCWNzY19tb2RlID0gQ1ND
X1JHQl8wXzI1NV9UT19SR0JfMTZfMjM1XzhCSVQ7DQo+ID4gKwkJCWF1dG9fY3NjID0gQVVUT19D
U0NfRElTQUJMRTsNCj4gPiArCQkJYzBfYzJfY2hhbmdlID0gQzBfQzJfQ0hBTkdFX0RJU0FCTEU7
DQo+ID4gKwkJCWNzY19lbmFibGUgPSB2X0NTQ19FTkFCTEU7DQo+ID4gKw0KPiA+ICsJCX0gZWxz
ZSB7DQo+ID4gKwkJCXZhbHVlID0gdl9TT0ZfRElTQUJMRSB8IHZfQ09MT1JfREVQVEhfTk9UX0lO
RElDQVRFRCgxKTsNCj4gPiArCQkJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwz
LCB2YWx1ZSk7DQo+ID4gKw0KPiA+ICsJCQloZG1pX21vZGIoaGRtaSwgSERNSV9WSURFT19DT05U
UkwsDQo+ID4gKwkJCQkgIG1fVklERU9fQVVUT19DU0MgfCBtX1ZJREVPX0MwX0MyX1NXQVAsDQo+
ID4gKwkJCQkgIHZfVklERU9fQVVUT19DU0MoQVVUT19DU0NfRElTQUJMRSkgfA0KPiA+ICsJCQkJ
ICB2X1ZJREVPX0MwX0MyX1NXQVAoQzBfQzJfQ0hBTkdFX0RJU0FCTEUpKTsNCj4gPiArCQkJcmV0
dXJuIDA7DQo+ID4gKwkJfQ0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlpZiAoaW5ub19jb25uX3N0
YXRlLT5jb2xvcmltZXRyeSA9PSBIRE1JX0NPTE9SSU1FVFJZX0lUVV82MDEpDQo+IHsNCj4gPiAr
CQkJaWYgKGlubm9fY29ubl9zdGF0ZS0+ZW5jX291dF9mb3JtYXQgPT0NCj4gSERNSV9DT0xPUlNQ
QUNFX1lVVjQ0NCkgew0KPiA+ICsJCQkJY3NjX21vZGUgPSBDU0NfUkdCXzBfMjU1X1RPX0lUVTYw
MV8xNl8yMzVfOEJJVDsNCj4gPiArCQkJCWF1dG9fY3NjID0gQVVUT19DU0NfRElTQUJMRTsNCj4g
PiArCQkJCWMwX2MyX2NoYW5nZSA9IEMwX0MyX0NIQU5HRV9ESVNBQkxFOw0KPiA+ICsJCQkJY3Nj
X2VuYWJsZSA9IHZfQ1NDX0VOQUJMRTsNCj4gPiArCQkJfQ0KPiA+ICsJCX0gZWxzZSB7DQo+ID4g
KwkJCWlmIChpbm5vX2Nvbm5fc3RhdGUtPmVuY19vdXRfZm9ybWF0ID09DQo+IEhETUlfQ09MT1JT
UEFDRV9ZVVY0NDQpIHsNCj4gPiArCQkJCWNzY19tb2RlID0gQ1NDX1JHQl8wXzI1NV9UT19JVFU3
MDlfMTZfMjM1XzhCSVQ7DQo+ID4gKwkJCQlhdXRvX2NzYyA9IEFVVE9fQ1NDX0RJU0FCTEU7DQo+
ID4gKwkJCQljMF9jMl9jaGFuZ2UgPSBDMF9DMl9DSEFOR0VfRElTQUJMRTsNCj4gPiArCQkJCWNz
Y19lbmFibGUgPSB2X0NTQ19FTkFCTEU7DQo+ID4gKwkJCX0NCj4gPiArCQl9DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICsJZm9yIChpID0gMDsgaSA8IDI0OyBpKyspDQo+ID4gKwkJaGRtaV93cml0ZWIo
aGRtaSwgSERNSV9WSURFT19DU0NfQ09FRiArIGksDQo+ID4gKwkJCSAgICBjb2VmZl9jc2NbY3Nj
X21vZGVdW2ldKTsNCj4gPiArDQo+ID4gKwl2YWx1ZSA9IHZfU09GX0RJU0FCTEUgfCBjc2NfZW5h
YmxlIHwNCj4gdl9DT0xPUl9ERVBUSF9OT1RfSU5ESUNBVEVEKDEpOw0KPiA+ICsJaGRtaV93cml0
ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwzLCB2YWx1ZSk7DQo+ID4gKwloZG1pX21vZGIoaGRt
aSwgSERNSV9WSURFT19DT05UUkwsIG1fVklERU9fQVVUT19DU0MgfA0KPiA+ICsJCSAgbV9WSURF
T19DMF9DMl9TV0FQLCB2X1ZJREVPX0FVVE9fQ1NDKGF1dG9fY3NjKSB8DQo+ID4gKwkJICB2X1ZJ
REVPX0MwX0MyX1NXQVAoYzBfYzJfY2hhbmdlKSk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+
ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgaW5ub19oZG1pX3NldHVwKHN0cnVjdCBpbm5v
X2hkbWkgKmhkbWksDQo+ID4gKwkJCSAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQ0K
PiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqZGlzcGxheSA9ICZoZG1pLT5j
b25uZWN0b3IuZGlzcGxheV9pbmZvOw0KPiA+ICsJdW5zaWduZWQgbG9uZyBtcGl4ZWxjbG9jayA9
IG1vZGUtPmNsb2NrICogMTAwMDsNCj4gPiArDQo+ID4gKwkvKiBNdXRlIHZpZGVvIGFuZCBhdWRp
byBvdXRwdXQgKi8NCj4gPiArCWhkbWlfbW9kYihoZG1pLCBIRE1JX0FWX01VVEUsIG1fQVVESU9f
TVVURSB8IG1fVklERU9fQkxBQ0ssDQo+ID4gKwkJICB2X0FVRElPX01VVEUoMSkgfCB2X1ZJREVP
X01VVEUoMSkpOw0KPiA+ICsNCj4gPiArCS8qIFNldCBIRE1JIE1vZGUgKi8NCj4gPiArCWhkbWlf
d3JpdGViKGhkbWksIEhETUlfSERDUF9DVFJMLA0KPiA+ICsJCSAgICB2X0hETUlfRFZJKGRpc3Bs
YXktPmlzX2hkbWkpKTsNCj4gPiArDQo+ID4gKwlpbm5vX2hkbWlfY29uZmlnX3ZpZGVvX3RpbWlu
ZyhoZG1pLCBtb2RlKTsNCj4gPiArDQo+ID4gKwlpbm5vX2hkbWlfY29uZmlnX3ZpZGVvX2NzYyho
ZG1pKTsNCj4gPiArDQo+ID4gKwlpZiAoZGlzcGxheS0+aXNfaGRtaSkNCj4gPiArCQlpbm5vX2hk
bWlfY29uZmlnX3ZpZGVvX2F2aShoZG1pLCBtb2RlKTsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJ
ICogV2hlbiBJUCBjb250cm9sbGVyIGhhdmUgY29uZmlndXJlZCB0byBhbiBhY2N1cmF0ZSB2aWRl
bw0KPiA+ICsJICogdGltaW5nLCB0aGVuIHRoZSBUTURTIGNsb2NrIHNvdXJjZSB3b3VsZCBiZSBz
d2l0Y2hlZCB0bw0KPiA+ICsJICogRENMS19MQ0RDLCBzbyB3ZSBuZWVkIHRvIGluaXQgdGhlIFRN
RFMgcmF0ZSB0byBtb2RlIHBpeGVsDQo+ID4gKwkgKiBjbG9jayByYXRlLCBhbmQgcmVjb25maWd1
cmUgdGhlIEREQyBjbG9jay4NCj4gPiArCSAqLw0KPiA+ICsJaW5ub19oZG1pX2kyY19pbml0KGhk
bWksIG1waXhlbGNsb2NrKTsNCj4gPiArDQo+ID4gKwkvKiBVbm11dGUgdmlkZW8gYW5kIGF1ZGlv
IG91dHB1dCAqLw0KPiA+ICsJaGRtaV9tb2RiKGhkbWksIEhETUlfQVZfTVVURSwgbV9BVURJT19N
VVRFIHwgbV9WSURFT19CTEFDSywNCj4gPiArCQkgIHZfQVVESU9fTVVURSgwKSB8IHZfVklERU9f
TVVURSgwKSk7DQo+ID4gKw0KPiA+ICsJaW5ub19oZG1pX3Bvd2VyX3VwKGhkbWksIG1waXhlbGNs
b2NrKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+DQo+IA0KPiBJdCdzIGtp
bmQgb2YgYSBnZW5lcmFsIGNvbW1lbnQsIGJ1dCBJIGRvbid0IHRoaW5rIHRoYXQncyB0aGUgcmln
aHQgYWJzdHJhY3Rpb24uIFlvdQ0KPiBzaG91bGQgY3JlYXRlIGEgaW5ub19oZG1pIGJyaWRnZSB0
aGF0IGFsbG93cyB0byBzdXBwbGVtZW50IHNvbWUgb2YgdGhlIGF0b21pYw0KPiBob29rcywgYnV0
IG5vdCByZWltcGxlbWVudCB0aGVtIGVudGlyZWx5IGVhY2ggdGltZS4NCj4gDQo+IFlvdSBjYW4g
aGF2ZSBhIGxvb2sgYXQgaG93IGR3LWhkbWkgZG9lcyBpdCBmb3IgZXhhbXBsZS4gQWxzbywgd2h5
IGRvIHlvdSBzdGlsbA0KPiBuZWVkIHRoZSBlbmNvZGVyIGFuZCBjb25uZWN0b3JzPw0KPiANCkhp
IE1heGltZaO6DQpUaGlzIHNlcmllcyBvZiBwYXRjaGVzIGRvZXMgbm90IGNvbnNpZGVyIHJlZmVy
ZW5jaW5nIGJyaWRnZSAsDQpqdXN0IHNwbGl0IHRoZSBwdWJsaWMgaW50ZXJmYWNlIGJhc2VkIG9u
IHRoZSBjdXJyZW50IHN0cnVjdHVyZSAoZW5jb2RlciArIGNvbm5lY3RvciksIA0KYW5kIHRoZW4g
bWFrZSBpdCBpbnRvIGEgcHVibGljIEFQSS4gDQpUaGUgbmV4dCBzdGVwIGlzIHRvIGltcGxlbWVu
dCB0aGUgZHJpdmVyIGNvZGUgb2YgdGhlIHB1YmxpYyBwYXJ0IGJhc2VkIG9uIHRoZSBicmlkZ2Ug
YXJjaGl0ZWN0dXJlLg0KDQpCeSB0aGUgd2F5LCBkb2VzIHRoZSBjdXJyZW50IHNpdHVhdGlvbiBy
ZXF1aXJlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgdGhlIG5leHRfYnJpZGdlIGNvbmNlcHQ/DQpkdy1o
ZG1pIGF0dGFjaDoNCnN0YXRpYyBpbnQgZHdfaGRtaV9icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UsDQoJCQkJIGVudW0gZHJtX2JyaWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3Mp
DQp7DQoJc3RydWN0IGR3X2hkbWkgKmhkbWkgPSBicmlkZ2UtPmRyaXZlcl9wcml2YXRlOw0KDQoJ
aWYgKGZsYWdzICYgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SKQ0KCQlyZXR1cm4gZHJt
X2JyaWRnZV9hdHRhY2goYnJpZGdlLT5lbmNvZGVyLCBoZG1pLT5uZXh0X2JyaWRnZSwNCgkJCQkJ
IGJyaWRnZSwgZmxhZ3MpOw0KDQoJcmV0dXJuIGR3X2hkbWlfY29ubmVjdG9yX2NyZWF0ZShoZG1p
KTsNCn0NCg0KRm9yIGlubm8gaGRtaSAsIEkgd2FudCB0byBkZWZpbmUgaXQgbGlrZSB0aGlzICwg
d2lsbCBpdCBiZSBvaz8NCnN0YXRpYyBpbnQgaW5ub19icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UsDQoJCQkJIGVudW0gZHJtX2JyaWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3Mp
DQp7DQoJLi4uLi4uDQoNCglpZiAoZmxhZ3MgJiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNU
T1IpIHsNCgkJRFJNX0VSUk9SKCJGaXggYnJpZGdlIGRyaXZlciB0byBtYWtlIGNvbm5lY3RvciBv
cHRpb25hbCEiKTsNCgkJcmV0dXJuIC1FSU5WQUw7DQoJfQ0KDQoJcmV0dXJuIDA7DQp9DQouLi4u
Li4NCkFuZCB0aGVuICwgY3JlYXRlIHRoZSBjb25uZWN0b3Igb3V0c2lkZSBvZiBicmlkZ2U6DQoJ
cmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goZW5jb2RlciwgJmhkbWktPmJyaWRnZSwgTlVMTCwgMCk7
DQoJaWYgKHJldCkNCgkJcmV0dXJuIHJldDsNCg0KCWhkbWktPmNvbm5lY3RvciA9IGRybV9icmlk
Z2VfY29ubmVjdG9yX2luaXQoZHJtLCBlbmNvZGVyKTsNCglpZiAoSVNfRVJSKGhkbWktPmNvbm5l
Y3RvcikpIHsNCgkJZGV2X2VycihkZXYsICJVbmFibGUgdG8gY3JlYXRlIGJyaWRnZSBjb25uZWN0
b3JcbiIpOw0KCQlyZXQgPSBQVFJfRVJSKGhkbWktPmNvbm5lY3Rvcik7DQoJCXJldHVybiByZXQ7
DQoJfQ0KQmVzdCByZWdhcmRzDQoNCg0KPiBNYXhpbWUNCg==

