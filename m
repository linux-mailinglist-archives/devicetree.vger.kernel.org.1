Return-Path: <devicetree+bounces-107330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8051D98E3F9
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 22:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4334F2868BD
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 20:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB91A1D1E8A;
	Wed,  2 Oct 2024 20:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OouigvW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F061D0E28
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 20:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727899792; cv=none; b=ZfgOvlICKpF+wrdjmh8CBYyRPHCcPeZlor02sf9ZPPM8ZP4szDsClBgez2O9qsKd6yKw2M9YOLxHrf9L4Bg/prcasK4ho85XFH2BnPrBaSPgJKc5Rpg7rL5QSaGltmZzLVsu80+8F+VkcWEf1NrikeyZMjIC5NPIN2mZpNMclZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727899792; c=relaxed/simple;
	bh=cPEWC+ms1931EI6qBFNLg3svt4urmza+0m6lhnuFJ08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LPb705R/1sstG6dYUYMA3pM9Hd4Ra7CFFJV/ykPLjxGxJ+S+2IUAQ2lcsWROWJ8CJl0EN572GjVbMlvMteu2cB4KEx+x29FYQORtbOK1HSIxalAUAiOFYuLFhfhbkmSmVLjv1cA3PUpPOpyU8nzTDSNomreHSFTwPIoHuGkb644=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OouigvW+; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso2174291fa.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 13:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727899789; x=1728504589; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=91dAvx/GtXFhViAEPrc2ya71jT/cwYu2QCMwf3YXBnA=;
        b=OouigvW+zSTjX587gEMaH9fqIKAXwblaUqClQeAD63liLZzscvNmO/c/qjBCy5XUVy
         7DlaTk1oowQxOloroerpfMnaQ9L45My5Zyx80SMVnI6qwE0s0B03jngjETw/PE7Vn3ip
         QpZr42I0AvR+uZx1XoGmE9l147DxyRN4RVwOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727899789; x=1728504589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=91dAvx/GtXFhViAEPrc2ya71jT/cwYu2QCMwf3YXBnA=;
        b=pk7yBUvdoBRYLP7Mf2SKZ7x5EkqtXMGLV6R0lQ3xX2H+Slk51itcDd2fIpe2Zxe+P6
         QQcR8Worh8Fjl+7hQyIYC988YJe+nop+b6BfBeslmMQ3g6UqpZNbXLyS902m+2e3yFzz
         J7qT3xQjKa00wQweNkXES8PiyoCbWwXsh3yVp33AEtOoBF/iX+zOqqqMDWLEnDp4K6hO
         jmzxJvvbWAgkFEEsZi+D4ty6Ir0k7GDam5WX8XLLKToEnx41APqrTPOrglLGwJ7wQQxa
         DD9RHjQHGQkSLPcAKqYy/PXkRgUJCiDs7NaZOtTI2CcTRr8XW/A3NQKD0OHvuXQsS+ip
         gfiA==
X-Forwarded-Encrypted: i=1; AJvYcCXqVOLD+s6gXZU0PF3mcWtUWWXTEKu7ZtNQ1R82UCOlHiLVohuJO+/YjamyQ+PegxdBqCbtX2eaAaWv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy32trKPrnfHitHuUMtFyPhW4Vn3Jl5JbgHICWN7NShPbywQQgM
	PgXvGbGzC/MNAYCy/VuiZbemesSH22HdrYiNz0VzqPsMu5FvCRd+0/kGkIVSUvSuhCH661WcJOM
	Q1+Nc
X-Google-Smtp-Source: AGHT+IGgyjOW3fSimRQG9OlAC2Nrrlg3RUbNZ+7bvicgsrRCi78C5w3eq5WJ5YjLPr/LqlCJecNqWQ==
X-Received: by 2002:a05:651c:1548:b0:2fa:d604:e525 with SMTP id 38308e7fff4ca-2fae1082edamr26867741fa.28.1727899788724;
        Wed, 02 Oct 2024 13:09:48 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f9d4618dabsm20278881fa.106.2024.10.02.13.09.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 13:09:48 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fad0f66d49so2639801fa.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 13:09:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFUcJSimj3g0NP+RTuLAVmugyAVTMiKCsgAVzbmqURr2BHVDdw2IayLyfyT0YJWSOlCvqOxJg2/H+N@vger.kernel.org
X-Received: by 2002:a05:6512:3b1e:b0:536:56d8:24b4 with SMTP id
 2adb3069b0e04-539a065eb21mr2856666e87.5.1727899353357; Wed, 02 Oct 2024
 13:02:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927094340.18544-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240927094340.18544-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240927094340.18544-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Oct 2024 13:02:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WTOCNtvvT3Z-5-7eRnFt4Um9R+vq2BB+V7DhWngsKrWA@mail.gmail.com>
Message-ID: <CAD=FV=WTOCNtvvT3Z-5-7eRnFt4Um9R+vq2BB+V7DhWngsKrWA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/panel: boe-th101mb31ig002: Modify Starry panel timing
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, hsinyi@google.com, 
	awarnecke002@hotmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 27, 2024 at 2:44=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> In MTK chips, if the DRM runtime resume has not yet completed and the
> system enters sleep mode at the same time, there is a possibility of
> a black screen after waking the machine. Reduce the disable delay
> resolves this issue,

Similar to patch #1, this sounds very suspicious and I think you need
to root cause the problem and submit a proper fix instead of just
playing with timings.


> The "backlight_off_to_display_off_delay_ms" was added between
> "backlight off" and "display off"  to prevent "display off" from being
> executed when the backlight is not fully powered off, which may cause
> a white screen. However, we removed this
> "backlight_off_to_display_off_delay_ms" and found that this situation
> did not occur. Therefore, in order to solve the problem mentioned
> above, we removed this delay, and the delay between "display off" and
> "enter sleep" is not defined in the spec, so we reduce it from 120ms
> to 50ms.
>
> In addition, T14 >=3D 120ms, so we change
> "enter_sleep_to_reset_down_delay_ms" from 100ms to 120ms.
>
> The panel spec:
> 1. https://github.com/Vme5o/power-on-off-sequential
>
> Fixes: e4bd1db1c1f7 ("drm/panel: boe-th101mb31ig002: Support for starry-e=
r88577 MIPI-DSI panel")
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>

Similar to patch #1, no blank space between the "Fixes:" tag and the
"Signed-off-by:" tag.


-Doug

