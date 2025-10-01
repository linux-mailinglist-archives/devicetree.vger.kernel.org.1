Return-Path: <devicetree+bounces-222927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6863DBAF82E
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:55:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FA4F3AB11D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D28D6277C95;
	Wed,  1 Oct 2025 07:55:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A5927703C
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759305337; cv=none; b=qjDRyPVTtQQdj5QyZw5gWX7Z6QEvYCKt1CccATX3Di7GV1OvrZoMgm927Kkx2FB6k1DOcp5ckKp+xwxFnVsDaS8nB0CUEOQ/OZhPTWXcfL5jAGHD+ow3u3sZ3Yt6klW21ooARTu6ueGAGpxV+WSWjrvppNOBrwVW11aIdGcmDcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759305337; c=relaxed/simple;
	bh=b8AgCRlya9OQ9CBRMXjlO38VhsfoP2czQE9ot4OwTSg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hmb8bXK8fmH3g7goLvkcUJVURyQ23wH2UUby6CREZ6JNbigOkaeT+pBCWwVS5RBEYTakq2Fw70uhcaw9pFFOKJi41AZmF7mp43v9X2imvWrJAl+Pt+WfgjZbFzh8wgaEzVpIVHYheCQWY0W7fBIpV5DGlOajqr/npB3XQPKkCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-55784771e9dso3610580137.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:55:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759305334; x=1759910134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RvnNDopHOFz1JF/fDICYOtzGd9DeoBLkKWAzTubP1lE=;
        b=Iw4RS+HuAuwwQ9oEKxV1SI04KDZ8RzPTTruy8DT2CIC8KoVhbGItuBTmugscCHmT5D
         NN+K/cx6yBXFc8Yxf2NzRv9HatOYnCxL26y0d9VmPcRmXjGIVn00RF7Ef/EKUVjhZfRq
         cNfU0lYOXxUeR+ozh7/yIYHal4mmOp5h5Qu0iFJr4STgf1GXJkiJoGZV6cUyW66x3ymQ
         ZSQBW+wZ6aM6cHQVuJmP/XEzP8L2Qc522YhxCiAWKA3HV4xC3VP+nWrNAbE+cNTLFeBE
         bEKyYH1VvZ4TP19+dAe5Khv50JUcafHHR/qtDrFNBlxoMV5hVJCwP1eieRbR+Y1Tjzdx
         HKrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzbdyKt6K0YD44/WV/xQri9sDlpCTa0EAuoLALvMDEZomcBi331ckSZtZbAaINYB19ZV/mwuZfFaYz@vger.kernel.org
X-Gm-Message-State: AOJu0YyI894ZODmiKT1KIoAcn6cCbUw6iT2u+qLoDIg7Lh0xQfC0FYfa
	M6P/B1//SBZ+kobJlN1o9RTcNncPK1tBptLJwmt8GVKbL8niPH4UabYelHAdx2sL
X-Gm-Gg: ASbGncu/6amQSVgPsTgWTOOiBK6nqSCw5audOYJksmPFZEnbrDtWgvHU6sbnDQ5AqOZ
	obIA25jX+1t0pV26Zi1GzC11iHzJYeeNne2p/SbQ25TTz3oMb4s3/qqVnQsUb5MVBaaKWSdKq/P
	HnY/T9C9APcrQUxUzg9CGR9Gko+lbPDM5NAqzXrb570EJ5R8GY/epwkYtneZPE5JsVFJK8/s45K
	cLx/+h3AJaBCmPZbcMq+gKMoi36GbBepkR4Uszvj2D7DAKwS/bKwpzTokuBiajoTWPX6zeq4mA2
	6cS0rMPzHIP4pc4JmsxP52wK9haxB8SxJ0xWMzAXrAkSWn0OyhBRmD5qIyLl/3AYF2q3SSxwnJj
	u3iCPaSFk67jvhsxt1f/XLqxMYCm3QwyPoRd6klsgG067dvQwcCWfaZazPxUXA/1PIEDT53HqMZ
	Z5NOT/Q7oq
X-Google-Smtp-Source: AGHT+IFssH7itmO8Ugcoaeq8NiS8TkhYIQEmcF3flrL+vhWuQ6iVU2FG6fBjT/T3sdRB1Ldrr73Gqw==
X-Received: by 2002:a05:6102:3596:b0:528:d2ad:1f4d with SMTP id ada2fe7eead31-5d3fe739c07mr862568137.34.1759305334290;
        Wed, 01 Oct 2025 00:55:34 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae302edafasm4953305137.4.2025.10.01.00.55.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 00:55:33 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-59dff155dc6so4343197137.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:55:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUa9vvpAgWNzfEvYJjI1vILOcARFxTLhwNMSDRNd6kquv0EaV4huVTGzETcVAyXfPqpRMXtWhl+Acz2@vger.kernel.org
X-Received: by 2002:a05:6102:26cc:b0:529:fc9e:84a0 with SMTP id
 ada2fe7eead31-5d3fe737ad4mr874548137.32.1759305333725; Wed, 01 Oct 2025
 00:55:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930101656.33435-6-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250930101656.33435-6-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Oct 2025 09:55:22 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUjPCO=zVcY-XYWrPMy8sQ0iVM6_H5OETp3Z7sF7-XuYw@mail.gmail.com>
X-Gm-Features: AS18NWC6bgPbihdC7TOCws8KQBD_RqLtxEbixdifNkAXI7livEOC4tq90cZshW8
Message-ID: <CAMuHMdUjPCO=zVcY-XYWrPMy8sQ0iVM6_H5OETp3Z7sF7-XuYw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] ARM: dts: renesas: mtd-rom has no clock and power domain
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 30 Sept 2025 at 12:17, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Addressing this dtb_check...
>
> arch/arm/boot/dts/renesas/r7s72100-genmai.dtb: flash@18000000 (mtd-rom): Unevaluated properties are not allowed ('clocks', 'power-domains' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/mtd-physmap.yaml#
>
> ... I came to the solution proposed here that the clocks we cannot
> define will be marked as critical. We could also try to add 'clocks' and
> 'power-domains' to MTD physmap but I could understand some objection to
> that. Opinions?

I would rather add clocks and power-domains to the DT bindings, for
two reasons:
  1. It describes the hardware better,
  2. It avoids keeping the clock running on systems where the FLASH
     is not used.

Does mtd-rom go through drivers/mtd/maps/physmap-core.c?
Then the clock domain is handled through Runtime PM since commit
0bc448b49e8a017e ("mtd: maps: physmap: Add minimal Runtime PM support").

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

