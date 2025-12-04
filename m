Return-Path: <devicetree+bounces-244352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E574CA3FC2
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 15:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5D5A30D78C6
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 14:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002CB34164B;
	Thu,  4 Dec 2025 14:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lPMDookk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39949344053
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 14:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764857628; cv=none; b=Wa1wElmdmoIXIFJMVSPBk0Yq58PdTTbAIBxuTKV4rwiL5a/aykSc/E9Ga8Su/F2iY29gNvBUOnqdfJ9wMWvD4psTue9G7Z/XjBl/YsPgdvrDNrtFRGQqK7jUAwk9vVTFo31ptp2z7VsQ5chq9xz/YL10V7DXzvAsLUdY8EhV0lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764857628; c=relaxed/simple;
	bh=3ZVbu/x5JRdf6j/dYZp7sC/kDSAGXHvQxbK6tmyZL14=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=J+y9S6P45tBGyjM7R8OKpP3O13lQImAEnog63WB3zxJfI7N6LBPHSm9/6DxuFAPVJQBKYcPlrWJyL7FCYyGCrXnUflRKCdVlt1ZoGrjsXBHjSMMVsa/QF33u2qZ90+3vMb6e4PX3ElMSZEWSGC6ZMAyy9YWCFXC131+O+eMG0xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lPMDookk; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so9054475e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 06:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764857624; x=1765462424; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+d+kOXWZ77Pa79XMX8gLZVtaDKOXA1/iNRWjymG+eA=;
        b=lPMDookkh0P2RwXBe6Ty3kNI+KpHzZwtk/8Uc+bpB2aRonAA9nKW96y8gjLIhdEKDE
         1jg6C6PNbzhlsA6K2rzEhJGxZu0HXuVy01bWkx1WfjGQGP96DPSttevo4rDDrAItcDdi
         T8rYM3RG41ziaY0fJVWfbXpYTX4ELWoCZbqPhE3096lPWAUpdsXWNMu6Oa9sVFcEQJNM
         XmqV2wX5WNOdqGrDwPgINIe7vUhORTLr8JKYTCMjDd3l7KbIAnfQ9KvouJpcNmeq7hGd
         J7rO57NFK5C6O44l7UQVYf7nTXnudRGnm3wRMtdH5eA0XYe9wVpf84HwTWXO5eyhwAHS
         o+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764857624; x=1765462424;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A+d+kOXWZ77Pa79XMX8gLZVtaDKOXA1/iNRWjymG+eA=;
        b=qf5KGq6en5lytmNR089w73DF9X16ifDZCBULbbRBe6B+Z/o8GrXyyczqZM/HADw0NJ
         zOUwCRWcqpIDgGumG3j5RYfeIRyEUrfux0oCx3EdMgMfIoGexodTGhi1NMUo2k77MGVx
         wxZrBObqWraVB8sUlW70sMRWoBBq8E8NlDHfHDvkCH1c2orfswa9lT64CWihQQi4nTox
         Y5JTLxIQTRBSIeKlovtghoD1iYF0OJz+7gJ6ZVJsGgvBP6DCR/2KqmltCYrIMiX2WcxP
         B2p6MT0EkndsFJ22IiqUILi3utAcrTUMOmD2g7tO9mcL9YZJf7Lh8PbbBrV/NiNosDRA
         bUgg==
X-Forwarded-Encrypted: i=1; AJvYcCX/VibG1cD0wCKV4L5Vg4PatRidDPcL56rH7l5cW2+TAZxcpiDE0oz+A66PWfh/fjdITc5nmeFP3TcR@vger.kernel.org
X-Gm-Message-State: AOJu0YzKt/E12gqHmrQIeovdnHDctxr2BAxIuRYshUChotJYxgVnonyy
	//XBvgih/nqAF66bp6KO12xxVPvwNiNt/tDXnlBKOZX7oW8iQGput8wd
X-Gm-Gg: ASbGncuNI2m0gRQ1Kh6YeRIRauF0Zg4g4VgdNbv2lpwu4Cohw06/h2syMUxYdC0riUX
	MydaPuyG5gHuUAqpwINxv4G3giP+8iHWiHLDpl4V90pgw6J+lBRb2GN4xwA1f4F8pKhxkjq7V17
	zMzFBG42V1yq9dQkGwGjTheusM5CHAKpbbRuOAr3nBjzvkJk5vpOH9oSjJGwMiddDP8GOFO3cpC
	HfpHnD9imKZbaR/5Qjn8HdVC9u4YIuW+VxRDGy4RKbP37DF1/kxX7o573SVGcfFIvXpR6DO+DzH
	Vs1gDrB9NnUF2choE8Tb/oZerypWAQ5uGS8Zx3ILHh1/yBOB2nICCxSU21K5bgTvmwrV4AJApM/
	gTFeihmWJVmFrcgVU2eZAbuGIoO18TImo/Edkck2AcbySMVBLbHxWjAGQTkcU64PWw24e0+pgsC
	pexetFvnJ496fp4DixdfLUVgnSpd0zzGg5D7rXXQnZhjPaCaFgrtsqMqiQiLVtvGLlA00nO295Q
	Bp0O6ANRg==
X-Google-Smtp-Source: AGHT+IHtYgz33VbUlNe7osl81HTRTx4C13vE9/CW5P0/J5lUDoT4fb4a8vSZ742vyf6Iomub3fxbbQ==
X-Received: by 2002:a05:6000:24ca:b0:429:d3a7:18bd with SMTP id ffacd0b85a97d-42f79875179mr3681891f8f.59.1764857624145;
        Thu, 04 Dec 2025 06:13:44 -0800 (PST)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbfeb38sm3386105f8f.12.2025.12.04.06.13.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Dec 2025 06:13:43 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
Date: Thu, 4 Dec 2025 18:13:29 +0400
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
 <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
To: Alex Bee <knaerzche@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3826.700.81.1.3)

> On 4 Dec 2025, at 12:23=E2=80=AFam, Alex Bee <knaerzche@gmail.com> =
wrote:
>=20
> Hi Robin,
>=20
> Am 03.12.25 um 17:21 schrieb Robin Murphy:
>> [ Just noticed this... ]
>>=20
>> On 2025-08-28 5:43 pm, Christian Hewitt wrote:
>>> From: Alex Bee <knaerzche@gmail.com>
>>>=20
>>> Add the required nodes to enable SPDIF audio output on
>>> the Beelink A1 set-top-box.
>>=20
>> But the A1 doesn't have S/PDIF? Only HDMI plus a 3.5mm jack connected =
to the analog audio codec (and possibly the composite TV out) :/
>>=20
> Yeah, sorry - this patch wasn't supposed to be submitted upstream.

Apologies, this is my enthusiasm for trying to clear out the patch
collection LibreELEC has been hoarding by sending things upstream
on behalf of the original authors (and hoarders).

Would you like me to send a revert patch?

Christian

> Regards,
>=20
> Alex
>=20
>> Thanks,
>> Robin.
>>=20
>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 =
++++++++++++++++++++++
>>>   1 file changed, 23 insertions(+)
>>>=20
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts =
b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>> index f7c4578865c5..b276a29bdd85 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>> @@ -58,6 +58,24 @@ ir-receiver {
>>>           gpios =3D <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
>>>           linux,rc-map-name =3D "rc-beelink-gs1";
>>>       };
>>> +
>>> +    spdif_sound: spdif-sound {
>>> +        compatible =3D "simple-audio-card";
>>> +        simple-audio-card,name =3D "SPDIF";
>>> +
>>> +        simple-audio-card,cpu {
>>> +            sound-dai =3D <&spdif>;
>>> +        };
>>> +
>>> +        simple-audio-card,codec {
>>> +            sound-dai =3D <&spdif_dit>;
>>> +        };
>>> +    };
>>> +
>>> +    spdif_dit: spdif-dit {
>>> +        compatible =3D "linux,spdif-dit";
>>> +        #sound-dai-cells =3D <0>;
>>> +    };
>>>   };
>>>     &analog_sound {
>>> @@ -325,6 +343,11 @@ &sdmmc {
>>>       status =3D "okay";
>>>   };
>>>   +&spdif {
>>> +    pinctrl-0 =3D <&spdifm0_tx>;
>>> +    status =3D "okay";
>>> +};
>>> +
>>>   &tsadc {
>>>       rockchip,hw-tshut-mode =3D <0>;
>>>       rockchip,hw-tshut-polarity =3D <0>;


