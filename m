Return-Path: <devicetree+bounces-64241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 509478B891A
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 13:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4EB31F229F0
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 11:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAC156760;
	Wed,  1 May 2024 11:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="OJXyxVaI"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4889C48CE0
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714562256; cv=none; b=hV7PQwl3dUpPCiK3WhMlIxyic1e3WKcHSUFuG2PxJX0eQMo4mRg68SsGbCTuKyWeP7wW7ZBbhETT5FJrN66JCrM3FfMoqanWLC8Rh6K5uUM2vP7zJOZ4gij8iXsxL07AsJ6rYEAn7bG8bZqCDF8R1MLYUiLtq8KEL+Nw81rxbhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714562256; c=relaxed/simple;
	bh=3QoSGzlC8U/rzZfHOorehFaN/GCXjRJ7jH7TIi1poEI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=S8kBpB6N97QuQD4/DVkji9z2mBZILV3uVeZhjhMC4E0fTbGUzizMZ7KGUe2VCo4OVI7eJDUrH7TXaNIopMTF/oXmNOSgNKoH/Jdu3lFPuc0TBldkjLgJdSVx9Jz9txCwUHeU1pCkV7Fa/UzGQfDAdeEZqiVCwbEM6Va/puN1NMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=OJXyxVaI; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from sparky.lan (unknown [159.196.93.152])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B9CE720018;
	Wed,  1 May 2024 19:17:29 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714562250;
	bh=3QoSGzlC8U/rzZfHOorehFaN/GCXjRJ7jH7TIi1poEI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=OJXyxVaI4mvceq/2q4AwyI8m3zAEOHJ8spq7XZ0JFjm2UDMYSgV2KIWynpBWn/08K
	 rAnNoez1ftcYsilfLKlkvTw2L4AIAEWUXtnOCDDI1v9nnVUVEyj77w9sT78BBSgvkb
	 k8ICI3poEOolgCeJxKHIAobb1K4HruZvMix+Vl3cTv4s+7pCUWSVfeQK83lFpfwaLe
	 Af5pjiD3R+e3QIWlgntXvOmQsQMQDEYEcZxtyZ/6NT0wIsUFb9kPwQANy6hU9AdEgg
	 9oYhuDwNeEHd/sKtEd2dqTqe5S1dvMGjCwY7DybS1LhQsw6gms/cTuG1yhz9NUaK/N
	 hNuYzUR309O7w==
Message-ID: <09ed10182e2282d7e408a4fef7994da010fe058e.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed-g6: Add nodes for i3c controllers
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, Andrew Jeffery
 <andrew@codeconstruct.com.au>,  Joel Stanley <joel@jms.id.au>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>
Date: Wed, 01 May 2024 19:17:29 +0800
In-Reply-To: <65af46c3-e48f-4eae-8390-2bc01332ccbf@kernel.org>
References: <20240501033832.1529340-1-jk@codeconstruct.com.au>
	 <65af46c3-e48f-4eae-8390-2bc01332ccbf@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgS3J6eXN6dG9mLAoKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC9hc3BlZWQt
ZzYuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkL2FzcGVlZC1nNi5kdHNp
Cj4gPiBAQCAtODY2LDYgKzg2NiwxMyBAQCBpMmM6IGJ1c0AxZTc4YTAwMCB7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmFuZ2VzID0gPDAgMHgxZTc4YTAwMCAweDEwMDA+Owo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiA+IMKgCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGkzYzogYnVzQDFlN2EwMDAwIHsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7Cj4gCj4gV2hhdCBidXMgaXMgaXQ/IFdoeSBp
cyBpdCBldmVuIG5lZWRlZD8gSWYgaXQgaXMgaTNjLCB0aGVuIGZvciBzdXJlCj4gY29tcGF0aWJs
ZSBpcyB3cm9uZy4KClRoaXMgaXMgbm90IHRoZSBpM2MgYnVzLCBpdCdzIHRoZSBNTUlPIG1hcHBp
bmcgdGhhdCBhbGxvd3MgdXMgdG8gc3BlY2lmeQp0aGUgaW5kaXZpZHVhbCBpM2MgY29udHJvbGxl
ciBtYXBwaW5ncyBhcyBzZW5zaWJsZSBvZmZzZXRzIGludG8gdGhlIG1haW4KYWRkcmVzcyBzcGFj
ZS4gRGlkIHlvdSBtaXNzIHRoZSByYW5nZXMgcHJvcGVydHkgdGhlcmU/CgpUaGlzIGlzIGZvbGxv
d2luZyB0aGUgZXhpc3RpbmcgZGVzaWduIGZvciB0aGUgaTJjIGNvbnRyb2xsZXJzLgoKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3NpemUtY2VsbHMgPSA8MT47Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByYW5nZXMgPSA8MCAweDFlN2EwMDAwIDB4ODAwMD47Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07Cj4gPiArCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmc2ltMDogZnNpQDFlNzliMDAw
IHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gImFzcGVlZCxhc3QyNjAwLWZzaS1tYXN0ZXIiLCAi
ZnNpLW1hc3RlciI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MWU3OWIwMDAgMHg5ND47Cj4gPiBAQCAt
MTEyNSwzICsxMTMyLDg5IEBAIGkyYzE1OiBpMmMtYnVzQDgwMCB7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgfTsKPiA+IMKgfTsKPiA+ICsKPiA+ICsmaTNjIHsKPiAKPiA/Pz8/Cj4gCj4gVGhhdCdzIG5v
dCBob3cgd2UgY29uc3RydWN0IERUUy7CoCBPdmVycmlkZXMvZXh0ZW5kcyBvZiBub2RlcyBhcmUg
Zm9yCj4gYm9hcmRzLCBub3Qgd2l0aGluIERUU0kuCgpUaGUgb3ZlcnJpZGVzIGFyZSBvY2N1cnJp
bmcgYXQgdGhlICZpM2NYIGxhYmVscywgbm90ICZpM2MuIFBsYXRmb3JtCmxldmVsIGR0cyBqdXN0
IGNvbm5lY3QgYXQgdGhvc2UgbGFiZWxzIHRvIGRlZmluZSBvdmVycmlkZXMgZm9yIGVhY2ggYnVz
OgoKICAgICZpM2MwIHsKICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwogICAgICAgICAgICBt
Y3RwLWNvbnRyb2xsZXI7CiAgICB9OwoKICAgICZpM2MxIHsKICAgICAgICAgICAgc3RhdHVzID0g
Im9rYXkiOwogICAgICAgICAgICBtY3RwLWNvbnRyb2xsZXI7CiAgICB9OwoKVGhlcmUgaXMgZXhp
c3RpbmcgcHJlY2VkZW5jZSBmb3IgdGhpcyBsYXlvdXQ7IHRoZSBpMmMgYW5kIHBpbmN0cmwKbWFw
cGluZ3MgYWxyZWFkeSB1c2UgZHRzaS1pbnRlcm5hbCBsYWJlbHMuIEl0IGtlZXBzIHRoZSBidXMg
ZGVmaW5pdGlvbnMKbW9yZSBtYW5hZ2VhYmxlLgoKQ2hlZXJzLAoKCkplcmVteQo=


