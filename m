Return-Path: <devicetree+bounces-2564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE8A7AB5CD
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:23:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7162F282036
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C354177E;
	Fri, 22 Sep 2023 16:23:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5703F41769
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:23:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB637C433C7;
	Fri, 22 Sep 2023 16:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695399823;
	bh=N6AxtFtkqnMy8GL9TKaW0bmzOTpf5iWTpKPHQH1zQ6Y=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h2RmYlC+naq65dXlHhsTYzhR5UN0B+QFn6gxO2k+CHaMM1GcFRM1f3q+MM0Rq5bGm
	 Yxdw5/wRavg6Z54McAm/TCUaKbsfSrSWdZb8PNjlS4r5uOxa75Cgh4Y8sVh7T3Ccsk
	 yuS648MAnIkds3HTlVXjNbFIZgqm9whuKTwar0uHtEwXzhv0X4ULvNJWiE/9y61pRs
	 eOMynB8HeXUPJOjeof5HEuLIjvz+ihXKhv8EC/0iTNq6JfMJ6eQlRCtmqnUIcLXwJg
	 J2nA9Q+PBAYH68EsUnzs4g/MxyAq0LTbHqIFEOSOCMmuYxEnY1IcpyD9op+DoG+Pun
	 yF/Wpof4yBzyQ==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50337b43ee6so3805451e87.3;
        Fri, 22 Sep 2023 09:23:43 -0700 (PDT)
X-Gm-Message-State: AOJu0YxqbvpknAFysGGPR6xU4EdiIuSKytYblFdhSka2MhvheYFeCBgB
	X6ZLtGAYRQ2DJ4CKCryI2EPwuoH8ME2RMTt82Q==
X-Google-Smtp-Source: AGHT+IFL2X4bMn8orgzNZf0JDqyiiAU4MnhfWwec0CEOtHYtLl1AOA2Ss5IqRERK3lPns8mo81cdhfnvadgZ8kCn8LE=
X-Received: by 2002:a05:6512:312d:b0:502:9c4e:d46a with SMTP id
 p13-20020a056512312d00b005029c4ed46amr28657lfd.32.1695399822017; Fri, 22 Sep
 2023 09:23:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230911214609.2201040-1-robh@kernel.org> <20230912065946.GC5285@atomide.com>
 <28c862d9-ca39-2dda-86dd-9ccc206c3a1d@ti.com>
In-Reply-To: <28c862d9-ca39-2dda-86dd-9ccc206c3a1d@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 22 Sep 2023 11:23:29 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+8jisrwEqzz7tZnsV9g2+LmThwpO7sHRFA-zh+6q8XuA@mail.gmail.com>
Message-ID: <CAL_Jsq+8jisrwEqzz7tZnsV9g2+LmThwpO7sHRFA-zh+6q8XuA@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: omap: Apply am57xx-idk overlays to base dtbs
To: Andrew Davis <afd@ti.com>
Cc: Tony Lindgren <tony@atomide.com>, =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 9:38=E2=80=AFAM Andrew Davis <afd@ti.com> wrote:
>
> On 9/12/23 1:59 AM, Tony Lindgren wrote:
> > * Rob Herring <robh@kernel.org> [230911 21:46]:
> >> DT overlays in tree need to be applied to a base DTB to validate they
> >> apply, to run schema checks on them, and to catch any errors at compil=
e
> >> time.
> >>
> >> Signed-off-by: Rob Herring <robh@kernel.org>
> >> ---
> >> Note that I have no idea if this combination of overlays makes sense.
> >
>
> It does make sense, but it is only one of many valid combinations. I'm
> guessing the goal here is just to make sure they all get applied in
> at least one way so the scheme check runs. In that case this is fine
> other than it might give the impression this is the only valid combinatio=
ns.

I only care that an overlay is applied to one base. You should care
about any combination a user might do in a bootloader because who
wants to debug a failure a) on a board and b) in the bootloader.

> Also now we end up with these odd `am57{1,2}x-idk-overlays.dtb` files
> which also might confuse folks, I wonder if there is some way to
> apply and check, but not ship/install these..

There's already a config option, CONFIG_OF_ALL_DTBS, which adds
$(dtb-) entries to the build. So if you have "dtb- +=3D
foo-overlays.dtb" it will only be built in that case. Note that they'd
probably get installed too, but who installs allyesconfig builds.

Rob

