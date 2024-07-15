Return-Path: <devicetree+bounces-85781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F19931619
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BF1E1F2225F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A0D18E75C;
	Mon, 15 Jul 2024 13:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kPrBSH5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDC718E754
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 13:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721051510; cv=none; b=D50omBhIdJaZw9n4wP/LpLqsm6dB04rX/aObrE+LUH8G72jBzmLMEKE3c32LBFMhX83vu1ShBNSSiP6ZhHeFEYTFo6C+gO1DBw2zYkBwTs/qDK/EitZ8HLK8Yn08Vk9APAqK8wAFhNCMGDO+tK3b/QnVma7CuB/iMGUF3EhCLZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721051510; c=relaxed/simple;
	bh=ra2iu8Gz+ImwqgdjtFBQAdcGSDiM4U9XizTOJ8q2aDo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=thBy6/ugO67CrAMvju2U4RKatBbiewCiHGE9OFBGBYWVCy3yjLIzS2+IYOHy0mtlIk0o9JOJis95G7dLTMFWKNtbS7PUFjoLFwDDngiVy3gPhTYzew61i+qlKuwI04dj13GwSkOdXEwbLt6c3zEtVTfgAj/2XBz7YwfspGJfAWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kPrBSH5e; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d92d1a5222so2693282b6e.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721051507; x=1721656307; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxXwbEHWXO/2KvCuP3hi693DOR1kiAPLV7jI7n5DAfw=;
        b=kPrBSH5eEQqaLzr+7FcGbPxmaIHFD8/leWt9X9ycqy6To0Gw3kMZ+4yjimzoD6Efee
         j7mgtNHIwVMQKNGaE3YhDwubmB++y1jbEQFDxwnnjpUMwJmiOS+AoAiprar60ebuACPI
         /FXjBDOcpGnmyBkh7GewxN7wZK1i5pVbko+UY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721051507; x=1721656307;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxXwbEHWXO/2KvCuP3hi693DOR1kiAPLV7jI7n5DAfw=;
        b=oF+jFXzpVWCKjvaS9ZXnfzKPKByKEfN09U6NLIzE/6Km4mjPjS9W5w9ogAb6IfyGh7
         gkIilfdmTwwdU9mjshb8s78k30tP3sMmOxmx3OtYVwKJy0DXLZ6rWFlc0H8eKpjkcRex
         tbhz+e9gUNz8j4b+2G07ITiEsUi4tuL+Jep+fS/QERomAXFGt/74mRdArUFYcBPaqtVc
         klZbo6D3kim0OvxQeMc5EujT9TcOhyZajx1JJ5ZNHl27PIaz8Q+18ENwKxYaQF5f6mGv
         1WixeqmgkhH8Y+sYVgl5gJFalUSqDh2N0YaZuBbH+oiYvgQSI+WjEVTvRCcUl9BWvvvP
         oPUA==
X-Forwarded-Encrypted: i=1; AJvYcCV+beU7VrvIzwsSDK082l5RtXV2JTX9SOxiYfm8RUk1rdqJNsonh2HhV/b8vjYDEEs8oyjPAw/VuBMqA86Uq/0z7bHRCpO5BfcB+Q==
X-Gm-Message-State: AOJu0YzHbUq0hZrTV96cU/0HswGsrbPKIWsFQ6QaV2q2TsdPswDPKKF2
	rl0mQyqd5NjHtFzv2xeH4OQger0blrFIzA5qV/DUmcWcrlsU2BXmIiArsg/eITqg7PxzhZx4ZIs
	=
X-Google-Smtp-Source: AGHT+IFpUZBjq+r6SsyjY75P/gMeBNHQqLf1LC9kKoNV4u622S54eMI4CFlEXrS+0uBc8KaJ74X8qw==
X-Received: by 2002:a05:6808:19a5:b0:3d5:1f50:188b with SMTP id 5614622812f47-3d93c01e103mr21873196b6e.23.1721051506601;
        Mon, 15 Jul 2024 06:51:46 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a160be353fsm200577985a.64.2024.07.15.06.51.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 06:51:37 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-44a8b140a1bso532601cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:51:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVcP1OZAq7gW6Ou0vPMlRO3zNwGznFM8AMg1d6v5C9U3JHQJoZ+g4sjhfEx0+Po6SGey0wgi9PKXAk9H9uwXeUsyc1QNH/W+B9Iw==
X-Received: by 2002:a05:622a:124b:b0:447:e728:d9b with SMTP id
 d75a77b69052e-44f5a31e028mr6194241cf.26.1721051494780; Mon, 15 Jul 2024
 06:51:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-2-31b7f2f658a3@linaro.org>
 <7daa3c0d-cecf-4f50-be32-ae116b920db0@linaro.org> <ZpUcI3KkIa58zC55@linaro.org>
 <d1603248-afe8-4594-9e2e-81ba208dff00@linaro.org>
In-Reply-To: <d1603248-afe8-4594-9e2e-81ba208dff00@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Jul 2024 06:51:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WimxYmDrkfn0+E3MbXp8kS9TicN2kT3AM4eM+SAwYsOg@mail.gmail.com>
Message-ID: <CAD=FV=WimxYmDrkfn0+E3MbXp8kS9TicN2kT3AM4eM+SAwYsOg@mail.gmail.com>
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

On Mon, Jul 15, 2024 at 6:02=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> On 15/07/2024 14:54, Stephan Gerhold wrote:
> > On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
> >> On 15/07/2024 14:15, Stephan Gerhold wrote:
> >>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
> >>>
> >>> The panel should be handled through the samsung-atna33xc20 driver for
> >>> correct power up timings. Otherwise the backlight does not work corre=
ctly.
> >>>
> >>> We have existing users of this panel through the generic "edp-panel"
> >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works onl=
y
> >>> partially in that configuration: It works after boot but once the scr=
een
> >>> gets disabled it does not turn on again until after reboot. It behave=
s the
> >>> same way with the default "conservative" timings, so we might as well=
 drop
> >>> the configuration from the panel-edp driver. That way, users with old=
 DTBs
> >>> will get a warning and can move to the new driver.
> >>>
> >>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> >>> ---
> >>>    drivers/gpu/drm/panel/panel-edp.c | 2 --
> >>>    1 file changed, 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/pane=
l/panel-edp.c
> >>> index 3a574a9b46e7..d2d682385e89 100644
> >>> --- a/drivers/gpu/drm/panel/panel-edp.c
> >>> +++ b/drivers/gpu/drm/panel/panel-edp.c
> >>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_panels[=
] =3D {
> >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d200, =
"Unknown"),
> >>>     EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d200, =
"Unknown"),
> >>> -   EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "ATNA=
45AF01"),
> >>> -
> >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "LQ140=
M1JW48"),
> >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ140M=
1JW46"),
> >>>     EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "LQ140=
T1JH01"),
> >>>
> >>
> >> How will we handle current/old crd DT with new kernels ?
> >>
> >
> > I think this is answered in the commit message:
> >
> >>> We have existing users of this panel through the generic "edp-panel"
> >>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works onl=
y
> >>> partially in that configuration: It works after boot but once the scr=
een
> >>> gets disabled it does not turn on again until after reboot. It behave=
s the
> >>> same way with the default "conservative" timings, so we might as well=
 drop
> >>> the configuration from the panel-edp driver. That way, users with old=
 DTBs
> >>> will get a warning and can move to the new driver.
> >
> > Basically with the entry removed, the panel-edp driver will fallback to
> > default "conservative" timings when using old DTBs. There will be a
> > warning in dmesg, but otherwise the panel will somewhat work just as
> > before. I think this is a good way to remind users to upgrade.
>
> I consider this as a regression
>
> >
> >> Same question for patch 3, thie serie introduces a bindings that won't=
 be valid
> >> if we backport patch 3. I don't think patch should be backported, and =
this patch
> >> should be dropped.
> >
> > There would be a dtbs_check warning, yeah. Functionally, it would work
> > just fine. Is that reason enough to keep display partially broken for
> > 6.11? We could also apply the minor binding change for 6.11 if needed.
>
> I don't know how to answer this, I'll let the DT maintainer comment this.
>
> The problem is I do not think we can pass the whole patchset as fixes
> for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.
>
> Neil

IMO: patch #3 (dts) and #4 (CONFIG) go through the Qualcomm tree
whenever those folks agree to it. If we're worried about the
dtbs_check breakage I personally wouldn't mind "Ack"ing patch #1 to go
through the Qualcomm tree as long as it made it into 6.11-rc1. I have
a hunch that there are going to be more Samsung OLED panels in the
future that will need to touch the same file, but if the change is in
-rc1 it should make it back into drm-misc quickly, right?

Personally I think patch #2 could go in anytime since, as people have
said, things are pretty broken today and the worst that happens is
that someone gets an extra warning. That would be my preference. That
being said, we could also snooze that patch for a month or two and
land it later. There's no real hurry.

-Doug

