Return-Path: <devicetree+bounces-2597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 539537ABA4B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 811971C208CE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52DD47342;
	Fri, 22 Sep 2023 19:52:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EE245F63
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 19:52:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0FEFC433C7;
	Fri, 22 Sep 2023 19:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695412341;
	bh=imeUxCVuAEVLFhiNc4IeK3wuYja4OS++9ONx3qO3WBM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SqyOWOQh8dbD5rhF2gxDSXIeno3Mg5ZFM72XR/4d1SaWKwtLyZsBR9+eO1+Av9jJx
	 jRpzSkDsh4i15+Ud5c18MK9Bs2P1nspOfMEcWm3873/A0CjRA3dRRbHmPWJ4fveKs0
	 Mx1D8orr8GOf8XoJiwfqVlsCFTzmZsdNsRZjK3lLg+q+7kt+Iy0+JA7FTtYIAli527
	 onmF8bFYSQI2/oCGNZXHS1cldv3vGUPV3iDc6/hBSZpTloH5IizTFZV4ppW/nyVaWx
	 nVBuT2nGb9gscPqd//EC1qv0AvTmPly1OmSTVHp5/vEC0KyF1YALeU8jj5svzDyoln
	 qfXUMXsnIqF4g==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50435ad51bbso2554419e87.2;
        Fri, 22 Sep 2023 12:52:20 -0700 (PDT)
X-Gm-Message-State: AOJu0Yya//mvfQtynf0HrKJBmEggrXZULqAb4udBKonJsq6FRSzA3ZV+
	23406mXVfdRxsZWpSVzyzRKfBlQLRwsAHrjiTA==
X-Google-Smtp-Source: AGHT+IEjbFWOc2dJSZl+LGspXeTZskF2ku6FT/4P4ACzKx2mojBSEIPlpHP7hQaNPypseQNqhkbrOaUGGWgshym7TGQ=
X-Received: by 2002:a05:6512:23a5:b0:502:c615:99a9 with SMTP id
 c37-20020a05651223a500b00502c61599a9mr572466lfv.30.1695412339219; Fri, 22 Sep
 2023 12:52:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920152015.1376838-1-hugo@hugovil.com> <20230920152015.1376838-4-hugo@hugovil.com>
 <20230921162424.GA435508-robh@kernel.org> <20230921123237.b3c50eb12746724a4fd62237@hugovil.com>
In-Reply-To: <20230921123237.b3c50eb12746724a4fd62237@hugovil.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 22 Sep 2023 14:52:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLpJuxJ1ZbMkwXPrzUAK3Xhfr4zFgSYvmFufyDRF1QjpQ@mail.gmail.com>
Message-ID: <CAL_JsqLpJuxJ1ZbMkwXPrzUAK3Xhfr4zFgSYvmFufyDRF1QjpQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 11:32=E2=80=AFAM Hugo Villeneuve <hugo@hugovil.com>=
 wrote:
>
> On Thu, 21 Sep 2023 11:24:24 -0500
> Rob Herring <robh@kernel.org> wrote:
>
> > On Wed, Sep 20, 2023 at 11:20:14AM -0400, Hugo Villeneuve wrote:
> > > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > >
> > > The NXP-specific "irda-mode-ports" property lacks a proper vendor
> > > prefix. Add "nxp," prefix to comply with DT best practises.
> >
> > The opposite direction would be worth carrying in the driver, but I
> > don't think adding a vendor prefix is. I would just leave this as-is.
> >
> > Rob
>
> Hi Rob,
> I am not following you, can you clarify?

Just keep the property as-is and don't add a 'nxp,' prefixed version.
It's not worth carrying the fallback in the driver.

If you were dropping a vendor prefix from a property, then that's
worth it because there might be other users added.

Rob

