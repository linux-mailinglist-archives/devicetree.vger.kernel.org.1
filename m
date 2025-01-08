Return-Path: <devicetree+bounces-136830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0274A06842
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0EC4162458
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A196C204096;
	Wed,  8 Jan 2025 22:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BaedSn+a"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64E319D8A3;
	Wed,  8 Jan 2025 22:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736375331; cv=none; b=KIWYemLi6/U7tkMQi7oA5/h2WeACNYczZBLnp/4vsq6H/wg44GbqkziFJdYj5JjWBXb1pUojhgBVNEpkJJNA1L+Yr3QTMy4gKr69FPWQUjuzNP33BoekOZpp7KHp4pGGqnPyufVWcAzIskEpA1j/7LoIWqLmy8njUKhtOHJcbWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736375331; c=relaxed/simple;
	bh=aRroI1qHvOP1uLuXB1s7tymDo8hkATzdNeQ6VHh+4aU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BIIDOupBBFh65hfXU9gMNRQwpMjg9yMYfr66Ux7eF8AujPkdsf0W01+efRBymMdQR0DnyAaEx0Y7wF5nmBM8gf9nFCeNXxuWbNCAUj1QE7MY8qNrC4cOjpE2XrUV8T1szmDYUCbplg+A9heGzoSYGDh4BQJqS65DW7ibQ1ltoMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BaedSn+a; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oIs+6//9pCaz6EyeOwysIwczhydc369WMFHKaaagOvY=; b=BaedSn+aUIt4dGeN6UFrKv3zq5
	SjvxbM6DzIzuwDFspDx8xT61/huayN6VLFfjpyjKUKm7tH58k0vh0lJIUJ+Gx9fn63+Exga3t6sNR
	6b1WxY3XPQNEV036vJ8hHIICLnXXggqpBJ4qjv0veqgaLEzSWUhZr1vxcp4fpXiW42CdsHZjutpYS
	KB7zXZlisMJaJSMnm0mbnuiQhb6SNNWP2jsFCXvKPnJvPpm6YY49TTfpXVIcwna3bBpl1afHzuvkN
	OCOjsp4IDiCQ94Ch9JjiSKMCZJU9QS086B6rPNzGMJr0G8yXx6J7N1TrwfLpAboj5f4mjRuHm0a2O
	xmC2JPPg==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVeXc-0004BU-TI; Wed, 08 Jan 2025 23:28:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s) device
 trees
Date: Wed, 08 Jan 2025 23:28:44 +0100
Message-ID: <2731770.KRxA6XjA2N@diego>
In-Reply-To:
 <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
References:
 <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <1950286.IobQ9Gjlxr@diego>
 <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Alexey,

Am Mittwoch, 8. Januar 2025, 16:30:35 CET schrieb Alexey Charkov:
> On Wed, Jan 8, 2025 at 2:01=E2=80=AFPM Heiko St=C3=BCbner <heiko@sntech.d=
e> wrote:
> >
> > Hi Alexey,
> >
> > Am Mittwoch, 8. Januar 2025, 10:09:07 CET schrieb Alexey Charkov:
> > > RK3588s has four SPDIF transmitters, and the full RK3588 has six.
> > > They are fully compatible to RK3568 ones. Add respective nodes
> > > to .dtsi files.
> >
> > While it may seem that way, we still want soc-specific compatibles,
> > to future-proof this.
> >
> > I.e. going the the
> >         compatible =3D "rockchip,rk3588-spdif", "rockchip,rk3568-spdif";
> > way, so that now things can just match against the rk3568, but if some
> > fault emerges later on the code can be fixed with the DT staying just
> > compatible.
> >
> > The spdif also has an example already for all the spdif variants that a=
re
> > compatible to the rk3066 [3], so it'd need another "items" block for th=
ings
> > being compatible with the rk3568.
>=20
> Hmm, if we are to believe the driver ([4], [5]), they are all the same
> as the good old RK3366, which in turn is software compatible to the
> good old RK3066. Same seems to apply to RK3576, given that its current
> .dtsi just references the "rockchip,rk3568-spdif" compatible.

I was for a short while afraid that something slipped into mainline :-)
But I guess that "rockchip,rk3568-spdif" compatible on the rk3576 is
only used in the vendor-kernel.


> Does it mean that the binding needs to be restructured so that the
> required fallback compatible ("rockchip,rk3066-spdif") applies to all
> variants? Or shall the existing ones be left alone, and just RK3588
> and RK3576 added inside that "items" block?

I noticed that the spdif binding has had an interestings growth over
the years, with some socs being outliers.

I wouldn't change the whole binding, especially as that then touches
established stuff.

The question would be weather to add the rk3588 + rk3576 to the
existing enum marking them as compatible with the rk3066, or create
a separate items block and just saying the rk3588-spdif is compatible with
the rk3568 one, like:

[...]
      - const: rockchip,rk3568-spdif
      - items:
          - enum:
              - rockchip,rk3128-spdif
              - rockchip,rk3188-spdif
              - rockchip,rk3288-spdif
              - rockchip,rk3308-spdif
          - const: rockchip,rk3066-spdif
      - items:
          - enum:
              - rockchip,rk3576-spdif
              - rockchip,rk3588-spdif
          - const: rockchip,rk3568-spdif
[...]

With the RK3066 being released in 2012, part of me is amazed that that
block survived that long, on the other hand going with the above snippet
somehow feels saver ;-) .


Heiko

> [4] https://github.com/rockchip-linux/kernel/blob/develop-5.10/sound/soc/=
rockchip/rockchip_spdif.c
> [5] https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rock=
chip_spdif.c
>=20





