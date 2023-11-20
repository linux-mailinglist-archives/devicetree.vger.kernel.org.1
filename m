Return-Path: <devicetree+bounces-17253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD97F1BF0
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6007D1F255FF
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4DCE2FC5E;
	Mon, 20 Nov 2023 18:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="F3aMTFdV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30375AC
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 10:05:59 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40837124e1cso3585e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 10:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700503557; x=1701108357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E1oMCfMGwdX7/yasXUH/6qCLEAX+oZ5Ltl+iiFvw12M=;
        b=F3aMTFdVbNXdY8Mse0KDsQCLURVoUt/Mlj9P/AvoZBo4soUBl4dreiAV98BvDrp91c
         zKsdWlIt9iBILKjfyO/eTHrkoBg1cwF8YVzVwb11o067REXjt7VJo5iMuIXCRaabsa8b
         pdjcn68Yrspcl3OTOCEEvIacvTt1bsgg9XBhqHqcbUZYmyuFUF1AZ/QHcNcNIRKcCis+
         YIAEGv3/8bA2Lp4Gr6v/wd2ZNGWRYbCjfJJubUCzTtxbgSiZnSYPy4zT2Z+rcwzD+Lsd
         MpPt1DvazaD061D9LfhRJcth1HKuw7hN2u2KtQgQO+78KmsNPCU9qioquPScpNPEwGD7
         LYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700503557; x=1701108357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E1oMCfMGwdX7/yasXUH/6qCLEAX+oZ5Ltl+iiFvw12M=;
        b=Fyfle1DE9RzxSiKBr+LINkmhhN6NGnclUfPKMdROfn766EVss2ZLpGtetyjRqU0XB6
         3x7g+rVP8IibXOut42rifKdZLZnDhORhgwf0qtx4qoNsopy0UECWFpIebHiBG8r8Felq
         JaHa6EcKXC7h70oOxDIjkbOvB8VOBJfikbBnBfElG+sy+jEEzIleABf16N7fqEGcNRlN
         sqJt7djjObS78eoMsIkmeVaQCLX5uL1DpoRGdP4COQaTD89qHq3YGjUymk4Rk0HQbmce
         jzbnM8RwJ1+wBSnZvfkXemCnxKVUlzVYneuwIiSbWc2Sibues7BmExCVTRsDsZW9HbTr
         OStw==
X-Gm-Message-State: AOJu0YwgoYWIAHFokVAWgLIvul6TpnIKE8ey6ZmOG0ZmSTxE38Z3QS+j
	91CDBnU0/iTaI+tq6iHUJYtUjbbmjAingKCGV7jkNA==
X-Google-Smtp-Source: AGHT+IHWrtCrXcVOwKo199pcpai/48XCtrsULlO6pY+GdNy7QBAZjsD1Hi9YGbmweptlK5z8xbw9Dp3Z1R0tzlykCXs=
X-Received: by 2002:a05:600c:1c83:b0:3fe:eb42:7ec with SMTP id
 k3-20020a05600c1c8300b003feeb4207ecmr273004wms.1.1700503557295; Mon, 20 Nov
 2023 10:05:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120020109.3216343-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231120020109.3216343-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 20 Nov 2023 10:05:44 -0800
Message-ID: <CAD=FV=WKMrnAqYNHpcKw4=X75Ts_cCkoXZKQ+b7G1pXstUCMRg@mail.gmail.com>
Subject: Re: [PATCH V3] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, zhouruihai@huaqin.com, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 19, 2023 at 6:01=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The refresh reported by modetest is 60.46Hz, and the actual measurement
> is 60.01Hz, which is outside the expected tolerance. Adjust hporch and
> pixel clock to fix it. After repair, modetest and actual measurement were
> all 60.01Hz.
>
> Modetest refresh =3D Pixel CLK/ htotal* vtotal, but measurement frame rat=
e
> is HS->LP cycle time(Vblanking). Measured frame rate is not only affecte
> by Htotal/Vtotal/pixel clock, also affected by Lane-num/PixelBit/LineTime
> /DSI CLK. Assume that the DSI controller could not make the mode that we
> requested(presumably it's PLL couldn't generate the exact pixel clock?).
> If you use a different DSI controller, you may need to readjust these
> parameters. Now this panel looks like it's only used by me on the MTK
> platform, so let's change this set of parameters.
>
> Fixes: 1bc2ef065f13 ("drm/panel: Support for Starry-himax83102-j02 TDDI M=
IPI-DSI panel")
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
> Chage since V2:
>
> - Update commit message.
>
> V2: https://lore.kernel.org/all/20231117032500.2923624-1-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V1:
>
> - Update commit message.
>
> V1: https://lore.kernel.org/all/20231110094553.2361842-1-yangcong5@huaqin=
.corp-partner.google.com
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

As per previous discussions, this seems OK to me. I'll give it one
more day for anyone to speak up and then plan to land it.

-Doug

