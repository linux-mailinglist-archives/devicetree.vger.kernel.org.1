Return-Path: <devicetree+bounces-15349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 636447E9C3F
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E69F9B209BA
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B411C6AC;
	Mon, 13 Nov 2023 12:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YBAopXch"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5363211716
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:36:44 +0000 (UTC)
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D7BBD54
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:36:41 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5bda105206fso2826356a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699879000; x=1700483800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7fd3NkmRs1TcP13IIIzHjBYBryAxIazbkG5BgzI5mE=;
        b=YBAopXchVealLhyyLVU/rrqcqLbqdoWZfLOoz2LKj9Z7alUGygMbn5i4RUDzbqwAeH
         hjfoZkP2veU/VHLm2/CPoMnR+ykRDvqgQb0zRczAMb5+TNdY54oGDSgNlGkOO//A9eWd
         NLZpCXF7qX+ejDiJZ/nKitv3e/wz1xZA/ymfoC1wzpudLv9lLxXBMbWUsW8lEI3dwxKd
         39SBVJA3lBkDloHlzsWWjG/3rzVzLOlV6A7Fx9QTWrhH5pS2gfQYwkzuGOcctEDLxy8H
         pnQc+U9Y0fPAj0nGSjVomrgjE9GW5d8o1cALASN6G09RC6EAq1TDl1l4B61H3CDvHywg
         NA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699879000; x=1700483800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N7fd3NkmRs1TcP13IIIzHjBYBryAxIazbkG5BgzI5mE=;
        b=lLjYuNQgg4I6x2ccivLo/aDDuMWd0z8v7izChYy93A/6cXgwnszVaXc7XuT69l/Oe/
         qWphWvi1hdRARfPSvcJtPLjQ1N89PjPMg50fqzJzFO+tMy8V74ODnm9PrWEYlE5DFo1G
         Esm9e4b4NSKEJIX7D+90K1piIuxSGxK3sZZUj3x3Wi4UQzoCLanlMWovi1mmD1UAj+oI
         xfhhKrDKCF+xpu0vcRf8w9gMtqeRctwaFg6kdUPDaeYQmfTmNxLQGYL+NEkkSFMRnx8Y
         o+tGKZn7mQd5Be7a7+Z7zDCqN3L6kpqeRdBSxMD4iuT3vNwSVqZwOnj6ZOa4yNkXSEBO
         6ywQ==
X-Gm-Message-State: AOJu0YzCUNyAtmPPPDOKabng3pUt9e+OiavXwP+vq/wtK1v92iwh2M4k
	3wK3shaGtOJ6VypY+xte+qeb536YbaxvmPrSP4jH6w==
X-Google-Smtp-Source: AGHT+IE2ocVhD2bFAYD17QTNw6/qm9x0sjQXoyVQ3TMdYQ8aX5bC4MlhJ9OsyJAQhpHZmmhVQdbymSnskXMsJuihPJA=
X-Received: by 2002:a17:90b:3b8b:b0:283:27e0:652c with SMTP id
 pc11-20020a17090b3b8b00b0028327e0652cmr3516045pjb.43.1699879000545; Mon, 13
 Nov 2023 04:36:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231110094553.2361842-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=UvZ9U1SYjOOBB6o2CmquAevqJZ9Ukp_kx4zGXFbp_VBA@mail.gmail.com>
In-Reply-To: <CAD=FV=UvZ9U1SYjOOBB6o2CmquAevqJZ9Ukp_kx4zGXFbp_VBA@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Mon, 13 Nov 2023 20:36:29 +0800
Message-ID: <CAHwB_NL4P183Y9RaThdEDWPaiLfaU6PxzJS0thSBLW-+FHYtRA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Doug Anderson <dianders@google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, airlied@gmail.com, zhouruihai@huaqin.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 11, 2023 at 5:10=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Fri, Nov 10, 2023 at 1:46=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The refresh reported by modotest is 60.46Hz, and the actual measurement
>
> s/modotets/modetest/
>
> > is 60.01Hz, which is outside the expected tolerance. Adjust hporch and
> > pixel clock to fix it. After repair, modetest and actual measurement we=
re
> > all 60.01Hz.
>
> Can you explain this more? Why was the rate that modetest reported
> different from the actual measured rate? This feels like it's a
> problem with your MIPI controller not being able to accurately make
> the rate. Is that it?

modetest refresh =3D Pixel CLK/ htotal  * vtotal
measurement HS->LP cycle time =3D Vblanking
According to the vendor's feedback, the actual measured frame rate is not
only affected by Htotal/Vtotal/pixel clock,  Lane-num/PixelBit/LineTime als=
o
affected. It seems that if  change to a different SOC platform,  may
need to readjust
these parameters.


>
> If so then this is a bit of a hack. Someone else using the same panel
> might have a MIPI controller that can make slightly different clock
> rates. I think you're currently the only user of the panel, so maybe
> this isn't too terrible (would love to hear other people's advice).
>
> Assuming this is actually the problem there are probably at least
> several different ways to solve this. One that comes to mind is the
> solution we ended up with for eDP where we allowed specifying some of
> this stuff in the device tree, though that might cause a whole pile of
> debates...
>
> In any case, as I said above this patch is probably OK if you're the
> only user of this panel, but it might be at least good to add
> something to the commit message?

OK, I'll add some instructions in V2. Thanks.

>
> -Doug

