Return-Path: <devicetree+bounces-188910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A2AE6046
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B055C407764
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434BA27B500;
	Tue, 24 Jun 2025 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="RWig66NC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C6F27A906
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756096; cv=none; b=FnIxiH3Hc2ERN0SUwysegZC2WvBF4C8PgoFn8/2Dhei1YHOpa/de53flvvrtLllAf8VUa9UTSZ1ITUsmvBKZ9mrIzPpLJxm024gYw+iMZ4b7c2neCp5/puChtD1hZ6Y64uiPtN3AZXY5EmWmmyJx0iyJFM+TrcrJrfHKj0vNaPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756096; c=relaxed/simple;
	bh=5WKKCWHFXDqqH5An8UZnpXVHdQMcfV5m1TnJvBNqIM4=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=nC9j1B7eYD4bpQwtn6kd3IuYtimTg4piPh4NPLmKmvRKHVpepHHlF1xqD+0PNuHnT2UuOubdsxAn4W/3z54t51OdUyUqR6yYBaxq6jssscYcPd5IifS3EJ9t8VPy99Oi+fFr5iqHoG/uXdehIv5qo7VmQSRbiCdASzUdTBTgPLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=RWig66NC; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a589d99963so4938073f8f.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750756092; x=1751360892; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1WGlx8yzYyb7R5Ea68xV7+gQv5IF8pex1PAwKtFxm+o=;
        b=RWig66NCML/jArAt8R5ZGpb48n/HMeEWH8sAZgjW7Xg7KlEyfHhgGJchs9TU3RBTuk
         p3a6D3U95W+xCmWHR/FQ0m5fjp0XUlAFa/oSFwCLA44abo0D1O1TODwjTrUhhT416Kzt
         v7LpF2Yl9EOhSlUExO7tlVDRdl3ngr5F6Vl9E5sglWjzp+I3+n9j4C9c8rerZQpEca4C
         l3vngqxowAUp8LuI2qLS87mosZ1Vn6AM+AeFcGUgN4WDah0iynxzFOZGy3886S6UopQN
         qr0VeKgMicKSyTSA4J/2hv72YO7lbID8bzya1zXKCLKNE8Gcrbg6792ovUrOaYgCtGLw
         tUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750756092; x=1751360892;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WGlx8yzYyb7R5Ea68xV7+gQv5IF8pex1PAwKtFxm+o=;
        b=XgN2agM+e/qRVSlwZJGUk9dIXJqeiX7BPc87KKpSh7iNH185r9hzF/p9zRZzKr3lDH
         YkdplhWwrwxSMX63Th0b47ozKylaBHKpjgaE9rZAS7SIFwL/d6CjZMr5iTwZJ/5Y8X8E
         Q8A68XrrxkUO1cxLBaC7SZHZKJxzEl1cyx6RJFonNk56aTg22IMeMy5M+Hwncl1kV+RO
         pF/UMXlgGlrvFgJ5zo4n2fgugABe9BUC7ZHt8F+qH6KtHK8oGl9oE9Z0AftotLi+Mgzc
         pfXNElZfwfR3zK+jjLKZSZ+uOuavXut/qv7ggmOewloBOzaJrfVEXjcy9ULagkPrN//6
         iLIg==
X-Forwarded-Encrypted: i=1; AJvYcCVbDIR8lQZfEL7EJy5Pd70qv/50pyndXZpx1mipKEC6csDuMh30QzO4p6A9FGYZBoudkRtr9VtsCLfg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy118E0GpzMoZSj4mVIShf99G1T0LN8wM35xmKXVoXB07aPcpMF
	CU+fPJWjuILAKoyTEkDYREqMwsTbVMGUXNML7oqBjBEBsvHvaeBeVuCoVpyZdqL93xs=
X-Gm-Gg: ASbGncvIVeUmMuyB2tLJTosaCBk6nqY+M4HH4neIzI9Rwfes1lTeJfSUSkUv69rFy0Q
	PHl5yuMewJjJzCC7VbtIC+DuziY3HiG+I1x2WaYV8FJ25TU9foWfzvxjvM7bGJBaaMiO9820ZzA
	EAr3DO3ijLIEl1BFiqjZ4z4+TGC9EdBoa9yN0Ayp0jMTFFIGvErOXvpTxl3/BKUJ5kL8A3aBOvU
	7DkNfXcFj8/oPdPiZYeffO0HDpT7CESu2K0c9zftucMPYWvwA3EFeyeOHgDKzj6vG3IZBHR+lXb
	FSB3y0HV2Upfr7sjI5ppBHsHSqeOJOtHCJpWYJhhT2X94hJi1wgdK3o/REokQig0s+MltN3NS5k
	1NojE
X-Google-Smtp-Source: AGHT+IFVLQyIkafga8ZmapRXTQA2a6f4RLzTA90MtdoXYtLDNP76GcT52leDn3drvEP9Ci/07cw57g==
X-Received: by 2002:a05:6000:70d:b0:3a4:d6ed:8e2e with SMTP id ffacd0b85a97d-3a6d12e5d07mr8857901f8f.41.1750756091615;
        Tue, 24 Jun 2025 02:08:11 -0700 (PDT)
Received: from smtpclient.apple ([2a02:16a:7402:0:54f7:a1c1:3e0:3848])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e7fb5716sm1439786f8f.0.2025.06.24.02.08.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Jun 2025 02:08:11 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: mediatek,mtmips-sysc: Adapt
 compatible for MT7688 boards
From: Ezra Buehler <ezra@easyb.ch>
In-Reply-To: <20250620-unnatural-bloodhound-of-tenacity-4133bd@kuoka>
Date: Tue, 24 Jun 2025 11:08:00 +0200
Cc: linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Harvey Hunt <harveyhuntnexus@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Reto Schneider <reto.schneider@husqvarnagroup.com>,
 Rob Herring <robh@kernel.org>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Stefan Roese <sr@denx.de>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <C75A767D-BD81-48CB-8D39-9FD19BA67E78@easyb.ch>
References: <20250619203502.1293695-1-ezra@easyb.ch>
 <20250619203502.1293695-2-ezra@easyb.ch>
 <20250620-unnatural-bloodhound-of-tenacity-4133bd@kuoka>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3826.600.51.1.1)

> On 20 Jun 2025, at 09:42, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>=20
> On Thu, Jun 19, 2025 at 10:34:59PM GMT, Ezra Buehler wrote:
>> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
>>=20
>> As the MT7628 and MT7688 are identical in most respects, mt7628a.dtsi =
is
>> used for both SoCs. To prevent "Kernel panic - not syncing: unable to
>> get CPU clock, err=3D-2" and allow an MT7688-based board to boot, the
>> following must be allowed:
>>=20
>>    compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", =
"syscon";
>>=20
>> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
>> ---
>> .../bindings/clock/mediatek,mtmips-sysc.yaml  | 27 =
++++++++++---------
>> 1 file changed, 15 insertions(+), 12 deletions(-)
>>=20
>> diff --git =
a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml =
b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>> index 83c1803ffd16..3fabaa8acc10 100644
>> --- =
a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>> +++ =
b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yaml
>> @@ -26,18 +26,21 @@ description: |
>>=20
>> properties:
>>   compatible:
>> -    items:
>> -      - enum:
>> -          - ralink,mt7620-sysc
>> -          - ralink,mt7628-sysc
>> -          - ralink,mt7688-sysc
>=20
> I do not understand why this is removed and commit msg explains =
nothing
> about it. Re-add it back.

OK, so you suggest we allow

compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";

and

compatible =3D "ralink,mt7688-sysc", "syscon";

I'll adapt my patch accordingly.

Still, as AFAIK the MT7628 and MT7688 are identical in this regard,

compatible =3D "ralink,mt7688-sysc", "ralink,mt7628-sysc", "syscon";

would technically be valid too. Could you elaborate why that is not a
good idea? The MT7688 is basically a subset of the MT7628.

Cheers,
Ezra.


