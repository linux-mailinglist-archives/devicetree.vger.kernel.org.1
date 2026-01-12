Return-Path: <devicetree+bounces-254046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0183ED135A2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B52A030617FD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41AE273D9F;
	Mon, 12 Jan 2026 14:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xJgZjaiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEC625A642
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768228334; cv=none; b=fQJVeveSRXqnBabMSzSLUenl0x+cQUXYV3zB6AoZRTW7Rn9+zhewtDQBcGteK4jivxRkZeHQQb3weu0XC8Qy2kgOOXWXTzfuLsYuYpqeh3kcd32ohlqFNPY8Csngpk+qEMubIboAaWourMkbZBA1ID+Sys6k1TAZPNgLZvdELxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768228334; c=relaxed/simple;
	bh=FfbWO1aGuOn2uSoQoraer2tqN4rBchMXS5VzEnX6yfI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bGman/FHcodHRSOgwTFLtKomTW45Bs9x92lvM20lqVRERoioRuJ6kCYkG9/IPsAPkTclZe6Uk4zorupv1Wfv4jTW7TkAOw5bYDFSi4NIUVdpnHSqiQZajnNE0Wvcncw3hmJDociPPBOuw9Zx2Dja764jfih9gMZm6YG57Wu4Q+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xJgZjaiX; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4ed7024c8c5so54949591cf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768228332; x=1768833132; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FfbWO1aGuOn2uSoQoraer2tqN4rBchMXS5VzEnX6yfI=;
        b=xJgZjaiXNoWBwLhrw9U818ib2IpTDu3i7fMG7wKQevOCu0DYhwpHlIKenbk7WCrq9b
         MnIoqM0kQ/bPHg6js+SDi0n7aPCXTgtfo+RPHmxZSPdtgZr0flf994xVXMxPWMLXnx33
         2K+v7kWNU+JMmqGJ+Yp1AFP9sQNL75gAGTYttgVh5Z8sBXsRFy/gRvCB3GmKEDDisAg0
         NSDT0qag6l5AfHrhY8GGjg4Oq/eac/FfNykaIQajGkHso5BLKMOzAcWlgOHLptz5qs89
         xxfotJN+9CRo2WBgqvLZ9PFbbNmYk6ZS3fQmHahc6ub40W57tTkKyI341EqrCwn1JDvu
         UB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768228332; x=1768833132;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FfbWO1aGuOn2uSoQoraer2tqN4rBchMXS5VzEnX6yfI=;
        b=qKrF6Q6tR0UoHPa9G8XbM+w+sZAg5l51My4lSjt6xr/guq7x7Q9Y8g8gVmNmQ4Ef4E
         78Hw85exwEF1BvjmHiKmXMXNL1w2LtljGXikE2gIYY4uEpVlD8SCU17doZ8bMDzA2tKQ
         nImtXjXZYJkwQNOZ4E3WhPzwmP6gKeNAveDXi4/dg+oLtt8PAb7pPefaDPHsGNFFGp3W
         XOm8+Igp7gpb/Gpr/2FSJRMBFMC57X5qzi/DvUB/8+bdevE/DWGi8eMswdCIfwzAbNey
         w0IU/MIQtr1UraiIio/vQwbWdiJaeZ4gmjHTly/U6BkDmXYWabU3v6iIZmkU0hkqkSo/
         FK6g==
X-Forwarded-Encrypted: i=1; AJvYcCWZRqMrS/+HKOcCGdfihIbHqsIMSUSG8XiSIgL2pVSMCHYa+ixDoE+ttD+wV0bl1kBma/izUvmERDZL@vger.kernel.org
X-Gm-Message-State: AOJu0YxxtQn/UJJxOjsTg+/oNNojgGqh+cSBFT50ko/EwyKvR6KmpXvA
	+1ltNc5U+pg4MpwCcx6rmsQijfenNHeDmgufM0cI8ZRjKKqQSr6oBYsttnIWWSCh20Y=
X-Gm-Gg: AY/fxX7fCcBxCkRZj3Dly1q5MA8t6ZegdJN8R61DbWeJPC9qChftA4SuM9xO6ouwcq1
	xrxTB/kGjM32TwznQta34gF6u4NiPgcdSnQj6PkDR2ALuEm1tOaR3Jj/2Hf21WTVzJR35J6iz6Q
	VLHv7L4aTwUdVBNXFcVKzlSIDdvPTKVgnKBCtizMOQ3Yceo3U+XJfe1LGkw0ZYmuMWxFDIG1vHF
	dIOGX8Zid7d9lyWGfk2LH33cH0nbXlFRWSjFkjDdbyKr4dKwcN16kjSd3+WeQFi+RWwFEef4KCJ
	BAap8bkdXp/PGUba2+TNSsT8vgn+3F7gvy1lJoyYlBMAqoRYCPmWHU1xUpNRwwGSN1kc77K8sqf
	DcT+d9Q2w9YA4pYgTA+Xzq64+NrZw8DTw7wMxXCEPKKjTJ29vsHCLifwYzAofPrmqdgwicl1pxf
	0HKtvoNo76gvSL8vQ4
X-Google-Smtp-Source: AGHT+IHea1XbblI0vmCFH9AgF6ECutmFZl6Uyg98T0XsIc8dVZ57in8jEwwvFP3O7OjCYMeRYIbGfw==
X-Received: by 2002:ac8:5359:0:b0:4ff:c63c:3ca3 with SMTP id d75a77b69052e-4ffc63c3d79mr136106261cf.47.1768228332043;
        Mon, 12 Jan 2026 06:32:12 -0800 (PST)
Received: from draszik.lan ([212.129.79.54])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8e627absm122860611cf.30.2026.01.12.06.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:32:11 -0800 (PST)
Message-ID: <0076e60fb5a4d3a6970d93b4768d4f083baa7a83.camel@linaro.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: clock: google,gs101-clock: Add DPU
 clock management unit
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki	
 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	kernel-team@android.com, Will McVicker <willmcvicker@google.com>, Juan
 Yescas	 <jyescas@google.com>, Doug Anderson <dianders@google.com>
Date: Mon, 12 Jan 2026 14:32:49 +0000
In-Reply-To: <20260112-dpu-clocks-v2-2-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
	 <20260112-dpu-clocks-v2-2-bd00903fdeb9@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

T24gTW9uLCAyMDI2LTAxLTEyIGF0IDE0OjE2ICswMDAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IEFkZCBkdCBzY2hlbWEgZG9jdW1lbnRhdGlvbiBhbmQgY2xvY2sgSURzIGZvciB0aGUgRGlzcGxh
eSBQcm9jZXNzIFVuaXQKPiAoRFBVKSBjbG9jayBtYW5hZ2VtZW50IHVuaXQgKENNVSkuIFRoaXMg
Q01VIGZlZWRzIElQcyBzdWNoIGFzIGltYWdlIHNjYWxlciwKPiBlbmhhbmNlciBhbmQgY29tcHJl
c3Nvci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxp
bmFyby5vcmc+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2Mgo+IMKgLSBhbHBoYW51bWVyaWMgcGxhY2Vt
ZW50IChLcnp5c3p0b2YpCj4gLS0tCj4gwqAuLi4vYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAx
LWNsb2NrLnlhbWzCoMKgwqDCoMKgwqDCoMKgIHwgMTkgKysrKysrKysrKysrCj4gwqBpbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5owqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAz
NiArKysrKysrKysrKysrKysrKysrKysrCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS0KPiBjbG9jay55YW1sCj4gaW5kZXggYTgxNzY2
ODdiYjc3M2FlOTA4MDBiOWMyNTZiY2NjZWJmZGVmMmU0OS4uMDA2MjBhYjE4NzJkYjA0ODlkY2Ux
ODIzYWI1MDBjMDA2MmI2NTFmMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLWNsb2NrLnlhbWwKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLWNsb2NrLnlhbWwK
PiBAQCAtMjgsNiArMjgsNyBAQCBwcm9wZXJ0aWVzOgo+IMKgwqAgY29tcGF0aWJsZToKPiDCoMKg
wqDCoCBlbnVtOgo+IMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtYXBtCj4gK8KgwqDC
oMKgwqAgLSBnb29nbGUsZ3MxMDEtY211LWRwdQo+IMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEw
MS1jbXUtaHNpMAo+IMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtaHNpMgo+IMKgwqDC
oMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtbWlzYwo+IEBAIC04Miw2ICs4MywyNCBAQCBhbGxP
ZjoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBjb25zdDogb3NjY2xrCj4gwqAKPiArwqAgLSBpZjoKPiArwqDCoMKgwqDCoCBwcm9wZXJ0
aWVzOgo+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqAg
Y29udGFpbnM6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Q6IGdvb2dsZSxnczEwMS1j
bXUtZHB1Cj4gKwo+ICvCoMKgwqAgdGhlbjoKPiArwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+ICvC
oMKgwqDCoMKgwqDCoCBjbG9ja3M6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBFeHRlcm5hbCByZWZlcmVuY2UgY2xv
Y2sgKDI0LjU3NiBNSHopCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjog
RFBVIGJ1cyBjbG9jayAoZnJvbSBDTVVfVE9QKQo+ICsKPiArwqDCoMKgwqDCoMKgwqAgY2xvY2st
bmFtZXM6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIGNvbnN0OiBvc2NjbGsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBi
dXMKPiArCj4gwqDCoCAtIGlmOgo+IMKgwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+IMKgwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZToKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9j
bG9jay9nb29nbGUsZ3MxMDEuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdz
MTAxLmgKPiBpbmRleCA0NDJmOWU5MDM3ZGMzMzE5OGExY2VlMjBhZjYyZmM3MGJiZDk2NjA1Li40
ZWU0NjUwMzY2M2MxZjhkOTQ2MzUzNmMzNDdkZTVkOTkxNDc0MTQ1IDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLmgKPiArKysgYi9pbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oCj4gQEAgLTYzNCw0ICs2MzQsNDAgQEAKPiDC
oCNkZWZpbmUgQ0xLX0dPVVRfUEVSSUMxX0NMS19QRVJJQzFfVVNJOV9VU0lfQ0xLCQk0NQo+IMKg
I2RlZmluZSBDTEtfR09VVF9QRVJJQzFfU1lTUkVHX1BFUklDMV9QQ0xLCQk0Ngo+IMKgCj4gKy8q
IENNVV9EUFUgKi8KCk1heWJlIGFkZCB0aGlzIGJsb2NrIGJlZm9yZSBoc2kwIGFuZCBhZnRlciBh
cG0gdG8ga2VlcCBhbHBoYWJldGljIG9yZGVyaW5nCm9mIENNVSBibG9ja3MgaW4gdGhpcyBmaWxl
LgoKQ2hlZXJzLApBbmRyZScK


