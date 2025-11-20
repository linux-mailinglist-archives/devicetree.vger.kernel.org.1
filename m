Return-Path: <devicetree+bounces-240600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A672C731A0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C95013509D6
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E2330F537;
	Thu, 20 Nov 2025 09:24:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD1C30F550
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763630649; cv=none; b=Xgp41Oheds4FimMuOvcui1ObpmnPuYH/qI/Ll0dieTrzPtOKHLG59v2WSusnwBJWNkeIkhOfNZBKFAek0SXRes5t+mxrLcLdmF5hsQI21D3KQLLDqpAGpDQGaol+26HuZZzrj9NmfHmKTvgSWXBu1GCGCCZh7Z4XZ19XirGRvV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763630649; c=relaxed/simple;
	bh=a10FwSnZ6h7O4JzPBUE1cuLWvlgXV6UArWx6wdtuhPg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G5ylbgBMK1Rqy10hX9DukbJkYh4JldhFJy4U/BwZGd1ziLcNb6DMh2IOrFtBSf3TVpeN0Z7ZPW8ygyfQnpNDxI+uWEwDsmEil421aj9bnTJT9qTU5OjAwZXDDngMUXEJQwDPqOJuMACXPTR5Pvj+p/uePmHqzaItrMO+5VNOSvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93728bac144so389041241.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:24:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763630646; x=1764235446;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8o8r1GpDwUJORRxm63Ljl6au/ReuZjA8RcKLwzb8wA=;
        b=fvrXo0aES53Mm5NmUcn5PftR1srboaG9CPOW4Q60LdPoFqGChMKqa+OpFcot4B4kac
         JTDKpOcwRnrSf9F00FlDMGmqCcFknNzzdEwjig4L7r4HGTHwjdgMwXMPTKmWH3R655nP
         AMG12uUj5jifMTRTM3WsSzw/nrBt30XwA7Gv7RREgtZcqqoCMDl/JO2LXrEMZoG8EAJ8
         fIJUQlRo9BfMpeB26OZq7uGsii0UnLb0kazBjqp+tdlQVzHawGWzAyXdjKbXhmbficcT
         275uNumRMLG+pg19FURJPpo9lrtqpo5QDvGXo47PgfephaN0baLiKNpSCRFxOuzlKsMy
         Zy8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVecljD0Mjrrl8grp7ZDEe5iks5x3V+zqNquowBgWwVEOtz67lGohi6QdiLTeIXndqViQQRpcczYFx5@vger.kernel.org
X-Gm-Message-State: AOJu0YwyHZC0MWTY7sP88BIUkEpd1S2fu0Lwn/HplWFfZb9kcqcBCjdc
	GWknAoo2pz75mvCkNiTdiOSei8doFQz5jzwad5WThc7f8LG71kL+3/N1hs8bLyLu
X-Gm-Gg: ASbGncvznGioH9ctS6L6r5WXIid+rOUqsF49JMrDo9hGh7DD1LG6IjYXzfNlxdIUt45
	LCkRc+NYqbMnywnA/DW+dCW2WUZEghKnqWxBY/80SQj3cZPkMfFwD1LYsKwC7iroR/fF8ITd0iw
	05/6aBbUiW4/rZRnZgF/XrBOL7W6yTa5gR85lyWI07pnpv+8t+Ts1cXIBHyhxyQ5Z1YBJJ9YghY
	2YBaw2imYBtmIvJly5WAI5N3br7SXU2q5ow4w/xAlFh2LheChhlI5O0bPUyu3FwrGBQ2VUe+Qxe
	Mw1PtvH+Z2CqhupHwK6m2ReD15oQYSj+yIT+9tO0QPUoDF/H4SwWE1gr6wqNNQAU7KmSr1XeYe3
	q0qyxbi192Wg+oxpq2lBLo6S1hK9wyRZTAxqnSTOSt00gXABC8PW3/7PE1TGb/tqy3HCYoBQXzU
	OnR7cvNv6mohDmr0+nXk6HtarLTHf8xA7NigJX5kjLJ6cQz0pMDD72
X-Google-Smtp-Source: AGHT+IF12g5pZt1Bhbv7TE2KtXzCVANNd18TSBlDrFx+manM0syAJiiSguQI1yYfZAMW/Y+9oprqBQ==
X-Received: by 2002:a05:6102:c90:b0:5db:2828:c133 with SMTP id ada2fe7eead31-5e1bbbe0b90mr824329137.10.1763630646202;
        Thu, 20 Nov 2025 01:24:06 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e1bda019b5sm761446137.8.2025.11.20.01.24.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 01:24:05 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dbcd54d2d8so557131137.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:24:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX8kldQYAp05qAT29IiJyVvgfuC2B5SWn6V88S1FprD9SwMlC9liwGm3msJQHPNnLgZPaGCJlVHJH4M@vger.kernel.org
X-Received: by 2002:a67:e7cb:0:b0:5de:8ce:3cb0 with SMTP id
 ada2fe7eead31-5e1bbb4a766mr909180137.1.1763630644874; Thu, 20 Nov 2025
 01:24:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
 <20250916150255.4231-8-biju.das.jz@bp.renesas.com> <CAMuHMdX6+ckjLwZ0Bf1F-JcOUs1PU64vosv_bBkjcekE+b+VzA@mail.gmail.com>
In-Reply-To: <CAMuHMdX6+ckjLwZ0Bf1F-JcOUs1PU64vosv_bBkjcekE+b+VzA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 20 Nov 2025 10:23:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXXHqvfUXWKSpYhzNQX+k2PmhxPXkj7dMzvhKDqHWRjNQ@mail.gmail.com>
X-Gm-Features: AWmQ_blZPoy4tg_dDksEbJSM2lMk_66tIgBDCIw5C43-P-2vA3yIGiX_rm6d-3Q
Message-ID: <CAMuHMdXXHqvfUXWKSpYhzNQX+k2PmhxPXkj7dMzvhKDqHWRjNQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: r9a09g047: Add USB3 PHY/Host nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 14:22, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Add USB3 PHY/Host nodes to RZ/G3E ("R9A09G047") SoC DTSI.
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

