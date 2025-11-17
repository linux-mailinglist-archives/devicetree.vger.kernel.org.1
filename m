Return-Path: <devicetree+bounces-239368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 227ABC643CC
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:00:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 975B94EB9FB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF75E332EB0;
	Mon, 17 Nov 2025 12:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="ip2CKPEu"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872F733291B;
	Mon, 17 Nov 2025 12:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383469; cv=none; b=kpwfo4iZtWZOEkyToVoP0v91ywjqhFFnO0p3pgHt+FzP93zvkdHyQtx2+cr1p0ZvI18byLeCure9oGV/E8njZXEcCpxZEwTU133YAa3aqdC89HCE1LI91aPati8WBqK5oSRe13iP9fNe+fxrR5PtsezZmlWaE7HhDyIJ09iA8q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383469; c=relaxed/simple;
	bh=9XMkBQSyFJZSYATkJGGPoy193VUEcbPDpxvTX5Tj2m0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=rYYU+v7rjArnhB3GXMLpT21MtuVRPKJaHSMlfuB1vWQ4/rim9gWFh+HZfxETqrIOnyi+H5oM++MUY6MhDVyJYgMA3kf2ixemo4PuiJiVkMfbndWLQ+3hCCMIkUYGIVGJ5y55ialspRfq670YVnWkXtp2gKrhZwFOfaSeZR/0aig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=ip2CKPEu; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AHCfl8E33603703, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763383307; bh=9XMkBQSyFJZSYATkJGGPoy193VUEcbPDpxvTX5Tj2m0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=ip2CKPEuhSob2d+1rQOIHF9PBinLSdV4Nng7+Qf7gsV5IjgUoMvtlNApQuarL/zP3
	 GrdMBd9IgXXprz0vBPZr1OMaUDrRAA6O2JfviVFZlowYpktdVA4GUaqLiHswJzRDR5
	 15GMHrpVPkKPCEk4y7OBWWbe1Qil43nqDX13TRYLJo7M8MXfHm3jQIyki/u+WIH0/1
	 MaGF37BpmvgGJlg0tbbA4pE9uYUl7fD3UpKRKYIuSOo+Sm8UQQBpD8XyfygyXxhLlO
	 B1++Dv/+y6PqLcUwvxL1Bd1iXInNUbsgfe+MO2HXbaWaTxxREkIyMGwbfdNGcD21kQ
	 6VmlhyOXGXUlg==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AHCfl8E33603703
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 20:41:47 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 20:41:48 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 20:41:48 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([::1]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::744:4bc9:832c:9b7e%10]) with mapi id
 15.02.1544.027; Mon, 17 Nov 2025 20:41:48 +0800
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
Thread-Index: AQHcVJlAzHmV40ZjSkSQ8WpSKXbqLLT2ughw//98TgCAAJ8DAA==
Date: Mon, 17 Nov 2025 12:41:47 +0000
Message-ID: <15951264289d44f797ebd4e05238b380@realtek.com>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-3-eleanor.lin@realtek.com>
 <e799389ce8b4449baba83a893361bdd4@realtek.com>
 <94198d5f-e49f-4b38-8288-3be29efd142b@kernel.org>
In-Reply-To: <94198d5f-e49f-4b38-8288-3be29efd142b@kernel.org>
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

PiANCj4gT24gMTcvMTEvMjAyNSAxMjowMywgWXUtQ2h1biBMaW4gW+ael+elkOWQm10gd3JvdGU6
DQo+ID4gSGkgQ29ub3IgYW5kIEtyenlzenRvZiwNCj4gPg0KPiA+PiBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWZkL3JlYWx0ZWssbWlzYy55YW1sDQo+ID4+DQo+ID4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JlYWx0ZWssbWlz
Yy55YW1sDQo+ID4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yZWFs
dGVrLG1pc2MueWFtbA0KPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+PiBpbmRleCAwMDAw
MDAwMDAwMDAuLjRmNGE5YWUyNTBiZQ0KPiA+PiAtLS0gL2Rldi9udWxsDQo+ID4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcmVhbHRlayxtaXNjLnlhbWwNCj4g
Pj4gQEAgLTAsMCArMSw3MiBAQA0KPiA+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpICVZQU1MIDEuMg0KPiA+PiArLS0tDQo+ID4+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL21mZC9yZWFsdGVrLG1pc2MueWFtbCMN
Cj4gPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIw0KPiA+PiArDQo+ID4+ICt0aXRsZTogUmVhbHRlayBNSVNDIFN5c3RlbSBDb250cm9sbGVy
DQo+ID4+ICsNCj4gPj4gK2Rlc2NyaXB0aW9uOg0KPiA+PiArICBUaGUgUmVhbHRlayBNSVNDIFN5
c3RlbSBDb250cm9sbGVyIGlzIGEgcmVnaXN0ZXIgYXJlYSB0aGF0DQo+ID4+ICtjb250YWlucw0K
PiA+PiArICBtaXNjZWxsYW5lb3VzIHN5c3RlbSByZWdpc3RlcnMgZm9yIHRoZSBTb0MgYW5kIHNl
cnZlcyBhcyBhIHBhcmVudA0KPiA+PiArbm9kZQ0KPiA+PiArICBmb3Igb3RoZXIgZnVuY3Rpb25z
Lg0KPiA+PiArDQo+ID4+ICttYWludGFpbmVyczoNCj4gPj4gKyAgLSBKYW1lcyBUYWkgPGphbWVz
LnRhaUByZWFsdGVrLmNvbT4NCj4gPj4gKyAgLSBZdS1DaHVuIExpbiA8ZWxlYW5vci5saW5AcmVh
bHRlay5jb20+DQo+ID4+ICsNCj4gPj4gK3Byb3BlcnRpZXM6DQo+ID4+ICsgIGNvbXBhdGlibGU6
DQo+ID4+ICsgICAgaXRlbXM6DQo+ID4+ICsgICAgICAtIGVudW06DQo+ID4+ICsgICAgICAgICAg
LSByZWFsdGVrLG1pc2MNCj4gPg0KPiA+IEkgYXBvbG9naXplIGZvciB0aGUgY3VycmVudCBjb21w
YXRpYmxlIHN0cmluZywgd2hpY2ggd2FzIGluaXRpYWxseQ0KPiA+IG5hbWVkIGJ5IHJlZmVyZW5j
aW5nIGV4aXN0aW5nIHBhdHRlcm5zIGxpa2UgJ2JyY20sbWlzYycgYW5kIHRodXMNCj4gPiB2aW9s
YXRlcyB0aGUgbmFtaW5nIGd1aWRhbmNlIGFnYWluc3QgIndpbGRjYXJkcyIgYW5kIGdlbmVyYWwg
bm9uLVNvQw0KPiBzcGVjaWZpYyBuYW1lcy4NCj4gPg0KPiA+IExldCBtZSBleHBsYWluIHRoZSBw
dXJwb3NlIG9mIHRoZSBkZXZpY2Ugbm9kZSAoUmVhbHRlayBzeXN0ZW0gY29udHJvbGxlcikuDQo+
ID4NCj4gPiBUaGlzIE1JU0MgYXJlYSBjb250YWlucyBzZXZlcmFsIHBlcmlwaGVyYWwgc3ViLW1v
ZHVsZXMgc3VjaCBhcyB1YXJ0LA0KPiA+IHdhdGNoZG9nLCBydGMgb3IgaTJjIC4uLi4uIFRoZXNl
IGJsb2NrcyBzaGFyZSBhIHVuaWZpZWQgcmVnaXN0ZXINCj4gPiByZWdpb24gaW1wbGVtZW50ZWQg
YXMgYSBzaW5nbGUgaGFyZHdhcmUgbW9kdWxlLCB3aGljaCByZW1haW5zIHBvd2VyZWQNCj4gPiBk
dXJpbmcgc3lzdGVtIHN1c3BlbmQgc3RhdGVzIChlLmcuLCBTMykuIFRoZXNlIGJsb2NrcyBzaGFy
ZSB0aGUgc2FtZQ0KPiA+IE1NSU8gcmVnaW9uIGFuZCBhcHBlYXIgYXMgY2hpbGQgbm9kZXMgdW5k
ZXIgdGhlIE1JU0Mgc3lzY29uIG5vZGUuDQo+ID4gQ3VycmVudGx5LCBpdA0KPiANCj4gTm8sIHlv
dSBhcmUgbWl4aW5nIGhhcmR3YXJlIHdpdGggRFQgcmVwcmVzZW50YXRpb24uIFRoaXMgZGV2aWNl
IGNhbm5vdA0KPiBhcHBlYXIgYXMgY2hpbGQgbm9kZSwgYmVjYXVzZSB0aGVyZSBpcyBubyBzdWNo
IGNvbmNlcHQgaW4gaGFyZHdhcmUgYXMgY2hpbGQNCj4gbm9kZS4gWW91IGNhbm5vdCB1c2UgYXJn
dW1lbnQgb2YgRFQgcmVwcmVzZW50YXRpb24gd2hlbiB5b3UganVzdGlmeSBob3cgdGhpcw0KPiBp
cyByZXByZXNlbnRlZCBpbiBEVC4gSXQgaXMgaW52YWxpZC4NCj4gDQo+IFlvdSBuZWVkIHRvIHN0
YXJ0IGFyZ3VtZW50YXRpb24gaW4gdGVybXMgb2YgaGFyZHdhcmUuDQo+IA0KDQpZb3UgYXJlIHJp
Z2h0IHRoYXQgdGhlcmUgaXMgbm8gaGFyZHdhcmUgcGFyZW50LWNoaWxkIHJlbGF0aW9uc2hpcCBi
ZXR3ZWVuIHRoZSBNSVNDDQpjb250cm9sbGVyIGFuZCB0aGUgVUFSVCBibG9jay4gVGhlIE1JU0Mg
cmVnaXN0ZXJzIGF0IDB4OTgwMDcwMDAgYXJlIGEgc3lzdGVtIGNvbnRyb2wNCihzeXNjb24pIG1v
ZHVsZSwgd2hpbGUgdGhlIFVBUlQgY29udHJvbGxlciBpcyBhIHNlcGFyYXRlIElQIG1hcHBlZCBh
dCAweDk4MDA3ODAwDQpvbiB0aGUgc2FtZSBSQlVTLg0KSW4gdjMsIEkgd2lsbCBtb3ZlZCB0aGUg
VUFSVCBub2RlIHRvIGJlIGEgZGlyZWN0IGNoaWxkIG9mIHRoZSBSQlVTIGJ1cyBub2RlLg0KDQo+
IA0KPiA+IGluY2x1ZGVzIHVhcnQuDQo+ID4NCj4gPiBSZWdhcmRpbmcgdGhlIGN1cnJlbnQgc3Ry
dWN0dXJlLCB0aGUgZGV2aWNlIG5vZGUgaXMgZGVmaW5lZCBpbiBhDQo+ID4ga2VudC5kdHNpIGFu
ZCBpcyBpbmNsdWRlZCBieSBlYWNoIFNvQydzIERUU0kuDQo+ID4NCj4gPiBJJ3ZlIGNvbnNpZGVy
ZWQgdHdvIHdheXMgdG8gd3JpdGUgY29tcGF0aWJsZSBzdHJpbmcgbmFtaW5nLg0KPiA+DQo+ID4g
T3B0aW9uIDE6IFVzZSBhIHNpbmdsZSBTb0Mtc3BlY2lmaWMgY29tcGF0aWJsZSBzdHJpbmcNCj4g
Pg0KPiA+IFJlbmFtZSAicmVhbHRlayxtaXNjIiB0byAicmVhbHRlayxydGQxODYxLW1pc2MiDQo+
ID4NCj4gPiAvKiBrZW50LmR0c2kgKi8NCj4gPiBtaXNjOiBzeXNjb25ALi4uIHsNCj4gPiAgICAg
Y29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDE4NjEtbWlzYyIsICJzeXNjb24iLCAic2ltcGxlLW1m
ZCI7IH07DQo+ID4NCj4gPiBQcm9zOiBPbmx5IG9uZSBjb21wYXRpYmxlIHN0cmluZyBpcyBuZWVk
ZWQsIHNpbXBsaWZ5aW5nIG1haW50ZW5hbmNlDQo+ID4gYWNyb3NzIHRoZSBkcml2ZXIgYW5kIERU
Uy4NCj4gPg0KPiA+IENvbnM6IFZpb2xhdGVzIHRoZSAiU29DLXNwZWNpZmljIGNvbXBhdGlibGUi
IHJ1bGUgZm9yIG90aGVyIFNvQ3MNCj4gPiAoUlREMTUwMSwgUlREMTkyMCkuDQo+ID4NCj4gPiBP
cHRpb24gMjogU29DLXNwZWNpZmljICsgZmFsbGJhY2sgKENvbXBsaWFudCBidXQgVmVyYm9zZSkN
Cj4gPg0KPiA+IERlZmluZSB0aGUgZnVsbCBsaXN0IGluIHRoZSBzY2hlbWEsIGFuZCBvdmVycmlk
ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgaW4gZWFjaA0KPiBTb0MgRFRTSS4NCj4gPg0KPiA+IC8q
IHNjaGVtYSBiaW5kaW5nICovDQo+ID4NCj4gPiBjb21wYXRpYmxlOg0KPiA+ICAgaXRlbXM6DQo+
ID4gICAgIC0gZW51bToNCj4gPiAgICAgICAgIC0gcmVhbHRlayxydGQxNTAxLW1pc2MNCj4gPiAg
ICAgICAgIC0gcmVhbHRlayxydGQxODYxLW1pc2MNCj4gPiAgICAgICAgIC0gcmVhbHRlayxydGQx
OTIwLW1pc2MNCj4gPiAgICAgICAgICMgLi4uIGFkZCBuZXcgU29DcyBoZXJlDQo+ID4gICAgIC0g
Y29uc3Q6IHJlYWx0ZWssa2VudC1taXNjDQo+ID4gICAgIC0gY29uc3Q6IHN5c2Nvbg0KPiA+ICAg
ICAtIGNvbnN0OiBzaW1wbGUtbWZkDQo+ID4NCj4gPg0KPiA+IC8qIGtlbnQuZHRzaSAqLw0KPiA+
DQo+ID4gbWlzYzogc3lzY29uQC4uLiB7DQo+ID4gICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxr
ZW50LW1pc2MiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOyB9Ow0KPiA+DQo+ID4gU29DLXNwZWNp
ZmljIG92ZXJyaWRlIChlLmcuIHJ0ZDE5MjBzLXNtYWxsdmlsbGUuZHRzaSk6DQo+ID4NCj4gPiAm
bWlzYyB7DQo+ID4gICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxOTIwLW1pc2MiLCAicmVh
bHRlayxrZW50LW1pc2MiLCAic3lzY29uIiwNCj4gPiAgICAgICAgICAgICAgICAgICJzaW1wbGUt
bWZkIjsNCj4gPiB9Ow0KPiA+DQo+ID4gUHJvczogRnVsbHkgY29tcGxpYW50IHdpdGggRFQgcnVs
ZXMNCj4gPg0KPiA+IENvbnM6IFJlcXVpcmVzIG92ZXJyaWRlIGluIGV2ZXJ5IFNvQyBmaWxlOyBz
bGlnaHQgZHVwbGljYXRpb24uDQo+ID4NCj4gPiBJcyBPcHRpb24gMiB0aGUgZXhwZWN0ZWQgcGF0
dGVybj8NCj4gPiBUaGFua3MgZm9yIHlvdXIgZ3VpZGFuY2UhDQo+ID4NCj4gDQo+IE5vbmUgb2Yg
dGhlbS4gWW91IG5lZWQgU29DIHNwZWNpZmljIGNvbXBhdGlibGVzIHdoaWNoIGNhbiBiZSB1c2Vk
IGFzDQo+IGZhbGxiYWNrcyBmb3IgU29DIHNwZWNpZmljIGNvbXBhdGlibGVzLiBUaGVyZSBpcyBw
bGVudHkgb2YgZXhhbXBsZXMgZm9yIHRoaXMNCj4gYWxyZWFkeSwgYnV0IGFueXdheSB0aGlzIGRv
ZXMgbm90IHNvbHZlIHRoZSBwcm9ibGVtIHRoYXQgeW91IHN0aWxsIGRpZCBub3QNCj4gcHJvcGVy
bHkgZGVzY3JpYmUgdGhlIGhhcmR3YXJlIGJ1dCBpbnN0ZWFkIHVzZSB5b3VyIGRvd25zdHJlYW0g
YXMNCj4gYXJndW1lbnRzLg0KPiANCj4gVGhpcyB3aWxsIGdldCB5b3Ugbm93aGVyZS4NCg0KVG8g
aW1wbGVtZW50IHRoaXMgZmFsbGJhY2sgc3RydWN0dXJlLCBteSB1bmRlcnN0YW5kaW5nIGlzIHRo
YXQgdGhlDQpTb0MtbGV2ZWwgRFRTSSBzaG91bGQgb3ZlcnJpZGUgdGhlIG5vZGUgYW5kIHByZXBl
bmQgaXRzIFNvQy1zcGVjaWZpYw0KQ29tcGF0aWJsZSwgd2hpbGUgdGhlIGNvbW1vbiBEVFNJIG9u
bHkgcHJvdmlkZXMgdGhlIGZhbWlseS1sZXZlbA0KY29tcGF0aWJsZS4NCg0KLyogY29tbW9uIERU
U0kgKi8NCm1pc2M6IHN5c2NvbkAuLi4gew0KICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxrZW50
LW1pc2MiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOw0KfTsNCg0KLyogU29DLXNwZWNpZmljIERU
U0kgKi8NCiZtaXNjIHsNCiAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTkyMC1taXNjIiwN
CiAgICAgICAgICAgICAgICAgInJlYWx0ZWssa2VudC1taXNjIiwNCiAgICAgICAgICAgICAgICAg
InN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCn07DQpQbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhpcyBp
cyB0aGUgaW50ZW5kZWQgdXNhZ2UuDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0K

