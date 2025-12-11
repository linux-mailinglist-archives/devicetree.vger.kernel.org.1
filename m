Return-Path: <devicetree+bounces-245941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3193BCB6E05
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 19:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC2843010A9B
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 18:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C707C311C16;
	Thu, 11 Dec 2025 18:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hetzner.com header.i=@hetzner.com header.b="R7p0MsKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hetzner.company (mail.hetzner.company [213.133.106.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B351224249;
	Thu, 11 Dec 2025 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.133.106.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765476747; cv=none; b=QwVxG6d2TAoIeoFLXDBy4pe5lyPzwd0mUFlIORlZPlEHdWFGzQA7kXcEzvIH7f6k+oK8NH4ci11WbKVM6K5DTVpSgRGGi9dDVeY2fH3aN5bDuisQ0itbPt1QnU23OQtWbEZQFEy9ZWHY7XOCF8mUig9XXYxmVWJcZRtzswN8bQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765476747; c=relaxed/simple;
	bh=FIENHjUsMKXY3KBpx01vkwPfv6Og1xnR98Lo2lhSA/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RI73xql6gL8YBYxXNN7oBVUzuOwDK7nUMsRpg0nTfYTnsgNJTQ6JkJNOT3pVang0f0A9FFMGExbaDeXzMKLfUkuNVH8Omu7ziqBfWBbTkZKFRePma/x+u/wFhj9Tm4DMPM5Lcn9UTEDgWjz/WBJLvwsXEer8qwoUYWN4aHf6voQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hetzner.com; spf=pass smtp.mailfrom=hetzner.com; dkim=pass (2048-bit key) header.d=hetzner.com header.i=@hetzner.com header.b=R7p0MsKT; arc=none smtp.client-ip=213.133.106.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hetzner.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hetzner.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hetzner.com
	; s=lms2212; h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FIENHjUsMKXY3KBpx01vkwPfv6Og1xnR98Lo2lhSA/E=; b=R7p0MsKTAsOZtzwbK1l0TaGnKT
	89SdijZQ5Vjs1HBPKarAtPjfDVwPf/1A4WBGxzTGoasFzR8Htb5ajWkOPzTOBPcgBltlUxZyoBeKP
	mYyOzTubTIC2HEsgfdxBkwXZ1nO1f6/vHXIl1GrBD4l1bwVVbSai+4OKlDs03IZT1NhdyBMNhaGRK
	4ngYvkzVW9TP0UzOLn+RNIkqCBXKvnUe7IqyK9qsLwKwHA9WKL8PBSlDdr0lERhV+mmTQbIED1NOJ
	mAYkDRO37VR70iFAodratfZpgSviZ84/XCNdUHv2FDrSYY4RLJ98trdxcVLew43NhbYum6CIo/S69
	cN4n7QTQ==;
Received: from nbg1-vpn1-entry1.hetzner.company ([78.47.119.212] helo=[10.1.220.249])
	by mail.hetzner.company with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.94.2)
	(envelope-from <tan.siewert@hetzner.com>)
	id 1vTl9G-009ltc-2q; Thu, 11 Dec 2025 19:12:17 +0100
Message-ID: <9b58d801-43b5-4c5b-b734-a83c86912df4@hetzner.com>
Date: Thu, 11 Dec 2025 19:12:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add device tree for ASRock Rack ALTRAD8 BMC
Content-Language: en-GB
To: Rebecca Cran <rebecca@bsdio.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
References: <20251211165700.29206-1-rebecca@bsdio.com>
From: Tan Siewert <tan.siewert@hetzner.com>
Autocrypt: addr=tan.siewert@hetzner.com; keydata=
 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
Organization: Hetzner Cloud GmbH
In-Reply-To: <20251211165700.29206-1-rebecca@bsdio.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SR0WIWbru0jmTyipj2g0uCVZ"
X-Authenticated-Sender: tan.siewert@hetzner.com

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SR0WIWbru0jmTyipj2g0uCVZ
Content-Type: multipart/mixed; boundary="------------MVPbRcVvi0vUJF018cLkopuP";
 protected-headers="v1"
From: Tan Siewert <tan.siewert@hetzner.com>
To: Rebecca Cran <rebecca@bsdio.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
Message-ID: <9b58d801-43b5-4c5b-b734-a83c86912df4@hetzner.com>
Subject: Re: [PATCH v5 0/2] Add device tree for ASRock Rack ALTRAD8 BMC
References: <20251211165700.29206-1-rebecca@bsdio.com>
In-Reply-To: <20251211165700.29206-1-rebecca@bsdio.com>

--------------MVPbRcVvi0vUJF018cLkopuP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEuMTIuMjUgMTc6NTYsIFJlYmVjY2EgQ3JhbiB3cm90ZToNCj4gVGhlIEFTUm9jayBS
YWNrIEFMVFJBRDggQk1DIGlzIGFuIEFzcGVlZCBBU1QyNTAwLWJhc2VkIEJNQyBmb3IgdGhl
DQo+IEFMVFJBRDhVRC0xTDJUIGFuZCBBTFRSQUQ4VUQyLTFMMlEgYm9hcmRzIHdpdGggYW4g
QW1wZXJlIEFsdHJhDQo+IHByb2Nlc3Nvci4gVGhlIEJNQyBydW5zIE9wZW5CTUMuDQo+IA0K
PiBUaGVzZSBwYXRjaGVzIGFkZCBhIGRldmljZSB0cmVlIGFuZCBiaW5kaW5nIGZvciB0aGUg
Qk1DLg0KPiANCj4gKipDaGFuZ2VzIGJldHdlZW4gdjQgYW5kIHY1KioNCj4gDQo+IC0gUmVt
b3ZlZCB0aGUgdWFydHgtbW9kZTEgR1BJT3MsIHdoaWNoIHdlcmUgd3JvbmcuDQo+IC0gRml4
ZWQgYnV0dG9uLXBvd2VyLW4gR1BJTyBuYW1lLg0KPiAtIFJlbW92ZWQgYmFja3NsYXNoIGZy
b20gZW5kIG9mIGxpbmUsIHdoaWNoIGlzbid0IG5lZWRlZC4NCj4gLSBSZW1vdmVkIGR1cGxp
Y2F0ZS93cm9uZyBibWMgaGVhcnRiZWF0IEdQSU8uDQo+IA0KPiAqKlRlc3RpbmcqKg0KPiAN
Cj4gUmFuIGBtYWtlIEFSQ0g9YXJtIENIRUNLX0RUQlM9eSBhc3BlZWQvYXNwZWVkLWJtYy1h
c3JvY2stYWx0cmFkOC5kdGJgLg0KPiANCj4gDQo+IFJlYmVjY2EgQ3JhbiAoMik6DQo+ICAg
IGR0LWJpbmRpbmdzOiBhcm06IGFzcGVlZDogYWRkIEFTUm9jayBSYWNrIEFMVFJBRDggYm9h
cmQNCj4gICAgQVJNOiBkdHM6IGFzcGVlZDogYWRkIGRldmljZSB0cmVlIGZvciBBU1JvY2sg
UmFjayBBTFRSQUQ4IEJNQw0KPiANCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL2FzcGVlZC9hc3BlZWQueWFtbCB8ICAgMSArDQo+ICAgYXJjaC9hcm0vYm9v
dC9kdHMvYXNwZWVkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0K
PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC9hc3BlZWQtYm1jLWFzcm9jay1hbHRyYWQ4
LmR0cyAgIHwgNjI0ICsrKysrKysrKysrKysrKysrKysrDQo+ICAgMyBmaWxlcyBjaGFuZ2Vk
LCA2MjYgaW5zZXJ0aW9ucygrKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9i
b290L2R0cy9hc3BlZWQvYXNwZWVkLWJtYy1hc3JvY2stYWx0cmFkOC5kdHMNCj4gDQoNCkZv
ciB0aGUgc2VyaWVzLA0KDQpUZXN0ZWQtYnk6IFRhbiBTaWV3ZXJ0IDx0YW4uc2lld2VydEBo
ZXR6bmVyLmNvbT4NClJldmlld2VkLWJ5OiBUYW4gU2lld2VydCA8dGFuLnNpZXdlcnRAaGV0
em5lci5jb20+DQoNCk1hbnkgdGhhbmtzLCBSZWJlY2NhIQ0KDQotLSBUYW4NCg==

--------------MVPbRcVvi0vUJF018cLkopuP--

--------------SR0WIWbru0jmTyipj2g0uCVZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEGogUkqo1678CFZJAOx3dOtjZyWMFAmk7CX4FAwAAAAAACgkQOx3dOtjZyWP/
yRAA19XJ8k36sQFgG8FmQPxvXQ/Wb9NdTnswAkF1XRKq8jE0wo0u7fvk6ydoCDoweHB0Do3rxZ6P
ygrwjX9QVrmmJgak/Nc51TKyQdyz32AEdFQg9p/mfIEO3ItA82TMfQStr83v+sWWLJERTvXped1I
R201ncpft+nP4Nx9ncMpaa87s2nGCd0aRJggSmqp6lqWB/2GVhRFkP33nEJQDOAk2CeNpl7EqOwg
LceCKPXdANAocR8d9zB6RDPJ8vKxMtR89Pp0lcFFN18MjtMhvr+3kx1hhfghGOhJFquA2t/cX/5P
iVSNEnlgbHbWd3pPjNd6bT4FGFx0sHNF9tc1H3AFD+il2pYtydoNyC15C7hrRdaBudkjNsqgHZS+
zQEwMHOdCnt9iiuG4rSlF2Y4EHoTRcxImoc1EXxsRlSbNQiRGxTMOzlSXA3BqJEYRP6vW86y2Nmf
uT3ijmTMyeAW1pHarfVXsvxrjmVKf+aHsW9oQAuMX/ZMad0ASzy6LDiupx+vDAC+m6F0pAJMD9gT
h341ubwxa1n4RsRqWgpLs9Y7CsJL2FZIH8LmwSEMwztria7MH3fzCmpsHJeRVCmFnj4RdfvLyYWK
ElRXUb3M57KoZLRU5xPUVmW3Fg2FYwHkSOGVmqdHPAxLMHSMc1EI+rUgvuDkFCJ+bcbDXdJKOz06
Y7E=
=UO5c
-----END PGP SIGNATURE-----

--------------SR0WIWbru0jmTyipj2g0uCVZ--

