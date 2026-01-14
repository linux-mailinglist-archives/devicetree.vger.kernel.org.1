Return-Path: <devicetree+bounces-254939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1DFD1DDA7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FFBD3006AB2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71BC3815DE;
	Wed, 14 Jan 2026 10:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LKy2KQyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFC43803D1
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385238; cv=none; b=Qyc91ghIDWIpzhYyCeIRRFzy9zmQrS5KkKXs1WhXdn+USZIN9aj+3X5gQlSZqxg9bqUn/fccgSPMbqZQruXF46aZuNBCswEHkcoP93r+3eWrSoy92TM3PtHA86m4rDvU+VZkBCIgoDTnH4dXQzZKn3QkIHEmmfRb+z6Nv+nvQJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385238; c=relaxed/simple;
	bh=SARQHB95DbnJH7mQ/XMQN+5pmUXPOC6MVPj5s0bWIfs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X3h+GPBX4S3tehWmNvvvu4UVk56LKxPka+ycEmfQwh4z1MhPGRyo/0V8pZCso1iF917DzWOOanqLah93QNyvwHG40oE5edYF0QBI7pW3NFzn+yxagKgM0egsm6MAmvsZu7lViX+BtvWW6nSTJjOAsOfQeCRAv+XonXtHB7N3pLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LKy2KQyG; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2ae53df0be7so14250452eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768385236; x=1768990036; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQwoLslnjX1W0FyM8XHVf4CZqHjqzYWMX1mzng2p1Bk=;
        b=LKy2KQyGJSsOWSY7KzVRGyBRXmSDksLJM4Din4HYKr3u15ayl+25+jOjUDq3qTHyvh
         nV7qP0KXcPkX3NVaaab3eXhZbo5+bXZK5wcWKuaXdJCw+18XDxUqmdcSqiB7xfQgo10V
         +RUNe9/14F6BPvvpQpHRhfTvEw54dpSm0K3XmAYY0fcCYoVABkM1zbr7hltgiZGOBtCm
         usxOKT1VcSGRBv4gdg07YhXNfooCYtu6qiScaRPdqroTOabT1MqBGJsbwJvoWz/TL0ld
         ouhr2lsS2GtcEUFHQKTmtOJ/+OnA5smSt/01BXXobcCMG2wUnkdwpB904HQkpOL15XGj
         GBrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385236; x=1768990036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NQwoLslnjX1W0FyM8XHVf4CZqHjqzYWMX1mzng2p1Bk=;
        b=Ws5/NELkRpoNb+4MZLQkNjysokTaThOhbKKxRPzHncSHBO/wNBJkRRLXBnNgqk//A3
         Y6tOjj/7MiDD5mektsXerIwa71++elpPMzW1z6Cbu+qSgFLtuzJxkp7dpJPm/s2Q7yPH
         jqGvCLhHztX9A4wj0Zkc+QqFmBVnnFnJG3kkzdkvRgd+1+Bup04gVhW1wKnFsfgTawJK
         SiXAfbaD6eqG1CCOfWwBPnOrnBGjZutTG/WC1VmLYlpwKouDnZYmhTGE62reaa3FYyxO
         3ecqdBnWlRiF2ChFOSLvZRhS44ksec4JqOtDDNIf4hu/4v/oHjGqFw4r0ALp+aM+ZpAb
         N3lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWurSQQ/qofGX5eBahWfetIzNqZ5hYb88lVljNNQrdthKu0PAorPdWE19vA48IydpqEVPCK/J0tSOP6@vger.kernel.org
X-Gm-Message-State: AOJu0YzNckmg2kZRYNgJA6OV7f0rlLntwPVMfOme5ne5sMwrEZHd4nX9
	MVOzuypRvktEpJlB7X2uLDPLASVtaXOlTBQhS9st+Q0/vJkgMrWYHeMkou9pH3nbEYC3g3ljVX2
	i4TK80eJVLBa+eiAJBWq2me9MPRhELcg=
X-Gm-Gg: AY/fxX6t9B17O1yKT3ROT5e3JfHoYxCEIqCDS6RkTaxUyVof9Ab3iSblk6ZvfRO8DXj
	33g36WLIM97oUE8z+6YdMZhl8LlNN1NIeFHTWFia0Tv61PBmpP9SfqLX9P8Q2IrA4mvtLNdioVj
	CxGGJMNaf5+gaLkdb5RdHJj8yimQo2Hqt5c7M2g+VUC1mCd85rs6jU7g+XVQAraXwwxW1sTHmH/
	E/aTLQ77DD8XbMdXSsHPQI8c/3pn7EEXua5MJnwFOoKQkCnKX3Oj7yRg/TSI2RBhlX1QDRO
X-Received: by 2002:a05:7301:6583:b0:2ab:ca55:b763 with SMTP id
 5a478bee46e88-2b48f70baefmr2178644eec.42.1768385236327; Wed, 14 Jan 2026
 02:07:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114062549.68954-1-nick@khadas.com> <20260114062549.68954-2-nick@khadas.com>
 <20260114-slick-passionate-mink-216a3a@quoll>
In-Reply-To: <20260114-slick-passionate-mink-216a3a@quoll>
From: Nick Xie <xieqinick@gmail.com>
Date: Wed, 14 Jan 2026 18:07:05 +0800
X-Gm-Features: AZwV_QjSdpwi2V3tZNa-BESE2_IXXSE5rUYX5Df18jOqnSGHXgYKZ2hDVq57tOo
Message-ID: <CAP4nuTXeC1-6ktwLpDt_1ZRHxPSiNAoDKTxLzqEYJUfcnVogcQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, xianwei.zhao@amlogic.com, 
	christianshewitt@gmail.com, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, nick@khadas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B41=E6=9C=8814=E6=
=97=A5=E5=91=A8=E4=B8=89 16:51=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
> > Add devicetree binding for Khadas VIM1S board based on
> > Amlogic S4 S905Y4 SoC.
> >
> > Signed-off-by: Nick Xie <nick@khadas.com>
>
> You still have the same From/SoB mismatch.

OK,  I will fix it in next version.

>
> > ---
> >  Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Docum=
entation/devicetree/bindings/arm/amlogic.yaml
> > index 08d9963fe9259..55663e0f7f915 100644
> > --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> > +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> > @@ -247,6 +247,12 @@ properties:
> >                - amlogic,aq222
> >            - const: amlogic,s4
> >
> > +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
> > +        items:
> > +          - enum:
>
> Yopu already have exactly such enum with such description, so your
> compatible goes there. Look - it is called "Boards" - plural.

The exist board aq222 is based on SoC S905X2, but the new board vim1s
is baed on S905Y4,
they are different SoC, so we need to put S905Y4 under S805X2 ?

>
> > +              - khadas,vim1s
> > +          - const: amlogic,s4
>
> Best regards,
> Krzysztof
>

