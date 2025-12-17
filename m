Return-Path: <devicetree+bounces-247620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DAECC9651
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 20:18:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82A183024275
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 19:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3DE2DA76F;
	Wed, 17 Dec 2025 19:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qDmwZyIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C42321257A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 19:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765999095; cv=none; b=QDGSCsqB2pzBNEJ3oaPbw4QDNuAiAXLQD55HM753tXHeKq7uBLxbLzIv7r93dFLWytCIm1chMBNyYrvXRtTCRCNxDY6Jf9HR9vcruqXBikmvlZ8R8brpN0hRkf1bfCiF3E9ufeM9oSHF+rgzmEH8Dt3evdfz3GvU0IUrF6NQvXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765999095; c=relaxed/simple;
	bh=sNs96snLpe2mrQ+PhaRwK1nZjmBa7OCxvHBdhl9wWQg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BOsh5mAJlSp0smuTOTeaR9a0ceDnR5aMTgf3r24jK89AfcUf7jh8DOMhtbCo6bsZNxkLwB3Akjwh5stArNHBhFkCQdFOGxStbif9bd06pSA4aNpjGTkZhRrQn46wNlAfvOthfACYLP0KDCb7Pn9iKj8Gau4M94ee5rcFQEHUF4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qDmwZyIk; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so4416396b3a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765999091; x=1766603891; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CK2xc4O1CWL3YyR5Jlk5dSHvCSo9+K5mz+4BdYDHf5E=;
        b=qDmwZyIkFAWJBsfp9bORBpVBSb2lVPoY6gDukgqBvR5JYi5CA1PHIkWR4AtukWBuWg
         j/ewA6Nc1ydzcxwUPGquVLXJmUjsFUb6uBnAE/ZCQRcEzuukCgEcxyplExxEQimHPM63
         QphRgWHtqNe0N4sBtosqFONdv/ET4O3RN93Aw1SWjEj06+tvk4V2ypCNlfjRe4Wv1+OH
         cG+K5dGJRgDyhnQVcBqEkBAnFzSaKU62b+WCiA3fQZOIIo5zvWViAt4NrqhxjerxlN8Y
         vxrx9dwoXFnAOzjskP3tuF72GBQZhxnGpkU+KJRNdFPRkD/SPAmp1spW3Hv2oxMVWpMY
         Zzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765999091; x=1766603891;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CK2xc4O1CWL3YyR5Jlk5dSHvCSo9+K5mz+4BdYDHf5E=;
        b=es30NYl+WpNlWcDQ2wjtrzLdbpE3O1ib44gLYfhmKu7ne9TAQ6R04lKdTMyURdPNNo
         lrlGlgUyV85ghqvPABoAt0TWQaN2U4jveJIUBB+vkHpJqsQHhZUt/2eizJbpm+KrqKT9
         XphACJ67uI75BFmT8YY240bfXH7qYvooEfHeJssP8f+W2fyvREmYM1YI3F1/LjReqlbN
         qcFpQCpJgIAWLw5GyFrbA9a3NMP/qNQ8rIc1OsrIg1aBDxS8tuzgujnaeN70vg3B0nLl
         6M42AB8MIhHR7zIz9bm5kLpAvz2NWBf9JPnG9u9OD8ZmRPCuxm6GispcFtEY657OHcvp
         qpBA==
X-Forwarded-Encrypted: i=1; AJvYcCXKKfdnnjUiyUweDwWALN+Cmo1p0G51Y9QBmkSO5AkdWib5kUBY2JfRaFrblwG5/LS4ET0lU2SMA898@vger.kernel.org
X-Gm-Message-State: AOJu0YwIIB215DMKGYuJNV1u7x5h6YEl8nHTzGuW6o0bGkrX8JmLJDcN
	boagXMkR4arXINAeRvMjIJAj7qm+Vg+X32Sd2X3kwTpik30eyf/2HwvquMMB1uaLdBo5+x80isc
	PBayBPqIjeGQ6rAzSRkC2xFOOW3pcU3QmQ4S/N2zE
X-Gm-Gg: AY/fxX68JDbebCn69a4me5aRuhVQwqKfezB9Hi24tA9NsDAJH0pFTT4ZbKjoC+4uxio
	DrsMPY2PXKl8/qNn8NMIW3HGo9eCjcauaARZjBHA3rBzj1dI9VmM5zp2E5ICLmDWVi/7YfwJhAt
	zVT2PHRsKkyFvItjey8mSoV/1WYcMsMaiahoO52ttczr6lSdROpg+vylT7DBKQowNGSEsNkWtBE
	lniFeZ+VlUhudjeqfEgEXAgYeuwuCDFhacnuz5dKQN5WWGJVLd+E1sQjpc5BLIonu6zvo+23ZtK
	rdfk4FAAROWwXLr9wbNeuH9vVQ==
X-Google-Smtp-Source: AGHT+IHU2vpetQSDEWGYm+Y16+Q+hMrDA20ASiwjGw22PJF4oOT0FZWKdk6jDg2jAFGB5cCqYCpdKNR8qXBpSDUqoaU=
X-Received: by 2002:a05:7022:7e09:b0:11b:a892:80a5 with SMTP id
 a92af1059eb24-11f349c5953mr12769514c88.13.1765999090603; Wed, 17 Dec 2025
 11:18:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-controller-v9-0-9f158b18f979@google.com>
 <20251205-controller-v9-2-9f158b18f979@google.com> <2025120553-suffrage-divisive-5890@gregkh>
 <CA+zupgzL7v5MZDpxKDQQCqAZaqTdHbiG9-xTr+8RnigMFZJ_7Q@mail.gmail.com> <2025121728-reliably-crabgrass-2601@gregkh>
In-Reply-To: <2025121728-reliably-crabgrass-2601@gregkh>
From: Roy Luo <royluo@google.com>
Date: Wed, 17 Dec 2025 11:17:34 -0800
X-Gm-Features: AQt7F2pRcbJChuQijr6nIYQ6eCnDyo-nRUDl_79j5YJBIy8PmN9l851-QlzkUmI
Message-ID: <CA+zupgxZCyNonfNPbGnFymGGOQuaWR1TsL+hujTbH4DEcfEt9Q@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 5:24=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Dec 04, 2025 at 11:14:39PM -0800, Roy Luo wrote:
> > On Thu, Dec 4, 2025 at 10:05=E2=80=AFPM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Fri, Dec 05, 2025 at 02:26:38AM +0000, Roy Luo wrote:
> > > > +config USB_DWC3_GOOGLE
> > > > +     tristate "Google Platform"
> > > > +     depends on ARCH_GOOGLE || COMPILE_TEST
> > >
> > > There is no ARCH_GOOGLE in the tree now, so how is this supposed to
> > > work?  Shouldn't tools that check for "invalid config options" trigge=
r
> > > on this?
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > Hi Greg,
> >
> > The menuconfig looks like the following and it doesn't complain:
> > | Symbol: ARCH_GOOGLE [=3DARCH_GOOGLE]
> > | Type  : unknown
> > |
> > | Symbol: PHY_GOOGLE_USB [=3Dy]
> > | Type  : tristate
> > | Defined at drivers/phy/Kconfig:104
> > |     Prompt: Google Tensor SoC USB PHY driver
> > |     Depends on: ARCH_GOOGLE || COMPILE_TEST [=3Dy]
> >
> > According to Kconfig documentation [1], the unknown symbol
> > would simply be evaluated as an "n", which is what we want.
> > "Convert the symbol into an expression. Boolean and tristate
> > symbols are simply converted into the respective expression
> > values. All other symbol types result in =E2=80=98n=E2=80=99."
> >
> > In a different Kconfig documentation, an environment variable
> > "KCONFIG_WARN_UNKNOWN_SYMBOLS" is there to detect
> > undefined symbols in the "config input", but I can't find one that
> > catches undefined symbols in the Kconfig tree itself.
> >
> > That is, the tool seems to allow this.
> > However, if this turns out to be a major problem. I think we
> > can either:
> > - Remove ARCH_GOOGLE and leave COMPILE_TEST as
> >   the only dependency. Then add ARCH_GOOGLE back
> >   later once it's in the tree.
>
> Please do this.  I do not want to take patches that purposfully add
> dependencies on config options that might, or might not, appear in the
> future.  Please just remove all of the dependancies for now, as they are
> not needed, right?
>
> thanks,
>
> greg k-h

Greg,

Yes, we can remove ARCH_GOOGLE for now.
To clarify, we're not removing all of the dependencies, we still want
to keep COMPILE_TEST for build tests, right?
Please let me know if you think otherwise.

Thanks,
Roy

