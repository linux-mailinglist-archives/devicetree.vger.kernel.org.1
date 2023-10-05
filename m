Return-Path: <devicetree+bounces-6306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 471EF7BAAC4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 21:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1C862281F86
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298E74177C;
	Thu,  5 Oct 2023 19:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="gkP75ATk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082D44176E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 19:56:06 +0000 (UTC)
X-Greylist: delayed 567 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 05 Oct 2023 12:56:03 PDT
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [213.239.216.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 039DA193;
	Thu,  5 Oct 2023 12:56:02 -0700 (PDT)
Received: from [192.168.1.177] (unknown [10.0.0.254])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id C3509140B01;
	Thu,  5 Oct 2023 19:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1696535193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cIOhWmDhaGKnIOKqSallat4hBjPWg9wv14CRRkvBnO8=;
	b=gkP75ATkFuJkXErAW/PpJat6k5/Htnp9NLF6G0yL5FPd9zb3e7/4+WegrFXn/YJQD6dv0d
	wDuXLaeWdpjeOiVL+s7MmiUVDSub0JXNcdNWf290sEABUVFheVGLr10eIByPNP109dIJ7u
	WbIGNxc7cBE21VbaBcnx/e9oYMG/TFg=
Message-ID: <fe78f7e4-9655-639c-4a8c-120daa221ce7@postmarketos.org>
Date: Thu, 5 Oct 2023 22:46:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] drm/panel: Move AUX B116XW03 out of panel-edp back to
 panel-simple
Content-Language: en-US
To: Doug Anderson <dianders@chromium.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>, airlied@gmail.com,
 daniel@ffwll.ch, jitao.shi@mediatek.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 quic_jesszhan@quicinc.com, sam@ravnborg.org,
 Anton Bambura <jenneron@protonmail.com>
References: <20230925150010.1.Iff672233861bcc4cf25a7ad0a81308adc3bda8a4@changeid>
 <b0037c9f-588b-4eb8-6415-0fe75bed264f@collabora.com>
 <CAD=FV=UWQgLLfU4X+6OUR5AWOkJKwG9J7BbKGRCgze6LTY6JNw@mail.gmail.com>
 <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
From: Anton Bambura <jenneron@postmarketos.org>
In-Reply-To: <CAD=FV=UqG6DiAyjcLKeoUWKutepGd46Zx=8O-NWKoYC-fZEG6g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 10/5/23 21:10, Doug Anderson wrote:

> Hi,
>
> On Tue, Sep 26, 2023 at 7:01 AM Doug Anderson <dianders@chromium.org> wrote:
>> Hi,
>>
>> On Tue, Sep 26, 2023 at 1:06 AM AngeloGioacchino Del Regno
>> <angelogioacchino.delregno@collabora.com> wrote:
>>> Il 26/09/23 00:00, Douglas Anderson ha scritto:
>>>> In commit 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of
>>>> panel-simple") I moved a pile of panels out of panel-simple driver
>>>> into the newly created panel-edp driver. One of those panels, however,
>>>> shouldn't have been moved.
>>>>
>>>> As is clear from commit e35e305eff0f ("drm/panel: simple: Add AUO
>>>> B116XW03 panel support"), AUX B116XW03 is an LVDS panel. It's used in
>>>> exynos5250-snow and exynos5420-peach-pit where it's clear that the
>>>> panel is hooked up with LVDS. Furthermore, searching for datasheets I
>>>> found one that makes it clear that this panel is LVDS.
>>>>
>>>> As far as I can tell, I got confused because in commit 88d3457ceb82
>>>> ("drm/panel: auo,b116xw03: fix flash backlight when power on") Jitao
>>>> Shi added "DRM_MODE_CONNECTOR_eDP". That seems wrong. Looking at the
>>>> downstream ChromeOS trees, it seems like some Mediatek boards are
>>>> using a panel that they call "auo,b116xw03" that's an eDP panel. The
>>>> best I can guess is that they actually have a different panel that has
>>>> similar timing. If so then the proper panel should be used or they
>>>> should switch to the generic "edp-panel" compatible.
>>>>
>>>> When moving this back to panel-edp, I wasn't sure what to use for
>>>> .bus_flags and .bus_format and whether to add the extra "enable" delay
>>>> from commit 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash
>>>> backlight when power on"). I've added formats/flags/delays based on my
>>>> (inexpert) analysis of the datasheet. These are untested.
>>>>
>>>> NOTE: if/when this is backported to stable, we might run into some
>>>> trouble. Specifically, before 474c162878ba ("arm64: dts: mt8183:
>>>> jacuzzi: Move panel under aux-bus") this panel was used by
>>>> "mt8183-kukui-jacuzzi", which assumed it was an eDP panel. I don't
>>>> know what to suggest for that other than someone making up a bogus
>>>> panel for jacuzzi that's just for the stable channel.
>>>>
>>>> Fixes: 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when power on")
>>>> Fixes: 5f04e7ce392d ("drm/panel-edp: Split eDP panels out of panel-simple")
>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>> ---
>>>> I haven't had a snow or peach-pit hooked up for debugging / testing
>>>> for years. I presume that they must be broken and hope that this fixes
>>>> them.
>>> We could avoid backport breakages by avoiding to backport this to any kernel
>>> that doesn't contain commit 474c162878ba ("arm64: dts: mt8183: jacuzzi: Move
>>> panel under aux-bus")... because creating a dummy panel to get two wrongs
>>> right is definitely not ok.
>> Sure, except that leaves us with ... a breakage. :-P
>>
>> Although I haven't tested it, I have a hard time believing that
>> exynos5250-snow and exynos5420-peach-pit will work properly with the
>> panel defined as an eDP panel. That means that they will be broken. If
>> someone cared to get those fixed in a stable backport then we'd be
>> stuck deciding who to break. If you have any brilliant ideas then I'm
>> all ears.
>>
>> ...then again, I presume this has been broken since commit
>> 88d3457ceb82 ("drm/panel: auo,b116xw03: fix flash backlight when power
>> on"). That was a little over 3 years ago. Maybe I'm wrong and somehow
>> things still limp along and sorta work even though the panel is
>> defined incorrectly?
> I dug out a exynos5250-snow out of my pile and booted postmarket OS on
> it, which was shockingly easy/pleasant (kudos to those involved!). I
> found that it was booting a kernel based on 6.1.24. Digging into
> sysfs, I found that indeed it appeared to be using the "panel-edp"
> driver, so I guess it is limping along with the wrong driver and wrong
> flags...

Hi. I'm the maintainer of chromebooks (including exynos 5 ones) in 
postmarketOS.

We are indeed on 6.1.24 yet, but we will upgrade it to the latest LTS soon.

> It wasn't totally clear for me how to build a new kernel and deploy it
> for postmarket OS, so I wasn't able to confirm this change. I've CCed
> the person listed on the postmarket OS wiki though to see if they have
> any insight.

The recommended way to build kernel is envkernel, see

https://wiki.postmarketos.org/wiki/Compiling_kernels_with_envkernel.sh. 
This way you can build kernel, package it and sideload it to your 
device, so it will get installed including updating /lib/modules and 
flashing chrome os kernel partition.

You would need to source envkernel.sh in your kernel tree, place kernel 
config at .output/.config, build it and perform:
pmbootstrap build --envkernel linux-postmarketos-exynos5
pmbootstrap sideload --install-key --host <ip> linux-postmarketos-exynos5

We use lts branch of https://gitlab.com/exynos5-mainline/linux with this 
config:

https://gitlab.com/postmarketOS/pmaports/-/blob/master/device/community/linux-postmarketos-exynos5/config-postmarketos-exynos5.armv7

>
> In any case, it sounds as if things are working well enough on older
> OSes, so maybe we can just skip trying to do any stable backport on
> this. It still seems like we should land it, though, since the current
> state of the world seems pretty broken. Anyone willing to give a
> Reviewed-by or Acked-by tag?
>
> -Doug
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



