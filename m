Return-Path: <devicetree+bounces-223292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CB1BB2A80
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 09:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FC3D3C6B57
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 07:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B501239E81;
	Thu,  2 Oct 2025 07:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k2U0BMBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780E91E1A3B
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 07:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759388752; cv=none; b=AwqfRfXvjKbgvECqQiZGoKjIbqmph6cPFdnxh7obCxImx5COY5V7LjNLIhEzPrk17j2bEEWsF5a92hVYL6wQDc76oc9WIknBbsQenEIEx/iMgBi3mZ235Mu2NH8JYvway1G5ltV6BPVWFVwSNbDhwi25g/iwuhcn97VMC/8C4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759388752; c=relaxed/simple;
	bh=kqajBcfhnyiH952GdDDW4wkPaZlv3VtMaJHXRfk7Dpo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MqZ1022qOzpK2+lCXLYzjZMKWmF/LzKF6bYytT3rDSh5S/3LJUx9VXnXUIGXXhJvIoPuwXBdhvU4lAWND90foh1cN+MNYV6CzT+bjJVOgovyey6w1j6TxL6FwcvATGG3Kz3wUqUmKJAcmiGOtr9Hhm9LHzhI158LBB81V7Wwaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k2U0BMBK; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-62f24b7be4fso1254487a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 00:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759388749; x=1759993549; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZWe9sJjzXFJrzJbfI4do9XirvOVhX8rsNXWi20/gUM=;
        b=k2U0BMBKM2bp8J2X6coDT2V/tcS3OHHyRSAjC2t49vRjqBRlW2AnwQNRjGbMrvbyv9
         tRstQ7APNV8wnoiFeiwCsTVzevzrb+CVLkE7BbVWh2Ql5GhIzAte0L0KG95fhlga8RkM
         I4JqmOqVOuCac50s38RmYrlWzgEwRSGIv2BVklQYVGSSmxtf2CVPlrcpdh8K9y6emagl
         WDOFUVzoPyK68ZJM8QJD4Hi5zQarnRLQa2opSqO/4wNlYz+M0qml+8lcbuQtDml1DuFl
         y/MMYMB//H45FQOlNKRF2xd0k+q8oMGU9V5pOrVtmFP/6uCbRs4Iv0uIb4HHergbVCRD
         z0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759388749; x=1759993549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZWe9sJjzXFJrzJbfI4do9XirvOVhX8rsNXWi20/gUM=;
        b=Q1kOz2tcdYdwth50rCeTM1k4j8+HRYMHCGlxPquiTOc455VxeXGFQjojEYJ/mp0yim
         JozAF6k84fQcjQ97fHn1tvXrHPrY/UTROjMbY/rhEKKNoXI5vshF/Kpdwxf30Doq+p/r
         /gq4MxOO/XGry4VENoL0ko+VedmVUtssXqhxO4PXLJWP0zC6iXWhs0eRfc4jrrVSl/eZ
         9EHS7GWJfv2GV4r3HWsQNA1XeiXYfXMPHBbnaJvH8tha2c0SZVsENJ+5iyrhVoet2j+I
         Y7TU83PfPUsxr5pFdSIQnRBWzh6lmWy8QcAXF9mFOLxBDqCgAjwRIx/2fits4P2ZThUd
         udMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe1NoOCnoKsBzReLWrM4ogAE1pEHX8JEyPXwAZnFtB7QFRvFehkUi0OPb2zwr9HbsbAMsXOng/1oQg@vger.kernel.org
X-Gm-Message-State: AOJu0YyG8yrUTMf/SZZyQDDt6MmGjR1GH26/yehyyk7zQSHOUXGJcj1B
	Jn+e4jqmmVaMOMb2FtnIyj1lkBRJC/2UHNdjSPinSIpEOb2n/C4Ni7dFo5sQMayj4zTonvZszV1
	/WiCNfejsdOgdOjJGIwWq5l8qsaUowKU=
X-Gm-Gg: ASbGncs/LWxDzfcGwofo4RPJ73vnoBLu1iI7n61AyXXqACbknafhrWulXXs93mPxV4p
	P8vm9kOMfUYeIk65m8e+IPHeeEEm9OoziNPchheQaFPubhTi+m6UIMWh35h4NmrXI4B+8S9JHln
	DK7s9rH8eWoHp6lwtkHnMIbGtb0P3Tru1+8Fec857p13FGp/uKFlsZS0MFWEXQUznZS7JlFvo+K
	f0muiudxe5sxASLzFH82yahzQ9gzDqCdw==
X-Google-Smtp-Source: AGHT+IF6z6xvP8EKQnjBWNNUYUXM4tLIvPP2DGadjVE5IQ6sdKrCnvE2y+ttQ27ur9HBknRAgOcWbfanrNPkOyv7YmE=
X-Received: by 2002:a17:907:94d3:b0:b41:660:13b8 with SMTP id
 a640c23a62f3a-b46e6033460mr843740366b.31.1759388748447; Thu, 02 Oct 2025
 00:05:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <961e5351afa408e69541b60ec75852fbbd1ddd24.1759121938.git.marilene.agarcia@gmail.com>
 <476b75cff0c3e5ff23ba7c642924511f3ba09a3f.1759121938.git.marilene.agarcia@gmail.com>
 <CAMknhBHt9JVkaf1Kq76BKFM-Ff38-7ws6gaq+5fwy=pAih-fww@mail.gmail.com>
In-Reply-To: <CAMknhBHt9JVkaf1Kq76BKFM-Ff38-7ws6gaq+5fwy=pAih-fww@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 2 Oct 2025 10:05:11 +0300
X-Gm-Features: AS18NWChg2Gs11byKnDJ3HgKZr9JaYy6y8zdlFJt8XDvo3BCRfuqYggwXNDKvtw
Message-ID: <CAHp75VeXXBjc_o1ktqNnL-wH8CnjbsCHu8Rs_kpfYqCbbz6PrA@mail.gmail.com>
Subject: Re: [PATCH v12 2/3] iio: adc: max14001: New driver
To: David Lechner <dlechner@baylibre.com>
Cc: Marilene Andrade Garcia <marilene.agarcia@gmail.com>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Kim Seer Paller <kimseer.paller@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcelo Schmitt <marcelo.schmitt1@gmail.com>, Marcelo Schmitt <Marcelo.Schmitt@analog.com>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, Jonathan Santos <Jonathan.Santos@analog.com>, 
	Dragos Bogdan <dragos.bogdan@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 5:03=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
> On Mon, Sep 29, 2025 at 7:59=E2=80=AFAM Marilene Andrade Garcia
> <marilene.agarcia@gmail.com> wrote:

...

> > +       /* Enable writing to the SPI register */
>
> Always nice to put `.` at the end of the sentence in comments.

FWIW, for one-line comments we allow different styles, the main
requirement is to be consistent with chosen style across the driver in
question.

1) "bla bla bla"
2) "Foo bar baz"
3) "Happy comment."

Each of all three is okay.

--=20
With Best Regards,
Andy Shevchenko

