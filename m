Return-Path: <devicetree+bounces-271334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA5KNkT1qGmfzgAAu9opvQ
	(envelope-from <devicetree+bounces-271334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:15:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0929F20A777
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9DDE301725D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5221AF4D5;
	Thu,  5 Mar 2026 03:15:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [4.193.249.245])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311EF272801;
	Thu,  5 Mar 2026 03:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=4.193.249.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772680510; cv=none; b=QHWpklsh+s3MhZaVNrpzo+EKCfC3gqgOtxQYZaH9WrRLB2aMxgep+KsxV9Xj88XKouHCGgpkQ9/ETZ/AAJpXbQS79PDHZMtgJF1WlAsgml1KnH42AlIuJ5jCKPLtEsnmF/9GkZTPNSUU+z7uxNzQHPd199SDf20rMy3UV/u3K9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772680510; c=relaxed/simple;
	bh=LtpXm0Vo23Op9wGeT+JNCJQzvxXXYR/pBZOkfiYuluQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=QFUTaxo2J170GYlSU8VYRz5ocy9AQGlUc+WMnNNz+ZW6zA+na9FbvKTjoXEPRDFXcA3gqhl7CN60lIYvoLtp6KfSCe3u7NGuCy6xsmzs+pqa/zpp5LK+5cc0Pzp4knt/IODDWHlScjm+ILinfde2er01pDC5tQBbCBRuvLvBGaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=4.193.249.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from linmin$eswincomputing.com ( [10.10.96.205] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 5 Mar 2026 11:14:46 +0800 (GMT+08:00)
Date: Thu, 5 Mar 2026 11:14:46 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Min Lin" <linmin@eswincomputing.com>
To: "Bo Gan" <ganboing@gmail.com>
Cc: "Yulin Lu" <luyulin@eswincomputing.com>, vkoul@kernel.org,
	neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	fenglin@eswincomputing.com
Subject: Re: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the
 EIC7700 SoC SATA PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
 <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3183d6e5.3d91.19cbbfda018.Coremail.linmin@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TQJkCgDH3aAm9ahpqscFAA--.1438W
X-CM-SenderInfo: 5olqzx3q6h245lqf0zpsxwx03jof0z/1tbiAgERCWmoXwcNewAAs0
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Queue-Id: 0929F20A777
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271334-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.931];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linmin@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:email,devicetree.org:url]
X-Rspamd-Action: no action

SGkgQm8gR2FuLAoKVG8gbWFrZSBTQVRBLCBVU0Igd29yaywgdGhlIEhTUCBjbG9jayZyZXNldCBk
cml2ZXIgaXMgbmVlZGVkLiBXZSdyZSBkb2luZyB0aGUgdXBzdHJlYW1pbmcgZm9yIHRoaXMgZHJp
dmVyLgpIZXJlIGlzIGEgZHJhZnQgZm9yIHlvdXIgcmVmZXJlbmNlLCBpdCBoYXMgYmVlbiB2ZXJp
ZmllZCB3aXRoIGxhdGVzdCB2MTUgY2xvY2sgcGF0Y2hzZXQgb24gb3VyIHNpdGU6ClsxXUhTUCBj
bG9jayBhbmQgcmVzZXQgZ2VuZXJhdG9yOiBodHRwczovL2dpdGh1Yi5jb20vZXN3aW5jb21wdXRp
bmcvbGludXgtbmV4dC9wdWxsLzIzClsyXVNBVEEgZHRzIG5vZGUgZXhhbXBsZTogaHR0cHM6Ly9n
aXRodWIuY29tL2Vzd2luY29tcHV0aW5nL2xpbnV4LW5leHQvcHVsbC8yNAoKUmVnYXJkcywKTGlu
IE1pbgoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2VzLS0tLS0KPiBGcm9tOiAiQm8gR2FuIiA8Z2Fu
Ym9pbmdAZ21haWwuY29tPgo+IFNlbmQgdGltZTpUdWVzZGF5LCAwMy8wMy8yMDI2IDE5OjQ2OjI1
Cj4gVG86ICJZdWxpbiBMdSIgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPiwgdmtvdWxAa2Vy
bmVsLm9yZywgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZywgcm9iaEBrZXJuZWwub3JnLCBrcnpr
K2R0QGtlcm5lbC5vcmcsIGNvbm9yK2R0QGtlcm5lbC5vcmcsIHAuemFiZWxAcGVuZ3V0cm9uaXgu
ZGUsIGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnLCBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZywgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+IENjOiBuaW5neXVAZXN3aW5jb21w
dXRpbmcuY29tLCBsaW5taW5AZXN3aW5jb21wdXRpbmcuY29tLCBmZW5nbGluQGVzd2luY29tcHV0
aW5nLmNvbQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjkgMS8yXSBkdC1iaW5kaW5nczogcGh5OiBl
c3dpbjogRG9jdW1lbnQgdGhlIEVJQzc3MDAgU29DIFNBVEEgUEhZCj4gCj4gSGkgWXVsaW4sCj4g
Cj4gQ2FuIHlvdXIgdGVhbSBzaGFyZSB0aGUgZHQgYW5kIGRyaXZlciBmb3IgJmhzcGNyZz8gSSB3
YW50IHRvIGRvIHNvbWUKPiB0ZXN0aW5nIHdpdGggeW91ciBsYXRlc3QgdjE1IGNsb2NrIHBhdGNo
c2V0IG9uIG15IFA1NTAgdy8gU0FUQS4gVy9vCj4gJmhzcGNyZywgdGhlIFNBVEEgcGh5IGNhbid0
IGJlIGVuYWJsZWQsIGhlbmNlIFNBVEEgZHJpdmUgZG9lc24ndCB3b3JrLgo+IAo+IEJvCj4gCj4g
T24gMi81LzI2IDAwOjIxLCBZdWxpbiBMdSB3cm90ZToKPiA+IERvY3VtZW50IHRoZSBTQVRBIFBI
WSBvbiB0aGUgRUlDNzcwMCBTb0MgcGxhdGZvcm0sCj4gPiBkZXNjcmliaW5nIGl0cyB1c2FnZS4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogWXVsaW4gTHUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcu
Y29tPgo+ID4gLS0tCj4gPiAgIC4uLi9iaW5kaW5ncy9waHkvZXN3aW4sZWljNzcwMC1zYXRhLXBo
eS55YW1sICB8IDkyICsrKysrKysrKysrKysrKysrKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDky
IGluc2VydGlvbnMoKykKPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvZXN3aW4sZWljNzcwMC1zYXRhLXBoeS55YW1sCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Vzd2lu
LGVpYzc3MDAtc2F0YS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvZXN3aW4sZWljNzcwMC1zYXRhLXBoeS55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5mYzdkYmFjNzdhY2YKPiA+IC0tLSAvZGV2L251bGwK
PiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZXN3aW4sZWlj
NzcwMC1zYXRhLXBoeS55YW1sCj4gPiBAQCAtMCwwICsxLDkyIEBACj4gPiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQo+ID4gKyVZQU1MIDEu
Mgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2Vz
d2luLGVpYzc3MDAtc2F0YS1waHkueWFtbCMKPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ICsKPiA+ICt0aXRsZTogRXN3aW4gRUlD
NzcwMCBTb0MgU0FUQSBQSFkKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gWXVsaW4g
THUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgo+ID4gKyAgLSBIdWFuIEhlIDxoZWh1YW4x
QGVzd2luY29tcHV0aW5nLmNvbT4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0
aWJsZToKPiA+ICsgICAgY29uc3Q6IGVzd2luLGVpYzc3MDAtc2F0YS1waHkKPiA+ICsKPiA+ICsg
IHJlZzoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGNsb2NrczoKPiA+ICsgICAg
bWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICBjb25zdDogcGh5
Cj4gPiArCj4gPiArICByZXNldHM6Cj4gPiArICAgIG1heEl0ZW1zOiAyCj4gPiArCj4gPiArICBy
ZXNldC1uYW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogcG9ydAo+ID4g
KyAgICAgIC0gY29uc3Q6IHBoeQo+ID4gKwo+ID4gKyAgZXN3aW4sdHgtYW1wbGl0dWRlLXR1bmlu
ZzoKPiA+ICsgICAgZGVzY3JpcHRpb246IFRoaXMgYWRqdXN0cyB0aGUgdHJhbnNtaXR0ZXIgYW1w
bGl0dWRlIHNpZ25hbCwgYW5kIGl0cyB2YWx1ZQo+ID4gKyAgICAgIGlzIGRlcml2ZWQgZnJvbSBl
eWUgZGlhZ3JhbSB0dW5pbmcuIFRoZSB0aHJlZSB2YWx1ZXMgY29ycmVzcG9uZCB0byBHZW4xLAo+
ID4gKyAgICAgIEdlbjIsIGFuZCBHZW4zIHBhcmFtZXRlcnMgcmVzcGVjdGl2ZWx5Lgo+ID4gKyAg
ICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPiA+
ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogR2VuMSBwYXJhbWV0ZXIuCj4g
PiArICAgICAgICBtaW5pbXVtOiAwCj4gPiArICAgICAgICBtYXhpbXVtOiAweDdmCj4gPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogR2VuMiBwYXJhbWV0ZXIuCj4gPiArICAgICAgICBtaW5pbXVtOiAw
Cj4gPiArICAgICAgICBtYXhpbXVtOiAweDdmCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogR2Vu
MyBwYXJhbWV0ZXIuCj4gPiArICAgICAgICBtaW5pbXVtOiAwCj4gPiArICAgICAgICBtYXhpbXVt
OiAweDdmCj4gPiArICAgIGRlZmF1bHQ6IFswLCAwLCAwXQo+ID4gKwo+ID4gKyAgZXN3aW4sdHgt
cHJlZW1waC10dW5pbmc6Cj4gPiArICAgIGRlc2NyaXB0aW9uOiBUaGlzIGFkanVzdHMgdGhlIHRy
YW5zbWl0dGVyIGRlLWVtcGhhc2lzIHNpZ25hbCwgYW5kIGl0cyB2YWx1ZQo+ID4gKyAgICAgIGlz
IGRlcml2ZWQgZnJvbSBleWUgZGlhZ3JhbSB0dW5pbmcuIFRoZSB0aHJlZSB2YWx1ZXMgY29ycmVz
cG9uZCB0byBHZW4xLAo+ID4gKyAgICAgIEdlbjIsIGFuZCBHZW4zIHBhcmFtZXRlcnMgcmVzcGVj
dGl2ZWx5Lgo+ID4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91
aW50MzItYXJyYXkKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogR2Vu
MSBwYXJhbWV0ZXIuCj4gPiArICAgICAgICBtaW5pbXVtOiAwCj4gPiArICAgICAgICBtYXhpbXVt
OiAweDNmCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogR2VuMiBwYXJhbWV0ZXIuCj4gPiArICAg
ICAgICBtaW5pbXVtOiAwCj4gPiArICAgICAgICBtYXhpbXVtOiAweDNmCj4gPiArICAgICAgLSBk
ZXNjcmlwdGlvbjogR2VuMyBwYXJhbWV0ZXIuCj4gPiArICAgICAgICBtaW5pbXVtOiAwCj4gPiAr
ICAgICAgICBtYXhpbXVtOiAweDNmCj4gPiArICAgIGRlZmF1bHQ6IFswLCAwLCAwXQo+ID4gKwo+
ID4gKyAgIiNwaHktY2VsbHMiOgo+ID4gKyAgICBjb25zdDogMAo+ID4gKwo+ID4gK3JlcXVpcmVk
Ogo+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiArICAtIHJlZwo+ID4gKyAgLSBjbG9ja3MKPiA+ICsg
IC0gY2xvY2stbmFtZXMKPiA+ICsgIC0gcmVzZXRzCj4gPiArICAtIHJlc2V0LW5hbWVzCj4gPiAr
ICAtICIjcGh5LWNlbGxzIgo+ID4gKwo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+
ID4gKwo+ID4gK2V4YW1wbGVzOgo+ID4gKyAgLSB8Cj4gPiArICAgIHNhdGEtcGh5QDUwNDQwMzAw
IHsKPiA+ICsgICAgICAgIGNvbXBhdGlibGUgPSAiZXN3aW4sZWljNzcwMC1zYXRhLXBoeSI7Cj4g
PiArICAgICAgICByZWcgPSA8MHg1MDQ0MDMwMCAweDQwPjsKPiA+ICsgICAgICAgIGNsb2NrcyA9
IDwmaHNwY3JnIDE3PjsKPiA+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeSI7Cj4gPiArICAg
ICAgICByZXNldHMgPSA8JmhzcGNyZyAwPiwgPCZoc3BjcmcgMT47Cj4gPiArICAgICAgICByZXNl
dC1uYW1lcyA9ICJwb3J0IiwgInBoeSI7Cj4gPiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+
ID4gKyAgICB9Owo=

