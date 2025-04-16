Return-Path: <devicetree+bounces-167164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41646A898EA
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:57:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C05E7A9D32
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1625292903;
	Tue, 15 Apr 2025 09:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NvdEg70P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C722918FB
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710908; cv=none; b=JafCA2itmkP2qChVFNZY6wVmLbMb5Ej/DHCy3tzaUtNHAt8yQvAK4ZGBuwE7935GE4rsp1vLxUtwKhENuamhPuDz4L/jQkLMxjssPWORZCislthCzKIeC2D1tUUMn+lM3TbUOLeg4ffeXNDNPXEXIYMhgj8IKDyd66FPYrYtXzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710908; c=relaxed/simple;
	bh=L0R8xGjLChjgStq7fgUrJ09AFQFLRTNk5cUsHXiRm/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IER0hPf7IytUJZuqA5uPD1NXnXkqMduN1qvheVSCFo0ZHZU3SXxeVcvS9aOHNq3/RJsAp+QTj8pQrM3F/DipJW8nixqNhZSe5a/lfzzPxs0iTSAd6R6htEO79TDmQgXUVnNRDxIYTgsCzilF9tyEzT/WKV7/qyYl8GXV6hCHAxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NvdEg70P; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e66407963fso9854729a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744710904; x=1745315704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Sd6Yg3rC21jnGehy22uUVz7lDVf6VWqh6Q2Fhe7kCA=;
        b=NvdEg70PipU0O6XlqoRNzzBLAKA/q2ZenLdVSng2WxCmNNZCqRt8rmlFTkPLytc9Kc
         c0P0xV93/XSYTZjwAwPiWT/QB26WxQquxSDzBnu0sHt2Oic5vZ9PU2upeFDmrDOdpYPI
         G2J7fLW6oUQpjpdwvs57PxqFUkln7KlajAUJ96N89Uo2IHAPuguzF+jElnOFiM7/r8sY
         8wP3aCr0KMvvj5B9dMMy6rMYc68T2cArgoW4rSCYhmiiOmaOfUOh8PKQl2tj2zQXIF+k
         vU8iWHtgiUBS+ol+MIjFesX3nNEGQRegXTQdX81/njwlCL4qH5VjXTAOy9v+vSFZEv0D
         3LRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710904; x=1745315704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Sd6Yg3rC21jnGehy22uUVz7lDVf6VWqh6Q2Fhe7kCA=;
        b=G3rNUGiOIXJraK8oHCYD3wBEMMnw1g3xXqM37RgtBkUValB+1Tgc2/keimgzDRqVcB
         lH0sc+Ffu052+2BwXA0n3wM3PEzOf8eImkNGHQY7GKQG3bKka5wBvrswFcXP4U8kehUh
         mawlXQ6c0BlIM7smhcHc5g6XZEIZiNKhjstpJyhOxwXi5jTVwG4kL5GNDmtWwCCqMc/q
         s3u/6vP0Fda31lZVWjiHZ8/JiYLGIScdVRLktwztx2ZpsxkKMkWYQfRVpUbm+GKUf6VK
         47g0213vVNaEN5PK7PegGr6m8AaEaMnDaotNEw14RSXKvVGwkwQzWTp7kAh/ND7cLkTX
         gSuA==
X-Forwarded-Encrypted: i=1; AJvYcCWpLJVH65jAOqcYp+SGTAYKpWoAZtLIclmMIiaxVVfKQwm/mTwaT2Fyoeeb8c94mPBs1QWxBwrFRYKh@vger.kernel.org
X-Gm-Message-State: AOJu0YyRp1U25JueBciIEd+J/fMa2mBFDWJHC+RduLCfJWoWYj9AUDVh
	BVmW510AZznuMrMDIRFZKNATZQX+p88d5IynsqnT8LtF/2nsax3D4yb/SpblS2jUuD4mQ7IwBGK
	CPKMUkmF3VGmH3e+kyAkVuIW1BaKJMGRxIPtyOA==
X-Gm-Gg: ASbGnctl2z1mKJscIw7S7m7FER186NoOrg4ZEh1ufH6eL00Clvspzdgp9kN+btb3gf5
	Q5NeeAtE7ia1SiYA25LSkZHaB2+c2y5VUrwWaqaCd9n5zJIZDXg2aEd79v99MEDK32b9MRlBgjA
	kkK6vg0y/l62xGkVShFDZtSBY1mQ==
X-Google-Smtp-Source: AGHT+IHAU8wJfJDF4eNSdv0Zm5P/kiq6Yogbh7eiqNmQ6osroOUsaiP2v1/BjbNJSKe15J8jBc9YnfV5U+5wxjTv07U=
X-Received: by 2002:a17:906:7154:b0:aca:dd0c:cfc8 with SMTP id
 a640c23a62f3a-acadd0cd3bamr1109850866b.10.1744710904488; Tue, 15 Apr 2025
 02:55:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-2-guodong@riscstar.com> <20250411-confider-spinster-35f23040d188@spud>
 <89b6142bacecd4a7742341b88dc1e28c4454527a.camel@pengutronix.de>
In-Reply-To: <89b6142bacecd4a7742341b88dc1e28c4454527a.camel@pengutronix.de>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 15 Apr 2025 17:54:52 +0800
X-Gm-Features: ATxdqUGYHln9nntZsdf9jj-vYb0_3U3ad99wI0oBwmwTA_WUeFe5BkvwdaXHs0w
Message-ID: <CAH1PCMZnJDcYKJR35WirQT95hte0NWvGBe4fjDuyZEgagvunAA@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: pwm: marvell,pxa: add optional property resets
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Conor Dooley <conor@kernel.org>, ukleinek@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org, 
	drew@pdp7.com, inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org, 
	tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com, 
	duje.mihanovic@skole.hr, elder@riscstar.com, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 4:53=E2=80=AFPM Philipp Zabel <p.zabel@pengutronix.=
de> wrote:
>
> On Fr, 2025-04-11 at 17:44 +0100, Conor Dooley wrote:
> > On Fri, Apr 11, 2025 at 09:14:15PM +0800, Guodong Xu wrote:
> > > Add an optional resets property for the Marvell PWM PXA binding.
> > >
> > > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > > ---
> > >  Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.ya=
ml b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > > index 9ee1946dc2e1..9640d4b627c2 100644
> > > --- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > > +++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > > @@ -31,6 +31,9 @@ properties:
> > >    clocks:
> > >      maxItems: 1
> > >
> > > +  resets:
> > > +    maxItems: 1
> >
> > Do any of the currently supported devices use a reset? If not, then add
> > this in tandem with the new compatible and only allow it there please.
>
> Also, if spacemit,k1-pwm can not work without the reset being
> deasserted, mark it as required.
>

Thank you Philipp. spacemit,k1-pwm can not work without the reset.
I will add that in the next version.

-Guodong

> The driver can still use reset_control_get_optional.
>
> regards
> Philipp

