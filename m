Return-Path: <devicetree+bounces-254365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F2D178AF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D16E300EA3D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9086389DE2;
	Tue, 13 Jan 2026 09:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AHu5DkFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6905A3815C5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295653; cv=none; b=L4vV6/yo8rqH2Lsw0ytVhLh98T1BByfu2ZjNKWEPOJtPtlVsajf4bOuwJsnMUkmDM0D8Aq7ENGeHVivGY7gihqSZDwYy4qTT2jF0H0s0PK7w8JImrPQugQm+tb6s6Mioi4nXguzGSR0N/pRkmBsy4TcqVBTzZmz53c6I1d29kfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295653; c=relaxed/simple;
	bh=xqGpVB7r89YsbJUHXZJjT54kH83zTdXiwx5zs/NAmxc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JnAvBm5tkYO2ipYGTQVOUYWX+CKs36s98bm4pB7BtOwHZWjP3hAgFl0l9aURggvVYQtIqn3DcBkQLuD4u+3ElNjNMJOFMeJjWBx+JLtZ93nWkks8Hawv79VYDKZsZX8EI4YhNdmY2Whc2DQ7m3DbVvfhoXPvNQr5P760lDTKKTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AHu5DkFt; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6505cac9879so12380437a12.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768295647; x=1768900447; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bn5NX0zVHIadFPbViV8yMvWD/kdQPjminzNjM4/y1Bk=;
        b=AHu5DkFtrB5y5doJltu1DuEV7iX0jCJ2eB3NoH3VI3UpLMgP79e+Dwn740++a5A8RQ
         d1o3my1h5U0p2BSQRW3PWeUcPaFidmWGeYDp6Rkroo4rZI5qCH5mb/8H9ZC6cE7P3Pme
         sUwo2AS4YlXe7eVM9QkJ+/qKTcjlBt5bEtF2T6KpBFbu+cAte+fwi/e9Z3zBVIagpJHq
         ptw+j1pwH2deF4XQknX5jcX+04Qu9qNJVPsybw85UPzcrAM+w75pBJ9FW/mtazH7IYlo
         ACxzjY1pTDtMFKSP3p9tavM+fG3Q5z+vXdpDp1nFRsfFsQ7ryv/qhwZheE3n8GzOv0lx
         idNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295647; x=1768900447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bn5NX0zVHIadFPbViV8yMvWD/kdQPjminzNjM4/y1Bk=;
        b=oIhGdyek7M/eaQwMoTjwicM8mHWuvv6tsRCzREir44m0vc7mAPyTwVsJfLK6R4zIlc
         M5WUqqD4hGdAhkHlOu6hUm5beJOYG70vs+hOXNwbdAJ3nssoBQmrsMZaP8ecxGKGV+TF
         BCL+rdQIgnhBbvrVq7gUovAt/pirzaBvPtcoLHwqvelT9ik3czihBZPHlyarwC9jkrSK
         JZGMww+7QnO3FapKhGyLhsJDe4nEERbd/LbPD1s770Zil6+PzrZjAab6KWuk+DZoE9uS
         G8PlxJ8pZSEXoUuyszI/Ynx8iS+3U85iyStD7EQJPUVJgHTv6Es+hGFvGoXQ7DAQjWIP
         MjAg==
X-Forwarded-Encrypted: i=1; AJvYcCVZcqH+1wG5y6091RiAfWwoR+QKzHxZJ35exX/yxlpnQx3ZgZXblO2x+xZu/EiOFor++G1HRD6VZovP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt5tK6DnFoOfPt9nvd9Ws2vb48Wgq2Jrui2mceFCWEhBCd15X3
	xOxroD3raCiYF9mx8s8EpV/zYoAplTjLet4R08BY/hbX31X8jVp9Ek1JuZMKRS8hyFsVEbTqpUJ
	4yP+nFeuqxZgloWJ/6YFfrroGPpD+QBEn5Z7DQDdxeg==
X-Gm-Gg: AY/fxX581k2jHutmrMns+BqRlGIVFMVlM2KQxRzYNm4wcDnL/oZAy6llet8kae4Fw/E
	JDhx7HTxSCicMSOeHfUuCPw0Duf2mK49HNy+TSXl7h9bGd+4K+xXdOnREKIjKzmGesbFbM+xFX2
	EkaDu6hN5ocbdqHj74vIU9aGdnCAUyGXZAmLbhhIldzgWTp/F96dXUEgZzMWgCky25j8aEFkoeS
	mqDtwaB7KHOskyWbv919EbyuuASiaZNZjK9i3L8K+T9K1+9Kj4uHHseDkjndATDhv+HuE6yVUM+
	+rsjzuUO7mesmZuGpDQ3+PpW5AEy9A160fF936Y=
X-Google-Smtp-Source: AGHT+IF/uMz8MYijvgNH6EAmeQTRc6aRXVQ6Ac2y4GTApWuNrbNhRowJgw1xPnWbWQMx4L4kzhRYmGW628wrmJp9buE=
X-Received: by 2002:a05:6402:524c:b0:647:9380:103c with SMTP id
 4fb4d7f45d1cf-65097df5672mr20320306a12.13.1768295646934; Tue, 13 Jan 2026
 01:14:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
 <20260112-dpu-clocks-v2-1-bd00903fdeb9@linaro.org> <ba585515010ab9a9b417d000ba744f8178ca9e24.camel@linaro.org>
In-Reply-To: <ba585515010ab9a9b417d000ba744f8178ca9e24.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 09:13:55 +0000
X-Gm-Features: AZwV_QjDqNTFOct4T-rP7w13f_DSbKkRMZMwlRNVBJ9q5uu_3B70MKV9_itceMo
Message-ID: <CADrjBPomC-QaL8aR4QsEPm+Uu5_QoWQZUomLMZt+09-ywH3wjA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: google,gs101-clock: fix
 alphanumeric ordering
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com, 
	Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
	Doug Anderson <dianders@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 12 Jan 2026 at 14:26, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> > Fix the places that don't have correct alphanumeric ordering. This will
> > make reasoning about where to add future entries more straightforward.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/clock/google,gs101-clock.yaml | 6 ++=
+---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock=
.yaml b/Documentation/devicetree/bindings/clock/google,gs101-
> > clock.yaml
> > index 09e679c1a9def03d53b8b493929911ea902a1763..a8176687bb773ae90800b9c=
256bcccebfdef2e49 100644
> > --- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > @@ -27,13 +27,13 @@ description: |
> >  properties:
> >    compatible:
> >      enum:
> > -      - google,gs101-cmu-top
> >        - google,gs101-cmu-apm
> > -      - google,gs101-cmu-misc
> >        - google,gs101-cmu-hsi0
> >        - google,gs101-cmu-hsi2
> > +      - google,gs101-cmu-misc
> >        - google,gs101-cmu-peric0
> >        - google,gs101-cmu-peric1
> > +      - google,gs101-cmu-top
>
> If we keep 'top' at the top as one outlier, it'd reflect that it is the
> top unit and all other CMUs are children of it.

Thanks for the review. I opted to just keep it alphanumeric so it's
(hopefully) obvious what all future ordering should be.

>
> >
> >    clocks:
> >      minItems: 1
> > @@ -70,8 +70,8 @@ allOf:
> >          compatible:
> >            contains:
> >              enum:
> > -              - google,gs101-cmu-top
> >                - google,gs101-cmu-apm
> > +              - google,gs101-cmu-top
>
> And here.
>
> Either way, I don't mind:
> Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

regards,

Peter

