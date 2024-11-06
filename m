Return-Path: <devicetree+bounces-119560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B679BF24B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 16:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC288283BF8
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 15:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9B5202F69;
	Wed,  6 Nov 2024 15:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b="GKZH8J+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.securetransport.de (mx3.securetransport.de [116.203.31.6])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DA7190075
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.31.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730908618; cv=none; b=DAWdsZpDYNSXcFovaclu9xOjyyCefYc0F/BJg3IRVJSr4ImNOlIV7lMLwxHj+X2zzT1Lq8sbILWGhIj2zrkdtBbuhbJ53Do3uxB+NhuJK3OrihC4VJsimsObvp9H8BJxZj86qfv2gE8YJca8PKCkrxIMsY5GmxkzGr0+cSWJGr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730908618; c=relaxed/simple;
	bh=SUpD/adQtI0xP3Z1yxQhyvJ0tZgMbldcwT+hDS7al44=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=Hg+109nda83Xot5hahhgjvAXPq00o21xsrKrfK+eSmJLGgf5p39HL5ZH6L2YKVYH2EeLadFjh+trqEBnFx5DYM16Bv+ibrFue8pxGECzRjPi5wS1appUGXnxNVqYpCxzjKe9VOVufKN15qrKbdpPiwbBsvg/yOfXYkRkwDdFd6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dh-electronics.com; spf=pass smtp.mailfrom=dh-electronics.com; dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b=GKZH8J+C; arc=none smtp.client-ip=116.203.31.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dh-electronics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dh-electronics.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
	s=dhelectronicscom; t=1730907995;
	bh=SUpD/adQtI0xP3Z1yxQhyvJ0tZgMbldcwT+hDS7al44=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=GKZH8J+CWD9n4KGgUxQjBUJ9zbTEmLJo0ZN15EQ1OU5WE9/3xZYSqjYouGrDUc+m3
	 jgz1UH0MMhXmeggB+DvW4IvgBYMU7Bm44/n9j6kXymm5jF9HOu1E58ciljEiuJWYru
	 6d1BditNMtUF90cSnHyzoGyjGC3iKh81vYu5mtaqGTh/FS8dB4JtNRs9vW6NXFxb2y
	 48pWo4OsCfWBUy7/rhnEG6PLKKs96rwfm4zE6OEvWG97s/8L3xW8ndXKP4AyZd/ekQ
	 1o6cT1ZQ+sLymt9Dn37y6o2xU08rE4FWgCy+38DlnZNyVkW6XMWg4+z3DFX64dGpOT
	 Xam3zz1cpC5NQ==
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley
	<conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, kernel
	<kernel@dh-electronics.com>, "linux-stm32@st-md-mailman.stormreply.com"
	<linux-stm32@st-md-mailman.stormreply.com>
Subject: RE: [PATCH] ARM: dts: stm32: Deduplicate serial aliases and chosen
 node for STM32MP15xx DHCOM SoM
Thread-Topic: [PATCH] ARM: dts: stm32: Deduplicate serial aliases and chosen
 node for STM32MP15xx DHCOM SoM
Thread-Index: AQHbL9rCDR++m5XnwEia1oSEi4J2B7KqZhfA
Date: Wed, 6 Nov 2024 15:46:32 +0000
Message-ID: <c4e579b989ed4a93bf6270175abd1869@dh-electronics.com>
References: <20241105233026.161463-1-marex@denx.de>
In-Reply-To: <20241105233026.161463-1-marex@denx.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBO
b3ZlbWJlciA2LCAyMDI0IDEyOjMwIEFNDQo+IERlZHVwbGljYXRlIC9hbGlhc2VzIHsgc2VyaWFs
TiA9IC4uLiB9IGFuZCAvY2hvc2VuIG5vZGUgaW50bw0KPiBzdG0zMm1wMTV4eC1kaGNvbS1zb20u
ZHRzaSAsIHNpbmNlIHRoZSBjb250ZW50IGlzIGlkZW50aWNhbA0KPiBvbiBhbGwgY2FycmllciBi
b2FyZHMgdXNpbmcgdGhlIFNUTTMyTVAxNXh4IERIQ09NIFNvTS4gTm8NCj4gZnVuY3Rpb25hbCBj
aGFuZ2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4N
Cj4gLS0tDQo+IENjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3Qu
Y29tPg0KPiBDYzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPg0KPiBDYzogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPg0KPiBDYzogTWF4aW1lIENvcXVl
bGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPg0KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4NCj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnDQo+IENjOiBrZXJu
ZWxAZGgtZWxlY3Ryb25pY3MuY29tDQo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcNCj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20N
Cj4gLS0tDQo+ICBhcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4eC1kaGNvbS1kcmMwMi5k
dHNpICAgfCAxMiAtLS0tLS0tLS0tLS0NCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAx
NXh4LWRoY29tLXBkazIuZHRzaSAgICB8IDEwIC0tLS0tLS0tLS0NCj4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXBpY29pdHguZHRzaSB8IDEwIC0tLS0tLS0tLS0NCj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXNvbS5kdHNpICAgICB8ICA3
ICsrKysrKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4
eC1kaGNvbS1kcmMwMi5kdHNpDQo+IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1eHgt
ZGhjb20tZHJjMDIuZHRzaQ0KPiBpbmRleCBiYjRmOGEwYjkzN2YzLi5hYmUyZGZlNzA2MzY0IDEw
MDY0NA0KPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4eC1kaGNvbS1kcmMw
Mi5kdHNpDQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLWRy
YzAyLmR0c2kNCj4gQEAgLTYsMTggKzYsNiBAQA0KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
cHV0L2lucHV0Lmg+DQo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcHdtL3B3bS5oPg0KPiANCj4g
LS8gew0KPiAtICAgICAgIGFsaWFzZXMgew0KPiAtICAgICAgICAgICAgICAgc2VyaWFsMCA9ICZ1
YXJ0NDsNCj4gLSAgICAgICAgICAgICAgIHNlcmlhbDEgPSAmdXNhcnQzOw0KPiAtICAgICAgICAg
ICAgICAgc2VyaWFsMiA9ICZ1YXJ0ODsNCj4gLSAgICAgICB9Ow0KPiAtDQo+IC0gICAgICAgY2hv
c2VuIHsNCj4gLSAgICAgICAgICAgICAgIHN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgi
Ow0KPiAtICAgICAgIH07DQo+IC19Ow0KPiAtDQo+ICAmYWRjIHsNCj4gICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOw0KPiAgfTsNCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0
L3N0bTMybXAxNXh4LWRoY29tLXBkazIuZHRzaQ0KPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0
bTMybXAxNXh4LWRoY29tLXBkazIuZHRzaQ0KPiBpbmRleCAxNzFkN2M3NjU4ZmE4Li4wZmI0ZTU1
ODQzYjlkIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4eC1k
aGNvbS1wZGsyLmR0c2kNCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1eHgt
ZGhjb20tcGRrMi5kdHNpDQo+IEBAIC03LDE2ICs3LDYgQEANCj4gICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9wd20vcHdtLmg+DQo+IA0KPiAgLyB7DQo+IC0gICAgICAgYWxpYXNlcyB7DQo+IC0gICAg
ICAgICAgICAgICBzZXJpYWwwID0gJnVhcnQ0Ow0KPiAtICAgICAgICAgICAgICAgc2VyaWFsMSA9
ICZ1c2FydDM7DQo+IC0gICAgICAgICAgICAgICBzZXJpYWwyID0gJnVhcnQ4Ow0KPiAtICAgICAg
IH07DQo+IC0NCj4gLSAgICAgICBjaG9zZW4gew0KPiAtICAgICAgICAgICAgICAgc3Rkb3V0LXBh
dGggPSAic2VyaWFsMDoxMTUyMDBuOCI7DQo+IC0gICAgICAgfTsNCj4gLQ0KPiAgICAgICAgIGNs
a19leHRfYXVkaW9fY29kZWM6IGNsb2NrLWNvZGVjIHsNCj4gICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiZml4ZWQtY2xvY2siOw0KPiAgICAgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0g
PDA+Ow0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1eHgtZGhj
b20tcGljb2l0eC5kdHNpDQo+IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1eHgtZGhj
b20tcGljb2l0eC5kdHNpDQo+IGluZGV4IGI1YmM1M2FjY2Q2YjIuLjAxYzY5M2NjMDM0NDYgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXBpY29p
dHguZHRzaQ0KPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4eC1kaGNvbS1w
aWNvaXR4LmR0c2kNCj4gQEAgLTcsMTYgKzcsNiBAQA0KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L3B3bS9wd20uaD4NCj4gDQo+ICAvIHsNCj4gLSAgICAgICBhbGlhc2VzIHsNCj4gLSAgICAgICAg
ICAgICAgIHNlcmlhbDAgPSAmdWFydDQ7DQo+IC0gICAgICAgICAgICAgICBzZXJpYWwxID0gJnVz
YXJ0MzsNCj4gLSAgICAgICAgICAgICAgIHNlcmlhbDIgPSAmdWFydDg7DQo+IC0gICAgICAgfTsN
Cj4gLQ0KPiAtICAgICAgIGNob3NlbiB7DQo+IC0gICAgICAgICAgICAgICBzdGRvdXQtcGF0aCA9
ICJzZXJpYWwwOjExNTIwMG44IjsNCj4gLSAgICAgICB9Ow0KPiAtDQo+ICAgICAgICAgbGVkIHsN
Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsNCj4gDQo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1wMTV4eC1kaGNvbS1zb20uZHRzaQ0K
PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXNvbS5kdHNpDQo+IGlu
ZGV4IDc0YTExY2NjNTMzM2YuLjA4NmQzYTYwY2NjZTIgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXNvbS5kdHNpDQo+ICsrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0L3N0bTMybXAxNXh4LWRoY29tLXNvbS5kdHNpDQo+IEBAIC0xNCw2ICsxNCwx
MyBAQCBhbGlhc2VzIHsNCj4gICAgICAgICAgICAgICAgIGV0aGVybmV0MSA9ICZrc3o4ODUxOw0K
PiAgICAgICAgICAgICAgICAgcnRjMCA9ICZod3J0YzsNCj4gICAgICAgICAgICAgICAgIHJ0YzEg
PSAmcnRjOw0KPiArICAgICAgICAgICAgICAgc2VyaWFsMCA9ICZ1YXJ0NDsNCj4gKyAgICAgICAg
ICAgICAgIHNlcmlhbDEgPSAmdXNhcnQzOw0KPiArICAgICAgICAgICAgICAgc2VyaWFsMiA9ICZ1
YXJ0ODsNCj4gKyAgICAgICB9Ow0KPiArDQo+ICsgICAgICAgY2hvc2VuIHsNCj4gKyAgICAgICAg
ICAgICAgIHN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOw0KPiAgICAgICAgIH07DQo+
IA0KPiAgICAgICAgIG1lbW9yeUBjMDAwMDAwMCB7DQoNClJldmlld2VkLWJ5OiBDaHJpc3RvcGgg
TmllZGVybWFpZXIgPGNuaWVkZXJtYWllckBkaC1lbGVjdHJvbmljcy5jb20+DQo=

