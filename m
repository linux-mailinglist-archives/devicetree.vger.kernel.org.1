Return-Path: <devicetree+bounces-249825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 824BBCDF990
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50392300548F
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46EB0313E0C;
	Sat, 27 Dec 2025 12:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YTp9E7G3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15F128312F
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766837359; cv=none; b=E+o6Mxbvq5ceUfW/SIKcUbP0CHavmCBcLFv6PbaB1wHxOXkDPGxmRjfNSz5cErMdhX8+QCOj3mOnY8z5d+gMmNSyNFmS9IW9ZMmHq+vIxxZfUcIBH5FIDC9zzhSxXO+LDc1PnEETbJUdLfMHZcMSQienB/s+BII2b4Aev/mGgGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766837359; c=relaxed/simple;
	bh=jPQrf7DTxLyHiYReTvfcfjj4eGgpKJX3rrEQzfTECYk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pmFICg9D9m2Rfr3PEegf2XbgL99xYxxpztobAXWYKaXJ9Lji3cjh31eMiaCIAJGfnZBTqoTj+a8qJnDNyZo9h7cqT9Q3al/7n0aQlYn89472HPWGM5Sh0u/a9lIgO7qmeAqs8PVWJv4o2BceDANEYpx23j1PNcWaZ+fAGPh5xGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YTp9E7G3; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so2076861241.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766837356; x=1767442156; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4pmqXk0EtFz5WDIGcxPfWEZMNq3VYE7yOPBLEdClV0=;
        b=YTp9E7G36PFSC5bsX1QL/e1tx8KeCaRbFEmGQKWqpCCWundS4QSGUWPY6N1R4y/CYQ
         S82C8VtJ63EnwUNMGCRh8QvAVBO3Qb/2gpv1avtcOcC1v0Sr3GfJ+kvTPAfFTk1xizH7
         1fnMKdfgNbzDoSw/3Fa8mSO9qYr2nLlrv+buL3W0JvorTy7Phrodaso85l9llKboeLE9
         J/09LSLZ1dWs41IAPGcO93zkglEMVDZyyarW59iR636WpFjTHLpQeY5+JFz5yQnF9hlP
         aO/Waui8t+2QuV5kuCH5FlBq29bNMvdmY3CF8NUu3r07WGppOJWrXyyNdk3N05LQxk1M
         9/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766837356; x=1767442156;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C4pmqXk0EtFz5WDIGcxPfWEZMNq3VYE7yOPBLEdClV0=;
        b=johb7IkTAXmESGJkGAAeuYfNVm5h0wmYORB3KN3vc5VbVGoUKgpnDh9cZ3lDew1Fuf
         O31OC00iga9/e9iZtH8tCMZ/vAKT6Q+dFhv73ZuIOTZCqtJ67LRC0M0rIUO+nihCutge
         BlQNt7BEJaFiyRMw09y7Ei6IMHRHylDwkRbxGEgYYvXDG1EFFdkhDjpb8PR9+vQi6tOx
         LdEhFuQlF1e+NhNQx2MqfCU11mfeLXA1wZGFms6SZTEVLWSUexjHKlXon+INGbK19ID7
         Ttp6oxF1xlXvp/mZPN8P9rH3UIwxVYuFe7gB4GUB0+OLp5r49ZvqRc62q9DUkfIObGM9
         xHbw==
X-Forwarded-Encrypted: i=1; AJvYcCVLqha4oVCHrd3k5uCsMYVbKAYHBfNe/bSowKA9lIM6aBmnJToTScZMKq7IswnXwIhi7Igu4m8RJe1y@vger.kernel.org
X-Gm-Message-State: AOJu0YzjAuO1UZITkf4nD1uLEfgqYaJR/Gasv5E/YCzMlo8qHAF/f26w
	pBXAoo4Yzvsu0hXNpqDXolqWGHItclmONAIqg403DOzNAYxa1WSeL+VFMb22j9phKjWJIB+ij7a
	5ON9Xlczo0AHy5tQCZOs7u/sb+AIHY4s=
X-Gm-Gg: AY/fxX7gbOIdYLoYtNDzsStZZfQBQ4xWZBx4BBVs+/XiukRvIbIejZ/+TGO7q0gvuug
	AhtTU8aPpsgS+ar8MTC3UOrwQVNptRCPv7f8gLiL56f0oypFj9BlGe7ujYSJ2Oc5VuajiPIZrfs
	zXmQ7mSiy7IZBuU2Jm7oCGxpGUAr9BwfmmVq+qNZJ02lhE+xJPqg8n+DBI3pkfDzVODf6X9q4B4
	NeqC94gn9fhGeCuTY+qgOdhfxASh4bznUrWnKN5NJeYSYeHaANzpsiW8MrFBcwjgx2+M1dK//bv
	ewXqhi0+YM3/rEKzKtBvDc3SMCN0cQ==
X-Google-Smtp-Source: AGHT+IHCI6g/ZcH8WxoAguomG9H+0RcxTowBWMH66U8Vn7rFb2ZaVRNRJil8fidWKQpB5C+AXc0O72bA9Zqnln8RFgU=
X-Received: by 2002:a05:6102:a52:b0:522:86ea:42c with SMTP id
 ada2fe7eead31-5eb1a67f46dmr7691666137.11.1766837356185; Sat, 27 Dec 2025
 04:09:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn> <D5A173F1-D439-49FB-A4A0-B632550BF35B@gmail.com>
 <20251227-gigantic-handsome-falcon-3c31bf@quoll>
In-Reply-To: <20251227-gigantic-handsome-falcon-3c31bf@quoll>
From: Han Gao <rabenda.cn@gmail.com>
Date: Sat, 27 Dec 2025 20:08:34 +0800
X-Gm-Features: AQt7F2qvV9yB9z9hjzYqLCqLd_KsLskJTAvwrLIAwyZAGVkNyOZ5cAZZ8zWHuds
Message-ID: <CAAT7Ki9m+MD2_EntEt=-2ZPFxbMNt6LV_kZu-aAvGZ70e_SUhw@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Yao Zi <ziyao@disroot.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Icenowy Zheng <uwu@icenowy.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 7:09=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Thu, Dec 25, 2025 at 05:45:00PM +0800, Han Gao (Revy) wrote:
> > > +            dpu_out_dp1: endpoint@1 {
> > > +              reg =3D <1>;
> > > +              remote-endpoint =3D <&hdmi_in>;
> > > +            };
> > > +          };
> > > +        };
> > > +      };
> > > +    };
> > > --
> > > 2.52.0
> > >
> >
> > Tested-by: Han Gao <gaohan@iscas.ac.cn>
>
> NAK, not true. Otherwise explain me how can you test the bindings.
>
>
I cherry-picked the patches I gave to Tested-by on my test branch,
compiled and ran them on Lichee Pi 4a.
All the relevant patches were also given to Tested-by.

