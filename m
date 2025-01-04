Return-Path: <devicetree+bounces-135498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D888A0127F
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 06:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C9CE3A3D6B
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 05:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF6784E1C;
	Sat,  4 Jan 2025 05:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aosc.io header.i=@aosc.io header.b="h/mXTzH7"
X-Original-To: devicetree@vger.kernel.org
Received: from relay-us1.mymailcheap.com (relay-us1.mymailcheap.com [51.81.35.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6E4174A;
	Sat,  4 Jan 2025 05:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.81.35.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735968128; cv=none; b=OyNRRtFjIhFVf2/xg20lwGcigTAzcEhLtLMYW0shYVTPcdev/52HKAZlC8MjzQ1/dcnt8EwE3WTTxegwzuGsh8gKXgGh/km6a5EcLqMqDFIpQ0ITXrFA9qKZQ7Q5pTuRpUw6JAw7osWNYYt//9wTQLNN6t/HsurS6FfmFCJvMvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735968128; c=relaxed/simple;
	bh=a32urqQOq7x2c66BYeOiLUfBPevk3YVSsht2ZnYYuXs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qw+MT7nLBXrkXDqnFe93QsC9JuC6GdVuHbflEasa78cX4DaREjBzal/J1kFUDk+ipCWQDtVzcihLdexIWwArpZLQidSTo/JfWhZnwin/pwcefyqtydU4ugOn3Mj85e6gS5IQOuzxtLoTiCbDS1kLECtXOYX0rzlKWM4mpv/EeP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aosc.io; spf=pass smtp.mailfrom=aosc.io; dkim=pass (1024-bit key) header.d=aosc.io header.i=@aosc.io header.b=h/mXTzH7; arc=none smtp.client-ip=51.81.35.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aosc.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aosc.io
Received: from relay5.mymailcheap.com (relay5.mymailcheap.com [159.100.248.207])
	by relay-us1.mymailcheap.com (Postfix) with ESMTPS id 2FA7F2031F;
	Sat,  4 Jan 2025 05:13:25 +0000 (UTC)
Received: from relay2.mymailcheap.com (relay2.mymailcheap.com [217.182.66.162])
	by relay5.mymailcheap.com (Postfix) with ESMTPS id 1BE8E2675E;
	Sat,  4 Jan 2025 05:13:16 +0000 (UTC)
Received: from nf2.mymailcheap.com (nf2.mymailcheap.com [54.39.180.165])
	by relay2.mymailcheap.com (Postfix) with ESMTPS id 9E9103E8A9;
	Sat,  4 Jan 2025 06:13:07 +0100 (CET)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
	by nf2.mymailcheap.com (Postfix) with ESMTPSA id 242FA400B0;
	Sat,  4 Jan 2025 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
	t=1735967584; bh=a32urqQOq7x2c66BYeOiLUfBPevk3YVSsht2ZnYYuXs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=h/mXTzH7hbTcHjL+dDdJJ+8MG+gAxszYXt+rR8w4FW0BiYa0gK7qHXyRtHUJ7GcUv
	 Rf2Goi67u3dg6l4HMqCGwgAhqmkjWPvCwhQ+c+0W44Kyu1wFTKTeg5ZBQDTBdWwVyM
	 j0WXp+wf8+Zr+oyHfMTbRkBwUodsVvQ+7a9ouJik=
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.101.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail20.mymailcheap.com (Postfix) with ESMTPSA id DBE46408FA;
	Sat,  4 Jan 2025 05:12:59 +0000 (UTC)
Message-ID: <bed2886fa15d4f72cf34e468e8bfd2153cb1494c.camel@aosc.io>
Subject: Re: [PATCH v3 4/4] ARM: dts: sunxi: add support for NetCube Systems
 Kumquat
From: Icenowy Zheng <icenowy@aosc.io>
To: Andre Przywara <andre.przywara@arm.com>, Lukas Schmid
	 <lukas.schmid@netcube.li>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>,  Samuel Holland <samuel@sholland.org>,
 Linus Walleij <linus.walleij@linaro.org>, Maxime Ripard
 <mripard@kernel.org>,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org,  linux-gpio@vger.kernel.org
Date: Sat, 04 Jan 2025 13:12:56 +0800
In-Reply-To: <20250103235723.6a893773@minigeek.lan>
References: <20250103204523.3779-1-lukas.schmid@netcube.li>
	 <20250103204523.3779-5-lukas.schmid@netcube.li>
	 <20250103235723.6a893773@minigeek.lan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [1.50 / 10.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:16276, ipnet:51.83.0.0/16, country:FR];
	MIME_TRACE(0.00)[0:+];
	SPFBL_URIBL_EMAIL_FAIL(0.00)[flash.0.0.0.0:server fail,can.0.0.0.1:server fail,rtc.0.0.0.68:server fail,typec.0.0.0.60:server fail,eeprom.0.0.0.50:server fail,macaddress.fa:server fail,lukas.schmid.netcube.li:server fail];
	RCVD_TLS_ALL(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.50:email,0.0.0.68:email,0.0.0.60:email,0.0.0.1:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,csie.org,gmail.com,sholland.org,linaro.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: nf2.mymailcheap.com
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 242FA400B0

5ZyoIDIwMjUtMDEtMDPmmJ/mnJ/kupTnmoQgMjM6NTcgKzAwMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IE9uIEZyaSzCoCAzIEphbiAyMDI1IDIwOjQ1OjIwICswMDAwCj4gTHVrYXMgU2No
bWlkIDxsdWthcy5zY2htaWRAbmV0Y3ViZS5saT4gd3JvdGU6Cj4gCj4gKENDOmluZyBJY2Vub3d5
IGZvciBhIHF1ZXN0aW9uIGFib3V0IHRoZSBSVEMgYmVsb3cgLi4uKQo+IAo+ID4gTmV0Q3ViZSBT
eXN0ZW1zIEt1bXF1YXQgaXMgYSBib2FyZCBiYXNlZCBvbiB0aGUgQWxsd2lubmVyIFYzcyBTb0Ms
Cj4gPiBpbmNsdWRpbmc6Cj4gPiAKPiA+IC0gNjRNQiBERFIyIGluY2x1ZGVkIGluIFNvQwo+ID4g
LSAxMC8xMDAgTWJwcyBFdGhlcm5ldAo+ID4gLSBVU0ItQyBEUkQKPiA+IC0gQXVkaW8gQ29kZWMK
PiA+IC0gSXNvbGF0ZWQgQ0FOLUZECj4gPiAtIEVTUDMyIG92ZXIgU0RJTwo+ID4gLSA4TUIgU1BJ
LU5PUiBGbGFzaCBmb3IgYm9vdGxvYWRlcgo+ID4gLSBJMkMgRUVQUk9NIGZvciBNQUMgYWRkcmVz
c2VzCj4gPiAtIFNESU8gQ29ubmVjdG9yIGZvciBlTU1DIG9yIFNELUNhcmQKPiA+IC0gOHggMTIv
MjRWIElPcywgNHggbm9ybWFsbHkgb3BlbiByZWxheXMKPiA+IC0gRFMzMjMyIFJUQwo+ID4gLSBR
V0lJQyBjb25uZWN0b3JzIGZvciBleHRlcm5hbCBJMkMgZGV2aWNlcwo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBMdWthcyBTY2htaWQgPGx1a2FzLnNjaG1pZEBuZXRjdWJlLmxpPgo+ID4gLS0tCj4g
PiDCoGFyY2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoCAyICsKPiA+IMKgLi4uL2FsbHdpbm5lci9zdW44aS12M3MtbmV0Y3ViZS1rdW1xdWF0
LmR0c8KgwqAgfCAyOTAKPiA+ICsrKysrKysrKysrKysrKysrKwo+ID4gwqBhcmNoL2FybS9ib290
L2R0cy9hbGx3aW5uZXIvc3VuOGktdjNzLmR0c2nCoMKgwqAgfMKgwqAgNiArCj4gPiDCoDMgZmls
ZXMgY2hhbmdlZCwgMjk4IGluc2VydGlvbnMoKykKPiA+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW44aS12M3MtbmV0Y3ViZS0KPiA+IGt1bXF1YXQu
ZHRzCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hbGx3aW5uZXIvTWFr
ZWZpbGUKPiA+IGIvYXJjaC9hcm0vYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCj4gPiBpbmRl
eCA0ODY2NmY3M2U2MzguLmQ3OTlhZDE1M2IzNyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYWxs
d2lubmVyL01ha2VmaWxlCj4gPiBAQCAtMTk5LDYgKzE5OSw3IEBAIERUQ19GTEFHU19zdW44aS1o
My1uYW5vcGktcjEgOj0gLUAKPiA+IMKgRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLXBjIDo9
IC1ACj4gPiDCoERUQ19GTEFHU19zdW44aS1oMy1iYW5hbmFwaS1tMi1wbHVzLXYxLjIgOj0gLUAK
PiA+IMKgRFRDX0ZMQUdTX3N1bjhpLWgzLW9yYW5nZXBpLXBjLXBsdXMgOj0gLUAKPiA+ICtEVENf
RkxBR1Nfc3VuOGktdjNzLW5ldGN1YmUta3VtcXVhdCA6PSAtQAo+ID4gwqBkdGItJChDT05GSUdf
TUFDSF9TVU44SSkgKz0gXAo+ID4gwqDCoMKgwqDCoMKgwqDCoHN1bjhpLWEyMy1ldmIuZHRiIFwK
PiA+IMKgwqDCoMKgwqDCoMKgwqBzdW44aS1hMjMtZ3Q5MGgtdjQuZHRiIFwKPiA+IEBAIC0yNjEs
NiArMjYyLDcgQEAgZHRiLSQoQ09ORklHX01BQ0hfU1VOOEkpICs9IFwKPiA+IMKgwqDCoMKgwqDC
oMKgwqBzdW44aS12M3MtYW5iZXJuaWMtcmctbmFuby5kdGIgXAo+ID4gwqDCoMKgwqDCoMKgwqDC
oHN1bjhpLXYzcy1saWNoZWVwaS16ZXJvLmR0YiBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3VuOGkt
djNzLWxpY2hlZXBpLXplcm8tZG9jay5kdGIgXAo+ID4gK8KgwqDCoMKgwqDCoMKgc3VuOGktdjNz
LW5ldGN1YmUta3VtcXVhdC5kdGIgXAo+ID4gwqDCoMKgwqDCoMKgwqDCoHN1bjhpLXY0MC1iYW5h
bmFwaS1tMi1iZXJyeS5kdGIKPiA+IMKgZHRiLSQoQ09ORklHX01BQ0hfU1VOOUkpICs9IFwKPiA+
IMKgwqDCoMKgwqDCoMKgwqBzdW45aS1hODAtb3B0aW11cy5kdGIgXAo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW44aS12M3MtbmV0Y3ViZS0KPiA+IGt1bXF1
YXQuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjhpLXYzcy1uZXRjdWJlLQo+
ID4ga3VtcXVhdC5kdHMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAw
MDAwMDAuLmU1ZDJhNzE2ZWI2OQo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjhpLXYzcy1uZXRjdWJlLWt1bXF1YXQuZHRzCj4gPiBAQCAt
MCwwICsxLDI5MCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsg
T1IgTUlUKQo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IChDKSAyMDI1IEx1a2FzIFNjaG1pZCA8
bHVrYXMuc2NobWlkQG5ldGN1YmUubGk+Cj4gPiArICovCj4gPiArCj4gPiArL2R0cy12MS87Cj4g
PiArI2luY2x1ZGUgInN1bjhpLXYzcy5kdHNpIgo+ID4gKwo+ID4gKyNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9pbnB1dC9pbnB1dC5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9sZWRzL2NvbW1v
bi5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiA+ICsKPiA+ICsv
ewo+ID4gK8KgwqDCoMKgwqDCoMKgbW9kZWwgPSAiTmV0Q3ViZSBTeXN0ZW1zIEt1bXF1YXQiOwo+
ID4gK8KgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJuZXRjdWJlLGt1bXF1YXQiLCAiYWxsd2lu
bmVyLHN1bjhpLXYzcyI7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBhbGlhc2VzIHsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXJpYWwwID0gJnVhcnQwOwo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGV0aGVybmV0MCA9ICZlbWFjOwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJ0YzAgPSAmZHMzMjMyOwo+ID4gK8KgwqDCoMKgwqDCoMKg
fTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGNob3NlbiB7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxMTUyMDBuOCI7Cj4gPiArwqDC
oMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogNDAgTUh6IENyeXN0YWwg
T3NjaWxsYXRvciBvbiBQQ0IgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoGNsa19jYW4wOiBjbG9jay1j
YW4wIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gImZp
eGVkLWNsb2NrIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjY2xvY2stY2Vs
bHMgPSA8MD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stZnJlcXVl
bmN5wqAgPSA8NDAwMDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKg
wqDCoMKgwqDCoGdwaW8ta2V5cyB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y29tcGF0aWJsZSA9ICJncGlvLWtleXMiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGF1dG9yZXBlYXQ7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
a2V5LXVzZXIgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBsYWJlbCA9ICJHUElPIEtleSBVc2VyIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGludXgsY29kZSA9IDxLRVlfUFJPRzE+Owo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwmcGlv
IDEgMiAoR1BJT19BQ1RJVkVfTE9XIHwKPiA+IEdQSU9fUFVMTF9VUCk+OyAvKiBQQjIgKi8KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsK
PiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGxlZHMgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBsZWQtaGVhcnRiZWF0IHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ3Bpb3MgPSA8JnBpbyA0IDQgR1BJT19BQ1RJ
VkVfSElHSD47IC8qIFBFNAo+ID4gKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgbGludXgsZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbG9yID0g
PExFRF9DT0xPUl9JRF9HUkVFTj47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX0hFQVJUQkVBVDsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGxlZC1tbWMwLWFjdCB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdwaW9zID0gPCZwaW8gNSA2IEdQSU9fQUNUSVZFX0hJ
R0g+OyAvKiBQRjYKPiA+ICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJtbWMwIjsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29sb3IgPSA8TEVEX0NPTE9S
X0lEX0dSRUVOPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fRElTSzsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB9Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDC
oMKgwqDCoC8qIFhDNjIwNi0zLjAgTGluZWFyIFJlZ3VhbHRvciAqLwo+ID4gK8KgwqDCoMKgwqDC
oMKgcmVnX3ZjYzN2MDogcmVndWxhdG9yLTN2MCB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1uYW1lID0gInZjYzN2MCI7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAw
MD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MzAwMDAwMD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmlu
LXN1cHBseSA9IDwmcmVnX3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4g
K8KgwqDCoMKgwqDCoMKgLyogRUEzMDM2QyBTd2l0Y2hpbmcgMyBDaGFubmVsIFJlZ3VsYXRvciAt
IENoYW5uZWwgMiAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgcmVnX3ZjYzN2MzogcmVndWxhdG9yLTN2
MyB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZ3VsYXRv
ci1uYW1lID0gInZjYzN2MyI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmluLXN1cHBseSA9IDwmcmVnX3ZjYzV2MD47Cj4g
PiArwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogSzc4MDUtMTAw
MFIzIFN3aXRjaGluZyBSZWd1bGF0b3Igc3VwcGxpZWQgZnJvbSBtYWluCj4gPiAxMi8yNFYgdGVy
bWluYWwgYmxvY2sgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoHJlZ192Y2M1djA6IHJlZ3VsYXRvci01
djAgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAicmVn
dWxhdG9yLWZpeGVkIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2M1djAiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gK8Kg
wqDCoMKgwqDCoMKgfTsKPiA+ICt9Owo+ID4gKwo+ID4gKyZtbWMwIHsKPiA+ICvCoMKgwqDCoMKg
wqDCoHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArwqDCoMKgwqDCoMKgwqBwaW5jdHJs
LTAgPSA8Jm1tYzBfcGlucz47Cj4gPiArwqDCoMKgwqDCoMKgwqB2bW1jLXN1cHBseSA9IDwmcmVn
X3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqBidXMtd2lkdGggPSA8ND47Cj4gPiArwqDCoMKg
wqDCoMKgwqBicm9rZW4tY2Q7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4g
PiArfTsKPiA+ICsKPiA+ICsmbW1jMSB7Cj4gCj4gd2hhdCdzIGNvbm5lY3RlZCBoZXJlPyBBcmUg
Ym90aCBNTUMgcG9ydHMgb24gaGVhZGVycy9jb25uZWN0b3JzLCBhbmQKPiBpdCdzIHVwIHRvIHRo
ZSB1c2VyIHRvIGNvbm5lY3Qgc29tZSBTRElPIGRldmljZSBvciBhbiBTRC9lTU1DCj4gY2FyZC9z
bG90PyBPciBpcyB0aGlzIHBvcnQgY29ubmVjdGVkIHRvIHRoZSBFU1AzMj8KPiAKPiA+ICvCoMKg
wqDCoMKgwqDCoHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArwqDCoMKgwqDCoMKgwqBw
aW5jdHJsLTAgPSA8Jm1tYzFfcGlucz47Cj4gPiArwqDCoMKgwqDCoMKgwqB2bW1jLXN1cHBseSA9
IDwmcmVnX3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqBidXMtd2lkdGggPSA8ND47Cj4gPiAr
wqDCoMKgwqDCoMKgwqBicm9rZW4tY2Q7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2th
eSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmdXNiX290ZyB7Cj4gCj4gSSB0aGluayB0cmFkaXRpb25h
bGx5IHJlZmVyZW5jZWQgbm9kZXMgaW4gdGhlIGJvYXJkIC5kdHMgZmlsZXMgYXJlCj4gb3JkZXJl
ZCBieSBsYWJlbCBuYW1lLCBzbyB1c2Jfb3RnIGlzIGJ1dC1sYXN0LiBZZXMsIHRoaXMgaXMgaW4K
PiBjb250cmFzdAo+IHRvIG5vZGVzIGluIHRoZSBTb0MgLmR0c2kgZmlsZSwgd2hpY2ggYXJlIG9y
ZGVyZWQgYnkgTU1JTyBhZGRyZXNzZXMuCj4gCj4gPiArwqDCoMKgwqDCoMKgwqBleHRjb24gPSA8
JnR1c2IzMjAgMD47Cj4gPiArwqDCoMKgwqDCoMKgwqBkcl9tb2RlID0gIm90ZyI7Cj4gPiArwqDC
oMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmdXNicGh5IHsK
PiA+ICvCoMKgwqDCoMKgwqDCoHVzYjBfaWRfZGV0LWdwaW9zID0gPCZwaW8gMSA0IEdQSU9fQUNU
SVZFX0hJR0g+OyAvKiBQQjQgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsK
PiA+ICt9Owo+ID4gKwo+ID4gKyZlaGNpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJv
a2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZvaGNpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0YXR1
cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZydGMgewo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RhdHVzID0gImRpc2FibGVkIjsKPiAKPiBQbGVhc2UgY2FuIHlvdSBleHBsYWluIGEgYml0IG1v
cmUgd2hhdCdzIGdvaW5nIG9uIGhlcmU/IEkgc2F3IHlvdQo+IG1lbnRpb25pbmcgaW4gdGhlIGNv
dmVyIGxldHRlciB0aGF0IHlvdSBicm91Z2h0IHRoZSAiZGlzYWJsZWQiIGJhY2ssCj4gYnV0IEkg
c3RpbGwgZG9uJ3Qgc2VlIGhvdyB0aGlzIGlzIHdvcmtpbmcgd2hlbiB0aGUgQ0NVIGFuZCB0aGUK
PiBwaW5jdHJsCj4gbm9kZXMgcmVmZXJlbmNlIHRoZSBSVEMgY2xvY2tzPyBTbyB3aGF0IGlzIGJy
b2tlbiwgZXhhY3RseT8gSXMgdGhpcwo+IHNvbWUgYnVnIGluIHRoZSBTb0M/IE9yIGRvbid0IHlv
dSBzdXBwbHkgdGhlIFNvQydzIFZDQ19SVEMsIHNvIHRoZQo+IGNhbGVuZGFyIGlzIG5vdCB3b3Jr
aW5nIHdoZW4gdGhlIGJvYXJkIGlzIG5vdCBwb3dlcmVkIC0gaW4gY29udHJhc3QKPiB0bwo+IHRo
ZSBleHRlcm5hbCBSVEM/CgpNYXliZSBhIGxhY2sgb2YgY3J5c3RhbD8gQnV0IEkgY2FuIHVuZGVy
c3RhbmQgbm90aGluZyBoZXJlLCBhbmQgYQpkZXRhaWxlZCBleHBsYWluYXRpb24gaXMgbmVlZGVk
LgoKPiAKPiA+ICt9Owo+ID4gKwo+ID4gKyZwaW8gewo+ID4gK8KgwqDCoMKgwqDCoMKgdmNjLXBi
LXN1cHBseSA9IDwmcmVnX3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqB2Y2MtcGMtc3VwcGx5
ID0gPCZyZWdfdmNjM3YzPjsKPiA+ICvCoMKgwqDCoMKgwqDCoHZjYy1wZS1zdXBwbHkgPSA8JnJl
Z192Y2MzdjM+Owo+ID4gK8KgwqDCoMKgwqDCoMKgdmNjLXBmLXN1cHBseSA9IDwmcmVnX3ZjYzN2
Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqB2Y2MtcGctc3VwcGx5ID0gPCZyZWdfdmNjM3YzPjsKPiA+
ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGdwaW8tcmVzZXJ2ZWQtcmFuZ2VzID0gPDAgMzI+LCA8NDIg
MjI+LCA8NjggMjg+LCA8OTYgMzI+LAo+ID4gPDE1MyA3PiwgPDE2NyAyNT4sIDwxOTggMjY+Owo+
IAo+IEFzIG1lbnRpb25lZCBpbiB0aGUgcmVwbHkgdG8gdGhlIHByZXZpb3VzIHBhdGNoLCB0aGlz
IGRvZXNuJ3QgbG9vawo+IHJpZ2h0IGhlcmUuIFdoeSBkbyB5b3UgbmVlZCB0aGlzLCBleGFjdGx5
PwoKQWg/IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhbnkgdHJhZGl0aW9uIG9uIEFsbHdpbm5lciBw
bGF0Zm9ybXMgdG8KcmVzZXJ2ZSBhbnkgR1BJT3MsIGV4Y2VwdCBpZiB5b3UgaGF2ZSBhbm90aGVy
IGZpcm13YXJlIHJ1bm5pbmcgb24KYW5vdGhlciBwcm9jZXNzb3IgKGUuZy4gQVIxMDApIHRoYXQg
bmVlZHMgc29tZSBHUElPLgoKTXkgcHJldmlvdXMgc2lnaHQgb2Ygc3VjaCBwcm9wZXJ0eSBpcyBv
biBRdWFsY29tbSBzbWFydHBob25lcywgd2hlcmUgYQpmZXcgR1BJT3MgYXJlIHJlc2VydmVkIGZv
ciAiVHJ1c3RlZCIgdGhpbmd5LgoKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoGdwaW8tbGluZS1uYW1l
cyA9ICIiLCAiIiwgIiIsICIiLCAvLyBQQQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwg
IiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAi
IiwgCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJDQU5fbkNTIiwgIkNBTl9uSU5UIiwgIlVTRVJfU1ciLCAiUEIzIiwKPiA+IC8vIFBCCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVU0JfSUQi
LCAiVVNCQ19uSU5UIiwgIkkyQzBfU0NMIiwKPiA+ICJJMkMwX1NEQSIsCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVQVJUMF9UWCIsICJVQVJU
MF9SWCIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIi
LCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAiU1BJX01JU08iLCAiU1BJX1NDSyIsICJGTEFTSF9uQ1MiLAo+
ID4gIlNQSV9NT1NJIiwgLy8gUEMKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAi
IiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
IiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsIAo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwg
IiIsICIiLCAiIiwgLy8gUEQKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIs
ICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJRMTIiLCAi
UTExIiwgIlExMCIsICJROSIsIC8vIFBFCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJMRURfU1lTMCIsICJJMSIsICJRMSIsICJRMiIsCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJJMiIsICJJ
MyIsICJRMyIsICJRNCIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJJNCIsICJJNSIsICJRNSIsICJRNiIsCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJJNiIsICJJNyIsICJRNyIsICJROCIs
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJJ
OCIsICJVQVJUMV9UWEQiLCAiVUFSVDFfUlhEIiwKPiA+ICJFU1BfblJTVCIsCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJFU1BfbkJPT1QiLCAi
IiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIlNEX0QxIiwgIlNEX0QwIiwgIlNEX0NMSyIsICJTRF9DTUQi
LCAvLwo+ID4gUEYKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIlNEX0QzIiwgIlNEX0QyIiwgIkxFRF9TWVMxIiwgIiIsCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwg
IiIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIiwKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAi
IiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJFU1BfQ0xLIiwgIkVTUF9DTUQiLCAiRVNQX0QwIiwgIkVTUF9EMSIsCj4gPiAvLyBQRwo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiRVNQ
X0QyIiwgIkVTUF9EMyIsICIiLCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIi
LCAiIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIiIsICIiLCAiIiwgIiIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICIiLCAiIiwgIiIsICIiLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiIiwgIiIsICIiLCAiIjsKPiA+ICt9Owo+ID4g
Kwo+ID4gKyZscmFkYyB7Cj4gPiArwqDCoMKgwqDCoMKgwqB2cmVmLXN1cHBseSA9IDwmcmVnX3Zj
YzN2MD47Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsK
PiA+ICsmY29kZWMgewo+ID4gK8KgwqDCoMKgwqDCoMKgYWxsd2lubmVyLGF1ZGlvLXJvdXRpbmcg
PQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJIZWFkcGhvbmUiLCAiSFAiLAo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJIZWFkcGhvbmUiLCAiSFBDT00iLAo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJNSUMxIiwgIk1pYyIsCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIk1pYyIsICJIQklBUyI7Cj4gPiArwqDCoMKgwqDC
oMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmdWFydDAgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgcGluY3RybC0wID0gPCZ1YXJ0MF9wYl9waW5zPjsKPiA+ICvCoMKgwqDCoMKg
wqDCoHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMg
PSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmdWFydDEgewo+ID4gK8KgwqDCoMKgwqDCoMKg
cGluY3RybC0wID0gPCZ1YXJ0MV9wZV9waW5zPjsKPiA+ICvCoMKgwqDCoMKgwqDCoHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4g
PiArfTsKPiA+ICsKPiA+ICsmaTJjMCB7Cj4gPiArwqDCoMKgwqDCoMKgwqBwaW5jdHJsLTAgPSA8
JmkyYzBfcGlucz47Cj4gPiArwqDCoMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gKwo+ID4gK8KgwqDCoMKg
wqDCoMKgZHMzMjMyOiBydGNANjggewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNvbXBhdGlibGUgPSAiZGFsbGFzLGRzMzIzMiI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmVnID0gPDB4Njg+Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKCklmIHlvdSdyZSBh
ZnJhaWQgb2YgdGhlIG5vbi1ydW5uaW5nIGludGVybmFsIFJUQyBzdXBlcnNlZGluZyB0aGlzCmV4
dGVybmFsIFJUQywgeW91IGNhbiB1c2UgYW4gYWxpYXMgcnRjMCA9ICZkczMyMzIgdG8gZm9yY2Ug
dGhlIGV4dC4gb25lCnRvIGJlIHRoZSBmaXJzdC4KCj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBl
ZXByb20wOiBlZXByb21ANTAgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNv
bXBhdGlibGUgPSAiYXRtZWwsMjRjMDIiO8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogYWN0
dWFsbHkKPiA+IGl0J3MgYSAyNEFBMDJFNDggKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBwYWdlc2l6ZSA9IDwxNj47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmVhZC1vbmx5Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDww
eDUwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2Y2Mtc3VwcGx5ID0gPCZy
ZWdfdmNjM3YzPjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRk
cmVzcy1jZWxscyA9IDwxPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6
ZS1jZWxscyA9IDwxPjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBl
dGgwX21hY2FkZHJlc3M6IG1hY2FkZHJlc3NAZmEgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHhmYSAweDA2PjsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+
ICvCoMKgwqDCoMKgwqDCoHR1c2IzMjA6IHR5cGVjQDYwIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gInRpLHR1c2IzMjAiOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDYwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlcnJ1cHQtcGFyZW50ID0gPCZwaW8+Owo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8MSA1IElSUV9UWVBFX0VER0VfRkFMTElORz47
Cj4gPiArwqDCoMKgwqDCoMKgwqB9Owo+ID4gK307Cj4gPiArCj4gPiArJmVtYWMgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgYWxsd2lubmVyLGxlZHMtYWN0aXZlLWxvdzsKPiA+ICvCoMKgwqDCoMKgwqDC
oG52bWVtLWNlbGxzID0gPCZldGgwX21hY2FkZHJlc3M+O8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoC8qIGN1c3RvbQo+ID4gbnZtZW0gcmVmZXJlbmNlICovCj4gPiArwqDCoMKgwqDCoMKg
wqBudm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAvKiBzZWUKPiA+IGV0aGVybmV0LWNvbnRyb2xsZXIueWFtbCAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnNwaTAgewo+ID4g
K8KgwqDCoMKgwqDCoMKgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArwqDCoMKgwqDCoMKgwqAj
c2l6ZS1jZWxscyA9IDwwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gPiArwqDCoMKgwqDCoMKgwqBwaW5jdHJsLTAgPSA8JnNwaTBfcGlucz47Cj4gCj4g
VGhvc2UgdHdvIGxpbmVzIGxvb2sgcmVkdW5kYW50LCBhcyB0aGV5IGFyZSBhbHJlYWR5IHNwZWNp
ZmllZCBpbiB0aGUKPiAuZHRzaSBmaWxlLgo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgY3MtZ3Bpb3Mg
PSA8MD4sIDwmcGlvIDEgMCBHUElPX0FDVElWRV9MT1c+OyAvKiBQQjAgKi8KPiA+ICvCoMKgwqDC
oMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGZsYXNoQDAg
ewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCNhZGRyZXNzLWNlbGxzID0gPDE+
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCNzaXplLWNlbGxzID0gPDE+Owo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAiamVkZWMsc3Bp
LW5vciI7Cj4gCj4gSSB0aGluayB0cmFkaXRpb25hbGx5IHdlIGhhdmUgdGhlIGNvbXBhdGlibGUg
Zmlyc3QsIGFuZCAjYS1jIGFuZCAjcy1jCj4gbGFzdCBpbiB0aGUgbm9kZS4KPiBBbmQgZG8geW91
IGhhdmUgYW55dGhpbmcgcGFydGl0aW9uZWQgaW4gdGhlcmU/IElmIG5vdCwgeW91IHdvdWxkbid0
Cj4gbmVlZCB0aGUgI2EtYyBhbmQgI3MtYyBwcm9wZXJ0aWVzLCBJIHRoaW5rLgo+IAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwwPjsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJmaXJtd2FyZSI7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc3BpLW1heC1mcmVxdWVuY3kgPSA8NDAwMDAwMDA+Owo+ID4gK8KgwqDC
oMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGNhbkAxIHsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gIm1pY3JvY2hpcCxtY3AyNTE4ZmQi
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwxPjsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9ja3MgPSA8JmNsa19jYW4wPjsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHQtcGFyZW50ID0gPCZwaW8+Owo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8MSAxIElSUV9UWVBF
X0xFVkVMX0xPVz47wqAgLyogUEIxICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgc3BpLW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHZkZC1zdXBwbHkgPSA8JnJlZ192Y2MzdjM+Owo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHhjZWl2ZXItc3VwcGx5ID0gPCZyZWdfdmNjM3YzPjsKPiA+ICvC
oMKgwqDCoMKgwqDCoH07Cj4gPiArfTsKPiA+IFwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQo+
IAo+IFBsZWFzZSBhZGQgYSBuZXdsaW5lIGF0IHRoZSBlbmQuCgpXZWxsIG1heWJlIHRoaXMgZmls
ZSBpcyB3cml0dGVuIHdpdGggc29tZSBub24tVW5peC10cmFkaXRpb25hbCBlZGl0b3IsCndlbGwg
TGludXggaXMgc29tZXRoaW5nIFVuaXgtdHJhZGl0aW9uYWwsIGFuZCBmb3IgdGhlc2UgZWRpdG9y
cyBtYW51YWwKaW5zZXJ0aW9uIG9mIGFuIGVtcHR5IGxpbmUgd2lsbCBiZSBuZWVkZWQgKG9uIFVu
aXgtdHJhZGl0aW9uYWwgdGhpbmdzCmUuZy4gVmltLCBubyBlbXB0eSBsaW5lcyBzaG91bGQgYmUg
cHJlc2VudGVkIGF0IGFsbC4pCgo+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW44aS12M3MuZHRzaQo+ID4gYi9hcmNoL2FybS9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuOGktdjNzLmR0c2kKPiAKPiBJIGRvbid0IGtub3cgZm9yIHN1cmUgaWYgcGVvcGxlIHdh
bnQgU29DIC5kdHNpIHBhdGNoZXMgc2VwYXJhdGVseT8KPiAKPiBDaGVlcnMsCj4gQW5kcmUKPiAK
PiA+IGluZGV4IDllMTNjMmFhODkxMS4uZjkwOWIxZDRkYmNhIDEwMDY0NAo+ID4gLS0tIGEvYXJj
aC9hcm0vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjhpLXYzcy5kdHNpCj4gPiArKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9hbGx3aW5uZXIvc3VuOGktdjNzLmR0c2kKPiA+IEBAIC00MTYsNiArNDE2LDEy
IEBAIHVhcnQwX3BiX3BpbnM6IHVhcnQwLXBiLXBpbnMgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZ1bmN0aW9uID0g
InVhcnQwIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoH07Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAvb21pdC1pZi1uby1yZWYvCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHVhcnQxX3BlX3BpbnM6IHVhcnQxLXBlLXBpbnMgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcGlucyA9ICJQRTIxIiwgIlBFMjIiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnVuY3Rpb24gPSAidWFydDEiOwo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4g
Kwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdWFy
dDJfcGluczogdWFydDItcGlucyB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGlucyA9ICJQQjAiLCAiUEIxIjsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBmdW5jdGlvbiA9ICJ1YXJ0MiI7Cj4gCj4gCgo=


