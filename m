Return-Path: <devicetree+bounces-6268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 275697BA913
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 20:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CBAD9281D82
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA98F3FB16;
	Thu,  5 Oct 2023 18:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OzSvd+wJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D4D3FB0A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 18:28:26 +0000 (UTC)
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EDCF9E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 11:28:24 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6c4e38483d2so857266a34.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 11:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696530503; x=1697135303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMcqqa1LovqwpJcoFuXPlVZW2k01ePyUDHDlcXz2dos=;
        b=OzSvd+wJp9+/+sFsxMN2fO+mXmeKWLbsBCDX5x/Tl0LxQfoDmrNZh+YlHO1dhQJyay
         wNOTTC+ZUj9/s6L6shzRsPLZEXlYYCRcwLkOXrImw6aR1W0sqahsJjboz2n0f5BGTxIF
         IuyNrt+/JTKGyvSGevc5HEtQ7jPL6nqhs3rIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696530503; x=1697135303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OMcqqa1LovqwpJcoFuXPlVZW2k01ePyUDHDlcXz2dos=;
        b=vnkUNgf+caOoHUv5WVjA1wBcYeIkqZkCtE0V4iL7Qy2p8n0dJf1p0nossdc9OarF8B
         tDvdmWxr4Q6f2GrtMP4j55v+zLSuNWepClfvevrP8wVNrinlQlqX4sDNpKSHMSS0srmU
         HkEfNe85TA6mDr7bJJeubq9NKxHP8VSYMsd2kyiUn5zXt2y0aSN1G401tgGKr2x7Xny3
         iRNhe2je3iQiqDD3ZaTRHSUotxcKc4n8TGYxwdSrO5pomr4sYN+obnBt92O1pqF35JX7
         Ueg+M6/mhzQsrtSIsvce93MC0wMg+rFVn5o6W73DcM3G3hjnAC8Z6lMSl7tGo0Vjuvur
         vQMw==
X-Gm-Message-State: AOJu0YznnDuWuXzfu19p54U2Z6jt8dzWakFyG5qT2JXHVocN6vIcBKnc
	UWqTIoHt97+WWuQ36RfgLMJbHEJZHF1T7xlC0z//9w==
X-Google-Smtp-Source: AGHT+IHYbHMUrTrmor7aa2xPGaR96QNF9urqFDhCGJGtucSFIieFcvATx/342Mtzc1GeLA+R4C8NjgkMA9Je+0IfIJw=
X-Received: by 2002:a9d:6e09:0:b0:6b9:ed64:1423 with SMTP id
 e9-20020a9d6e09000000b006b9ed641423mr5935370otr.2.1696530502812; Thu, 05 Oct
 2023 11:28:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925150010.1.Iff672233861bcc4cf25a7ad0a81308adc3bda8a4@changeid>
 <b0037c9f-588b-4eb8-6415-0fe75bed264f@collabora.com> <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
 <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
In-Reply-To: <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 5 Oct 2023 11:27:57 -0700
Message-ID: <CAJMQK-gHVRFbkBDP3Mbo8ofEPjK=ckpi+xaJvPFc_gr1ZFTfXw@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Move AUX B116XW03 out of panel-edp back to panel-simple
To: Doug Anderson <dianders@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, 
	matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>, airlied@gmail.com, daniel@ffwll.ch, 
	jitao.shi@mediatek.com, linus.walleij@linaro.org, 
	linux-kernel@vger.kernel.org, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	Anton Bambura <jenneron@protonmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 11:11=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Tue, Sep 26, 2023 at 7:01=E2=80=AFAM Doug Anderson <dianders@chromium.=
org> wrote:
> >
> > Hi,
> >
> > On Tue, Sep 26, 2023 at 1:06=E2=80=AFAM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> > >
> > > Il 26/09/23 00:00, Douglas Anderson ha scritto:
> > > > In commit 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of
> > > > panel-simple") I moved a pile of panels out of panel-simple driver
> > > > into the newly created panel-edp driver. One of those panels, howev=
er,
> > > > shouldn't have been moved.
> > > >
> > > > As is clear from commit e35e305eff0f ("drm/panel: simple: Add AUO
> > > > B116XW03 panel support"), AUX B116XW03 is an LVDS panel. It's used =
in
> > > > exynos5250-snow and exynos5420-peach-pit where it's clear that the
> > > > panel is hooked up with LVDS. Furthermore, searching for datasheets=
 I
> > > > found one that makes it clear that this panel is LVDS.
> > > >
> > > > As far as I can tell, I got confused because in commit 88d3457ceb82
> > > > ("drm/panel: auo,b116xw03: fix flash backlight when power on") Jita=
o
> > > > Shi added "DRM_MODE_CONNECTOR_eDP". That seems wrong. Looking at th=
e
> > > > downstream ChromeOS trees, it seems like some Mediatek boards are
> > > > using a panel that they call "auo,b116xw03" that's an eDP panel. Th=
e
> > > > best I can guess is that they actually have a different panel that =
has
> > > > similar timing. If so then the proper panel should be used or they
> > > > should switch to the generic "edp-panel" compatible.
> > > >
> > > > When moving this back to panel-edp, I wasn't sure what to use for
> > > > .bus_flags and .bus_format and whether to add the extra "enable" de=
lay
> > > > from commit 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash
> > > > backlight when power on"). I've added formats/flags/delays based on=
 my
> > > > (inexpert) analysis of the datasheet. These are untested.
> > > >
> > > > NOTE: if/when this is backported to stable, we might run into some
> > > > trouble. Specifically, before 474c162878ba ("arm64: dts: mt8183:
> > > > jacuzzi: Move panel under aux-bus") this panel was used by
> > > > "mt8183-kukui-jacuzzi", which assumed it was an eDP panel. I don't
> > > > know what to suggest for that other than someone making up a bogus
> > > > panel for jacuzzi that's just for the stable channel.
> > > >
> > > > Fixes: 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight =
when power on")
> > > > Fixes: 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of panel-=
simple")
> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > ---
> > > > I haven't had a snow or peach-pit hooked up for debugging / testing
> > > > for years. I presume that they must be broken and hope that this fi=
xes
> > > > them.
> > >
> > > We could avoid backport breakages by avoiding to backport this to any=
 kernel
> > > that doesn't contain commit 474c162878ba ("arm64: dts: mt8183: jacuzz=
i: Move
> > > panel under aux-bus")... because creating a dummy panel to get two wr=
ongs
> > > right is definitely not ok.
> >
> > Sure, except that leaves us with ... a breakage. :-P
> >
> > Although I haven't tested it, I have a hard time believing that
> > exynos5250-snow and exynos5420-peach-pit will work properly with the
> > panel defined as an eDP panel. That means that they will be broken. If
> > someone cared to get those fixed in a stable backport then we'd be
> > stuck deciding who to break. If you have any brilliant ideas then I'm
> > all ears.
> >
> > ...then again, I presume this has been broken since commit
> > 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when power
> > on"). That was a little over 3 years ago. Maybe I'm wrong and somehow
> > things still limp along and sorta work even though the panel is
> > defined incorrectly?
>
> I dug out a exynos5250-snow out of my pile and booted postmarket OS on
> it, which was shockingly easy/pleasant (kudos to those involved!). I
> found that it was booting a kernel based on 6.1.24. Digging into
> sysfs, I found that indeed it appeared to be using the "panel-edp"
> driver, so I guess it is limping along with the wrong driver and wrong
> flags...
>
> It wasn't totally clear for me how to build a new kernel and deploy it
> for postmarket OS, so I wasn't able to confirm this change. I've CCed
> the person listed on the postmarket OS wiki though to see if they have
> any insight.
>
> In any case, it sounds as if things are working well enough on older
> OSes, so maybe we can just skip trying to do any stable backport on
> this. It still seems like we should land it, though, since the current
> state of the world seems pretty broken. Anyone willing to give a
> Reviewed-by or Acked-by tag?
>

Acked-by: Hsin-Yi Wang <hsinyi@chromium.org>

> -Doug

