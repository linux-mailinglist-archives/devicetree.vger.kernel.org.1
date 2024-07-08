Return-Path: <devicetree+bounces-83892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D79892A3F5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 15:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE87FB22403
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 13:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C121A13A250;
	Mon,  8 Jul 2024 13:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S5qJqhJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B6326ACF;
	Mon,  8 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720446355; cv=none; b=kyky6wyusl4rzJh22xlhzkziXjB25+IgHN/ywjPRCEZELXGrJAhA6gLZCbyd6fJvYcQyQgo4fVq/VU5XaP5EXt7ck6QeAslDRP7Z6cKDlIDWr4WfjsStIiBo8rGg4xk5SDa3lCGjrQvGZAa7Xzd3CcKe/cX5HPtuy5dEoYdM8eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720446355; c=relaxed/simple;
	bh=Gjnmvp0zmB2bVGeO4qI021CDBPbU/U7XD8/uKAYLm5Q=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 Mime-Version:Content-Type; b=H0buNsdin2TjLv98FLOqIyLellYPPaX6+Qy/V1t53yYIXOf9PaJ2NIedKLWyVLtUQ8Niugeh1oqFg34Aj1y3HnTVjIf6iGYMrtpn+U9fxWe1Vbws2xYp1fftCJlhM8vDXOxgzuSjSIO7An7dLcRowNIV7WAn6Tdm00q9/rzkkhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S5qJqhJD; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so33973765e9.2;
        Mon, 08 Jul 2024 06:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720446352; x=1721051152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gjnmvp0zmB2bVGeO4qI021CDBPbU/U7XD8/uKAYLm5Q=;
        b=S5qJqhJDfJa4I/4bUVbNRBRd1GBbQwxXbzSWZxtdfSKZf0Odc7ODpRGb0gAsVAn2Al
         OOxrjDSWtTa1ZUqz2Uxn5lEOhMUdIGMJdWULrSDsbGh7IOKWkvTFpdN/TmeOx/g49FYA
         V+kaYVSOnVA6BRKNgiAJx344BsO/JcXW7gz/2xkAnsfEdP9/G8DzYplDcNNudx2WoXZ5
         NzLDE4YuZLXXp0Ggxh73rY5PheTtkI/ukqPrpitCpvK+/QXCwJSDLI7HTLc3dpwEVpOj
         0zR4y8tFR6GR3fQAfGeXOj8fY9nrTd/OaXM1oFIVN8F/9+Fu0Mxpb+OnwHpODJYjWZh+
         kveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720446352; x=1721051152;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gjnmvp0zmB2bVGeO4qI021CDBPbU/U7XD8/uKAYLm5Q=;
        b=h5kJY9dLWYKHF94/CEqmIUgPiXmuDc/oDEdEIZ261S1d/sTLxkBCh7NEtrKiwsHSbU
         hnMMcjdInDJTSb9p7iCm3cwChe49vEtgd/PcUbWuB0YiuMUyvVotztzWPnP/gAl+lX/h
         xVdQntdGHXkKzu4rVEIMStzBpT0VbfnD7pUX3bXlUh53euTpYhF/uoUyMYztpYOk6jfk
         Vdnpvo/K0JnBJsE9pUScJHRtQ2tpbDIG2PFS2k00aFffn3kqltsM/lsyR1wXcs50+YUg
         0WOmqzxRPfbtrg0LKQxVz+vWmnhFOLaXKGeE4QLQaCFCqFC9IGRu1pu1Zdpf4izF2sMv
         22/g==
X-Forwarded-Encrypted: i=1; AJvYcCVExoB77yK44u9diaEaOMHT1tNl1SMpFa9PmUj2dhJsnfVmW0wf4BuLd655XtOzEdqerYxFCEpO2HbKrzL+tJtks3gf76urP7DhABIeISGpzOoQ5LrldCSzxKXOm7CCZlj3vJPqEYcVGN8tDM0BTBIlexRrGH1pQi6m5pVpIAs9MErkRQ==
X-Gm-Message-State: AOJu0YzHD1DdOl4IZ7qEHWepRJw4Bd/qbbE0+tm0KTuRTQZka/9TnJE8
	L6i0kfpIzb0mtl6feomQNHqdCYbikjH+yCsis6qJzsSItYHSn+gz
X-Google-Smtp-Source: AGHT+IEkxWXJmcIxliVnqT8GzlmOzVnm6WBRXaSkG3gWnKwgaUDuBdQ6t65UdTCpkMIrYR9bmlm+Cw==
X-Received: by 2002:a05:600c:45ca:b0:425:64c5:5780 with SMTP id 5b1f17b1804b1-4264a3bc39dmr114792985e9.1.1720446351692;
        Mon, 08 Jul 2024 06:45:51 -0700 (PDT)
Received: from localhost (host-79-55-57-217.retail.telecomitalia.it. [79.55.57.217])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-426527c0894sm89629675e9.0.2024.07.08.06.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 06:45:51 -0700 (PDT)
Date: Mon, 08 Jul 2024 15:45:50 +0200
From: Matteo Martelli <matteomartelli3@gmail.com>
To: Marius.Cristea@microchip.com
Cc: robh@kernel.org, 
 krzk+dt@kernel.org, 
 jic23@kernel.org, 
 matteomartelli3@gmail.com, 
 lars@metafoo.de, 
 conor+dt@kernel.org, 
 devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org
Message-ID: <668bed8e65d4f_6e037024@njaxe.notmuch>
In-Reply-To: <a67e4c0bf2c3839694b60cb96bbc43170fbb2f36.camel@microchip.com>
References: <20240703-iio-pac1921-v1-0-54c47d9180b6@gmail.com>
 <20240703-iio-pac1921-v1-2-54c47d9180b6@gmail.com>
 <SN6PR11MB3167C48F19120E35862316FA99DE2@SN6PR11MB3167.namprd11.prod.outlook.com>
 <a67e4c0bf2c3839694b60cb96bbc43170fbb2f36.camel@microchip.com>
Subject: Re: [PATCH 2/2] iio: adc: add support for pac1921
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: base64

TWFyaXVzLkNyaXN0ZWFAIHdyb3RlOg0KPiANCj4gDQo+ICAgSGkgTWF0dGVv
LA0KPiANCj4gICAgVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgaGVscGluZyB1
cyBhZGRpbmcgUEFDMTkyMSBzdXBwb3J0LiBJJ20gYWxzbw0KPiBkZXZlbG9w
aW5nIGEgc2ltaWxhciBkcml2ZXIgYW5kIEkgY291bGQgc2hhcmUgdGhlIGNv
ZGUgd2l0aCB5b3UgdG8gbWFrZQ0KPiB0aGUgZHJpdmVyIGJldHRlci4NCj4g
DQo+ICAgIEFsc28gSSBoYXZlIGEgZmV3IHJldmlldyBjb21tZW50cywgcGxl
YXNlLCBzZWUgYmVsbG93Og0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBNYXJp
dXMNCg0KSGkgTWFyaXVzLA0KDQpUaGFua3MgZm9yIHlvdXIgZmVlZGJhY2ss
IHRoaXMgaXMgaW5kZWVkIHZlcnkgaGVscGZ1bCwgYXMgaXQgd291bGQgYmUg
aWYgeW91DQpzaGFyZWQgeW91ciBjb2RlLg0KDQpJIGFkZHJlc3NlZCBzb21l
IG9mIHlvdXIgY29tbWVudHMgYmVsb3cgaW4gcGF0Y2ggdjIgdGhyZWFkLCBy
ZXBseWluZyB0bw0KSm9uYXRoYW4gWzFdLiBJZiB5b3UgaGF2ZSBtb3JlIGNv
bW1lbnRzIGFib3V0IHRob3NlIHBvaW50cyBwbGVhc2UgcmVwbHkgb24gdGhh
dA0KdGhyZWFkLg0KDQpbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LWlpby82NjhiZWMyYThiMjNhXzZlMDM3MDE3QG5qYXhlLm5vdG11Y2gN
Cg0KU2VlIGFsc28gbXkgY29tbWVudHMgYmVsb3cuDQoNCj4gT24gV2VkLCBK
dWwgMDMsIDIwMjQgYXQgMDM6MzQ6MzRQTSArMDIwMCwgTWF0dGVvIE1hcnRl
bGxpIHdyb3RlOg0KPiANCj4gDQo+ID4gKw0KPiA+ICsvKiBwYWMxOTIxIHJl
Z21hcCBjb25maWd1cmF0aW9uICovDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgcmVnbWFwX3JhbmdlIHBhYzE5MjFfcmVnbWFwX3dyX3Jhbmdlc1tdID0g
ew0KPiA+ICvCoMKgwqDCoMKgwqAgcmVnbWFwX3JlZ19yYW5nZShQQUMxOTIx
X1JFR19HQUlOX0NGRywgUEFDMTkyMV9SRUdfQ09OVFJPTCksDQo+ID4gK307
DQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2FjY2Vzc190YWJs
ZSBwYWMxOTIxX3JlZ21hcF93cl90YWJsZSA9IHsNCj4gPiArwqDCoMKgwqDC
oMKgIC55ZXNfcmFuZ2VzID0gcGFjMTkyMV9yZWdtYXBfd3JfcmFuZ2VzLA0K
PiA+ICvCoMKgwqDCoMKgwqAgLm5feWVzX3JhbmdlcyA9IEFSUkFZX1NJWkUo
cGFjMTkyMV9yZWdtYXBfd3JfcmFuZ2VzKSwNCj4gPiArfTsNCj4gPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfcmFuZ2UgcGFjMTkyMV9yZWdtYXBf
cmRfcmFuZ2VzW10gPSB7DQo+ID4gK8KgwqDCoMKgwqDCoCByZWdtYXBfcmVn
X3JhbmdlKFBBQzE5MjFfUkVHX0dBSU5fQ0ZHLCBQQUMxOTIxX1JFR19DT05U
Uk9MKSwNCj4gPiArwqDCoMKgwqDCoMKgIHJlZ21hcF9yZWdfcmFuZ2UoUEFD
MTkyMV9SRUdfVkJVUywgUEFDMTkyMV9SRUdfVlBPV0VSICsgMSksDQo+ID4g
K307DQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2FjY2Vzc190
YWJsZSBwYWMxOTIxX3JlZ21hcF9yZF90YWJsZSA9IHsNCj4gPiArwqDCoMKg
wqDCoMKgIC55ZXNfcmFuZ2VzID0gcGFjMTkyMV9yZWdtYXBfcmRfcmFuZ2Vz
LA0KPiA+ICvCoMKgwqDCoMKgwqAgLm5feWVzX3JhbmdlcyA9IEFSUkFZX1NJ
WkUocGFjMTkyMV9yZWdtYXBfcmRfcmFuZ2VzKSwNCj4gPiArfTsNCj4gSSBr
bm93IHRoYXQgdGhlIHJlZ21hcCBpcyB0aGUgd2F5IGZvcndhcmQsIGJ1dCB0
aGUgUEFDIGRldmljZXMgYXJlIG1vcmUNCj4gZWZmaWNpZW50IGlmIGJ1bGsg
cmVhZCBpcyBkb25lLg0KPg0KSSB0aGluayBwZXJmb3JtYW5jZXMgZGVwZW5k
cyBvbiB0aGUgdXNlIGNhc2UsIGZvciBleGFtcGxlIGlmIHRoZSB1c2VyIGlz
DQppbnRlcmVzdGVkIGluIG9ubHkgb25lIHR5cGUgb2YgbWVhc3VyZW1lbnQg
SSBkb24ndCB0aGluayByZWFkaW5nIGFsbCByZWdpc3RlcnMNCnJlc3VsdCBp
biBhIHBlcmZvcm1hbmNlIGdhaW4uIEFsc28gY29uc2lkZXIgdGhhdCB0aGVy
ZSBhcmUgOCByZWdpc3RlcnMgb2YNCmFjY3VtdWxhdG9ycyB0aGF0IGFyZSBu
b3QgY3VycmVudGx5IGV4cG9zZWQgYnkgdGhlIGRyaXZlciBidXQgdGhhdCB3
b3VsZCBiZSByZWFkDQphbnl3YXksIHNvIEkgYW0gbm90IHN1cmUgaXQgd291
bGQgcmVzdWx0IGluIGEgcGVyZm9ybWFuY2UgZ2FpbiBlaXRoZXIuIEkgd291
bGQNCmxlYXZlIGl0IGFzIGl0IGlzIHJpZ2h0IG5vdyB0byBrZWVwIHRoZSBp
bXBsZW1lbnRhdGlvbiBzaW1wbGUgYW5kIG1heWJlIGV4dGVuZA0KaXQgaW4g
dGhlIGZ1dHVyZSBpbiBjYXNlIHBlcmZvcm1hbmNlIGdhaW5zIGJlY29tZSBv
YnZpb3VzIGFuZCBuZWNlc3NhcnkgZm9yIG1vc3QNCnVzZSBjYXNlcy4gQWxz
byBjb25zaWRlciB0aGF0IHJlZ21hcCBzdXBwb3J0cyBidWxrIHJlYWRzLg0K
Pg0KPiBBbHNvIHdoZW4geW91IGFyZSByZWFkaW5nIGFsbCB2YWx1ZXMgYXQN
Cj4gdGhlIHNhbWUgdGltZSwgdGhlIFZvbHRhZ2UsIEN1cnJlbnQgYW5kIHRo
ZSBQb3dlciBudW1iZXJzIHdpbGwgY2FtZQ0KPiBmcm9tIHRoZSBzYW1lIHNh
bXBsaW5nIHRpbWUgYW5kIHRoZXkgd2lsbCBiZSBjb3JyZWxhdGVkIHRvIGVh
Y2ggb3RoZXIuDQo+IA0KSSB0aGluayB0aGF0IHRoZXJlIGlzIG5vIGd1YXJh
bnRlZSB0aGF0IHRoZSB1c2VyIHdvdWxkIGFsd2F5cyByZXF1ZXN0IHR3bw0K
c3VjY2Vzc2l2ZSByYXcgcmVhZGluZ3MsIGxpa2UgVm9sdGFnZSBhbmQgQ3Vy
cmVudCwgd2l0aGluIHRoZSBzYW1lIGludGVncmF0aW9uDQpwZXJpb2QuIFNv
IGZvciB0aGUgc2Vjb25kIHJlYWRpbmcgYWxsIHJlZ2lzdGVycyBtYXkgYmUg
cmVhZCBhZ2FpbiBhbmQgdGhlIHR3bw0KdmFsdWVzIG1pZ2h0IG5vdCBiZSBj
b3JyZWxhdGVkIGFzIHdlbGwuIEFsc28gY29uc2lkZXIgdGhhdCB0aGUgbWVh
c3VyZW1lbnRzIGFyZQ0Ka2VwdCBpbiB0aGUgZGV2aWNlIHJlZ2lzdGVycyB1
bnRpbCBhIG5ldyBpbnRlZ3JhdGlvbiBpcyBjb21wbGV0ZSwgc28gaWYgdHdv
DQpyZWdpc3RlcnMgYXJlIHJlYWQgY29uc2VjdXRpdmVseSB3aXRoaW4gdGhl
IHNhbWUgaW50ZWdyYXRpb24gcGVyaW9kIHRoZXkgd291bGQNCmJlIGNvcnJl
bGF0ZWQuDQoNCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfY29u
ZmlnIHBhYzE5MjFfcmVnbWFwX2NvbmZpZyA9IHsNCj4gPiArwqDCoMKgwqDC
oMKgIC5yZWdfYml0cyA9IDgsDQo+ID4gK8KgwqDCoMKgwqDCoCAudmFsX2Jp
dHMgPSA4LA0KPiA+ICvCoMKgwqDCoMKgwqAgLnJkX3RhYmxlID0gJnBhYzE5
MjFfcmVnbWFwX3JkX3RhYmxlLA0KPiA+ICvCoMKgwqDCoMKgwqAgLndyX3Rh
YmxlID0gJnBhYzE5MjFfcmVnbWFwX3dyX3RhYmxlLA0KPiA+ICt9Ow0KPiA+
ICsNCj4gPiArZW51bSBwYWMxOTIxX2NoYW5uZWxzIHsNCj4gPiArwqDCoMKg
wqDCoMKgIFBBQzE5MjFfQ0hBTl9WQlVTID0gMCwNCj4gPiArwqDCoMKgwqDC
oMKgIFBBQzE5MjFfQ0hBTl9WU0VOU0UgPSAxLA0KPiANCj4gTm90IHN1cmUg
aWYgdGhpcyBjaGFubmVsIGlzIHVzZWZ1bC4gTm9uZSBvZiBvdXIgY2xpZW50
cyBhc2sgdXMgdG8NCj4gcHJvdmlkZSB0aGlzIGluZm9ybWF0aW9uLiBUaGlz
IG1lYXN1cmVtZW50IGNvdWxkIGJlIGNhbGN1bGF0ZWQgYmFzZWQgb24NCj4g
dGhlIHNodW50IGFuZCB0aGUgY3VycmVudA0KPiANCkkgd291bGQgbm90IG1p
bmQgcmVtb3ZpbmcgdGhlIFZTRU5TRSBjaGFubmVsLCBidXQgdGhlcmUgYXJl
IG90aGVyIGRyaXZlcnMNCmV4cG9zaW5nIGl0IChzb21lIG9mIHRoZW0gY2Fs
bHMgaXQgdnNodW50IG9yIHNodW50X3ZvbHRhZ2UsIGUuZy4gaW5hMnh4KS4g
QXJlIHdlDQpzdXJlIG5vIG9uZSBpcyBpbnRlcmVzdGVkIGluIGl0Pw0KDQo+
ID4gK8KgwqDCoMKgwqDCoCBQQUMxOTIxX0NIQU5fQ1VSUkVOVCA9IDIsDQo+
ID4gK8KgwqDCoMKgwqDCoCBQQUMxOTIxX0NIQU5fUE9XRVIgPSAzLA0KPiA+
ICt9Ow0KPiA+ICsjZGVmaW5lIFBBQzE5MjFfTlVNX01FQVNfQ0hBTlMgNA0K
PiA+ICsNCj4gPiArc3RydWN0IHBhYzE5MjFfcHJpdiB7DQo+ID4gK8KgwqDC
oMKgwqDCoCBzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50Ow0KPiA+ICvCoMKg
wqDCoMKgwqAgc3RydWN0IHJlZ21hcCAqcmVnbWFwOw0KPiA+ICvCoMKgwqDC
oMKgwqAgc3RydWN0IGlpb19pbmZvIGlpb19pbmZvOw0KPiA+ICsNCj4gPiAr
wqDCoMKgwqDCoMKgIC8qIFN5bmNocm9uaXplIGFjY2VzcyB0byBwcml2YXRl
IG1lbWJlcnMsIGFuZCBlbnN1cmUNCj4gPiBhdG9taWNpdHkgb2YNCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBjb25zZWN1dGl2ZSByZWdtYXAgb3BlcmF0aW9u
cy4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKg
IHN0cnVjdCBtdXRleCBsb2NrOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKg
IHUzMiByc2h1bnQ7IC8qIHVPaG0gKi8NCj4gDQo+IEFzIGluIHRoZSBjYXNl
IG9mIFBBQzE5MzQgSSB3b3VsZCBsaWtlIHRvIGNoYW5nZSB0aGUgcnNodW50
IHZhbHVlDQo+IGR1cmluZyB0aGUgcnVudGltZS4gVGhpcyBpcyB1c2VmdWwg
ZHVyaW5nIGEgY2FsaWJyYXRpb24gcGhhc2UuDQo+IA0KQWxsIHJpZ2h0LCBJ
IHdvdWxkIGFkZCB0aGlzIGFzIGFuIGlpb19jaGFuX3NwZWNfZXh0X2luZm8u
IEkgbWVudGlvbmVkIHRoaXMgaW4NCnBhdGNoIHYyIHRocmVhZCBbMV0sIHBs
ZWFzZSByZXBseSB0aGVyZSBpZiB5b3UgaGF2ZSBtb3JlIGNvbW1lbnRzLg0K
DQo+ID4gK8KgwqDCoMKgwqDCoCBib29sIGhpZ2hfcmVzOw0KPiA+ICvCoMKg
wqDCoMKgwqAgdTggZHZfZ2FpbjsNCj4gPiArwqDCoMKgwqDCoMKgIHU4IGRp
X2dhaW47DQo+ID4gK8KgwqDCoMKgwqDCoCB1OCBuX3NhbXBsZXM7DQo+ID4g
K8KgwqDCoMKgwqDCoCBib29sIGZpbHRlcnNfZW47DQo+ID4gK8KgwqDCoMKg
wqDCoCB1OCBwcmV2X292Zl9mbGFnczsNCj4gPiArDQo+ID4gK8KgwqDCoMKg
wqDCoCBib29sIGZpcnN0X2ludGVncl9zdGFydGVkOw0KPiA+ICvCoMKgwqDC
oMKgwqAgYm9vbCBmaXJzdF9pbnRlZ3JfZG9uZTsNCj4gPiArwqDCoMKgwqDC
oMKgIHVuc2lnbmVkIGxvbmcgaW50ZWdyX3N0YXJ0X3RpbWU7IC8qIGppZmZp
ZXMgKi8NCj4gPiArwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBpbnRlZ3Jf
cGVyaW9kOyAvKiB1c2VjcyAqLw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKg
IHN0cnVjdCB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dTE2IGNoYW5bUEFDMTkyMV9OVU1fTUVBU19DSEFOU107DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgczY0IHRpbWVzdGFtcCBfX2FsaWdu
ZWQoOCk7DQo+ID4gK8KgwqDCoMKgwqDCoCB9IHNjYW47DQo+ID4gK307DQo+
ID4gKw0KPiA+ICsvKiBUaGUgaW50ZWdyYXRpb24gcGVyaW9kIGRlcGVuZHMg
b24gdGhlIGNvbmZpZ3VyYXRpb24gb2YgbnVtYmVyIG9mDQo+ID4gaW50ZWdy
YXRpb24NCj4gDQo+IEkgdGhpbmsgaXQgc2hvdWxkIGJlIGEgbXVsdGkgbGlu
ZSBjb21tZW50IGhlcmUuIFRoZSBzYW1lIGNvbW1lbnQgZm9yDQo+IG11bHRp
cGxlIHBsYWNlcyBpbiB0aGUgZHJpdmVyLg0KPiANClRoYW5rcyBmb3IgY2F0
Y2hpbmcgdGhpcywgSSB3aWxsIGZpeCBpdCBpbiBuZXh0IHBhdGNoIHZlcnNp
b24uDQoNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNl
IFBBQzE5MjFfQ0hBTl9QT1dFUjogew0KPiA+IA0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBQb3dlciBz
Y2FsZSBmYWN0b3IgaW4gbVc6DQo+IA0KPiBJIHRoaW5rIHRoZSBzY2FsZSBo
ZXJlIHNob3VsZCBiZSBpbiBtaWNyb1dhdHRzLiBXZSBoYXZlIChtQSkqKG1W
KQ0KPiANCkRvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLWlp
byBzdGF0ZXMgaXQgc2hvdWxkIGJlIGluIG1pbGxpd2F0dHM6DQoNCldoYXQ6
CQkvc3lzL2J1cy9paW8vZGV2aWNlcy9paW86ZGV2aWNlWC9pbl9wb3dlcllf
cmF3DQpLZXJuZWxWZXJzaW9uOgk0LjUNCkNvbnRhY3Q6CWxpbnV4LWlpb0B2
Z2VyLmtlcm5lbC5vcmcNCkRlc2NyaXB0aW9uOg0KCQlSYXcgKHVuc2NhbGVk
IG5vIGJpYXMgcmVtb3ZhbCBldGMuKSBwb3dlciBtZWFzdXJlbWVudCBmcm9t
DQoJCWNoYW5uZWwgWS4gVGhlIG51bWJlciBtdXN0IGFsd2F5cyBiZSBzcGVj
aWZpZWQgYW5kDQoJCXVuaXF1ZSB0byBhbGxvdyBhc3NvY2lhdGlvbiB3aXRo
IGV2ZW50IGNvZGVzLiBVbml0cyBhZnRlcg0KCQlhcHBsaWNhdGlvbiBvZiBz
Y2FsZSBhbmQgb2Zmc2V0IGFyZSBtaWxsaXdhdHRzLg0KDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBW
c2Vuc2UgTFNCIChuVikgKiBtYXhfdmJ1cyAoVikgLyB2Z2FpbiAvDQo+ID4g
c2h1bnQgKHVPaG0pDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3VhcmQobXV0ZXgpKCZw
cml2LT5sb2NrKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICp2YWwgPSBwYWMxOTIxX3ZzZW5z
ZV9sc2IocHJpdi0+ZGlfZ2FpbikgKg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChQ
QUMxOTIxX01BWF9WQlVTX1YgPj4gKGludClwcml2LQ0KPiA+ID5kdl9nYWlu
KTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKnZhbDIgPSAoaW50KXByaXYtPnJzaHVudDsNCj4gPiArDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiBJSU9fVkFMX0ZSQUNUSU9OQUw7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRlZmF1bHQ6DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsNCj4gPiArDQo+ID4g
K8KgwqDCoMKgwqDCoCBjYXNlIElJT19DSEFOX0lORk9fSEFSRFdBUkVHQUlO
Og0KPiANCj4gSEFSRFdBUkVHQUlOIHNob3VsZCBub3QgYmUgdXNlZCBoZXJl
LiBUaGUgZ2FpbiAoZm9yIHZvbHRhZ2UgYW5kIGZvciB0aGUNCj4gY3VycmVu
dCkgc2hvdWxkIGJlIGluY2x1ZGVkIGludG8gdGhlIGFwcHJvcHJpYXRlIHNj
YWxlLiBBIHByb3BlcnR5DQo+IG5hbWVkIHNjYWxlX2F2YWlsYWJsZSBzaG91
bGQgYmUgYWRkZWQgYW5kIHRoZSB1c2VkIGNvdWxkIGNoYW5nZSB0aGUNCj4g
Z2FpbiBieSBzZXR0aW5nIHRoZSBzY2FsZS4gUGxlYXNlIHNlZSBQQUMxOTM0
IGFuZCBmZXcgb3RoZXIgZHJpdmVycy4NCj4gDQpJIHdpbGwgaW5jbHVkZSBn
YWlucyBpbnRvIHRoZSBzY2FsZXMgYXMgc3VnZ2VzdGVkLiBJIGFkZHJlc3Nl
ZCB0aGlzIGluDQpwYXRjaCB2MiB0aHJlYWQgWzFdLiBQbGVhc2UgcmVwbHkg
dGhlcmUgaWYgeW91IGhhdmUgYWRkaXRpb25hbCBjb21tZW50cy4NCj4gDQo+
IA0KPiA+ICsNCj4gPiArc3RhdGljIGludCBwYWMxOTIxX3JlYWRfbGFiZWwo
c3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sIGNoYXINCj4gPiAq
bGFiZWwpDQo+ID4gK3sNCj4gDQo+IHRoZXJlIGlzIGEgImxhYmVsIiBpbnRv
IHRoZSBkZXZpY2UgdHJlZSB0aGF0IHNob3VsZCBiZSB1c2VkIGhlcmUgaW4N
Cj4gb3JkZXIgdG8gaWRlbnRpZnkgdGhlIGRldmljZSBhbmQgd2hhdCB0aGUg
ZGV2aWNlIG1lYXN1cmVzLCBsaWtlDQo+IEdQVV92YnVzIG9yIElPX3ZidXMu
DQo+IA0KVGhlIGRldmljZSBsYWJlbCBmcm9tIERUIGlzIGFscmVhZHkgZXhw
b3NlZCBpbnRvIGl0cyBzcGVjaWZpYyBzeXNmcyBhdHRyaWJ1dGUNCmFuZCBz
byBhdmFpbGFibGUgdG8gdGhlIHVzZXJzLiBJIHRoaW5rIHVzaW5nIGl0IGFz
IGEgcHJlZml4IGZvciB0aGUgY2hhbm5lbA0Kd291bGQganVzdCBiZSBhIGR1
cGxpY2F0aW9uLiBUaGUgcGFjMTkzNCBkcml2ZXIgaW4gZmFjdCBwcmVwZW5k
cyB0aGUgY2hhbm5lbA0KbGFiZWwgaGVyZSBub3QgdGhlIGRldmljZSBsYWJl
bC4gSSB0aGluayB0aGUgc2FtZSBkb2VzIG5vdCBhcHBseSBmb3IgdGhlIHBh
YzE5MjENCmJlaW5nIGEgc2luZ2xlIGNoYW5uZWwgbW9uaXRvci4NCg0KPiA+
ICvCoMKgwqDCoMKgwqAgc3dpdGNoIChjaGFuLT5jaGFubmVsKSB7DQo+ID4g
K8KgwqDCoMKgwqDCoCBjYXNlIFBBQzE5MjFfQ0hBTl9WQlVTOg0KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBzcHJpbnRmKGxh
YmVsLCAidmJ1c1xuIik7DQo+ID4gK8KgwqDCoMKgwqDCoCBjYXNlIFBBQzE5
MjFfQ0hBTl9WU0VOU0U6DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHNwcmludGYobGFiZWwsICJ2c2Vuc2VcbiIpOw0KPiA+
ICvCoMKgwqDCoMKgwqAgY2FzZSBQQUMxOTIxX0NIQU5fQ1VSUkVOVDoNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gc3ByaW50
ZihsYWJlbCwgImN1cnJlbnRcbiIpOw0KPiA+ICvCoMKgwqDCoMKgwqAgY2Fz
ZSBQQUMxOTIxX0NIQU5fUE9XRVI6DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIHNwcmludGYobGFiZWwsICJwb3dlclxuIik7
DQo+ID4gK8KgwqDCoMKgwqDCoCBkZWZhdWx0Og0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPiA+ICvCoMKg
wqDCoMKgwqAgfQ0KPiA+ICt9DQo+DQo+DQo+ID4gK3N0YXRpYyBzc2l6ZV90
IHBhYzE5MjFfcmVhZF9maWx0ZXJzX2VuYWJsZWQoc3RydWN0IGlpb19kZXYN
Cj4gPiAqaW5kaW9fZGV2LA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdWludHB0cl90IHByaXZhdGUsDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBz
dHJ1Y3QNCj4gPiBpaW9fY2hhbl9zcGVjICpjaGFuLA0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciAqYnVmKQ0K
PiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgcGFjMTkyMV9wcml2
ICpwcml2ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsNCj4gPiArwqDCoMKgwqDC
oMKgIGJvb2wgZW5hYmxlZDsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoCBz
Y29wZWRfZ3VhcmQobXV0ZXgsICZwcml2LT5sb2NrKSB7DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlZCA9IHByaXYtPmZpbHRl
cnNfZW47DQo+ID4gK8KgwqDCoMKgwqDCoCB9DQo+ID4gK8KgwqDCoMKgwqDC
oCByZXR1cm4gc3lzZnNfZW1pdChidWYsICIlZFxuIiwgZW5hYmxlZCk7DQo+
ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBzc2l6ZV90IHBhYzE5MjFfd3Jp
dGVfZmlsdGVyc19lbmFibGVkKHN0cnVjdCBpaW9fZGV2DQo+ID4gKmluZGlv
X2RldiwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdWludHB0cl90IHByaXZhdGUsDQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdA0K
PiA+IGlpb19jaGFuX3NwZWMgKmNoYW4sDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKmJ1Ziwg
c2l6ZV90DQo+ID4gbGVuKQ0KPiANCj4gSSB3b3VsZCBsaWtlIHRvIHNldCBl
YWNoIGZpbHRlciBzZXBhcmF0ZWx5IGFuZCBsZXQgdGhlIHVzZXIgdG8gZGVj
aWRlDQo+IGhvdyB0byB1c2UgdGhpcyBmdW5jdGlvbmFsaXR5LiBOb3QgYWx3
YXlzIGJvdGggZmlsdGVycyBhcmUgbmVlZGVkLg0KPiANCkkgd291bGQgcmVt
b3ZlIGZpbHRlcnMgY29udHJvbCBlbnRpcmVseSBiYXNlZCBvbiBKb25hdGhh
biBjb21tZW50cyBpbiBwYXRjaCB2Mg0KdGhyZWFkIFsxXS4gUGxlYXNlIHJl
cGx5IGluIHRoYXQgdGhyZWFkIGlmIHlvdSBoYXZlIG1vcmUgY29tbWVudHMu
DQo+IA0KPiANCj4gPiArc3RhdGljIGludCBwYWMxOTIxX2luaXQoc3RydWN0
IHBhYzE5MjFfcHJpdiAqcHJpdikNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKg
wqAgLyogRW50ZXIgUkVBRCBzdGF0ZSBiZWZvcmUgY29uZmlndXJhdGlvbiAq
Lw0KPiA+ICvCoMKgwqDCoMKgwqAgaW50IHJldCA9IHJlZ21hcF91cGRhdGVf
Yml0cyhwcml2LT5yZWdtYXAsDQo+ID4gUEFDMTkyMV9SRUdfSU5UX0NGRywN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEFDMTkyMV9JTlRfQ0ZHX0lOVEVO
LCAwKTsNCj4gPiArwqDCoMKgwqDCoMKgIGlmIChyZXQpDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4gPiArDQo+
ID4gK8KgwqDCoMKgwqDCoCAvKiBDb25maWd1cmUgZ2FpbnMgYW5kIG1lYXN1
cmVtZW50cyByZXNvbHV0aW9uICovDQo+ID4gK8KgwqDCoMKgwqDCoCB1bnNp
Z25lZCBpbnQgdmFsID0gcHJpdi0+ZGlfZ2FpbiA8PA0KPiA+IFBBQzE5MjFf
R0FJTl9ESV9HQUlOX1NISUZUIHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpdi0+ZHZfZ2Fp
biA8PA0KPiA+IFBBQzE5MjFfR0FJTl9EVl9HQUlOX1NISUZUOw0KPiA+ICvC
oMKgwqDCoMKgwqAgaWYgKCFwcml2LT5oaWdoX3JlcykNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YWwgfD0gUEFDMTkyMV9HQUlOX0lf
UkVTIHwgUEFDMTkyMV9HQUlOX1ZfUkVTOw0KPiA+ICvCoMKgwqDCoMKgwqAg
cmV0ID0gcmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgUEFDMTkyMV9SRUdf
R0FJTl9DRkcsIHZhbCk7DQo+ID4gK8KgwqDCoMKgwqDCoCBpZiAocmV0KQ0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7
DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqAgLyogQ29uZmlndXJlIGludGVn
cmF0aW9uOg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIC0gbnVtIG9mIGludGVn
cmF0aW9uIHNhbXBsZXMsIGZpbHRlcnMgZW5hYmxlZC9kaXNhYmxlZA0KPiA+
ICvCoMKgwqDCoMKgwqDCoCAqIC0gc2V0IFJFQUQvSU5UIHBpbiBvdmVycmlk
ZSAoUklPVikgdG8gY29udHJvbCBvcGVyYXRpb24NCj4gPiBtb2RlIHZpYQ0K
PiA+ICvCoMKgwqDCoMKgwqDCoCAqwqDCoCByZWdpc3RlciBpbnN0ZWFkIG9m
IHBpbg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ICvCoMKgwqDCoMKg
wqAgdmFsID0gcHJpdi0+bl9zYW1wbGVzIDw8IFBBQzE5MjFfSU5UX0NGR19T
TVBMX1NISUZUIHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBB
QzE5MjFfSU5UX0NGR19SSU9WOw0KPiA+ICvCoMKgwqDCoMKgwqAgaWYgKHBy
aXYtPmZpbHRlcnNfZW4pDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdmFsIHw9IFBBQzE5MjFfSU5UX0NGR19WU0ZFTiB8IFBBQzE5MjFf
SU5UX0NGR19WQkZFTjsNCj4gPiArwqDCoMKgwqDCoMKgIHJldCA9IHJlZ21h
cF93cml0ZShwcml2LT5yZWdtYXAsIFBBQzE5MjFfUkVHX0lOVF9DRkcsIHZh
bCk7DQo+ID4gK8KgwqDCoMKgwqDCoCBpZiAocmV0KQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7DQo+ID4gKw0KPiA+
ICvCoMKgwqDCoMKgwqAgLyogSW5pdCBjb250cm9sIHJlZ2lzdGVyOg0KPiA+
ICvCoMKgwqDCoMKgwqDCoCAqIC0gVlBvd2VyIGZyZWUgcnVuIGludGVncmF0
aW9uIG1vZGUNCj4gDQo+IFVzZXIgc2hvdWxkIGNvbnRyb2wgd2hhdCB0byBv
dXRwdXQgb24gdGhlICJPVVQgREFDIiBwaW4uDQo+IA0KPiA+ICvCoMKgwqDC
oMKgwqDCoCAqIC0gT1VUIHBpbiBmdWxsIHNjYWxlIHJhbmdlOiAzViAoSFcg
ZGV0YXVsdCkNCj4gDQo+IEZ1bGwgcmFuZ2UgZm9yIE9VVCBzaG91bGQgYmUg
Y29uZmlndXJhYmxlLg0KPiANCkkgd291bGQgbGVhdmUgdGhpcyBmb3IgZnV0
dXJlIGV4dGVuc2lvbnMuIEkgYWRkcmVzc2VkIHRoaXMgaW4gcGF0Y2ggdjIg
dGhyZWFkDQpbMV0uIFBsZWFzZSByZXBseSB0aGVyZSBpZiB5b3UgaGF2ZSBt
b3JlIGNvbW1lbnRzLg0KDQo+DQo+DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50
IHBhYzE5MjFfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkNCj4g
PiArew0KPiA+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2ID0g
JmNsaWVudC0+ZGV2Ow0KPiA+ICvCoMKgwqDCoMKgwqAgc3RydWN0IHBhYzE5
MjFfcHJpdiAqcHJpdjsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoCBzdHJ1
Y3QgaWlvX2RldiAqaW5kaW9fZGV2ID0gZGV2bV9paW9fZGV2aWNlX2FsbG9j
KGRldiwNCj4gPiBzaXplb2YoKnByaXYpKTsNCj4gPiArwqDCoMKgwqDCoMKg
IGlmICghaW5kaW9fZGV2KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiAtRU5PTUVNOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDC
oMKgIHByaXYgPSBpaW9fcHJpdihpbmRpb19kZXYpOw0KPiA+ICvCoMKgwqDC
oMKgwqAgcHJpdi0+Y2xpZW50ID0gY2xpZW50Ow0KPiA+ICvCoMKgwqDCoMKg
wqAgaTJjX3NldF9jbGllbnRkYXRhKGNsaWVudCwgaW5kaW9fZGV2KTsNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoCBwcml2LT5yZWdtYXAgPSBkZXZtX3Jl
Z21hcF9pbml0X2kyYyhjbGllbnQsDQo+ID4gJnBhYzE5MjFfcmVnbWFwX2Nv
bmZpZyk7DQo+ID4gK8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHByaXYtPnJl
Z21hcCkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2Vycl9wcm9iZShkZXYsIChpbnQpUFRSX0VSUihwcml2LT5yZWdtYXApLA0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiQ2Fubm90IGluaXRpYWxpemUgcmVnaXN0ZXIg
bWFwXG4iKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoCBtdXRleF9pbml0
KCZwcml2LT5sb2NrKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoCBwcml2
LT5kdl9nYWluID0gUEFDMTkyMV9ERUZBVUxUX0RWX0dBSU47DQo+ID4gK8Kg
wqDCoMKgwqDCoCBwcml2LT5kaV9nYWluID0gUEFDMTkyMV9ERUZBVUxUX0RJ
X0dBSU47DQo+ID4gK8KgwqDCoMKgwqDCoCBwcml2LT5oaWdoX3JlcyA9IFBB
QzE5MjFfREVGQVVMVF9ISUdIX1JFUzsNCj4gPiArwqDCoMKgwqDCoMKgIHBy
aXYtPm5fc2FtcGxlcyA9IFBBQzE5MjFfREVGQVVMVF9OVU1fU0FNUExFUzsN
Cj4gPiArwqDCoMKgwqDCoMKgIHByaXYtPmZpbHRlcnNfZW4gPSBQQUMxOTIx
X0RFRkFVTFRfRklMVEVSU19FTkFCTEVEOw0KPiA+ICsNCj4gPiArwqDCoMKg
wqDCoMKgIGludCByZXQgPSBwYWMxOTIxX3BhcnNlX3Byb3BlcnRpZXMocHJp
dik7DQo+IA0KPiBJIHdvdWxkIGxpa2UgdG8gaGFuZGxlIGFsc28gdGhlIEFD
UEkgZm9yIHg4NiBib2FyZHMgYW5kIG5vdCBvbmx5IHRoZQ0KPiBkZXZpY2Ug
dHJlZS4NCj4gDQpJIHdvdWxkIGxlYXZlIHRoaXMgZm9yIGZ1dHVyZSBleHRl
bnNpb25zIHNpbmNlIEkgY2Fubm90IHRlc3QgaXQgYWdhaW5zdCBBQ1BJLg0K
DQpUaGFua3MgYWdhaW4gZm9yIHlvdXIgZmVlZGJhY2suDQoNCkJlc3QgcmVn
YXJkcywNCk1hdHRlbw==

