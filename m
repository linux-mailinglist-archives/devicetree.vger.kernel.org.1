Return-Path: <devicetree+bounces-188911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8D9AE6048
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E21A4077C1
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49E927AC3C;
	Tue, 24 Jun 2025 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="RWig66NC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107A227A90F
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756096; cv=none; b=nbyhCJQjJC+D2LKSkZ+HI/4gWLoRrwzFZtFDa/jIoisg4WCVP9qSThaJhf5F+6FYwXXARUHBHP3cYKEXg+Bw6NQB6NeMOgDCOpIVqFohLstVd0C70EqA30xGv4DuN8YWnNfE8v89CUQw+fa/s3Ssi/aC7XqS2EPH/JfCs/yp9PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756096; c=relaxed/simple;
	bh=5WKKCWHFXDqqH5An8UZnpXVHdQMcfV5m1TnJvBNqIM4=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=nC9j1B7eYD4bpQwtn6kd3IuYtimTg4piPh4NPLmKmvRKHVpepHHlF1xqD+0PNuHnT2UuOubdsxAn4W/3z54t51OdUyUqR6yYBaxq6jssscYcPd5IifS3EJ9t8VPy99Oi+fFr5iqHoG/uXdehIv5qo7VmQSRbiCdASzUdTBTgPLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=RWig66NC; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a54690d369so4295948f8f.3
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
        b=aN/KwrsIWBNB4tcoGYiONV24HlBlYVyVe9yBWtcW9u5KPueONLKiIyYI5VcUGCyGMe
         He/rk+mSqFD33A8zu6ubgPle6bQouZJVA7SqAWF+4nPGbny66i6mPx3FT9Ri1jr6c0xM
         svwuQb8v5hhw1mmzIDSBnBCwcbJfmCsf9XvL8Hy6s+vbxShEMPBqtsGMNkdiyDUiwraO
         9Z8VfP1/OoXN1hFklDHnuCfM2yCIssv36+MD7f+97+XpuLm6ITdF7CYfUQ0L+ySA8Q7e
         cwlHcOPXXIqb8p5GmifOnR86d5pbsvjrtn5JO0Rn3LS7WWZGd/qLBZ4UdK4OucsrwDnN
         E5Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXOpOfgDVQrEEQHNg3b/k0o3xA3NlpNBm4B6+JdaszKz2PTugYfOCyUXEkVHzbuwxXg9AGYg0ErbNm/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu8XCd5RCOANqUJ0YImPB9cRLxl86+hQ9l9/HyoGdp4aefx7Er
	B6JxuVRQLv/MRortRUgkQnlaJwKfxXirBwX6xI/vpzluLVnSLQ/j3QWrX69kjgr4X7I=
X-Gm-Gg: ASbGnctIcxXK+FY+2yY0JemGA3z7emOo556WjvbeE+47U/lVyW7j7R4KTkvsrqBonOu
	QguZk7MdtkKx0u8bGp/gwYU2bCFZqdhj6bZfAxjFXsWxdZS4NR/JZaYYgfEEt+LcLugPpISSzt+
	Sbo1g2hoz0Au0KZOvvHLIwDCpLZeEohSudkLs3S5cjggPotLcImjQbF8wlNjGjEdV7ouRERIziN
	Eq+L0V6S5CZraZrBhNg9n+3MTujuadizGungr9ICNxtTNgkK6bTDTKBVAA+f4bo6jPw68TQ0C68
	RKV2nwUrH306yZ+yNKIHi3xDgdkSonkt9Hs5OY2KN+Rf1T9woRrYFybiEZ49MaVjn7fAQAfA9u9
	riL5GAwcQcCz9pZY=
X-Google-Smtp-Source: AGHT+IHIiGP2EXYtNWJFCTShYwnPbQfV9Yt33Xq0JCDLCavYNerSkXaiBRZSLpRhlXqq3hR0aB58vw==
X-Received: by 2002:a5d:6f0f:0:b0:3a4:f7e3:c63c with SMTP id ffacd0b85a97d-3a6d0f3d61amr14270045f8f.0.1750756091896;
        Tue, 24 Jun 2025 02:08:11 -0700 (PDT)
Received: from smtpclient.apple ([2a02:16a:7402:0:54f7:a1c1:3e0:3848])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646d7d8fsm133469355e9.15.2025.06.24.02.08.10
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


