Return-Path: <devicetree+bounces-249913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A2CE0330
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 00:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E3A33018189
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 23:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7655326F2BD;
	Sat, 27 Dec 2025 23:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NIT4p4/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8978E26E175
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766879646; cv=none; b=PbN/JceTMn9ALReTYC/EuomlC0a2yZjtUopyUiEKYMpjH1NClMjUmGjZyeOU6Vlj+sDeU8uJPEyajzz3srZLUVyiZIXaqokWQFrhgrbyTDPLp7wNqjgVW50ZsnJHHFj4KxGbKd6vW5MclOy2ycR8SIizyThndTwWZLgd0L/UVss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766879646; c=relaxed/simple;
	bh=0vAJYJFTVTvQKublqQlzRcmbWps7nPfytE/7e/IWl6M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z+jdI3hGNLQxhTcOhqYqrSCUoKSDcPsJZ7qkeWvM+qNn4Mt0hzec/cfQV3nhSmZ2ROWmtaNOYVpB5e9SjMYaXCcF42+uubQNw1X5Xmzfw4/C5qiyx8Z8Z7BPC+Pt9DmSnjwZkdzm1dDSMJdnEckNxkdYNt5p9spPMPryo47Ad9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NIT4p4/g; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-78fd0cd23faso50029707b3.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 15:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766879643; x=1767484443; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0vAJYJFTVTvQKublqQlzRcmbWps7nPfytE/7e/IWl6M=;
        b=NIT4p4/gN1A5tGKXPF8yYygovNP7H4NVPg+0lk44yT3JGX9hTF+skNu2tt4v9UMeXW
         c9RKzgXnPH26w9PTMujaLi6aGu66WUnxA5jhMOj6M4tOr5Tu4ixOIUF4E3KoR8u1PFI2
         Ck307CgBFPcHof8jYulljBMK4tk0i9/dfMcu+O3OiMtyKO7m8xYr59eh7f2PJhSdHOWY
         S5eYAQdBZcANob+1P1lp7Bk8wl8kPTh6/22NIedE9oAQLNtt9j6Omz7vs3Vv4m1ko/8f
         XKYXaBK/xU67oHfC4EgcWy2Uqopvs0uHFtftSdn8sRf9QUpJLKpv/ebHFJhi3iix98Yk
         +hOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766879643; x=1767484443;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0vAJYJFTVTvQKublqQlzRcmbWps7nPfytE/7e/IWl6M=;
        b=dgLJDdEv0iii05jJeu6CcWc9C2DiASBNAJdVV2wm0jmDStCkLYfOlwAQUATybKr/Iy
         G1TAbwiVD5MAPejXuTf8yLN15dyYPSZIGd6uDOs6lAJJQJwjabOxKGNAOVlj1pnCYFJl
         gHoZdqbTa+gCqHJKg9eYMNo75Yj20ruqM6zoAatoqHXkTw+cP+HAU274TEiY2f5CcyR4
         TzKOtF5fHIweyVvcdVMpzXIcux4DkSeboiCwsHzCtP3my+bJZc+GLJttbQaav+HKfQez
         bt7QmBb8LIcpZI+fUNeOI5TahEQSe1ptZh7vpG9p1+tlOzrSYeD+IA3eb2Um1YLQk6oJ
         qcTw==
X-Forwarded-Encrypted: i=1; AJvYcCU3LdLc5cCwikJDNmEfBTn4JbCtVyIMBK6ndudGWsFUPJ+TmiFYB6OUec6pxzkI2ebGwZ3hrX17L32z@vger.kernel.org
X-Gm-Message-State: AOJu0YykqVgtScMNCHMYbj0FSKFz28Kn+o4rIhulbpNRU5tUzJaTz9Ys
	e54tIW4VoZg+vPtiZK6fj0cY6Uwmbv1wvkV3pwCB3nhcNLhFTe7qF1Vi63l0p8PovdmTJJUP/gH
	1Fxqd9wFyM9HIsqlrUy/qeKZl9BcN7HFyHnB+HEcuvg==
X-Gm-Gg: AY/fxX7gdaWhEPEfDhXVW/PnGHCAGcsX2iRXX3vHynlDoXlVdZ94bk2wZmdNgpncBJK
	MwUPMXAmVykmgiwTMetIDF9XZc2gCTsALKojv/gfcL38s3o3BcPOKUhpmEWEXdiGeQs8ALlvqj7
	qwxmFs6RVS8mjyhBnsYcvKkVhMGS1hP1ap09WFX8CbGYjtJXz625tj/COnOWQRA0rfOrrNQ9cKI
	q1f7T0Pg2nWWFtbXDbXpdUHw6ZU3CY0Htf8F0dxdP2l4A+vYeHQmgqaV13fCc6nnGcYxNFBbv55
	EjC5sC5cWEpCyM8eqP2/BpvoHX+t4SYqZeLfMky41yq29Ydy4wFKD4E=
X-Google-Smtp-Source: AGHT+IEhv1iwMFNgzL2n1D3qxYmYFnznNjZn/Bh2THNz0qVQWcHa3YNmsM1U54RXexGunoARNUdRYz2jyJk3Os5ODmY=
X-Received: by 2002:a05:690c:610b:b0:78a:6e23:2542 with SMTP id
 00721157ae682-78fb400dcfdmr218117857b3.35.1766879643443; Sat, 27 Dec 2025
 15:54:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com> <604e5781-5c59-422f-9c5a-ee4be6f8b329@kernel.org>
In-Reply-To: <604e5781-5c59-422f-9c5a-ee4be6f8b329@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 28 Dec 2025 07:53:52 +0800
X-Gm-Features: AQt7F2qc20ZUjd9UnVS-1ZbeNfksHFtdnbsOaXZ8RFpk1tbDmXxCOs-6B3ZEmyE
Message-ID: <CAH1PCMag00z2Fp8zjMUPS7AdU6Lgk0UsS+mku93NtNejqjyBMg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] i2c: spacemit: add reset support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Encrow Thorne <jyc0019@gmail.com>, Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Troy Mitchell <troymitchell988@gmail.com>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 19, 2025 at 4:03=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/12/2025 08:42, Encrow Thorne wrote:
> > Add reset support for the K1 I2C driver. A reset ensures that the
> > controller starts in a clean and known state.
> >
> > Reset ensures that the I2C hardware is in a clean state. We cannot assu=
me
> > that no program used I2C before the kernel booted.
> >
> > Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
> > ---
> > Changes in v2:
> > - Replace reset property in dt-bindings.
>
> Replace with what? I don't see anything else there - you still have
> reset property.

It looks like a phrasing issue. By 'replace,' I guess, Encrow meant that
the resets property was moved (reordered, put into a different 'place')
within the file, not that it was swapped for a different property.

Encow,

Would you please correct your changelog description
in the next version with something like
'Reorder the placement of the resets property in the dt-binding file.'

BR,
Guodong

>
>
> Best regards,
> Krzysztof

