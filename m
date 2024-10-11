Return-Path: <devicetree+bounces-110265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC9999DB8
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 09:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2BCCB2110E
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 07:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EC6209F28;
	Fri, 11 Oct 2024 07:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MHxRCqHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1A61C2452
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728631130; cv=none; b=j4aXG1ak1NmP7g43vj3r0yhZZSGa2WpmBazayNyPGqEcx81l6CgYoJbTjvF6ScF7DZVtIFmgCZd/19U6DoFuao6pNwWrFwM63lFJkeyy9c7lj1f8NAQW6vM6jIWfDjok7bggvS+KpNYapMhnKITtWyEYysmsvJdIcouoLJKJvy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728631130; c=relaxed/simple;
	bh=NqeSOp6U1ubWdAbk9muDn1+4rdKST6F5CQZPcgI8Das=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cvT0l6ak6QX8/jdkBiu8R1uouLGi4NOWFu/AgexzabLkTWbl15r4c+4ZWIgVeVZWhd/JcByV4cRoiaQEEnjixyhCuvMj66E1BVQJSCSwdzU02vyuTU4QdvfoOJUckHt9dywxgcHW+VK8IhNEa/bwmj2g+Oyvyty3tZtYWuUgSSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MHxRCqHj; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71e06ba441cso1475696b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 00:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728631128; x=1729235928; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NqeSOp6U1ubWdAbk9muDn1+4rdKST6F5CQZPcgI8Das=;
        b=MHxRCqHjMGE74sVOiO4Dk2W7qVo7bUWYZO+2W/OcoMm6G57tTgtCGy40qnL1RU4/qZ
         +zFos8GCQeFMfiuooqgcf59l47dj7gqQ9chb4xJ4AybobXO6rBgH/2dztMbbOWjmMqDY
         gDCnZnKqYZ/cdwxMytAkUdEflSN4fuAomxyTlaZwK/XMoc/Ush8ZHAFZbuw7VD9xtyAV
         z94ahPMO+/XQP0/2Fp2Bk/DtNC0slB3qEZjwhbBE6kv4U6cMmYl0lcmKF04EKAyzEHei
         tkTy6jv5+eeP3j8M05EWLwkQxWJ1eBFrvd8NVJfBzzru+8I4ZUYJkaPMs8TDI0NsB6Ay
         OfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728631128; x=1729235928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqeSOp6U1ubWdAbk9muDn1+4rdKST6F5CQZPcgI8Das=;
        b=jZ16hfcFdfz/YdZ1j3T6w4cxI6Yk88clQ6gKwaRgnvW8Hm08jVGemg8y7cO5CDmQOi
         MVxwidtfkqbdZU35qOGciYKkKF0EiCSKErJbVmoTjbtSLuliNXiWbjyRlx+zo+Z0+WaE
         CQB31O/ZNseMwa1INCwjhcCmpAq+Dxe3T6xH9pxjr95uP8DgR+aYKWK+eWdJa9AE2ufJ
         hrPYwanF5u81OhAa/HvXVuwcV+EBzavCeM6FeKprSwL+DyzxZVYvjvWrz+rJNT2fzrvn
         c8GnB8lKcyM55qLnSjauOgB23ZTD0HJE2m15hkhtFRrwPud4m7J7ahm2yGnhLjpx55xl
         qVMg==
X-Forwarded-Encrypted: i=1; AJvYcCUnisDCfbCqDMtZGlNO4G0SRNP3/1p8BhBn8SxoJmiG9kQzCY5o600fYzAJ1Io3iuS628MGwnJFG5kq@vger.kernel.org
X-Gm-Message-State: AOJu0YxOc/8Eg+qQxFrJyy5xxRzUXwSZOVL7xAahh4kMcV1ARZJGM6zU
	kfgmO8A414jD6uee/kKrNrzwlRGMqds0b4B5bcPmSdpa3KYdpZElYBXW8ca7CNJTRmro1S3p6lP
	SENLYl1nEcMc9wWsopz8a5jM55vAFkQJIYNw+tqAX4mVereNmlkYP+Q==
X-Google-Smtp-Source: AGHT+IE/aLEcA9c1ck8SdATXXYWWtkP2N4A4yV5C1J0Qjm4MBU//5axfgShXiyi4jwZ2Z7IA+xzupEWqrWv8mYxT6Ls=
X-Received: by 2002:a05:6a00:3ccc:b0:71e:f57:f2e3 with SMTP id
 d2e1a72fcca58-71e37e4c7f7mr2612179b3a.5.1728631127797; Fri, 11 Oct 2024
 00:18:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
 <CACRpkdZR0UxF69rcuSpcfYR69FC-rGOakeOiUUbzJH6BWGVh=Q@mail.gmail.com>
In-Reply-To: <CACRpkdZR0UxF69rcuSpcfYR69FC-rGOakeOiUUbzJH6BWGVh=Q@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Fri, 11 Oct 2024 15:18:36 +0800
Message-ID: <CAHwB_NJJrXQ6aLTO2_eHx5qmEQB9ME5icZUiZmeLQmX6rR-L8A@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: himax-hx83102: Adjust power and gamma to
 optimize brightness
To: Linus Walleij <linus.walleij@linaro.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, dianders@chromium.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Linus Walleij <linus.walleij@linaro.org> =E4=BA=8E2024=E5=B9=B410=E6=9C=881=
1=E6=97=A5=E5=91=A8=E4=BA=94 15:03=E5=86=99=E9=81=93=EF=BC=9A
>
> On Fri, Oct 11, 2024 at 4:08=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > The current panel brightness is only 360 nit. Adjust the power and gamm=
a to
> > optimize the panel brightness. The brightness after adjustment is 390 n=
it.
> >
> > Fixes: 3179338750d8 ("drm/panel: Support for IVO t109nw41 MIPI-DSI pane=
l")
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> If you look in panel-samsung-s6e63m0.c you can see how that driver actual=
ly
> uses a set of gamma+power (ACL) settings to regulate the "backlight",
> i.e. the brightness of the OLED display. You might want to implement
> something similar in your driver to actually provide the user with a
> brightness setting.
>
> It's a bit unfortunate that this is for historical reasons called "backli=
ght"
> but the usecase is definitely the same.

Thank you for your suggestion. As far as I know, there are some differences
between OLED panel and our current panel. OLED emits light through the
panel itself.
while the panel we are using now actually drives the LED lights in the
panel through PWM
control of the driver IC.

Usually the brightness is controlled by PWM and exposed to the user space.
Modifying gama here is more about optimizing the gama curve to further impr=
ove
the contrast, brightness and detail presentation.

>
> Yours,
> Linus Walleij

