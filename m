Return-Path: <devicetree+bounces-245596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA063CB2C1C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 12:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5902B304E559
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 11:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEFAE322749;
	Wed, 10 Dec 2025 11:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="edNWy3IV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17540320CA3
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765364424; cv=none; b=FUS1XrIO2LubmGN2Rf5ikkFi+VWyWubzBrmgJwEBEHbVfnzynSMTw2XGw7qmq6VL6pEZLKxAu/BvfzZ1WP087ZJQm6NcmJsBHlwc3AcnDg/opA7NCNVP6LfYC/+Eso4PJalEJodwiR6stqUM0f+K70+4hVLkCi2YGjiNSixi0Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765364424; c=relaxed/simple;
	bh=NyL9C4Q7nKA3xVfg/2QpoLWEPS5+KcYWdViAB5mP6vE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BVtA/iaUarQIDVJagkSNcHZKJCqwPYj9FXWelgthYJxjHvTz3EI+Jl1bUCqax8hrpG7tbtnxJTuJzF/rPgqpq1WmkPUhr7fRfaICx+MH4SAE63RnIOPeojU3gQAqkNffT+zZj0171dNh3ppSpZLelGi7zl+92O4bv29Hp633sVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=edNWy3IV; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b7bd8b170e0so149854266b.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765364420; x=1765969220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDGP1HvpfMkO5vmj5IH/U7W1oBMmvxtv1IG7s407g+g=;
        b=edNWy3IVPXPM3zU0wC+OKVwWWtCTa1/IJXbpNDirrBoxMb1Kt2PYezGogg60Nb4H48
         PNN2mdxCWesb+nHbV1TzU6cgTEGqJo/qrm6Ekcq07K07hFTxVr+6eaKUu8Bylg3+fAmz
         1oN9yTrdBF0RO9JYEIP/THEMF1S+8Uuv/46QIdJWrm8h1qeoJ00tNOvniBGU8SIHzwox
         42Bm4ElYEWIxIM0nCghOqgv6WadJKqRKbBUo2ZifquI0MkUyW61LTblN3tevhRHosZXM
         iUsVzx+1tSulRHxFTe2T/7naVYZl9E9HbRt64W7UCQTqsD15n/y8ufuj2rydaJie9HaO
         e2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765364420; x=1765969220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iDGP1HvpfMkO5vmj5IH/U7W1oBMmvxtv1IG7s407g+g=;
        b=AbIQopoGg4mSSoyELDhAy1k2sB2l1lQwL0VNarPxBiXCZ1xZ45MgjYasBNXtVGaaOR
         vF7QxIn5kRLI+QpDenLm2ignygcBdaP4W+a3fNyNNfaY4dabKY5ORBZVvkJZzrYsSJg2
         ICvPTwuQi3s93hFfcAvEzN7IcCpY7X77aVakbiC4a0+8krKcCr556bLRqRD1KjUrTA/9
         OkF40wSJMB5pRQ0wvhgsB9nZ8zPIEA1BdAupr8Eh99ThWzfzswXbt0TsF822Kiec711M
         gbbAKHD81SAgTu8xhJSKgSh2kHk98QbWutAmzUFbZCEvGykuuad32CmzZDhyS+ur3YIB
         PBHA==
X-Forwarded-Encrypted: i=1; AJvYcCVFZANu/8dHpKK9TdF4V+uTMfNgdyVmILLPNBg5T8ki4tgx05wVZ5Wi5VMdcyvxf+JJ/3RBY65L0yUv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5iWT3VeWNgVWmLgwDaD7WRzdG4ceE4qXrj22aRQdbvl+xcMjU
	rY2DQjlM4p2JfZAoIWASD9dnAvOCa9otheOR6G9TVeG5SnU0n3b9kcn087lfkiMDe7n6pbjY37v
	+yPSN8pbPoLWjwoCRoJOA8HT96Ze/aYM=
X-Gm-Gg: AY/fxX4e4b2wegPvI2IXyagYl6zQFLEcADzA+10kCyNz7U76ivbv67N+JQCn3b/QBkz
	ZRN9tnCc0WWETr6fJcwF8HJ3E3tuFuxXn6KTI25LbGER3Ogbr7i6yPtlr9Rt7HvaSKOzmc3q+J/
	MMxffBT7CLH8meZjhn/O2iOH7TfV95rgiK/HIO+dQgid6pmhNadGow+kGeIo2ehhsq5EsCQCQ30
	wcz9qO93RVtdHRgZ1JlqU2ffR7X7Qcg0Cq5qSr1dLNR8C8IVIoJ/VY4BOgzZamGNHdF/2RoBUir
	RJnC6LUBUmxA7+7Gc/WZRRX/XFfS10TIJd3dI1e5IyBA3L870jMmvJa7hC+oGEokfW6sUCyN5wl
	bg19ACXc=
X-Google-Smtp-Source: AGHT+IFw5sv5HXkXEMI2iheFRxQ9CQIewk40C9/tFhkHDACVndFWuGjn2muHwTeRVZoGxiPmcZt+1g/gDVd6sRshhE4=
X-Received: by 2002:a17:907:3da7:b0:b73:8d2e:2d38 with SMTP id
 a640c23a62f3a-b7ce8427b94mr209542666b.50.1765364419760; Wed, 10 Dec 2025
 03:00:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
 <20251201-spi-add-multi-bus-support-v3-4-34e05791de83@baylibre.com>
 <aS79ex5Konr_EeMA@smile.fi.intel.com> <2aca99a6-9541-4cd4-933e-815ceaabe365@baylibre.com>
In-Reply-To: <2aca99a6-9541-4cd4-933e-815ceaabe365@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 10 Dec 2025 12:59:43 +0200
X-Gm-Features: AQt7F2oyHJ70Ni3PdQ_hcep-LsJmXx61VP_xsyFV78eFuHodczdlUa0PKwRFL7A
Message-ID: <CAHp75VeC1VePFHr9y+5spkyGh3viwu1vwdd+jRcDzyZJq_W1Fg@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] spi: axi-spi-engine: support SPI_MULTI_LANE_MODE_STRIPE
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcelo Schmitt <marcelo.schmitt@analog.com>, 
	Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 2:02=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
> On 12/2/25 8:53 AM, Andy Shevchenko wrote:
> > On Mon, Dec 01, 2025 at 08:20:42PM -0600, David Lechner wrote:

...

> >> +static u8 spi_engine_all_lane_flags(struct spi_device *spi)
> >> +{
> >> +    u8 flags =3D 0;
> >
> >> +    int i;
> >
> > Why signed?
>
> Because it is conventional.

I would expect the variable to be the same or close enough to the one
that defines the limit.

> >> +    for (i =3D 0; i < spi->num_data_lanes; i++)
> >> +            flags |=3D BIT(spi->data_lanes[i]);
> >> +
> >> +    return flags;
> >> +}

...

> >>      version =3D readl(spi_engine->base + ADI_AXI_REG_VERSION);
> >> -    if (ADI_AXI_PCORE_VER_MAJOR(version) !=3D 1) {
> >> +    if (ADI_AXI_PCORE_VER_MAJOR(version) > 2) {
> >
> > But this includes v0 as well!
>
> I think it is OK. There was never a version 0 released, nor
> is one expected.

Perhaps a note in the commit message?

> >>      }

--=20
With Best Regards,
Andy Shevchenko

