Return-Path: <devicetree+bounces-204914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4FB273F3
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 02:31:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FF5FB63928
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 00:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3462030A;
	Fri, 15 Aug 2025 00:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nUJUSTOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9ED1805A
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 00:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755217621; cv=none; b=TH0pjJzs2aXg58rI8lf/X9ulTGHHm95hVcA1vMe9wszY9L/6cZdKU9INF3d6dXGCHlh43kBUEZrEQXg8Bu7WXeCCU5KL9EgBSWG48mltw/3AC3HnI134HXNdGSzu3AlMDAOhztSSzv2PK3gSZSxd5aQhlQV1LFP4Bn8o8OJeQF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755217621; c=relaxed/simple;
	bh=zqCXdHxKTeKB9ROaf4knn6ibcDXe7aVLUkOaaUaIpUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pOg8wAcesiGOmNZzhWkaI+OYI5F9u/eSpjJv90HjtQ+26Ugwvl9zVa8Fuu3LwnaWSFMIU1Rvo044qEE58TNejDThDpUA62wTd7MiHXMdd1piv51D6Q+LTEzMK61EwOeinTVh0LZJXJW4o1v3v6e/NyMK+OAWk34iAs6zKbdLBSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nUJUSTOA; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e931c858dbbso1503998276.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755217619; x=1755822419; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chtqaOACUmcKvoVs4ArIxzTVDCSfAD6YVqxbH3Chc5Y=;
        b=nUJUSTOAs8ofB9Chw42tcJx+26/UsXLyGbUe/8K6vMo/Lct98PHXgZZfZvtMJqSbPR
         6tg/8fegJ+48xpl1f7sXIyQaR+rd9cWXYgC8iG1Vb2mNvqpANDU9+hi/s1fi9ZhjA0Qg
         XGSPXFfAvwJmZOJjF1yvDBuuAEZekIwFeiU3+3rwba6e4KDqQxNJeM8nU8XVpVAjdM0H
         KRJqWAMg/Ge2zMR3ejIH5HTXUIEjrpPE8dRSfep+tF66exgkZUSr7sW6qWNj2rybNTmf
         s6mHP8Yqf0Xunh+m7UOhZFmrHDavWpxsMgHs/3DiSFG7zj7AOfqx4KgSkQZwv3DD5OzE
         xHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755217619; x=1755822419;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chtqaOACUmcKvoVs4ArIxzTVDCSfAD6YVqxbH3Chc5Y=;
        b=mN+kFPYoU5zih6QyZJpJrJgk5vcuruAQ+qh1DZwoi1U1cdXr/7C0ptqHVZ7XanQq7j
         N7GbYyMnYqF26uXtPZxcDUOPODsYy3HO3XU1wV3Y4nEvf7UXK8WjUk/hijvgJyDIU9RC
         hJ16yxDwWZ7EdKJM/HypbgUUvmTme8XgFN868FBL8vVnA9iMSjBM849iGe6SJpadoVjJ
         8vdoaw1lqI0li5+Iw/MQcavqdjD3lSHc/RxkFezJc35LfiqJPUUWx57/rc8Hbbl4zQXx
         pTPGlWE44BXic2wfAeNKCjXR/jTg71/z5SjKOYzqVfus4WUFdGSNst1P6W7/sqFdGa8c
         7Y1w==
X-Forwarded-Encrypted: i=1; AJvYcCU8hk+K5FT5TAEhBtQBM1rH2HXQNT2POYtMsfabdUb67d0lusKjOpmKfETDxn9NQZ5Sv65t6X0Dehh0@vger.kernel.org
X-Gm-Message-State: AOJu0YwHnkClTVxLg4o5N4Dt6Sgkes2WEI/Z9IWYqKljtNLUx2M+cpYB
	S8Ya6KiIDdeVoOfaEmPjVuqveBfMwAbWyZCy3OYW/brisOwAerjjx/TMEN8knn/xYrznCqjfd4v
	0NR4xm27naDK/s98PoVAIuLCP3ivcGLHSMANCmlBuqQ==
X-Gm-Gg: ASbGncvBNeLG+gfDvl2Kq3AXq8KzmOVOk2BX5Yt5UqLq4ffAvSLl/WI7rKQvj3fx5DM
	ye98MnaA41Fos1A49v4+rXOdeYKhDUVl0OJqOIonsb/803Ft9fJ2FWNwi4bdQxboYVNh1EJvWFq
	Y0i/g+JGjWAXI+O8V4h+rAnGr6W97/8i9I/TLluswDSYxa4Bh3jiThSlLXLhuq8SJkGmlyDh5ZW
	kr2ac7S
X-Google-Smtp-Source: AGHT+IFyC6XchyD488oOCFrdXunJc7qGIapZSIGWdcX99KZIq/zeH1vE8qmFombtGx4qUvJV13AHJXqkXJEjvfp+pqA=
X-Received: by 2002:a05:6902:2b8b:b0:e90:637a:cb36 with SMTP id
 3f1490d57ef6-e933235e5e4mr362916276.6.1755217618710; Thu, 14 Aug 2025
 17:26:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
 <20250714-working_dma_0701_v2-v3-6-8b0f5cd71595@riscstar.com> <20250724121916-GYA748228@gentoo>
In-Reply-To: <20250724121916-GYA748228@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 15 Aug 2025 08:26:47 +0800
X-Gm-Features: Ac12FXyMVuK9-KHf4Hpw5gXtsQxmq2I0BGB7NnpjNngaho2sXqjxjvKEDgl5mV0
Message-ID: <CAH1PCMZejR5AxmJC1mRi7KSAXEtOQzfSD99G8+0PFbbASJxW-A@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] riscv: dts: spacemit: Add PDMA0 node for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alex Elder <elder@riscstar.com>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 8:19=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
> On 17:39 Mon 14 Jul     , Guodong Xu wrote:
> > Add PDMA0 dma-controller node under dma_bus for SpacemiT K1 SoC.
> >
> > The PDMA0 node is marked as disabled by default, allowing board-specifi=
c
> > device trees to enable it as needed.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v3:
> > - adjust pdma0 position, ordering by device address
> > - update properties according to the newly created schema binding
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
> > index abde8bb07c95c5a745736a2dd6f0c0e0d7c696e4..46dc002af947893cc2c234e=
e61e63c371cd966ca 100644
> > --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> > +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> > @@ -660,6 +660,17 @@ dma-bus {
> >                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> >                                    <0x1 0x00000000 0x1 0x80000000 0x3 0=
x00000000>;
> >
> > +                     pdma0: dma-controller@d4000000 {
> does K1 has more than one pdma controller? No? as I checked..
> so, I'd suggest simply naming it as 'pdma' - which clear the confusion
> that there will be more than one pdma nodes..
>

Thanks Yixun. I will name it 'pdma'.

> > +                             compatible =3D "spacemit,k1-pdma";
> > +                             reg =3D <0x0 0xd4000000 0x0 0x4000>;
> ..
> > +                             interrupts =3D <72>;
> for consistency in this dtsi file, I'd suggest moving "interrupts" after =
"clocks",
> or even after "resets"? leave "clocks & resets" together..
>

That makes sense. Will do.

Thanks.
Guodong


> > +                             clocks =3D <&syscon_apmu CLK_DMA>;
> > +                             resets =3D <&syscon_apmu RESET_DMA>;
> > +                             dma-channels =3D <16>;
> > +                             #dma-cells=3D <1>;
> > +                             status =3D "disabled";
> > +                     };
> > +
> >                       uart0: serial@d4017000 {
> >                               compatible =3D "spacemit,k1-uart",
> >                                            "intel,xscale-uart";
> >
> > --
> > 2.43.0
> >
>
> --
> Yixun Lan (dlan)

