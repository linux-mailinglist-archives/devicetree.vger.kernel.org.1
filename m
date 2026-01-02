Return-Path: <devicetree+bounces-251034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AB1CEE338
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11D44301D59B
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF682DF12F;
	Fri,  2 Jan 2026 10:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b="l1HqgXMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-07.mail-europe.com (mail-0701.mail-europe.com [51.83.17.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801192DCBF7
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.83.17.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767351080; cv=none; b=GaPKmSyvEXnI1zyUtkvavXVi7dV0u/9tdXx5iiWatrqsEzufdYykYXxgevR1Ky4IPvzS7iRNxB2KBkLQTTHV2/VRsGrBXKY7j2bewhB2hOyPFo79iV67fRKsinP8Bi2GTUmmsC0B+mWICdazg2KX55uYMMcZOJ83UdYAV/f/R/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767351080; c=relaxed/simple;
	bh=a1x9bOOyonA/zI9tuhPm5HjCUKdxuCnIwcYuEH4ju3A=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hxCwPugNhAwoeBhhWW/g45yAJysJqnts4b5PV9GSuQ1BjPfI7NLmzX2uscoCuMVTbCfMhk/f3yqGsqd2DkLx0o7ZGN+7qJoUJ7w5xjgZPEk5m+t2dvWR31fCM2+vqGma8wgOofRGeult3rHlzTViW2G7kpFqy5mUxmZZTHzjrCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro; spf=fail smtp.mailfrom=chimac.ro; dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b=l1HqgXMm; arc=none smtp.client-ip=51.83.17.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=chimac.ro
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chimac.ro;
	s=protonmail2; t=1767351062; x=1767610262;
	bh=Wm8iFenI7rV4BHDLWQQC9m1LuaI6pjS4oGcE2me2wdo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=l1HqgXMmMKg/G/y/hrjp5w5NLDbzu6bAnCleWW0aF0bBOclzustHcaR8DAp2pRLxi
	 bFkR/CTrovwjKtwjlQS2uNQEML/hkYWvjG4n+znncN2B9xPsWhswjOyRngS9I7p/YL
	 Ilx4iQe5+K1ZsjbPSkDiWpjUlMyvTzM5iQGxTBhbYk6idOQQIvqvi5bpBHj6d1UnhD
	 6OhcPl0U8E7CcYGYGZWNFR3E2prkYpExHyisQtL4w62zFpbnMoI31abqpR31g1F+zH
	 TH4tSdG4f6MYI0emEcHpl5+AAs71O/Cc4mQlFpa1lHt/vJQe8z+vzdJFxLSllt1gys
	 XX0KHRKPqY9FQ==
Date: Fri, 02 Jan 2026 10:50:55 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Alexandru Chimac <alex@chimac.ro>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: pinctrl: samsung: Add exynos9610-wakeup-eint node
Message-ID: <SIUwFRvVetTkOo41ZvVr5kiSwjfVoFRJ9HPWVYoNFQgd06BUJSDLEdl95hV1W3INlc50uZNQppCZaA41mTA22kQfpDOjseC-PiHgyIfTCSA=@chimac.ro>
In-Reply-To: <fb98e395-d590-47f7-8dba-d9a691a2c174@kernel.org>
References: <20251228-exynos9610-pinctrl-v2-0-c9bbeee4c54b@chimac.ro> <20251228-exynos9610-pinctrl-v2-2-c9bbeee4c54b@chimac.ro> <20251230-dramatic-gregarious-stallion-15bc07@quoll> <yB5WFgsxeeqHQgi87UeNPD8K2OlQbWWC6-BovxADBtgusN3n8UOrm7Gi6jz6Th0dsMA9J-LEpx69sWjNmWTH_-jx9r7AgvXNTwR2hQW7-SM=@chimac.ro> <fb98e395-d590-47f7-8dba-d9a691a2c174@kernel.org>
Feedback-ID: 139133584:user:proton
X-Pm-Message-ID: fcae599c395b499a3659dfd5541d73bbf461087c
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable






On Friday, January 2nd, 2026 at 12:02, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

>=20
>=20
> On 31/12/2025 13:28, Alexandru Chimac wrote:
>=20
> > On Tuesday, December 30th, 2025 at 11:51, Krzysztof Kozlowski krzk@kern=
el.org wrote:
> >=20
> > > On Sun, Dec 28, 2025 at 06:05:52PM +0000, Alexandru Chimac wrote:
> > >=20
> > > > Add a dedicated compatible for the exynos9610-wakeup-eint node,
> > > > which is compatbile with Exynos850's implementation (and the
> > > > Exynos7 fallback).
> > > >=20
> > > > Signed-off-by: Alexandru Chimac alex@chimac.ro
> > > > ---
> > > > .../devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.ya=
ml | 2 ++
> > > > 1 file changed, 2 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinc=
trl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsu=
ng,pinctrl-wakeup-interrupt.yaml
> > > > index f3c433015b12..deb2730855bd 100644
> > > > --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wak=
eup-interrupt.yaml
> > > > +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wak=
eup-interrupt.yaml
> > > > @@ -48,6 +48,7 @@ properties:
> > > > - enum:
> > > > - google,gs101-wakeup-eint
> > > > - samsung,exynos2200-wakeup-eint
> > > > + - samsung,exynos9610-wakeup-eint
> > > > - samsung,exynos9810-wakeup-eint
> > > > - samsung,exynos990-wakeup-eint
> > > > - samsung,exynosautov9-wakeup-eint
> > > > @@ -107,6 +108,7 @@ allOf:
> > > > contains:
> > > > enum:
> > > > - samsung,exynos850-wakeup-eint
> > > > + - samsung,exynos9610-wakeup-eint
> > >=20
> > > This is not needed. Device has 850 fallback, no?
> > > It's not required, but I guess it would make the device tree look bet=
ter. If this patch isn't to be merged, it doesn't functionally affect anyth=
ing so it can just be dropped instead of requiring another patchset revisio=
n.
>=20
>=20
> Please wrap your replies.
>=20
> I did not comment on the patch. Comments are in specific places
> discussing specific lines. I asked why do you need this enum to grow?
Oh, sorry, I thought you meant the whole commit. Yeah, it looks wrong.
Thanks for noticing, I will fix it in v3.
>=20
>=20
> Best regards,
> Krzysztof
Best regards,
Alexandru Chimac 

