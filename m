Return-Path: <devicetree+bounces-252841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B140D03188
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:41:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 081DB306EAC2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C8204247E3;
	Thu,  8 Jan 2026 13:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D/uvnkbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4433F399020
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878851; cv=none; b=sas/x26TVK92WHaJbDSv7K5I2dgLEbB5gCBQRuHeEadrwEOd9B23fTSVwTAoKC9FjeRS8EnZnaqteL6jCpJ3gWxj44ibuiPPfJDXtXb1fDBsHn2r9UYHozlaF6+562XesC9DCI6JukPL3XNvIeRFHxMlwzy+Lj73VkMnEA8sdlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878851; c=relaxed/simple;
	bh=CzgFGKs6HS/zf0Y+XJiMsF0ZMAFz2xG9sHuo34e/vss=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TgWo92HxaNSmm00ig/oXpywXdxJZVLKFzho8kL8mts+z/DihiY0YHoUACcGDZ7v0h3UBouQv5/QF2x60/E4S3DRKOqGo34xgbjvo+u08kNBW7ubuIubhhrNgg4Dn050CpzdmO0su9xNkAXQTd0IJPTg+nmkL9s2q9GVguc8OeeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D/uvnkbf; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-432755545fcso1810879f8f.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767878848; x=1768483648; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrDwI8d1XgXdXIPyff9BEM4755izxCfosEt2rtEy3EU=;
        b=D/uvnkbf77VF1hFQIeyFuaYJue7W9V2lYrPPvEW/0ySyWIzcFJTLU/4fxZTYu6XA+g
         Mz4HBYOHjpX1WGhiS9qoWAewsuPng+Ka295S3+ZqS+X0a2YyKv3z8mv0TBpm8al6SepI
         C8nrLckNsealW7IV/H7H93g+4hgp39+YPRiMWDw3q1Wiqspeo7OsbdqtDMRGYa+ylvGS
         y2zEmXQAUVN9/1N/cxAgdokMQ3Hb5RG8jAC4TIcUxF6HRW9GffGQQBBCmL4PSSd0/Q/y
         aLcdjEamhfgL3UHCDEzNQhM7gdu0VVBQKbTtR+twbXL8iiLQw+4erXh+UoUyLlZe35Wr
         LCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767878848; x=1768483648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qrDwI8d1XgXdXIPyff9BEM4755izxCfosEt2rtEy3EU=;
        b=OQqVSztScR7/HtDYXsy8z9zOOPTl/FxWqHW03QMsuEnpDKf4jZ+c0GLrKZXXhCPZa4
         IFJ9BOtX4TypE6ZlnflAVJdggFTqqXFEh2pI1uzaqidU4QbaTVP2FhRgnzD1X/2GnjAT
         iZCsFb7olzVHSK3RxJg3DSSMzUOF+PCDMS2ZuAWv9yczwq5Wve1MC1QzLBDV4cAdhx4V
         hOj5Bcw1UOv8hycHLQrMIwn1DZYC8XvjoM6hMULBFDBqFafb/bLfLgGpukOdZHEyX1DC
         CFMPr4LXwtWScUWUdMlZEpm0nhw+boK9pUyfkYbbweckboW+AwQaX4KhhBVUw11RRYpN
         AQPg==
X-Forwarded-Encrypted: i=1; AJvYcCUdUEUuxEye+AxzBBE5DrsR9rQbPLXzsPkEVntuJ/+00AlLFrg7xoJi7k8r8WL9gVyc7IVSpC/OrKOc@vger.kernel.org
X-Gm-Message-State: AOJu0YwBVKgv0zFlhgNPp93YcoRBKHZn6FT7/EPVfciNyPxW+JGKSeKK
	ucb4CH27iwXzE7kXib4OcYaI3eeU8PzSqThCWAI/GYFm8owNt9JmeqTRfXU5MTki3yZbZHJsuLN
	Xb73i1VycmGjxiuln0Yar7myc10/XC+4=
X-Gm-Gg: AY/fxX474fgTwq00rDmtEuuStDcKw8DImuNroxHoJtcuBguTPI/JUkDzeKyOcAvtsAv
	7f/ntI0dJ4fffVjdbie4IeDhtPowa1xQp1F8to3ADeGFcAXLczpHkw8DkwH8USneNiQvKbXPTbX
	7ZxieIGyaV9fGQkOKk2pIjm5MvVbiNBQVSANVI5zp6BTLyJ7jsfnKkst4qbC/Mlw1Z4yEvur1Md
	8dhSltZ9a2AdVRkg5BmafpE8Mj2wtFEgfctJsGtCaiOLB1BBHxPn+wajn409ZOMxo2lh+HOl2+U
	bZdDH9DToQMTmHnucHaMh8iZnvGF2Nbwfk4pTtGBn24HdhOmeDGTNUz6hJRtXlQMmSW9WVa+4cM
	NK4fGzlO/e+C5UQ==
X-Google-Smtp-Source: AGHT+IHZNMPZoabAevWagghi/XxqV/1z4IYucnFW0BxW4DQVfZky9VEvN5CnFse6qxelLN61y98xL3oRSsimunAyf7U=
X-Received: by 2002:a5d:64e6:0:b0:432:851d:3676 with SMTP id
 ffacd0b85a97d-432c3774267mr8110940f8f.57.1767878847545; Thu, 08 Jan 2026
 05:27:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222164238.156985-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251222164238.156985-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdWCskceV-qQiUsPtzy8U_c-rsoFzUHfm3fsrq3CkXtg_A@mail.gmail.com>
In-Reply-To: <CAMuHMdWCskceV-qQiUsPtzy8U_c-rsoFzUHfm3fsrq3CkXtg_A@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 8 Jan 2026 13:27:01 +0000
X-Gm-Features: AQt7F2pxFnzsh-4XES-ACA8O6vgHcTncNbVwqui2BozboXpV_b2KnbqYFWLVhL4
Message-ID: <CA+V-a8t65AcFO4QTyGHxy+17aNEOxHeMuDsE13hrfCbxvr-SQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add RSCI nodes
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Thu, Jan 8, 2026 at 1:04=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> On Mon, 22 Dec 2025 at 17:42, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add RSCI nodes to RZ/V2N ("R9A09G056") SoC DTSI.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.20.
>
> > ---
> >  arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 220 +++++++++++++++++++++
> >  1 file changed, 220 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/bo=
ot/dts/renesas/r9a09g056.dtsi
> > index 5740f04a6222..35cd6b70856e 100644
> > --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > @@ -922,6 +922,226 @@ i2c8: i2c@11c01000 {
> >                         status =3D "disabled";
> >                 };
> >
> > +               rsci0: serial@12800c00 {
>
> I will move these up (between rspi2 and i2c0) while applying, to
> preserve sort order (by unit address, but grouped per type).
>
Thank you for taking care of it (and also for patch 2/2).

Cheers,
Prabhakar

