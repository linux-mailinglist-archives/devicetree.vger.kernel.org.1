Return-Path: <devicetree+bounces-213147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EAAB44C1E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 05:08:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75AE11C26877
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 03:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62CBB23FC4C;
	Fri,  5 Sep 2025 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C7ifgCd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7601A2398
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 03:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757041696; cv=none; b=ghBnygDe4cAU62fIP1sP3iOrgOG0PIXeW7flB+XgTwcdK340aDKW5Avsk7lUtxlvNUYf1g08m5b0NfuIJ5y0lpMPyTh4In4F2Y2L8l0OGXzO1pOlGQlDbetyE9x+VA0XnQK5X0fnvJ386i7M8E9kOkaV+E9btdQEItpm+UrLctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757041696; c=relaxed/simple;
	bh=aB5m+P2q4cXUyhOBmZqie7bs4YuHa0YZE8lVDXQtA2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M/zIhKZYQpPo61QsLl8OX18z59+FA9R79+sHXoZVhDmKoMuTz5jQxk53sNZgujGeZIfFJK5BNZK7n21TmxOCrxaKzQ+moQqF51LAfSvceI1jjlGKBiXuNBTI7SVX7Qu/tji7f2XEYt1nTTombHtuqSjM2wrwEuo+OiF0volSvpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C7ifgCd9; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-336ce4a8bfcso14348961fa.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 20:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757041691; x=1757646491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z7VEF8fsQ16/5eguTcUya9i8sN0CVWScInMAqvxe2C0=;
        b=C7ifgCd91S8jemr9dByDKvjMyox4El+DXfciiU3ZpaqQ5r8bUnB14pDOUjBOuUq51v
         zcsHxFtBG0IcdBHkHZuSAHZrLJ9iv34PzRdngoOLBnaXJKHN9blE4NFELAnstfcJ2KtB
         UxW3+RjPj/cj//YR3ROtg1H3WBoZWiZCOf6Qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757041691; x=1757646491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z7VEF8fsQ16/5eguTcUya9i8sN0CVWScInMAqvxe2C0=;
        b=PmCmWURvw0qm1GMyX9+E8Cuv7uBlZDP079o3FAqfT9rew76DjxdMU5qTlCK1quKTr4
         0xaMEHBgsUTMljC3UQSX1NAIUGyZcpOmqMw+CQ1W4rRdtW42wEDp9tNJm+mj5N86f07r
         DNhqkWsrTiczCiR1zE6gMLlNvHzIGkQROe+KQVMB+wQsYLuI1q/NlkLYYCzisNnVuowR
         J1nZ027NPNQyizVqx4gnCFIpcHJaVCzpETnq803Yeahg5063bbJLLvVWD3v0wjPvBYUt
         ARVdkGzaXvpn1/nagn6I5nVG5XQwseRNjoFCgZAxCjIo/UDeZZyRuwhm/mPY3JCXIRQR
         rpGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIRtn1Ln8HETy2rorOENdiJDlwmWcufG6AJufVcZ23XljKFZFwSWUiAp/oSMzQFPtmaWzBcBlUZ2gF@vger.kernel.org
X-Gm-Message-State: AOJu0YxUUJXCb7WrZov9A0Mes6Q5GqID5eiPq/NmlOp8+oPAfPB1XeeM
	Y8vXwErPF5IuDNbagWlSCVcev8r5z1WVpqi2dc5Zt+ZqFEbFCz4QrWU9CQAO+hGTNEMH3DQs6Mg
	c0Om6slbLqR7dS0kV7MR46vHx9HpyjYLIvJS2lZ8a
X-Gm-Gg: ASbGncs1LoRp3QJStyGJRIEHzJQWQuVI6Q+xG3XO2/zztw7SSiQX3Kte614dtmuIO9M
	1fk9hE4dtZYs6h/sdQ6Q5QSAxQz/I6+kfOC7agEbf3ySgu4aZ/06lop3TekvNbU+nyq0Rigx+6o
	QN78HSA9p9NsI4C2qmj4Io1xw3rW9+mlYh7CQINQZ5xudpwWJa/RUCh2whYMpZE3Z1vm0bC8eC/
	oUKJPI6Gj/fzj8B4zBLsjr8fFLgiFOAUWgIAc2jppLTOEBl
X-Google-Smtp-Source: AGHT+IGldyHuDYkPWivf90sba85mlu8jLhfEVWhM+CRAtZ5kcPdD6IcKM+CLluf3aDGmO4+qEneV9QzpuYa7Bir4LF8=
X-Received: by 2002:a05:651c:1107:10b0:338:5ec:1dda with SMTP id
 38308e7fff4ca-33805ec1e2cmr23475841fa.9.1757041691297; Thu, 04 Sep 2025
 20:08:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903225504.542268-1-olvaffe@gmail.com> <5820885.GXAFRqVoOG@workhorse>
In-Reply-To: <5820885.GXAFRqVoOG@workhorse>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 11:08:00 +0800
X-Gm-Features: Ac12FXw182raft1JJYOZIoO33KVRrFPcguj33C1FCebFdDsYEFHlJ4j0UxQM7o4
Message-ID: <CAGXv+5EbEDG3sZjo9BDv_8-HhLNNTH4DLZ3ibvdcsULXgkzjYg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] drm/panthor: initial mt8196 support
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Chia-I Wu <olvaffe@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 4, 2025 at 7:20=E2=80=AFPM Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> Hi,
>
> On Thursday, 4 September 2025 00:55:02 Central European Summer Time Chia-=
I Wu wrote:
> > MediaTek MT8196 has Mali-G925-Immortalis, for which panthor gained
> > support recently. But the soc also requires custom ASN hash to be
> > enabled. This series introduces panthor_soc_data for per-soc data and
> > uses it to enable custom ASN hash on MT8196.
> >
> > The clk/regulator provider on MT8196 is GPUEB, whose driver[1] needs to
> > be cleaned up and upstreamed separately.
>
> I'm currently working on this, I'm at a functional 800 LoC driver vs the
> more than 30k LoC of the downstream... thing. I intend to send it in as
> an RFC once the clock stuff lands, and I get some responses wrt to
> figuring out what's still missing from linux-next aside from the DT to
> get basic boot working so that I don't send in something that I
> accidentally shredded during a rebase without noticing.
>
> Cleaning up the downstream driver is a fool's errand, it's like 6?
> separate drivers, with lots of global state (and no locking), without
> using the common clock framework, and relying on abusing -supply DT
> properties to force a certain probe order to make all the race
> conditions it would otherwise have turn out fine. A lot of it is
> code that seems dead, or wrappers wrapping wrappers that have nothing
> to do with how the hardware actually works.
>
> My solution adds a small mailbox driver for the GPUEB, and also adds
> a new module that lives in the panthor tree and registers itself with
> panthor's devfreq stuff to be a "devfreq provider". The motivation
> for making it devfreq instead of a clock+regulator provider is that
> the GPUEB seems to have several quite devfreq-like parts to it that
> I am not yet using, namely setting a job completion target time and
> several methods of limiting performance.
>
> As it stands it can set the OPP, but boosting above 1.43 GHz does
> not seem to stick. The boosting stuff may be done by the four or
> five other ways it has to set some frequency target.
>
> I'm hoping I can send this in maybe next week or the week after. If
> things remain blocked by then it'll be compile-tested in its current
> form only and lack some clock stuff.

I suggest posting them when you think they are ready, and not wait for
the clk patches to land. The review is going a bit slower than I expected
and Stephen usually just picks up the patches towards the end of the
cycles anyway.

ChenYu

> Kind regards,
> Nicolas Frattaroli
>
> >
> > This initial support also lacks support for some hw configs. On some
> > configs, panthor is expected to query a mask from efuse to mask out
> > unavailable shader cores from ptdev->gpu_info.shader_present. This
> > requires extending panthor_soc_data with a callback to read the mask.
> >
> > This is an RFC because the dependent drivers are not ready yet. But I
> > would like to gather opinions on having panthor_soc_data for
> > soc-specific data and having CONFIG_DRM_PANTHOR_SOC_MT8196 for
> > soc-specific code.
> >
> > [1] https://gitlab.freedesktop.org/olv/kernel/-/commit/170d5fc90f817dc9=
0bde54b32872c59cf5c77779
> >
> > Chia-I Wu (2):
> >   dt-bindings: gpu: mali-valhall-csf: add MediaTek MT8196 compatible
> >   drm/panthor: add initial mt8196 support
> >
> >  .../bindings/gpu/arm,mali-valhall-csf.yaml    |  1 +
> >  drivers/gpu/drm/panthor/Kconfig               |  6 +++++
> >  drivers/gpu/drm/panthor/Makefile              |  2 ++
> >  drivers/gpu/drm/panthor/panthor_device.c      |  2 ++
> >  drivers/gpu/drm/panthor/panthor_device.h      |  4 +++
> >  drivers/gpu/drm/panthor/panthor_drv.c         |  4 +++
> >  drivers/gpu/drm/panthor/panthor_gpu.c         | 26 ++++++++++++++++++-
> >  drivers/gpu/drm/panthor/panthor_regs.h        |  4 +++
> >  drivers/gpu/drm/panthor/panthor_soc.h         | 26 +++++++++++++++++++
> >  drivers/gpu/drm/panthor/panthor_soc_mt8196.c  |  9 +++++++
> >  10 files changed, 83 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/gpu/drm/panthor/panthor_soc.h
> >  create mode 100644 drivers/gpu/drm/panthor/panthor_soc_mt8196.c
> >
> >
>
>
>
>

