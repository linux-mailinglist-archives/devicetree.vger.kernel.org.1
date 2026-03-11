Return-Path: <devicetree+bounces-273777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEqlI/64sGn0mQIAu9opvQ
	(envelope-from <devicetree+bounces-273777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:36:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A4295259D63
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BCD903009394
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F263644C1;
	Wed, 11 Mar 2026 00:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="ryvSA2Ig"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11022077.outbound.protection.outlook.com [52.101.48.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105822126C;
	Wed, 11 Mar 2026 00:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773189368; cv=fail; b=sgt98oN5RrCthLM+buWs3Uyiw9wEb/F5MZLy2VCzLBZaOabZi15OZE1NhNENqDjP+xcnZoUqWyI7ujXDLkdMwW/MTbHHw8zT906yqbSXVRtz6SocBMsIKWI75vMRF4CizVOlHbcSXE9gZl1keVzaviSLMJUzmL5iMjLqiAg5zoo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773189368; c=relaxed/simple;
	bh=hqJp8YsF+vBFPpi6slYGXJwAkgAwMI9euVyxf8O0r4k=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=rELc2t9CcMqULWe5xHReuCx1vIl+XY4sczjOGXhTgLL5Bs1hnZnqzIHPvyA+COQ4f6odK48f2Q6jih7+UKiaVKUube1rfLmeZJRrBaU6YsCYO5QAyLAqpETZQGR7tbpkpdixIlmZrwuRZnaem8yRQRAMIHeUdy007q6YyHp1Ycc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=ryvSA2Ig; arc=fail smtp.client-ip=52.101.48.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ahcbRlRXvKq95z8BJCp/Ur8VCjdAE54s6jTeCPUexITWqzmDmhMszpMbdLq0tF1eRpAYCtim1qy884aUkTNfyHch+Wxh2jGCSdj8OpqEYLd99YeNrF6dAQ08OLHNPjTMi4XDUS/lfXdeQpu0G7Z7gqW6+Y3lrG5w1jSO1mV7hyu+A2TzVsm3CsKLowaC7Ybun1+Yh6hm1tcFZuSJG2O6hWhUkU4/G+OgmpYBdYTRScBhDePZGTC0jPCtRGlt/5MyEp9W2+AUJLqnGxdxM4FtqP5Ni1qhQiVvGt6XGVv2VtHTEkYFIutkeG+NJJCLXh7SQGeOgUQWnjp/U0KwHN0sAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hqJp8YsF+vBFPpi6slYGXJwAkgAwMI9euVyxf8O0r4k=;
 b=nhGD89h1BAyY2hhZQ2Y49tqhxzjgXQB0qmMtnsZwJOma97IkZBi9pg73jAmdywhzpkeEJzEbs1I/Atm5G31x4vlZ6UyI/KlvYTwCXuKPwQsGinZjLdA/zUYXF6ae4cvYtGhEimlL35ptyzrkCGJ1IG9nYK/SBJgs7oPq+Y474nTqvhDCdLt1bCNCG9j9r19J0qTV2zlGcq8PE5F5zRWOTn9HIH4IRqgtmvWUHRR679+OafjIUbg7kluALSHOpWSnbuH2ikGRZ7QFmzDrcad4lFQu70TQ2mSCirRMkkE7+AbdKtTFL5P/5fhf98sMuiEdh8x4AbpMFe7RxRF2nPInyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqJp8YsF+vBFPpi6slYGXJwAkgAwMI9euVyxf8O0r4k=;
 b=ryvSA2IgAEWydohgoxyr3Z78OAEzU3bWc+FrvfjZFBotNjQrKvh8ZfRclgFUBqNLJ9+So5dIYlam2pA5/AKmjrfFVceQ6UxDeZ1YoJ5SePPBG2pH8wyD4nTunKSjcOilFd5E4VsWNRXILwr9fWtnwmbaTrLnNqjoIGWTLQYME3cF3qCs18C1NOSw/NFD2inc0xoEDoeH7Q/CRFQA6edNdceioN73mEIHH6UyVMJSmFoIJmyGG5Aru0HdbmyEL0xAUQRiLfHLMCUFB1jE1EiplN6L0LBY7nj2UqIRZAR7lofbhz6dkiyKJrza4mXJ1kI92UJb6mTDyHhuOUmErfMjFw==
Received: from MN2PR18MB3008.namprd18.prod.outlook.com (2603:10b6:208:10a::10)
 by SJ4PPF2CBEA1B57.namprd18.prod.outlook.com (2603:10b6:a0f:fc02::f13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.20; Wed, 11 Mar
 2026 00:36:04 +0000
Received: from MN2PR18MB3008.namprd18.prod.outlook.com
 ([fe80::e3f3:d819:62f8:9126]) by MN2PR18MB3008.namprd18.prod.outlook.com
 ([fe80::e3f3:d819:62f8:9126%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 00:36:04 +0000
From: Karthikeyan Mitran <kmitran@axiado.com>
To: "krzysztof.kozlowski@oss.qualcomm.com"
	<krzysztof.kozlowski@oss.qualcomm.com>
CC: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "fustini@kernel.org" <fustini@kernel.org>,
	Karthikeyan Mitran <kmitran@axiado.com>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	"linus.walleij@linaro.org" <linus.walleij@linaro.org>, "moderated
 list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, open
 list <linux-kernel@vger.kernel.org>, Axiado Reviewers
	<linux-maintainer@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>,
	"robh@kernel.org" <robh@kernel.org>, Tzu-Hao Wei <twei@axiado.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
Thread-Topic: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
Thread-Index: AQHcsOytRox31djQyE6aqHr6ewislg==
Date: Wed, 11 Mar 2026 00:36:03 +0000
Message-ID:
 <MN2PR18MB300848482C01F5BDE3DA24DEC947A@MN2PR18MB3008.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR18MB3008:EE_|SJ4PPF2CBEA1B57:EE_
x-ms-office365-filtering-correlation-id: a4d87258-75db-42ef-c921-08de7f062d52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|1800799024|376014|366016|38070700021|56012099003|18002099003;
x-microsoft-antispam-message-info:
 UUdHH4W2XDfjY2DN0knBBluY/sX8/jbnTywkg13iCi+W5y6z6ptcg6Y8nppp88NS+47UXDjIZjZCDn4dhEfMG235y9R+Wsxp8Bu3bu21zhLeA5oi/lkChYuGZeaVB1vH2crCbtDxu7Z/G8u1iLr9q24MG9x7uFi79A9he0LRZgq4mR+cI9PKeuNQvLXQsHeqJqBtUQFHVvXT4+r/2+Lkzc3lc4FL7mGBs6b6H3JghbKo+nNpau0J3tbF0U9v8hLZT+LNjFTs/vQy9CaDfBKUULjXU6iyHGItvzxCFGQ9C6xwyy2IyN8rRH1Gu58tKOkjVDQ4YJHWRdpLXlmPp/c8bPrQ8jI42hQZkyjbzc9W3jqpvdJmNeWWUni3grG5XCgl3um52UlNMohf9B7PT7yn2OQDlH56RHnLSpsCJuHiw9N5IUp0IHW93r4H4Ml0gz34HJPjc3nobECofC57ksL7E8aJ7ma8KbAQL/jXZ+8iCieRinNO5RBAS/9vmTfM+NlrgJanhFTiy6SAhf5Oah6mWT/Ut3/1XAnrKmWO0ecKe6WVDeOGx5LTrT7b1V/4byHz2g5RIAfV4UXxja2dfQjykBJlbCpuW10eCMKhFOiIDbXNh+u5gH6w7PZwLRpfesWDqf3zNDfs7Gh7KeZHpxMy+k55IPfZy6vl+IrxwJ0J0+BtJUsfDpBsjtxiq7iGq1EXgtpE36SMUaTEGoOqHX/UkCEHC632PFR6yy1JYpH30jRrPElEPcPV8zkacAB0HIoriArnI+2J1KbQFMF/biobCXdeoSvCV1GHDlEhvZUdtgc=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR18MB3008.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(38070700021)(56012099003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Rq1xu8ssCNtROi0LTbnnY3QUu2DhiMO4l0RMoQorqc2jzb24GE4t1IaupO?=
 =?iso-8859-1?Q?0nk14mh9Lc3O6BpwAhscwhkgenXBgvNrc4W4l1tSGTdIubtkalhwZM8me0?=
 =?iso-8859-1?Q?LjzdmY8gr9GsRkYOMtcwBYihUN1zgmuU5sIVaMHX6qFWxaVOSvZIeAX/YZ?=
 =?iso-8859-1?Q?YfXCMhuKSyWTwXqnUDc163kcbMdZrhqoCjJEfCunNJpQMMtjTgqFr6bU76?=
 =?iso-8859-1?Q?v9DNdEvdJOXVq1SQ7OvOEY2ynkt5IG5FF8OfXHDq0sTWLDcliWRvbXzIx+?=
 =?iso-8859-1?Q?vDGqTYRMrUY/dosDihSCbK8PsZ+7Xn3jqJ6NzoUYksjmY3N++66JyliKAS?=
 =?iso-8859-1?Q?m3hpYSR14C3CQPtk55UiolY7jhZhV3Czb36cYbYKgImZVikUujgaYE3/qt?=
 =?iso-8859-1?Q?ZiPHGGWw8O00sE9bJWeDTph7vBn+9R4wkajIDUo/wd27PXv1Oir3yjwG3k?=
 =?iso-8859-1?Q?f9nhOagzD4oQOLYw4b15pzon5p0/AExjPQumCzyNHtrK4fxdrQcG8Giein?=
 =?iso-8859-1?Q?HS+78ng9xgNbFmlTmTB0ueXRGGqwrsah0iZMNl7jitTGYg9Ijy9nv7DmZD?=
 =?iso-8859-1?Q?i7MrFa6lHvbd/bF5FqcHFzw9GHlm0yV18uQ32SU7Fs3H/u7tHKA41xyrUs?=
 =?iso-8859-1?Q?T+iDSWjEF6kE7XajxcA0smL5F3gKDxeqK4AUJey75hJkqbj6YnVlg0dx98?=
 =?iso-8859-1?Q?4BTo9c7whYUxgvsTvZ6C7AwwbBJAaWgAqI95QNdQOxOpX7DU7MRMURHndA?=
 =?iso-8859-1?Q?vNimnBxkgg8IbXgVznaSEbYJDhfs21lfq3zYpGha0PgC4/tPi2swfDxDvt?=
 =?iso-8859-1?Q?htD/ScYTFkkAm5lT30CynL7Zy824pfKUJeqG2tiQwhWiDzenEx7OVqsvjg?=
 =?iso-8859-1?Q?O9Jl6QRw4SKS6qOUAtlFLGsvcpBJY3AikUSBjKP4GQVgcxkNCb2sus/0Fr?=
 =?iso-8859-1?Q?a1s5XeIYFtUs8SQIeCBjA1BYtQotuS3ZLfOLtDdQc3uuNdUMHMTCZkNN3Q?=
 =?iso-8859-1?Q?NmVxt0+Za3zymANJ7EbE5bo+fje1R/mCcx4z0Rvax0vsNvhhRcd3NwqL4D?=
 =?iso-8859-1?Q?U0jrpf3JY7r0iRgg4t1kc6+qQ0Ie4rUq2LNC9E02Q0tW8x9e0Hn6LSEZ3Z?=
 =?iso-8859-1?Q?2s854EIk3LTaMl5Wxc27e+A+zuJFWmlkLUiRM7405xIvjuGlzMNy4bGIG3?=
 =?iso-8859-1?Q?N8okyyvvqiEyfivO3Xfi7at0pUHSCCMeL0thMi3QITScVqU3wzvvkuoKur?=
 =?iso-8859-1?Q?kgYCRFFpkcw64Qb2UlWNedxec+JhRseMwD226GmegOw14ZkZ5tHPKeYy8W?=
 =?iso-8859-1?Q?P1+fjK7PxTyQv2FtwkOPRVnQ/BTPZtc9ctrXx4mIKg+elvOmLaQLRCvNzT?=
 =?iso-8859-1?Q?mSkE1y5RArLXzA/jdwWaC6yRxUq94JXBrrF3++RBceeI6FX+R2CtuxEALs?=
 =?iso-8859-1?Q?VELM4tmk17wsfslAY+HD5zXR8sz6RVqpxL0WM/xlh4oFuzfZD5w1oq3MIa?=
 =?iso-8859-1?Q?kJppGbLp6SOB7W15ocGLEiyG6MOL4AJ6hJCn5OWxExCqKJ90kWEMHOpuS0?=
 =?iso-8859-1?Q?3IuKWjEHKV3ogaCsUtA6XrdDRvNn5oblm40/6ZTwfNmBN5g8jbJdC0PBo8?=
 =?iso-8859-1?Q?wasLiYS+WLRr6fydsUbISW43PHbvy8Uv2nRj4osGL7VOarXIXl81E4lJyv?=
 =?iso-8859-1?Q?mDX5cM4piKQ6yNevuxjABXltf1pKthXgra2qYYxpzxG3yk8dk9WphzWw/7?=
 =?iso-8859-1?Q?jx2k2lTWWS34Eq3TlqJf6808VZ8fik6gLSwrjdV3Y+4SDG?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR18MB3008.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d87258-75db-42ef-c921-08de7f062d52
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 00:36:03.9123
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkrCDFpGM+C0cAYzTKUoxmY4ffgJMu+r3Xs1t7aL2iSVfjv4VmFuHeOm58YsZbN8Ircig8ONGAsg/1woox6NGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ4PPF2CBEA1B57
X-Rspamd-Queue-Id: A4295259D63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	FAKE_REPLY(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273777-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email,axiado.com:dkim,axiado.com:email]
X-Rspamd-Action: no action

>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>=0A=
>>>=0A=
>>> The DTS code coding style expects lowercase hex for values and unit=0A=
>>> addresses.=0A=
>>>=0A=
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.co=
m>=0A=
>>> Reviewed-by: Tzu-Hao Wei <twei@axiado.com>=0A=
>>> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>=0A=
>>> Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>=0A=
>> =0A=
>>> It is not a big deal, but I just don't understand what are you doing=0A=
>>> here with my patch. I sent it, it got reviewed, so why are you posting=
=0A=
>>> it again for review?=0A=
>> =0A=
>> Apologies for the confusion. We weren't sure if your patch had been=0A=
>> picked up by the maintainer yet, so we included it in our series to=0A=
>> ensure the fix was applied along with our related changes.=0A=
>> =0A=
>>> What is the point of this posting?=0A=
>> =0A=
>> If it's already queued, we'll drop it from our next version and just=0A=
>> note it as a dependency.=0A=
>=0A=
>Queued by which maintainer? Why your maintainer cannot just apply this=0A=
>patch?=0A=
Hi Krzysztof, =0A=
 Since we were having a MAINTAINERs change for this architecture in this pa=
tch series, I though this patch can be applied to soc tree also directly, i=
nstead of a GIT PULL. I now understand a pull request is better, should I d=
rop this patch and create a pull request for review ? because the MAINTAINE=
R patch is also under review.=0A=
=0A=
Thanks in advance,=0A=
Karthikeyan Mitran=0A=

