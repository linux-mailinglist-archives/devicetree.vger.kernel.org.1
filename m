Return-Path: <devicetree+bounces-7036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EFA7BEBFD
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E70A6281AD1
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22DDB3FB03;
	Mon,  9 Oct 2023 20:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="4PAbeZeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9120838DF0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:53:30 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CE34A3
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:53:28 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-405459d9a96so143415e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 13:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696884807; x=1697489607; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=59tO/iIlQ73UqQX7Kk8ekqFEIp7s2Jv+HxK9i4t6u3Q=;
        b=4PAbeZeQOmiEMgjmxfj2C2RZ90qgO4DgR1wDrauJS5k77bR0M9C1Ua7XcDtRTbisUB
         u8CJndvzycWIGDaMHOdfP/rUVshbnFBETF4Vv553OCQhqrkvPdzjQwZtng/WB7UA/Nbc
         MWyhOcXiYQoRWnHzfuVfri2hoiNzWDbB5ryCdqzsdn/loTXVa3jhcxazP9vO+LKkF1oN
         4BTAvlRYRkEYTSTBA7oi5o9xaTeqKmqxMC2tkMrK8RH7HaBX8Tj/bM61DatMOye/jl2M
         tC3HE0+qNDApHDR5bQDVlzb8IfdV+cFvLeq/RjOQYRJ5RE1Z5wvO9yuCGnJ/OMPjDAyt
         PPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696884807; x=1697489607;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59tO/iIlQ73UqQX7Kk8ekqFEIp7s2Jv+HxK9i4t6u3Q=;
        b=xMRZPYbtigXRs65qvKdlPUDhgGYIGL3qRJ5zcPXF7QQxNBcBbujww4K5UPaUwQbVjV
         GTm55pDrQhnYuNU6kpIGpqup/V/Ib/r1frsfavZeizXZAWjUTO4WLygEl+Z8YBh+cT/U
         Borxtcwnoa1IKwgtqa96xdQondl3ETz9Bn1e9/ADZEpyk19FyZyHn29Nbd6kvnjMGhPK
         hlr5MSeEu7ZRsEF+sdKlg6N60uqYReHdgmTuDaTbnAFT4xWNrN8xHkMWzebW0bC5kFnP
         /cWdR1eXDZsA5hoVZVNiOPlpI21f6eisc4ZoSKBC40jPnbcCSgyBncbnCpqQ0l3D5H2a
         2D1A==
X-Gm-Message-State: AOJu0YxsUvnBZBvYxP9vgS4xgpzkQSG8db5HhHg4bqu/YrvTSUrbhoxo
	erzrdjEGrHeE+ysGIaZ/jXhE4qhofPeQQUopAjdkuA==
X-Google-Smtp-Source: AGHT+IHq7N3/6OsWTZHhFPYxj2swHPTNEn7XPdgUv+UA1bljGHW5UFtKZwxam1OQNUu0b+Wrsm4hBPVG6ZOVmvI2H/o=
X-Received: by 2002:a7b:c3d8:0:b0:400:c6de:6a20 with SMTP id
 t24-20020a7bc3d8000000b00400c6de6a20mr385036wmj.3.1696884806574; Mon, 09 Oct
 2023 13:53:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com> <CACRpkdbek0-Vhk4_34qY+0=EGrQxJS_CfLuF_5fRozMMyc+=Kw@mail.gmail.com>
In-Reply-To: <CACRpkdbek0-Vhk4_34qY+0=EGrQxJS_CfLuF_5fRozMMyc+=Kw@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 9 Oct 2023 13:53:14 -0700
Message-ID: <CAD=FV=UFa_AoJQvUT3BTiRs19WCA2xLVeQOU=+nYu_HaE0_c6Q@mail.gmail.com>
Subject: Re: [v1 0/2] Break out as separate driver from boe-tv101wum-nl6 panel driver
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, hsinyi@google.com, 
	swboyd@chromium.org, airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Sun, Oct 8, 2023 at 12:33=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Sat, Oct 7, 2023 at 8:06=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > Linus series proposed to break out ili9882t as separate driver,
> > but he didn't have time for that extensive rework of the driver.
> > As discussed by Linus and Doug [1], keep macro using the "struct panel_=
init_cmd"
> > until we get some resolution about the binary size issue.
>
> OK works for me:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Dough, if it looks OK to you too, can you apply the patches?

Thanks for the review. I had a few small comments so I'd expect a v2.

I suspect it would look a little weird to add your Reviewed-by to
patch #1 since the way Cong has it you're the direct patch author. :-P
Cong, I suspect you may want to change the tagging on patch #1. I'd
suggest setting yourself as the patch author (git commit --amend
--reset-author), then tag the first patch like this (I put "x-" first
to make it obvious to any bots reading this that these are not tags to
actually apply--remove that when you tag your patch):

x-Co-developed-by: Linus Walleij <linus.walleij@linaro.org>
x-Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
x-Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
x-Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

Also: just as a heads up, Hsin-Yi measured the impact of removing the
"command table" for init and replacing it with a whole pile of direct
function calls. She found that it added over 100K to the driver (!!!).
I believe it went from a 45K driver to a 152K driver. Something to
keep in mind. ;-)

-Doug

