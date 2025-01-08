Return-Path: <devicetree+bounces-136351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA24FA04E1A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A82B1886ED3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C1F5684;
	Wed,  8 Jan 2025 00:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Jtms8Rdj"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18F5228;
	Wed,  8 Jan 2025 00:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736296240; cv=none; b=SoVzJ6jOLlepYCj7EWXh2DtvT8mdm+w7HYoHtZrBgWKJi1rALvLEOrP5YHinKcnCbw7Asnih1prPBL5/ZlkqqtM+u5xGGhW8dHtdvkEuql+Gcax8qd+jTeRXGyuWAgvfkHu+asK+HUMZ3oyK4+CdoQIYgligs3JLO04UCS4E/tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736296240; c=relaxed/simple;
	bh=vx9EdJsNBcRIpz/ADVbnPQyQLhZV+V1R6yfVIWa60vw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KlEJ43cBVWWrog0Tuktc0Zjyxca4mBGFWtJ21q6QGgkvBeXK4vhBIf86bKNZSnEkONEBYU7tcb87H23DyfX9l6GlipCV0wIbqyzPv3KQM0fi5Lo1I5cnasQDXodSiUKCXIyKt4UhitvS7CkegKn5jBV4WIsiCKqqVB3LTeKjOaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Jtms8Rdj; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1736296236;
	bh=vx9EdJsNBcRIpz/ADVbnPQyQLhZV+V1R6yfVIWa60vw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Jtms8RdjwKm/KLZV7eXQhHgkPq5ONs3LP5R2RBqkaJUL1Rq4h7bB+IjQsAEIaS/cf
	 8KObp78BnCS+z+UvbWP7i8Tv/UF6I4p2rimJ1yFRKRnkCdYNjlJ/hLPZmITF7VJ5Pp
	 8eTIauA0372S3VD0riVvzVKQc/r4faMWbm3ID/4lQIhMdvoj+B//sYWffvxmH74yQs
	 o/o2X8abIYRJwok0Wu832CNuipDEh8LbdGyhUpRxQ4SKzMeJHXJkLK38n6sV5XYuPa
	 cirPCuYjBo35fm64HQDeN1GGw0Ou1ErdChk4tyh/vFuyfjcu8tOguM+LWA+sa0ChXJ
	 LZboxPuE10QhA==
Received: from [192.168.68.112] (ppp118-210-64-24.adl-adc-lon-bras32.tpg.internode.on.net [118.210.64.24])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3641C70801;
	Wed,  8 Jan 2025 08:30:36 +0800 (AWST)
Message-ID: <a180245323d06ce09697abb1ee9e83cc66e73db1.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite4: adjust secondary flash name
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Date: Wed, 08 Jan 2025 11:00:35 +1030
In-Reply-To: <Z31VRZg2LTd36S4n@heinlein>
References: <20241218212458.3050775-1-patrick@stwcx.xyz>
	 <e3279e0c41259f165a0cde0195b196f416ac566a.camel@codeconstruct.com.au>
	 <Z31VRZg2LTd36S4n@heinlein>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

T24gVHVlLCAyMDI1LTAxLTA3IGF0IDExOjI0IC0wNTAwLCBQYXRyaWNrIFdpbGxpYW1zIHdyb3Rl
Ogo+IE9uIFR1ZSwgSmFuIDA3LCAyMDI1IGF0IDAzOjQ0OjA0UE0gKzEwMzAsIEFuZHJldyBKZWZm
ZXJ5IHdyb3RlOgo+ID4gCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Rh
dHVzID0gIm9rYXkiOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG0yNXAs
ZmFzdC1yZWFkOwo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAi
Ym1jMiI7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJhbHQt
Ym1jIjsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzcGktcngtYnVzLXdp
ZHRoID0gPDQ+Owo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNwaS1tYXgt
ZnJlcXVlbmN5ID0gPDUwMDAwMDAwPjsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH07Cj4gPiAKPiA+
IEknbSBoaXR0aW5nIGNvbmZsaWN0cyAoPykgd2hlbiBJIGFwcGx5IHRoaXMgb24gdG9wIG9mWzFd
LiBEbyB5b3UKPiA+IG1pbmQKPiA+IHJlYmFzaW5nIGl0Pwo+ID4gCj4gPiBbMV06IGh0dHBzOi8v
Z2l0aHViLmNvbS9hbWJvYXIvbGludXgvdHJlZS9mb3IvYm1jL2FzcGVlZC9kdAo+IAo+IFN1cmUu
wqAgSXQgbG9va3MgbGlrZSBzb21lb25lIGVsc2V3aGVyZSBjaGFuZ2VkIHRoZSBzcGktcngtYnVz
LXdpZHRoCj4gd2hpY2ggaXMgY2F1c2luZyB0aGUgY29uZmxpY3QuwqAgSSdsbCByZXNlbnQgYSBy
ZWJhc2UuCj4gCj4gSSdkIGxpa2UgdGhpcyBiYWNrcG9ydGVkIHRvIHRoZSBvcGVuYm1jIHRyZWUg
YWxzby7CoCBOb3Qgc3VyZSB3aGljaAo+IHZlcnNpb24gaXMgYmVzdCBmb3IgdGhhdCB0cmVlIHJp
Z2h0IG5vdy4KPiAKCkkndmUgYXBwbGllZCB0aGUgcmViYXNlZCBwYXRjaCB0byBib3RoICh0aGUg
YmFja3BvcnQgZGlkbid0IGNvbmZsaWN0KS4KCkFuZHJldwo=


