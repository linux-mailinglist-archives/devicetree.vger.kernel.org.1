Return-Path: <devicetree+bounces-44511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F262F85EBE2
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADB312851D1
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 22:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B72E3CF68;
	Wed, 21 Feb 2024 22:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NHqhebbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA53EC5
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 22:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708554999; cv=none; b=SpZbk7Q3YCwN/Xdmpk3u1x9sT7FR+a1MIzMX4UDJc7eeBrdAZLr6lYhCixBjPjftUwiPXZGLIlQEElcnR439A0u0lm/i/nt7qi3gDqS4bvxHnqJx8bIa3Lw2iiAeM5/WNyfMGCEyUg/KCKML956rn+Upd8xHGUWGt4rSSXznrbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708554999; c=relaxed/simple;
	bh=tSc20XLFyDN+yapJtyXpVTLWJhl/j/TafopWA5uicbU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X7uXng8ZwePVYd5/XEu8xV9oIZ0T5DZDoTDZiZcOCLyps73loxkIvjeUykxdVt7WEyNcXUAKh5ahE5PZ2lbuRGeTlhpZgGy1Mke0vETj4g9W0sdUxuG1szh9bEmaIH0QQvbqfUctMnqFWFRcVMXn0bT7kk76yT0Xcgngt9A/feg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NHqhebbc; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so6765025276.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708554996; x=1709159796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tSc20XLFyDN+yapJtyXpVTLWJhl/j/TafopWA5uicbU=;
        b=NHqhebbckiOrtzWcGuQoGJnTpex+zfwDb/UYtE/kXjq8Q1sl/pNK8RX09m2eKC780N
         CgrOkPWT6Dcy9MFbiTpT+XiR61QGbBV8vsrXMgvBpXDTrlNZil8MX2Dt1N0TyELF8zha
         tiBjIdJ1pZwE1+e/Vc0zF2HdafsOKHGcb56O/CKSvcf07X1roBb/LJrFC7xlskrvmZB9
         kfU3SUNCCXcSHU4uiKePr+aBGWd/t5CkeqLT1pn2zHJPcpXSw345GzEn82X2rhRTJFPN
         C0su1iHKKgfSzom1NmreW/LHNL4L9505nCa1Zj7ZVKVko2ONXAECBvgJP1YdmTpWQy4S
         u1NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708554996; x=1709159796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tSc20XLFyDN+yapJtyXpVTLWJhl/j/TafopWA5uicbU=;
        b=jKPEspF/YhiJkR/qhMeRPzjTSUoEFVd4/P06PGoR8Vhl6sqORODrLZtX9Q0tVjmMIH
         A8NscGlNjTCo2v8mbBaJtVZo8TXZuEzciDX8ksDsUmsDsBIQqLB12IFGANQbydC92S4M
         DNvGMFcL1077db5leIOyCKLJE2YqTPEvJyC6WgwK9cVb4fIgbAs91opSZDrInfWuZGgc
         T8TRvo5PvGcZr9VzpsPd3KOj569C4SLk51xBGtyPyPEG5Mj+H9gDQbBP3MS4fp+uZ8nZ
         GSD4n4cEgZ4FXIJLM5Cv/9vxb6y39FZfKDLbpiBOo+itjGAJ77zDV3OH8U5W/tWIB9yr
         ke+g==
X-Forwarded-Encrypted: i=1; AJvYcCWUt34+jo0WxzRqEBvo9+BHqrG3tWr31kP8xxGPXlDSK26xNjjoitjEw50cqRJSb9r8EAvVDCntsEr5UT3ga0wiRk7Ft3avpLgA2g==
X-Gm-Message-State: AOJu0YwHL/fcav3XN2RHAz27iRkVB5EEWOfSPeTQWeZ5qXGRQjZHln/s
	FetqftMLlISGeKh2j1fToo9jm/a97IXUgekK8HpRDwwPI4kTR0Q0rp9QbQmMPOvyBYm4tBzEpn4
	XScYJpvv0jiKTXqFNxjY5/7vKQ552/iCFhKCGMw==
X-Google-Smtp-Source: AGHT+IFuk5zRTjMBulnXLSggWRXnhLBs06cKQlQvv1fs8sW4ZaMd0yKukcckQQF+6Rq2hATw4MtTgpGeUJhxgB4CwUw=
X-Received: by 2002:a05:6902:1cb:b0:dcb:bff0:72b with SMTP id
 u11-20020a05690201cb00b00dcbbff0072bmr707771ybh.31.1708554996691; Wed, 21 Feb
 2024 14:36:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <3d4b1bbc105ccb8cc0a4ea79b76c70df7d0683e6.1694768749.git.geert+renesas@glider.be>
 <CACRpkdYcyxQVjiMqoUJ1JbOLeywoeDGR8dY+ZLZT1kdmk1kSVA@mail.gmail.com> <CAMuHMdXftwMRPRb=U58XTOigo0Q0q_i+6M3hQfLdo88QXd2Ykg@mail.gmail.com>
In-Reply-To: <CAMuHMdXftwMRPRb=U58XTOigo0Q0q_i+6M3hQfLdo88QXd2Ykg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 23:36:25 +0100
Message-ID: <CACRpkdaYPe4abFQ1B2kpJB51buHdd_aZ==DHY-Lu3W5GdhxpnQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: realview: Spelling s/ARM 11/Arm11/,
 s/Cortex A-/Cortex-A/
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 5:46=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:

> On Fri, Sep 15, 2023 at 1:34=E2=80=AFPM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> > On Fri, Sep 15, 2023 at 11:07=E2=80=AFAM Geert Uytterhoeven
> > <geert+renesas@glider.be> wrote:
> > > Fix misspellings of "Arm11", "Cortex-A8", and "Cortex-A9".
> > >
> > > While at it, add a missing comma before "and", and reflow the paragra=
ph.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > Picked up the patch and applied it on my versatile-dts branch,
> > thanks for cleaning this up Geert!
>
> Looks like this fell through the cracks?
> Should I resend?
> Thanks!

No I just forgot to send my pull request, I've sent it now, sorry!
(Same for the other patch!)

Yours,
Linus Walleij

