Return-Path: <devicetree+bounces-254116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F67AD14216
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4D3C300B887
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C5036A036;
	Mon, 12 Jan 2026 16:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bH1T5z96"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29C36997B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768236278; cv=none; b=lUnJ+4VHsRrniXXVAD+COfYKuYP1eJF3eFzNzRaRBGibTjGqFAd3JnIdqdmN5sXlkKG7Jqgi/bIEUrIcfvY3I6VDve/XxcA2Xp1Q+nFXI9lrwDmqv+9zatZjzcU3RXWlrGJ3yhxZP7K16/hyB+qwXVuYBkFU65r79Ur5TRHfLPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768236278; c=relaxed/simple;
	bh=15bJV717b3BmCRep7g3f3eqDSXeQzdRiVGChJjyTeQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uURS7K30EZyi7OmY9bnTCDJvTnSPnUZ8zwmTrFLdtNN6V7ZPhre/Bk+cTg75CFRs36B3CMgPYvs4BjMBphYrOvK/rS3Ak+3+/FISOe17IMEvq3UnStXdExapMP2SvcPxQYtvOauJC4FH8kG6PcV2LkkbSCd+5CAFnem11JOf0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bH1T5z96; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso71422505e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768236273; x=1768841073; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cD2W84EqNYwKoDXJN6AUPaelb23t6+j5pqlOt/nW9so=;
        b=bH1T5z96+EQKTkzc7oWa96oLtOaQAGPXrLdTh5cSkS996Fo97FtWnR1kvgFmC+2q2c
         D1i0FIK64uY2AiEZqtLhq3TlBYZoGVA/9VRvfYZeZkXmF15JxrGIcKBM8fA1+6w7Dr9X
         0c87ROpOjeTCAQpYsoBywYqkdMtulPXhV9o5DTigMu+k24P/jDknmWfEM/tJ+Ev7SPhz
         LQVqmoQyKOO2QLkFQ/9e65wiSmdsQ7n+2NBiG98fSaU8ktpvJobQodePyd0Dvhm4hYST
         lk908nc7wt6tRB4f4dPJ3k59nQoeeGK/aKhSFwgyoG1/bWqYKp92v8d6Ex8sk13ooeYm
         vDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768236274; x=1768841074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cD2W84EqNYwKoDXJN6AUPaelb23t6+j5pqlOt/nW9so=;
        b=U8BHxERoetQNxwY3Ios8EGhP1GuxmMGEObg2wsm8ph2XBLtdMLYzj4jvltzUkSl9Nv
         mrvsCCjoOK4R3ANqeOf6EGsEUg7v76JEQD3kuvlqHeCnzbUx1G/vASerklMDH635Hz8R
         u7p81hluwGxL7KHID0Zyypb0DMbcKNSrGw/vPEfhMYYpqzP6OFD7U22iKSbe6SJ4xZM8
         CZ5NsfGzLzGEZzSrkIqbFgxNc9IqXwTQHLsHW4MxBcEYr4AiYrQTpLKrjy9jNIYRCjYW
         CEcx12ePI02QhU9HRs8RewXoJc0PBq5+5vEMw9k+nCouYBll6+r3M0EWn13pCvDbgrdT
         cI8A==
X-Forwarded-Encrypted: i=1; AJvYcCWtUmBH9ls15GqjKgLFuB9FmpVMXlb8afDxqvSfwvQP54u2YVJrq+km1EetHyji7vpZtyvhTC8n4e2e@vger.kernel.org
X-Gm-Message-State: AOJu0YyMy4d/H0EzkcjX83FK/ncAi61myY6GSORKbR0kCm4E1sArJQR1
	0upn5JQFIWdptx0qhodt3iS1G5YybU6t/GhhLxMP7FWloQlKJwjQ+JHdYYb4kXtyIiIrIlvQcyd
	fZe5mR9pv4osrOwm30pj0q8HjQcWkz6I=
X-Gm-Gg: AY/fxX6CZnDfGIUQ3rZsVBhxdogDUHhvwkXum3OV8llgrjv6aLsmbDNeSIBz6OHdgzq
	gMeG1NxzENmTdZkHVyYxme0IJ7r4HLa5OAkR7rbVHVT0+YPVRJLfmxe73N5AsCGHR1VfHAZP4q4
	4nyuRi9mn0NkMu6Bc3C+6y53wh3pZcFPeJo+GYfNTy4TMT4IYazkQkCUKF03LWkfyOyp6/Fviww
	4J8sk6vHOK5S9hK3qyhKyrf2FW4H7wgW1hkCHtWkpTAH0nW7cBlUT+TW0+sJtQ1BKn7eJ+Hzxsx
	J/IpDJP6XpYAIntnKo3tF7/WC/pKWhVuLzb1AdVi5mpK7oEIruszgaU=
X-Google-Smtp-Source: AGHT+IGau+W3RGt608fIO3PobvK9WHuMcah1IGzOIOuD1jKefcV1nFFm2JOlx2I3P0NzrOE0nXKM9dKGfg70UFuX9rs=
X-Received: by 2002:a05:600c:8b0a:b0:46f:c55a:5a8d with SMTP id
 5b1f17b1804b1-47d84b0aa97mr211947485e9.4.1768236273225; Mon, 12 Jan 2026
 08:44:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103194554.54313-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251104120141.GC27255@pendragon.ideasonboard.com>
In-Reply-To: <20251104120141.GC27255@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 12 Jan 2026 16:44:07 +0000
X-Gm-Features: AZwV_Qig6PsppKVhEERX8F-92Y9pCzvropDxY-lGZwStB3z6BiMeRd5H2J_Pg1I
Message-ID: <CA+V-a8sP6o2GUju2ub0q1exiV87zHrkTddvkv8GKR_7wBF+vSA@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: media: renesas,fcp: Allow three
 clocks for RZ/V2N SoC
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

Thank you for the review.

On Tue, Nov 4, 2025 at 12:01=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> Thank you for the patch.
>
> On Mon, Nov 03, 2025 at 07:45:54PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Update the FCP DT schema to permit three clock inputs for the RZ/V2N So=
C.
> > The FCP block on this SoC requires three separate clocks, unlike other
> > variants which use only one.
> >
> > Fixes: f42eddf44fbf ("media: dt-bindings: media: renesas,fcp: Document =
RZ/V2N SoC")
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
>
> > ---
> > Note, there are no current users of the RZ/V2N FCP compatible string in
> > the kernel tree.
> > ---
> >  Documentation/devicetree/bindings/media/renesas,fcp.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
Can you please pick this patch.

Cheers,
Prabhakar

> > diff --git a/Documentation/devicetree/bindings/media/renesas,fcp.yaml b=
/Documentation/devicetree/bindings/media/renesas,fcp.yaml
> > index cf92dfe69637..b5eff6fec8a9 100644
> > --- a/Documentation/devicetree/bindings/media/renesas,fcp.yaml
> > +++ b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
> > @@ -77,6 +77,7 @@ allOf:
> >                - renesas,r9a07g043u-fcpvd
> >                - renesas,r9a07g044-fcpvd
> >                - renesas,r9a07g054-fcpvd
> > +              - renesas,r9a09g056-fcpvd
> >                - renesas,r9a09g057-fcpvd
> >      then:
> >        properties:
>
> --
> Regards,
>
> Laurent Pinchart

