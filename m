Return-Path: <devicetree+bounces-239370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A14C643C3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:00:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5ABF54F0609
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB2F3257827;
	Mon, 17 Nov 2025 12:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="VF5wnS64"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9D3747F;
	Mon, 17 Nov 2025 12:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383531; cv=none; b=mYlzV0w+1oKZt56w1e6GfwO1lMJGGkcdKzxfRdJLoff6taZI94SVItv1Au+taspwgw/qdIhrkXEvOPkJiIswIQpG5U4n+ljqGHZJMobXvAzOFSKEbjHWDfKWFboDHJlbxcDKqhcN2nN/yXkRxmmyq2azUYpWpbT/73lpxiK8su0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383531; c=relaxed/simple;
	bh=XDGQYe9hMvB0bsyJEU6EbuLLzED7HzwvYlwRiiMygqY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=mz3M3Y/IBumy+EzgjralC2UZmwVDwkhOw0X+q7M+Kyp896qm/QgxM5LPFnG+dG3ZJRbQrdtORJ7IGIDMhg+nWoXB51TiTGrhyjvhhCUkVaDx5l9tBhKw+1I89wOIR8IxL5FTmbMsQzIQbwAVjbmF6H88f3+OpA+u13shD+yXUbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=VF5wnS64; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AHCh43213604016, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763383384; bh=XDGQYe9hMvB0bsyJEU6EbuLLzED7HzwvYlwRiiMygqY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=VF5wnS64HgvmA/75/98aQk8RIkk3FLYvkl6DPLts7CxIuWa9eAMrww5ZZ+AlROV2C
	 eG4Wsp2TbM/D5eIC3hwz1d26OCPeCUAA/ZGiPJ9lDjbDzE7KhrArMRgffVwv1RSCc5
	 UJWWwj3BquE5OJVrmEtxTaKukcK9RIybvpaCeFVcc9RsR4T9Mtyv7iPBj383LPBknf
	 xmILvWEjTZfjbYpRg4KoT1iiXV3QOyYZXuYqUnLRlsiyDET+Cnya+T5Kbb8Gqgriju
	 g8hYUUqMP4hZpqgLsw5V/8emsFCnaIhO5eGp1cN82SfNiwbIwwOR8e6GpusXBbwRwz
	 uFM54LMhO+mUw==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AHCh43213604016
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 20:43:04 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 20:43:05 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([::1]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::744:4bc9:832c:9b7e%10]) with mapi id
 15.02.1544.027; Mon, 17 Nov 2025 20:43:05 +0800
From: =?utf-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        "afaerber@suse.de"
	<afaerber@suse.de>,
        "robh@kernel.org" <robh@kernel.org>,
        "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "lee@kernel.org" <lee@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?=
	<james.tai@realtek.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "linux-realtek-soc@lists.infradead.org"
	<linux-realtek-soc@lists.infradead.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?=
	<cy.huang@realtek.com>,
        =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?=
	<stanley_chang@realtek.com>
Subject: RE: [PATCH v2 3/3] arm64: dts: realtek: Add Kent SoC and EVB device
 trees
Thread-Topic: [PATCH v2 3/3] arm64: dts: realtek: Add Kent SoC and EVB device
 trees
Thread-Index: AQHcVJlBsddZeY2r4k6RSDkiGGnkcLTwfiUAgAZX9vA=
Date: Mon, 17 Nov 2025 12:43:04 +0000
Message-ID: <1e4c91ab20564680b497d996bc2a4db3@realtek.com>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-4-eleanor.lin@realtek.com>
 <3add6c9f-1bcd-4ec7-ae5e-ba1e67c5087d@kernel.org>
In-Reply-To: <3add6c9f-1bcd-4ec7-ae5e-ba1e67c5087d@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

PiBPbiAxMy8xMS8yMDI1IDEzOjMwLCBZdS1DaHVuIExpbiB3cm90ZToNCj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTkyMHMtc21hbGx2aWxsZS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE5MjBzLXNtYWxsdmlsbGUuZHRzaQ0KPj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDk4OWFmY2JkZTY3
DQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTkyMHMtc21hbGx2aWxsZS5kdHNpDQo+PiBAQCAtMCwwICsxLDEyOSBAQA0KPj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2Up
DQo+DQo+IE9kZCwgd2h5IGRvIHlvdSB3YW50IEdQTHYzIG9yIEdQTHY0PyBHUEx2MyBoYXMgcXVp
dGUgc3RyaWN0DQo+IHJlcXVpcmVtZW50cywgc28gSSBob3BlIHlvdSBrbm93IHdoYXQgeW91IGFy
ZSBkb2luZyBhbmQgeW91ciBsZWdhbA0KPiB1bmRlcnN0YW5kIHRoaXMuDQoNClRoYW5rIHlvdSBm
b3IgdGhlIGtpbmQgcmVtaW5kZXIuDQoNCkkgc2ltcGx5IGNvcGllZCB0aGUgaGVhZGVyIGZyb20g
YW4gZXhpc3RpbmcgUmVhbHRlayB1cHN0cmVhbSBkdHNpIGZpbGUuDQpJIHdpbGwgY2hhbmdlIGl0
IHRvICdTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCcNCg0KPj4gKy8qDQo+PiArICog
UmVhbHRlayBSVEQxOTIwUyBTbWFsbHZpbGxlIEVWQg0KPj4gKyAqDQo+PiArICogQ29weXJpZ2h0
IChjKSAyMDI0IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLg0KPj4gKyAqLw0KPj4gKw0KPj4g
Ky9kdHMtdjEvOw0KPj4gKw0KPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy90aGVybWFsL3RoZXJt
YWwuaD4NCj4+ICsjaW5jbHVkZSAicnRkMTkyMC5kdHNpIg0KPj4gKw0KPj4gKy8gew0KPj4gKwlj
aG9zZW4gew0KPj4gKwkJYm9vdGFyZ3MgPSAiZWFybHljb249dWFydDgyNTAsbW1pbzMyLDB4OTgw
MDc4MDAiOw0KPg0KPiBEcm9wIGJvb3RhcmdzLCBJIGFza2VkIGZvciB0aGlzIGxhc3QgdGltZS4g
VGhhdCdzIGRlYnVnZ2luZy4NCj4NCg0KU29ycnkuIEkgd2lsbCBkcm9wIGl0LiBTZXQgYm9vdCBh
cmdzIGluIGJvb3Rsb2FkZXIuDQoNCj4+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6NDYwODAw
bjgiOw0KPj4gKwl9Ow0KPg0KPg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0K

