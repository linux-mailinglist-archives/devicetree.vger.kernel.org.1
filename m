Return-Path: <devicetree+bounces-244696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C800ECA7E4D
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0AD183037A1F
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B61E329378;
	Fri,  5 Dec 2025 14:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hetzner.com header.i=@hetzner.com header.b="C4kr3/MX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hetzner.company (mail.hetzner.company [213.133.106.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57694C9D;
	Fri,  5 Dec 2025 14:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.133.106.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764943711; cv=none; b=EdIHN6PF2dl5KvPCspsA03ifHHJoX93GX3GMFY35mbFwNh/AX2A41/w5nz39ya7/WGJLvF+P8/DTo4ftl7ICBFC1bGjYWE7vLEU8J0zLxevLr4PwOuTzn7kqS2BAQab1Kupi2L4dD+0T9IYIhkVvcLoRvBFGs+VHRxZBwsQMZeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764943711; c=relaxed/simple;
	bh=4VGNoc0X+amaG+Vf4liyINH5bYw87cv1QWYZ3H767n4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=tI6SgH7mLrollLT91r9LBqwiCAFe96NYcbwckU4AyUIeZz6O2b3aWve/yGf3SmoWnNePRQ8ejUUJ3Mh0tP4eF1bJw+BR85Q4vzB6co4AgRqC4hJ+sGxWmC+/dxBDIzJ5IFY0Da0hAe5zO3XzGyK7IB3KjbIN+H2+Sk28iNeNn/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hetzner.com; spf=pass smtp.mailfrom=hetzner.com; dkim=pass (2048-bit key) header.d=hetzner.com header.i=@hetzner.com header.b=C4kr3/MX; arc=none smtp.client-ip=213.133.106.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hetzner.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hetzner.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hetzner.com
	; s=lms2212; h=Content-Type:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4VGNoc0X+amaG+Vf4liyINH5bYw87cv1QWYZ3H767n4=; b=C4kr3/MXHHS8pNVsS+HYLhHZu5
	7seDZewlYAXCnIQGgF8P3GkVQh3W7cUzU+EZ/rEDdxOJQsnm/fWYF5MB5wQV/9U+ImHJUiqdrHexV
	03fekcok56mZL48UMvTNrH1edicNbFR9CAUR/gx8Fo38L2KStk/R2UcCfbPGE4BPIkaOcsfZSOneJ
	xq6PewMXoTiMhfxzYfZPfY2N5i4GsWbX6zWCegtyeVK/DPdIakCup/bEKglfBq1MUuNdZSi0ALXu3
	rpWqVLgoRDbUE7EdcPZQkb55Hc2bDg7+x7GLVHAFG4XPlazS+Kba2gcKVBvIqGKnn0zYcPAjiYxry
	tLAXG7IA==;
Received: from fsn1-vpn1-entry1.hetzner.company ([188.40.24.77] helo=[10.10.220.249])
	by mail.hetzner.company with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.94.2)
	(envelope-from <tan.siewert@hetzner.com>)
	id 1vRWTp-009Xor-77; Fri, 05 Dec 2025 15:08:17 +0100
Message-ID: <a8b5df46-edd1-4e35-a8d4-8842526df8d0@hetzner.com>
Date: Fri, 5 Dec 2025 15:08:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] ARM: dts: aspeed: add device tree for ASRock Rack
 ALTRAD8 BMC
Content-Language: en-GB
From: Tan Siewert <tan.siewert@hetzner.com>
To: Rebecca Cran <rebecca@bsdio.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
References: <20251204210238.40742-1-rebecca@bsdio.com>
 <20251204210238.40742-3-rebecca@bsdio.com>
 <aa75c5a4-27cf-4cc2-9851-07713999f469@hetzner.com>
Autocrypt: addr=tan.siewert@hetzner.com; keydata=
 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
Organization: Hetzner Cloud GmbH
In-Reply-To: <aa75c5a4-27cf-4cc2-9851-07713999f469@hetzner.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1FUsj50sBQSbEE06fOMSydYO"
X-Authenticated-Sender: tan.siewert@hetzner.com

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1FUsj50sBQSbEE06fOMSydYO
Content-Type: multipart/mixed; boundary="------------wU9zEc6hgvOoHr4mLXq6YeJX";
 protected-headers="v1"
From: Tan Siewert <tan.siewert@hetzner.com>
To: Rebecca Cran <rebecca@bsdio.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
Message-ID: <a8b5df46-edd1-4e35-a8d4-8842526df8d0@hetzner.com>
Subject: Re: [PATCH v3 2/3] ARM: dts: aspeed: add device tree for ASRock Rack
 ALTRAD8 BMC
References: <20251204210238.40742-1-rebecca@bsdio.com>
 <20251204210238.40742-3-rebecca@bsdio.com>
 <aa75c5a4-27cf-4cc2-9851-07713999f469@hetzner.com>
In-Reply-To: <aa75c5a4-27cf-4cc2-9851-07713999f469@hetzner.com>

--------------wU9zEc6hgvOoHr4mLXq6YeJX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDQuMTIuMjUgMjM6MjksIFRhbiBTaWV3ZXJ0IHdyb3RlOg0KPiBPbiAwNC4xMi4yNSAy
MjowMiwgUmViZWNjYSBDcmFuIHdyb3RlOg0KPj4gVGhlIEFMVFJBRDggQk1DIGlzIGFuIEFz
cGVlZCBBU1QyNTAwLWJhc2VkIEJNQyBmb3IgdGhlIEFTUm9jayBSYWNrDQo+PiBBTFRSQUQ4
VUQtMUwyVCBhbmQgQUxUUkFEOFVEMi0xTDJRIGJvYXJkcy4NCj4+DQo+PiBTaWduZWQtb2Zm
LWJ5OiBSZWJlY2NhIENyYW4gPHJlYmVjY2FAYnNkaW8uY29tPg0KPj4gLS0tDQo+PiDCoCBh
cmNoL2FybS9ib290L2R0cy9hc3BlZWQvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArDQo+PiDCoCBhcmNoL2FybS9ib290L2R0
cy9hc3BlZWQvYXNwZWVkLWJtYy1hc3JvY2stYWx0cmFkOC5kdHMgfCA2MTIgKysrKysrKyAN
Cj4+ICsrKysrKysrKysrKysNCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNjEzIGluc2VydGlv
bnMoKykNCg0KKnNuaXAqDQoNCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9h
c3BlZWQvYXNwZWVkLWJtYy1hc3JvY2stYWx0cmFkOC5kdHMgYi8gDQo+PiBhcmNoL2FybS9i
b290L2R0cy9hc3BlZWQvYXNwZWVkLWJtYy1hc3JvY2stYWx0cmFkOC5kdHMNCj4+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0DQo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjI2OTZhODY5MjYwNw0K
Pj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkL2Fz
cGVlZC1ibWMtYXNyb2NrLWFsdHJhZDguZHRzDQoNCipzbmlwKg0KDQo+PiArJmdwaW8gew0K
Pj4gK8KgwqDCoCBncGlvLWxpbmUtbmFtZXMgPQ0KPj4gK8KgwqDCoCAvKkEwLUE3Ki/CoMKg
wqAgIiIsIiIsIiIsImJtYy1yZWFkeSIsIiIsIiIsIiIsIiIsDQo+PiArwqDCoMKgIC8qQjAt
QjcqL8KgwqDCoCAiaTJjLWJhY2t1cC1zZWwiLCIiLCIiLCIiLCIiLCIiLCIiLCJob3N0MC1z
aGQtYWNrLW4iLA0KPj4gK8KgwqDCoCAvKkMwLUM3Ki/CoMKgwqAgIiIsIiIsIiIsIiIsIiIs
IiIsIiIsIiIsDQo+PiArwqDCoMKgIC8qRDAtRDcqL8KgwqDCoCAicG93ZXItYnV0dG9uIiwi
cG93ZXItb3V0IiwiYnV0dG9uLXJlc2V0IiwNCg0KSSBqdXN0IG5vdGljZWQgdGhhdCBJIG92
ZXJsb29rZWQgdGhlIHBvd2VyIGJ1dHRvbnMgaW4gbXkgcmVjZW50IHJldmlldy4NCg0KcG93
ZXItYnV0dG9uID0gYnV0dG9uLXBvd2VyLW4gKGFjdGl2ZSBsb3cpDQoNCnBvd2VyLW91dCA9
IGNvbnRyb2wtcG93ZXItbiAoYWN0aXZlIGxvdykNCg0KYnV0dG9uLXJlc2V0ID0gYnV0dG9u
LXJlc2V0LW4gKGFjdGl2ZSBsb3cpDQoNClRoZSBvdGhlciByZXZpZXcgY29tbWVudHMgcmVt
YWluLg0KDQotLSBUYW4NCg0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImhvc3QwLXN5
c3Jlc2V0LW4iLCIiLCIiLCJwb3dlci1jaGFzc2lzLWdvb2QiLCIiLA0KPj4gK8KgwqDCoCAv
KkUwLUU3Ki/CoMKgwqAgIiIsInMwLXZyZDEtdmRkcTAxMjMtZmF1bHQtbiIsDQo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAiczAtdnJkMS12ZGRxNDU2Ny1mYXVsdC1uIiwiczAtdnJk
MC12ZGRjLWZhdWx0LW4iLA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInMwLXZyZDMt
cDB2NzUtZmF1bHQtbiIsIiIsIiIsIiIsDQo+PiArwqDCoMKgIC8qRjAtRjcqL8KgwqDCoCAi
IiwiIiwicHMtYXR4LW9uLW4iLCIiLCIiLCIiLCIiLCIiLA0KPj4gK8KgwqDCoCAvKkcwLUc3
Ki/CoMKgwqAgImxlZC1pZGVudGlmeSIsImJ1dHRvbi1pZGVudGlmeSIsIiIsIiIsInVib290
LXJlYWR5IixcDQo+IA0KPiBgYnV0dG9uLWlkZW50aWZ5YCBzaG91bGQgYmUgYGJ1dHRvbi1p
ZGVudGlmeS1uYCAoYWN0aXZlLWxvdykuDQo+IA0KPiBgbGVkLXN5c3RlbS1mYXVsdC1uYCBp
cyBHUElPRzMuDQo+IA0KPiBgbGVkLWlkZW50aWZ5LW5gIF9jb3VsZF8gYmUgYXQgR1BJT1E2
IChzZWVtcyB0byBiZSB3aXJlZCB0byB0aGUgQ1BMRCAoPyEpKS4NCj4gDQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiYm1jLXNhbHQyLW4iLCIiLCIiLA0KPj4gK8KgwqDCoCAvKkgw
LUg3Ki/CoMKgwqAgInBzLXB3ci1vayIsInVhcnQxLW1vZGUxIiwidWFydDItbW9kZTEiLCJ1
YXJ0My1tb2RlMSIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidWFydDQtbW9kZTEi
LCIiLCJsZWQtYm1jLWhlYXJ0YmVhdCIsIiIsDQo+IA0KPiBHUElPSDYgaXMgYEJNQ19KVEFH
X1NFTF9TMGAuIFRoZSBgbGVkLWJtYy1oZWFyYmVhdC1uYCBzaG91bGQgYmUgR1BJT0cwLg0K
PiANCj4+ICvCoMKgwqAgLypJMC1JNyovwqDCoMKgICIiLCIiLCIiLCIiLCIiLCIiLCIiLCIi
LA0KPj4gK8KgwqDCoCAvKkowLUo3Ki/CoMKgwqAgInMwLWhpZ2h0ZW1wLW4iLCIiLCIiLCIi
LCIiLCIiLCIiLCIiLA0KPj4gK8KgwqDCoCAvKkswLUs3Ki/CoMKgwqAgIiIsIiIsIiIsIiIs
IiIsIiIsIiIsIiIsDQo+PiArwqDCoMKgIC8qTDAtTDcqL8KgwqDCoCAiIiwiIiwiIiwiIiwi
IiwiIiwiIiwiIiwNCj4+ICvCoMKgwqAgLypNMC1NNyovwqDCoMKgICIiLCIiLCIiLCIiLCIi
LCJzMC1zcGktYXV0aC1mYWlsLW4iLCIiLCIiLA0KPj4gK8KgwqDCoCAvKk4wLU43Ki/CoMKg
wqAgIiIsIiIsIiIsIiIsIiIsIiIsIiIsIiIsDQo+PiArwqDCoMKgIC8qTzAtTzcqL8KgwqDC
oCAiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwNCj4+ICvCoMKgwqAgLypQMC1QNyovwqDCoMKg
ICIiLCIiLCJjcGxkLWRpc2FibGUtYm1jIiwiIiwiIiwiIiwiIiwiIiwNCj4gDQo+IGBjcGxk
LWRpc2FibGUtYm1jYCBzaG91bGQgYmUgYGNwbGQtZGlzYWJsZS1ibWMtbmAgYW5kIGF0IEdQ
SU9NMCANCj4gKGBDUExEX0RJU0FCTEVfQk1DX0xgIGluIHNjaGVtYXRpYykuIEdQSU9QMiBp
cyBhIGZhbiB0YWNoby4NCj4gDQo+PiArwqDCoMKgIC8qUTAtUTcqL8KgwqDCoCAiIiwiIiwi
ZXh0LWhpZ2h0ZW1wLW4iLCIiLCIiLCIiLCIiLA0KPiANCj4gZG91YmxlIGFzc2lnbm1lbnQg
b2YgYGV4dC1oaWdodGVtcC1uYC4gQ29ycmVjdCBvbmUgaXMgR1BJT1IyLiBQbGVhc2UgDQo+
IHJlbW92ZSBpdC4NCj4gDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY2hhc3Npcy1p
bnRydXNpb24iLA0KPiANCj4gYGNoYXNzaXMtaW50cnVzaW9uLW5gIChhY3RpdmUtbG93KS4N
Cj4gDQo+PiArwqDCoMKgIC8qUjAtUjcqL8KgwqDCoCAiIiwiIiwiZXh0LWhpZ2h0ZW1wLW4i
LCJzcGkwLXByb2dyYW0tc2VsIiwiIiwNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJo
d20tYmF0LWVuIiwiIiwiIiwNCj4gDQo+IGBod20tYmF0LWVuYCBjb3VsZCBiZSBwcmVmaXhl
ZCB3aXRoIGBvdXRwdXQtYC4NCj4gDQo+PiArwqDCoMKgIC8qUzAtUzcqL8KgwqDCoCAiczAt
dnItaG90LW4iLCIiLCIiLCJibWMtc3lzcmVzZXQtbiIsIiIsIiIsIiIsIiIsDQo+IA0KPiBH
UElPUzIgKGBpbnB1dC1zYWx0NS1uYCkgX2NvdWxkXyBiZSB1c2VmdWwgKGNvbWVzIGZyb20g
dGhlIFg1NTAgZm9yIFdvTCANCj4gKGBMQU5fM1YzU1RCWV9BTFJUX05gIGluIHNjaGVtYXRp
YykpLg0KPiANCj4+ICvCoMKgwqAgLypUMC1UNyovwqDCoMKgICIiLCIiLCIiLCIiLCIiLCIi
LCIiLCIiLA0KPj4gK8KgwqDCoCAvKlUwLVU3Ki/CoMKgwqAgIiIsIiIsIiIsIiIsIiIsIiIs
IiIsIiIsDQo+PiArwqDCoMKgIC8qVjAtVjcqL8KgwqDCoCAiIiwiIiwiIiwiIiwiIiwiIiwi
IiwiIiwNCj4+ICvCoMKgwqAgLypXMC1XNyovwqDCoMKgICIiLCIiLCIiLCIiLCIiLCIiLCIi
LCIiLA0KPj4gK8KgwqDCoCAvKlgwLVg3Ki/CoMKgwqAgIiIsIiIsIiIsIiIsIiIsIiIsIiIs
IiIsDQo+PiArwqDCoMKgIC8qWTAtWTcqL8KgwqDCoCAic2lvLXMzIiwic2lvLXM1Iiwic2lv
LXB3ci1yZXEiLCJzaW8tb24tIA0KPj4gY3RybCIsIiIsIiIsIiIsIiIsDQo+PiArwqDCoMKg
IC8qWjAtWjcqL8KgwqDCoCAiIiwic2lvLXB3ci1nb29kIiwiIiwiczAtcnRjLWxvY2siLCIi
LCIiLCIiLCIiLA0KPiANCj4gU3lzdGVtIGhhcyBubyBTdXBlci1JTy4gUGxlYXNlIHJlbW92
ZSB0aGUgYHNpby1gIGFzc2lnbm1lbnRzLg0KPiANCj4+ICvCoMKgwqAgLypBQTAtQUE3Ki/C
oMKgwqAgInJ0Yy1pbnQiLCIiLCIiLCIiLCIiLCJwbWJ1cy1zZWwtbiIsIiIsIiIsDQo+IA0K
PiBgcnRjLWludGAgc2hvdWxkIGJlIGBzMC1ydGMtaW50LW5gLg0KPiANCj4+ICvCoMKgwqAg
LypBQjAtQUI3Ki/CoMKgwqAgImhvc3QwLXJlYm9vdC1hY2stbiIsInMwLXN5cy1hdXRoLWZh
aWx1cmUtbiIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwiIiwiIiwiIiwiIiwi
IiwNCj4+ICvCoMKgwqAgLypBQzAtQUM3Ki/CoMKgwqAgInMwLWZhdWx0LWFsZXJ0IiwiaG9z
dDAtcmVhZHkiLCJzMC1vdmVydGVtcC1uIiwNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICIiLCJibWMtb2siLCJob3N0MC1zcGVjaWFsLWJvb3QiLCJwcmVzZW5jZS1jcHUwIiwNCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJob3N0MC1zaGQtcmVxLW4iOw0KPj4gKw0KPj4g
K8KgwqDCoCBzdGF0dXMgPSAib2theSI7DQo+PiArfTsNCg0K

--------------wU9zEc6hgvOoHr4mLXq6YeJX--

--------------1FUsj50sBQSbEE06fOMSydYO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEGogUkqo1678CFZJAOx3dOtjZyWMFAmky50wFAwAAAAAACgkQOx3dOtjZyWPw
VA/7BZ7aig3+IXTaIkats5ko/1PK31gzMVkLzEF3mooTv8wL03J6Q8n5jbpWqSgh+oYzokipY3lh
y1wKGd6P4kIhkZ4sHtacT5e6Z2yoocHCqWNFM+pXxHvUvaZC6SwCS+RGZKulvEQutb6032BLU4WE
77rzsmMbJMmM2b4dLjB3rktXseVli+mnzVJWHjwOpoMuikYZChX+Sv3NX3+NLfOcjsQw0mWoEDc2
5iPw54xgOmhklfcwrDfMWBosxOvEQqbvRcTDxxhTTgkWMOHUzFiSLuV7Ik7a/8Pg8r1TGLuFpYtw
XA8JDZBy2W4Xx9vMYUu4RSv3CtXymTUqyYIFlpcxwYWnQ2+sUFeJ0YkbMZCBDwb3i/sxwibBOC+Q
ahjihNEjD5grdb7JMPFSUKqt7EU0pCV101+Mmrqat2Yyiyb8wtB8kTMQYlYDo++hrpO9HbGw6G1K
HZILGPyNF1C29+n2IpAsZZJaux9bJ/Evm8K4mx0FqIE0EAaVgbT3156R5DAC5/L4zPhMYMNlkoDl
NVRaBQxRNk9iT9a6S592mglxJovhFchwxD0OV4/wP7pNsiHTizJd0cCFpeAmccqLpITvhQT3PaKD
GswpcOW/vO5EZRaXMd/5bzSdytYkSbzVnXoTRDC01Ptme6E2nHGJG7p7gThHvMJg4X1o4o3xfgwD
mnw=
=kIXt
-----END PGP SIGNATURE-----

--------------1FUsj50sBQSbEE06fOMSydYO--

