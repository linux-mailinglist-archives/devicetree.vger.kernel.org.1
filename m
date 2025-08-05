Return-Path: <devicetree+bounces-201781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B00B1ACD0
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 05:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61DE4189EE3F
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 03:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE251C75E2;
	Tue,  5 Aug 2025 03:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Y7HGxkOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4CA146D45
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 03:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754365127; cv=none; b=UqPO9ZWwcH0u7r6cFC4JOyf7Zba1fmnKfmwodvz3ASAjbtxgK7H4u17TGDPmJQI9PsZjSC5wz698Sy5X0d3n0TzwsptHb1YAzdqrc/Xf3azAaFhF3MLXrLnlckCKx0uREOYdf08ZJ/qvSTqjl0lSJP7FVgb7eHRvRgfAnnUG2Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754365127; c=relaxed/simple;
	bh=/SNZxRzFlk/QovwahhIvN5xPQltbQzvBaYBF+ln5fNo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NBeRb7E9YwnUtHXA68P3RbM5aen5Ev/6NiRu2mLDhBx7Z3eZcloxp8tJsphPt+/5VrtVmaUJ1WNbDQIZ1YZNjWJ6WUVpsEHYY1xGYd/Xdd+lf0lUwvlxLrGbDhLI44uW2I1hG3QSmGHJhtpmdcQ1u0jkafgYFRFVGoJUKo7Z3iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Y7HGxkOc; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e7311e66a8eso3468310276.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 20:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1754365125; x=1754969925; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=POVkbC6m0FbsZQCVqqY6DRqPTZCsdOevFhpQTRfzR3k=;
        b=Y7HGxkOcHr4yWrB9l4k4gFiShYCQpv3DEdX1Y2qvrmmBdTPxY/kaxcqjBl8g4ushO+
         EW2OvHNdaS1X1ipVS7Dvz1N2YP/JsXX37rpUJer5+OEOnv/Fj2L02jkVOaTFstfcW1iW
         MKGq320cSpdgmCL5dhYo1gU212qldzTgCj4Sua0OkoEP6jwJ+iegLFHoOn1JViPmD476
         Q+c5kPHKjWV99GioKiCn6gK+Px8oyfcQA+S54UAhRlbde1P7PI7joue4Zgt87k1+CoLj
         nUS+tDCqYkO9OgeovDNd6my9kIqsK2wpHmrqnnMYGCSmqGoggWkGtf37sZ8Xf7uWaw8e
         09hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754365125; x=1754969925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POVkbC6m0FbsZQCVqqY6DRqPTZCsdOevFhpQTRfzR3k=;
        b=rTDK17dQ1vBZ95MSQkPN+Vn91IJFufgVwNDCnuvbhmza07ape5dAXdHkw+1GuTOdWj
         wcjW7sl4NpG4mNYzxTiRZwDNRb7Bl3s/SQQs5mcUdVP4Hd0RJpGkNTJQ9R5gt3euqfQq
         ZxAQgelCS2f60kXmeWNZk8UELrMtf1vFbPYmifyOVaPsIq9sHXrHd8sQoR1Lp6nz2P8n
         sSvmMYXXb+DujUB8DCZcXW9ZqRH078CKiYeAQUvH73EJI1Lgp9Iyn2V+6kmB6dhRfvhr
         eDhmjArI5msG1cKUCKZl6l1DqGsF1INPjNXd866VsWUr7Wyd2olzXSOiDtd4/ee5yDQQ
         HYFw==
X-Forwarded-Encrypted: i=1; AJvYcCUalh5d9KR0cgN4merbG1TCrscu43wyB9GzJkvLIBaxeZduX4dIGa+dF+/Wlr/9KKhXdwD+3NRNbtZu@vger.kernel.org
X-Gm-Message-State: AOJu0YzKBevF32/MsEcbjR9AhJu2vdFlQ//f+Usy4IhvFpWRk84BXxvJ
	n1VV1mC2Y6J71y9gFU8WLfFRLOAC1SVPMmPyZvLP07nE5fE2qG5zeFXj5jR1H7Sqs7p731ciOM4
	eyzy6L6k0EjONTkJoLWxrlShAZ+HABkzjwbT6cJnc6w==
X-Gm-Gg: ASbGncs03b7RbPudZgb0lHCeFKooSK8USfdXI44YtVra2USzllAMX8YT6pthCTfVGf6
	4lZjVdV9GiSiQQse9Yo1nREydZhlgEqo0Xa5V6k/k0c4//ZVRw2KKbkDB4sx19D+amQ684r0Cr8
	3JKCKI3ZkXf5H0oAKowxv1ZaouAC64SK9IytrlnOI6rIr3SHGi2m5sHDoyp0NNe8OylTXWZGgUL
	UOqbdkLQjNlzFJ1/Xah
X-Google-Smtp-Source: AGHT+IHQC+FWa/sBV6PObYXRFHKF0ipC8ClxXs0v16B6xElYzTA11LPuJqwPvrY3kuC7CE6fdD+FC5kTAS4MnOQ2ZQY=
X-Received: by 2002:a05:6902:4187:b0:e8e:288d:1f53 with SMTP id
 3f1490d57ef6-e8fee03324amr14194932276.26.1754365125300; Mon, 04 Aug 2025
 20:38:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250801070112.12071-1-nick.hu@sifive.com> <20250801-lunar-stream-0fdb3f0febec@spud>
In-Reply-To: <20250801-lunar-stream-0fdb3f0febec@spud>
From: Nick Hu <nick.hu@sifive.com>
Date: Tue, 5 Aug 2025 11:38:34 +0800
X-Gm-Features: Ac12FXwV9XevZuRxzcMDGn197rKxsHebzj--29n5CzxP2OQ9om678fcPueT4y3Y
Message-ID: <CAKddAkDMd27icz6sa5xONAiWGcb8Un8CddHKyX1=jQzH7DCvZA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: riscv: Add SiFive vendor extensions description
To: Conor Dooley <conor@kernel.org>
Cc: Alexandre Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 2, 2025 at 3:31=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Fri, Aug 01, 2025 at 03:01:12PM +0800, Nick Hu wrote:
> > Add description for SiFive vendor extensions "xsfcflushdlone",
> > "xsfpgflushdlone" and "xsfcease". This is used in the SBI
> > implementation [1].
> >
> > [1] https://lore.kernel.org/opensbi/20250708074940.10904-1-nick.hu@sifi=
ve.com/
> >
>
> > Changes in v2:
> > - Update the message to indicate the user of the extensions.
>
> This should be below the --- line.
> With that,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> although I suppose it'll be me taking this and I can fix it up on
> application?
>
Thanks! That would be really helpful.

Best Regards,
Nick
> >
> > Signed-off-by: Nick Hu <nick.hu@sifive.com>
> > ---
> >  .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index ede6a58ccf53..5638297759df 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -663,6 +663,24 @@ properties:
> >              https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev=
.-5.0.0-Datasheet.pdf
> >
> >          # SiFive
> > +        - const: xsfcease
> > +          description:
> > +            SiFive CEASE Instruction Extensions Specification.
> > +            See more details in
> > +            https://www.sifive.com/document-file/freedom-u740-c000-man=
ual
> > +
> > +        - const: xsfcflushdlone
> > +          description:
> > +            SiFive L1D Cache Flush Instruction Extensions Specificatio=
n.
> > +            See more details in
> > +            https://www.sifive.com/document-file/freedom-u740-c000-man=
ual
> > +
> > +        - const: xsfpgflushdlone
> > +          description:
> > +            SiFive PGFLUSH Instruction Extensions for the power manage=
ment. The
> > +            CPU will flush the L1D and enter the cease state after exe=
cuting
> > +            the instruction.
> > +
> >          - const: xsfvqmaccdod
> >            description:
> >              SiFive Int8 Matrix Multiplication Extensions Specification=
.
> > --
> > 2.17.1
> >

