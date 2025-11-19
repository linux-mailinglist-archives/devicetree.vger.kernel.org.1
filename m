Return-Path: <devicetree+bounces-240086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9B6C6D2F3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sto.lore.kernel.org (Postfix) with ESMTPS id 419EE292D8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF3E2DBF5E;
	Wed, 19 Nov 2025 07:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="BqDnSO1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084E32848B2;
	Wed, 19 Nov 2025 07:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538015; cv=none; b=DjWRakNlWGJdX/R2ouzIq83rTMFVC3f8DWqLOF97A+8FcsTG1EuEk0Lh8wfHPMdJbKaCRrheca0By39SAPZPsPy2bkZWGNHjHkRH6ChrJI2LbdYf5Omu4bPWkzLgx+e2oq8Uwm55b0f8P3f9lU7hIRbE9/ij+hU/I+HMXEDeM3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538015; c=relaxed/simple;
	bh=QVHpDadl7YOL06xPSPPzAt2Yu3C/L9IDvNsc3xhyghc=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=jh3HWfdSnlkWXJLuY1TsX3vQK7LU8YaVq3tZXicBWgh1QZ5KbjLQhNz2+kwTMvDLlp6EyF6xIashjGrqSkEId7I0mY9DHkaKnG/NWPG2SiY/bDWJd/zqMZVd65Q7XtbXKu0iE7cZEXNit5lhB49wfosjOqexVWmPpbXkOmgIfkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=BqDnSO1T; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 98D3141281;
	Wed, 19 Nov 2025 08:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763538010; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bHL7eo/SH1vVrlJeUomLTfMZkXO7/asB01967/MEOyk=;
	b=BqDnSO1TgLNgi1MTOeK6jE37g/xBRtiEK+I8b1ovYKV3A5u6cCFKb9jb3xd0AnTLw+ZCyT
	HDD0of+eIB9ktPyVamRAeFWTFdMY9xLtVDWBtayUpvl/h3ofg3bM3JquQwgALXTVzjJpI1
	ug8QL0sX0CAEiw54AFJ02BHP/62upnkx05VE5Sdwjnyd6gtrFcWczzTB7d4+7eWWtk/iN8
	f8lnTNtS05flOTKpS19WXd2i7vG0IquKNWV0hoCVrB7zZ/73pIXFHt5wQInJyOeb6WyG7P
	IgUOrUcmUwocpkoF2jEqd7c2OuuXAijq8ANSH/3Qa3jlQud9oHAYkddkl6J50g==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <5bc642d3-fe05-4654-88c3-11c6534c5aa4@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org>
 <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
 <b8e91b59-afb1-6d0d-4709-c7f76ded0e18@manjaro.org> <5bc642d3-fe05-4654-88c3-11c6534c5aa4@kernel.org>
Date: Wed, 19 Nov 2025 08:40:09 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <b98e53ce-9c8c-c505-6097-0d22d0416e8e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 59ae499b27e71afc2d1ea7166d8557de11ba77a2a9462162b51c9360d97075de69720eafea670ab93a7e54d871410dd71a6e2cd16e7d6fba51a127e9f31828f7

On Wednesday, November 19, 2025 08:31 CET, Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> On 19/11/2025 08:23, Dragan Simic wrote:
> > On Wednesday, November 19, 2025 08:09 CET, Krzysztof Kozlowski <krz=
k@kernel.org> wrote:
> >> On 19/11/2025 08:00, Dragan Simic wrote:
> >>> On Tuesday, November 18, 2025 16:56 CET, Michael Opdenacker <mich=
ael.opdenacker@rootcommit.com> wrote:
> >>>> Document the compatible strings for Asus Tinker Board 3 [1] and =
3S [2],
> >>>> which are SBCs based on the Rockchip 3566 SoC.
> >>>>
> >>>> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> >>>> and a "mask ROM" DIP switch to the "3" version.
> >>>>
> >>>> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> >>>> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
> >>>>
> >>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit=
.com>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in V3:
> >>>>
> >>>> - Remove this Acked-by as the binding code changed substantially=
:
> >>>>   Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
> >>>>  1 file changed, 7 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml=
 b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >>>> index 6aceaa8acbb2..800c11323a4f 100644
> >>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >>>> @@ -86,6 +86,13 @@ properties:
> >>>>            - const: asus,rk3288-tinker-s
> >>>>            - const: rockchip,rk3288
> >>>> =20
> >>>> +      - description: Asus Tinker Board 3/3S
> >>>> +        items:
> >>>> +          - enum:
> >>>> +              - asus,rk3566-tinker-board-3
> >>>> +              - asus,rk3566-tinker-board-3s
> >>>> +          - const: rockchip,rk3566
> >>>> +
> >>>>        - description: Beelink A1
> >>>>          items:
> >>>>            - const: azw,beelink-a1
> >>>
> >>> Please see my delayed response in the v2. [1]  I think that would=
 be
> >>> a better approach.
> >>>
> >>> [1] https://lore.kernel.org/linux-rockchip/3c96ee6b-dca7-1a0a-792=
b-f8c165ec997d@manjaro.org/
> >>
> >> Your reviews are not helpful. You nitpick irrelevant things and pr=
opose
> >> solutions which later reverse leading to wasted effort on contribu=
tors side.
> >>
> >> Michael implemented what you asked here:
> >>
> >> https://lore.kernel.org/linux-rockchip/e4cd11d0-463c-e707-5110-6b9=
2899b1ba3@manjaro.org/
> >=20
> > Not exactly, because I didn't ask for any compatibles to be removed
> > from the new board dts files.
>=20
> Read your answer again. You wanted ENTIRE bindings, to be like this:
>=20
>      - description: Asus Tinker Board 3/3S
>        items:
>          - enum:
> 	   - asus,rk3566-tinker-board-3
>            - asus,rk3566-tinker-board-3s
>          - const: rockchip,rk3566
>=20
> (skipping obvious indentation fixup)
> There are exactly like this.
>=20
> >=20
> > In this case, we could also say that it was Michael's fault not to
> > give enough time for the reviewers to respond.
>=20
> Michael implemented EXACTLY what you asked. Now, you ask to change it=
 to
> what Michael did BEFORE.

Not really, because it wasn't some kind of a request from my side,
but merely a suggestion that was intended to be discussed further
so the best possible solution is reached before v3 is submitted.

> Your reviews are completely irresponsible and incorrect.

Calling my reviews irresponsible hurts me a lot, really, but I'm
unfortunately already used to hear hurtful things from your side.


