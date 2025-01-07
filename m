Return-Path: <devicetree+bounces-136045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FC1A039CF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:29:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1B513A1FE6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4912B1DFD99;
	Tue,  7 Jan 2025 08:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="WbIxZBcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B44B1E0DBD
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 08:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736238535; cv=none; b=RhJlhyupzSkWpaMCTrluj2fnSUS85EKOmBXrXLg4Q70+xx7TAygkW/zJoxj3jlumjnXpfGgik2nZL1JtMkrQNR55fbi91EfuNEIS1gcQZZf9JJS+3Ny1SeP0d0DJ2iIRsmsP0+TiDBvVtO1UqE0RKBeEQ1dNkl8EoajpfFRFSjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736238535; c=relaxed/simple;
	bh=KppWSIngGaY7dPjUjaUwC/ZQsQtvE8wkP05GAZfgcbM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a7pYqT0vtlrMT4EyTbh2ftFniwAN2AT/cSY7z3Gx+Ll+Or2mB+dq+xUwWXaPMKygogaTB2FHYL57mjiUq0HzPEX4IjwZ50UtpptGIRAeqA1CpLvQrb+jn2TfO2A/fL73vc5aW5vJlYRIPnHlQeBT2oieSPDucM6Ju2ElWujVxCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=WbIxZBcb; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-85bc7d126b2so6125675241.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 00:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1736238531; x=1736843331; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KppWSIngGaY7dPjUjaUwC/ZQsQtvE8wkP05GAZfgcbM=;
        b=WbIxZBcbuUa/uk9iNqArFHtpFyojPzi7WWOxuvUoqvS0R/Fro2L7NFw3AUg7OXRDV9
         kMxAPUwyd3iQ4Ed32Bjf1HUvdpSTx1LEYjiJk6jN4s36El2t94k2LuyO8Fafp/9v+x2l
         2FcjBLpFboLaBJsSoGMnxQ/o6br3tC7hb+9WzCuosbiyKs/pjVbZYhyooZpO9ELwcFqC
         4SR5m1cpO0tZ6JCqJRhtKBP3oQy3KFtCh9uOKbABbeuz/+aghI+cHO6P7Dl3Vp+7MsLW
         w+zENzorCatwRKshP7sz0GT/T3/ta7dMaxoWPvcac2dSvf2MzbE/8ittVMV0g/Su/QNN
         8f0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736238531; x=1736843331;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KppWSIngGaY7dPjUjaUwC/ZQsQtvE8wkP05GAZfgcbM=;
        b=vASa1MlyTaoJ9u0wmN4nX3mv5gXh3LhN6VexRcJ6V3QEu9lpWKmi6YUFYQ/FHfJbXj
         TM8cE1U4gq6ZXsM+MZH0Ha5CpguAjouEoqpcFi05ljKp25oXShU+NXkOdtfwhL+O1no5
         SxwaWlkVAXShIwLMNGfPdaLYqYqMNUmr0En3z1ugba78pdoqizfv1FQ8siUlZkeg8yC3
         28H97rkVnBDa4QSkvgc1LvOOw09/spupmkrYQJrW2URsTosplXVgfyfor0BfiisLQkwV
         4LQv31ITvSDHANAX5BMfxHSin5jlcdXYZFo7CVg/S8B5EbxCscbxm4L34P/vfKd9qjmM
         5XOw==
X-Forwarded-Encrypted: i=1; AJvYcCUBdtYlpWs9gSiHKKfzmNx91J9q5DJu1QONLAriVAq/FEKA7yf26ATzrlyAgduZ8MRiL+mC2X7N24p0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz46k6QD54dQarV2Jjmui4Zm/QKjqEKNdLAEuiXKqK5hr0HJcmG
	KnWiGEwsH1JEYouAzY7aPDLF03/vUjnljFIr1f5qjG4emInRQCQSHr9LIDTeoN1IOGILFz6D0T7
	LzSBOUnh0FIxvk+WJGllF8kwS7YT2TH+TD8qliA==
X-Gm-Gg: ASbGncsy9mGj2rHdtVCJSRLnQ0G2wsNr8B54HXqfgkghsWMJalh/E0TTpz0x13Yitu+
	l3aHSCfImRb9zDr4tGioQ7lDnKm8t8IPn5E8xVBYl
X-Google-Smtp-Source: AGHT+IFRlyN63rDxZSRVE78WlCeoEuMuGOCLoomP75LzMdg4FjXQSjVinxY9uwYfnRZePt4VYnzvFEkA9dHEIzOx7qA=
X-Received: by 2002:a05:6102:548f:b0:4b2:ae3e:3ff with SMTP id
 ada2fe7eead31-4b2cc48a5eemr42728948137.27.1736238530976; Tue, 07 Jan 2025
 00:28:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222081231.213406-1-nylon.chen@sifive.com>
 <20240222081231.213406-4-nylon.chen@sifive.com> <jvwgsszvs4jtcytcphsdjulzgqfqzdp4sisu236ddwsqgmvriw@ngi4ljgh5b74>
 <CAHh=Yk92=hp+kaTJWL13_jwJ5gzAAi8gbRF=Ns9=yq2trRUQEg@mail.gmail.com>
 <xf6ympnaljfjztptb5w5qdpuluckptozdz5a7gtuycsev32ngr@x2ovibqv6evr>
 <CAGKtFavQAZOof5QSTFCEaRJEPETm5aBqzkV4g24n3ioiBAOgDA@mail.gmail.com>
 <p6rqpx3yrn2ib4ulmby7tbnpbg4bjyt4dt6snrmhuyw6hx6izl@lywssban54et>
 <CAHh=Yk-iFGULUQc-U-PNjx-st7d5KER3J+t54SNERVaNr++qoQ@mail.gmail.com> <c5zjujxi7wsuabdpttojkrwnvkwna56gz3gnapxskg7tdzmo2f@frvbwzguizdt>
In-Reply-To: <c5zjujxi7wsuabdpttojkrwnvkwna56gz3gnapxskg7tdzmo2f@frvbwzguizdt>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Tue, 7 Jan 2025 16:28:40 +0800
X-Gm-Features: AbW1kvaf4bo-YxvlaMSY-WcDD0SjBcDDTRKQ82-uo3kHXd1gXlTC1T4DmcDAT0s
Message-ID: <CAHh=Yk8U+NK=Sk2UkwjL284-RJR3BLDUe+WCPXm_nH5J6soqPA@mail.gmail.com>
Subject: Re: [PATCH v9 3/3] pwm: sifive: Fix the error in the idempotent test
 within the pwm_apply_state_debug function
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Nylon Chen <nylon7717@gmail.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pwm@vger.kernel.org, conor@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, aou@eecs.berkeley.edu, thierry.reding@gmail.com, 
	vincent.chen@sifive.com, zong.li@sifive.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=B9=
=B41=E6=9C=887=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8812:52=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> Hello Nylon,
>
> On Mon, Jan 06, 2025 at 05:00:32PM +0800, Nylon Chen wrote:
> > Hi Uwe, I have made the following adjustments based on your
> > requirements. Does this align with what you had in mind?
> > - period
> > seq 5000 1 15000 | while read p; do echo $p >
> > /sys/class/pwm/pwmchip0/pwm0/period echo "Testing period: $p" done
> >
> > - duty cycle
> > for duty in $(seq 0 1 10000); do echo $duty >
> > /sys/class/pwm/pwmchip0/pwm0/duty_cycle echo "Testing duty cycle:
> > $duty" done
>
> That + doing the same test backwards (i.e. using seq 15000 -1 5000 for
> the period test and seq 10000 -1 0 for duty_cycle) should catch most
> rounding bugs.
>
Hi Uwe, I understand what you mean now (testing must consider both
backwards and forwards).

Thank you for taking the time to explain it to me.
> Best regards
> Uwe

