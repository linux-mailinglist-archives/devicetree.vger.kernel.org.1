Return-Path: <devicetree+bounces-244824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D402ACA90B4
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 20:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D5AC3002170
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 19:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01221364765;
	Fri,  5 Dec 2025 19:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kqU8J9VU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C21335771C
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 19:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764961920; cv=none; b=kf+w1MpqLl4iRNyZePkbmd0+fN6noyC9KUBh36Zw/i2Oxlkq76NKizEo/3McqdWTsTfQn+uZIH/LfTF4lEHh3W1KpRT5Pf5hqzYiGDe13DXDvRzBNCKo4P8ZGQwZr4aBf0yQSny5Mqy2R1AY3l3+m4cX3qXjo0KzlLujhE5RS+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764961920; c=relaxed/simple;
	bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RVK++qCVLnsaj1G1E6QFBo9J3qrQb0VRs8kqWn4cwsmBVxgZLH67uGpv18bD5REGgN0oWeOt8M5bkFz0tOg6ge41unR9DKD7HcWWOjg5nxjERGZ7a8LBeNzNxTj/UsrNIi3lmo2fZE5+fvqLZkZ73Tt8lw+Tc+eNfjjKYA0z4Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kqU8J9VU; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-bd1b0e2c1eeso1993347a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 11:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764961918; x=1765566718; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=;
        b=kqU8J9VUgJ2bowjYCEe5HZaNp1AR4mNvZlFDNJWNZG5k56OTBNr15wPy5SHIY74Zwn
         EpYhWH2KDNEiVsY8NzDqtLC3gsciGlZNH+PVKHFc/K+GCnoRL8QdGLWNAl5hBNbUwL2m
         R6UMAG0hCPUx8bbc9VeueMcjf69Zuq9tDx8KCt7sFYp/aXVX9BRgj9jjgmJLOLXzDeX6
         lSJpHTOpTQuXTj238Gf/vz9rYpYUc8Uj2JCF+SsmvdbXbT8CcOcCFqyI161iURl/2KNL
         P1SsdkW19BOF4n4mkFUWAjoK9P/Qxd9V6oqX8FcnR3y5FHSSrFDhMDgT83oU0QcOAtnn
         HoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764961918; x=1765566718;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=;
        b=pycw31P2u3DvngCHUqqeolxJ46Q11Z+hxUUWnw3DyYQwBJ2oTYcN8qWhdWZwBcYZpW
         xGohoJ9PXAtuiGU0Wp9WFc/01HEFHYFQ+qEY/XF8EsrmSoNpyeFNe/cxg9AXxhecyDOy
         /Hb+AwcW+5UG/GCQTQ5zKBlmGGNgTfHVqRNXy3myDqNlMwC28ABm3ZZA+P9rCiJfTlW4
         PWuchQfxxI2PSi29D8yYWUe+h7qCXCGXGNb5c9uNzMMa2fiEkBMWhof+VLAJmxrcHKw7
         gPx5FXD+i9nFFcOgwUSl1MQvMf62REBuyc8NoRUilc1tWUaN+4gfHPPteHP8u5M8O43v
         BspQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqdgHKJ3DgIy4/KpotzGwcywXP+1FWXxJP+kM0vQ4ZL2jhSGNMcTHOg+UmaLnIsRZcrFe3hXqpCksg@vger.kernel.org
X-Gm-Message-State: AOJu0YzZY4bAZ1UyQNmcVpRkCtQ1zcndhm4fPFhzKU30hxij0HKcb091
	hr8vHSZ/nkjbVXPRdNQSGVvUe99iiPlAR+T6ltBDnajKOQ6PSsfUENju1VG333JclMLfz5Ktugm
	swjUzy+/NArJvABzrmFcnGx4KVT0fNJLLozTJERyU
X-Gm-Gg: ASbGncsiMZd9dlY7y0GJFZn9dM9ywxkpGF3NjgHH1KSvqH5K838GhXREsfPErvhw1jU
	brBIYc/CePnLyPJOKuOwFCYKw6AplRJvODGqAA0mVET5uKeTZ2bjzSyR9JAwKFUwFeRufANKF52
	cnhyJjrjG3Sd6vQh2aN28/tBBvSfaxQyb4bnOiBrZxJ2bkMcjhgI+r6hiqiTGDzaOTlnTq+s887
	dBUg/pWHLZcJQN4929wKU3kDi/Ywyx5TWFRvY0ee0/NOzMMUxoXiCLKCobreFB9Dp7E6ursoYUW
	1XJ988nvSsJ6A1u7w4dFIErLobc=
X-Google-Smtp-Source: AGHT+IF8J92R4M7+pLwot0D0+DgTjmbE3S+sUzVpC/q61q+B6raArwC6JCX3rpjp0dZrIL5XNz8EpvQLm8BmLoh84nA=
X-Received: by 2002:a05:7022:d93:b0:119:e569:f627 with SMTP id
 a92af1059eb24-11e032b99a8mr103172c88.32.1764961917558; Fri, 05 Dec 2025
 11:11:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org> <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
 <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org>
In-Reply-To: <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 11:11:21 -0800
X-Gm-Features: AWmQ_bm3YiJStmimt8YeHw9S3Ay4OOTCAl_PiUAMxoeOahq1USzcbH6CTsqmBZo
Message-ID: <CA+zupgyxQisYBnLj9_3DtcN3R1Ugfv+-p-wimFp-hnqkhrrgyA@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 5, 2025 at 10:52=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/12/2025 19:47, Roy Luo wrote:
> > On Fri, Dec 5, 2025 at 9:13=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 05/12/2025 04:54, Roy Luo wrote:
> >>> Document the device tree bindings for the USB PHY interfaces integrat=
ed
> >>> with the DWC3 controller on Google Tensor SoCs, starting with G5
> >>> generation (Laguna). The USB PHY on Tensor G5 includes two integrated
> >>> Synopsys PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort com=
bo
> >>> PHY IP.
> >>>
> >>> Due to a complete architectural overhaul in the Google Tensor G5, the
> >>> existing Samsung/Exynos USB PHY binding for older generations of Goog=
le
> >>> silicons such as gs101 are no longer compatible, necessitating this n=
ew
> >>> device tree binding.
> >>>
> >>> Signed-off-by: Roy Luo <royluo@google.com>
> >>
> >> Why intentionally dropping the tag? How are you handling this patchset=
?
> >> Rewrite every time from scratch?
> >
> > Hi Krzysztof,
> >
> > I dropped the tag because a new file is being modified in this version,
> > Although it's just MAINTAINER file but I thought you might also want
> > to take a look. I wasn't sure if modifying a new file qualifies as
> > "substantial" so I erred on the side of caution. I should've called it
> > out specifically in the change log. Sorry for the inconvenience.
>
> 1. so just squeeze that change into second patch and no need to ask for
> re-review

That's a fair point. I will be more mindful of the review overhead
going forward.

> 2. You did not read my complain fully, look:
>
> >
> > Regards,
> > Roy Luo
> >
> >>
> >> <form letter>
> >> This is a friendly reminder during the review process.
> >>
> >> It looks like you received a tag and forgot to add it.
> >>
> >> If you do not know the process, here is a short explanation:
> >> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versio=
ns
> >> of patchset, under or above your Signed-off-by tag, unless patch chang=
ed
> >> significantly (e.g. new properties added to the DT bindings). Tag is
> >> "received", when provided in a message replied to you on the mailing
> >> list. Tools like b4 can help here. However, there's no need to repost
> >> patches *only* to add the tags. The upstream maintainer will do that f=
or
> >> tags received on the version they apply.
> >>
> >> Please read:
> >> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/proces=
s/submitting-patches.rst#L577
> >>
> >> If a tag was not added on purpose, please state why and what changed.
>
> Where did you address this? You dropped the tag silently.

Why: a new file is being modified.
What changed: MAINTAINER
What's not changed:
Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml

Could you consider re-reviewing this patch?

Thanks,
Roy Luo

>
>
> Best regards,
> Krzysztof

