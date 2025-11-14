Return-Path: <devicetree+bounces-238730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F5BC5DA9D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F872364DDD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1640B27FD5D;
	Fri, 14 Nov 2025 14:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="AXHo9KLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957623203AE;
	Fri, 14 Nov 2025 14:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130624; cv=none; b=GktSNvTnnhTWZ51arfrV4Yh4eaASj4gzYLVcCuO4YsZxSjHR7TlkuHpuATdquF56tcIDIPwYK1rAykMCxKHNTc2qjxkAZIntxOsGXzx7Gu0YdmBHWJ7XEJ5it/DmQOBKI0fQfyeEPeYrvH+CQA0LiyVC2uipdSs5Z4KD43gIlbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130624; c=relaxed/simple;
	bh=KZNT1wWng/P05licVbhYv1HJq/k4a9lnK05hDqrSCrY=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=F/7vDGLlOcoS2fp3ArY7nzJS/kT4OYnTPOK6Q2GwgFqVyXHTVLz8V9TlYeQairmGy9EvSumIJCmhknWRJggaD0gnqtiyRd56c/3pCkycovoQ675FTQKd4OQSOogj4T8W12+G+5WKSw8LvUWC1LEBXnnNFKJ2kQNNA5mCvv7P1NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=AXHo9KLB; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5F729410BE;
	Fri, 14 Nov 2025 15:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763130619; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=A+G7g/1fFBn8WAUP1v+DVPAPbNvSQrcah4q8RsIWc20=;
	b=AXHo9KLBFxS5+DeOuVYrRjs1yABGwUKVUS1bBkD/zWya2qB/487CkKRfqjdztCJ0KaRGff
	tIwJtM4V9mXySFzZ8Xa7FMMw1dWD4qWaarIUJ4FLmfPHFiVOesXYGCZKnChcsgCI06raTc
	7GEV8ODThuT09zWO5+mk2m/ipIHaKWT/vmCsAgbH6UG5rnnkpcPerVtPK19G9rbdCEZQKk
	Pmmx6iEJ9RVuN2MaRBos2Cr1yZdFoZPa+bRrg6VfuAGaVyttm+/fGTFvnWyilDf3XdxWbl
	MU0T1dizgtGf1NThwV6gA1yCwJ2QTV3QV3VNvF8Y91kxxfNi9909Eugu+moAHA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <01b16ed0-472d-49f5-a4ad-fce03a651de8@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
 <dbacc018-2631-6606-7562-27371cf45d6f@manjaro.org> <01b16ed0-472d-49f5-a4ad-fce03a651de8@rootcommit.com>
Date: Fri, 14 Nov 2025 15:30:18 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <51b28810-9d17-0505-56e7-6a3e13749fd9@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= add Tinkerboard 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

On Friday, November 14, 2025 14:54 CET, Michael Opdenacker <michael.opd=
enacker@rootcommit.com> wrote:
> Thanks a lot for your review and feedback!
>=20
> On 11/14/25 03:26, Dragan Simic wrote:
> > Thanks for this patch!  Please, see some comments below.
> >
> > On Tuesday, November 11, 2025 18:20 CET, michael.opdenacker@rootcom=
mit.com wrote:
> >> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> >>
> >> Add initial device tree support for Asus Tinkerboard 3 [1] and 3S =
[2],
> >> which are SBCs based on the Rockchip 3566 SoC.
> > For consistency and because it's a proper noun, this should be
> > s/Tinkerboard/Tinker Board/.
>=20
> Fixed in all the patches.

Thanks.

> > The board .dts/.dtb files should include "-board", i.e. these shoul=
d
> > be "rk3566-tinker-board-3.dtb" and "rk3566-tinker-board-3s.dtb"
> > instead, because there's no real need for shortening.  These boards
> > are simply named "Tinker Board", which should be preserved.
>=20
> Done too. However, I used these names for consistency with what was u=
sed=20
> on arm(32) for the original Tinker Board:
>=20
> arch/arm/boot/dts/rockchip/rk3288-tinker.dts
> arch/arm/boot/dts/rockchip/rk3288-tinker-s.dts
> arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
>=20
> I guess it's fine to ignore what arm did right? It won't live as long=
 as=20
> arm64 (I attend Arnd's talk about arm 32).

Thanks.  Yes, I saw that naming for the other Tinker Board, based
on RK3288, which I'd consider a mistake from the past we should heed
from, instead of repeating it. :)

[snip]

> >> +/ {
> >> +	model =3D "Rockchip RK3566 Asus Tinker Board 3";
> > For consistency and to avoid redundancy, the "Rockchip RK3566"
> > part should be removed.
>=20
> Done.

Thanks.

> >> +	compatible =3D "asus,rk3566-tinker-3", "rockchip,rk3566";
> >
> > Actually, the compatible should be "asus,rk3566-tinker-board-3"
> > instead, because there's no real need for shortening it.
>=20
> No problem to do it. However, here we have a slightly bigger problem:=
 it=20
> would be inconsistent with the bindings for the original Tinker Board=
 in=20
> the same rockchip.yaml file:
>=20
>  =C2=A0 =C2=A0 =C2=A0 - description: Asus Tinker board
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 items:
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - const: asus,rk3288-tinker
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - const: rockchip,rk3288
>=20
>  =C2=A0 =C2=A0 =C2=A0 - description: Asus Tinker board S
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 items:
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - const: asus,rk3288-tinker-s
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - const: rockchip,rk3288
>=20
> What do you think? The discrepancy would be quite visiible.

I'd still consider that old naming a mistake from the past we should
heed from, instead of repeating it for the sake of consistency that's
already lacking left and right.

> >> +	compatible =3D "asus,rk3566-tinker-3s", "asus,rk3566-tinker-3", =
"rockchip,rk3566";
> > The compatibles should be as below instead, for the same reasons
> > as already explained above.
> >
> >    "asus,rk3566-tinker-board-3s", "asus,rk3566-tinker-board-3", "ro=
ckchip,rk3566"
>=20
> Yes, whatever is decided for the compatible strings.
>
> > Though, perhaps it would be better to not include the "asus,rk3566-
> > tinker-board-3" part, because I think it's pretty much redundant.
>=20
> My reasoning was that Tinker Board 3S is a superset of Tinker Board 3=20
> (additional eMMC and headers).
> If someday some code is associated to the compatible string for Tinke=
r=20
> 3, than Tinker 3S should use it too, right? Unless we want to have th=
e=20
> possibility to ignore some Tinker3 code in Tinker 3S for some reason.=20
> Then, it's better indeed that 3S doesn't use the Tinker 3 compatible=20
> string. It seems we have more options with what you're suggesting.

You were right about having "asus,rk3566-tinker-board-3" there
as well originally, because that would allow us to possibly define
some specifics later that apply to both the 3 and 3S variants.

Just like "asus,rk3566-tinker-board-3" refines "rockchip,rk3566"
and makes it more specific, "asus,rk3566-tinker-board-3s" also does
the same to "asus,rk3566-tinker-board-3".


