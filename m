Return-Path: <devicetree+bounces-191370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF17AEF0CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:20:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36AE74A074C
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 08:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFAA226AAA3;
	Tue,  1 Jul 2025 08:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="USISS8KM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A9D269B01
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 08:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751358006; cv=none; b=Y7XUyuCYICdK/ATtX3PoV6vf6m6eI464fVP1dAFMo80pggV9hOxuwm/JbHzjlXkbmnBglBNZp1GdD+bx1kWc/Nk92ddpYq+HlozPq6Hevg5XarmDmxiGpwb2GAiHGt1WUWP9BB4OogFgDVv3TsmeUMs3yvdAg5SLEAaq0UcqTzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751358006; c=relaxed/simple;
	bh=TUPLhW/JmtwEUv3AE6ZmIEitSNuWEsD/cufR7kVF8ys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WNKdUC+k62/ZrSQZ+BXIFFmh1uMrSEVQqTTBjCw/hEEQC+UVmhU/X6xDWBrzyoCBcQeG2Bsu3S0Zl/bhton1Ch/2macF+qi/rg6ddKuOu70AWkM+P9ToaqZGG9aEZNBjUTcS1uLfpXG0N/KjH/ETXFRYy1AFz4fGdgrLFAUsys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=USISS8KM; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-710e344bbf9so29765207b3.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 01:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751358004; x=1751962804; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbuOsRMFTiJD9Z73+tptA9tOlUhWfVFv9XwbRhZntqs=;
        b=USISS8KMIHu+LcH6L5QWZwUHZ0RsTQPJ0ZfRFV5lyJRO+fsnjW3Vb5Uh6N1UxTyMwJ
         YWwKN+u/4pSW7Y6DLgdgtyLcMErJ8TCbHNU9cOW0jA9PwWNVlUMmpkZNYPrxyvEtlKgS
         DI9VTs65Uc2wWY8cbW3/0uCT7F6jc25a7d4fR9MOEbknsUDPAT7upnGeHp8nZlKCxWfs
         s7bli1ibTKUmLDRJgQdxDQ3XX7VKjCeDsgw+UL/JUlkVFbLYJUw/jrbdwymsj7yN/w1Q
         pbgezSjsNcp9lbMM5UepXQDoRwPX3IEGv5yNWgpKfuqGAoiUmOebU9eXP5+M+SF4QP83
         IHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751358004; x=1751962804;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FbuOsRMFTiJD9Z73+tptA9tOlUhWfVFv9XwbRhZntqs=;
        b=GANDWiml6/0Ci540gmsSwWgTeH8Em9Ln2+IGaqlRTz22R34aXwdvkTnp3kXp9TCH2G
         lLuKCFqir0811HcXCOxTqou+6XkmlC0vNGTlg8rUDj5KpBaDX0c38xf52/Yr7YfSrLta
         dcFl/XlG5qX08af2LUId3r1ooi/VGWoiQaUlBer3PBY/raJu1YCN5MRSfEacwBeedIX6
         aI0xzvm7+BcJJSoj4aEe/k30x2eVQ90QCelebJTrOKbowTrEjErQF4EGUh0wlEwRBVNj
         QDCb1o+XR85fS9V7Ys6EMJ1x6h4KuM1TVgw8GOQUA8warRwyOD7lHZCG0ayMu02JdBZ2
         WCpw==
X-Forwarded-Encrypted: i=1; AJvYcCVNGXWBHWE8LTfHUcwIJKAKjvLvbKTSf3k1fHY+MxgVddbsQkxq0bYeCFxr3WRSbICVXcEWZle5AADi@vger.kernel.org
X-Gm-Message-State: AOJu0YxOdciI8rMoD3VLpTdyOu7MIfqlRXge9asdxT0EleF6uoDp+hdh
	6/vUy4dbD85f8kJjhQo2hnungbIL8fkdwQwywoNywy/IsS8m1PIcxegP0eiZJ22Ba/N4tDcWvFK
	x3KzXY+DJfojHwdW3bx8+sCbIhKJtW27ubAaURXADoA==
X-Gm-Gg: ASbGncsdm8a1mSHtj0LqG8I6QRbepCpzeTOSZSBSnQYVjga5DssyYzIL8H1qHbJX6RI
	KlI7OR76B7/RNXoP/SGmaqUv4Bnib9iS9GDENgNylmsD8vsgftm5LtoBQc8Oh7lQll5wXDMKsvT
	LCp4XHwospuVafv3NHbUbHaVmVGXZ/o9VNVamIpYxHDkFP4JMg
X-Google-Smtp-Source: AGHT+IFre+CwhTt7pE+B50luWB9F2Nl0i0HpZdG4/qK3UkvJ4Pwbg0TDxDpw39sn7GQMRaKyZ8jEL4jGCSy8+Dou2x8=
X-Received: by 2002:a05:690c:30d:b0:70f:84c8:312e with SMTP id
 00721157ae682-7151713d346mr246421247b3.1.1751358003665; Tue, 01 Jul 2025
 01:20:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com>
 <20250701-working_dma_0701_v2-v2-6-ab6ee9171d26@riscstar.com> <a329e8a9-d581-4af1-ac0f-9f104a810bc9@kernel.org>
In-Reply-To: <a329e8a9-d581-4af1-ac0f-9f104a810bc9@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 1 Jul 2025 16:19:52 +0800
X-Gm-Features: Ac12FXz5TtaMdqHj-qXiGBKlygWCWhHUUNjiyvuAFFCHITTv4zQR9b39KeOkZO4
Message-ID: <CAH1PCMb8OKiqT1R0mHSU1RFxcJvd6VyFyWJWhhKpWc5nKvTi3Q@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] riscv: dts: spacemit: Add PDMA0 node for K1 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alex Elder <elder@riscstar.com>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 1, 2025 at 3:37=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 01/07/2025 07:37, Guodong Xu wrote:
> > Add PDMA0 dma-controller node under dma_bus for SpacemiT K1 SoC.
> >
> > The PDMA0 node is marked as disabled by default, allowing board-specifi=
c
> > device trees to enable it as needed.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2:
> > - Updated the compatible string.
> > - Rebased. Part of the changes in v1 is now in this patchset:
> >    - "riscv: dts: spacemit: Add DMA translation buses for K1"
> >    - Link: https://lore.kernel.org/all/20250623-k1-dma-buses-rfc-wip-v1=
-0-c0144082061f@iscas.ac.cn/
> > ---
> >  arch/riscv/boot/dts/spacemit/k1.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts=
/spacemit/k1.dtsi
> > index 8f44c1458123be9e74a80878517b2b785d743bef..69e0b1edf3276df26c07c15=
d81607f83de0e5d57 100644
> > --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> > +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> > @@ -591,6 +591,17 @@ uart9: serial@d4017800 {
> >                               status =3D "disabled";
> >                       };
> >
> > +                     pdma0: dma-controller@d4000000 {
>
>
> Oddly placed. Is spacemit not following standard DTS coding style orderin=
g?
>

Oh, I see the issue. I will fix this by ordering by "unit address in
ascending order". Thanks for pointing this out.

-Guodong

>
> Best regards,
> Krzysztof

