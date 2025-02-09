Return-Path: <devicetree+bounces-144422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CD1A2E083
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 21:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C43A8188072A
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 20:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB621E32BE;
	Sun,  9 Feb 2025 20:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="aGxkn5x7"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBC61DF974
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 20:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739133825; cv=none; b=bffzIR54Xe1t/95AFA8KXPDFbalhF8EKnM3RdoEZqZob5f33G3YYR/CFcsnQDlOskq2v78RQSbpYZqH9aa+jXoFG0XUo5eJjckrARSf6eluPhmiEKbR5yHESddt07gJoeE0AlQJHRXtwkNZOQfMEbnbWOq8lNK8otFyshvgVWT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739133825; c=relaxed/simple;
	bh=mxp0OhS3VKfeXFByxo/vLG7lJ8hSnwX7t3N382Tlhuw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=FdhvEWgqq2Huz87jTKpX6vRgGYgyZyaBnhv9GoP4//BIGgVdDYxO98Rl9uU41Mp8wEKqNdIBj9SYPcfU0D14xa1ijZpvOYkgahXtZTghCnigR7y2w8zk8GxVrAniJj5w9+QTlkeA4vG1P4JbGtVlQHsAJfXceLz0jgLOR9BDjGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=aGxkn5x7; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 73D512C045C;
	Mon, 10 Feb 2025 09:43:34 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1739133814;
	bh=mxp0OhS3VKfeXFByxo/vLG7lJ8hSnwX7t3N382Tlhuw=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=aGxkn5x7PLBv6LpHG2uXDukUw4tMMp3DMikklkgSTu0I2llsdTjaNFYRE4M4G8ehh
	 QOZqzaMWypR/Qh4d/owPusYoN+n2mtKaRJ7RuXEmPuqJsIp+Wie+L1eWRC00P3551d
	 PzF/axueNq0Ggs9yzNmL80sCcbiJd0Zt1ad0H2SONQpnHgeDf8iLAqp4aBOGjEgrss
	 iR0UO2l9QgRavjxf907sDQYVQNY2+RAgwn0pDPwR4YFcB+a9q+DRyJUi3F/boxDzyw
	 +eydpqBIoDzFzRT/tVfauJrC4eIcIAEb2nh0dJB93CbweOSjScW3f7w+15MgUHjLRK
	 6RN/XTgZH4KPg==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B67a913760000>; Mon, 10 Feb 2025 09:43:34 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 10 Feb 2025 09:43:34 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.014; Mon, 10 Feb 2025 09:43:34 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Krzysztof Kozlowski <krzk@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, "lee@kernel.org"
	<lee@kernel.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: Sorting out the RTL9300 dt-bindings
Thread-Topic: Sorting out the RTL9300 dt-bindings
Thread-Index: AQHbd1Wb35JWhYQ4OEu8JThjbWekT7M+OHMAgABlhYA=
Date: Sun, 9 Feb 2025 20:43:34 +0000
Message-ID: <33af1934-3b51-4653-83b5-faa46eae3d2f@alliedtelesis.co.nz>
References: <4e3c5d83-d215-4eff-bf02-6d420592df8f@alliedtelesis.co.nz>
 <98a7fdf5-585f-47a7-bb28-5cef43f7ac76@kernel.org>
In-Reply-To: <98a7fdf5-585f-47a7-bb28-5cef43f7ac76@kernel.org>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-ID: <7AE7214FD11FAF408DDD5994DCC3608D@alliedtelesis.co.nz>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=QNvLRRLL c=1 sm=1 tr=0 ts=67a91376 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=T2h4t0Lz3GQA:10 a=VwQbUJbxAAAA:8 a=LK7Hupw7vLLNoXz4qQEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

DQpPbiAxMC8wMi8yMDI1IDAzOjQwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPiBPbiAw
NC8wMi8yMDI1IDIzOjM5LCBDaHJpcyBQYWNraGFtIHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gQXMg
S3J6eXN6dG9mIHBvaW50cyBvdXQgaW4gWzFdIEkgc2VlbSB0byBoYXZlIG1hZGUgYSBiaXQgb2Yg
YSBtZXNzIHdpdGgNCj4+IHRoZSBtZmQgYmluZGluZyBmb3IgdGhlIFJUTDkzMDAgRXRoZXJuZXQg
c3dpdGNoIHdpdGggaW50ZWdyYXRlZCBDUFUuIEknbQ0KPj4gc3Bpbm5pbmcgdXAgdGhpcyBlbWFp
bCB0aHJlYWQgc2VwYXJhdGVseSBzbyBhcyBub3QgdG8gdW5uZWNlc3NhcmlseSBzcGFtDQo+PiB0
aGUgbmV0ZGV2IGZvbGtzIGFuZCB0byBtYXliZSBhcHBlYXNlIGdvb2dsZSBzbyBpdCBkb2Vzbid0
IGF1dG9tYXRpY2FsbHkNCj4+IGdldCBmbGFnZ2VkIGFzIGp1bmsuDQo+Pg0KPj4gRmlyc3Qgb2Zm
IHNvcnJ5IGZvciBub3QgcHJvdmlkaW5nIGEgbW9yZSBjb21wbGV0ZSBiaW5kaW5nIGluaXRpYWxs
eSwNCj4+IEtyenlzenRvZiBzdWdnZXN0ZWQgZG9pbmcgc28gYSBmZXcgdGltZXMgYnV0IEkgd2Fz
IGNvbmNlbnRyYXRpbmcgb24NCj4+IGxhbmRpbmcgdGhlIGRyaXZlcnMuDQo+Pg0KPj4gVGhlIFJU
TDkzMDAgaGFzIHRoZXNlIGJhc2ljIGJsb2NrczoNCj4+IC0gcnRsOTMwMA0KPj4gICDCoCB8LSBj
cHVAMCAtIG1pcHMzNGtjDQo+PiAgIMKgIHwtIHNvY0AxODAwMDAwMA0KPj4gICDCoMKgwqAgfC0g
aW50Yw0KPj4gICDCoMKgwqAgfC0gc3BpLW5vcg0KPj4gICDCoMKgwqAgfC0gc3BpLW5hbmQNCj4+
ICAgwqDCoMKgIHwtIHRpbWVyDQo+PiAgIMKgwqDCoCB8LSBncGlvDQo+PiAgIMKgwqDCoCBgLSB1
YXJ0DQo+PiAgIMKgIGAtIHN3aXRjaEAxYjAwMDAwMA0KPj4gICDCoCDCoMKgIHwtIGV0aGVybmV0
LXBvcnRzDQo+PiAgIMKgwqDCoMKgIHwtIG1kaW8NCj4+ICAgwqDCoMKgwqAgfC0gaTJjDQo+PiAg
IMKgwqDCoMKgIHwtIHJlc2V0DQo+PiAgIMKgwqDCoMKgIGAtIGxlZC9ncGlvDQo+Pg0KPj4gVGhl
IENQVS9zb2MgY2FuIGJlIGRpc2FibGVkIGFuZCB0aGUgc3dpdGNoIG1hbmFnZWQgYnkgYW4gZXh0
ZXJuYWwgQ1BVDQo+PiAocmVnaXN0ZXIgYWNjZXNzIG92ZXIgU1BJIEkgdGhpbmssIHRoZSBkb2Nz
IGFyZSBhIGJpdCB2YWd1ZSkuDQo+Pg0KPj4gSSB0aGluayBJIHByb2JhYmx5IGluZmVycmVkIHRv
byBtdWNoIGZyb20gbWZkL21zY2Msb2NlbG90LnlhbWwgd2hlbiBJDQo+PiBjcmVhdGVkIG1mZC9y
ZWFsdGVrLHJ0bDkzMDEtc3dpdGNoLnlhbWwuDQo+DQo+IC4uLiBhbmQgdG8gcmVjYXAgdG8gb3Ro
ZXJzIGZvciBjb250ZXh0LCB0aGUgcHJvYmxlbSBpcyB0aGF0IHN3aXRjaCBpcw0KPiBzaW1wbGUt
bWZkIGFuZCBtb3N0IG9mIHRoZSBzd2l0Y2ggY2hpbGRyZW4gaGF2ZSBidXMgYWRkcmVzc2VzIChN
TUlPIG9mDQo+IHRoZSBzd2l0Y2ggcmVnaW9uKSBidXQgZXRoZXJuZXQtcG9ydHMgZG9lcyBub3Qu
DQo+DQo+IFRoaXMgd2lsbCB3b3JrIGZpbmUsIGJ1dCBpcyBkaXNjb3VyYWdlZCBzdHlsZS4NCj4N
Cj4gQ29uc2lkZXJpbmcgYWxzbyB0aGF0IHNvbWUgb2YgdGhlIGNoaWxkcmVuIC0gbGlrZSBzeXNj
b24tcmVib290IG9yIGkyYyAtDQo+IHRha2Ugb25lIG9yIGZldyByZWdpc3RlcnMgYXMgYWRkcmVz
cyBzcGFjZSwgbWF5YmUgYWRkaW5nIE1NSU8gZm9yDQo+IGNoaWxkcmVuIHdhcyBub3QgbmVjZXNz
YXJ5IGF0IGFsbC4NCj4NCj4gIEZyb20gaW1wbGVtZW50YXRpb24gcG9pbnQgb2YgdmlldywgdGhp
cyBNTUlPIGlzIG5vdCByZWFsbHkgdXNlZCwgYmVjYXVzZQ0KPiBjaGlsZHJlbiBhbnl3YXkgZ2V0
IGFuZCB1c2UgcmVnbWFwIGZyb20gdGhlIHBhcmVudCwgcmlnaHQ/DQoNClRoZSAicmVnIiBwcm9w
ZXJ0eSAod2hpY2ggSSBhc3N1bWUgaXMgd2hhdCBtYWtlcyB0aGVzZSBNTUlPIGNoaWxkcmVuKSBv
biANCnNvbWUgb2YgdGhlc2UgY2hpbGRyZW4gaXMgdXNlZCB0byB3b3JrIG91dCB0aGUgb2Zmc2V0
IHdpdGhpbmcgdGhlIA0KcGFyZW50LiBUaGlzIGRvZXMgbGVhZCB0byBhIGZldyBvZGQgY29uc3Ry
dWN0cyBsaWtlIGByZWdtYXBfcmVhZChtYXAsIA0KcHJpdi0+YmFzZSArIFJFRywgJnZhbClgIGlu
c3RlYWQgb2YganVzdCBkZWZpbmluZyBSRUcgYXMgdGhlIG9mZnNldCBpbiANCnRoZSBwYXJlbnQg
cmVnbWFwLiBCdXQgaXQgZG9lcyBsZXQgdXMgcmUtdXNlIHRoZSBzYW1lIGRyaXZlciB3aGVuIA0K
UmVhbHRlayBkZWNpZGVzIHRvIGFyYml0cmFyaWx5IG1vdmUgdGhlIGJsb2NrIGFyb3VuZCBpbiB0
aGUgbmV4dCBjaGlwIA0KKGUuZy4gdGhlIGkyYyBibG9jayBvbiB0aGUgUlRMOTMxMCBpcyBub3cg
YXQgb2Zmc2V0IDB4MTAwNCkuDQoNClNvbWUgc3lzY29uIGRyaXZlcnMgYWNjZXB0IGFuICJvZmZz
ZXQiIHByb3BlcnR5IGJ1dCBpZiBJIHVuZGVyc3RhbmQgDQpjb3JyZWN0bHkgaGFzIGJlZW4gZGVw
cmVjYXRlZCBpbiBmYXZvciBvZiB1c2luZyAicmVnIiB0byBhbGxvdyANCnN1cHBvcnRpbmcgc3lz
Y29uIGNoaWxkcmVuIG9yIHRydWUgTU1JTy4gT25lIG9mIHRoZSBmaXJzdCBwYXRjaGVzIGZvciAN
CnRoaXMgcGxhdGZvcm0gd2FzIHRvIHVwZGF0ZSBzeXNjb24tcmVib290LmMgdG8gdGFrZSBhIHJl
ZyBwcm9wZXJ0eVsxXSANCmJ1dCBwZXJoYXBzIEkgaGFkIG1pc3VuZGVyc3Rvb2Qgd2hhdCB3YXMg
TU1JTyB2cyBzeXNjb24gYW5kIHdoZW4gSSANCnNob3VsZCB1c2UgInJlZyIgdnMgIm9mZnNldCIu
DQoNClRoaW5ncyBnZXQgYSBsaXR0bGUgbW9yZSBjb21wbGljYXRlZCBhcyBJIG1vdmUgaW50byB0
aGUgc3dpdGNoIA0KZnVuY3Rpb25hbGl0eS4gVGhlIE1ESU8gc3R1ZmYgaXMgZ3JvdXBlZCB0b2dl
dGhlciBzbyBJIGtlcHQgdGhlIHJlZyANCnByb3BlcnR5IGJ1dCBkZWNpZGVkIHRvIHVzZSBmdWxs
IHJlZ2lzdGVyIGFkZHJlc3NlcyBpbnN0ZWFkIG9mIA0KcHJpdi0+YmFzZSArIFJFRyBpbiB0aGUg
ZHJpdmVyIGJlY2F1c2UgdGhlIG1lbnRhbCBtYXRoIHJlcXVpcmVkIHdoZW4gDQpyZWZlcnJpbmcg
dG8gdGhlIGRhdGFzaGVldCB3YXMgZ2V0dGluZyBhIGxpdHRsZSBiaXQgdGlyZXNvbWUgKGFuZCBh
IA0KcmV2aWV3ZXIgc2FpZCB0aGF0IGl0IGxvb2tlZCBvZGQpLg0KDQpXaGVuIHdlIGdldCB0byB0
aGUgZXRoZXJuZXQtcG9ydHMgdGhhdCdzIHdoZXJlIGFueSByZXNlbWJsYW5jZSB0byBNTUlPIA0K
Z29lcyBvdXQgdGhlIHdpbmRvdy4gVGhlcmUgYXJlIHBvcnQgcmVsYXRlZCByZWdpc3RlcnMgc2Nh
dHRlcmVkIA0KdGhyb3VnaG91dCB0aGUgc3dpdGNoIHJlZ21hcC4NCg0KWzFdIC0gDQpodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjQxMDE1MjI1OTQ4LjM5NzE5MjQtMy1jaHJpcy5wYWNraGFt
QGFsbGllZHRlbGVzaXMuY28ubnoNCg0KPg0KPj4gSSBzdGlsbCB0aGluayB0aGUgc3dpdGNoQDFi
MDAwMDAwIG5lZWRzIHRvIGJlICJzeXNjb24iLCAic2ltcGxlLW1mZCIgYXMNCj4+IHRoYXQncyBo
b3cgdGhlIHJlc2V0IGFuZCBpMmMgYmxvY2tzIHdvcmsgYW5kIHRoZXkncmUgcHJldHR5IGluZGVw
ZW5kZW50DQo+PiBvZiBldmVyeXRoaW5nIGVsc2UuDQo+Pg0KPj4gSSd2ZSBjdXJyZW50bHkgZGVz
Y3JpYmVkIHRoZSBtZGlvIGludGVyZmFjZSBhcyBhIGRldmljZSBvbiBhIHNpbXBsZSBidXMNCj4+
IGFsdGhvdWdoIGl0IGNvdWxkIGp1c3QgYmUgaGFuZGxlZCBhcyBhIGRlc2NlbmRhbnQgb2YgdGhl
IHN3aXRjaCBibG9jaw0KPj4gdGhhdCBhIGRyaXZlciBsb29rcyB1cCBhcyBhIGNoaWxkIG5vZGUg
KEkndmUgdHJpZWQgdG8ga2VlcCB0aGUgbWRpbw0KPj4gZHJpdmVyIGluZGVwZW5kZW50IGZvciBu
b3cgYnV0IHRoYXQncyBhbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWwpLiBJdCBkb2VzDQo+PiBuZWVk
IHRvIHJlYWNoIG91dCB0byB0aGUgZXRoZXJuZXQtcG9ydHMgdG8gZmlndXJlIG91dCB0aGUgbWFw
cGluZyBvZg0KPj4gcG9ydCB0byBwaHkgc28gaXQgaXNuJ3QgaW5kZXBlbmRlbnQuDQo+Pg0KPj4g
SSBzZWUgYSBjb3VwbGUgb2YgcGF0aHMgZm9yd2FyZA0KPj4gLSBrZWVwIGFkZGluZyB0aGUgc3dp
dGNoIHN0dWZmIHRvIHRoZSBtZmQvcmVhbHRlayxydGw5MzAxLXN3aXRjaC55YW1sDQo+IEkgdGhp
bmsgdGhhdCdzIHRoZSB3YXkgdG8gZ28uDQo+DQo+PiAtIG1vdmUgbWZkL3JlYWx0ZWsscnRsOTMw
MS1zd2l0Y2gueWFtbCB0byBuZXQvcmVhbHRlayxydGw5MzAxLXN3aXRjaC55YW1sDQo+IFRoaXMg
eW91IGNhbiBkbyBhbnl3YXkuIE1GRCBpbiBiaW5kaW5ncyBpcyByYXRoZXIgcGxhY2Vob2xkZXIg
Zm9yDQo+IGNvbXBsZXggZGV2aWNlcyB3aGVyZSB3ZSBjYW5ub3QgYXNzaWduIG9uZSwgY29tbW9u
IGZ1bmN0aW9uLiBJbiB5b3VyDQo+IGNhc2UgeW91IGNhbGwgaXQgc3dpdGNoLCBzbyBpdCBjb3Vs
ZCBiZSBwbGFjZWQgaW4gbmV0IGluIHRoZSBmaXJzdCBwbGFjZS4NCg0KRG9lcyB0aGF0IG1lYW4g
SSBzaG91bGQgbW92ZSBtZmQvcmVhbHRlayxydGw5MzAxLXN3aXRjaC55YW1sIHRvIA0KbmV0L3Jl
YWx0ZWsscnRsOTMwMS1zd2l0Y2gueWFtbCBhcy1pcz8gSSdkIGF0IGxlYXN0IGRvIGl0IGFzIGEg
c2VyaWVzIG9mIA0KZG9pbmcgdGhlIG1vdmUgdGhlbiBhZGRpbmcgdGhlIG1pc3Npbmcgc3dpdGNo
IGJpdHMuIEJ1dCBkb2VzIHRoYXQgDQphZGRyZXNzIHRoZSBjb25jZXJucyBvZiBtaXhpbmcgTU1J
Ty1saWtlIGNoaWxkcmVuIHdpdGggdGhpbmdzIHRoYXQgDQpkZWZpbml0ZWx5IGFyZW4ndD8NCg0K
Pj4gLSBrZWVwIG1mZC9yZWFsdGVrLHJ0bDkzMDEtc3dpdGNoLnlhbWwgd2l0aCB0aGUgaTJjIGFu
ZCByZWJvb3QgYnV0IGhhdmUNCj4+IGEgJHJlZiB0byBhIG5ldyBiaW5kaW5nIHVuZGVyIG5ldC8g
KG5vdCBzdXJlIHdoYXQgdGhhdCdkIGxvb2sgbGlrZSkuDQo+Pg0KPj4gVGhlcmUncyBvbmx5IG9u
ZSBpbi10cmVlIHVzZXIgb2YgdGhpcyBzbyBJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8gYmUgdG9v
DQo+PiBjb25jZXJuZWQgYWJvdXQgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkuIERvd25zdHJlYW0g
b3BlbndydCBoYW5kbGVzDQo+PiB0aGVzZSBkZXZpY2VzIHdheSBkaWZmZXJlbnRseSBhbHJlYWR5
Lg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg==

