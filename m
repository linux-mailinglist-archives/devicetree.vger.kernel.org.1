Return-Path: <devicetree+bounces-239369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3D1C6431C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:53:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 465A43ACCBA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F40232F771;
	Mon, 17 Nov 2025 12:44:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387D332EBC
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383478; cv=none; b=K5nHHQ/toYBuxdFOd/RbdoLEGYtotIl/g+QNFCKe9tzv5jjBdtCYTvMxHzNt4GDdxUuGZhnVqqdHctJXKxaxUzS0O4lzN6EDyJMFMVVuq0TOTZY5AcKxduDp3IOjvfkmR8u2ANvHQo+3F0L49xEuIlxg6KFCl643tddGy68C7Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383478; c=relaxed/simple;
	bh=oAiwzMk2pp76TYjxpN0ig2RyJtDK2EutxUN7cH09JII=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uAKbjAMO+ME9ICADxOpXVP4ZKvyv0XgOUz+1pT5s2RfyymxkzqL+9vSShJ9HLthVLIqD9KpDsNOOe19HDWZy0bhPuHKV8Ac2a/R0NupQ+YzVNpPoOkvCyuL5Zi63BQGdPSwdsMAeAwEzM1qIOPzlLWKcYb1xDJ7x8hWc5SmiVUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so6828300a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:44:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763383475; x=1763988275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jENLlechqhbgYRlu5UDeX3uQWCz5RGDiyL+ynHOlru8=;
        b=s32LM1h1UZPaz1X98Wfex2u+tY8EOpdqIaySyofVO422p3gy/mzfDnV9djDZxQ3kMM
         FEI7ljjqwFYAdeambJ4IqaDXEWjPQ1tlbSAuXe/Xz6cYZClUl440mz6uxAbL1/w15Zc/
         puEGx/muiGNs8gyMC0mGX/05z42JmaAceBGfT6x+SWzhoRxl4AQfJhxApgCgt2Qqp9dl
         tWhsJGTwQeLi7m8fTr50aAyWDytVTB1f5+P3OAiou00zlXCBvh4mVOFC+FBZ9ty0VjSq
         1XU29hI4wfsQE5w/03OtVlW6Amj2O6/APENw2Ti9PDntFH559dUoepF7XN/wu5obrVhH
         zDYA==
X-Forwarded-Encrypted: i=1; AJvYcCUUuyjsdMoXTOaud+twd2bIn9h7l7D0BVxmGa7dEkMrEszh+wlLOCtYzxFNTxHsBbZLO5kmOL4eHwbp@vger.kernel.org
X-Gm-Message-State: AOJu0YzyWcQsHRqt6qkt64kKPwea9zgNY/1R7s5+RS+1FEeFkYrLIArm
	Ao/yD/6CZka2lGnYslHuEtFJr2yqMm9OftKmGCx/slo0AXRNvua+wcxiRswxEZVmhHE=
X-Gm-Gg: ASbGnctVKTxsaFi6J4ASYRFQvzrb9Gs8V9JLYzF7+YFgLXYa+kRPpjejJh9qCiwAlBn
	+M/GG4p2iu37Z8x6ftLD/7fy+2gu0zfFSRMV4YZbxW15uGda2bsTLqNEa5eoCt+9+NgzPd0RK/9
	xjhvebpVy5tYK7xiWi/79q3w++PujBfJHPeLT0dt67Xu+Fv4Aumr52qYgqZOfiHFSKxC6/re8Y+
	Bxh/z9R+VW98oLn7l9BO5cHK18rSxl8xbXtsgs3hCUovhNIiJDST0hjr9lu3Wb00r24H0KYMH5L
	N9j18pmOZaOB4HUoNodSnA2Y0X+n3mQLhWQoYtb6hzRxkWLVsszDSTKTwG9srGAKAmhs23wRJJ3
	GLSbB9yHGtpqtmP7nDP3ZujS67oIhMnZNcob6VJokAayQVmGXlc+cGy+tobD44zXt7uxGYI1G/a
	QskhiaV9rFbB+RFHBv/PUwJ2tOVuSBuJEW8tkivA==
X-Google-Smtp-Source: AGHT+IFI4vyS5TClGKesm5+1BnUCLfFykB5kysL9BdkLE+AN7tsf4cB7s5DkwR2md4TTWyg3YTsBSA==
X-Received: by 2002:a17:907:3f94:b0:b72:e4b1:3b01 with SMTP id a640c23a62f3a-b736793d1f7mr1109539266b.40.1763383474663;
        Mon, 17 Nov 2025 04:44:34 -0800 (PST)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com. [209.85.218.53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3d82cfsm10044724a12.2.2025.11.17.04.44.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:44:34 -0800 (PST)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b735ce67d1dso517707466b.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:44:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUoFBllWWbriGZeZ30xhOeKbSPJttnLzcsOcbyZrmAFE775rA6SrtmsBZqXI8/oqNMu8IqTEeOPJeej@vger.kernel.org
X-Received: by 2002:a17:907:3f1d:b0:b73:988c:20 with SMTP id
 a640c23a62f3a-b73988c0119mr417736166b.46.1763383474350; Mon, 17 Nov 2025
 04:44:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251113220356.GA800052-robh@kernel.org> <20251114035600.13453-1-yuntao.wang@linux.dev>
 <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
In-Reply-To: <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Nov 2025 13:44:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXvqFEyY3p-+1FpDNFFLj8XLfF8v5xNfvhnZ_35mo8eZA@mail.gmail.com>
X-Gm-Features: AWmQ_bl20T7dAkzsehOvzrtT2qhIYUvGL4wtAZbcztaSmK9V1qFqnumolfpY6bM
Message-ID: <CAMuHMdXvqFEyY3p-+1FpDNFFLj8XLfF8v5xNfvhnZ_35mo8eZA@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] of/fdt: Simplify the logic of early_init_dt_scan_memory()
To: Rob Herring <robh@kernel.org>
Cc: Yuntao Wang <yuntao.wang@linux.dev>, akpm@linux-foundation.org, ardb@kernel.org, 
	bhe@redhat.com, catalin.marinas@arm.com, changyuanl@google.com, 
	devicetree@vger.kernel.org, geert+renesas@glider.be, geoff@infradead.org, 
	graf@amazon.com, james.morse@arm.com, linux-kernel@vger.kernel.org, 
	mark.rutland@arm.com, rppt@kernel.org, saravanak@google.com, 
	thunder.leizhen@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, 14 Nov 2025 at 16:11, Rob Herring <robh@kernel.org> wrote:
> On Thu, Nov 13, 2025 at 9:56=E2=80=AFPM Yuntao Wang <yuntao.wang@linux.de=
v> wrote:
> > There is another issue reported by kernel test robot:
> >
> > drivers/of/fdt.c:903:31: error: incompatible pointer types passing 'phy=
s_addr_t *' (aka 'unsigned int *') to parameter of type 'u64 *' (aka 'unsig=
ned long long *') [-Wincompatible-pointer-types]
> >
> > Given this, the problem exists regardless of which implementation we ch=
oose.
> >
> > I=E2=80=99m considering two possible solutions:
> >
> > 1. Convert of_fdt_read_addr_size() into a macro.
> > 2. Split it into two functions: of_fdt_read_addr() and of_fdt_read_size=
().
> >
> > I=E2=80=99m leaning toward the second option.
> >
> > What do you think? Or do you have a better approach?
>
> Just use local u64 variables and then assign the values to the struct.
> This will not warn:
>
> a_phys_addr =3D a_u64;
>
> (It could silently truncate values, but I'm pretty sure no one runs
> 32-bit LPAE systems with a non-LPAE kernel on the very few systems
> that even still exist).

You mean running multi_v7_defconfig on anything found by
'git grep "#address-cells\s*=3D\s*<2>" -- arch/arm/boot/dts'?

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

