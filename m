Return-Path: <devicetree+bounces-224478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFBABC439A
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:57:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76E1F4E6712
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D7B2BE7AB;
	Wed,  8 Oct 2025 09:57:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF92D199FAB
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917427; cv=none; b=a9rINOp+kLbn328LblcelmP0Smaf1I2QlSrVQuz7joN0XZerThPdIdDWfgCWX0FYxwL7sEdyxDgA7slMTn1PlH5TrLwjVU3Ig+U72xxdQwjaGeYnpG0zAFY011Tsn0EMmdBoFgdgXLGtf9xtQk1GC04t5Fm6DcJQfpkMmhGkleI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917427; c=relaxed/simple;
	bh=wSaoX9wAzgdSjXfQ1M7zv4B/Iix8At/KxM0d2Pds7K8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HjZO1Id1Jhvznlj6ei9jn4bhKdTCOvih2FsG1Cb4Dw2r0jKZ/M06tw+ciRYhMQdNxgbm2OGX/IE/P3AcFJOH+fGIjt4qT9T9Rt78w64Zp/Qwhht7zaWrDNvLT2tIA+qgZcPtJxF1NsjDC75bdMTNvrbUomj47SN9bV8FUKhFEjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-54b27d51ef7so1261946e0c.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:57:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917424; x=1760522224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b8N55tCmF/DMY5b2AW2r04kBr6K7c7B8wSOVZxQmIvM=;
        b=og4bZhh7XKyOR+LkSqmWcfdTLd15SRQBfQDnqX1lEhv1YZpJFs83dEVPSganziysAD
         5XtW8/xPQREPV6FpmAZvM2wKRqNBpZ/jhdR8HRhChE3Ih8Ue9jO1YOABATIH3QwuQPTo
         X5cbdBtW4R5TNZr3SsHd8dQIFfGjZ+9H5zR4LqypGqhgFMXXi5RFAzENWb8xyjHAT+st
         g29FKPXaEQ2/6KeELEpDtNxDj2DtrXw2SJYLP4PggI1aH3heSnv9f8Aa28OZCTgzaiZv
         lgtCZC7KmDgjrGrL1Bw4lIJpkZRtUf2SYkl4PWVWV8lokakVSdR7+BL/IV7wtN6WMnpj
         O65A==
X-Forwarded-Encrypted: i=1; AJvYcCV5/Qi0vAsVsKYgwlDbfV/wS4SPKsGT5suaUyEDoT8Dip2nPtZQvi6A5OkfetXOMNqWpLxt3blnOcO+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2jq4zUOIB6gLDooG+3kuYv6XFsDxs++x+OsB9VQDcYq1ZmENZ
	jXSEtyGhZWkS5bsUvbX9QdlUI+yOUPK7xdGUVmRb8FnWdk7ZvpSSglp+H4hBGvlt
X-Gm-Gg: ASbGncsm1p4xNvhic7ygTfPeP+COVi+ldppBOT2CjDhwTsnZ2NIomHpOg0KyESqn3hd
	u2yOhcENOeHY0Dltc4mo6TYKtcwvW5qQ7tDFecC0jTAjwtOXhp+A3wFWwDM35G9B1kGPkS02FDE
	JfNY1gEWVzV9j08FhA3vn4cvLIKZ15alJNc+iqqR8HgtLNnvWgFplgtvFkeinrTfo+c1rvHMYZ0
	iJpH/b/snA5QkOjR40a6wxxdaJrXgGa1obaHH/uyVN1kTxkRXLvLZBW3B/PVTulFv0WqhbO/0F0
	qHQK8bnK5ZA3b+xRniVxrSDTPZsydwds+LiKEWzgMYjmhZq9lm16h1CoC0S55LJ/6QJxD5P4Wvb
	A+UZfZ+ektwqY5qE0eFcxZgSU1D8Xh9vGoyHtcIzEoH0xQsm5AmLYvJRZlj+eFc+0WLq4Z2qgGY
	TVtHab2Wh27PYZ1O25ffo=
X-Google-Smtp-Source: AGHT+IESCmWQL8ULeenS7JNgBJFi5fCeqBHTkzMoMDyfbVE+xf6tStwj8150T8bQR2dVnb8qxUSkJA==
X-Received: by 2002:a05:6122:1e0a:b0:538:d49b:719 with SMTP id 71dfb90a1353d-554b8a70e18mr1012623e0c.1.1759917424545;
        Wed, 08 Oct 2025 02:57:04 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-553752de4f2sm3005819e0c.9.2025.10.08.02.57.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:57:03 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d40e0106b6so4118973137.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:57:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXJUdLUcrf1z/Evgo/8qTT/UWT8U2w3hQtrJ5RjbyZFw67+eFmEUETSwDdhHE0uTSguavY9eEN2pr8i@vger.kernel.org
X-Received: by 2002:a05:6102:579a:b0:555:ef1e:49bb with SMTP id
 ada2fe7eead31-5d5e2364222mr774121137.21.1759917422208; Wed, 08 Oct 2025
 02:57:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007032209.7617-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdUChRoJ-A4W-PBBQssMvsn1GZY5zXmWxJ9y+EA8M2p3gw@mail.gmail.com> <aOWGWkQn1AK22tJB@shikoro>
In-Reply-To: <aOWGWkQn1AK22tJB@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 11:56:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUXoq3d010y0vyXvvaHpgaV7rHb66VAHrwJxAZXzt+z=g@mail.gmail.com>
X-Gm-Features: AS18NWDCNv9PgDOKJzOc1BoGp8uKrNZFVxJ98-pOMj1F0s3tf9so3ZiI0gofHuk
Message-ID: <CAMuHMdUXoq3d010y0vyXvvaHpgaV7rHb66VAHrwJxAZXzt+z=g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: renesas-bsc: allow additional properties
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 23:30, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > > +patternProperties:
> > > +  # All other properties should be child nodes with unit-address and 'reg'
> > > +  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+$":
> >
> > I take it the "\\-" means escaped dash, to avoid it being interpreted
> > as a range? I usually put the dash at the end, so it needs no escaping,
> > but I am not sure that would work in yaml.
> >
> > I would drop the "A-F", as upper-case hex in unit addresses is very
> > rare, and non-existent in *upstream) Renesas DTS files.
>
> As said, I copied this from 'bus/allwinner,sun50i-a64-de2.yaml', so this
> got reviewed already. I have no strong opinions on your suggestions
> above. But whatever we agree on, it should be reused for all busses, I'd
> say. So, we should put it where it can be referenced?

In my defense, this is a DT bindings file for Renesas BSC, so we can
(and IMHO should) add restrictions.

If you want to go the fully generic way: as per the device tree
specification, a unit-address can take all characters from the same
set as a node name...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

