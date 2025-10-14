Return-Path: <devicetree+bounces-226756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB61BDB118
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 21:33:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52AA5407B2A
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 19:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145142C0276;
	Tue, 14 Oct 2025 19:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TleZuZP4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FA6289811
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760470411; cv=none; b=bn6zaMfvBp2QVNsvyxZ8ff0rRjmQjliNXtJYhZuBvqB2cSnpq2Ruxn1yvqqHCgcRjDzFmhWmIOPqBt0fLy5ZtepGKqGsDPJucUjtYsQfOa+UGIAJGjKY+WMQ6X4g9niNccvV1usLe0ZbH8V/PbRbjAdq6iEc898SsqNI14APnBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760470411; c=relaxed/simple;
	bh=uzfei8I3JapICn9esf+YDGJGM2WA4Z5gbe6GKoIDvoQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G2hy3jN3RRK/3ysL+ep6T2nd2OpkttW0YD4WRRVFLN7ceUjU6Nw1+i7lgkJYYQeccWCR3ydP3MB2Ef5F8AHS3ehfjX7XFosu2MY5m/8OJVc4xdRMCOk6aQFue5Y2ouZpjwOHqJzAg9jtQ684gdglNL81E+SVAJ/bxlkCnzJrKhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TleZuZP4; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-780fe76f457so52060237b3.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760470407; x=1761075207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ARDdDrOQu66S70j2Pcr0PW3/0XEEAOGuC2dcR/3tLc=;
        b=TleZuZP4IXMW1unXbuYV7dezPGZCmkOfI9tQ9g8YX8DJvQdZGUOLPo090Uo+QnED+v
         hHMSsSlZgwowxjkdyLlmoaFPCDtIxreIfe1H7T/XCEdml/yHajZd4k6z1UnpFVslNrMl
         2/RYIAG4q6yV2Z9S2fGWbidv1nCVTzd0AuDXo/2C5VM/mKEP/Vb4Ajmp890DTkE7cV1i
         pT0zF4XChp9DpBgbun5yMsta5ibyaNja/1+FDr2/dpl29/kBPgTF/YxAXONVvozpkb22
         tyNpVfWtWMYVBH92cjZ/y2yDJQC9jINf4qAgj4FIo7+h8lH/ZuzAYL3ydCvTSnScKHpW
         5oDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760470407; x=1761075207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ARDdDrOQu66S70j2Pcr0PW3/0XEEAOGuC2dcR/3tLc=;
        b=pm/I1d0jEDs8bXx6VOyAdit/iWlWs86872kVpI1Q1cZU7+dj4VyFZjVXPpU6/r7J0G
         FPLs7rLmtLiXd/GuPnh+eckz2rXVFjO3bW2kRrj9uvtUmyHPnpTa2KTH+r/Sdh7KPe+R
         zlhYa48raFMoXbpknnovqhHj4zj3O2ffC/17Pw6tuq1htMIC8esCNZ3zLv9dLdjJF5ZB
         xXxt5yjGZtJyFVp3mNSS3teZ7EGasT1nU9B3R8KgAfN09PgjecSmcY1x0vGF2WPr9awv
         wyuPdjA2PA2cYJj7PNnQ/AqvNd6DtqG664e3XfLSFowv/rmNzWnc7ao5Xzu31SvqXXPf
         lYsA==
X-Forwarded-Encrypted: i=1; AJvYcCVnpKMiVvjvDuVcdtnf7phb4b/DwbkppaOnwcMHKvWoIk+nIbw66v2kbo9ozdmfiJ8Oido1Dg81+fnP@vger.kernel.org
X-Gm-Message-State: AOJu0YyCi7d5vXJnzYJjzmy5j4e7wQP4C5V4nRnlfyT8m0F3F70AdbLU
	to7V4RJFY7WR1lUKgPXJ1zgjIlusPlzLs4ii7CamHxWDLmR+6MagA8TKyYyB4tjpBH44tHJTjcP
	CkAp3DGv3prxD1eifFIg4H5GoYIz1ZdwfoVkarl7SKA==
X-Gm-Gg: ASbGncvceusl94ijjK8BZC8TI28RmteNDskfRR2TmaZXVEzJkmaY50lIumLLIYNJCmB
	8f2yv0fy4Lbalq6toXyIo77lUOhu+RGVRGYmQ9mvdRFsFepEjsi2N+vgUaxceXPbEcItGjObxY2
	HoCYSizuQNFD/+FHsxKp/MIdID9u9gQAWFx6ih+rR8E4BV8Z7ftQ1bD78OTVG1ddOOYtAvsu8aW
	BCEZOLytqBYQJ4jfKMJJGQAgzhruQ==
X-Google-Smtp-Source: AGHT+IEUUPaRH5+Gxizt81iSypGUspUlnjKY5P6YXyV0VyPOzdQrWUfDr4OvmwdgxbP2fD1h3jeRBtg0eMKmQu2V+ic=
X-Received: by 2002:a05:690c:6204:b0:77e:5eb8:278c with SMTP id
 00721157ae682-780e16fc173mr396492737b3.46.1760470407083; Tue, 14 Oct 2025
 12:33:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014140451.1009969-1-antonio.borneo@foss.st.com>
 <20251014140451.1009969-3-antonio.borneo@foss.st.com> <20251014-barbecue-crewman-717fe614daa6@spud>
In-Reply-To: <20251014-barbecue-crewman-717fe614daa6@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 21:33:14 +0200
X-Gm-Features: AS18NWDBmcyoyPtVx855p7YCo6bUFy5LEzs_BFgLFYqVzycznaj08XFuSAiE18s
Message-ID: <CACRpkdZT20cdH+G6Gjw8PopAkir+gGgMtRR4pkjnXFrmDkdfog@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] dt-bindings: pincfg-node: Add properties 'skew-delay-{in,out}put'
To: Conor Dooley <conor@kernel.org>
Cc: Antonio Borneo <antonio.borneo@foss.st.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 8:04=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> On Tue, Oct 14, 2025 at 04:04:43PM +0200, Antonio Borneo wrote:

> > +  skew-delay-input:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      this affects the expected clock skew on input pins.
> > +      Typically indicates how many double-inverters are used to
> > +      delay the signal.
>
> This property seems to be temporal, I would expect to see a unit of time
> mentioned here, otherwise it'll totally inconsistent in use between
> devices, and also a standard unit suffix in the property name.
> pw-bot: changes-requested

Don't blame the messenger, the existing property skew-delay
says:

  skew-delay:
    $ref: /schemas/types.yaml#/definitions/uint32
    description:
      this affects the expected clock skew on input pins
      and the delay before latching a value to an output
      pin. Typically indicates how many double-inverters are
      used to delay the signal.

This in turn comes from the original
Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
document, which in turn comes from this commit:

commit e0e1e39de490a2d9b8a173363ccf2415ddada871
Author: Linus Walleij <linus.walleij@linaro.org>
Date:   Sat Oct 28 15:37:17 2017 +0200

    pinctrl: Add skew-delay pin config and bindings

    Some pin controllers (such as the Gemini) can control the
    expected clock skew and output delay on certain pins with a
    sub-nanosecond granularity. This is typically done by shunting
    in a number of double inverters in front of or behind the pin.
    Make it possible to configure this with a generic binding.

    Cc: devicetree@vger.kernel.org
    Acked-by: Rob Herring <robh@kernel.org>
    Acked-by: Hans Ulli Kroll <ulli.kroll@googlemail.com>
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

So by legacy skew-delay is a custom format, usually the number of
(double) inverters.

I don't recall the reason for this way of defining things, but one reason
could be that the skew-delay incurred by two inverters is very
dependent on the production node of the silicon, and can be
nanoseconds or picoseconds, these days mostly picoseconds.
Example: Documentation/devicetree/bindings/net/adi,adin.yaml

Antonio, what do you say? Do you have the actual skew picosecond
values for the different settings so we could define this as

skew-delay-input-ps:
skew-delay-output-ps:

and translate it to the right register values in the driver?

If we have the proper data this could be a good time to add this
ISO unit to these two props.

Yours,
Linus Walleij

