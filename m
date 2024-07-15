Return-Path: <devicetree+bounces-85800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0293170B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1DFB1C2124D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4738418EFED;
	Mon, 15 Jul 2024 14:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X6hvfRK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830C919148F
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054460; cv=none; b=jsRk1d9e+SPGFTXiNUvmnt4p6jbVBLRdMSDn/WLKqYbP5U7wRB4tI+UltN8hOvIBl2IoYw4kNexmRUTQslWTa4U6WsI4XUiDnXfpiJWcIK90c4YBUXUl7lZjmJD+4lcOZEh8M2GC2ZJiwI+xm9Hu5L7GEeP4FEuiWiYE2Z8yUyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054460; c=relaxed/simple;
	bh=jukV9cHY7vycRjRD7Z1lBNTibLKLAZ8Wf8W6USecTI0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UI/sShKC+HZH8KhjKo7YwwTGuGZqHaMHPCZN5MKXUr8ahd8W6oQpg5vTb5u18FgaubSbCVlVs/N2LO7YA0XBhx3ksWMxJ+tI1ltHGaXGczJWajkqHN8g+U130SIqC/ZvlO05k+uDxWHOXlO52Uro25AO36A66MXypySYvnZzs8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X6hvfRK4; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-79f19f19059so278898685a.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721054454; x=1721659254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVftpq/uBCl88gfSx31fkg5itYrixVVA/rFufzNQC5I=;
        b=X6hvfRK478AJVfJV+Y6Sn+pNpr6wQWdxEMRco7BxCU7/zXZrYDEOWYtY0Pf9gjuZqh
         9xxT7EnvyNJO1kK9zCg4NuFIvARyoCM5hjcWOXJyJIkM2Wosgl7kHWVB7MllJrgMpRwx
         JrYHXMV9CmEMQXSG+mM8RD5xzVV6X8WuPp12w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054454; x=1721659254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVftpq/uBCl88gfSx31fkg5itYrixVVA/rFufzNQC5I=;
        b=uTwq1/TJHvNfpXyjPUCaJuJuUao4E1zgmTlxCX7m4ri7kw2KXyWyq6Gz/7FERHC7KR
         /B1+rOZp5GGnKKgQTGQvpmnWeeOLewMWEjWQVU7vGYoKENbTP2LdXS+XZhnAmyyUGQrb
         D881xL3+HcKvGhSVkxbpCfVVOEXNxNeynfKgAPC2i8u/rq580VEuvMQh4mMRzHQ7uTdO
         QaUmfZT8k2ERcFj9sJ9A5/jL4QuOHMBp8ZP2n+UM4WBn9RN/hTF/LpT5wx9+rJci4zA8
         WfkZowrYZDmgH3VRZcPJXOrml25+vSn9rZpEQmye5YqrkmHrenFfzlUtu3aJKbEiQib2
         t39w==
X-Forwarded-Encrypted: i=1; AJvYcCVFzn2QOe/NgoFSqTKr1VDji8aMLw2ZNXz+Wn6BVykxO/d/xI/9xyWBJFcpTuUV5MZhpAKMkDEc1ZyAGaw/5BicHunMAoMbcctHlw==
X-Gm-Message-State: AOJu0YyCJRuE4mSFitVyVt1vKZ4qfunZRAxjoVfpqlkO/SExA0VNO5aD
	ecKjpwiGGSJY5BViRROBfZBUdgNoRKFN5TqEVfiyVaPNMklfhA1y6DTuy6YGl9Wq28D5ccGtXxE
	=
X-Google-Smtp-Source: AGHT+IFSyuaAn76O9ZZSmFksAoqtvQmRfXpskHRh4PEVtUZS/JJv6VusnWs4YPP8VagkAlpHO+7MgQ==
X-Received: by 2002:a05:6214:1c8e:b0:6b5:d7a1:ead7 with SMTP id 6a1803df08f44-6b61bca4338mr269535236d6.14.1721054454208;
        Mon, 15 Jul 2024 07:40:54 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b76194f642sm21792476d6.28.2024.07.15.07.40.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 07:40:53 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-447f8aa87bfso607111cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:40:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXRgs6Y2LFZMnGdR2jIZnkBLUWKPlLQuWtmGcJWlNiLM956KUVn/7UPaf944KPVkH5K1MCmIKkPV2rQhmEWzTpg3xvKiNfVviQajA==
X-Received: by 2002:a05:622a:418e:b0:447:dd54:2cd4 with SMTP id
 d75a77b69052e-44f5a2f8968mr4195591cf.22.1721054452519; Mon, 15 Jul 2024
 07:40:52 -0700 (PDT)
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
 <6f8f902b-8192-492a-8354-18590c6c2c06@linaro.org>
In-Reply-To: <6f8f902b-8192-492a-8354-18590c6c2c06@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Jul 2024 07:40:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ugf-SfJYHzEZ0+ekm4zeXpgUi4XzJTuzuwJN1hjns1CQ@mail.gmail.com>
Message-ID: <CAD=FV=Ugf-SfJYHzEZ0+ekm4zeXpgUi4XzJTuzuwJN1hjns1CQ@mail.gmail.com>
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

On Mon, Jul 15, 2024 at 6:57=E2=80=AFAM <neil.armstrong@linaro.org> wrote:
>
> On 15/07/2024 15:51, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 15, 2024 at 6:02=E2=80=AFAM Neil Armstrong
> > <neil.armstrong@linaro.org> wrote:
> >>
> >> On 15/07/2024 14:54, Stephan Gerhold wrote:
> >>> On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
> >>>> On 15/07/2024 14:15, Stephan Gerhold wrote:
> >>>>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
> >>>>>
> >>>>> The panel should be handled through the samsung-atna33xc20 driver f=
or
> >>>>> correct power up timings. Otherwise the backlight does not work cor=
rectly.
> >>>>>
> >>>>> We have existing users of this panel through the generic "edp-panel=
"
> >>>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works o=
nly
> >>>>> partially in that configuration: It works after boot but once the s=
creen
> >>>>> gets disabled it does not turn on again until after reboot. It beha=
ves the
> >>>>> same way with the default "conservative" timings, so we might as we=
ll drop
> >>>>> the configuration from the panel-edp driver. That way, users with o=
ld DTBs
> >>>>> will get a warning and can move to the new driver.
> >>>>>
> >>>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >>>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> >>>>> ---
> >>>>>     drivers/gpu/drm/panel/panel-edp.c | 2 --
> >>>>>     1 file changed, 2 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/pa=
nel/panel-edp.c
> >>>>> index 3a574a9b46e7..d2d682385e89 100644
> >>>>> --- a/drivers/gpu/drm/panel/panel-edp.c
> >>>>> +++ b/drivers/gpu/drm/panel/panel-edp.c
> >>>>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_panel=
s[] =3D {
> >>>>>      EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d20=
0, "Unknown"),
> >>>>>      EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d20=
0, "Unknown"),
> >>>>> -   EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "AT=
NA45AF01"),
> >>>>> -
> >>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "LQ=
140M1JW48"),
> >>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ1=
40M1JW46"),
> >>>>>      EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "LQ=
140T1JH01"),
> >>>>>
> >>>>
> >>>> How will we handle current/old crd DT with new kernels ?
> >>>>
> >>>
> >>> I think this is answered in the commit message:
> >>>
> >>>>> We have existing users of this panel through the generic "edp-panel=
"
> >>>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works o=
nly
> >>>>> partially in that configuration: It works after boot but once the s=
creen
> >>>>> gets disabled it does not turn on again until after reboot. It beha=
ves the
> >>>>> same way with the default "conservative" timings, so we might as we=
ll drop
> >>>>> the configuration from the panel-edp driver. That way, users with o=
ld DTBs
> >>>>> will get a warning and can move to the new driver.
> >>>
> >>> Basically with the entry removed, the panel-edp driver will fallback =
to
> >>> default "conservative" timings when using old DTBs. There will be a
> >>> warning in dmesg, but otherwise the panel will somewhat work just as
> >>> before. I think this is a good way to remind users to upgrade.
> >>
> >> I consider this as a regression
> >>
> >>>
> >>>> Same question for patch 3, thie serie introduces a bindings that won=
't be valid
> >>>> if we backport patch 3. I don't think patch should be backported, an=
d this patch
> >>>> should be dropped.
> >>>
> >>> There would be a dtbs_check warning, yeah. Functionally, it would wor=
k
> >>> just fine. Is that reason enough to keep display partially broken for
> >>> 6.11? We could also apply the minor binding change for 6.11 if needed=
.
> >>
> >> I don't know how to answer this, I'll let the DT maintainer comment th=
is.
> >>
> >> The problem is I do not think we can pass the whole patchset as fixes
> >> for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.
> >>
> >> Neil
> >
> > IMO: patch #3 (dts) and #4 (CONFIG) go through the Qualcomm tree
> > whenever those folks agree to it. If we're worried about the
> > dtbs_check breakage I personally wouldn't mind "Ack"ing patch #1 to go
> > through the Qualcomm tree as long as it made it into 6.11-rc1. I have
> > a hunch that there are going to be more Samsung OLED panels in the
> > future that will need to touch the same file, but if the change is in
> > -rc1 it should make it back into drm-misc quickly, right?
>
> Not sure the Soc maintainer would accept any patches for -rc1 at this
> point, but Bjorn can try to push both #3 and #4 as fixes for -rc2.

Yeah, I guess it's pretty late for -rc1.


> Not sure #1 would be accepted as fix via any tree, but having a bindings
> error for a kernel release is not a big deal if in-fine the bindings chan=
ge
> has been reviewed and queued for next version.

In general my understanding is that we don't worry too much about
temporary bindings errors as long as things meet up in linuxnext and
get fixed. ...but in this case we're talking about the dts going into
6.11 and the bindings in 6.12 which means that v6.11 will be released
and still have the bindings error. That's non-ideal...

Can we really not consider the bindings as "Fix" since it's required
to pass dts validation for the dts patch which is a "Fix"? If we can
consider this bindings change a Fix then we could land it in
drm-misc-fixes and then things could meet up nicely I think, right?

-Doug

