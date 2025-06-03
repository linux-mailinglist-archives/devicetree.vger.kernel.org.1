Return-Path: <devicetree+bounces-182510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E898ACC98C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDDF816344A
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22C52397A4;
	Tue,  3 Jun 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="YjkSn1dZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2328A15624B
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748962173; cv=none; b=WZOnu4IWmPsFscw4WaCUPbnKB91Y3oYUXyehcTjvMsh97CYJ+mqeejdDT0iTQBWvbK6bJVWOBHNVuYI3djL3pJasKCMguS5Ukg3HRRcYaSWsj4w7/dtmBkegDCTt6BPFutPF3eSyxUQ8FPxCcjzhn7F163PJdeFYZFcCRGQGUY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748962173; c=relaxed/simple;
	bh=Ex3LHxHEHJ4BZQ38M7qwegLl2zSlvRBxwaOVQhyHde4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AVWxE7NVdVOaCH5iAoT40RVOM0xOXgPQ7oAyjnpNkcZ5QsZ+KQIfhQuLieFifUF7scEZxu4jo9h58S10kDQFN+nFyIJjIin9G+kw6lZ/ejLHIUulAw7IMRhypYg7WHEBVyZTeNrD1PxOlWxlfBQ3vU5jCTz0j08MARy2CXtLkTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=YjkSn1dZ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54afb5fcebaso7318734e87.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1748962170; x=1749566970; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ex3LHxHEHJ4BZQ38M7qwegLl2zSlvRBxwaOVQhyHde4=;
        b=YjkSn1dZmHZhA/6TYufayxKqC70zA6znDbflQDTnjnBrsWaxljYkBbPCxK81coZf0h
         CUjA8ptdll9T29L8j2aQJd3HiSeL99XHEjTdmpU9UGxccQor9H9lmue6AQfr0htn/kB3
         wzvWy4MRrBLjVJ0kRP0Wd/HHLLPULCRE3O05gOTYmCU9y5A1sG/GZSTWAoXHx9+8SozE
         i5yGn6m8tiyenOGWzVSXuyqkkuoEKQBenmQrtjLgMyQgX0NpUuRajuV39NtmZj1UV7Gg
         O1vM+Jr5TZ769wW0eneZOzAoMxliOfVvEzkEhaLfUyc7/ZdYeoTzb/kFqlnPWqBUPpfZ
         mxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748962170; x=1749566970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ex3LHxHEHJ4BZQ38M7qwegLl2zSlvRBxwaOVQhyHde4=;
        b=a3liKjGn04R+TpQtgEnA93u9qzDAAecvqvy0sWuWvAxYchTQ1pDCt0PjFha8xG1V+n
         a2ZuufkVFXD2y2T2d05rU8HWBe9SgtfIZGk3x4T5Af369igtAr3IPiRv/bsleuixhh79
         /dW6fttgCBi1S+mR8oFxDp5+ywc+Yy5dbIJWP6CPzTGIHF8y2a6YHZzBCE0DABGsm5/7
         hQJHo82DTRWZtLKWWSYLvDTJm6JgawGzHwmZDF5OPx/ydTxihmZnHIzOfN5xLyggXYUT
         pCiMpL6qRq1Ut7jfvrHUe5uAGgVr8HfE7GM1lSqm4dpPG3+Gsso+j6JOCMtRbkpn9neT
         TfBw==
X-Forwarded-Encrypted: i=1; AJvYcCWgz+XclyZOl47OIge6qGk7pKCcQ9+13pqAxHY4sL5Rww38G6Yhe3fCrJD1Hfollmca1T/eojuzJwHw@vger.kernel.org
X-Gm-Message-State: AOJu0YyeghTmvwzxREcQHdARr8+0cTrUwGpTcbsR+XQ8HXkG9xigm6Bv
	VOv0oO+ZupIhxGJn3CywyaI5MO14Tdri0CKCQS/qkjpFHWngf5ftv4PWW9BamnrpPc8HXiKr6Yy
	7RuJhxSP+VdGwUY5ZfCUWg2SKrkzELhBNtiArkrTzCg==
X-Gm-Gg: ASbGnctrfUNPCSjmUgteUikWCZzfSKiuoEJWM4/SXUkUYS3HdR1JXuz5/aNXbollMp5
	QXowvbhrLb6R+Bhs2oi1IwOocD7vDhTyVztJPv5jlQOsSsuI9iDY4hl5dBiHF1oxp5nm+jY2kq3
	uE62sBQ+5ddn8kfzJnGrnQWHR8277YtImnnEsyNYwbiUziKvm2kXHC9mrO+6m3KOn9u0pdVo9Fm
	A==
X-Google-Smtp-Source: AGHT+IHc0KihO6QMjKjy0pMBkN2tQA80vRJ1vg3x2S+UcGNd55YVBv2aTqZA0Vmu7gFOqc5cx2vs3hmS2lLX+V2bUMY=
X-Received: by 2002:a05:6512:318d:b0:553:23c4:6822 with SMTP id
 2adb3069b0e04-5533b8f6183mr5171073e87.13.1748962170032; Tue, 03 Jun 2025
 07:49:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250529222403eucas1p1923fe09240be34e3bbadf16822574d75@eucas1p1.samsung.com>
 <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <20250530-apr_14_for_sending-v3-1-83d5744d997c@samsung.com>
 <CAMRc=Me9cWfe2mL=Q6JQbAFjpd55MOBZuAWC793Us0criiQr4Q@mail.gmail.com>
 <4519844e-b1c0-40a7-b856-a6e4a80c6334@samsung.com> <20250603-cuddly-certain-mussel-4fbe96@kuoka>
 <CAMRc=MfXashaEscE1vF_P6cs9iOCBerfNFiB4yC+TX76fZ87nA@mail.gmail.com>
In-Reply-To: <CAMRc=MfXashaEscE1vF_P6cs9iOCBerfNFiB4yC+TX76fZ87nA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 3 Jun 2025 16:49:18 +0200
X-Gm-Features: AX0GCFs2qeMG4HtPzgixdlaSw6fJIrCjF4lFG8AFOQDBjIfm0hhKZz_Zk6uhWO0
Message-ID: <CAMRc=Mc-jjULmc=3fS0qZgXbq9Sgfg8JBoH7peWML1PdyyyH+A@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] dt-bindings: power: Add T-HEAD TH1520 GPU power sequencer
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michal Wilczynski <m.wilczynski@samsung.com>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 3, 2025 at 3:35=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl> =
wrote:
> > >
> > > The compatible string could be updated like so:
> > > "thead,th1520-aon-pwrseq"
> >
> > Should not be separate node, you already have one for AON.
> >
>
> Agreed. And as far as implementation goes, you can have the same
> driver be a PM domain AND pwrseq provider. It just has to bind to the
> device node that represents an actual component, not a made-up
> "convenience" node.
>

I'm seeing that there's already a main driver under
drivers/pmdomain/thead/th1520-pm-domains.c and a "logical sub-driver"
under drivers/firmware/thead,th1520-aon.c which exposes
th1520_aon_init() called by the former. Maybe just follow that
pattern, add a module under drivers/power/sequencing/ called
pwrseq-th1520-pwrseq.c and call its init function from the pm-domains
module?

Bart

