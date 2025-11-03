Return-Path: <devicetree+bounces-234397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D49EBC2C42C
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 14:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 26A454E1221
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 13:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FFE274646;
	Mon,  3 Nov 2025 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s50QJ4fx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3267F27281E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 13:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762177806; cv=none; b=K6UHUGGUqSSMmEa1l8ucxquxG7O2RBgnsrI94JbaRJ9pjvP87nyI50k/NoWh+XY9znsyQvQXKsY7v3ESVTSz4So/hgp4BIyPLqWHHiwS2YpXg20Fh7kq0iW7mwDz22JX7b4UGXsVj/hyRIEk2r/m9aKejQZ05MfYrEEiFFc5GXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762177806; c=relaxed/simple;
	bh=TsvnfzRwsbf7wGlFzdjo71TLJrNDdp/a+dRwvaix3co=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SypMbZH83lpIr7I2NIlVfPXb7Op62fyp+CUg38MU4sNarjmv+hXkilB+WGVUUi0jYz8zaItDr7dReYrznHr0H/SIh+eRaseYw99FNpTZoI82omeqv0erpd2RGXez/keuMXHqHWR3QCTRsnzcTZwvEwprBPn4NoBUzEf3jUKKvGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s50QJ4fx; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3d70c5bb455so1562569fac.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 05:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762177804; x=1762782604; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TsvnfzRwsbf7wGlFzdjo71TLJrNDdp/a+dRwvaix3co=;
        b=s50QJ4fx+PMJ+Rf+UE86QYB9Vmy3XErnLyHATB1i/CC6KG9A86sMAY5v9BDGSyO31J
         9teUFNB1n7pCK+6rpEY3tLe9yRJngDGkQtkhfRGEUPt6Ufzo9Rs8hmYIeYOt4A3IhXAL
         fPH+w2M+6/e0ecbpTM3LTgIW2K6XILgwr+eH7buoQVIFrNPGphqVdmnSjEJphNRXuhf/
         JhPNOSH09Jt2wQXbFvTLVHGCTbZvyMB/Ljg+Ab3QbC+v0v3BgtWN0WWqK7nCt3nMT9f2
         iqGHP2N+aj3WcNpe9HJvKCzniYIS5XL/shOsq8z3oc/QKy7JniMOZ+3my2pB2q6w4KUr
         6Csw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762177804; x=1762782604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TsvnfzRwsbf7wGlFzdjo71TLJrNDdp/a+dRwvaix3co=;
        b=B6r9JdkO3Mawfp9n/k08UuaKe8XjUP4c4BF4F3jVDC826hswXq4vQ3n0I49z+vDzyx
         ilMGYNLd282x0sUDGOWjbNqD7EDP6ZpFzSFVibSQSxpcl5Op0WoMXJdxV7zeT/OocKfU
         GjlfyVpN7/xVLvaclROgH3AbFma8eOyxldzpcxksXLO5il3MViGi17O/RfAlQ1yollT1
         afYIqjFh5iV+svyUb2Ysi4j+fcIsFHzoJBD2T/pZwBDfQg6yNXgn7WN952GUHpnDSPLo
         +c2tLEKVLthfFhsyFyPTybSEUsQ9fj5iwX5PAtSFb2Z0gjhoPDzPSnsQHBtNdyzokMEm
         lvSw==
X-Forwarded-Encrypted: i=1; AJvYcCXHGBzXh7fjZr1Ov9BKU7tae5GViMzWtjpWygQ+nfd8oNZ1uhj9dHDG5MY5Duge9JRdGszZGT5W+Nnx@vger.kernel.org
X-Gm-Message-State: AOJu0YyaSOrY3WcAebVndKMmojtLuzYrcusxWeZEc6cbM3lOqVMKqst2
	KpA58xIVRf04aNLZmX7BrWWf+kboTc0fcctn5KKV37AqxNzfziNR6H3bzRiHAMXzy2DntKU9pQH
	Wqucm6OzoPxwXNcBXwLBysILwt+iHaLc/aaBe9df/IQ==
X-Gm-Gg: ASbGnct8U7okuSpGZ6sFVyFgN29HVCAeb7RDa9rT/yVedzhK7sDSHPRSgh9hkhhMp6k
	w2Op+IiE147AtFZdZ2vkQou6SC9zquQ3aN4fu20PB9ObtlmPRPUdsH64oA3GRphW3EKk0jlnrGS
	AHs00uK7yJ/5O2Br961BLAyvSWlJxS8T3S45b2SaBPdBHWgpZgfZrrLiIihn2cFUgwH23INeO6z
	3iPSzzZvtLIXhTz1e2XfIw0OUDrWTI4HDjO3/g9DacRfFbPb+Y2aT06bli4lhoq/BQVt2EQ
X-Google-Smtp-Source: AGHT+IEvvbnuEgVymC79WaE8covKlgmCh0NOsdeyracVXZX/SVCozVOiOeq8HhVtYvKE2fZAbBNornSKI+Cu+lra0Ak=
X-Received: by 2002:a05:6870:8e07:b0:337:74c4:8f18 with SMTP id
 586e51a60fabf-3dacc5d1f80mr5149154fac.6.1762177804047; Mon, 03 Nov 2025
 05:50:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251102-automatic-clocks-v3-0-ff10eafe61c8@linaro.org>
 <20251102-automatic-clocks-v3-1-ff10eafe61c8@linaro.org> <20251103-smoky-rustling-bloodhound-7590ce@kuoka>
In-Reply-To: <20251103-smoky-rustling-bloodhound-7590ce@kuoka>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 3 Nov 2025 13:49:53 +0000
X-Gm-Features: AWmQ_blfrAzZoKwokZQZXo0nzPx9hZ0JYCMuGx_l22LwSjR0d1KXfaSrBbDofEM
Message-ID: <CADrjBPpjX_qSehbNkaAG03f=whs09qFzzgNiY3sztk7v0QeCFw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: google,gs101-clock: add
 samsung,sysreg property as required
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Will McVicker <willmcvicker@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for the review feedback!

On Mon, 3 Nov 2025 at 09:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sun, Nov 02, 2025 at 08:27:14PM +0000, Peter Griffin wrote:
> > Each CMU (with the exception of cmu_top) has a corresponding sysreg bank
> > that contains the BUSCOMPONENT_DRCG_EN and MEMCLK registers.
> >
> > If present these registers need to be initialised
>
>
> ... for what exactly? What would happen if this was not initialized?

The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
bus components. So it is related to the automatic clock gating feature
that is being enabled in this series. Things still work without
initializing this register, but the bus components won't be
automatically clock gated leading to increased dynamic power
consumption. Similarly the memclk register enables/disables sram clock
gate. Up until now we've not been initializing the registers as
everything from Linux PoV has been in manual clock gating mode and
until starting to implement this I wasn't aware there were some clock
related registers in the corresponding sysreg. Additionally with
Andre's work enabling power domains it has become clear we should be
saving/restoring these two sysreg clock registers when the power
domain is turned off and on.

> What is the exact justification for ABI break - wasn't this working
> before? Or new feature will not work (thus no ABI break allowed)?

No, automatic clocks and dynamic root clock gating were not working
prior to this series. Currently power domains and system wide
suspend/resume aren't enabled upstream either. As we work on enabling
these features we are finding some things that in an ideal world we
would have known about earlier. Unfortunately it's not so obvious just
from studying the downstream code either as they rely heavily on
CAL-IF layer that has peeks/pokes all over the memory map especially
for power/clock related functionality.

Whilst it is technically an ABI break, I've tried to implement it in a
backwards compatible way (i.e. an old DT without the samsung,sysreg
phandle specified) will just fallback to the current behavior of not
initializing these registers. Things will still work to the extent
they did prior to this series. With a new DT the registers will be
initialized, and dynamic power consumption will be better.

>
> You need to provide rationale and "driver needs to do something" is not
> enough, because everything could be justified that way.

Apologies for not being more verbose in the commit message on the
technical details, hopefully the above helps explain it better.

regards,

Peter

