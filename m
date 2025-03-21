Return-Path: <devicetree+bounces-159492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8896A6B297
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 02:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C51B63A5684
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 01:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A37011CAF;
	Fri, 21 Mar 2025 01:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="CF9LrEaW"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912507E1;
	Fri, 21 Mar 2025 01:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742519848; cv=none; b=OU1cz+Z9ckpnS3fEUZ+D6vPFpjMGVCVrKskr5zA4J+Mn0sZICVWhDVa3nSbUeMw5vqTun4CGLb3G7sIDRuiUUjUKqv4A4hoyct43p/ey9ouFHjL0DnBnlHwmnJaSA1TeVDgA+CK84fFFrPdiXXxpKfIZ67C5gdh0AUzyU+SGJQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742519848; c=relaxed/simple;
	bh=3gAbyuISuqa5pnBiQR//72WrRmt0RCFEDOdo2QdTYT0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=j4BvSAol2oHR8YxcPnFbLH8eh/FJ35KOpp+d2mEGhsMpq+EjkTEwVVg0mNfzWcgLpTQujucDdEpL7J+zzvkri/UPt7rQUSa2h5EG83FCxXPvip9a9YYxt9AmyJJLdPueIiYQ9lHRKLfiyujhiiXqYODPyF619DjFUyof5B7fPaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=CF9LrEaW; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1742519844;
	bh=3gAbyuISuqa5pnBiQR//72WrRmt0RCFEDOdo2QdTYT0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=CF9LrEaW73SSkAvONjb7ZeJumWBWYxoLQjntgCqAddTkQMb+6W3Ef9L9xMutrChWF
	 4M3NhEapu1XqbGp4r43Mk9FvfQZcYgdC0PQx74HpzalW6cP4ICJXXFqD8D0H4rsLb5
	 3wGvehiN82krX48aekEAXVTTltdltypLJydQcmZhkqOAgdHJQHEipk0uZfE+jVVICP
	 +r1i21k+oLgLe0VA+h4AvyC+LFRGYmJuZhRuMKbdnTwcr+uVt/eBFfERxq6f55lGN3
	 aKAkmbSbRsBYhxkDscaApAlbXAzbJc2A/+BKBNtV9WsLTR8XUTESe8xIWW/RoiOVu+
	 hq8h5S6RvwoFw==
Received: from [192.168.68.112] (unknown [180.150.112.225])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5C53E7A886;
	Fri, 21 Mar 2025 09:17:23 +0800 (AWST)
Message-ID: <26a1d17c47c5ca6036dd58ac3b953daeec9f5ef8.camel@codeconstruct.com.au>
Subject: Re: [PATCH v5 05/10] ARM: dts: aspeed: catalina: Add second source
 fan controller support
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Potin Lai <potin.lai.pt@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Cosmo Chou
	 <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>
Date: Fri, 21 Mar 2025 11:47:22 +1030
In-Reply-To: <20250320-potin-catalina-dts-update-20250102-v5-5-e161be6583a7@gmail.com>
References: 
	<20250320-potin-catalina-dts-update-20250102-v5-0-e161be6583a7@gmail.com>
	 <20250320-potin-catalina-dts-update-20250102-v5-5-e161be6583a7@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgUG90aW4sCgpPbiBUaHUsIDIwMjUtMDMtMjAgYXQgMjM6MjEgKzA4MDAsIFBvdGluIExhaSB3
cm90ZToKPiBBZGQgZGV2aWNlIHRyZWUgbm9kZXMgZm9yIHRoZSBOQ1Q3MzYzIGZhbiBjb250cm9s
bGVycyBvbiB0aGUgc2Vjb25kLQo+IHNvdXJjZQo+IFBvd2VyIERpc3RyaWJ1dGlvbiBCb2FyZCAo
UERCKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQb3RpbiBMYWkgPHBvdGluLmxhaS5wdEBnbWFpbC5j
b20+Cj4gLS0tCj4gwqAuLi4vZHRzL2FzcGVlZC9hc3BlZWQtYm1jLWZhY2Vib29rLWNhdGFsaW5h
LmR0c8KgwqDCoCB8IDc2Cj4gKysrKysrKysrKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDc2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
YXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2stCj4gY2F0YWxpbmEuZHRzIGIvYXJjaC9hcm0vYm9v
dC9kdHMvYXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2stCj4gY2F0YWxpbmEuZHRzCj4gaW5kZXgg
ZmQyMmFkZDkwNDQ5Li45Y2JiMjk2ZGNkOWUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvYXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2stY2F0YWxpbmEuZHRzCj4gKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvYXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2stY2F0YWxpbmEuZHRzCj4gQEAg
LTQ2Nyw2ICs0NjcsODIgQEAgaTJjMW11eDBjaDI6IGkyY0AyIHsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6ZS1jZWxscyA9IDwwPjsKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHgyPjsK
PiDCoAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaHdt
b24wOiBod21vbkAxIHsKClRoZXJlIG1pZ2h0IGJlIGluc3RhbmNlcyBvZiBjYWxsaW5nIG5vZGVz
IGFuZCBsYWJlbHMgJ2h3bW9uJyBpbiBvdGhlcgooQk1DKSBkZXZpY2V0cmVlcywgYnV0IEkgZG9u
J3QgdGhpbmsgd2Ugc2hvdWxkIGNvbnRpbnVlIHRoYXQgcHJhY3RpY2UuCkkgdGhpbmsgaW4gdGhp
cyBjYXNlIGl0IHNob3VsZCBiZSAnZmFuLWNvbnRyb2xsZXInLgoKaHdtb24gaXMgdGhlIG5hbWUg
b2YgYSBrZXJuZWwgc3Vic3lzdGVtLCBub3QgYSBjbGFzcyBvZiBoYXJkd2FyZS4gVGhlCmRldmlj
ZXRyZWVzIHNob3VsZCBkZXNjcmliZSB0aGUgaGFyZHdhcmUgKGFuZCBub3QgY29uY2VwdHMgZnJv
bSB0aGUKa2VybmVsKS4KCgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAibnV2b3RvbixuY3Q3MzYzIjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZWcgPSA8MHgwMT47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3B3bS1jZWxscyA9IDwyPjsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZmFuLTkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21zID0gPCZod21vbjAgMCA0MDAw
MD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRhY2gtY2ggPSAvYml0cy8gOCA8MHgwOT47Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgfTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBmYW4tMTEgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21zID0g
PCZod21vbjAgMCA0MDAwMD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRhY2gtY2ggPSAvYml0
cy8gOCA8MHgwYj47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYW4tMTAgewo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBwd21zID0gPCZod21vbjAgNCA0MDAwMD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHRhY2gtY2ggPSAvYml0cy8gOCA8MHgwYT47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYW4tMTMgewo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21zID0gPCZod21vbjAgNCA0MDAwMD47Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHRhY2gtY2ggPSAvYml0cy8gOCA8MHgwZD47Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBmYW4tMTUgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21zID0gPCZod21vbjAgNiA0
MDAwMD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRhY2gtY2ggPSAvYml0cy8gOCA8MHgwZj47
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgfTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBmYW4tMSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHB3bXMg
PSA8Jmh3bW9uMCA2IDQwMDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdGFjaC1jaCA9IC9i
aXRzLyA4IDwweDAxPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhbi0wIHsKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcHdtcyA9IDwmaHdtb24wIDEwIDQwMDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdGFjaC1jaCA9IC9iaXRzLyA4IDwweDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhbi0zIHsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHdtcyA9IDwmaHdtb24wIDEwIDQwMDAwPjsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdGFjaC1jaCA9IC9iaXRzLyA4IDwweDAzPjsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGh3bW9uMTogaHdtb25A
MiB7CgpBcyBhYm92ZS4KCkFuZHJldwo=


