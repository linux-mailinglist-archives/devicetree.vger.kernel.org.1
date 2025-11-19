Return-Path: <devicetree+bounces-240072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69856C6D15C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F3E6E4E8E6C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F7C31984D;
	Wed, 19 Nov 2025 07:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="LNvejL1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71853302CB5;
	Wed, 19 Nov 2025 07:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763536991; cv=none; b=SI9FARf01hTr3e+oDiDDlUgbgMOaG9m1SBQGoqZJYwLndXviHhFiqrGQj2SuAseMfzgf1K3NPBNNZK9Ic2p1D8Z8RjTefHAlRofsrt+ppa++5641ocrDTrU4Qc+npGDEBZJLXwKBqVyPu1M5iPzFV4CJEI6OGBT1TgaMR4Pt91w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763536991; c=relaxed/simple;
	bh=/et6dUlGhx/6HM8n1ENK5YySA9fyrTinxNA4TODl64U=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=MzFnJ2cyTCT9U+p8F0osNIOTdtxtc0jS55IkNYApuo7fhZLYN7O1HZp+DdoWfoXKcMdlGNo8t33MgjHAjOCNKjgKgPavw9lCWKWnPHUS6OqK/m9cpBgnxwI03FWudrdcfuMYh+l4kK3bLJsK7swTGkgdWtlfpXv3NJdn/k6E49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=LNvejL1V; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id AAD5741286;
	Wed, 19 Nov 2025 08:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763536983; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=zaTLec8G/tdq48a4ePD3y5fymHb9xAhxUjH/LW9f5a4=;
	b=LNvejL1ViQufqD4meHwkjC+JFnLLQD53Icu8sSsa+mBLtchgTM2QEAfky1JU9OAIssxhAR
	gmJpZKIw5SaMBmBKGDX/sVECrkh/wYQTtKoICTBIubE7uddeMISxPqM/jKXIn+Bsh+q5iM
	J//3SEtT6M68kx7IkgVT08kJgtGcj8+CWeTzz3C1IWbt/VaGSdLYRTIjI5hjriDZi11aC6
	J1/Yow+3Thk8xJrIjEkpBxi+J62ktXCCz2W2qhPet5FrXxUF0w5harmSf0GiRWGsqQlTbw
	yz3v6Q2xUG4/jNF1M0vBgcJGAt8/91KwKO8jDqEYb41LvgDInWLMAaByu5fO8Q==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org> <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
Date: Wed, 19 Nov 2025 08:23:02 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <b8e91b59-afb1-6d0d-4709-c7f76ded0e18@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Krzysztof,

On Wednesday, November 19, 2025 08:09 CET, Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> On 19/11/2025 08:00, Dragan Simic wrote:
> > On Tuesday, November 18, 2025 16:56 CET, Michael Opdenacker <michae=
l.opdenacker@rootcommit.com> wrote:
> >> Document the compatible strings for Asus Tinker Board 3 [1] and 3S=
 [2],
> >> which are SBCs based on the Rockchip 3566 SoC.
> >>
> >> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> >> and a "mask ROM" DIP switch to the "3" version.
> >>
> >> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> >> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
> >>
> >> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.c=
om>
> >>
> >> ---
> >>
> >> Changes in V3:
> >>
> >> - Remove this Acked-by as the binding code changed substantially:
> >>   Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b=
/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> index 6aceaa8acbb2..800c11323a4f 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -86,6 +86,13 @@ properties:
> >>            - const: asus,rk3288-tinker-s
> >>            - const: rockchip,rk3288
> >> =20
> >> +      - description: Asus Tinker Board 3/3S
> >> +        items:
> >> +          - enum:
> >> +              - asus,rk3566-tinker-board-3
> >> +              - asus,rk3566-tinker-board-3s
> >> +          - const: rockchip,rk3566
> >> +
> >>        - description: Beelink A1
> >>          items:
> >>            - const: azw,beelink-a1
> >=20
> > Please see my delayed response in the v2. [1]  I think that would b=
e
> > a better approach.
> >=20
> > [1] https://lore.kernel.org/linux-rockchip/3c96ee6b-dca7-1a0a-792b-=
f8c165ec997d@manjaro.org/
>=20
> Your reviews are not helpful. You nitpick irrelevant things and propo=
se
> solutions which later reverse leading to wasted effort on contributor=
s side.
>=20
> Michael implemented what you asked here:
>=20
> https://lore.kernel.org/linux-rockchip/e4cd11d0-463c-e707-5110-6b9289=
9b1ba3@manjaro.org/

Not exactly, because I didn't ask for any compatibles to be removed
from the new board dts files.

In this case, we could also say that it was Michael's fault not to
give enough time for the reviewers to respond.

> This patch implements exactly what you wanted. On v4 you will ask to
> reverse back to v1?

No, I will not, and please note this version doesn't exactly implement
what I suggested, as already explained above.

> Now you claim that you want back v2. Really, you are NOT HELPING. It =
is
> clear you do not understand what you are proposing and this is not
> helping ion the process. Please refrain from such confusing reviews.

No, I'm not suggesting that the series goes back to v2, but Michael
failed to give me enough time to respond.  If that were the case,
the v3 would've been in nicer shape, with, from my point of view, no
need for further adjustments.


