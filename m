Return-Path: <devicetree+bounces-182523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D92ACCA4C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 17:37:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC1B13A2625
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E6923C8C9;
	Tue,  3 Jun 2025 15:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YtVJbX01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A023C4E6
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 15:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748965032; cv=none; b=WTHDrzMLaWCispYHrliaopHRiBcDGa7HHEAy0P97Pl1GtMfCrBPxuADBpu8zE6eqWldmP0ZNWwkcZ7S0HPiTBxmCOgwFwzN5ESJP/5DgX5M1Sca6MrgNbGXgxmsqrhe3r9WMOzGQsbLkjdOM1ABqGTuGjzYORtXyEMNrq6gnqB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748965032; c=relaxed/simple;
	bh=N+pMCHYIBKQlPeyxJ/f+uTZ5/U92w6mRcGd7hTstQlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fz5tn23dI+K+AuL7zJzqG2zBPLfwu7p+cEsboa6Md4muKkLvqgP+gFf2YDJARAgap72A77wBKuUZKL8/LQejo9DNsEd8U9IUwV3pk8M3BIPBr4g/KfVsJXDlSNOGKj00wGsDHh+/SVRvhXWMGNFIdfR9tEuBILwtEA9ETEY4RYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YtVJbX01; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e7dc83224d5so5666002276.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 08:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748965030; x=1749569830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+pMCHYIBKQlPeyxJ/f+uTZ5/U92w6mRcGd7hTstQlk=;
        b=YtVJbX01KgM0uu9Btn7EipBFatiROVjnd9vAKG3DMCXw+AgoFmEBEI08+6KoPXMU9q
         5GI9J1n3Rl3XVbGM+7FQJACA2dmuledvEkw40jWnm/sgVwr8pkxODyA8wK7u0qrieUTV
         Vj2nNW2212S3ugXObFwX6TVMlmZgdRHDA9smAWuemdUaIktZ+tpZ9Mm650qzOziVY6pp
         evHWAkyEWYhAHbUp3SbVYISamVoNbRJuux0+zs8Oe2HmOutw5au4wsow42rkknf19DNe
         dqXnfpgaGF5K3MNd0qIfii5N2lqhkTKN6+dvLCFjR1/hmd5OvQf6ibx7QTJXFfHCclWX
         vreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748965030; x=1749569830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+pMCHYIBKQlPeyxJ/f+uTZ5/U92w6mRcGd7hTstQlk=;
        b=G0wavrRxjL567+VscMRHgpNV2CEdXJ9c3qNOp5uJyUTAHz6yfW/Fwq+nYpbqVnRNnP
         JPkRDCwMZbCYJVX+RVfnUXxlhCcs85DSw3Ezwa7owUpYDcmO8CRG4nAArYj5CcLFb9ot
         sFYDV+r+AHDZ2qI+xrF7uQdmgaTgrl4tPtK911UtstnCUGC24+eoo54Ia0G0/KKIuDTZ
         IQeeecAQox3/S4OPVXPOqc8aLyNhnnmTXb9Q+5Q6SPar9Ar9RUaesR9kJ+io4n9wmT7g
         IxM5c4nt7YGdsKGw9P9RM2pQikAoS1ieMw3at2Sxta3jlbp9hZuZCrG0DKBA4pdVP3Hn
         RIPg==
X-Forwarded-Encrypted: i=1; AJvYcCVbO0wqTw4HgUO+mbHlBSl+Bt6sw36xdXy4UuUR55JP/WOwNWUXywwM1jzHkFpoKU9zwBGwtjGHAnKk@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk+8mpmVpdSa08pNB0Hzd0tLsBRTmvpYIh6PmT1N5erdGtCDcs
	bQnsdvBkKn+tWQ1iaMOHzvVOQMs8jPB4qw+iL2rgCsOR96tf/gsDbDr9F0OKVm392kS2h8M4bHH
	ITDFQUsV5cLOkVPGuATf9UNcjk2dwUQGn1lbzL2SHtQ==
X-Gm-Gg: ASbGnctnHj880LJx07avZgQR82Gmp6wviJ6j9tIBjaib9Ziy3NHA4gFzgzE7OVMCdPv
	yPShZhe14FddKI32D1i/+kwVYOqBqLiWUa+qChHWjyn09zeJapFLcn5ZRtVydahwrQEhtgXwAMs
	spHhu0vtxeeKC35d/oQ2zUdAwjIUrh17LiEoqLyu1B/VIL
X-Google-Smtp-Source: AGHT+IHpl+65a6HRSkGvLRf1r7jeLyLNnGo4sF7oK21xHyQD9U7Bn8mpXIZIDnMPRBSl5Rocwg7he9JmFD+OdOd/90s=
X-Received: by 2002:a05:690c:67c4:b0:70e:3e3d:cfe5 with SMTP id
 00721157ae682-710c9c93987mr35904557b3.4.1748965030033; Tue, 03 Jun 2025
 08:37:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250513-gicv5-host-v4-0-b36e9b15a6c3@kernel.org>
 <20250513-gicv5-host-v4-1-b36e9b15a6c3@kernel.org> <aDhWlytLCxONZdF9@lpieralisi>
 <CAFEAcA_3YLMSy+OsSsRayaRciQ1+jjh-dGzEjrh2Wa8BqdmqrA@mail.gmail.com>
 <aD6ouVAXy5qcZtM/@lpieralisi> <CAL_JsqJ5N2ZUBeAes=wexq=EstRSZ5=heF1_6crAw76yZ9uXog@mail.gmail.com>
In-Reply-To: <CAL_JsqJ5N2ZUBeAes=wexq=EstRSZ5=heF1_6crAw76yZ9uXog@mail.gmail.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Tue, 3 Jun 2025 16:36:58 +0100
X-Gm-Features: AX0GCFvwPjD5ocl7QOfNaTZVaVH9zG-qYJmIWZHqE7gqRYhb1E9PXLq0OwGv4Ko
Message-ID: <CAFEAcA-JrS0BiT66iin-pRVFadrY-pnJZ8TkDNxcjErknSCnUA@mail.gmail.com>
Subject: Re: [PATCH v4 01/26] dt-bindings: interrupt-controller: Add Arm GICv5
To: Rob Herring <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, andre.przywara@arm.com, 
	Arnd Bergmann <arnd@arndb.de>, Sascha Bischoff <sascha.bischoff@arm.com>, 
	Timothy Hayes <timothy.hayes@arm.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jiri Slaby <jirislaby@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Jun 2025 at 16:15, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jun 3, 2025 at 2:48=E2=80=AFAM Lorenzo Pieralisi <lpieralisi@kern=
el.org> wrote:
> >
> > On Thu, May 29, 2025 at 02:17:26PM +0100, Peter Maydell wrote:
> > > secure.txt says:
> > > # The general principle of the naming scheme for Secure world binding=
s
> > > # is that any property that needs a different value in the Secure wor=
ld
> > > # can be supported by prefixing the property name with "secure-". So =
for
> > > # instance "secure-foo" would override "foo".
>
> Today I would say a 'secure-' prefix is a mistake. To my knowledge,
> it's never been used anyways. But I don't have much visibility into
> what secure world firmware is doing.

QEMU uses it for communicating with the secure firmware if
you run secure firmware on the virt board. It's done that
since we introduced that binding. Indeed that use case is *why*
the binding is there. It works fine for the intended purpose,
which is "most devices are visible in both S and NS, but a few
things are S only (UART, a bit of RAM, secure-only flash").

-- PMM

