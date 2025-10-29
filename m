Return-Path: <devicetree+bounces-232616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EB8C19670
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 994E51885DCB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B109532BF43;
	Wed, 29 Oct 2025 09:36:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D9132ABF6
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730614; cv=none; b=OX3r9sDX8R6LeNDQ6QnrEzvfIqdd/I/5hDjdo4qdbzoxXUeGNGxDEYYlXEVlg5MfJgLxneyQW9aKgZUDM0tiUUS6L1N62+5ujpatZSxQg/owUj8PzmK26Kx946VlBBVaFdQeDq/TdcaUmtwq6Ge3eJtKTbDPQ7Uz8T8CT7cS4Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730614; c=relaxed/simple;
	bh=Xpk2JeOgvEuSwfbH0jnkEUut5F1XxgoqjewZULVDRXw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y5SY76ck+8CpKzgat/YNG8b8Ay0xffYUzh4dIr7tVB3Q7L0GQh3zt8l9Aq7f3ybpxb+jJ0i8Qpp4YOVZOtOQzLpHhpgRg/8EWS1NKkGAnm7a7kN4fVkX/7izbs3/h1M/H/lXMOMmtEmoYN2cKSMz955zQwamhpFjaTiDHH7Al7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5db2dc4e42dso875676137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:36:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730612; x=1762335412;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XxTxfpohQi98v1awh6L14qg+YEAlD21qoa2xt+/HNfc=;
        b=AKHoiIJ4cJHaQPjq0t8jxd0F0J3VisvVv+cqJ1EVmlao0hsMeO7FHjVLmb4scz0SOL
         2ilHZsWrJhagGxMp+PsMr9EnAHQm+uilbW/ri9QxLiJG1SeXOZ9T6CS1cPySH2kS1olH
         NCg4evhH8xN52DrFEqtltQzq1ezN4ecGHC2RAeUCLZUWMWGPDLCpUPr4IWDgdBzzLdor
         wCY6ZBfd7AeeD2fcs+NVjOqxEG4Rzl4sFrF70LbzgP3hx+ippk/i0RVdS74HCsTvAYup
         hywq+k1z3g0xS6RFoFAobKcIRQyv9+H4d89kLu+fLGyom7XhGmYG3xtbOoWGWl0RxCb1
         lDRg==
X-Forwarded-Encrypted: i=1; AJvYcCUNBegzRz3g6Elcwmpkluf14GtF1D/9x5ptmsCkkheRpFkmb206BI015Aua1y+m9EVQJ8HVNc0pjCWj@vger.kernel.org
X-Gm-Message-State: AOJu0YyH8d8nc8TMlWhRtPfoI0BZMUPyEtpeEPD6T4YsNRNwHl4My8hh
	ZckYtoH1lussSJM4FJ1tL/wy6MfZTYa1zGIJxgz7VxLSoAOv2QvxzYtcVWRQHL3o
X-Gm-Gg: ASbGncsCcCNYwjELHsODPhoDV+2kNZa7Sh+GbuoBi02lZ9divvTu8hJuec1gkXpYy1w
	SKta6RBbQCBFCrpxY/Qy2o4cOAH9ymkLyj56bsidANkAzG0ap0olMA6feQswW7HldUUxqli825q
	G+nIVhGuvccdQWlggVX7q/pNjuSVOBuK4mt+pxVT5mKSwI83d+pLZD3N45wcdZzb53LUeq4x0Z2
	+KyOrowTPAjFTaED3yZgb+hWGxiPAAR3uivSnv8qyp04uPnrciVgexcjlFqC3BukBR22KqTvP3z
	6GqUGNoNLONzXU73PTmtT1Y1L5gJm1nAd3SF/mozDxTt5m7Qv3z12XFcZIaSCDIO2lLcmS8yFQn
	+DHl4NxbSmBdmc6UcHo9kuOHTKDbsawpih75wJcmqGhcgjKip43pwV0BDEV/gVEn5066ENaGZkf
	fvc4+SgKMqmembFK+L1a87bSa7UPTZm5c3kd2WgepdMe2ZeyHT
X-Google-Smtp-Source: AGHT+IFjttjz/CZ08C8IB7NmCcu0Lec0dBCKIEKfXuDJ9wno+QBfVhvwRUiDH8NmgyNvyb3izXNCgw==
X-Received: by 2002:a05:6102:26c2:b0:5a4:60ff:80c3 with SMTP id ada2fe7eead31-5db8fced451mr654110137.14.1761730611700;
        Wed, 29 Oct 2025 02:36:51 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e521906sm4852513137.8.2025.10.29.02.36.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:36:51 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-932e88546a8so532021241.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:36:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXVE3ExQZrfKwzLY8apc6niT2EbV+JYrtijMP29lzLYRPVaGbS1nKqBJzkY67X0tVQsJOqi700zF/+Q@vger.kernel.org
X-Received: by 2002:a05:6102:83ce:20b0:5d4:1499:99a4 with SMTP id
 ada2fe7eead31-5db7e20513amr1674857137.13.1761730611332; Wed, 29 Oct 2025
 02:36:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6prsl2z.wl-kuninori.morimoto.gx@renesas.com>
 <87jz0fsl0u.wl-kuninori.morimoto.gx@renesas.com> <20251028-pastoral-efficient-mandrill-c4e9ca@kuoka>
 <878qguv8fh.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <878qguv8fh.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 10:36:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW9sEcKprPjiA50QOWm7b_fwoEkuJcLLKg-srQxwJX43A@mail.gmail.com>
X-Gm-Features: AWmQ_bn4zl8I96oXq4Jv_hdb9Wh8qZxVBEYArLHYY_ExCYgsyZeCKhK1SbmQU34
Message-ID: <CAMuHMdW9sEcKprPjiA50QOWm7b_fwoEkuJcLLKg-srQxwJX43A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: mailbox: Add Renesas MFIS Mailbox
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Wed, 29 Oct 2025 at 01:49, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/rcar,mfis-mailbox.yaml
> >
> > Filename matching fallback compatible. See writing bindings.
>
> I think I rename the filename again, and it will be
>
>         filename: renesas,mfis-mailbox
>
>         compatible = "renesas,r8a78000-mfis-mailbox",
>                      "renesas,rcar-gen5-mfis-mailbox",
>                      "renesas,mfis-mailbox";

Please no more generic compatible values like "renesas,mfis-mailbox".
Especially in this case, as we know the MFIS mailbox on e.g. R-Car
Gen3 is not compatible with the one on R-Car Gen5.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

