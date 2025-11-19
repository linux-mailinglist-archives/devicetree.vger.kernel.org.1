Return-Path: <devicetree+bounces-240126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A4629C6DAC3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9A77B4FC732
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124DA336EDD;
	Wed, 19 Nov 2025 09:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="SqizxynX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AEF335544
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763543482; cv=none; b=QwbN0qM5Ck84jzdhwQdZ3JJJZj2Gvs5Mp8AWWsRgHmQceugAylPe1q4Rs4EphenjkkXHrXI/su76j07It7RLIeJq04M/i1uX3mun2URy/8mm85QTqvBb5kNlJ0U5AeZnPaen5XgaBVifpCZqTpGsDU5AFvGvLitZhGZgx7J2AEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763543482; c=relaxed/simple;
	bh=8mU4ut9Xtv8ppJaj6RvfY2g7TpvDfeb9Tu6G1ZJZNac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bbgoi73xZpMJpe3ZdbRuQo14ljArbX20bLb+offK2qlRSjYXfH62ilmrKUNvkUkXaqSYrtJPHp0NJbgYKvQX7Ia7hmXbQwJxagrgWDGWXCMb+D8Rxqs+SSRQbs6KwxBxCNL/zAuJqwhkXY2yqM0OtcgY785pnoiLFMes023RKgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=SqizxynX; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5959d9a8eceso861356e87.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763543478; x=1764148278; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TTTF42fHK5mGdQSQ9elb7+2UnZ+sckGT0/TBrhCYXmM=;
        b=SqizxynXEkob4WzS3EJpXtPTvihvF9tYg89Xg21iEj0mQ5e22OWkccRm69QTMWwIHn
         rL7tm8AcEHdJzf1vLjSjH874v/aKwAt4BjsmhwEsBOEMo8LL15TuRlXGwlZLIHYptEwO
         O9hORrEqQoHXEKOj0hGBgevFKqxCJ7YvoTFME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763543478; x=1764148278;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TTTF42fHK5mGdQSQ9elb7+2UnZ+sckGT0/TBrhCYXmM=;
        b=Uu3hXACFjgQkDp6UyzY8T9jTQYj1t4sXV5QJYfCB4WDWquznYJGA0gPBFHNAxXpQe5
         e6eCB9C/tx3sd1yfshGXr2TxdwNIT2aCZton/Oku06+gU8mBU4i6piuiyUCBmUWwlAoj
         B/D7UZz636tYMW4tzrxhY5c/OawYSHm2OjobpNUUVFhvsVdD8GPBg4LHc0VtPuEjhNKT
         mRPrfK9mbaHbg+6FR2n76oiBtJr17ifB1pV/M03RzIUSuNa3ZKTrNB6DqP8CZ7z9H2Yc
         av1OPCeVKw/2YvevaOGDshMY5ya55h2XgzZkQLTLuOYK+3Tx3h6o8HtomTHtYk8uSsm3
         w45Q==
X-Forwarded-Encrypted: i=1; AJvYcCXCz/0FnAOd/3wBUoCChFZE+VhKNJJRImOBS7z+PsD6ADTcr5XvSqm28QMBUxbDNO5WBm/Q045fHGx7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ZBpzZ/6t4rmSIp8tkGD7WtMSmBh2V8H+NAMIfK/DHcKgPKCX
	xtMwpEuwJXt+5Nnf4UHl3chGCEh4qVSqXue6SB5d4vzED9B8cP6AfMhusM3SoUIp4Bao8wzeCPe
	1ux82eB9os/bGJaSo09F7dwT8e0LS/4rT7wl4lM96rw==
X-Gm-Gg: ASbGncsgVEsBj/DNMWotqFqJw1BwHZ9tPMqUl/QWXmsrGSJ4GhxiGvjrgTfxCuFd0GE
	5xK/0KCaD1eP8aks6qz1FJHDu3O3fn98KDYxVywpE6kHh5VvPFSDTyxsm6e2+lzMfMp80vO3Mdr
	U43giJ8v11s9uv64F/+LfUqIjemxeQ8CE3hjGIA4kDLpKye5GERCiA6AfNMbtzF/P75u0GUZZxI
	VGd8zO+ROWrZDfk8wkpfTFZIY9hb/b2J/xbXtMZZdm5S8j+UW+1T8hqk5XSMrePd1oy0UZo
X-Google-Smtp-Source: AGHT+IGUbmXRNV8j6kxI8Xn7Sl5eUfTFpf8w41GTfqJnIcWHEeTQ0N7Q5jnCCd2iqGfQtnpuBxHOO/hGyXAlFCmqfu8=
X-Received: by 2002:a05:6512:3e02:b0:594:34ae:1446 with SMTP id
 2adb3069b0e04-5958424f6a9mr6235982e87.41.1763543477881; Wed, 19 Nov 2025
 01:11:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114121853.16472-1-r.mereu@arduino.cc> <20251114121853.16472-2-r.mereu@arduino.cc>
 <5c30421e-108a-41de-81c7-c0c5e5290cc1@oss.qualcomm.com>
In-Reply-To: <5c30421e-108a-41de-81c7-c0c5e5290cc1@oss.qualcomm.com>
From: Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Date: Wed, 19 Nov 2025 10:11:06 +0100
X-Gm-Features: AWmQ_bnNqwRxZncGu0OHJ90obULTPlnvAB2TqnHrw0p7-cDSRsSM1l0RzAquaR8
Message-ID: <CAKA1JhYgUUSQxcvmJPdeLu8S_tO5HUOb2GAhS_zX6jUOQzfm1Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: vendor-prefixes: Add Arduino name
To: Trilok Soni <trilok.soni@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org, 
	linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net, 
	naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com, 
	chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com, 
	farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, m.facchin@arduino.cc, 
	Riccardo Mereu <r.mereu@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Srl (or SRL) is the equivalent of LLC, SPA (or Spa) is the equivalent of In=
c.
Just noticed I was inconsistent with upper case and lower case letters
between commit message and commit content.
Do you want me to fix this in v3?

On Wed, Nov 19, 2025 at 5:49=E2=80=AFAM Trilok Soni
<trilok.soni@oss.qualcomm.com> wrote:
>
> On 11/14/2025 4:18 AM, Riccardo Mereu wrote:
> > Add entry for Arduino Srl (https://arduino.cc)
>
> Is Srl or SRL =3D Inc or LLC?
>
> >
> > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index 42d2bc0ce027..07a285c9387e 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -158,6 +158,8 @@ patternProperties:
> >      description: Arctic Sand
> >    "^arcx,.*":
> >      description: arcx Inc. / Archronix Inc.
> > +  "^arduino,.*":
> > +    description: Arduino SRL
> >    "^argon40,.*":
> >      description: Argon 40 Technologies Limited
> >    "^ariaboard,.*":
>

