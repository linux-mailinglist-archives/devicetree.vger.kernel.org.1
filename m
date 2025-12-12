Return-Path: <devicetree+bounces-246121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 068F9CB8BB9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2AE0300F32B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0448F31D381;
	Fri, 12 Dec 2025 11:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B7pCzHPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB330ACEB
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539736; cv=none; b=J5oNYVWSOlzPqUDwKLGadlHohtmwy8dtv8Tnb3Tj8ac/EvZH3kseIgsXMHnllMO2+2RiUg6AnmyZojZ/F1ezBoAVTLuF2NJUw/jJtRfsflfiohENdI/cAr6wbjeGzJMG5j0AN2uNG6Sfk1roPO7P52v2SGoB3A9f97+HtZoAwKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539736; c=relaxed/simple;
	bh=Q5lXCdsnpFiBlImBw0foWBWrJ41BWMfPAkFZtfhVrH4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fwWgzI9t+Fy4gBs1Tg5vf3FnFiZWqdNFFAKorl4yMKjCzKk/fKEnWCHOlyBlgHQiOxs/JMIPjwUHiloYdN7d7JOGStbQdmmjJGyy4kV9jwUagRqcjBXM0TRIAXtLR/0w3o/F6pA6yf/rZILCsQ8yNHziv7GzJHKG7jd3Unyxdws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B7pCzHPK; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779d47be12so10734995e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765539733; x=1766144533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqSZrdF7jKLudHWaIP4Cuhl8OMfNTNFnO+QuvvYTlPQ=;
        b=B7pCzHPK3WCou9Lwjo7AAx+5QpEPh8ZL4ahBZYu3VCQyqKT0I3nJUemlCS32IokoJF
         9Odtr7nK8PT9huPw5SUrWRUgU7OPco2O5F+SEbPFEA+2DvuOiNTHT+JhhMwwOh1rMW0a
         HUKu87bKlnelG2QYMJ9xvM/rZFxdFMqILZ/Vci81/7sbR0TxuEUkIDAgIgy5tKstU3iX
         yVaZEgJJCcAkg5zrLFxL1YRgst0pnT1TE6JacYzgUS19CQIAY4gH1pMMa3j8Uemd34a+
         i431+b+8ubSPuF4fBf4ZrwipK6oRM0zBe5qvBX/+jGuQo0Vq84LFeUF/w2yYwDBWnkDX
         wVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765539733; x=1766144533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SqSZrdF7jKLudHWaIP4Cuhl8OMfNTNFnO+QuvvYTlPQ=;
        b=uKkACeZ33Bb2ClaVQwRRw9lmcaokP/ja5SVtZplV9UU5U06w7ihmBPDio4yy2ymLMq
         dBMdIIzN1BuAtHHVoiRMEaRJVE+vnMkppv09uJuvKGwvq4H11smFIbd0CPfgscqdmHLL
         to8lmmC46dJqhuPnpe6WyoFw/S4K2Mzpm3sH3sReK0CIKlY2F8CbZNAthMiEXZUPuMrA
         a4Ar/t9TKqmnHNrYJdKUB+EMLY8DtdBh1irh1+ODien40+XXGyEiczS5lDoU0Mzzlcx/
         4G7fpZBQQVNtTaV6eazUoLUZSDsIbOkv08sNlWd980FmgrJ4Xvuu5Wp4El94PN4Iptyu
         eGdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeEwfb+SdemhgZo6/I0s3/az5XU+PEDX/qn99Hl7iayF8O5BcJqnOjYRZSuVSHwQPETTtX5aIwarz7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6i93FbejNt/FtZBKZYcPzz2afT4XJUivbLFUb3QN0kF9xCM5D
	vNUzs9/z/crtUdcwrlbv22KeMyrHBqHDNfVnj8GSD1I+Pfucq4nnYsvGpDP6G6UlK9s3aq0G+qh
	4s5Vcwn+CHMn1OG+G4R6ON2XG4ile2Lc=
X-Gm-Gg: AY/fxX4kq0cPkjWlJ45/5vcG83HGqnZedvtZr+Zn1osa6SJnykU7Fofqsa6reIOPCxa
	1nG0BRvVsM6qqVCWPpvFNj/S0Q1190J73+wbq7PS3G9GRv9w/fTqwYcWbehbkAXXFfl41ITluvQ
	ZLmnyp/P5JZM3Rk7ZdZovldYk4d3Td4D10iaaY+9cEoQx3VSEytwOmBrogdgYnOYDhs1v1cquw4
	zWEElBBJacobQhJ0D8tMQYosaf8z2ax1LPNroYvHmxo0+XJWLlWsvhKketATXGmjFBYaabSioIm
	Y52jqPMR+KJqXLttkoFaXlKvDx2zs6ItsyXQtQ==
X-Google-Smtp-Source: AGHT+IGB6ZPeprIBn465w28lxcpG+FFyYAfospB99IhQBKnitIaifthTf3hB8ej0Epzg1+wB0r53roPeiiO7MzdMr4c=
X-Received: by 2002:a05:600c:450b:b0:46f:b327:ecfb with SMTP id
 5b1f17b1804b1-47a8f8be22bmr18376915e9.9.1765539733324; Fri, 12 Dec 2025
 03:42:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251127162447.320971-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <176426377371.294874.17331116412829860585.robh@kernel.org> <87o6o4ebgn.ffs@tglx>
In-Reply-To: <87o6o4ebgn.ffs@tglx>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 12 Dec 2025 11:41:47 +0000
X-Gm-Features: AQt7F2rfQo6KTuZLs0_stvZL2VytvDba8D1c8Rke5WM0EXPG_Jjhav4f1icK94A
Message-ID: <CA+V-a8tzoS2EGHy0n66rtiCivSE7Ghir5bfgEVtr4fdYRt-ExA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller:
 renesas,rzv2h-icu: Document RZ/V2N SoC
To: Thomas Gleixner <tglx@linutronix.de>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, devicetree@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On Fri, Dec 12, 2025 at 1:27=E2=80=AFAM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Thu, Nov 27 2025 at 11:16, Rob Herring wrote:
> > On Thu, 27 Nov 2025 16:24:46 +0000, Prabhakar wrote:
> >> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>
> >> Document the Interrupt Control Unit (ICU) used on the Renesas RZ/V2N S=
oC.
> >> Although the ICU closely matches the design found on the RZ/V2H(P) fam=
ily,
> >> it differs in its register layout, particularly in the reduced set of
> >> ECCRAM related registers. These variations require a distinct compatib=
le
> >> string so that software can correctly match and handle the RZ/V2N
> >> implementation.
> >>
> >> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >> ---
> >> v1->v2:
> >> - Dropped using RZ/V2H compatible as a fallback.
> >> ---
> >>  .../bindings/interrupt-controller/renesas,rzv2h-icu.yaml         | 1 =
+
> >>  1 file changed, 1 insertion(+)
> >>
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'audio-=
codec@1,0' does not match any of the regexes: '^pinctrl-[0-9]+$', '^slim@[0=
-9a-f]+$'
> >       from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-=
ngd.yaml
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): #addres=
s-cells: 1 was expected
> >       from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-=
ngd.yaml
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'dmas' =
is a required property
> >       from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-=
ngd.yaml
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'dma-na=
mes' is a required property
> >       from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-=
ngd.yaml
> > Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /=
example-0/soc/thermal-sensor@c263000: failed to match any schema with compa=
tible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> > Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /=
example-0/soc/thermal-sensor@c263000: failed to match any schema with compa=
tible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> > Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /=
example-0/soc/thermal-sensor@c265000: failed to match any schema with compa=
tible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> > Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /=
example-0/soc/thermal-sensor@c265000: failed to match any schema with compa=
tible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
>
> Confused. How is the change in
>
>           bindings/interrupt-controller/renesas,rzv2h-icu.yaml
>
> related to the errors your bot found>
>
My understanding is that the bot printed out all the errors there were
present in the tree while running the validation.

Cheers,
Prabhakar

