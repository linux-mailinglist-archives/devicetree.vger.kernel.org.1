Return-Path: <devicetree+bounces-238273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24378C5962C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 041353AB11E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B982307AE4;
	Thu, 13 Nov 2025 18:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n+CyXXGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5029C21773D
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 18:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763057114; cv=none; b=eyhK4hBuazbU9S/XwRL931WCyyENQ9PQwqfRa0haeHfKGYG/mToDH858oN/rT6W+fENOYkacWeK3BjcvaLPk44IvhBxQkH1cfA+3IUf9ASDmkSl7DqHhZ7G+KYNXYTAnOb8fZWp3k6389/rG7QvMmlSTX1KfvQSs/RTm/poQWUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763057114; c=relaxed/simple;
	bh=pf1IXO1BZpdM2zhduHtSifJzEC4zT6MOU9JeXX7SMOQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeA6p9VZZs7RmEF3uavn6ocCYvs7QcfODQmwTWMgOLNo4k2XjJs+mTdbdaEIa5p+NHI+UfaI9+fLAaK+rty9HGNoKYqoZtqWoDGHDpRkea/8kC4XykyPBO5i/Spv+KL1cKMDlKtPtcmqou2O26lJCEhoD5dsvQq09nYWW+eardg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=n+CyXXGz; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b72bf7e703fso184779666b.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763057107; x=1763661907; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6uac0xj8a+6k+KJ/TLozw+bMuDmR0K+Bzcv/b4RoLw=;
        b=n+CyXXGz2+crI6W66Jy4PeoHEHSmgzej62HK/MpmM2FKsd0TQ9f4YWHcbRjF7i68UI
         kQE81CUhukrn1p9N0cU87UiV0PG9Pk+gQg8JcnMxAaiujmu9y+Ra3WNPu+kk8tc6/LMb
         ntstR43BrhhxSrqoStPnfCSJQ0ToUjEcQDYsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763057107; x=1763661907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X6uac0xj8a+6k+KJ/TLozw+bMuDmR0K+Bzcv/b4RoLw=;
        b=isxayj4xOLDwuqj7xdSbIhxTwWkmnn8sn5o5dSyLVVTMHdx7/lJbNXB0EaSppbJVDE
         OLIRPAbmATtuPxl7RdXq5+4wmOz4CK66y9DoTTK/Y+L7jp1Qf0608XvmHac36959B+Lg
         eT4Tr6s0mWE3daC80ep6XEAg+hLbEOURoroc2sZGlB8TOUGaYSDx39GGyaz4CFwBnPyW
         UwITviMEQG6LNH1b+Yw9YbRb9WGKchtakMVFq8qKZG61kDb1q1TXvVIFyo2PyBTeRpNz
         H/5BXsdC1aL3NZcmkZ5tryY1ulsLnngKmugWUbL5nOiBciwBjWag5GtK0sNiD31ueIk6
         5oSA==
X-Forwarded-Encrypted: i=1; AJvYcCW56sZ7OfZOE1S24vIoZuDjH6f3ipdovHwBYYHwU/rcDI3igxA6EsKOkwGL9uUNeze+AeH2UHAF7Rm0@vger.kernel.org
X-Gm-Message-State: AOJu0YzlJrVJr3R0XxF8UkmVFoh96aD4Eoz3Mpjiq910uxhGvQQRcVFU
	2NX9dsaQbvjvNRhWgb3dgPStL4d7NKXe3X1zaatoXFiWlK1xOXp2ldDR4wTZLTROxyHHO6NypVl
	Cfn1VQ0Ve
X-Gm-Gg: ASbGnctbg3B9pnrN3g5IplBMO5oCjcotrPgfVlRm+nhhhXqWCDHoqpg8s2Sw76F7WPP
	jGnhycA3RpOzAwkqbK4Z0fP7n3X0GtnDi+nU5i2jfDtuoc39vaqAIs5VG72xIz5zRUKJK9ccWHs
	eGGI2ImGVTrRlBF1mtFa0d/BfzTtMYvrp09DkVweir0WtHp4evtsVuwDACAUQSsjFCB8rNkt2Jt
	ZOr0QNE3be0c6z8d2l/mA6EYjBUNhrjYd7bKBtywClmnw5iUFe5sI37oL7ZjVxDwjJ4j61aKCed
	kBxPZQMdQzsdhFygbUPZQGy58Zvwul5ebT1hrm2LVRup2qqlO9NDr0cM7d0ElClns7fRFHH2mrE
	1gtHFbf+hiSSfq3lB2OWxTYXvoAVYDrB8IIPKOvozCoA/R1u4cT2hBZVgRLRiRrD7QyKFTuqHQG
	1B/lfh3tRAmmHZPazwB9db2YGPY6t+7uzb1QA7eVATrRMmiaj70g==
X-Google-Smtp-Source: AGHT+IFYbAb8x+Sw8PjvLnM/xMxYuvtaf1W6kyQv2JYB/VSGYgt3XnCk03wF73VuUvDh/ZgmKUKIkQ==
X-Received: by 2002:a17:907:844:b0:b73:572f:dfd with SMTP id a640c23a62f3a-b7367bdb02cmr15272266b.62.1763057107399;
        Thu, 13 Nov 2025 10:05:07 -0800 (PST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734feddbf2sm206553166b.72.2025.11.13.10.05.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 10:05:06 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso635626f8f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:05:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWifZzoPNnSeFV2+Aetl2l19FqLx4zBaVE0OFxRDvBnBaJfYBw6HaBT8ofPWRhRPutFk1+TGteNcZQs@vger.kernel.org
X-Received: by 2002:a05:6000:1863:b0:42b:3023:66a9 with SMTP id
 ffacd0b85a97d-42b59367802mr289626f8f.22.1763057105007; Thu, 13 Nov 2025
 10:05:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.1.I72a0b72562b85d02fee424fed939fea9049ddda9@changeid>
 <05c833f0-15bc-4a86-9ac4-daf835fe4393@kernel.org> <CAD=FV=XXWK9pmZQvNk6gjkqe6kgLXaVENgz0pBii6Gai7BdL-A@mail.gmail.com>
 <00ea821c-5252-42cb-8f6f-da01453947bd@kernel.org> <CAD=FV=VSxeKgGcsRb9qiXq7nsbOWZjPvzmGEOhFA+pmABWdknQ@mail.gmail.com>
 <6490f20a-2492-4ee0-8f34-d529e0df0bad@kernel.org> <CAD=FV=Us7SU_OifVkS4mdfVhc=xGYSBiBpBk9aA1Ki0y+iYBpQ@mail.gmail.com>
 <abb77afe-c285-46ba-88ac-08574bd67712@kernel.org>
In-Reply-To: <abb77afe-c285-46ba-88ac-08574bd67712@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Nov 2025 10:04:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VcAbgv41tjgWQN4i8Wqk6T6uvdpQ261Q_hcKM4AMpGEw@mail.gmail.com>
X-Gm-Features: AWmQ_bm88XdKzAi5IStwbrVdXDDrbTXMC9ViB_9-mq5L9vr4mmyrArKaiYvTgn4
Message-ID: <CAD=FV=VcAbgv41tjgWQN4i8Wqk6T6uvdpQ261Q_hcKM4AMpGEw@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: google: Add bindings for frankel/blazer/mustang
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


On Thu, Nov 13, 2025 at 9:43=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> >>> Yes, the complexity of just "hooking up" the components on an SoC is
> >>> an order of magnitude harder than a Raspberry Pi, but it's still just
> >>> hooking it up to external components. In both cases, we are modeling
> >>> the core "brains" (the part that contains the processor) as the DTB
> >>> and everything else just "hooks up" to interfaces.
> >>
> >> You mix the topics, so I don't follow. I speak here about bindings - y=
ou
> >> cannot have the that compatible alone, because it is incomplete, just
> >> like compatible for "transistor" is not correct in that context. You
> >> speak what could or could be DTB, different topic.
> >
> > A "SoC" is "complete". It has a processor that can run instructions.
>
> Then show me executing any piece of software, which is the consumer of
> the bindings, and runs on the SoC without the rest of the hardware system=
.

Show me something that runs on a Raspberry Pi (the models that don't
have eMMC) that runs without hooking up power and plugging in an SD
card. :-P


> > In any case, maybe we can approach this a different way that I alluded
> > to in one of my other posts. Can we just call the SoC thing something
> > different and make everyone happy?
> >
> > 1. Rename the SoC file to lga-b0.dtf (device tree fragment) and
> > _REMOVE_ the top-level compatible. Problem solved--we're not adding a
> > top-level compatible.
> >
> > 2. Add a special node at the top level of the "dtf" file describing it
> > (so someone could figure it's useful for). Like:
> >
> > fragment-info {
> >   compatible =3D "google,soc-id";
> >   google,product-id =3D <0x5>;
> >   google,major-rev =3D <0x1>;
> >   google,minor-rev =3D <0x0>;
> >   google,package-mode =3D <0x0>;
> > };
> >
> > 3. We can compile the "dtf" file using existing tools into a "dtfb".
> > This looks just like a "dtb" but has no top-level compatible but
> > instead has "fragment-info".
> >
> > Now we're not violating any spec because we're not adding any
> > top-level compatible.
>
> Didn't you just describe an overlay or DTSI file?

Sure, you can look at it that way. ...and since you're happy with
"dtsi" files I assume you're happy with my "device tree fragment"
files, right?

The difference here is:

* A "dtf" file must be able to compile (with dtc) on its own. Contrast
with a "dtsi" file could rely on labels that are provided by the file
including it.

* A "dtf" file needs to have "/dts-v1/;" at the top, unlike a "dtsi" file.

* Kernel (or other OS) build rules will be happy compiling a "dtf"
file. This is in contrast with a "dtsi" file.

* A "dtf" file is _intended_ to be compiled and hooked up to an
overlay. This means it will always be compiled with "-@".

* We can document the requirement that a "dtf" file needs to live
together with the overlays that it will be combined with to make
complete device trees. This means that there is no need to set a new
ABI boundary here and we can be flexible with what labels are exported
by the "dtf" file.


If that all sounds reasonable, I'll get working on it right away.

-Doug

