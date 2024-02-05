Return-Path: <devicetree+bounces-38816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1EC84A2D8
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 19:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A05928A66A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BC848CD7;
	Mon,  5 Feb 2024 18:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KSWzHKh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A2482FD
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 18:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707159372; cv=none; b=Onkfk8ORWQ0eBCfVlLX3aTrp0Ip1yxEHEOlEHt7KTz23JyZJJ8PItLbvCcaHHg9OWuT69YnylCyffasrZ2eELiT3AuO40YgORqs1lkzhHmRtwC4Gi2PRh8clp+hqWusXdoDHMnwSaL3j3rHRQAYH4twvFOZs9fcgy7Ln7D74yHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707159372; c=relaxed/simple;
	bh=bzT5qI0/N/5/dC92OnguBaRNvQJRdU3/Ts0xpiY9+mg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jV7KUC0fv/yGls1O/alIuadjZJktcM0DhDfKcu1hjkkkXApDwJU03bDM6f9x9g10rryof6lpljnESAKQLnV9YwtWWOCRk6GN9WHmsChS9HvJ87MP3uwL2jSsYQqVWIyHCoFSakVyNp0eZei+egVYgAkKt9OrB4/0oeLcZtOdpGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KSWzHKh3; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-60407e7a6caso50981587b3.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 10:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707159368; x=1707764168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G808gfmzZ9j432kXszfFxMM7lLJBObo6nQSQeq1OGNo=;
        b=KSWzHKh3aqfSaI4DCQDG2EG6ONC1PGYkP7sBHZrCQL2hlaCIALf9JQTyR7I8B6hoMW
         4jz1EQLIayD9n5SRDmEUOOC/Vi2uvivsSrplX5pD+l+yzKISlWmCWMnBTY/wp/NOwczq
         fHHiS81k/racTd18syZvQCLLZKz6bNsWN+5S0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707159368; x=1707764168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G808gfmzZ9j432kXszfFxMM7lLJBObo6nQSQeq1OGNo=;
        b=qo1/VxKqH9QgdK6uYpIRJVrzydUbenWf09HUGodQAVuy+AM35TR4nK8CqJ9m8CaEzX
         Y5kYT2079MB4LWs/uYiicwjesLmVMg/1IQAAQznqHmHUxOqqG3msSJ9PhCvXKOgUh6a7
         kWwJoQPlaWsoW1lR2wDTLI6+F7fswTYHqDNy4V42cJ3QKD74O/M+X6dZ992/61JhxEgj
         LzGhEjV8rI0uCpLcxyBzgcNcFUcAz1Si+O0Fggzr0P2npCPTxy+xPT7dXorseD1a+LF0
         Not8jICkzgGj3fBKNqL/0Z7z/7+G4uaMxbSaOsvRO8D0DN0s6+af40rOQwArP+MvIq7i
         uQ4g==
X-Gm-Message-State: AOJu0YyuW32Ugor7OvUYnRRT4tUlaVqEWM71g0lAlt5ubfGUg/gyRASW
	7tzg23DvAUCo65EXS26kibgSCKIzmlvSz3MuVUgH27F4BAT32yI2YnPhDUs5Ch/mKFffVTsb5JV
	RzMRx
X-Google-Smtp-Source: AGHT+IFBPDb+VRzegnmCxlGk77V2enubo4LIl3z1kQtn+9hWnkmQxXveyERsSc0UoN+wyC6SGbmSbg==
X-Received: by 2002:a05:690c:f09:b0:5f6:cfc3:f5a3 with SMTP id dc9-20020a05690c0f0900b005f6cfc3f5a3mr538604ywb.50.1707159368626;
        Mon, 05 Feb 2024 10:56:08 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVP3zbf62oRlcCMC5I+wlUDZ21mzPt7KtCMSCOOmATKqYxrrjrBZddifX1uv1eDiXm5k0OfulyaXFE0RU5we0Qjlo1UZOOdSM9FjQ==
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id x11-20020a817c0b000000b005ff95e9a554sm75691ywc.127.2024.02.05.10.56.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 10:56:07 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40f00adacfeso10985e9.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 10:56:07 -0800 (PST)
X-Received: by 2002:a05:600c:5185:b0:40f:dd8f:152c with SMTP id
 fa5-20020a05600c518500b0040fdd8f152cmr31004wmb.4.1707159366499; Mon, 05 Feb
 2024 10:56:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202202329.4172917-1-quic_jhugo@quicinc.com>
In-Reply-To: <20240202202329.4172917-1-quic_jhugo@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Feb 2024 10:55:50 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WyUzDXhr_g4C_5MiDioBt=9D0fkL2cQStP+EFmkydbsg@mail.gmail.com>
Message-ID: <CAD=FV=WyUzDXhr_g4C_5MiDioBt=9D0fkL2cQStP+EFmkydbsg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: drm/bridge: ti-sn65dsi86: Fix bouncing
 @codeaurora address
To: Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	quic_bjorande@quicinc.com, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Feb 2, 2024 at 12:25=E2=80=AFPM Jeffrey Hugo <quic_jhugo@quicinc.co=
m> wrote:
>
> The servers for the @codeaurora domain are long retired and any messages
> sent there bounce.  Sandeep Panda's email address is no longer valid and
> should be repleaced.  However Sandeep has left the company and has not
> been active sice, therefore it looks like this binding is orphaned.
>
> Doug is listed as the reviewer for this file in MAINTAINERS and has
> volunteered to be listed within the file as the binding maintainer.
> Therefore replace Sandeep with Doug to make the documentation current.
>
> Signed-off-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml        | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Pushed to drm-misc-next:

2592a36d9569 dt-bindings: drm/bridge: ti-sn65dsi86: Fix bouncing
@codeaurora address

-Doug

