Return-Path: <devicetree+bounces-193552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FC0AFAE2A
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E9073A78AF
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 08:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3018528A72E;
	Mon,  7 Jul 2025 08:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OrAeMbWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F76528A1F8
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 08:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751875460; cv=none; b=Y3i+6M9kF5+JLk5QS2Q2+XLwNEVJF8uJ9b//FElorL1bUm55N2F39miO4VeVuSOGiWjK+rTzVB4AJyuF97nLhG5XC137Xp1Eo5dapKPYQ1MIQxbuaLWWqKlC+2xTTPr1JegPSDZix7qSWMY/+VGmekQdawgQLqMSANnpou2GuRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751875460; c=relaxed/simple;
	bh=IEoYgZVPqV6REtyvNEYkqmdU4AlOYV3bBv9n+zrtW+0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GPuZ2zMOLbpcEvcSC2+wfAsL5rz7V4B/Z38HcXbEMzbrh+yDp4Qjx3SbUpVlPDg0KQMXRIj/j75bvKtak+cviBPMFbAL2RaMWWJUVFMDbbHFJOut1v83WerzAt9DHNlik1W+zmwbnFOdv7zA9R4h9HI56R4Nvb/72+0P+OAZcKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OrAeMbWM; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-451d6ade159so23311845e9.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 01:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751875457; x=1752480257; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IEoYgZVPqV6REtyvNEYkqmdU4AlOYV3bBv9n+zrtW+0=;
        b=OrAeMbWMGSqIdFhUjy2qNfv5YBKOfuqvgNPSGBqk9aclu0IZgqRwttTG3akD7TAlst
         Dr5vjqlBcG8iOK4ZN9kQdgO4ShCmi2l1UBC4Tq9UWqGgHsu0p5ysxA+9Rlov7EXp1QdR
         4CYbcr+MD9/bdV6BagNrbqx7CTKPA0V8mlIT6FmTTMaJjJ9jSxSMH0plhbJH+rfDxIg2
         2Ze63+yXKmr991n7Z6jHYBientUxswE8D0AYyPNPpbZ37lPiOCYFzIWmMPVQKhw+ojAM
         kJzuyeSna28MRFSTRuIEnSR22BtxHG7bH9mx1pi7qckY50/UzjDA7bhQcpwAWLonaBOb
         0ikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751875457; x=1752480257;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IEoYgZVPqV6REtyvNEYkqmdU4AlOYV3bBv9n+zrtW+0=;
        b=L0O28t1z2ze4Y6kZm313njyw+KQZclbLEPDs/BotvrIxx+JDUAFcqeqXPBaFAxmCrb
         xnO3FsnmBGeg+MVMEjzf6kCEIxPw3ZILEu7N5yJo9fRrRT7UehB5sNwivA3APnbnuqZM
         LRVSouuuxJ3PvxblyxVsLhCwwJpEUUuFEfcEHF1KJrVAvvg05ORs+h/HxedyzGnBboTN
         DyL7rVD+SXO4zUnydvPyGN2BJGiUxD+NpsQjCzMdn0im1zZzwj1rleDEAnpPRrx1vSKa
         vTgydP6ng653Cqx4V0MT9dtu4XNHny0vRM8Cbl//AyY1g+J0+DEzDX0we9oVnktGZsQa
         rw1A==
X-Forwarded-Encrypted: i=1; AJvYcCUWZ3wmsdojNzF2cEGvl0uHic17H0XzI971G0/sSCpGHt/CPazhOUZQyfwL3Uqm34BvFhzFRhdMRmbH@vger.kernel.org
X-Gm-Message-State: AOJu0YxKpDQEaUcVnW/47iXDgS+mnAY/8Gh67ibJ+knGh0k/uktVIec+
	y4UxLFCS8I3Bh/tpACHH+NxAqTJLMbnBLi0Ms8Uk4erukDDl3DrkA42egbSzLhzHEks=
X-Gm-Gg: ASbGncvuD1gJWq2Rp8NV9E1G1ieqa4IqxWHNigVuuNULr9WVZuudJA55l8TrDs70TXb
	w0MjHKOJ/tp74/CwefxqR+aUzTYy+FXEb/0XCQOtWWjq0aLCgQyonUHfBMEK00vedrPcqO+TMbt
	dBE8jM7DRJ6GfFzuJt+O18tUfBNk4An+kX5djbvsBPrf7DqWOpzLGYf3Ywbwwo3U8PC8A5IrNmE
	oAADncdKV0virrxo3WBtIst693HPw/qwBFM7BsT86Zfu400Vd80i0DskMv0JTMNKHFF+1hblMbM
	iD3LMAh1soVAD6gRc56pzHHN8VrzLC2HOJU9OmPTvkqwCeAQZ0NikAOiLdUuxB4p9A==
X-Google-Smtp-Source: AGHT+IHEIeX1O24CgOzuWsNBfkxeH6TOmmWEVLZJcsdlbgvxYrZII56COdsRCTeJJ4eyH1AmqDGCWg==
X-Received: by 2002:a5d:64e5:0:b0:3a4:e609:dc63 with SMTP id ffacd0b85a97d-3b49701fd14mr7926081f8f.20.1751875456566;
        Mon, 07 Jul 2025 01:04:16 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454b1698f54sm103519225e9.33.2025.07.07.01.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 01:04:16 -0700 (PDT)
Message-ID: <2e26f8f534284b280e9d5e8d4ae556a452e93ff5.camel@linaro.org>
Subject: Re: [PATCH v4 2/5] power: supply: add support for max77759 fuel
 gauge
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Thomas Antoine
	 <t.antoine@uclouvain.be>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dimitri Fedrau	 <dima.fedrau@gmail.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon	 <will@kernel.org>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar	 <alim.akhtar@samsung.com>,
 linux-pm@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Date: Mon, 07 Jul 2025 09:04:14 +0100
In-Reply-To: <CADrjBPo2=FajKA0t7TTMdH6iK_qbWCSJK-hEqh+UWEuzC7wyGQ@mail.gmail.com>
References: <20250523-b4-gs101_max77759_fg-v4-0-b49904e35a34@uclouvain.be>
	 <20250523-b4-gs101_max77759_fg-v4-2-b49904e35a34@uclouvain.be>
	 <CADrjBPqOMOyHP=aQ1+fg2X58NWRp-=MJBRZfpbEhQsTzaZ9LHw@mail.gmail.com>
	 <bc40326f-db40-4657-84a7-152def2ca9e3@uclouvain.be>
	 <CADrjBPo2=FajKA0t7TTMdH6iK_qbWCSJK-hEqh+UWEuzC7wyGQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

On Mon, 2025-07-07 at 08:16 +0100, Peter Griffin wrote:
> Hi Thomas,
>=20
> On Tue, 24 Jun 2025 at 16:45, Thomas Antoine <t.antoine@uclouvain.be> wro=
te:
>=20
> > I am unsure about what to do about this initalization, especially for v=
alues
> > which slightly differ from the devicetree. I think for next version, I
> > will have the same parameters be passed in the devicetree like android.
>=20
> We don't really pass register values like the downstream driver is
> doing in the device tree. I think you will likely need to add a
> max77759-gs101-oriole compatible to the driver and then have the
> application specific values, and m5 gauge model algorithm as static
> info in the driver applied from the dedicated compatible. It would
> also be worth checking whether any more of those register values can
> be represented by the standard power-supply binding properties that
> already exist.

I believe these are likely battery specific values, and were obtained durin=
g
battery characterization by the vendor (or Maxim). They can change (with a
different battery supplier etc, hence I don't think basing this on a
max77759-gs101-oriole would be correct here.

As we learned from the Pixel 6a battery updates, the same phone may use
batteries (e.g. from different suppliers).

Either it needs to know about the specific battery model, or the values
should be passed from DT in some way.

Cheers,
Andre'

