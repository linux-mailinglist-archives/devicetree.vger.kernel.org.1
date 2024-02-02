Return-Path: <devicetree+bounces-38150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D5847A85
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 21:31:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3E981F2444E
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 20:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30DCE4C79;
	Fri,  2 Feb 2024 20:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nTuJ6ILq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582A51754B
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 20:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706905914; cv=none; b=FfcZaxmTCS4QdrRb4f/FecgvKiqEldZk2ENrRkuHBSUrgP8VC26NY91iVwS2iYEJsRxZ858XZQCYVzW2ZTU9/yfxFaQx/3gLPuBWaJwZGYyq+Fcd8RFXBqI6uxiLb/HpCsFDpZlqB3wcatlHC4n+hC/deM2G4h3mwP2GbpcyI4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706905914; c=relaxed/simple;
	bh=53lrrcAwsOReEPvUCjLVaJtxk7JP82CHsTgE15pO0as=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U++S+NhyG2BHweaohz40z/YLQnkNlJt7o/+6q4+sIfQbOpiIY0XOYC8nyQTaAGXE7vpNxqZxrIdjgwVKXdBUuKiVFj8KnRo9N4/V+eGYqM6XuhYwNGM7961zfJ0TN+TkFTRf+RWlV3UnW2PkFHXLuZsvFrqP4q2/ZUY99C1Vqzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nTuJ6ILq; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d051fb89fbso32707401fa.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 12:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706905907; x=1707510707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0h1IIKH0viGaA3orHuy1hmOvR0Hle+LrWHOWH3Kx7Iw=;
        b=nTuJ6ILqksyiyR0fdCC53UMSGWuhTlGNTmj9qnsCgMopdm/ZxSXqmWHdCbusYB4TIh
         RpzYhUobvcvum3QZTIhyqHMUoRtZcdqIOAyL5nzK5Qk34/gKBI9g3kWZp+8/o4VMRyxA
         JWC0hYIjLbprj6yMi7yTEh1HYm4tujq1/0cWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706905907; x=1707510707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0h1IIKH0viGaA3orHuy1hmOvR0Hle+LrWHOWH3Kx7Iw=;
        b=lvVRGuM2psi6MzuaTWwwaYLP0HBAcCa6u9vKo11/27wGZ/dAQx2dShnBVfgogYUpAH
         ays4y1+yS/HbOVCGyMVHGcAQ70ZFCNGj7NfO9ptUNIKdOMN1U+erhKl5KbZVgom9Fb5w
         r5nY7DG3lwIjffmeW8rvWZXwwQdgfLqZAfZQThnPX4gsuWDbNt1HmN3WIA/h+KJBB6mO
         WkudmqEB97PLi1t4rn77j1ZrMcaf8og/n1ifPRVHDdf85lBApzoJnhF0IRJdqeglEGyX
         fdvGEDu6I2sBTucUL4NnyP6Cp0rI1Cp2CgEepepMbXDoWnj85c8CqhisGr3PZjbj8eo5
         0inA==
X-Gm-Message-State: AOJu0Yw+dQLbFgR6OKC/GuSC8Aeu4OqXLanP7WlGEUldFNZsOq/pg8Bu
	1nijwaQL7GFeQBVUUmY+Mu4whcJqszkBCCoVx/Sz6pD9HV3io+4pebrvPQ6aZC7KTqqDZnazN9Z
	wNNC8
X-Google-Smtp-Source: AGHT+IGYBoNI3b4yEQ0e1hi/vxFG9UXe8sbvlNTbT3sEJOs4igQovMHc6dKycRw+U4r0UlS+abPgbw==
X-Received: by 2002:a05:651c:2108:b0:2d0:7739:77bf with SMTP id a8-20020a05651c210800b002d0773977bfmr5248551ljq.5.1706905907707;
        Fri, 02 Feb 2024 12:31:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXO7rMz8lot+ekLZbWetY7peiDl2X38OLhjwwe5vK9fV9rp6Yky5F/bokXeIIjowE/yrKFSbovcmwakcXiW7Mus2wQjZgtlonN9cA==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com. [209.85.208.46])
        by smtp.gmail.com with ESMTPSA id en12-20020a056402528c00b005598ec568dbsm1105432edb.59.2024.02.02.12.31.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Feb 2024 12:31:47 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-55fff7a874fso3046a12.1
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 12:31:46 -0800 (PST)
X-Received: by 2002:a50:8d15:0:b0:55f:a1af:bade with SMTP id
 s21-20020a508d15000000b0055fa1afbademr6757eds.4.1706905905770; Fri, 02 Feb
 2024 12:31:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202202329.4172917-1-quic_jhugo@quicinc.com>
In-Reply-To: <20240202202329.4172917-1-quic_jhugo@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 2 Feb 2024 12:31:30 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WkNKFiRKyadVnAMmtcDH=PVv6vk2CvMbME9FZ5UHNxuw@mail.gmail.com>
Message-ID: <CAD=FV=WkNKFiRKyadVnAMmtcDH=PVv6vk2CvMbME9FZ5UHNxuw@mail.gmail.com>
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
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8=
6.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> index 6ec6d287bff4..c93878b6d718 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: SN65DSI86 DSI to eDP bridge chip
>
>  maintainers:
> -  - Sandeep Panda <spanda@codeaurora.org>
> +  - Douglas Anderson <dianders@chromium.org>

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Unless there are comments, I'll let this stew over the weekend and
then land it through drm-misc next week.

-Doug

