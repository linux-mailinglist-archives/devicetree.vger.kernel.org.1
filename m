Return-Path: <devicetree+bounces-239301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A016C63BC0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 32EF728A05
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756AB32C305;
	Mon, 17 Nov 2025 11:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="WbRLcUxO"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DA632C31C;
	Mon, 17 Nov 2025 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763377437; cv=none; b=s/57XyBYNbOlG9ODayMIhp5vLmmIETxRGXXuEQKTz/oVZ8dwQ8MChpWu0n74cwBZwQzQn5oYDzrMM1HwhtPiXvSK1UGz9bLeEXWG6D1UqvjhyrGJ06mWf1ZpzalLbpkL1bpp8Ge90O5AStFj99yDNI/OzMzDFlWkisoOCs7BJ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763377437; c=relaxed/simple;
	bh=r1x4NTTDXT+3sZVVLd0bTqpUWmMJ2q/FYJYjAPkCZjc=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=EAaXcN5TO7p/H6QF75xnY21zs72ZW+4sbwm5A8HFzeTPCBAFgJJwCNxaF35wmWaBu2nvSyxZRP6yzy11MVWD4LJthd+nBaogP5qdr8Fi2+ExhaLjLG3OSVpbjllKsRoCQ5RcQWeyHnivuWna3hMjueHTu9l/Gpbsu9ka+WKxBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=WbRLcUxO; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AHB3bqqE3469722, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763377417; bh=r1x4NTTDXT+3sZVVLd0bTqpUWmMJ2q/FYJYjAPkCZjc=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=WbRLcUxOdPwzrNxih2rVhi8Kuw9F0oosn9Lm7fl9P7zQt6HzN2gh5HGCKF1VC2Ytz
	 xyfFpl9JHvTx6nkgLWdkpKBMaNAtx5sqR7gJpDQT68byEpHDEOm7VmqRtJsZikXX3r
	 SThOndB9LvtwUKvnn5emQXFWleJ162CAoG+N6avHT1IONEpyDsYYMTsUdToJPPI/9c
	 nN4O+T2PBJtBrad8Nv4fe9zW+yNKSYifbWtY0Ppjizq56Rm2Zwae+ihFTrjE9IAavN
	 KK9WH4G0cSugjDiYjy8GBhvF8nmlfINIx3UIVdoIuVttEXqH6CQC0T9tjEW1IDHRor
	 qBlAmyuiO6aKA==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AHB3bqqE3469722
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 19:03:37 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 19:03:37 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([::1]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::744:4bc9:832c:9b7e%10]) with mapi id
 15.02.1544.027; Mon, 17 Nov 2025 19:03:37 +0800
From: =?big5?B?WXUtQ2h1biBMaW4gW6pMr6enZ10=?= <eleanor.lin@realtek.com>
To: =?big5?B?WXUtQ2h1biBMaW4gW6pMr6enZ10=?= <eleanor.lin@realtek.com>,
        "afaerber@suse.de" <afaerber@suse.de>,
        "robh@kernel.org" <robh@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "conor+dt@kernel.org"
	<conor+dt@kernel.org>,
        "lee@kernel.org" <lee@kernel.org>,
        =?big5?B?SmFtZXMgVGFpIFvAuafTrnBd?= <james.tai@realtek.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "linux-realtek-soc@lists.infradead.org"
	<linux-realtek-soc@lists.infradead.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        =?big5?B?Q1lfSHVhbmdbtsDgsq7LXQ==?=
	<cy.huang@realtek.com>,
        =?big5?B?U3RhbmxleSBDaGFuZ1up96h8vHdd?=
	<stanley_chang@realtek.com>
Subject: RE: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
Thread-Topic: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
Thread-Index: AQHcVJlAzHmV40ZjSkSQ8WpSKXbqLLT2ughw
Date: Mon, 17 Nov 2025 11:03:37 +0000
Message-ID: <e799389ce8b4449baba83a893361bdd4@realtek.com>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-3-eleanor.lin@realtek.com>
In-Reply-To: <20251113123009.26568-3-eleanor.lin@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgQ29ub3IgYW5kIEtyenlzenRvZiwNCg0KPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL3JlYWx0ZWssbWlzYy55YW1sDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yZWFsdGVrLG1pc2MueWFtbA0KPiBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcmVhbHRlayxtaXNjLnlhbWwNCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi40ZjRhOWFlMjUwYmUNCj4g
LS0tIC9kZXYvbnVsbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWZkL3JlYWx0ZWssbWlzYy55YW1sDQo+IEBAIC0wLDAgKzEsNzIgQEANCj4gKyMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKSAlWUFNTCAxLjIN
Cj4gKy0tLQ0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9tZmQvcmVhbHRl
ayxtaXNjLnlhbWwjDQo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMNCj4gKw0KPiArdGl0bGU6IFJlYWx0ZWsgTUlTQyBTeXN0ZW0gQ29udHJv
bGxlcg0KPiArDQo+ICtkZXNjcmlwdGlvbjoNCj4gKyAgVGhlIFJlYWx0ZWsgTUlTQyBTeXN0ZW0g
Q29udHJvbGxlciBpcyBhIHJlZ2lzdGVyIGFyZWEgdGhhdCBjb250YWlucw0KPiArICBtaXNjZWxs
YW5lb3VzIHN5c3RlbSByZWdpc3RlcnMgZm9yIHRoZSBTb0MgYW5kIHNlcnZlcyBhcyBhIHBhcmVu
dA0KPiArbm9kZQ0KPiArICBmb3Igb3RoZXIgZnVuY3Rpb25zLg0KPiArDQo+ICttYWludGFpbmVy
czoNCj4gKyAgLSBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4NCj4gKyAgLSBZdS1D
aHVuIExpbiA8ZWxlYW5vci5saW5AcmVhbHRlay5jb20+DQo+ICsNCj4gK3Byb3BlcnRpZXM6DQo+
ICsgIGNvbXBhdGlibGU6DQo+ICsgICAgaXRlbXM6DQo+ICsgICAgICAtIGVudW06DQo+ICsgICAg
ICAgICAgLSByZWFsdGVrLG1pc2MNCg0KSSBhcG9sb2dpemUgZm9yIHRoZSBjdXJyZW50IGNvbXBh
dGlibGUgc3RyaW5nLCB3aGljaCB3YXMgaW5pdGlhbGx5IG5hbWVkDQpieSByZWZlcmVuY2luZyBl
eGlzdGluZyBwYXR0ZXJucyBsaWtlICdicmNtLG1pc2MnIGFuZCB0aHVzIHZpb2xhdGVzIHRoZQ0K
bmFtaW5nIGd1aWRhbmNlIGFnYWluc3QgIndpbGRjYXJkcyIgYW5kIGdlbmVyYWwgbm9uLVNvQyBz
cGVjaWZpYyBuYW1lcy4NCg0KTGV0IG1lIGV4cGxhaW4gdGhlIHB1cnBvc2Ugb2YgdGhlIGRldmlj
ZSBub2RlIChSZWFsdGVrIHN5c3RlbSBjb250cm9sbGVyKS4NCg0KVGhpcyBNSVNDIGFyZWEgY29u
dGFpbnMgc2V2ZXJhbCBwZXJpcGhlcmFsIHN1Yi1tb2R1bGVzIHN1Y2ggYXMgdWFydCwNCndhdGNo
ZG9nLCBydGMgb3IgaTJjIC4uLi4uIFRoZXNlIGJsb2NrcyBzaGFyZSBhIHVuaWZpZWQgcmVnaXN0
ZXIgcmVnaW9uDQppbXBsZW1lbnRlZCBhcyBhIHNpbmdsZSBoYXJkd2FyZSBtb2R1bGUsIHdoaWNo
IHJlbWFpbnMgcG93ZXJlZCBkdXJpbmcNCnN5c3RlbSBzdXNwZW5kIHN0YXRlcyAoZS5nLiwgUzMp
LiBUaGVzZSBibG9ja3Mgc2hhcmUgdGhlIHNhbWUgTU1JTyByZWdpb24NCmFuZCBhcHBlYXIgYXMg
Y2hpbGQgbm9kZXMgdW5kZXIgdGhlIE1JU0Mgc3lzY29uIG5vZGUuIEN1cnJlbnRseSwgaXQNCmlu
Y2x1ZGVzIHVhcnQuDQoNClJlZ2FyZGluZyB0aGUgY3VycmVudCBzdHJ1Y3R1cmUsIHRoZSBkZXZp
Y2Ugbm9kZSBpcyBkZWZpbmVkIGluIGEga2VudC5kdHNpDQphbmQgaXMgaW5jbHVkZWQgYnkgZWFj
aCBTb0MncyBEVFNJLg0KDQpJJ3ZlIGNvbnNpZGVyZWQgdHdvIHdheXMgdG8gd3JpdGUgY29tcGF0
aWJsZSBzdHJpbmcgbmFtaW5nLg0KDQpPcHRpb24gMTogVXNlIGEgc2luZ2xlIFNvQy1zcGVjaWZp
YyBjb21wYXRpYmxlIHN0cmluZw0KDQpSZW5hbWUgInJlYWx0ZWssbWlzYyIgdG8gInJlYWx0ZWss
cnRkMTg2MS1taXNjIg0KDQovKiBrZW50LmR0c2kgKi8NCm1pc2M6IHN5c2NvbkAuLi4gew0KICAg
IGNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxODYxLW1pc2MiLCAic3lzY29uIiwgInNpbXBsZS1t
ZmQiOw0KfTsNCg0KUHJvczogT25seSBvbmUgY29tcGF0aWJsZSBzdHJpbmcgaXMgbmVlZGVkLCBz
aW1wbGlmeWluZyBtYWludGVuYW5jZSBhY3Jvc3MNCnRoZSBkcml2ZXIgYW5kIERUUy4NCg0KQ29u
czogVmlvbGF0ZXMgdGhlICJTb0Mtc3BlY2lmaWMgY29tcGF0aWJsZSIgcnVsZSBmb3Igb3RoZXIg
U29Dcw0KKFJURDE1MDEsIFJURDE5MjApLg0KDQpPcHRpb24gMjogU29DLXNwZWNpZmljICsgZmFs
bGJhY2sgKENvbXBsaWFudCBidXQgVmVyYm9zZSkNCg0KRGVmaW5lIHRoZSBmdWxsIGxpc3QgaW4g
dGhlIHNjaGVtYSwgYW5kIG92ZXJyaWRlIHRoZSBjb21wYXRpYmxlIHN0cmluZyBpbiBlYWNoIFNv
QyBEVFNJLg0KDQovKiBzY2hlbWEgYmluZGluZyAqLw0KDQpjb21wYXRpYmxlOg0KICBpdGVtczoN
CiAgICAtIGVudW06DQogICAgICAgIC0gcmVhbHRlayxydGQxNTAxLW1pc2MNCiAgICAgICAgLSBy
ZWFsdGVrLHJ0ZDE4NjEtbWlzYw0KICAgICAgICAtIHJlYWx0ZWsscnRkMTkyMC1taXNjDQogICAg
ICAgICMgLi4uIGFkZCBuZXcgU29DcyBoZXJlDQogICAgLSBjb25zdDogcmVhbHRlayxrZW50LW1p
c2MNCiAgICAtIGNvbnN0OiBzeXNjb24NCiAgICAtIGNvbnN0OiBzaW1wbGUtbWZkDQoNCg0KLyog
a2VudC5kdHNpICovDQoNCm1pc2M6IHN5c2NvbkAuLi4gew0KICAgIGNvbXBhdGlibGUgPSAicmVh
bHRlayxrZW50LW1pc2MiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KfTsNCg0KU29DLXNwZWNp
ZmljIG92ZXJyaWRlIChlLmcuIHJ0ZDE5MjBzLXNtYWxsdmlsbGUuZHRzaSk6DQoNCiZtaXNjIHsN
CiAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTkyMC1taXNjIiwgInJlYWx0ZWssa2VudC1t
aXNjIiwgInN5c2NvbiIsDQogICAgICAgICAgICAgICAgICJzaW1wbGUtbWZkIjsNCn07DQoNClBy
b3M6IEZ1bGx5IGNvbXBsaWFudCB3aXRoIERUIHJ1bGVzDQoNCkNvbnM6IFJlcXVpcmVzIG92ZXJy
aWRlIGluIGV2ZXJ5IFNvQyBmaWxlOyBzbGlnaHQgZHVwbGljYXRpb24uDQoNCklzIE9wdGlvbiAy
IHRoZSBleHBlY3RlZCBwYXR0ZXJuPw0KVGhhbmtzIGZvciB5b3VyIGd1aWRhbmNlIQ0KDQpCZXN0
IHJlZ2FyZHMsDQpZdS1DaHVuDQoNCj4gKyAgICAgIC0gY29uc3Q6IHN5c2Nvbg0KPiArICAgICAg
LSBjb25zdDogc2ltcGxlLW1mZA0KPiArDQo+ICsgIHJlZzoNCj4gKyAgICBtYXhJdGVtczogMQ0K
PiArDQo+ICsgIHJhbmdlczoNCj4gKyAgICBtYXhJdGVtczogMQ0KPiArDQo+ICsgICcjYWRkcmVz
cy1jZWxscyc6DQo+ICsgICAgY29uc3Q6IDENCj4gKw0KPiArICAnI3NpemUtY2VsbHMnOg0KPiAr
ICAgIGNvbnN0OiAxDQo+ICsNCj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOg0KPiArICAiXnNlcmlhbEBb
MC05YS1mXSskIjoNCj4gKyAgICB0eXBlOiBvYmplY3QNCj4gKyAgICBkZXNjcmlwdGlvbjogVUFS
VCBjb250cm9sbGVycyBpbnNpZGUgTUlTQyBhcmVhDQo+ICsNCj4gK3JlcXVpcmVkOg0KPiArICAt
IGNvbXBhdGlibGUNCj4gKyAgLSByZWcNCj4gKyAgLSByYW5nZXMNCj4gKyAgLSAnI2FkZHJlc3Mt
Y2VsbHMnDQo+ICsgIC0gJyNzaXplLWNlbGxzJw0KPiArDQo+ICthZGRpdGlvbmFsUHJvcGVydGll
czogZmFsc2UNCj4gKw0KPiArZXhhbXBsZXM6DQo+ICsgIC0gfA0KPiArICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+DQo+ICsNCj4gKyAgICBz
eXNjb25ANzAwMCB7DQo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxtaXNjIiwgInN5
c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gKyAgICAgICAgcmVnID0gPDB4NzAwMCAweDEwMDA+Ow0K
PiArICAgICAgICByYW5nZXMgPSA8MHgwIDB4NzAwMCAweDEwMDA+Ow0KPiArICAgICAgICAjYWRk
cmVzcy1jZWxscyA9IDwxPjsNCj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQo+ICsNCj4g
KyAgICAgICAgdWFydDA6IHNlcmlhbEA4MDAgew0KPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWFwYi11YXJ0IjsNCj4gKyAgICAgICAgICAgIHJlZyA9IDwweDgwMCAweDEwMD47
DQo+ICsgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsNCj4gKyAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA2OCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4g
KyAgICAgICAgICAgIHJlZy1pby13aWR0aCA9IDw0PjsNCj4gKyAgICAgICAgICAgIHJlZy1zaGlm
dCA9IDwyPjsNCj4gKyAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsgICAgICAg
IH07DQo+ICsgICAgfTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==

