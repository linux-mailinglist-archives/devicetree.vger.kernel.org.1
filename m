Return-Path: <devicetree+bounces-87315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2B993920F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 17:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82E0E280DB8
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 15:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E1116EB5D;
	Mon, 22 Jul 2024 15:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jNPPjtcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D8A16EB4C
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 15:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721663381; cv=none; b=lSGa333B6ZHXVoCAMjjHPpBDgdms5ktfESczb9n9RjDGzWptjsdwH59oOisYo4DNP3k7TBopCmeQi7BCZSdEWZBG/8l4DHhOpfi52X7IDJhBWIgnyfewObTBN21qGO3bYqjS8FgmNllge/MADGa6kYFb9VoCdkUtZIYVHpUKMZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721663381; c=relaxed/simple;
	bh=FesRx67elQmnqBSPlEkVYKJ2YOBEJnv2sFoRJSW3AlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i+oBK1h8F+DFB58fobZKjJwysNleAA7VAUeRD/ZVCWh3NhtSNUJLDVS87bArS+h66QSRDaBSP+ELtwakXRJzoYIsQ83kzDV8Wc73I1wt60qXMC+lfQ0ugAEob9ZXZJ0NETyPIbIbbcqw5VyMWzpTiErYbd7R+xwUJ4qFQb55l9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jNPPjtcJ; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-492aae5fde6so270137137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 08:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721663376; x=1722268176; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4M370blDs66N01Bpr2CSSKX57GkmsVaqanqtms3bvVw=;
        b=jNPPjtcJGhLo0TwZn7/Tb2625idfOvk+EvksiBwjmPDhcVPJYmS+NyAwp7jgb3j1OI
         3nQ3KKbqwBsIuRUGYt6OB0+TmeUvzxsu8CLA3TOOmIHK0ZD5rYeOZ/LR71NPwEy6QY54
         V8Fn/TfcZNlFbvXqdNEjOTzy9qBwpU+SDBHQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721663376; x=1722268176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4M370blDs66N01Bpr2CSSKX57GkmsVaqanqtms3bvVw=;
        b=Ln6w73KJAbND/fkP4n/i8Ayo15u+qY0z68v4dbjviJ9NvczQnVM8uWjvb6RDUPuGO8
         TSrt4AQlCu+cX7tMlRKrOX0/G9o8dCt5qQd7nfMj34hapbIaCAIWvaeP9Ex0Ifx4ZIk8
         W5C53NmTml+0lmrm0aPy0B20Kwc2/7o8pUisZ2DglUoLdbYLjZMa87CLUebsvtwxOj9A
         7sjpC8UO+crf6PY99EGJpO3JNjrnBzdbz0KgzRMImSjk5yOvkLuB9Ch+7zeKBgQUw3VP
         RdGjA7T7EOCY5CaL0w3/i6sE2bbIBAyd2vKhOMH9IBxfHddzUuBtYsqPq3okK8fmcVbW
         f8vg==
X-Forwarded-Encrypted: i=1; AJvYcCXGyCT17h75OnUyVre/6ZLPtT5yb5hdCMX13c8TSw6mxNf+SxdbiHK6tta3FUROXIVdhLslwSB+MOswCxH0JA3RaTVPwKqAfbjyxQ==
X-Gm-Message-State: AOJu0YykwAtQvSjToPjV0vwysZCqj7AP9XOxkZuILhgLTyPNxYWvgqzQ
	dXcwKUsUVHOE0M/po9BqhBfVuO8tT+pBdgNU0f4a2dbNWJ567yPFsodckHy2nmkOo+9H1kZtJ8k
	=
X-Google-Smtp-Source: AGHT+IGgqGIWl4YlaZALPxlenSeU98cozP4BDOmyCny0EzzEWc3hbmeNhg4THlUuNmmkXyMlJkwu+A==
X-Received: by 2002:a05:6102:808e:b0:48f:e4b0:81b4 with SMTP id ada2fe7eead31-4928b9312edmr7762906137.7.1721663375379;
        Mon, 22 Jul 2024 08:49:35 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a198fbfba7sm364061785a.53.2024.07.22.08.49.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 08:49:34 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-447df43324fso893241cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 08:49:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUyDJt5YLJzCCh8NbXR6nk4qcEAmATUo3JNt7MuhGbgpKYAnJcta+pabidGgRnZJQ0tRzC48M0cFaYxA1zKBqMBkUxlYGOD9rBnRg==
X-Received: by 2002:a05:622a:5b8e:b0:447:e3e3:77c1 with SMTP id
 d75a77b69052e-44faaa81ca5mr4992061cf.29.1721663373472; Mon, 22 Jul 2024
 08:49:33 -0700 (PDT)
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
In-Reply-To: <CAD=FV=WimxYmDrkfn0+E3MbXp8kS9TicN2kT3AM4eM+SAwYsOg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Jul 2024 08:49:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XfvD1OniNBrCrA8C6XjOB15fye8EdnniNmgpu4DnpH6w@mail.gmail.com>
Message-ID: <CAD=FV=XfvD1OniNBrCrA8C6XjOB15fye8EdnniNmgpu4DnpH6w@mail.gmail.com>
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

On Mon, Jul 15, 2024 at 6:51=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, Jul 15, 2024 at 6:02=E2=80=AFAM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
> >
> > On 15/07/2024 14:54, Stephan Gerhold wrote:
> > > On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
> > >> On 15/07/2024 14:15, Stephan Gerhold wrote:
> > >>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
> > >>>
> > >>> The panel should be handled through the samsung-atna33xc20 driver f=
or
> > >>> correct power up timings. Otherwise the backlight does not work cor=
rectly.
> > >>>
> > >>> We have existing users of this panel through the generic "edp-panel=
"
> > >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works o=
nly
> > >>> partially in that configuration: It works after boot but once the s=
creen
> > >>> gets disabled it does not turn on again until after reboot. It beha=
ves the
> > >>> same way with the default "conservative" timings, so we might as we=
ll drop
> > >>> the configuration from the panel-edp driver. That way, users with o=
ld DTBs
> > >>> will get a warning and can move to the new driver.
> > >>>
> > >>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > >>> ---
> > >>>    drivers/gpu/drm/panel/panel-edp.c | 2 --
> > >>>    1 file changed, 2 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/pa=
nel/panel-edp.c
> > >>> index 3a574a9b46e7..d2d682385e89 100644
> > >>> --- a/drivers/gpu/drm/panel/panel-edp.c
> > >>> +++ b/drivers/gpu/drm/panel/panel-edp.c
> > >>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_panel=
s[] =3D {
> > >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d200=
, "Unknown"),
> > >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d200=
, "Unknown"),
> > >>> -   EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "AT=
NA45AF01"),
> > >>> -
> > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "LQ1=
40M1JW48"),
> > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ14=
0M1JW46"),
> > >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "LQ1=
40T1JH01"),
> > >>>
> > >>
> > >> How will we handle current/old crd DT with new kernels ?
> > >>
> > >
> > > I think this is answered in the commit message:
> > >
> > >>> We have existing users of this panel through the generic "edp-panel=
"
> > >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works o=
nly
> > >>> partially in that configuration: It works after boot but once the s=
creen
> > >>> gets disabled it does not turn on again until after reboot. It beha=
ves the
> > >>> same way with the default "conservative" timings, so we might as we=
ll drop
> > >>> the configuration from the panel-edp driver. That way, users with o=
ld DTBs
> > >>> will get a warning and can move to the new driver.
> > >
> > > Basically with the entry removed, the panel-edp driver will fallback =
to
> > > default "conservative" timings when using old DTBs. There will be a
> > > warning in dmesg, but otherwise the panel will somewhat work just as
> > > before. I think this is a good way to remind users to upgrade.
> >
> > I consider this as a regression
> >
> > >
> > >> Same question for patch 3, thie serie introduces a bindings that won=
't be valid
> > >> if we backport patch 3. I don't think patch should be backported, an=
d this patch
> > >> should be dropped.
> > >
> > > There would be a dtbs_check warning, yeah. Functionally, it would wor=
k
> > > just fine. Is that reason enough to keep display partially broken for
> > > 6.11? We could also apply the minor binding change for 6.11 if needed=
.
> >
> > I don't know how to answer this, I'll let the DT maintainer comment thi=
s.
> >
> > The problem is I do not think we can pass the whole patchset as fixes
> > for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.
> >
> > Neil
>
> IMO: patch #3 (dts) and #4 (CONFIG) go through the Qualcomm tree
> whenever those folks agree to it. If we're worried about the
> dtbs_check breakage I personally wouldn't mind "Ack"ing patch #1 to go
> through the Qualcomm tree as long as it made it into 6.11-rc1. I have
> a hunch that there are going to be more Samsung OLED panels in the
> future that will need to touch the same file, but if the change is in
> -rc1 it should make it back into drm-misc quickly, right?
>
> Personally I think patch #2 could go in anytime since, as people have
> said, things are pretty broken today and the worst that happens is
> that someone gets an extra warning. That would be my preference. That
> being said, we could also snooze that patch for a month or two and
> land it later. There's no real hurry.

For now I'm going to snooze this patch for a month just to avoid any
controversy. I'll plan to apply it (to drm-misc-next) when I see the
device tree patch land. Since the device tree patch should land as a
fix that should keep things landing in the correct order. ...and, as
per above, the worst case is that if someone has an old DTS and a new
kernel then a panel that was already not working well will print a fat
warning and startup a bit slower.

If somehow I mess up and forget about this patch, feel free to send me
a poke when the device tree patch is landed.

-Doug

