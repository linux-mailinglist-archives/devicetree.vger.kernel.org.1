Return-Path: <devicetree+bounces-216306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C15B5450C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5FB11B2367F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05162D5945;
	Fri, 12 Sep 2025 08:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kBiUJwcL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17132D5419
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665162; cv=none; b=T6hzNHVgZ2HUFZRitiNfgIjDXSsYoizri+WmIWHB4OOILd9l486Jp4ZrwpCrYIqGaZz3/Wdewl7vFjKLNd7b9fRoeZSESlX9dLpF8WX/t6NqUt8OyluVWNSi1O2wz0czheyx78MaYqI4wx+uIXupoRjamd03FR5+AvvKFXce19w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665162; c=relaxed/simple;
	bh=vhi2EuqavcXxwlfTir9+euMwzSozgelH/J4dWHMTo+U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Sr5E4l1dX9pSSkF9ftuOgDQFyNXL2wS6dJMyrtOMmlVgLH2g734n1CcasZqfjnEjKTw0UU1NyVklCeiwAdJKAG9PV4Rvp+Ipu2zwSx9HB8Y3/9JkdIRuZTW92mPhDDPv0O3YaK8DGuZmYwvYz49c+VNGUU4J5At/B47Q6+0EQ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kBiUJwcL; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aff0775410eso460174566b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757665159; x=1758269959; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vhi2EuqavcXxwlfTir9+euMwzSozgelH/J4dWHMTo+U=;
        b=kBiUJwcL+Ssl/y+VyCe1RlJ8p4diXKWe6/ocsWXryJcH+ON/n9zHd0HjuaEi6gDKG0
         aeL+n2cg/fi00p4yI2p90zRUdmxFWiBme7khQX67aZkMG38en9nvCD8Mf6FBm8tA2P7A
         9CrAs1q3fOpRczrWGH9ngiHpztS1nivK13IxzUcRWzXqP18T9N9UnRYyMzKPuNMRKAMp
         Pm7m1qrnYxDkae5nK0BB+nqB7UYQoJ1TJIacJoRJLCw/c85P4K6ykSAPKs71eMCLcNBq
         hZoKo/2WVGd8FAW5KxuLGTIqltbv9Zgb0YWvxFxv8E6/uj3iOQ5tkJA2VEzYsjNwbh2y
         VLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665159; x=1758269959;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vhi2EuqavcXxwlfTir9+euMwzSozgelH/J4dWHMTo+U=;
        b=MtCGkzeue/2gVjt8rrW8IZKRHQ9I/4i/qBxwFRxaM3HPmmbcif9JA68y3KZKdZ+77/
         6QnVVfXCLNpMtpKEUuDU+3iAkl4zJRunilA8vWdORVJ7bDjNrPQ3qdxlMmBSDi8arYWc
         bfCTPBojelbw0DhiGr/PvDMML7Kx9+HgGXuqBw2F3Z3VcrVQYH7Z4wCRUj8DztqJUeOZ
         lyDyx0DdDLxcdVcZKZRPFBPchyVSKjrMEowaU+MOnF3dpvz7Diri0OhgKUxtJn26+XYj
         AMqF7wIGl63tecuuOBBplKcksOHIeFU165I2CZqjKbtsMDAweGD5LlS18/MWId2utkbr
         fNjg==
X-Forwarded-Encrypted: i=1; AJvYcCUFnr1XJM5tYpFa9Ansmt2MNIVnUa3GxmtL20r9ELvhQUwaLVi2l/jW/wDWB7I2lahgKf9sCbpIT0n5@vger.kernel.org
X-Gm-Message-State: AOJu0YzBF5owX+fUQM2n4CNWG9IYhB+8tAfRWaZS62fJ3K0YgAlFr/UI
	bEncSsyGmyMF3vYOg00HP0r+ykXJA0Ai1/HlZJGQ+m9D0yBswGvF/DyN
X-Gm-Gg: ASbGncunvuqkwGttQvYYhSjCR+Yy+43Hd/OXpowLKyTv1StOObtjJJgJe/wrnZkGSXJ
	B1mveYgT02fBglfvDXkRxTJeUW7liieXSsAuh5GhKE+YsbHf+UMwxQOUehzrXQKpiLWoTIFXDqt
	liJ2F+MjyQoU5U8JPr17EkLCE7FgyM/YEA+C6RTnAEhQYVxSjvvCU4GVgFOeAvU/mBkDh7w2p7x
	xBHQ5yK5n7OKLjHYNbBoG41aiorJl7hJchiqoEIhvzjVC37cKLpvm+s0jG9qYybOfwqUd7irIQi
	Df1y+ToO+9OMxHWq1ZBfIrwMUyASGCrFPxlmR4OSg3894HESwm+K04jiRR4bwv29Nemkln7dCJ1
	uyQmdcJt8LhQKJOYdzw3K6MRK5hyvCZtPAg==
X-Google-Smtp-Source: AGHT+IGIb25WmUTwrRh32igxOEKD1OuE/LTa+jx62Fe1IbQtlhi43GGWY7MEtxlOVUMeowCxH3xDNw==
X-Received: by 2002:a17:907:6e8f:b0:afe:ac57:f0be with SMTP id a640c23a62f3a-b07a6934870mr642421066b.31.1757665158951;
        Fri, 12 Sep 2025 01:19:18 -0700 (PDT)
Received: from [10.5.0.2] ([185.128.9.236])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e599sm321218466b.108.2025.09.12.01.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:19:18 -0700 (PDT)
Message-ID: <5e279cf72409504861c80bb4d2e4e5f6bc59d94c.camel@gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Daniel Lezcano
	 <daniel.lezcano@linaro.org>
Cc: David Lechner <dlechner@baylibre.com>, jic23@kernel.org,
 nuno.sa@analog.com, 	andy@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, 	linux-iio@vger.kernel.org, s32@nxp.com,
 linux-kernel@vger.kernel.org, 	devicetree@vger.kernel.org,
 chester62515@gmail.com, mbrugger@suse.com, 	ghennadi.procopciuc@oss.nxp.com
Date: Fri, 12 Sep 2025 09:19:43 +0100
In-Reply-To: <CAHp75Vc8u2N2AHWtnPRmRXWKN3u8Qi=yvx5afbFh4NLNb8-y9A@mail.gmail.com>
References: <20250910155759.75380-1-daniel.lezcano@linaro.org>
	 <20250910155759.75380-3-daniel.lezcano@linaro.org>
	 <d53b22d1-35d6-4fb8-ae56-3ba4953b64af@baylibre.com>
	 <ea57a466-97b3-49d4-8d1c-142fd49a0da2@linaro.org>
	 <CAHp75Vc8u2N2AHWtnPRmRXWKN3u8Qi=yvx5afbFh4NLNb8-y9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.56.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

T24gRnJpLCAyMDI1LTA5LTEyIGF0IDA4OjM4ICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gRnJpLCBTZXAgMTIsIDIwMjUgYXQgMjowM+KAr0FNIERhbmllbCBMZXpjYW5vCj4gPGRh
bmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gT24gMTEvMDkvMjAyNSAyMjoxMCwg
RGF2aWQgTGVjaG5lciB3cm90ZToKPiA+ID4gT24gOS8xMC8yNSAxMDo1NyBBTSwgRGFuaWVsIExl
emNhbm8gd3JvdGU6Cj4gCj4gWyAuLi4gXQo+IAo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qIGlpb19wdXNoX3RvX2J1ZmZlcnNfd2l0aF90aW1lc3RhbXAgc2hvdWxkIG5vdCBiZSBj
YWxsZWQKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogd2l0aCBkbWFfc2FtcGxl
cyBhcyBwYXJhbWV0ZXIuIFRoZSBzYW1wbGVzIHdpbGwgYmUKPiA+ID4gPiBzbWFzaGVkCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGlmIHRpbWVzdGFtcCBpcyBlbmFibGVkLgo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiAKPiAvKgo+IMKgKiBCdHcsIGNv
bW1lbnQgc3R5bGUgZm9yIG11bHRpLWxpbmUKPiDCoCogY29tbWVudHMgaXMgd3JvbmcgZm9yIHRo
aXMgc3Vic3lzdGVtLgo+IMKgKiBVc2UgdGhpcyBhcyBhbiBleGFtcGxlLCBBbHNvLCByZWZlciB0
bwo+IMKgKiB0aGUgZnVuY3Rpb24gYXMgZnVuYygpLCBpLmUuIG1pbmQgdGhlIHBhcmVudGhlc2Vz
Lgo+IMKgKi8KPiAKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aW1lc3RhbXAgPSBp
aW9fZ2V0X3RpbWVfbnMoaW5kaW9fZGV2KTsKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXQgPSBpaW9fcHVzaF90b19idWZmZXJzX3dpdGhfdGltZXN0YW1wKGluZGlvX2RldiwKPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW5m
by0+YnVmZmVyLAo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB0aW1lc3RhbXApOwo+ID4gPiAKPiA+ID4gSXMgaXQgT0sgdG8gY2FsbCB0aGlz
IHdpdGggc3BpbmxvY2sgaGVsZD8gSXQgbG9va3MgbGlrZSBpdCBjYW4gY2FsbAo+ID4gPiBkZXZt
X2tyZWFsbG9jKCkgd2hpY2ggbWF5IHNsZWVwLgo+ID4gCj4gPiBJdCBzaG91bGQgYmUgb2ssIGRl
dm1fa3JlYWxsb2MgaXMgaW4gdGhlIGNvZGUgcGF0aCBvZgo+ID4gaWlvX3B1c2hfdG9fYnVmZmVy
c193aXRoX3RzX3VuYWxpZ25lZCgpLCBub3QgaW4KPiA+IGlpb19wdXNoX3RvX2J1ZmZlcnNfd2l0
aF90aW1lc3RhbXAoKQo+IAo+IFRoaXMgaXMgYSBnb29kIG9ic2VydmF0aW9uLCBjYW4gd2UgZG9j
dW1lbnQgdGhpcyBpbiB0aGUgcmVzcGVjdGl2ZQo+IGtlcm5lbC1kb2M6cyBwbGVhc2U/IEFsc28g
YWRkIG1pZ2h0X3NsZWVwKCkubWlnaHRfc2xlZXBfaWYoKSBpbiB0aGUKPiBhcHByb3ByaWF0ZSBm
dW5jdGlvbnMuCgpUaGF0J3MgYSBnb29kIGlkZWEhCgotIE51bm8gU8OhCg==


