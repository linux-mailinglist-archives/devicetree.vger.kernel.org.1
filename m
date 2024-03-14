Return-Path: <devicetree+bounces-50592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D987C5D9
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 00:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 614EF1C20BB5
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 23:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7A3E559;
	Thu, 14 Mar 2024 23:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UZlgFMr3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27DFFC0B
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 23:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710458478; cv=none; b=ORfwzimx5Nwbgm1cwFjNsfum/fmsOL+xx84peDxrukdeIArIdv5+ZMN5jklRC+dDSkU9FUMAoHm0HmJ61nP7pVKaBHr57uisTyBGjc+zitHO9y30wxlXbypPjxcYUtzt6yNWAGAdDGVXArwMf5zvM+KCpxNsUfLZ+6o36Tcnvh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710458478; c=relaxed/simple;
	bh=1nZ1koHEL3nJ3Z4WOjyBj9l6GAQC4q9nTZpHJxmXIvk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nCQ1N/rxGzCHsP8wQfuiSpMIBOM8OB/BvG1IyxYqfSYBNKMXe0l/De/2JWluf+sRGRlifYVHhpurgn5+J2s/BPJVwm05+YA26WjlRukBj6PwTp6RfgO+Xo0EcJTIL5h0JZd87s+zCVSL3klJleFCOotMpS+qeXg1OvKzyPJj/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UZlgFMr3; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcd9e34430cso1536444276.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 16:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710458476; x=1711063276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JYkkAOiHkqIfOBWqACZEdL7PfJhzMKheJAaNem7Ve48=;
        b=UZlgFMr3Z+3EWLUE501NMd5nrNWGj5MPXd/ZJEfZlHiBQ+RjxydfbqPWdStUbTLFIy
         PiVphh6dbnjSzskoB+pVoJsV4zHlmrpCK1L5CtZgrMAYowFZNAekdsU0h2+lPIMcJPIv
         zyRu3D39pk0V4lQJiehfjyc7bpnSTfDG4gzA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710458476; x=1711063276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYkkAOiHkqIfOBWqACZEdL7PfJhzMKheJAaNem7Ve48=;
        b=on+jZ8o2jWduPFVXIWRZIdY9zu2K6sFnBSSRugdvjr76/z83YSkxzOSV2v9n0AJ3G7
         kydbLdq2HKL/Da9hWhz+LadO16HfngdDldMGgfpAGYEMirHLEPbEV6/aaCclXV6cXEaz
         O23re4BBoASpCNZxSpCjIkSHCGi14kbTRlkmbkPTh9kYaVPYSo3X/mSYMngLBL+aXkoD
         WqatSirQ2pnruh/p7rCxCT2BhlDNHCsptttlAwebDBd36Uq+V+3fv4QkFMa1q8LHAMkh
         52CzsQXjvJ3Id60/y7KnGtYvQvVr7Schk67/k93wtqbU5C6j3Znq+Pl2AVcyQta1r8pD
         VO8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTTmduLxtSzdRRuRX4Y2FjmYyne9F4hjI08cltliDnyV3MbRSFbY58H57kPSwF3eEy2/XFFHsXxMRGULPUKqnIYAQXByaXY1GBIw==
X-Gm-Message-State: AOJu0YzFi2w77fQpzl+XZGd0LPZV7K4dGgKPNU++p+E9n+7PjWJombZt
	uFp88Ewmkt7u2iVSP6ggsMK7Zde593m45K8eQja1eQTYRFdp6hku6HZUOHdYpMHxQDuekb1zxX0
	=
X-Google-Smtp-Source: AGHT+IFmp/ypKF2UqcnXfJY5Av4hcOh8WiJykFVOgMGRD6JYu7AWrgk/cViJWOKKtWrM2xPuuKaMZg==
X-Received: by 2002:a25:ce41:0:b0:dcb:f5f9:c062 with SMTP id x62-20020a25ce41000000b00dcbf5f9c062mr3601914ybe.14.1710458475699;
        Thu, 14 Mar 2024 16:21:15 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id g5-20020ac84b65000000b0042f3882cd05sm1308682qts.42.2024.03.14.16.21.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 16:21:15 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-43095dcbee6so129521cf.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 16:21:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX1+S4x/WbpSRNIoOuTVsbDIKh/iT7H6mekFJ2T4aEL5T/Qt1I1E5P6K4aXd+qrU22fM0PvFBMZNO64cCvOnxoc7+s6e+yDv57u+Q==
X-Received: by 2002:ac8:6618:0:b0:42e:ef12:8025 with SMTP id
 c24-20020ac86618000000b0042eef128025mr64373qtp.25.1710458474993; Thu, 14 Mar
 2024 16:21:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230703085555.30285-1-quic_mkshah@quicinc.com> <20230703085555.30285-4-quic_mkshah@quicinc.com>
In-Reply-To: <20230703085555.30285-4-quic_mkshah@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 Mar 2024 16:20:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWH+Eoa9XjDns--NSDTZHeUwTdrX_r_QZhSPpbZNwz+w@mail.gmail.com>
Message-ID: <CAD=FV=XWH+Eoa9XjDns--NSDTZHeUwTdrX_r_QZhSPpbZNwz+w@mail.gmail.com>
Subject: Re: [RESEND v4 3/3] arm64: dts: qcom: sc7280: Add power-domains for
 cpuidle states
To: Maulik Shah <quic_mkshah@quicinc.com>
Cc: andersson@kernel.org, ulf.hansson@linaro.org, swboyd@chromium.org, 
	wingers@google.com, daniel.lezcano@linaro.org, rafael@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, sudeep.holla@arm.com, jwerner@chromium.org, 
	quic_lsrao@quicinc.com, quic_rjendra@quicinc.com, devicetree@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 3, 2023 at 1:56=E2=80=AFAM Maulik Shah <quic_mkshah@quicinc.com=
> wrote:
>
> Add power-domains for cpuidle states to use psci os-initiated idle states=
.
>
> Cc: devicetree@vger.kernel.org
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 98 +++++++++++++++++++++-------
>  1 file changed, 73 insertions(+), 25 deletions(-)

FWIW, I dug up an old sc7280-herobrine board to test some other change
and found it no longer booted. :( I bisected it and this is the change
that breaks it. Specifically, I can make mainline boot with:

git revert --no-edit db5d137e81bc # arm64: dts: qcom: sc7280: Update
domain-idle-states for cluster sleep
git revert --no-edit 7925ca85e956 # arm64: dts: qcom: sc7280: Add
power-domains for cpuidle states

(I get an ath11k crash after that, but that's easy to hack out since I
don't need WiFi)

I suppose the two options here are to either:

1. Track the problem down and figure out why the breaks boot and then
fix it. I'm personally not going to track this down, but if someone
wants me to test a patch I can do that.

2. Delete all the herobrine dts files.

So far we've been keeping the herobrine dts files alive because I
thought some graphics folks (Rob, Abhinav, Jessica, for instance) were
still using it. ...but Rob says he hasn't booted his in a while. No
idea if Abhinav and Jessica are using theirs. Any opinions? Is
herobrine hardware support near and dear to anyone these days?


-Doug

