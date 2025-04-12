Return-Path: <devicetree+bounces-166238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E75AEA86AAC
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 06:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECAE78C2991
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 04:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5E013AA3C;
	Sat, 12 Apr 2025 04:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="VXSWyCys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025542B9BF
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 04:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744430470; cv=none; b=sAy+IvroopFg/MEA1R8TKWwz2JPQsHOyrj1NP7SjAi6EgV6kXgRL17sK6vdeQxgdDabAHFMipYK1TffpoatsD0CixNjFcGdirrAy6SAKyt6cAIuSaYRzngzHMly2gxieIqrUl4XEyKLwyRUCwzPdwtld3SJvyClwn5IX6G9PVPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744430470; c=relaxed/simple;
	bh=/oaDy5SzWfzyFBs8bTU2LHsjy16/G0IhlbubH2Ym338=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i/wx8jpIVv0YcZjW78JFzhPTCQ9Lx8+XblAT+dh/PI+RGuB/BLwegpMwP/n7Kf6CxU6+S3yXXMC0YVi7UHLnlu1gVYN4DMpYMeGd9voVTNMQbChXgi8G/wMi4BXSmhhBszFvllnm9NKDwSqyaoDDbYqFSfYeT2xLrkiRjkF3ylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=VXSWyCys; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so3802886a12.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 21:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744430466; x=1745035266; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CRPWfzlQeNRznSdwAcCFwL0YU/Q8vcd3a6wdTbE3VY=;
        b=VXSWyCys6KU+a6U5T4TSlQD19NnPRyi3Pm00IJ+KrfOFilFkzY2VwO5JK7kXaAG28G
         CmbfF4f22ZuhCkmMhOuUjyWjDsR8PGtdLdCGiQqMhj8Sxun+NEqTOmkVxqDEdidhFWqm
         1CSPxamDgZqwKwvFocUb6yxciBqvMlaUQEs/O8Bh8UB+mFAgr3kxWp3CRSSXeHD88wMf
         Og8DrtqyQvtUp2ITx9K92fbm9ooqYKB/eZCvWhPohCqdS3fbEe6wffQ4XNz84jsln1ik
         qGD6fRqnjP9ctZxh6DojlsSYx9Sxfrhj5awvMfXj204kHrL6h4TbEtTzG4xKOiBILJyx
         elqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744430466; x=1745035266;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CRPWfzlQeNRznSdwAcCFwL0YU/Q8vcd3a6wdTbE3VY=;
        b=XfW0l3mJ0FCr+6D3flq+Ca/LivV4cTykSbB4g7PlDrZeglmJjON2vG4CVLTM9mfLB1
         bT281zzkbuOytLf6L674ejKZGHukx0Q//jienH0zOaoVenB3jplbVSxdEN+U2IQcBCw5
         rC/M3rQiM0ixPaSLV1CtPY3ob/02uC+9QuTP7RuQY5OvK4SEl99jTg/KYRIjI3rQSF0n
         C90OqyaCtikUqVs96KKvHEyDWo8T1fG9oP9EdgwD3AhlgkczABzKtxK7IRUGLdtUSTk1
         dDtHX/HrvfmRWkDNuhpDdgMabXAky6WZr546PEZxkydlJV7KFBEFMYa1jEtCQbQIgnuB
         KdLQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1vUJP4970IrEsieL6yUDMxDiwwP/HtuyKizUOvFAOjm3oMvYEemnwQJy6bMndGhM8aErgTOK+jh6X@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/2M90iG+j6XGxUqoByKGffkS44bEi13wOvymV3gnQnYi7K+6o
	ZDIGIKE6rRg3CAU2qX/Mm6mBYXjJr6Z/vQ6cXAMKJiHwVUF8tAwo4fDSrJGIq8//DWTWuI0tEPc
	eDnUtNkeGvMqgMgyURU+mzHZmZ32wN5oivzTR4Q==
X-Gm-Gg: ASbGncvLaDXG7ZFhV84/t8bSd+aqBmPMTV7BNe1dWfW5abuFFddbVJwS2GX1v/HSyba
	feCT5hRgOifE2LXDzB17+Y/q3NK07NA2B2+GZ25wNoF7LfJkACJbhi8qtJi3G0p6XrLW+wDuTM1
	6CJRkrSuLdvN51xHw+EK/bfsIMJw==
X-Google-Smtp-Source: AGHT+IENp9Rsn1tl1gtpbQVTMzSC6/93PX9bXuEoDkAlRHWwSvf7X/I+LUs0PiXsS9JvQ3CIAnw0CeEUzESATSMDzW8=
X-Received: by 2002:a17:907:c22:b0:ac1:e881:8997 with SMTP id
 a640c23a62f3a-acad3445eb0mr424260766b.3.1744430465564; Fri, 11 Apr 2025
 21:01:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-4-guodong@riscstar.com> <20250411-spoiler-dispatch-8f709700a996@spud>
In-Reply-To: <20250411-spoiler-dispatch-8f709700a996@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 12 Apr 2025 12:00:53 +0800
X-Gm-Features: ATxdqUGgkB-PsMfv6YqmcddOd__4CXMlcvN5r0cbFMC6NhGoCTmz_wliYFT0jOQ
Message-ID: <CAH1PCMZcevte5kJ9PUO3cvoaFwdido=WboNcLV9dTk9SJuLGBQ@mail.gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: pwm: marvell,pxa: add support to
 spacemit K1
To: Conor Dooley <conor@kernel.org>
Cc: ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org, p.zabel@pengutronix.de, 
	drew@pdp7.com, inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org, 
	tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com, 
	duje.mihanovic@skole.hr, elder@riscstar.com, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 12, 2025 at 12:43=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Fri, Apr 11, 2025 at 09:14:17PM +0800, Guodong Xu wrote:
> > Add "spacemit,k1-pwm" as a compatible string to support the PWM
> > controller on the SpacemiT K1 platform.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml=
 b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > index 9640d4b627c2..1e3cabf6a89a 100644
> > --- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > +++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
> > @@ -19,6 +19,7 @@ properties:
> >        - marvell,pxa270-pwm
> >        - marvell,pxa168-pwm
> >        - marvell,pxa910-pwm
> > +      - spacemit,k1-pwm
>
> The driver doesn't appear to handle this differently to existing
> compatibles, why is a fallback not used?
>

The only difference in the SpacemiT K1 PWM controller is the addition of
a resets line. This property is not used by any existing PXA-based platform=
s.

Since resets is defined as optional, I agree that continuing to use
the existing marvell,pxa... compatible string is reasonable.

I'll update the next version accordingly and include an explanation of this
decision in the commit message.

-Guodong

> >
> >    reg:
> >      # Length should be 0x10
> > --
> > 2.43.0
> >

