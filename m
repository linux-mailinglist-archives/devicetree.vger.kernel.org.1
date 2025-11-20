Return-Path: <devicetree+bounces-240862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 104BDC7696E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7619A35B9C7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B972E1F05;
	Thu, 20 Nov 2025 23:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cX6PRUJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C07B1FA15E
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680799; cv=none; b=tty4bbVyWfG0JUhCuGV++OUH61dK31gHJJKBoGGiXPrPdikAyuiJnMRFv+m+6AwAf0laUzcr5mNAm9wVVPrMbidaTw5CVrZCdQAV9QePqAMs+Q0QtMAXymq90btBTchOWPweH3NVbNd4vn2tI8k8bI2XK++hiUS/7unOVqjtcFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680799; c=relaxed/simple;
	bh=paW2rB+N/0S41beg0PnQCaYZ9pvCNYHWjXX/8qJOlxo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ukyR+ygj2OMoOWlolWeaxexEhqgvmsfHUeqa5Hseac0dMJ378Dig4ciNZHMIp2q4CFSLMgPdd4a/MAfA4g1l0YaOXi7T4V7oYX+ofW2vV6I9zrQj9ts4/u2BtyCg0FqBJAl3gbCdsDzJ5fDwoHp3r6cUPJJgegcEXJEVoncpyNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cX6PRUJ5; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-787eb2d8663so23251977b3.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763680797; x=1764285597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=paW2rB+N/0S41beg0PnQCaYZ9pvCNYHWjXX/8qJOlxo=;
        b=cX6PRUJ5kolANHkSqtamhq4DOHHhEGS6Yu1TAeL2Fusfdr0DJlru1od+7ZINMQ2Aad
         Z0Z+TZ/D464gfGjHFuQmOv239/PPlwkTm7IpctCtEIn1xosqo++1V9XeXp6tT5GRc39m
         OdH+IpdUt/kHQ8EK1FdoVzPLdkmEdhhr3nMTIHuwVfbJgIYOJncX1vllp0Rivt10wwIP
         V+82Loy/tnoBO2WID/z4JeIwEg96GUKBY4FTix4Fn4vOHaWH3XGu2b4foEH3owMxLFlH
         h+r2zLgHWs/lhRLwKqZvJ4LzFBv3nGpD50bumQgR9GDXo9qhpFMNbbh7fA4ai2W3UkpU
         9BBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763680797; x=1764285597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=paW2rB+N/0S41beg0PnQCaYZ9pvCNYHWjXX/8qJOlxo=;
        b=OiHEGdh+S2OpSdsAT8lPacEc/fhWR1bfWYDhERWdpUozwYt8angKv8uV9r+R9gOyus
         MBSfW2y12d08v7vrapTue2LeLPbJDS9cJdGifeETKboDweIVSejFU9lkhLRQzbr3Ov32
         0x8DKxXp/R0KDypKD5AfK5kYaK5cPv4dOz0z7GmqfdT0Imde0VSAVSqg4clfe3UyjbGY
         rFacDffICdzCn/TmNaJqHa6jxBti45nnQHgc5KFbQyVg67g57vsJPk188iYshIunqHFx
         S4YZlYPvLP3UMWcUXzQmr89y7Ie8RKuylR9mIpJczcWPhyJRAIXuc9NN30lX5/dnUeCo
         1HtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYTzGRo3v2yvEUONaYTJ9N8+uQMJnmtBav0Rwf7oY/LDvwHekFySEh1w+adFiFR9RRq1lePzNCgRmi@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj/By+GVn8utw2KSvxlEqu31+o8hhJjLPTZoNUKQvaqnnltX0o
	JMpoiIu5Ik4PwHouGsgj1hVroZMDdhGmE0R/V6DSHiI1TvpLu6pRAKjy8o1uBnomI4lbFJa0PkD
	wMJtxTe2JIGMD0F0yWV1N6JUvQWex10eWLEH3x3N6HL/XO3lNJytt3xo=
X-Gm-Gg: ASbGncvwmZpzO5NakEoe1vr3mitDa0/lCXQhSyirMUXxaPHKapXQNrI7IU2XpfsS6Vn
	/d7c1jK8t3HTALjgVy6wkXGPk7VMN/51iSkAqCRbHGIBWmmDND4eK8MMYQEI8P4+bv/suO25zwa
	HtgQ/EePubvv0McxLvNydZL5m+QOVyEOVwoGdJ1w5AJb+ZeayeoDMcnHQtzV8HFdHKobA2QNT9U
	BR762dvL/YGHbaEKaNg8RwjSLROMOi6psEiZIpogi2EZHp4LfXva5gPr9Y7XBbfWuapj10=
X-Google-Smtp-Source: AGHT+IHCVrGJekuMYQD+foCBDGiyyGeo3byZNUFlppuWWBOZfFuUcrUBzjAa6sG8725ai0frWERcCuNbokRB5yzJtiU=
X-Received: by 2002:a05:690c:f83:b0:788:1521:4991 with SMTP id
 00721157ae682-78a7bb59eb4mr34707827b3.22.1763680797008; Thu, 20 Nov 2025
 15:19:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117091427.3624-1-antoniu.miclaus@analog.com>
 <20251117091427.3624-2-antoniu.miclaus@analog.com> <20251119-violation-enforcer-1362d3eecb69@spud>
 <CACRpkdayt+upQxxT-GdQOENWjdF2zz3DLEjcvD7sdg9-oaLwoA@mail.gmail.com> <20251120-evacuee-opulently-8e98840c4ba2@spud>
In-Reply-To: <20251120-evacuee-opulently-8e98840c4ba2@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Nov 2025 00:19:25 +0100
X-Gm-Features: AWmQ_bm3L-eNDzf3GitUsY8GpZUIM7tmeq8XIvce7Opl9ftYB0PquTliqyKLts4
Message-ID: <CACRpkdZHAFhvHBup+Kc87OmgviRkjLf0dN1EVLz0YoD3NwzSUA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: switch: adg1712: add adg1712 support
To: Conor Dooley <conor@kernel.org>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 1:31=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:

> > Maybe we should make them named GPIOs after all, as the switch
> > has exactly 4 possible GPIOs. It was my request to have an
> > array I think, and now I feel a bit stupid about that :(
>
> It might cause havoc dt-schema wise, but is having a switch-gpio-names
> a silly suggestion? Seems more usable than having 16 or 32 individual
> -gpios properties on a larger device.

I think in DT the "name" if a GPIO is kind of the string before
-gpios so "foo" is the name in foo-gpios.

We already have gpio-line-names to set up names for GPIO
lines but it has never been used like this (to find a GPIO for
a certain line name) before.

> > It should probably be initial-switch-states.
> >
> > I vote for a generic binding as it is a new "subsystem" in DT,
> > and this can be exepected for any new switch.
>
> Cool, prefix-less is fine in the case - although Rob's usual requirement
> is two users for some common thing to make sure that it is actually
> suitable for being common.

It's a reasonable stance, but if we zoom out and look at the
usecase, who wants to leave all of the switches in their
house in "undefined" state after installing them?

Everyone is going to want an initial state. Lamps switched
off and heating switched on or something like this.

Yours,
Linus Walleij

