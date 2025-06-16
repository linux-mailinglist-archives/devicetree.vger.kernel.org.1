Return-Path: <devicetree+bounces-186213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1102ADABB2
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DACC1890FDF
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE98273805;
	Mon, 16 Jun 2025 09:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="i6fPRhjn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8A426F467
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750065767; cv=none; b=e/So3iIssxD30Gjj9n6cD5/iIlcZEagVuHT/JpXQ4wGz7hKCnEH5dsRE27i+56tzRZJnCMGH+uK5n66d2EnsTfTPT9lDSy32XL5HdWeqyoXaJWHN277P0lgaqRdG6URgcnDiFIGmEOTCTukXfVzMxDyv9z9LDGMGtcmNOfmzre0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750065767; c=relaxed/simple;
	bh=boaYqs6W2Ch9MV7MIDV7tFHWVXlXvSTuE+SZQidgsAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rtro8roM/CAnm7SHlRvGlmsixPhkT4MuFkpXGFpXYXXC7hE8Ft32r5LHWs3/tWFOcUoL/iPw/ktmn76pm1GHX3yRGuwiUoEF1Lg7YkkVUtI794WSh9Q9LfxXBaHZJtc1e4f5Yz/Dv1aAy4Oq4HEydg2NtYhqWL+wLu2T46D+3sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=i6fPRhjn; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-553b544e7b4so2798572e87.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 02:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750065764; x=1750670564; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4clW0hfNM59uFuEpnawSRjVBJDyxSvonnhwsOilymQ=;
        b=i6fPRhjnQZjdK8HXqHfTZaEscbWr/UIPbqEg7J++f3Hq1vFi70kq0wIxLaECCi8xXp
         itBZMq26Hs4HGhrOOJvdVaT/CQPAS07WrfQeD6LAYLF/qU0WSoaujeeYFW0j2tUCXcSt
         4pMptEtGAzaHx0T7CVq7Iv552TK7/d04NcR/1YfUSqCJwnsSP/rtW7NftW5ROs/p8yFO
         LTMgI+j+2FJf39hQpYgpR6GFIvw158JH20qFvMg0l93hgXNf+ZXU1BEvoitePGvkcdhJ
         AsBzBYPQPLNr0OVbPeOHiS0+dIoW78P1Ot20qFvhG9tRGQ4eifcxQgcevJyXeH45C4pv
         xidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750065764; x=1750670564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4clW0hfNM59uFuEpnawSRjVBJDyxSvonnhwsOilymQ=;
        b=vIB9+llQ8EVtVuoPNiTZQwSBb2V758FNtYnbba0pY1tXgEDI/lYwxtpRBbvKzOZndw
         EvLyYl1GW262X09LWOZKsmVzgrnDkp7P4fx76ct84GYCTmMysR1oRJDl5k/Ttl0jK72G
         3zP839YFVMzJtyruN1BeQ/dJyh5rSo9/Qf6qj2ZF33tBUXx6mz1XS6S/bdJV9iYrULcx
         sLGJWPMs6gYbU3ML3KBQQpAD5IDWeb6ZeSjmjziiHoVyTFij9iyhQaBybn4P9WjgHQbC
         O/nDJo1ojZtLZKgVJqDfKOw17zmLu+SxBR8AgiCq7C0czGHJxKgiF7pivLcVxztKCDzd
         MP1w==
X-Forwarded-Encrypted: i=1; AJvYcCV5sZwL1Lhfu6ByMhjcEleGTSMqgV5NfTHpnMa0IwzzwVMNlh0r4Ttz/ZVVELu2K8gGaeCa3XrKiLDI@vger.kernel.org
X-Gm-Message-State: AOJu0YxhhPKryjQPPnzL73b9Pu8YkEVDpoyfrKv6bvN3sIDFWNCn66wL
	me7zk0tmn8PyeOs+vb0piHslfcmS2QEsMVjcZjOc18xwMAmHX8Ard46+1CdcTaBdE9WWMcJnN8o
	xjEuxIVEMYA9S2NkV6JMM9h5sHy2zbv5XML7aGpb1Lg==
X-Gm-Gg: ASbGncsYhaXnFCQv3H1v876QSetS2RxaBCGQZ5twlYcZMo00cLu5xcA7rJZmzfzwt0t
	3bvjHN0u3/+otIGRPZDELzsiURvmNlptMkfog05dwtCamEUj6DnmC79W+PruFVQeOrdpgONnQgL
	hUPTOe+jGnCL7LtpJi7HbrYzsGdcBfT4USHmBeBTXJkju7lGsroWWgFOWHyNr+Ss/ms783E91wR
	Lc=
X-Google-Smtp-Source: AGHT+IEsBvyH0Zky97WuBrKbbjvEScgzySvzxn3rYYtDfdyw86suCq566xBi9HBUjAShIE2Mm9O+XZUWm2PEcQ1RjmQ=
X-Received: by 2002:a05:6512:12ca:b0:553:2ed2:15b4 with SMTP id
 2adb3069b0e04-553b6f4d916mr2068254e87.57.1750065764330; Mon, 16 Jun 2025
 02:22:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250614-apr_14_for_sending-v4-8-8e3945c819cd@samsung.com>
 <CGME20250615105256eucas1p21dba29a1450757d9201b2a9c7f0e34e8@eucas1p2.samsung.com>
 <202506151839.IKkZs0Z0-lkp@intel.com> <9765c970-55cc-4413-9fd0-5e0cdfa900fa@samsung.com>
In-Reply-To: <9765c970-55cc-4413-9fd0-5e0cdfa900fa@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Jun 2025 11:22:32 +0200
X-Gm-Features: AX0GCFvGdfEg2CPyKVWjNTkacG-9vOyaV6LbrgzY6YJIQBzVINyrlmiwiBnsQKI
Message-ID: <CAMRc=MeG40TxMj3ezeC0iUBBo8w99RXQWOQBsfG4ZAJdbA+dYg@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] drm/imagination: Enable PowerVR driver for RISC-V
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: kernel test robot <lkp@intel.com>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Paul Gazzillo <paul@pgazz.com>, Necip Fazil Yildiran <fazilyildiran@gmail.com>, oe-kbuild-all@lists.linux.dev, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 11:09=E2=80=AFAM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
>
>
> On 6/15/25 12:51, kernel test robot wrote:
> > Hi Michal,
> >
> > kernel test robot noticed the following build warnings:
> >
> > [auto build test WARNING on 4774cfe3543abb8ee98089f535e28ebfd45b975a]
> >
> > url:    https://protect2.fireeye.com/v1/url?k=3D6c3bc994-0cd954c9-6c3a4=
2db-000babd9f1ba-30c2378fa012fc4a&q=3D1&e=3Dc39c960c-4d5f-44d7-aed7-0097394=
dfc81&u=3Dhttps%3A%2F%2Fgithub.com%2Fintel-lab-lkp%2Flinux%2Fcommits%2FMich=
al-Wilczynski%2Fpower-sequencing-Add-T-HEAD-TH1520-GPU-power-sequencer-driv=
er%2F20250615-021142
> > base:   4774cfe3543abb8ee98089f535e28ebfd45b975a
> > patch link:    https://lore.kernel.org/r/20250614-apr_14_for_sending-v4=
-8-8e3945c819cd%40samsung.com
> > patch subject: [PATCH v4 8/8] drm/imagination: Enable PowerVR driver fo=
r RISC-V
> > config: riscv-kismet-CONFIG_DRM_GEM_SHMEM_HELPER-CONFIG_DRM_POWERVR-0-0=
 (https://download.01.org/0day-ci/archive/20250615/202506151839.IKkZs0Z0-lk=
p@intel.com/config)
> > reproduce: (https://download.01.org/0day-ci/archive/20250615/2025061518=
39.IKkZs0Z0-lkp@intel.com/reproduce)
> >
> > If you fix the issue in a separate patch/commit (i.e. not just a new ve=
rsion of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Closes: https://lore.kernel.org/oe-kbuild-all/202506151839.IKkZs0Z0-l=
kp@intel.com/
> >
> > kismet warnings: (new ones prefixed by >>)
> >>> kismet: WARNING: unmet direct dependencies detected for DRM_GEM_SHMEM=
_HELPER when selected by DRM_POWERVR
> >    WARNING: unmet direct dependencies detected for DRM_GEM_SHMEM_HELPER
> >      Depends on [n]: HAS_IOMEM [=3Dy] && DRM [=3Dy] && MMU [=3Dn]
>
> I believe this is triggered because RISC-V can be compiled without MMU
> support, while MMU support is mandatory for ARM64.
>
> Would an acceptable fix be to require an explicit dependency on the MMU,
> like so?
>
> depends on (ARM64 || RISCV) && MMU
>

I'd put them on separate lines. While at it: how about enabling build
with COMPILE_TEST to extend build coverage too?

Bart

> >      Selected by [y]:
> >      - DRM_POWERVR [=3Dy] && HAS_IOMEM [=3Dy] && (ARM64 || RISCV [=3Dy]=
) && DRM [=3Dy] && PM [=3Dy]
> >
>
> Best regards,
> --
> Michal Wilczynski <m.wilczynski@samsung.com>

