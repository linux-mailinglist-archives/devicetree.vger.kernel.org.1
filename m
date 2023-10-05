Return-Path: <devicetree+bounces-6267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AE57BA8CA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 20:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9A5E81C20257
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D59AE3D3AF;
	Thu,  5 Oct 2023 18:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nQEuUKf4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FB13C6AF
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 18:11:19 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8621196
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 11:11:17 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso236269566b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 11:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696529475; x=1697134275; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1eAmFswOZzw3jH3oWLXVAcDuqGgICG6iPkOHsm6WtUk=;
        b=nQEuUKf49LJCS/U8P9SeaGkuUPWON4esVwLhUFKG/3OOwu7/7kwOPe/0xq0TaFsp/5
         6BJMkRdtlkSafdmYVjw2jKvQehzkz+RIwuIndz8/xMrhgm9o0/twtg8Yi6WgWYL4qfVz
         3nmkoVt0PumfUJOdEzrnGlIDD7EUCkEu95FC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696529475; x=1697134275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1eAmFswOZzw3jH3oWLXVAcDuqGgICG6iPkOHsm6WtUk=;
        b=kuEoX9e7qN2E2GRMBkCieH4aUGYLB3mu8BBIE7sd5wdXZ0MvnRtmB/BCinluNb/1i2
         DAmeHIgLhFqwmoHWgyXy8GQfKY05eyZVaPvaFwb3smZUuKH9Q2busz07JlmLh8oXklM0
         ZCWX5JXfZTiNfvPEAls7uUt1WAZFqhSMwAINhk7KqtH2iEVQVCeUy03yYzSyUubJZlHF
         YHW6JHfkQDkLav+nwzLhf73gsYLEH9koVmyhR7n5sLeEY/RorJWgNuQt5XeJqcdMLEHb
         mqu0dJSvh5xKqirK82Uwwbx2+x+9+dlOifQzmWHvVU+YXZY0uaZkAlgUumA7Omu+OBSg
         G4rg==
X-Gm-Message-State: AOJu0Yz9fTLYWCh4j5g83zGfWJrIo05ycgg0bzNXO1mp+DbUt5ydjLdP
	yZUeTKWhIe3Cj3lMp5NpiAv8MKt6fFXZz7PI9mfSGcA9
X-Google-Smtp-Source: AGHT+IH7KTBvsRA438Jkr8p/5B8WZopjzBhoFCqrTPVBx04thd3mf/1ZrW7TBid3ClA+gqOwrt9ysw==
X-Received: by 2002:a17:907:7787:b0:9ae:7206:963c with SMTP id ky7-20020a170907778700b009ae7206963cmr6419829ejc.15.1696529475018;
        Thu, 05 Oct 2023 11:11:15 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id p6-20020a1709061b4600b009ad81554c1bsm1554725ejg.55.2023.10.05.11.11.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Oct 2023 11:11:14 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4063bfc6c03so13445e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 11:11:14 -0700 (PDT)
X-Received: by 2002:a1c:4b18:0:b0:405:320a:44f9 with SMTP id
 y24-20020a1c4b18000000b00405320a44f9mr82899wma.5.1696529473685; Thu, 05 Oct
 2023 11:11:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925150010.1.Iff672233861bcc4cf25a7ad0a81308adc3bda8a4@changeid>
 <b0037c9f-588b-4eb8-6415-0fe75bed264f@collabora.com> <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
In-Reply-To: <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 5 Oct 2023 11:10:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
Message-ID: <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Move AUX B116XW03 out of panel-edp back to panel-simple
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, 
	Hsin-Yi Wang <hsinyi@chromium.org>, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>, airlied@gmail.com, daniel@ffwll.ch, 
	jitao.shi@mediatek.com, linus.walleij@linaro.org, 
	linux-kernel@vger.kernel.org, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	Anton Bambura <jenneron@protonmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Sep 26, 2023 at 7:01=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Tue, Sep 26, 2023 at 1:06=E2=80=AFAM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Il 26/09/23 00:00, Douglas Anderson ha scritto:
> > > In commit 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of
> > > panel-simple") I moved a pile of panels out of panel-simple driver
> > > into the newly created panel-edp driver. One of those panels, however=
,
> > > shouldn't have been moved.
> > >
> > > As is clear from commit e35e305eff0f ("drm/panel: simple: Add AUO
> > > B116XW03 panel support"), AUX B116XW03 is an LVDS panel. It's used in
> > > exynos5250-snow and exynos5420-peach-pit where it's clear that the
> > > panel is hooked up with LVDS. Furthermore, searching for datasheets I
> > > found one that makes it clear that this panel is LVDS.
> > >
> > > As far as I can tell, I got confused because in commit 88d3457ceb82
> > > ("drm/panel: auo,b116xw03: fix flash backlight when power on") Jitao
> > > Shi added "DRM_MODE_CONNECTOR_eDP". That seems wrong. Looking at the
> > > downstream ChromeOS trees, it seems like some Mediatek boards are
> > > using a panel that they call "auo,b116xw03" that's an eDP panel. The
> > > best I can guess is that they actually have a different panel that ha=
s
> > > similar timing. If so then the proper panel should be used or they
> > > should switch to the generic "edp-panel" compatible.
> > >
> > > When moving this back to panel-edp, I wasn't sure what to use for
> > > .bus_flags and .bus_format and whether to add the extra "enable" dela=
y
> > > from commit 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash
> > > backlight when power on"). I've added formats/flags/delays based on m=
y
> > > (inexpert) analysis of the datasheet. These are untested.
> > >
> > > NOTE: if/when this is backported to stable, we might run into some
> > > trouble. Specifically, before 474c162878ba ("arm64: dts: mt8183:
> > > jacuzzi: Move panel under aux-bus") this panel was used by
> > > "mt8183-kukui-jacuzzi", which assumed it was an eDP panel. I don't
> > > know what to suggest for that other than someone making up a bogus
> > > panel for jacuzzi that's just for the stable channel.
> > >
> > > Fixes: 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight wh=
en power on")
> > > Fixes: 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of panel-si=
mple")
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > > I haven't had a snow or peach-pit hooked up for debugging / testing
> > > for years. I presume that they must be broken and hope that this fixe=
s
> > > them.
> >
> > We could avoid backport breakages by avoiding to backport this to any k=
ernel
> > that doesn't contain commit 474c162878ba ("arm64: dts: mt8183: jacuzzi:=
 Move
> > panel under aux-bus")... because creating a dummy panel to get two wron=
gs
> > right is definitely not ok.
>
> Sure, except that leaves us with ... a breakage. :-P
>
> Although I haven't tested it, I have a hard time believing that
> exynos5250-snow and exynos5420-peach-pit will work properly with the
> panel defined as an eDP panel. That means that they will be broken. If
> someone cared to get those fixed in a stable backport then we'd be
> stuck deciding who to break. If you have any brilliant ideas then I'm
> all ears.
>
> ...then again, I presume this has been broken since commit
> 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when power
> on"). That was a little over 3 years ago. Maybe I'm wrong and somehow
> things still limp along and sorta work even though the panel is
> defined incorrectly?

I dug out a exynos5250-snow out of my pile and booted postmarket OS on
it, which was shockingly easy/pleasant (kudos to those involved!). I
found that it was booting a kernel based on 6.1.24. Digging into
sysfs, I found that indeed it appeared to be using the "panel-edp"
driver, so I guess it is limping along with the wrong driver and wrong
flags...

It wasn't totally clear for me how to build a new kernel and deploy it
for postmarket OS, so I wasn't able to confirm this change. I've CCed
the person listed on the postmarket OS wiki though to see if they have
any insight.

In any case, it sounds as if things are working well enough on older
OSes, so maybe we can just skip trying to do any stable backport on
this. It still seems like we should land it, though, since the current
state of the world seems pretty broken. Anyone willing to give a
Reviewed-by or Acked-by tag?

-Doug

