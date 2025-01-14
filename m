Return-Path: <devicetree+bounces-138393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A889EA10384
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE75518896CF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FBA22DC55;
	Tue, 14 Jan 2025 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="A3OHOGM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D422DC4A
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736848823; cv=none; b=ck1YPhs9M+jxPkRIIbH7u84WsYLisf5xRC2Fwo2qpo2a05MeaA/ZVO+cJ4cL82AtcquN8GBp5Meesrw5WFQFygDTr2AgmeLjePpaTGcVEGFfk/kMOeI2OyYFur2zRUNFRLYqb9+4uDPiUN2Tfp0DbOgHIEqLyrhlcWtlz8OK+TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736848823; c=relaxed/simple;
	bh=iAUE++zX57tG9v1WvpuDXhxiiEp8IqXCua0qw+tacIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BTBK6Yp06Tz1vl6voaUDPg1xrDs7VvoM7K8i+FyVcZrgpmcwTri9xpkipqbOpX+O1qkZloVmCJTtls43DONy4MYDoSBAKy+uhDrIjbcUcv+pTkDUREJXtGqZ+gLr6wED7u7PBHLNIDKAoUY70HZr/6cXXTgX1EUBJh78yPSUFuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=A3OHOGM1; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e5372a2fbddso8476015276.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736848821; x=1737453621; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qoa+TnZ+eJVmynifYlg3CNbZeNLJM90IDeQADpEz0bE=;
        b=A3OHOGM1hioM/6ZanI43ED1ZEfu5l4UyqOK+9r09FtA6LZK0N3OwaTISZKFOem0l1j
         IxURnjh9Xt19GsB5uKZfNuX7ssi/GjxK7lc4qxMlcKawC6FqGuEeYDBPrFWDTAw4Htxr
         Resi2pAgLYXJvVdSo5OYHRlsIPp6R4UHRHhFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736848821; x=1737453621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qoa+TnZ+eJVmynifYlg3CNbZeNLJM90IDeQADpEz0bE=;
        b=nuIJZB+OV7MZVXeZlTiykx+qIWwYPJSrRUkaI1BQ0OQiWImJl41fr52/shblA5892x
         RLMOZSDp9gw0LdFimqGexTdiH7NiysT1joFJpd0WbwBPStn5+vfRjqXvqkIp/l+d6kgq
         NiPIqD2DVEyA5eyvF8lgLmoMSDSlr2TAat/imzIwxgAxhPXecb9+5By6EkHIn0NaQ+5t
         YdTe2SoJdpuyVGFDRkmluXT5LVkNNp+MsXa6HaOKzfKQgWKdY6jsYr+L2M/blP8cymxJ
         5Vv8zvHU6izFOec59GvFwqrbOg55T/brT3zVbbDlKCHl7eB+58s90a6rLHT1rd1UEJ3h
         ds9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUP1A6j4tLnWGzyZXSGePdp5ogJQV5kOQd8Fu51NJUDt4LosIRqsoeFCGWtaGoDq5r7hI0ys9A24GBl@vger.kernel.org
X-Gm-Message-State: AOJu0YwPtsCM1gboj4azqGQPLm7AUGG8kBBe0cIwmn/eEutIrB3L8yQ5
	NM29JFXGQfzaMpe6j7Msg1KvB4qFXfEIiSgtrF5vm4XTemvcTlxdq+cjBYlCP5sPlVR1Av9rBJq
	YWZrzWuX8GxrfJH49IrV39dxPP6FHtzu7yGjutcPfrtdguYF+E7Q=
X-Gm-Gg: ASbGncuZxzAcwiD7fuUZkP8yXwVwyTBfTykc7e5QUKFoYF/Cq2AaRbZzTNUE+jPwQ+i
	Z+2sOCQSULmKSiDaeKRqd3z4TUR2FyDJ2zlKh
X-Google-Smtp-Source: AGHT+IHHg2Sovq+Z/vvKo0y9q781hVUrhXP9TC8xIJIu4TiqIQanvvQOUqy3tbZsmXEZ8ARVy4PjE9+PGPJyEEUoEwE=
X-Received: by 2002:a25:53c9:0:b0:e4a:fc25:30cb with SMTP id
 3f1490d57ef6-e54ee2345d5mr13391673276.46.1736848819839; Tue, 14 Jan 2025
 02:00:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
 <20250114091128.528757-2-dario.binacchi@amarulasolutions.com>
 <79a90c01-9e21-4e3f-a334-6ba9e1df4150@kernel.org> <CABGWkvofUphcXTwBS5UBEoQ1GYpngP7gWi9Ax=WW28XKK0qoYA@mail.gmail.com>
 <54b63cfc-7a51-4b69-8b32-eb7591b2169b@kernel.org>
In-Reply-To: <54b63cfc-7a51-4b69-8b32-eb7591b2169b@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 14 Jan 2025 11:00:09 +0100
X-Gm-Features: AbW1kvb-e25fGlxc4UPaUwDS8MpzQn87D6z9dSdnvOHiAHJ_tEcZc2pAxesQjxU
Message-ID: <CABGWkvrYUU=HAh4uYNpZSpzeyanfp5a_xjK_178ftQyDKH=cTg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: convert stm32 rcc bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 10:48=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 14/01/2025 10:36, Dario Binacchi wrote:
> >> Nothing improved here.
> >
> > In my humble opinion, there is nothing to improve. Any modification
> > made causes the tests to fail.
> >
> > $ git grep st,stm32f746-rcc arch/
> > arch/arm/boot/dts/st/stm32f746.dtsi:                    compatible =3D
> > "st,stm32f746-rcc", "st,stm32-rcc";
> > arch/arm/boot/dts/st/stm32f769-disco.dts:       compatible =3D
> > "st,stm32f769-rcc", "st,stm32f746-rcc", "st,stm32-rcc";
> >
> > Or am I missing something?
>
> How can I know what you are missing if you do not show the code?

Sorry, but I still can't understand. I run multiple tests, trying to
modify things
based on what I understood of your suggestions, but the tests failed
every time.

Could you kindly provide an example of what you'd like me to do?

Thanks and regards,
Dario
>
> Best regards,
> Krzysztof



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

