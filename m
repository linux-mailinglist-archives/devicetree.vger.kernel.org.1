Return-Path: <devicetree+bounces-75102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F939057CC
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 17:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F1861F20D45
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 15:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4C8181B99;
	Wed, 12 Jun 2024 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jc98PsND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79496181B8D
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 15:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718207843; cv=none; b=eVWgKDiXm58UKJmWsnj10FrMTVpNOmU4aTzkUGXA60JSn2KP8uv+9uaszVmUMMAWrUrQOv7FyEIYokQn4rua0cG/OeoW84LKY34ThVJNPmYuCPeCIgJ76llA6Oh4nqkXuXcup2AEdTi509ROPkjm6P2p37l6ktuoYVqPDKeIJvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718207843; c=relaxed/simple;
	bh=tFbSRsIQaGUlhWt/inT+U+/jw1j2uBcqaGXsCKApSs0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=shW4be1M1A8XttIMfXJoSqvwu2vl3G2q30SPXMaDZdYEDRI4lpfdsSyJ4Bm8kRRVZ0nclUy4KDVUt7sRa+Dibz2vPI5X6CKrdYWSIzdTnizAoFVDkGFW0OZepFLNwgnoRKKJQ4BgY3G0E0bxlWWH2ouNjOEqcgjpiYnnkHzvX4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jc98PsND; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35f225ac23bso57785f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718207840; x=1718812640; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tFbSRsIQaGUlhWt/inT+U+/jw1j2uBcqaGXsCKApSs0=;
        b=Jc98PsNDJGo8vZwDA1FPupV3UZf8rcjes8fs4fFc3Kgf063BBucB6Blfx21frEEZTu
         mp4JR1eMX2zp6V0mpcCWNwu3qAq1gBAAu54/rhmrTdezPx5H8NNxure5c5c1+yyU3wFl
         gJk3NPYLJCI/FJ5r4Ts9kw6ytIfBjULG56GNLzd1JTJnDZ5F4YmQzTkwirUq+Sj5U7A7
         HjLMiVQ9cYZEa6nbLMb7b+ojzpNKCToT9DYSGvaPXt9J4RC0FUg6xn4CgNc+kN3agsDz
         XiMtSRB53b6daE8WI3HqV7Lwy5GyI3Z4QbMNBllWdkjDjpHQ3kuPXzxu36tBb6rmQSCP
         RUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718207840; x=1718812640;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tFbSRsIQaGUlhWt/inT+U+/jw1j2uBcqaGXsCKApSs0=;
        b=lHIdL9XVcU1JRHUoklneqUgSXGLRCXnn/mEepZWEKTM+NaKqyy2HwXkubbs+gVHVbr
         9eN5S0VWV8wH6vCx6zDgcuYHL/qlmqSUcgvvWcrasc45zyOb4ntVuAtw2pNvv3awq5ok
         ToTtO2xc9q938steTl1bvuCeVnHF5GpbFRDmQCwcSxdwjtPw8RL3TgPL12MXXBsMFfyK
         1HuzqGqUlI4EgZuAiNuJMAqtUWD9aNo/hpW58IiT2/ktzwgaEfX/qcJSdnjIS8sS85Rt
         HauvmHdqnL8fZVabFw+HVtWC48MytkQuzpjYomL+JIYsZlEyKpWDKBDBVFq6AzQAAkAG
         hlyA==
X-Forwarded-Encrypted: i=1; AJvYcCVwLCyH9juJkLIovliWSGXsFF9OQ83gYlc0jyECZrniBiSg2l49Qj6VMdwnxmCQeziKbJZs6sR4F9TOfRAx3ZeHtnSQNslroXeCow==
X-Gm-Message-State: AOJu0YxiC35UZmxIvKOwehnuRL6BlZnZu9ttHR77zFhH7vKCkkwJ0B6W
	8yYKHum3PgeLHRhP7AHkAy9ZYmYluv1sVtaZ2e3DYaH3KQPQbfd4f6FXHyo++FE=
X-Google-Smtp-Source: AGHT+IEpEDDV5rjvlffnGOmRnvYE/2Zj4m5R1KKf8NISPivJRoIUhXC9RM3SjIRT0ilAhNJnaThFLg==
X-Received: by 2002:adf:fa4e:0:b0:354:df31:6dfc with SMTP id ffacd0b85a97d-35fe89383f8mr1859836f8f.58.1718207839883;
        Wed, 12 Jun 2024 08:57:19 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f26355d54sm7840904f8f.64.2024.06.12.08.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 08:57:19 -0700 (PDT)
Message-ID: <0b594358c94ebf6d6585005a827e69c274014983.camel@linaro.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add
 gs101 compatible
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,  Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Sam
 Protsenko <semen.protsenko@linaro.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann
 <arnd@arndb.de>, lee@kernel.org
Date: Wed, 12 Jun 2024 16:57:18 +0100
In-Reply-To: <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
	 <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
	 <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2024-06-12 at 09:37 -0600, Rob Herring wrote:
> On Wed, May 1, 2024 at 3:19=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@=
linaro.org> wrote:
> >=20
> > Add a dedicated google,gs101-usb31drd-phy compatible for Google Tensor
> > gs101 SoC.
> >=20
> > It needs additional clocks enabled for register access, and additional
> > memory regions (PCS & PMA) are required for successful configuration.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > ---
> > v2: avoid having nested else/if, and instead change the existing 'else'
> > =C2=A0=C2=A0=C2=A0 to explicitly state the platforms using 'if'
> > ---
> > =C2=A0.../bindings/phy/samsung,usb3-drd-phy.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 61 +++++++++++++++++++++-
> > =C2=A01 file changed, 59 insertions(+), 2 deletions(-)
>=20
> Going to respin this? Because it is in use now and undocumented.

Yes, I'll send v3 this week.

Cheers,
Andre'


