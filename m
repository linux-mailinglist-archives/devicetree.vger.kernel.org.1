Return-Path: <devicetree+bounces-3458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0607AEE4E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 2B6B71F25A56
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08D02AB25;
	Tue, 26 Sep 2023 14:02:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C429430
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:02:21 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E44AE9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:02:19 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so13922086e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695736934; x=1696341734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FBohR+UrQgBr4N5azTZZcBABGSeyKmANhNOajTqGdkY=;
        b=QlTIuPGJUwV+exApiZ4B2+QkGTPuWsRTgzqym1nUxd4dLovvz+OWg4TYKU1QBHAfBD
         TNmGVQHqibsyiekSR8WqmG3dg0e5qw34miSQFJx1uB5PgSm76iZcmZOZ/XbKpVqi4/oS
         KCAem1sYeHEAMqtEWQ8fnvDWF5THBJwNl2Dmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695736934; x=1696341734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBohR+UrQgBr4N5azTZZcBABGSeyKmANhNOajTqGdkY=;
        b=aAziuRM3wylQocPdbSSZEO4ohvTLJthkDFTP6ki/l7n1+9oYScWUK22pmenQu9sRzn
         VV4e/h96csNUfw9NzgwiZ2TsCmM2KFaW9JdxnjCoqTiQ8h5xFLhCj+x4FEdE9GmEq94b
         BGEcXF9K4OeWTnPIeKn8xPrIWvdZps2BmQOJ7CbAA/Qena90e8bMDR6DM7TDL5AOk3sR
         1AaHyow5uUb0cDQXX95cH7lrNH2ST1nHkeQjSaC95eGKt5jU8WZl8ezanBg+DAYEYLW4
         R1QSIhHCbxK0disXJPd+JwGgCKssvPpwHr6HYs8MwGH9byfR8YYEIgbi3eP+NCxbT3qo
         m0iQ==
X-Gm-Message-State: AOJu0Yw1cpSbGRkR7e3ZXyqmga2N3ZqM8oYH56se7rzAj+YiLn4blS1z
	WSLD0ZmBhSGptAh0slq/1biAWIN+bFn5IGG1RdBLHOjY
X-Google-Smtp-Source: AGHT+IFX2g8SpI4YoYrWCQQMzJwDfu60JFZdfNyBEMOzA5qszl/EIIm/En4x5Z/TOupOqyqNBxVxtQ==
X-Received: by 2002:ac2:58e9:0:b0:4fe:15b5:a5f9 with SMTP id v9-20020ac258e9000000b004fe15b5a5f9mr7854810lfo.54.1695736934107;
        Tue, 26 Sep 2023 07:02:14 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id y18-20020ac255b2000000b00500a44e158csm2200120lfg.235.2023.09.26.07.02.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 07:02:13 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50348c54439so4764e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:02:13 -0700 (PDT)
X-Received: by 2002:ac2:548e:0:b0:501:a2b4:8ff5 with SMTP id
 t14-20020ac2548e000000b00501a2b48ff5mr54282lfk.7.1695736932511; Tue, 26 Sep
 2023 07:02:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925150010.1.Iff672233861bcc4cf25a7ad0a81308adc3bda8a4@changeid>
 <b0037c9f-588b-4eb8-6415-0fe75bed264f@collabora.com>
In-Reply-To: <b0037c9f-588b-4eb8-6415-0fe75bed264f@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 26 Sep 2023 07:01:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
Message-ID: <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Move AUX B116XW03 out of panel-edp back to panel-simple
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, 
	Hsin-Yi Wang <hsinyi@chromium.org>, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>, airlied@gmail.com, daniel@ffwll.ch, 
	jitao.shi@mediatek.com, linus.walleij@linaro.org, 
	linux-kernel@vger.kernel.org, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, sam@ravnborg.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Sep 26, 2023 at 1:06=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 26/09/23 00:00, Douglas Anderson ha scritto:
> > In commit 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of
> > panel-simple") I moved a pile of panels out of panel-simple driver
> > into the newly created panel-edp driver. One of those panels, however,
> > shouldn't have been moved.
> >
> > As is clear from commit e35e305eff0f ("drm/panel: simple: Add AUO
> > B116XW03 panel support"), AUX B116XW03 is an LVDS panel. It's used in
> > exynos5250-snow and exynos5420-peach-pit where it's clear that the
> > panel is hooked up with LVDS. Furthermore, searching for datasheets I
> > found one that makes it clear that this panel is LVDS.
> >
> > As far as I can tell, I got confused because in commit 88d3457ceb82
> > ("drm/panel: auo,b116xw03: fix flash backlight when power on") Jitao
> > Shi added "DRM_MODE_CONNECTOR_eDP". That seems wrong. Looking at the
> > downstream ChromeOS trees, it seems like some Mediatek boards are
> > using a panel that they call "auo,b116xw03" that's an eDP panel. The
> > best I can guess is that they actually have a different panel that has
> > similar timing. If so then the proper panel should be used or they
> > should switch to the generic "edp-panel" compatible.
> >
> > When moving this back to panel-edp, I wasn't sure what to use for
> > .bus_flags and .bus_format and whether to add the extra "enable" delay
> > from commit 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash
> > backlight when power on"). I've added formats/flags/delays based on my
> > (inexpert) analysis of the datasheet. These are untested.
> >
> > NOTE: if/when this is backported to stable, we might run into some
> > trouble. Specifically, before 474c162878ba ("arm64: dts: mt8183:
> > jacuzzi: Move panel under aux-bus") this panel was used by
> > "mt8183-kukui-jacuzzi", which assumed it was an eDP panel. I don't
> > know what to suggest for that other than someone making up a bogus
> > panel for jacuzzi that's just for the stable channel.
> >
> > Fixes: 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when=
 power on")
> > Fixes: 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of panel-simp=
le")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > I haven't had a snow or peach-pit hooked up for debugging / testing
> > for years. I presume that they must be broken and hope that this fixes
> > them.
>
> We could avoid backport breakages by avoiding to backport this to any ker=
nel
> that doesn't contain commit 474c162878ba ("arm64: dts: mt8183: jacuzzi: M=
ove
> panel under aux-bus")... because creating a dummy panel to get two wrongs
> right is definitely not ok.

Sure, except that leaves us with ... a breakage. :-P

Although I haven't tested it, I have a hard time believing that
exynos5250-snow and exynos5420-peach-pit will work properly with the
panel defined as an eDP panel. That means that they will be broken. If
someone cared to get those fixed in a stable backport then we'd be
stuck deciding who to break. If you have any brilliant ideas then I'm
all ears.

...then again, I presume this has been broken since commit
88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when power
on"). That was a little over 3 years ago. Maybe I'm wrong and somehow
things still limp along and sorta work even though the panel is
defined incorrectly?

-Doug

