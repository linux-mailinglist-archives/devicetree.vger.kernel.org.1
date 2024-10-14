Return-Path: <devicetree+bounces-111119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8670B99D53D
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:04:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BAEB1F23F14
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423BB1C3024;
	Mon, 14 Oct 2024 17:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OucqymU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BA33CF73
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728925436; cv=none; b=BxnCGMkESOyrRuUNFpLVdTaLRtB1p23HGkLNQ0DkG7JxsGN1zYRa7xdmkcmO+EbjI6DosSfActSMC0Tj94ZdEUddGlhsRzVtXog1XGDbJGocvFTJtK3gSCWs6JizBn6Mesv0SVH1QjCc2WF1wr2igtVSWxsk6jKeneaWYp3HBOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728925436; c=relaxed/simple;
	bh=QgHhEkaLzgOlydjYpoXN7smlVjp0xbTpJ42Xq4kBQvs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fkjz0g4ZYm+6ZW+NGBn2aL4PMqRdxlFHryLxS7PM6asiyl5AX0yE9aTH1mbNYytPtJ4leiKUfcK7c2xUXzPIq0gjSC4OMgj1rIXi90dle9t8brDAhLmyWIsJGvhcyJrIy3/0n+jieMRRZYG9WgGYgJrnt6M1gdGdOyv6lyRJ6Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OucqymU9; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso16505971fa.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728925431; x=1729530231; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WpqfZpy0KhNOi4dX7TpD4nUG6HhaVwhIk+AiVaYBRNs=;
        b=OucqymU9nKSARJKfhLarRaXcNvM+Bgx+b6i/ZjkMsO0xwbQdtSJ2yHhyLjqUTOKzTq
         TmVTbFGNAc9Ag1TmsSupPoUlAKm2oJ1OQ4pjglaqb9zlue9d78GmB53uXexJkCVv5xEa
         +tGaXP2IWYhUmZ0p4XibBJlqbuYvPOQ67vAIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728925431; x=1729530231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WpqfZpy0KhNOi4dX7TpD4nUG6HhaVwhIk+AiVaYBRNs=;
        b=OLd/p08izlIkP5a1Y+KNK9No/9+4JJ1PhYpl4i5emOO2hSXdO1lqEEGPTXmFLj3F0k
         ylBUF8RGztChp/LgmnOYYq4wFwX7EUIbnCxn2xSrdUgxP6OtE2XsgONx+EBnshHxuB66
         6rAJr81nuWRMwNoUh9DNZsOJJ6laRz77BP5U+HWp6eWq9pLYCgbtBS7Rydt5a9UlmK61
         i4dUJE6z5JufXDLNkDwPzLyBay2nOND2i+6rKevusYwobU4dHzQmSN75ZL4c+izNeoTQ
         wffbHFOsuAw7kGQkxAFHlBCCyyIpJBgCnTyHTOpv0X6EjgUK0gj3JjlxRafuHMqUetxt
         hkwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBlR+4WpyD8Th32rrc6VAIIfpP8U8M6hXxhU2f1JCUl5/X7EgiayPJc6PuunkXSMnSA9C5dafm0u/p@vger.kernel.org
X-Gm-Message-State: AOJu0YycdMllElkTGUwQk3tY5bJoA9PZlicxg6cZEYv6seHu9fNHhPwA
	EivG0jZU/d1c3pZ+y8laLULdPkuxGZvcHZzmJ2RV/ppN7te1defaivcSUO+FJ6reBcQFbA923Cu
	IBw==
X-Google-Smtp-Source: AGHT+IFzuHdCGzuYjrQPB4fgKUXcE2e9L+YnQLCyZyoKIUC7TOfEvJBHUJoVkYW0oZy7b02fk465Ag==
X-Received: by 2002:a05:651c:2222:b0:2fb:5206:1675 with SMTP id 38308e7fff4ca-2fb5206179fmr20872041fa.27.1728925430753;
        Mon, 14 Oct 2024 10:03:50 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb5180532esm3810271fa.118.2024.10.14.10.03.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 10:03:50 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f2b95775so1645538e87.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:03:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXwDi6ZGdMETuu4mOuiwH/ieHnsIr9K5vLJSZUbRwXtyihMW7LkoY1sYFk/Fgblv+rD8cURk4A2ddXy@vger.kernel.org
X-Received: by 2002:a05:6512:39c7:b0:531:8f2f:8ae7 with SMTP id
 2adb3069b0e04-539e550179cmr5026613e87.25.1728925429365; Mon, 14 Oct 2024
 10:03:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=XfHtdc9RpEwAtVHNYwBGJGhHUAoHaJhP+ZPWuUHAASFQ@mail.gmail.com>
In-Reply-To: <CAD=FV=XfHtdc9RpEwAtVHNYwBGJGhHUAoHaJhP+ZPWuUHAASFQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 14 Oct 2024 10:03:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UMaAo9x0URaaVNxzx+ztLreAcbiAfLFvDFNcHut5srvg@mail.gmail.com>
Message-ID: <CAD=FV=UMaAo9x0URaaVNxzx+ztLreAcbiAfLFvDFNcHut5srvg@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: himax-hx83102: Adjust power and gamma to
 optimize brightness
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, linus.walleij@linaro.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 11, 2024 at 7:20=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Oct 10, 2024 at 7:08=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The current panel brightness is only 360 nit. Adjust the power and gamm=
a to
> > optimize the panel brightness. The brightness after adjustment is 390 n=
it.
> >
> > Fixes: 3179338750d8 ("drm/panel: Support for IVO t109nw41 MIPI-DSI pane=
l")

When applying your patch, I got a yell about your "Fixes" line. It
turns out you didn't copy the subject of the patch you're fixing
exactly. The above should be:

Fixes: 3179338750d8 ("drm/panel: himax-hx83102: Support for IVO
t109nw41 MIPI-DSI panel")

I'll fix that when applying. Please make sure you get the commit
subject exactly in the future.


> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-himax-hx83102.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
>
> No objection on my part. This is just modification of some constants,
> is well described, and is to a panel that you added so I don't think
> it needs a long bake time on the list. I'll plan to apply this on
> Monday unless there are comments or someone beats me to applying.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

I've applied and pushed to drm-misc-fixes:

[1/1] drm/panel: himax-hx83102: Adjust power and gamma to optimize brightne=
ss
      commit: fcf38bc321fbc87dfcd829f42e64e541f17599f7

-Doug

