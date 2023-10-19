Return-Path: <devicetree+bounces-10229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B27D042C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD659282275
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 21:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E1B3E012;
	Thu, 19 Oct 2023 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="La3bglWP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713D9354F2
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 21:49:52 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC236106
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:49:50 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507d7b73b74so166626e87.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697752187; x=1698356987; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EjbyO4SJjTnd1AUbvV5WE6Kpd8PKFlqFC7dLrc64puM=;
        b=La3bglWPNzmH59knU40QsbuSsMZ44upB7f1rM1NcvB0ssfzdhzmn39CMlC3cGwRt4k
         JrdYXy5Vg9xuKxWjgmTUzTzDufBru2ymb4KQ6fNKsBjyf8shCHL5q7u5qyVWhqAY+Nyg
         zCjnoXsOj+nkD2cUEiyO99/51R7eIE53vLuoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697752187; x=1698356987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EjbyO4SJjTnd1AUbvV5WE6Kpd8PKFlqFC7dLrc64puM=;
        b=Nwn+OCZqGlPlXp51YPJhe66c51rYVG/N+zcYGUsbqqIeD8nkXGEVXAUTbdBKZB84G9
         YgozRFoAqeuDgadNSqec5QhShu7Cr43EEq2aEKkVnbAKnPL97VS6/dBINjMBYAnlKFhE
         f226G1YaliEHvdBGUwi04oyQGqhqbtMz8O9G9ahdzVu7xmk6s0lXDc1D/RkBC+FiINiQ
         GoABrnn9AlLirkBF24iEyiZysAPYB8C69PrvAc3E6Q4c2v188TXKmKddtG2kpsfQGS41
         PsNWXq8EYvxHWEXIxjkdfrKWDclu2jk9olyALSQYpUZ+co+Ho688nDgIRoFTgeTnyWnD
         uCGA==
X-Gm-Message-State: AOJu0YwmMHhy3826hapB5PPO4kNQmnuxwTXGjPybRhFpFN4v84nGyJci
	WJrNfiB8aOctXnI9o1/bz9LbJOdo3+WQ/aR8w2xd4Q==
X-Google-Smtp-Source: AGHT+IEFU64X5WiI4lEhE8NZLkCP9X66sBS5XPvC24XQdRtTcixizcZRt6hKY/d8W5kiI1iH5k5Llg==
X-Received: by 2002:a05:6512:3c9f:b0:4f8:7513:8cac with SMTP id h31-20020a0565123c9f00b004f875138cacmr2539104lfv.48.1697752187209;
        Thu, 19 Oct 2023 14:49:47 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id hv6-20020a17090760c600b00985ed2f1584sm231481ejc.187.2023.10.19.14.49.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 14:49:46 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40662119cd0so10235e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:49:46 -0700 (PDT)
X-Received: by 2002:a05:600c:358e:b0:405:35bf:7362 with SMTP id
 p14-20020a05600c358e00b0040535bf7362mr35144wmq.0.1697752185862; Thu, 19 Oct
 2023 14:49:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013091844.804310-1-yangcong5@huaqin.corp-partner.google.com> <20231013091844.804310-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231013091844.804310-2-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 19 Oct 2023 14:49:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3Y6bSkCivGLgmJS7wQ+U=R=43inqKJYVX-e_rrDpjiQ@mail.gmail.com>
Message-ID: <CAD=FV=V3Y6bSkCivGLgmJS7wQ+U=R=43inqKJYVX-e_rrDpjiQ@mail.gmail.com>
Subject: Re: [v4 1/3] drm/panel: ili9882t: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 13, 2023 at 2:19=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The Starry ILI9882t-based panel should never have been part of the boe
> tv101wum driver, it is clearly based on the Ilitek ILI9882t display
> controller and if you look at the custom command sequences for the
> panel these clearly contain the signature Ilitek page switch (0xff)
> commands. The hardware has nothing in common with the other panels
> supported by this driver.
>
> Break this out into a separate driver and config symbol instead.
>
> If the placement here is out of convenience for using similar code,
> we should consider creating a helper library instead.
>
> Co-developed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 371 ---------
>  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 759 ++++++++++++++++++
>  4 files changed, 769 insertions(+), 371 deletions(-)
>  create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c

Pushed to drm-misc-next:

e2450d32e5fb drm/panel: ili9882t: Break out as separate driver

