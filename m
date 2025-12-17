Return-Path: <devicetree+bounces-247216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7FBCC5BB2
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:55:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E97623031CE7
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 01:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E1725F98A;
	Wed, 17 Dec 2025 01:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="R4NFjZkc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5DF26290
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765936492; cv=none; b=ffY5K8hCEGF4f72mOtxP37ZyFn2lypyyfukIVdhv03N7vJy3i+YYRcFAhAuQlg954X0vpqrwHvCXXby8IZrrBv2JTatH0bUfSvetmtpp9trrtIdiHVff3OgghPmi6EZ0/E72z2rIskt/Rdg15VH1SYHtFL/X6Z+2V2sQvLulBso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765936492; c=relaxed/simple;
	bh=gFvWaYCOh0lh6xwcjS7rbDHXUIghg5O7MRfn/Hq+iM4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CY+UDu167s3NoMXjcnr66rcyD+kiXP39fJbAhxoFj6aRqR1eenrgUfR8Szhmm3sREx1DQXnjidqUfoHUnem6nbC9tT004aOX1/gyZsGl5IU/Ben+G6ab9BspvqsjNVVIzkJBMOjBakLfa7cs/EqQF7XWJsXCU5/Ur98+Fh04dSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=R4NFjZkc; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78e7ba9fc29so27863487b3.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 17:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765936488; x=1766541288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sd7QPHCVU5Iv6Zimvwat/hwwusR53tKu2g3puM08IT8=;
        b=R4NFjZkccU7Ld0ZD9Z5n0jeW2xTJsBEU4gSXlFzoi7kygdy9uhR4L/UGUvzMSUIc7T
         rXm8/0vF4rFMuiFVzF6i50vPZc0eRwdmjijsY7q1Dm9/LSX4z6yFm8art6H6dxhptodE
         onzKnoCl1vJUcaNlLT3dyq5Bruu7/5vb/2jxe+GPoahiFfTXUBHrRM8kk22yrn6fFVzy
         4DFjb7nKND433Al+zEO3xQ7N4N4+NhsQjgZnJ7jAWh9DfgHJNoEYjTFoJ7fCGCw73la0
         GMDTfsKWZVnYqiGbO5CpGIRxijsfde61obj+TCNVZ8thW1BMZloPnzuMMDc5h1gv8lSm
         zfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765936488; x=1766541288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sd7QPHCVU5Iv6Zimvwat/hwwusR53tKu2g3puM08IT8=;
        b=KUckYwIOTKUpTMwd8liVFjXNwr8rEqfaY2xOxO0sO0O7GznKu8h8gH4rVjU8qiy3pj
         YxgCRArTkkPtcTOsNqCwHsHRi9iqvJFygMQwNLbmxEZc45fqgVZcertx0V/YP7p4sJXg
         BLaoeMZbT5VfZAeqNoV/17M8M1poetbB3IaHQNsrgTgEpEkbKN9eAmLZhPt6Zf3yn4Wl
         xq1xeyNynVGtTCs7sEHPETBABU5DW8NVtKuOBn+hXvngnHyx62Io8xveZ9FVNCTlo09S
         vl67qlcdmB4EMPCvW8DkC/LJ0xc0tAxIyFhcZU+BhumTQQbbd12E94Fjl0TPpPt0kmbX
         gsCw==
X-Forwarded-Encrypted: i=1; AJvYcCVYIWG1Lm9+QB/+bIL/grhiXjAALusNxUNcoFBGEtDhBFRQJMLUQhxQneA21b9b9H4J/6H81DEaLGAz@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn7kJjN66XPFuXKsHhu7ZZAe7bhpQsu32UKxFhcJEgbhWreUFE
	Qk9jTl7QKjlpeIEnT5fWCZn7EF8dhZeuVKX5tFijUiJEVgRubY5kgenPuqmY3yMd6rDd1Du4br1
	w4mBdwGM+ttPpwHP2U5rFYQhYyFxaGHQJZ/2SVZbGDA==
X-Gm-Gg: AY/fxX6iFqJOm7uHaTPmNOy26z2Z3LauLd8wlyHA2wZR+voprj0fNYfDZdLaIRghziS
	hGQMPF+ovIJJQhXups0JKFCu5h6lF/O2oZyveZextsJ0UENzHHFU2kVSgogns8Q4Ktqppm8AeWf
	FNhDtj/BBZwnripJoM4qa+epEX9xIjTIEIxMs3hOSeuO1D3rpMe/YylUlBwqVq+QIUR5QgmB82p
	ZS3DJj5uLZXOYHC938TvEDEtmwTTghlA8yU/eNyO/LFr9msa5hSGNmF/QvTgjtTaLPbWslDefHh
	0UIwZNmL0wPmj5PPYzO2Sc3gm05FIyc7wLvWP5/pGU0X
X-Google-Smtp-Source: AGHT+IG7RmyYUv9Cs29kj2dxdrYXc3URbz5VHNb0PZI6tD2ZWGH5YXEmhQNocOw3g5bSfsZIoCB4/P4XTUm2cXg3BYw=
X-Received: by 2002:a05:690c:9a0e:b0:781:64f:2b63 with SMTP id
 00721157ae682-78e66ea4ad5mr150059267b3.63.1765936488525; Tue, 16 Dec 2025
 17:54:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-1-a0d256c9dc92@riscstar.com> <e596f624-b4da-4c93-910c-b3c35917eb9c@kernel.org>
In-Reply-To: <e596f624-b4da-4c93-910c-b3c35917eb9c@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 17 Dec 2025 09:54:37 +0800
X-Gm-Features: AQt7F2o5HH0qUzMTVYR3bdSsKGKqc250kEEJ9XB0OvFRDAn2rOZynYGpODwCBsI
Message-ID: <CAH1PCMaKpeATkt-ygN00tYGc1_-DVzBgp2QdfRfmUJC4+RrhoA@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: riscv: add SpacemiT X100 CPU compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 11:33=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 16/12/2025 14:32, Guodong Xu wrote:
> > Add compatible string for the SpacemiT X100 (RVA23 compliant) core.
> >
> > Link: https://www.spacemit.com/en/spacemit-x100-core/
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Docume=
ntation/devicetree/bindings/riscv/cpus.yaml
> > index d733c0bd534fb63ed7c0eada97c42832431f1fc1..cce87092dc7749f49066154=
d9a256af6c7b6c19f 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -62,6 +62,7 @@ properties:
> >                - sifive,u74
> >                - sifive,u74-mc
> >                - spacemit,x60
> > +              - spacemit,x100
>
>
> Two reviews of this one-liner but no one pointed out that sorting is
> broken... What is being exactly reviewed in this one-liner?

Thanks Krzysztof. I will fix that, put x100 before x60.

BR,
Guodong

>
> Best regards,
> Krzysztof

