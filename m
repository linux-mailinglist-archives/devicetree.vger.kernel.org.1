Return-Path: <devicetree+bounces-229044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 715E0BF3594
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D58894EABAC
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9D82DC78A;
	Mon, 20 Oct 2025 20:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VDKVsLMP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4232DCF4C
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760991259; cv=none; b=A/UjoOKjmgLZDwtXWASQZ1cbydA0LDrL4h47Tibf7+dW5mHAkS4lLZYpZPUDNOxKwJMB47v4A0HAW1VIZ8cfMEwP57qMA5Cv9oMQzWGYM6Gr9z0ex8nIdRF5CGQQnNCe3Gvmhfz6p6tO9kFlTja+otCOQtvKu7cblVALeCgdEBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760991259; c=relaxed/simple;
	bh=cW0NrS3XvfmefHojKNpPlFwBgfzDJ5SAdW6H/5DCfJc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZwUXB41linHmmQMWHJ8uo5kwO9dok/mWkq+XkNhMoDQzVbUQrudNKzvIePLcQ2BxzDI6xz8L7UvHPXVzOQ0jwBArjfW+D3PzqJqjR1jtr6NznRcOAqI9ymSMszJVEqhudZqytXMEchGcUj/Ezh1CMN6imywA/Pp2ntRQgIN8Sd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VDKVsLMP; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59070c9111eso5243403e87.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760991256; x=1761596056; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cW0NrS3XvfmefHojKNpPlFwBgfzDJ5SAdW6H/5DCfJc=;
        b=VDKVsLMPM20J15S3GLLr20r5MXIkau6rpxVYq3D0Y5zDQEGdGfsgoYmLpFvR3Aw17o
         T23W680+65Pei+gQysdvQgWcnVnj5fysoWlA0hJVt75WcS03PRf1HmWWgaKm7HUZX/zS
         iCtX+z3a6N5AOCkJuVuww7yZGMLEb2j0Ziy+g3WeTYPlAP2p6IPB7T32WFGxfAc9T6zy
         hwMQaxetN9tvKMrkZgpjzXl/oOrZXNE4BzHaLUoUh1+N7G4ebabKBKc3czuZ8ccZyQIs
         KFfdLw6aE72VAA6DO4qeD6nyCdpvQtb+8HblZXd1gy6dR/EFL+lSS3/lnJTDSDLsvSA5
         ig0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760991256; x=1761596056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cW0NrS3XvfmefHojKNpPlFwBgfzDJ5SAdW6H/5DCfJc=;
        b=U31UY1m1LWaMgjLeou8s+mexMtRse+Z7XdvVvQiLMPDGqbNv0gnO9O5Jlqu6Prh+Rl
         in9uLqnbrawGWLzsdcZl/v/ehLgrtYii4CvsjAc7S9O/JMsebrebB2PvJBM8TqsubFT1
         plriiE15fmKZm5NkFgKxfsHiWbvdvn86Eb4UPRCyPLnNNIyHh3lcTv71WNDQJbIr87u2
         5d9lpuO6RcKZxRIJPj/aQSjwjrO4s62C/FdCKcLyzFRS+9EkRs81WCKoB6+lIzDp003L
         7VTz2MOC58ga5LuW2zUszmorkmspD8ZXfLM/7XsO8SxyZwavwY2dGVrSJ60q1JUONr6K
         m6Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVMArIIDuSqTn2sJLb1CQNw2Mb024E6bR6gj5Pz/m1mS6SEjE3Oko6DRx4CIsmqmWH/KgIDeUuytGPD@vger.kernel.org
X-Gm-Message-State: AOJu0YxZtZhQOk3QChFNuGdLdk5ULJNtMavFTRG0al6QSrSo+goZdc8B
	VB7JX+yGLE6G8ZU8wWqABQDL/A4Z4j/19Ny/BqhuP+ZxL9s7K94xIic+zUOgknVrpC9R1M8Q1Tt
	9mqr2/0TkxREfgznFvRtxBneWee8mLfI=
X-Gm-Gg: ASbGncs6PWaCd9z5uk+M1GQ3/mm+OnwIHnkdEdCLiHelFmXIxlFEtX2GF8LW9xauas6
	ASGHcV6XSf5BV+lcczJqFhY0qK82T7IkaijUrRy3tkHO0D9mCwZS2+jE8aLk44V9xUGY9B7jWXU
	lvReS5rWW1YEjU33FyDFOrMkpFoalOIN6P5GVRHwLwniW0YGe49guI6njIVWWpHJ+bbux93aKOy
	dU6sDq4FFUaU6LpUY2SiS31OdnlEAzWSjIsK0EpMUGUTDL+2i6jWyIrlGZk7RlaU4s5nQuttppC
	RXtF+jRT1XkbsXvDfG04j7xhXgiu
X-Google-Smtp-Source: AGHT+IH5YbH/N0GzOG9KC4T3jdDKTBXy9E5rcby+9lA7Aeai++z/YKb5cv2iLVBi4oC0gn0ky+3LKbarimVH4bcAel0=
X-Received: by 2002:a05:6512:23a3:b0:576:d5df:fe1b with SMTP id
 2adb3069b0e04-591d84cfb78mr5033821e87.10.1760991256016; Mon, 20 Oct 2025
 13:14:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <5d7491b1-8f9a-4040-b854-ff0b94bfd24e@kernel.org> <CALHNRZ-okVZ8tzKYa=jqudDu3dZ_Yq1CkeErdcvxi5xJEgJFbg@mail.gmail.com>
 <113725e3-3e82-4921-b045-8d5be3fed8bf@kernel.org> <CALHNRZ8r_bg-Pm1ZCoJT9sk++zQcq85R=8N6enL_Vcq=VziNwA@mail.gmail.com>
In-Reply-To: <CALHNRZ8r_bg-Pm1ZCoJT9sk++zQcq85R=8N6enL_Vcq=VziNwA@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 15:14:04 -0500
X-Gm-Features: AS18NWB_ZO-oT8U4UToGcdXsXZWXtPvNCoksa_QZNadvxO4znElXh9NUJcwBK4g
Message-ID: <CALHNRZ-2Hv2ix0Hr9veOPWdO=ekgpEWKBWtCiCsQa29DcfdkUA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Support dynamic EMC frequency scaling on Tegra186/Tegra194
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 12, 2025 at 9:31=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com>=
 wrote:
>
> On Sun, Oct 12, 2025 at 9:25=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > On 13/10/2025 04:18, Aaron Kling wrote:
> > > On Wed, Oct 8, 2025 at 7:05=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> > >>
> > >> On 09/09/2025 15:21, Aaron Kling via B4 Relay wrote:
> > >>> This series borrows the concept used on Tegra234 to scale EMC based=
 on
> > >>> CPU frequency and applies it to Tegra186 and Tegra194. Except that =
the
> > >>> bpmp on those archs does not support bandwidth manager, so the scal=
ing
> > >>> iteself is handled similar to how Tegra124 currently works.
> > >>>
> > >>
> > >> Nothing improved:
> > >> https://lore.kernel.org/all/20250902-glittering-toucan-of-feminism-9=
5fd9f@kuoka/
> > >
> > > The dt changes should go last. The cpufreq and memory pieces can go i=
n
> > > either order because the new code won't be used unless the dt pieces
> > > activate them.
> >
> >
> > Then cpufreq and memory should never have been part of same patchset.
> > Instead of simple command to apply it, maintainers need multiple steps.
> > Really, when you send patches, think how this should be handled and how
> > much effort this needs on maintainer side.
>
> To be honest, I was expecting all of these to go through the tegra
> tree, since all the drivers I touch are owned by the tegra
> maintainers. But getting stuff moved through that tree has been like
> pulling teeth recently. So Krzysztof, what's the alternative you're
> suggesting here?

What is the expectation for the series here, and related, the tegra210
actmon series? Everything put together here accomplishes the single
logical task of enabling dynamic frequency scaling for emc on tegra186
and tegra194. The driver subsystems do not have hard dependencies in
that the new driver code has fallbacks to not fail to probe if the
complementary driver changes are missing. But if I was to split them
up, how would it work? I send the cpufreq patch by itself, the memory
changes in a group, then the dt changes in a group with b4 deps lines
for the two driver sets? That seems crazy complicated for something
that's a single logical concept. Especially when as far as I know,
this can all go together through the tegra tree.

Aaron

