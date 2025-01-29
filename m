Return-Path: <devicetree+bounces-141707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D6A221A1
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69B017A16B5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C011DFD91;
	Wed, 29 Jan 2025 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="UvBCbLxr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69761DFDA3
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738167625; cv=none; b=BDFJOWl+VMG9EM9NO4O6V4mUuBhaBNRYbXS/uMue6o8KRNPyCgQHE4Dnw0kG+1OE1rfg8eLAYZah8yfP/H8EgIDc4ShHqiCt/fNU7pVhbxB6aqPWzXopwOeQ5haBpLliAwkOexWqqpE+mhagtXOZa8ThCSmkC4X13lBDqi0BNbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738167625; c=relaxed/simple;
	bh=bi5jxy8pcsrdWXk2UcX0b7/4O10xr5tppBodfAD555I=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LVKbuAOLYm6PJ3w0tiCRg29Pp87ddzg26qiknMxv/CYqEVoOJb5MkYIIziQTdCITCShLvMvAUIk8dH9h6c3UfzJMBd3OF0D2Y65KctSAi257mqSDVEtgaRcmw1aSlK/iKTgvBI4bcth5lRBKH7MZsCbdKHCGOxsrQsac6WSzicc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=UvBCbLxr; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7b6eb531e13so402476185a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 08:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738167623; x=1738772423; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AASPGoZdR79efbOZhdjcAbczy5T4cO1CnTVAPCvMgDc=;
        b=UvBCbLxrx3R/qO7IKcYX5SrcSXBC1mK8sGsJls5sjrfOJlTtCt29qCMlAzKur0sv5d
         GEOyTRP2oA/dDRITltJ1xXdRDFLilWLt6y3QFU3aqrO+GDftqGWl/QcYPss/FVYcK7uv
         KSlgHFZ3kyzRCZ8B8iBZ6vC21s4MTzn8n96bdPgootiPXUlEgGHDNbJebrYEr/ian0Uy
         OcbWUcoBAon8P1Q7i3avzyOlZT0BTH49vPAfaRh+T+i3Tv1jcXMr1EtapXEdNhL57qbc
         DVjRxAnGWWnQo1CcqgW0YcFQHctmmLPBUmOw00tjgu2Co0e9QkAbQVPG3vGlKMoAPM5S
         yRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738167623; x=1738772423;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AASPGoZdR79efbOZhdjcAbczy5T4cO1CnTVAPCvMgDc=;
        b=nkEwkyDiJoPJwIurDzDEekX24/65bAcPWQ8lH0mZg2rzfh9iOMJxL3CfUJN7AhS2EJ
         Xh/Vz/X4ZP97Ffm2eZzxdLHGJs3shX8JOg0S37zFe8/afwblMqR0nIhwkUkU81eUTLE4
         q8ycKw9dlocXFRzND2/5qqzLZYFr21TwLsTiXMOwjHNCEg9AwsBKXMVl7+e44hMVFkBh
         /RzYXq+lOZvNfpxa7G7Y811qx2QuTPt5a1jhUSFekzqQ2qQ0dpF2GOo5A1n6BE8Pq+hA
         E6rgaRvZ/7Nh3q+8+rMdsFlYoazPe9wARwHeHH1nqUEry+zUlceLIHJwMSWVLkVch3tb
         xb5g==
X-Forwarded-Encrypted: i=1; AJvYcCXD30Ii45Ujrx2wPXZYeOvFC3wcx2slRRWgf0czJbLLsU/cy9vwIG9zDcucVdS5CyW5EcGR8XB8xWYb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4ZUOS/qGFqYriG1nhZyoUb5whHVjKdmig4mkkArfVx8XtFd3f
	ZO90W4crgGi25PamnOBq53WGeJgxN1EM0ev4qEOLn0LHGN+pVzkpFtvJjYMKn40=
X-Gm-Gg: ASbGncuN3cwGsc102XEthGu3XTKl0LXTYgkQBAH0HIlULzJCiFGtsBH6vNxQOFvKdHn
	goF5MTnb+stOS+5W40lFaNLkTJ1jc9hSt4rgW1imWhQwqtXQDGh3lxKlw/lJY7Vjrhcv+FKvJjD
	zDFRxWoQiP7/LpZBd3bYftU6Zd5jOb58MTIUzaLb+khUP5/DvwRzG8yB+SC4NN55unYxkLj4uDt
	54Ez3APhd/3aw+wM0VAp7CoN7jcRt38TKtppTh9wdhEu7FvZx9F93yj/a1H9KkA6PTB0KGS9GpT
	dwx+TUd/d6+sF+qi
X-Google-Smtp-Source: AGHT+IGppDxv2MaMp8XMUqVjUk8aPzK+5B86GRXvdwYxAlIS5cCU4yod4npv5CwwFk+ECmoEn75I5Q==
X-Received: by 2002:a05:620a:280e:b0:7b6:cedf:1b4e with SMTP id af79cd13be357-7bffcd900aemr507124485a.41.1738167622668;
        Wed, 29 Jan 2025 08:20:22 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be9ae7dd05sm637120385a.13.2025.01.29.08.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 08:20:22 -0800 (PST)
Message-ID: <bd5abd7f1e29853729c1c9b57b62e2e4a9524e6d.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Detlev Casanova
	 <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>, 
 Mauro Carvalho Chehab	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner	 <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,  Sebastian Reichel
 <sebastian.reichel@collabora.com>, Dragan Simic <dsimic@manjaro.org>,
 Alexey Charkov	 <alchark@gmail.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>,  Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev
Date: Wed, 29 Jan 2025 11:20:21 -0500
In-Reply-To: <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
	 <20240615015734.1612108-2-detlev.casanova@collabora.com>
	 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
	 <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Piotr,

Le mercredi 29 janvier 2025 =C3=A0 15:48 +0100, Piotr Oniszczuk a =C3=A9cri=
t=C2=A0:
>=20
> > Wiadomo=C5=9B=C4=87 napisana przez Detlev Casanova <detlev.casanova@col=
labora.com> w dniu 15 cze 2024, o godz. 21:44:
> > >=20
> > >=20
> > >=20
>=20
> > Yes, the vdpu34x decoder on rk356x socs should be supported by this dri=
ver but=20
> > I don't have boards to test that unfortunately.
> >=20
>=20
> Detlev,
>=20
> Just FYI:
>=20
> I done some tests of rkvdec2 on 6.12.11 on 3588, 3568 and 3566
>=20
> For enabling rkvdec2 on 356x i:
> -add 356x compatible in rkvdec2.c
> -add dtsi nodes like this: https://github.com/warpme/minimyth2/blob/maste=
r/script/kernel/linux-6.12/files/1078-arm64-dtsi-rockchip-rk356x-add-rkvdec=
2-video-decoder-nodes.patch
>=20
> With this i can say:
> -on rk3588 i have some hevc 4k decoding perfectly but some others are fai=
ling
> -on rk3566/3568 only subset of 3588=E2=80=99s samples is decoded well. (b=
ut is works then works perfectly fine)
> -when not failing on 3588 sample fails on 356x - is see errors like:
>=20
> [   95.666669] iova: 0x00000000f2e80000 already mapped to 0x0000000037378=
000 cannot remap to phys: 0x000000002f8c0000 prot: 0x3
> [   95.745082] iova: 0x00000000f2f46000 already mapped to 0x00000000372b6=
000 cannot remap to phys: 0x000000003a403000 prot: 0x3
> [   95.822012] iova: 0x00000000f2ee6000 already mapped to 0x0000000037126=
000 cannot remap to phys: 0x000000003a803000 prot: 0x3
> [   95.896802] iova: 0x00000000f2ec6000 already mapped to 0x0000000029fe6=
000 cannot remap to phys: 0x000000003a403000 prot: 0x3
>  turning-off iommu makes above errors disappear - but sample still fails.
>=20
> If anybody hints me for way/tool to analyse of playing/failing samples to=
 catch: what encoding specifics makes given sample failing to decode  on rk=
vdec2 - i'll be more that happy to provide details=E2=80=A6    =20
> (doing simple mediainfo <file> shows no differences for me=E2=80=A6)

Not sure where it is saved, but we have a mainline kernel with the MPP serv=
ices
driver up-levelled (you can probably do that yourself, its not that hard). =
You
have to have the MPP library and probably the gstreamer plugins from rockch=
ip
installed.

The general approach is to dump the register prior to every codec trigger, =
and
compare. Appart from memory addresses, pretty much all register should be
identical for decoders. If you happen to have a stream that fails on MPP, s=
imply
report that to them, they are generally fast on fixing their own stuff. And=
 we
can then used that knowledge to fix our implementation.

As for most codec, when working with larger group of developpers, its bette=
r to
start with getting the ITU conformance tests passing. Once we reach an exce=
llant
score then we can start looking at specific streams. The benefit is that IT=
U
conformance can be run with fluster which removes a lot of possible human
errors.

Nicolas

p.s. Jonas Karlman has been working on IOMMU fixes and resets that helps re=
cover
from faults that are sticky in the dedicated IOMMUs despite the HW self res=
et
mechanism.

