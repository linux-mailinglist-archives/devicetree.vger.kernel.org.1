Return-Path: <devicetree+bounces-97169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC19612E8
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 17:36:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CEB8282273
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 15:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA7D1C6886;
	Tue, 27 Aug 2024 15:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Qz3BJ7pC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E3819EEA2
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 15:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724772995; cv=none; b=jM8lzWnAx9LvEh42y0J+NupPuSAzMZi7qgyhvL/k44aE7gZm0B38oxjHBKuzsbZjV4DCJB8rVyX7PG6IrEMsBqc+xbuoI3HTpQ3d+izrHCh1DfGQYOe3EKAReEzVpXkV9rzhQOa5EEG7Hxb4oy9dyzk/m/TyORn4wY+G/Cr8evk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724772995; c=relaxed/simple;
	bh=xKBxjuzhKzHAYCEFbj9br0eAFH6a2cGlC6D9UNQ53ts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UrawWl4G/jmqqYCixCj6in3gV0dpg9CHtoHqiiXQ3QUidmFMEsvi9ONYyu0AcX2RUQuNdPiEJcCu8dxLK1T1r2nr/PUVnoaX5tCVeZJRRyZf0uUHg6j41rRsLVSfGxEQEprhjWqK2SdWQ7t62euTNRf7u4mkOxwSRAO95guoxrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Qz3BJ7pC; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7a4df9dc885so352418185a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 08:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724772990; x=1725377790; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zP4KpFI1wEFgqr9Fa1v3gv1lXKIWQkFSNhyHX5LJ2uU=;
        b=Qz3BJ7pCA0sntJnHQLeZta96OqzF3XII5SgW00ilnCKSs4e98iAKkaWhvh7WflHDIO
         VWGQjxqeTaB3guO9h9lZrLFpN1WdgF2BLkBG4R6eVwnd18Rt4MTzpcoESyzwCMFCyW7/
         EhtLEvT39Dbhf7+KdIBWGsVJC4PbbCRHxKZiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724772990; x=1725377790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zP4KpFI1wEFgqr9Fa1v3gv1lXKIWQkFSNhyHX5LJ2uU=;
        b=axnk3LbGlZ8Ynt8P6EfIESh/KDrg/vLm2G33p7Fmc0IVAZQABwK76hehH4eqp9GaKw
         Hv+uj+TRu7r9ztrDcQTDIqfmWrZ6Shwkj8FPHxn5jLeIJiTaLJ3Vf/enKrXCPGpdhRq3
         rX60u+978pEPLlQE2BIoigYTMUTbpDP7F7f7czNtw0Ef2T6/91aFUu7coiTr2yjRPzlK
         bKEQcrhg3IxjxQhDp5o28s7F8XERIJNDSrQWex8oNIfSlYyndM448AiV2GBmQaq0p+t7
         W3YL/RhUBeIYVsrmsvI7LNgtRKgI1Sta60HWXrPVXwGfA3E96xw2NJk+7bg5B0GHB7Qq
         ft4g==
X-Forwarded-Encrypted: i=1; AJvYcCWw5k5sdbneeR7nGyEe6BwWtpaubG287V9Gb6kCOA/XZZo68vo1G3GCcDvdp8PVDa8bJmr0GoHJPVJ2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4CR5OmMBrsIr1UB1RMBgw7lbyo1BlfBfi6CB/cer+ndVhqCs3
	+zbZtk75K+FLRvATW0LAk7Bi0+9G8kCUeH0TMSJiLmoM5rAF8Izu32GR7kMbovTHcCP7pIXdEWU
	=
X-Google-Smtp-Source: AGHT+IHowdJKppG81QY3RK4nONs4zxJWswkK3Z2FlwZQWXINma/CpbPEDdU21ZWkGCN5PWQEKQPTxg==
X-Received: by 2002:a05:620a:4455:b0:7a5:1e9:7ff6 with SMTP id af79cd13be357-7a7e4d03119mr543321685a.34.1724772990628;
        Tue, 27 Aug 2024 08:36:30 -0700 (PDT)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com. [209.85.219.49])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a67f41cdd7sm553973685a.135.2024.08.27.08.36.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 08:36:29 -0700 (PDT)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf705959f1so48251006d6.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 08:36:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWDPrMlu7n9MT+Sh74zWE2EJjoO3s4JhkoAU5T3yKJZyQn5BAaJgDFavdBP4IqNmCAOkrAEgnAY6GCS@vger.kernel.org
X-Received: by 2002:a05:6214:258c:b0:6b5:2be1:cd6e with SMTP id
 6a1803df08f44-6c32aea3e83mr62311556d6.4.1724772988561; Tue, 27 Aug 2024
 08:36:28 -0700 (PDT)
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
In-Reply-To: <CAD=FV=XfvD1OniNBrCrA8C6XjOB15fye8EdnniNmgpu4DnpH6w@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 27 Aug 2024 08:36:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vp1Trv2JeFtqk2=Zhi0B7io5w402GkG_UhYm2q34q8dw@mail.gmail.com>
Message-ID: <CAD=FV=Vp1Trv2JeFtqk2=Zhi0B7io5w402GkG_UhYm2q34q8dw@mail.gmail.com>
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

On Mon, Jul 22, 2024 at 8:49=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, Jul 15, 2024 at 6:51=E2=80=AFAM Doug Anderson <dianders@chromium.=
org> wrote:
> >
> > Hi,
> >
> > On Mon, Jul 15, 2024 at 6:02=E2=80=AFAM Neil Armstrong
> > <neil.armstrong@linaro.org> wrote:
> > >
> > > On 15/07/2024 14:54, Stephan Gerhold wrote:
> > > > On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
> > > >> On 15/07/2024 14:15, Stephan Gerhold wrote:
> > > >>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
> > > >>>
> > > >>> The panel should be handled through the samsung-atna33xc20 driver=
 for
> > > >>> correct power up timings. Otherwise the backlight does not work c=
orrectly.
> > > >>>
> > > >>> We have existing users of this panel through the generic "edp-pan=
el"
> > > >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works=
 only
> > > >>> partially in that configuration: It works after boot but once the=
 screen
> > > >>> gets disabled it does not turn on again until after reboot. It be=
haves the
> > > >>> same way with the default "conservative" timings, so we might as =
well drop
> > > >>> the configuration from the panel-edp driver. That way, users with=
 old DTBs
> > > >>> will get a warning and can move to the new driver.
> > > >>>
> > > >>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > > >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > >>> ---
> > > >>>    drivers/gpu/drm/panel/panel-edp.c | 2 --
> > > >>>    1 file changed, 2 deletions(-)
> > > >>>
> > > >>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/=
panel/panel-edp.c
> > > >>> index 3a574a9b46e7..d2d682385e89 100644
> > > >>> --- a/drivers/gpu/drm/panel/panel-edp.c
> > > >>> +++ b/drivers/gpu/drm/panel/panel-edp.c
> > > >>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_pan=
els[] =3D {
> > > >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d2=
00, "Unknown"),
> > > >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d2=
00, "Unknown"),
> > > >>> -   EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "=
ATNA45AF01"),
> > > >>> -
> > > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "L=
Q140M1JW48"),
> > > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ=
140M1JW46"),
> > > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "L=
Q140T1JH01"),
> > > >>>
> > > >>
> > > >> How will we handle current/old crd DT with new kernels ?
> > > >>
> > > >
> > > > I think this is answered in the commit message:
> > > >
> > > >>> We have existing users of this panel through the generic "edp-pan=
el"
> > > >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works=
 only
> > > >>> partially in that configuration: It works after boot but once the=
 screen
> > > >>> gets disabled it does not turn on again until after reboot. It be=
haves the
> > > >>> same way with the default "conservative" timings, so we might as =
well drop
> > > >>> the configuration from the panel-edp driver. That way, users with=
 old DTBs
> > > >>> will get a warning and can move to the new driver.
> > > >
> > > > Basically with the entry removed, the panel-edp driver will fallbac=
k to
> > > > default "conservative" timings when using old DTBs. There will be a
> > > > warning in dmesg, but otherwise the panel will somewhat work just a=
s
> > > > before. I think this is a good way to remind users to upgrade.
> > >
> > > I consider this as a regression
> > >
> > > >
> > > >> Same question for patch 3, thie serie introduces a bindings that w=
on't be valid
> > > >> if we backport patch 3. I don't think patch should be backported, =
and this patch
> > > >> should be dropped.
> > > >
> > > > There would be a dtbs_check warning, yeah. Functionally, it would w=
ork
> > > > just fine. Is that reason enough to keep display partially broken f=
or
> > > > 6.11? We could also apply the minor binding change for 6.11 if need=
ed.
> > >
> > > I don't know how to answer this, I'll let the DT maintainer comment t=
his.
> > >
> > > The problem is I do not think we can pass the whole patchset as fixes
> > > for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.
> > >
> > > Neil
> >
> > IMO: patch #3 (dts) and #4 (CONFIG) go through the Qualcomm tree
> > whenever those folks agree to it. If we're worried about the
> > dtbs_check breakage I personally wouldn't mind "Ack"ing patch #1 to go
> > through the Qualcomm tree as long as it made it into 6.11-rc1. I have
> > a hunch that there are going to be more Samsung OLED panels in the
> > future that will need to touch the same file, but if the change is in
> > -rc1 it should make it back into drm-misc quickly, right?
> >
> > Personally I think patch #2 could go in anytime since, as people have
> > said, things are pretty broken today and the worst that happens is
> > that someone gets an extra warning. That would be my preference. That
> > being said, we could also snooze that patch for a month or two and
> > land it later. There's no real hurry.
>
> For now I'm going to snooze this patch for a month just to avoid any
> controversy. I'll plan to apply it (to drm-misc-next) when I see the
> device tree patch land. Since the device tree patch should land as a
> fix that should keep things landing in the correct order. ...and, as
> per above, the worst case is that if someone has an old DTS and a new
> kernel then a panel that was already not working well will print a fat
> warning and startup a bit slower.
>
> If somehow I mess up and forget about this patch, feel free to send me
> a poke when the device tree patch is landed.

More than a month has passed now. One last warning before I apply this
revert in a few more days.

-Doug

