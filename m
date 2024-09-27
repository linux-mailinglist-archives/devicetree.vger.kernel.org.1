Return-Path: <devicetree+bounces-105749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B816A987D69
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 06:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75A32281ACC
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 04:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD2215358F;
	Fri, 27 Sep 2024 04:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P2YREVYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCF41BC5C
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 04:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727409663; cv=none; b=Kn+O7YEFNWjRiUGYtSIXgjIKGJb+Itof+P7KWCUBajj8X75nY40+tYl74b5eOOogKywh+rvSP693Ie4I0gWDXdL2DiNW+uiIlzvPMiiKH9OkgXQkM0JQD+GP4FUTJkHd4ecLSkCX9y0aVcRmT/OsW/Ua26UZDWy6CuQHZGdAMGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727409663; c=relaxed/simple;
	bh=/rigCc5vpyD5j9AYkIW/Sw3s5sCexLETUpveXhlJF30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lksLcAyiPbgmRQY0swO09r9i3kank1wbtIph7JNlZfm0x9Oa4F9gM4IvIbQbudB08+TpwEFFgvESHpua5EYppAvC0lEeKMq2m3+dgFD6dR9uSkmh5DWQf6maBYmVlsMOPI6HFo7z6zG09JH4PMI3npTbx7roL4e212UKcZxHk6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P2YREVYE; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5398939d29eso106265e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 21:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727409660; x=1728014460; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ts6Ybuhxy9EO97nxINn08YUin8kXfW9IAD6aPStdVq8=;
        b=P2YREVYEDoXLeaubx+0K3YrRZhMAFY6JadFFkkREnYZq6vJ+WZ979JQ96WeJkomJmZ
         adSeurEHic+9sz09nR50oebq8HM6bxjlC7v4lEMoAYOF4bBAqliA5Zf6Lh1dgqGzeVFA
         FOEPcaMSasplUZZbLdzCe05Mm0wY2ZZTeQQNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727409660; x=1728014460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ts6Ybuhxy9EO97nxINn08YUin8kXfW9IAD6aPStdVq8=;
        b=nEIQ6vG1QKAu2WoCc14B31ln0wXsP2TlTQuuFc9yJ0dCslSe9Wsy6IwVwBk8bHvcRr
         nuqL3A/1Ne7Qf0a2a/q1iLuEtTh8mzPJgD3inZ5X6ERcspTQz0unts+3UxWWjNHsdYvd
         B7OAxZj5QRfq0wZrydHvaVNxiSeOFI2SWwy4r75giDwjLB371VBGyzOialsrSxIQjoO6
         d3pLRchr458BA0w7t9892q/jpkY706JLI5oLNzCW0tF78SO1dsEb8xfkiFX8dQG8JXOe
         Hi95AR9XVUqnbwRd2sKpzBTNuu3poMMP+i51YQqja9RdhnHU6wWxlcDaDjGthOwhsUuq
         FyQw==
X-Forwarded-Encrypted: i=1; AJvYcCUTlRlrhUjnBAxZlCz+3xp6VZloQ9Oe2jgP73rg7Hpbg+caBdsbx37r2VCS/ttvSyy1Nqqo6gMLq1Ei@vger.kernel.org
X-Gm-Message-State: AOJu0YwR/lZeV4NoPPyYVIJCcjrlr1JUziLOkItlBxmcyJpWK6PtOJyS
	HGHi5xrTFiw518M0jdsMMxgiWiZ+5dywPYw35TgMPCEkbkHd0s0TK9TM4Vs+sfnC0qI2X4W7Rpw
	0CaV4Du0hVnjw8B46Duv3WCv0TRthXrsbTyyj
X-Google-Smtp-Source: AGHT+IFhILfvyN612dVfAZjt7mlHdsnT36bs2zlQCVH9UI+WtCiOa7LORMIXTip1YcFTiMjzEjST5u3lqpdVSQXGrdI=
X-Received: by 2002:a05:6512:1256:b0:535:6400:1da8 with SMTP id
 2adb3069b0e04-5389fc477eemr884467e87.28.1727409659514; Thu, 26 Sep 2024
 21:00:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925093807.1026949-1-wenst@chromium.org> <CAPDyKFqoqppLipOG1vK-8oU_6cMdZ3DV5Gxqhs5-+7+cQJ6=qQ@mail.gmail.com>
In-Reply-To: <CAPDyKFqoqppLipOG1vK-8oU_6cMdZ3DV5Gxqhs5-+7+cQJ6=qQ@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 27 Sep 2024 12:00:48 +0800
Message-ID: <CAGXv+5Fot5BVxtAiEj==2u1ew7mGYkrS7=mTqeTMjTiEg8LNag@mail.gmail.com>
Subject: Re: [PATCH v8 0/3] Add of_regulator_get_optional() and Fix MTK Power
 Domain Driver
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Johan Hovold <johan@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Pablo Sun <pablo.sun@mediatek.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 11:49=E2=80=AFPM Ulf Hansson <ulf.hansson@linaro.or=
g> wrote:
>
> On Wed, 25 Sept 2024 at 11:38, Chen-Yu Tsai <wenst@chromium.org> wrote:
> >
> > Hi folks,
> >
> > This series is split off from my "DT hardware prober" series [1].
> >
> > Changes since v7:
> > - Added stub versions for of_regulator_get_optional() for !CONFIG_OF
> >   and !CONFIG_REGULATOR
> > - Added new patches for devres version and converting MTK pmdomain
> >   driver
> >
> > At ELCE, Sebastian told me about his recent work on adding regulator
> > supply support to the Rockchip power domain driver [2], how the MediaTe=
k
> > driver has been using the existing devm_regulator_get() API and
> > reassigning different device nodes to the device doing the lookup, and
> > how the new of_regulator_get_optional() is the proper fit for this.
> >
> > Patch 1 adds a new of_regulator_get_optional() function to look up
> > regulator supplies using device tree nodes.
> >
> > Patch 2 adds a devres version of the aforementioned function at
> > Sebastian's request for the two power domain drivers.
> >
> > Patch 3 converts the MediaTek power domain driver to use function.
> >
> >
> > Each of the latter two patches depend on the previous one at build time=
.
> > Mark, would it be possible for you to put the two regulator patches
> > on an immutable branch / tag? Otherwise we could have Ulf ack the
> > pmdomain patch and merge it through your tree. Sebastian was fine
> > with converting the rockchip pmdomain some time later.
>
> Thanks for providing some context!
>
> In my opinion I would prefer an immutable branch/tag of the regulator
> core changes, so I can carry the pmdomain changes for MTK through my
> pmdomain tree, but also because I would prefer if Sebastian could make
> the corresponding conversion for the Rockchip pmdomain driver. If this
> can get queued soon, there is really no need to have an intermediate
> step for Rockchip, I think.
>
> Does it make sense - or do you prefer another way forward?

Makes sense to me!

ChenYu

