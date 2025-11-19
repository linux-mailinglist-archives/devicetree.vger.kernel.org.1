Return-Path: <devicetree+bounces-240056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A81C6CFAC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3670D4E1D0A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 06:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DFA2D3A89;
	Wed, 19 Nov 2025 06:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="YI8H3jzT"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13342DBF5E;
	Wed, 19 Nov 2025 06:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763534987; cv=none; b=gTDU+SGfG41U4tA5x2FyfYl5hTFzuvGfuW6pH0S4uFCaaYq4etdFqRfyRDY0e8FgfrcWqzjhcDOxMgfaYg8uv0DImmrdFQuDzN95xZMvVUX5xwz4se6Dw6uPc3fAoV7BklRku3TEn6e+JHlx8j2bcaOxxkXH5oT2jpQL1CGngJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763534987; c=relaxed/simple;
	bh=1Gd3ZPcpZCccuSNzJYaGEPiStISD0m98tSjC8VyiwbA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=mJt+DBhiX7C9ML1PhWiXfRAE/P6lUmvrXC2rACi/S38ZKMq0W3yr5zr9J4Xd2RD4XuA7+Y+xrDgO+yCq4S40exbeCgllB3ZLRRMdfDJ4Y6kyutNoB92CpT9nGKPHEFsMN0C20bvxBac2TByqe1qqPIzfL9INmd635/wGU+qfSsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=YI8H3jzT; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AJ6kNXZ13032395, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763534784; bh=1Gd3ZPcpZCccuSNzJYaGEPiStISD0m98tSjC8VyiwbA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=YI8H3jzTbBaVCOzToRtvwnHs++qBXHrn/tuF39PLJUQ38nhlji/EWhnZGB5DMNgos
	 NVAMla+rmXNWm1xWMwkAfTi6I7VkrOr07i0Pc4BAyOT9DYembD78uqqQKk7KZojNIY
	 jKBuiI13miA9NdqTAl8LEJw+0Xk4q6o9sbwWel5CHQHFI2qFj7s1xV6uSwu9WSoU05
	 khc3b8cOXfD/Hz2C9D9AHeiOhcChydathnPqIiEnSoeZ0aqUmX7tkXd1fin7zmADaq
	 zcjiTbqEJpDEAuG1MO1bBy8foR01U9wTZU2isKvdUQNrEulsxeeFkc+rMko8avrgEE
	 8EBdwQUjd9d4g==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AJ6kNXZ13032395
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Nov 2025 14:46:24 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 19 Nov 2025 14:46:24 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 19 Nov 2025 14:46:24 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([::1]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::744:4bc9:832c:9b7e%10]) with mapi id
 15.02.1544.027; Wed, 19 Nov 2025 14:46:24 +0800
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
Subject: RE: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
Thread-Topic: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
Thread-Index: AQHcVJlAzHmV40ZjSkSQ8WpSKXbqLLT2ughw//98TgCAAJ8DAP//iGCAgAM4iJA=
Date: Wed, 19 Nov 2025 06:46:23 +0000
Message-ID: <d2dbb700ce684ee4a4c4ca120ac5e4e4@realtek.com>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-3-eleanor.lin@realtek.com>
 <e799389ce8b4449baba83a893361bdd4@realtek.com>
 <94198d5f-e49f-4b38-8288-3be29efd142b@kernel.org>
 <15951264289d44f797ebd4e05238b380@realtek.com>
 <38d7aacd-1c05-4040-8575-bdec0587e08f@kernel.org>
In-Reply-To: <38d7aacd-1c05-4040-8575-bdec0587e08f@kernel.org>
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

PiBPbiAxNy8xMS8yMDI1IDEzOjQxLCBZdS1DaHVuIExpbiBb5p6X56WQ5ZCbXSB3cm90ZToNCj4g
Pj4+DQo+ID4+DQo+ID4+IE5vbmUgb2YgdGhlbS4gWW91IG5lZWQgU29DIHNwZWNpZmljIGNvbXBh
dGlibGVzIHdoaWNoIGNhbiBiZSB1c2VkIGFzDQo+ID4+IGZhbGxiYWNrcyBmb3IgU29DIHNwZWNp
ZmljIGNvbXBhdGlibGVzLiBUaGVyZSBpcyBwbGVudHkgb2YgZXhhbXBsZXMNCj4gPj4gZm9yIHRo
aXMgYWxyZWFkeSwgYnV0IGFueXdheSB0aGlzIGRvZXMgbm90IHNvbHZlIHRoZSBwcm9ibGVtIHRo
YXQgeW91DQo+ID4+IHN0aWxsIGRpZCBub3QgcHJvcGVybHkgZGVzY3JpYmUgdGhlIGhhcmR3YXJl
IGJ1dCBpbnN0ZWFkIHVzZSB5b3VyDQo+ID4+IGRvd25zdHJlYW0gYXMgYXJndW1lbnRzLg0KPiA+
Pg0KPiA+PiBUaGlzIHdpbGwgZ2V0IHlvdSBub3doZXJlLg0KPiA+DQo+ID4gVG8gaW1wbGVtZW50
IHRoaXMgZmFsbGJhY2sgc3RydWN0dXJlLCBteSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhlDQo+
ID4gU29DLWxldmVsIERUU0kgc2hvdWxkIG92ZXJyaWRlIHRoZSBub2RlIGFuZCBwcmVwZW5kIGl0
cyBTb0Mtc3BlY2lmaWMNCj4gPiBDb21wYXRpYmxlLCB3aGlsZSB0aGUgY29tbW9uIERUU0kgb25s
eSBwcm92aWRlcyB0aGUgZmFtaWx5LWxldmVsDQo+ID4gY29tcGF0aWJsZS4NCj4gPg0KPiA+IC8q
IGNvbW1vbiBEVFNJICovDQo+ID4gbWlzYzogc3lzY29uQC4uLiB7DQo+ID4gICAgIGNvbXBhdGli
bGUgPSAicmVhbHRlayxrZW50LW1pc2MiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KPiANCj4g
Tm8uIFlvdSBjaGFuZ2VkIG5vdGhpbmcuIEhvdyBkb2VzIHRoaXMgZGlmZmVyIGZyb20gb3B0aW9u
cyBJIGRpc2FncmVlZCB3aXRoPw0KPiANCj4gQW55d2F5LCB0aGVyZSBpcyBubyBzdWNoIFNvQyBh
cyAia2VudCIgYW5kIEkgd2FzIGNsZWFyIC0geW91IG5lZWQgU29DDQo+IGNvbXBhdGlibGVzLg0K
PiANCj4gRGVmaW5lIHdoYXQgaXMgeW91ciBTb0MgZmlyc3QuDQo+IA0KPiBCZXN0IHJlZ2FyZHMs
DQo+IEtyenlzenRvZg0KDQpIaSBLcnp5c3p0b2YsDQoNClRoYW5rIHlvdSBmb3IgeW91ciByZXNw
b25zZS4NCg0KVGhlIG9yaWdpbmFsIGludGVudGlvbiB3YXMgdG8gYWRkIGEgYmFzaWMgS2VudCBk
ZXZpY2UgdHJlZSwgYnV0IHNpbmNlIHRoZQ0KJ21pc2MnIG5vZGUgaXMgY3VycmVudGx5IGVtcHR5
LiBJIHdpbGwgcmVtb3ZlIGJvdGggdGhpcyBkZXZpY2Ugbm9kZSBhbmQNCml0cyBjb3JyZXNwb25k
aW5nIFlBTUwgYmluZGluZyBpbiB2My4NCg0KQWZ0ZXIgZnVydGhlciBjb25zaWRlcmF0aW9uIHdp
dGhpbiBvdXIgdGVhbSwgd2UgaGF2ZSBkZWNpZGVkIHRvIGFkZA0KcG93ZXItZG9tYWluIGFuZCBy
ZWJvb3QtbW9kZSBmdW5jdGlvbmFsaXRpZXMgdG8gdGhlICdtaXNjJyBub2RlIGluIHRoZQ0KZnV0
dXJlLiBBbmQgd2Ugd2lsbCBhZGhlcmUgdG8gdGhlIFNvQy1zcGVjaWZpYyBjb21wYXRpYmxlIHN0
cmluZyBiaW5kaW5nDQpwYXR0ZXJuLCBmb2xsb3dpbmcgdGhpcyBzdHJ1Y3R1cmU6DQoNCi8qIHNj
aGVtYSBiaW5kaW5nICovDQpjb21wYXRpYmxlOg0KICBpdGVtczoNCiAgICAtIGVudW06DQogICAg
ICAgIC0gcmVhbHRlayxydGQxNTAxLW1pc2MNCiAgICAgICAgLSByZWFsdGVrLHJ0ZDE4NjEtbWlz
Yw0KICAgICAgICAtIHJlYWx0ZWsscnRkMTkyMC1taXNjDQogICAgLSBjb25zdDogc3lzY29uDQog
ICAgLSBjb25zdDogc2ltcGxlLW1mZA0KDQovKiBTb0Mtc3BlY2lmaWMgRGV2aWNlIFRyZWUgU291
cmNlIChlLmcuIHJ0ZDE5MjBzLmR0c2kpICovDQoNCiZyYnVzIHsNCiAgbWlzYzogc3lzY29uQDcw
MDAgew0KICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxOTIwLW1pc2MiLCAic3lzY29uIiwg
InNpbXBsZS1tZmQiOw0KICAgIHJlZyA9IDwweDcwMDAgMHgxMDAwPjsNCiAgICByYW5nZXMgPSA8
MHgwIDB4NzAwMCAweDEwMDA+Ow0KICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KICAgICNzaXpl
LWNlbGxzID0gPDE+Ow0KICB9Ow0KfTsNCg0KQmVzdCByZWdhcmRzLA0KWXUtQ2h1bg0K

