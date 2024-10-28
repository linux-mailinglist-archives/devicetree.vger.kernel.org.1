Return-Path: <devicetree+bounces-116445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BC29B2EAE
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33A84283FA9
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1551DDA3C;
	Mon, 28 Oct 2024 11:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OtI0qP7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F77F1DD9A8
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730114136; cv=none; b=Oould032n0OrqSEdLR/juzFN8wSxmuujN9ppmRHY2Pr8plqVdNJlu2CkIQczPEhbrYbNYoPht0dYcZZ7xw448kzao+nEDNQdzQ73MLp9NuhtCsKMMnYbvnUHXvW2rkYdccguHI+PIn1b/nt3P1KSh8VOXYOZQMiLJ5rQwxruO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730114136; c=relaxed/simple;
	bh=ynL2y9WuMgj3dveWKiLhJfkJgELagAbwDV6WYmDHEoI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mz2rKRRHrF1IEOdUAE/PysqyMvZtBJmKLc4fagrFJkVShqmt1DiceytRysUJv0g7RWkrSOlv3+nsUT3vKs0rQwBuZ1zPkgMIYKY4GyWmi4pGV6wzZ3qyptqPZpjk1bW5S7rLDtCiYIUH92ngGwcSVnRvZdsrvM8Kvqh2c2Pr1JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OtI0qP7S; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-50fcc0cdcefso1144724e0c.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730114133; x=1730718933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGypUE8EH0PE7RgIhsdX64LwM1rfHWiWWyyBVGZ2vjM=;
        b=OtI0qP7SSjHwh5LAuOqR28tFwITgpv013tefa1IK9N++UZCvWzr9MICMB78iI0zEKy
         S/KQatVKNINaUZ6fhJE+v+v1WePlZ0fCOM+qxYExCbPhukqTqogTpQZs8AsByCyA05AS
         ewjls/aQishMF9pohNiO1imFR6S5ET2Fr+/6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730114133; x=1730718933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QGypUE8EH0PE7RgIhsdX64LwM1rfHWiWWyyBVGZ2vjM=;
        b=ew9a0ZSYEPzk+zXQPD8Orf/upQN9QUDJ62LcKRwFJd7aWKEB1iwuFIeiQg/W9Y/Pcs
         O+ShBBf4Uy4Lc3ESYX0kx7I6kaOzQzS9qbrFPn7NjSFEmBzVLKLLSMFkA/Cha9NLTyJ6
         51wTPQIXAbuY+PwMqj1D7iv3wVD2v4+cULAutNBwTm5dJrSxZfIExRNuLi8nC3JPtS+V
         AHjpNq/67CgUCGn94ry4do6MgPHNcGFXvr6cMS7NmP6BmMWAMuOZXfULaNgLsPQ0u+9s
         wOCtd/r1oq8JntWifGztjsOo7fYQI5K1ZmDU71tRuN31w1IxgxUISa8p78PghvgFUDZT
         lKiw==
X-Forwarded-Encrypted: i=1; AJvYcCV7rRg31fowhs6Xrrv7tZuB1SF1exT1+4FilTrNjkvTvAr9TnWznBG6VIhXZz6HuxjfGhdd5t93aSbj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmf4Fdg/YT9NUJPYGDf0jHs8128a7UAyGq+De5YQ/SeW66ac34
	m+jtjwIxrIB84MMz4ciM1Qo5U6xOHquEx84NC9A1OnVOTMzKA3lkwBc81s/eSxIvqRhfMegI2ls
	=
X-Google-Smtp-Source: AGHT+IFbRyMKWU1l/2Fc5bFBGnkhqSLNUoT11JgBvfYTxlo6n6ESRy5R2QF8yigozbOef7RXNF93Mg==
X-Received: by 2002:a05:6122:2207:b0:50c:5683:ad56 with SMTP id 71dfb90a1353d-5101501204bmr4352117e0c.3.1730114133261;
        Mon, 28 Oct 2024 04:15:33 -0700 (PDT)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51004777a32sm826369e0c.35.2024.10.28.04.15.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 04:15:31 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5101bd018ceso438777e0c.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:15:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbcx+jKEXKGUkp42HruY0wXlnIdXAW+RQErLyizekeXygKIIAWZb7td87Ic3vIcYmDbLy4CucahpE9@vger.kernel.org
X-Received: by 2002:a05:6122:2207:b0:50c:5683:ad56 with SMTP id
 71dfb90a1353d-5101501204bmr4351974e0c.3.1730114130593; Mon, 28 Oct 2024
 04:15:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025104548.1220076-1-fshao@chromium.org> <20241025104548.1220076-5-fshao@chromium.org>
 <r2qtuopc6d2vygxghgydole5ixxr4z5weougk7ldadyma4zi56@sp34zufvzdaq>
In-Reply-To: <r2qtuopc6d2vygxghgydole5ixxr4z5weougk7ldadyma4zi56@sp34zufvzdaq>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 28 Oct 2024 19:14:54 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng0n25qrrBGa-Qm7XPBwSdW733tV9faa1q1s_z01RSJ5Q@mail.gmail.com>
Message-ID: <CAC=S1ng0n25qrrBGa-Qm7XPBwSdW733tV9faa1q1s_z01RSJ5Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] ASoC: dt-bindings: maxim,max98390: Document
 maxim,dsm_param_name property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Steve Lee <steves.lee@maximintegrated.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 4:59=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Oct 25, 2024 at 06:44:44PM +0800, Fei Shao wrote:
> > Add the missing "maxim,dsm_param_name" property in the binding.
> > This property specifies the customized DSM parameter binary name.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  Documentation/devicetree/bindings/sound/maxim,max98390.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/maxim,max98390.yam=
l b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > index 5bd235cf15e6..fa4749735070 100644
> > --- a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > +++ b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > @@ -32,6 +32,10 @@ properties:
> >      minimum: 1
> >      maximum: 8388607
> >
> > +  maxim,dsm_param_name:
> > +    description: The DSM parameter binary name (e.g. dsm_param.bin).
> > +    $ref: /schemas/types.yaml#/definitions/string
>
> NAK, you cannot document properties post-factum. It's not a property
> coming from 2014.
>
> For me, this is obvious that this is for ACPI and if you want to use it
> for DT platforms, go through proper review.
>
> In any case: NAK for this and other ACPI properties.

Acknowledged, I didn't know that.
This was directly from a Maxim customer and I guess they didn't remove
it when porting from ACPI or something.
I'll drop this and update DT in another series.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

