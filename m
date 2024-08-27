Return-Path: <devicetree+bounces-97221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DC096180A
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 21:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B73A1F249B4
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 19:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A346D1D1F58;
	Tue, 27 Aug 2024 19:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LCvtAl4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC0D1C6F56
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 19:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724787085; cv=none; b=lWvt6K1gYIlfWqJSG5dzTDhVRZl8K0QXBkEQPYfptcA7j1NDZO8nytJlHK72l+8TmsY3TmvFMZuq3rT25ZScxcy0TdamqZgNaQNED1tFaGi7Gc6DPKfqEruAZmUEsGj3ZNVkBEGJx9Yv31IEZsFWtvEWVXDgdv3b35sTsvUq4SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724787085; c=relaxed/simple;
	bh=T6Gc7IagPDiIeIpVlgHMgeMNX//208zTDI7EtxaFhQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ax5g9H+RgWMCllRjASEY7q/eI7rDwWRkPh3aSuNS/0HkjV8D4THIlqqmfxS3iYI6NfR9cItdSLjUZox5yh7WwQoeXEu8McfGw6vH21mTBcSCDvo0M5b2Gm5nFIRyhUrn00sgE/5sZKMuXc6Cc2GB3x5amy4P6gj46QBB8tTEVh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LCvtAl4N; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3db130a872fso704634b6e.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 12:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724787081; x=1725391881; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WgLdThQMvvxQD0GtX+hFcwHT8qG9FGW2/1VwCCGBPww=;
        b=LCvtAl4N3KKJB0cI3ecAVBXWxoiEsILCFWj+o+TeLfNcIq8UA1wY053RXBZ9sO1pX2
         qmlp4I8z2eYXjHcm3Ibvb5A/gqVSb+xv7/8/c5HTH3Cz8QjcU2n0lfScRw9+9KS5brZB
         lU0NPRjjAQkd4U+DxoykCLAgnHalvpZ31u5Gg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724787081; x=1725391881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WgLdThQMvvxQD0GtX+hFcwHT8qG9FGW2/1VwCCGBPww=;
        b=tvI4l8MZEyn1mCjBu8Na4Qs1507g8gFlbE6QrJ8RxIn6WJ1kHVpb4vK2gLnP8QJ9rF
         pDWlMdI/7BWL2muZgjPO2qBgOlTlGg1HWT9t1BoPNCQTW5c5B15cHOFgARAkvkH55AhY
         XNMmSdVlBGxm+mDVvO9vVkhsXMiAWJnw/LOsFeelAFeYKAWM5YMHJy6ePr/ia/YKjVYG
         sEqQcSzJR/8qEMrzFSRE0eJNmuJeQqLytxDvK7dmr9YkXLJOvW5bFuyKFytD6ZOTRKR9
         ccHCCIgY8DES2rlTEHWMQcZBJtju8SVWFX3rXh0GYsYsy8TvHsDOczxOFcnojUsUJAnl
         8FQA==
X-Forwarded-Encrypted: i=1; AJvYcCUCBVa2tGwgFaoMSPMZ+ZRe/mpo+tTTTvM3JGiT+gbfyCaqOkldcjr+DeQhfgC/zqsaf4sUDP7plbB0@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ7D3SyfFsDd4zOa4w+EVpXhrSgMu7TFCKflxgBkkLgqeI3338
	xDX7I8bcxy8EYrjZspamv6XfXDVsuicZaVxXTyWJBQGbs8vUIkjvm7zqGkDeLAx+OXCoTAFurdo
	=
X-Google-Smtp-Source: AGHT+IFVybXuWFwjD/4YhvXI1RZrFYbwl9QHJvXb0yKND2diF9p8eZSVdbNwGF5rHUmMNnSW9OHeaA==
X-Received: by 2002:a05:6808:114d:b0:3da:a48b:d1eb with SMTP id 5614622812f47-3def3f6918dmr3797836b6e.21.1724787081039;
        Tue, 27 Aug 2024 12:31:21 -0700 (PDT)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com. [209.85.219.49])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-454fe196a57sm55534871cf.70.2024.08.27.12.31.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 12:31:20 -0700 (PDT)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf6755323cso34510616d6.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 12:31:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3MK048hlaHjE7Xsv1vV4+bMZKqj7YCfzPrAY6h2shjbqh1A5FIxul6aEbHCGBHGjwGh28w6EghQwi@vger.kernel.org
X-Received: by 2002:a05:6214:2d45:b0:6b5:468e:d417 with SMTP id
 6a1803df08f44-6c32b6ba466mr42369256d6.23.1724787079270; Tue, 27 Aug 2024
 12:31:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-2-31b7f2f658a3@linaro.org>
 <7daa3c0d-cecf-4f50-be32-ae116b920db0@linaro.org> <ZpUcI3KkIa58zC55@linaro.org>
 <d1603248-afe8-4594-9e2e-81ba208dff00@linaro.org> <CAD=FV=WimxYmDrkfn0+E3MbXp8kS9TicN2kT3AM4eM+SAwYsOg@mail.gmail.com>
 <CAD=FV=XfvD1OniNBrCrA8C6XjOB15fye8EdnniNmgpu4DnpH6w@mail.gmail.com>
 <CAD=FV=Vp1Trv2JeFtqk2=Zhi0B7io5w402GkG_UhYm2q34q8dw@mail.gmail.com> <aa0f4f1c-3043-4b03-8b9f-f9a39f3682aa@linaro.org>
In-Reply-To: <aa0f4f1c-3043-4b03-8b9f-f9a39f3682aa@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 27 Aug 2024 12:31:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xw_Zpf3zpWMzK0tU-L+sUTiq05uZS5Z-Knci=9M=dGGA@mail.gmail.com>
Message-ID: <CAD=FV=Xw_Zpf3zpWMzK0tU-L+sUTiq05uZS5Z-Knci=9M=dGGA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] Revert "drm/panel-edp: Add SDC ATNA45AF01"
To: neil.armstrong@linaro.org
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2024 at 9:26=E2=80=AFAM <neil.armstrong@linaro.org> wrote:
>
> On 27/08/2024 17:36, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 22, 2024 at 8:49=E2=80=AFAM Doug Anderson <dianders@chromiu=
m.org> wrote:
> >>
> >> Hi,
> >>
> >> On Mon, Jul 15, 2024 at 6:51=E2=80=AFAM Doug Anderson <dianders@chromi=
um.org> wrote:
> >>>
> >>> Hi,
> >>>
> >>> On Mon, Jul 15, 2024 at 6:02=E2=80=AFAM Neil Armstrong
> >>> <neil.armstrong@linaro.org> wrote:
> >>>>
> >>>> On 15/07/2024 14:54, Stephan Gerhold wrote:
> >>>>> On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
> >>>>>> On 15/07/2024 14:15, Stephan Gerhold wrote:
> >>>>>>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
> >>>>>>>
> >>>>>>> The panel should be handled through the samsung-atna33xc20 driver=
 for
> >>>>>>> correct power up timings. Otherwise the backlight does not work c=
orrectly.
> >>>>>>>
> >>>>>>> We have existing users of this panel through the generic "edp-pan=
el"
> >>>>>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works=
 only
> >>>>>>> partially in that configuration: It works after boot but once the=
 screen
> >>>>>>> gets disabled it does not turn on again until after reboot. It be=
haves the
> >>>>>>> same way with the default "conservative" timings, so we might as =
well drop
> >>>>>>> the configuration from the panel-edp driver. That way, users with=
 old DTBs
> >>>>>>> will get a warning and can move to the new driver.
> >>>>>>>
> >>>>>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >>>>>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> >>>>>>> ---
> >>>>>>>     drivers/gpu/drm/panel/panel-edp.c | 2 --
> >>>>>>>     1 file changed, 2 deletions(-)
> >>>>>>>
> >>>>>>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/=
panel/panel-edp.c
> >>>>>>> index 3a574a9b46e7..d2d682385e89 100644
> >>>>>>> --- a/drivers/gpu/drm/panel/panel-edp.c
> >>>>>>> +++ b/drivers/gpu/drm/panel/panel-edp.c
> >>>>>>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_pan=
els[] =3D {
> >>>>>>>      EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d=
200, "Unknown"),
> >>>>>>>      EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d=
200, "Unknown"),
> >>>>>>> -   EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "=
ATNA45AF01"),
> >>>>>>> -
> >>>>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "=
LQ140M1JW48"),
> >>>>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "L=
Q140M1JW46"),
> >>>>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "=
LQ140T1JH01"),
> >>>>>>>
> >>>>>>
> >>>>>> How will we handle current/old crd DT with new kernels ?
> >>>>>>
> >>>>>
> >>>>> I think this is answered in the commit message:
> >>>>>
> >>>>>>> We have existing users of this panel through the generic "edp-pan=
el"
> >>>>>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works=
 only
> >>>>>>> partially in that configuration: It works after boot but once the=
 screen
> >>>>>>> gets disabled it does not turn on again until after reboot. It be=
haves the
> >>>>>>> same way with the default "conservative" timings, so we might as =
well drop
> >>>>>>> the configuration from the panel-edp driver. That way, users with=
 old DTBs
> >>>>>>> will get a warning and can move to the new driver.
> >>>>>
> >>>>> Basically with the entry removed, the panel-edp driver will fallbac=
k to
> >>>>> default "conservative" timings when using old DTBs. There will be a
> >>>>> warning in dmesg, but otherwise the panel will somewhat work just a=
s
> >>>>> before. I think this is a good way to remind users to upgrade.
> >>>>
> >>>> I consider this as a regression
> >>>>
> >>>>>
> >>>>>> Same question for patch 3, thie serie introduces a bindings that w=
on't be valid
> >>>>>> if we backport patch 3. I don't think patch should be backported, =
and this patch
> >>>>>> should be dropped.
> >>>>>
> >>>>> There would be a dtbs_check warning, yeah. Functionally, it would w=
ork
> >>>>> just fine. Is that reason enough to keep display partially broken f=
or
> >>>>> 6.11? We could also apply the minor binding change for 6.11 if need=
ed.
> >>>>
> >>>> I don't know how to answer this, I'll let the DT maintainer comment =
this.
> >>>>
> >>>> The problem is I do not think we can pass the whole patchset as fixe=
s
> >>>> for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.
> >>>>
> >>>> Neil
> >>>
> >>> IMO: patch #3 (dts) and #4 (CONFIG) go through the Qualcomm tree
> >>> whenever those folks agree to it. If we're worried about the
> >>> dtbs_check breakage I personally wouldn't mind "Ack"ing patch #1 to g=
o
> >>> through the Qualcomm tree as long as it made it into 6.11-rc1. I have
> >>> a hunch that there are going to be more Samsung OLED panels in the
> >>> future that will need to touch the same file, but if the change is in
> >>> -rc1 it should make it back into drm-misc quickly, right?
> >>>
> >>> Personally I think patch #2 could go in anytime since, as people have
> >>> said, things are pretty broken today and the worst that happens is
> >>> that someone gets an extra warning. That would be my preference. That
> >>> being said, we could also snooze that patch for a month or two and
> >>> land it later. There's no real hurry.
> >>
> >> For now I'm going to snooze this patch for a month just to avoid any
> >> controversy. I'll plan to apply it (to drm-misc-next) when I see the
> >> device tree patch land. Since the device tree patch should land as a
> >> fix that should keep things landing in the correct order. ...and, as
> >> per above, the worst case is that if someone has an old DTS and a new
> >> kernel then a panel that was already not working well will print a fat
> >> warning and startup a bit slower.
> >>
> >> If somehow I mess up and forget about this patch, feel free to send me
> >> a poke when the device tree patch is landed.
> >
> > More than a month has passed now. One last warning before I apply this
> > revert in a few more days.
>
> It's fine if you apply it now

Thanks! Pushed to drm-misc-next:

[2/4] Revert "drm/panel-edp: Add SDC ATNA45AF01"
      commit: 01cc7b2e8a59fcae0c4493720561e5b33a195fe7

-Doug

