Return-Path: <devicetree+bounces-66718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E88908C4552
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24A9D1C22E9A
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD1D18C22;
	Mon, 13 May 2024 16:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DGxfFIIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B261208B0
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715619005; cv=none; b=D9CJIlmUVJ69YP5gjEYJvmFrWnBFamshSGndLsiXMz5mJJR5beqYgbS7pEQcWvVAMXXkbmjMSDqml93lEM2tTuH4sCGnFVqQ0YN7RkUFrdHmkUmIoFvIRin768OhvYihEztmQfMSXqTmq60OvCwMH6riUBtGxzATiYe4R4MVr80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715619005; c=relaxed/simple;
	bh=Q4T8vXoHPZEkmdIakq62WIsnrqTauoxd/8JWnWqS/P8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JborFomBx1mpetaTaf+4BTheeMTncHYvCwfh2cQ1huvE613CUUTMU94hTsVTtqdZAHYLVojna2Y0gKDLydit3nCKmvgukGSym2K07aAx7YEMY68zyqzjNhYAHk96a5IbmkJyehcuVcz/HFDFxBaxUrmSDeWwuqfzdsw6Z9iycuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DGxfFIIc; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-43e23ce7b07so2287171cf.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715619002; x=1716223802; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3xjzHuMpEUX44ljRlkgoiEVbWwXbypeHFgnO2FiPZg=;
        b=DGxfFIIcx0hP1FBTfqilmU3QdXMViq5Ats8g9aR5wyKDih+KTPa99I9eZIV2PkNkHj
         Fi58z341bcrfiZxq9vHeqmqG7isbn5uasdmy4eHLT1N0+xx4RDN5BTX3mDcRDmFKV6Yj
         1SplwgCCNi4SbuYqItnt596RjVAeZjvobdFuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715619002; x=1716223802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3xjzHuMpEUX44ljRlkgoiEVbWwXbypeHFgnO2FiPZg=;
        b=XkYRk5CYjWvnCztUBmXWeFqy7y4BaxbGyTFGj2sZBysHcxomRfk3p8iU6zOUCbvKJD
         VOEmqryOn/nqiejDalUCYnGc1EwejqIttHk7/R3ZFhYDm3Ms3SqLIMwBnbXiMqDu+DSa
         1Sh3BFunB4CXJbkSiv9/BENw0b6JkpbMnjXLffdveYjGN4OCUkK/GUL2ISs91O2NPGXW
         ZL22jeSWpUSxMjPmA6nHyfIqWrhx7mCiAQ4EVVR1U4h81LdX4eR5WowKO9yY+PyVq3VT
         MRsHPsvq618D8ybvkFvdzCfh5RyheYJTI0+e0nXatDeVR7Y5bZ0GEkjgRCYlnjirdFoL
         Afvg==
X-Forwarded-Encrypted: i=1; AJvYcCXYeWKh2jzRxBuCYe8LevQKBfOTsudKGnx4pTEsWe2Hv01hWt5J26+9uenHPII+HyLKwGabTl5UIQvT9igRS43S0c9SXIS8lUVVWw==
X-Gm-Message-State: AOJu0YxFOk8BEHRMo0+5Tgl56R9eOYO5vkDYIc2AYEjM2g60BTkaM5vq
	n/nX4yGOqbQ2V/3wqF78NRUaUBzgpg3i/seV6WrK4B7Ae+R9hOAgnAUXe1HRzWGERSF/yQV4DYE
	=
X-Google-Smtp-Source: AGHT+IFL7wlvrsPKtmxyIxlt+TJNOHvpIXXkMaJTNe0lJo6TXLiw1CfOXruOiimX3QD1Y9bCZpnoxA==
X-Received: by 2002:ac8:5d0e:0:b0:43d:dee6:812a with SMTP id d75a77b69052e-43dfdd0d327mr124531891cf.61.1715618999835;
        Mon, 13 May 2024 09:49:59 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-43dfa7c0c1esm50543991cf.34.2024.05.13.09.49.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 09:49:58 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-43df9ac3ebcso767171cf.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:49:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUnsHX5XfskveUYvMIrGAPEKBfH8WK77v5jwt746DYHaHKtT7OUAVr5J7wdoGi24pqPc+Q/KTlL16UvUzNcCpppPutdHxD6L/Whhw==
X-Received: by 2002:a05:622a:510e:b0:437:b572:6d with SMTP id
 d75a77b69052e-43e0a2240ccmr4259321cf.21.1715618997464; Mon, 13 May 2024
 09:49:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-8-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-8-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2024 09:49:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U0AqC1HKaVfJhw4zQjH4EPyWdQ=sNGOd=Of48A64hHKg@mail.gmail.com>
Message-ID: <CAD=FV=U0AqC1HKaVfJhw4zQjH4EPyWdQ=sNGOd=Of48A64hHKg@mail.gmail.com>
Subject: Re: [PATCH v6 7/7] drm/panel: himax-hx83102: Support for IVO t109nw41
 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 10, 2024 at 7:14=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel, use hx83102 controller
> which fits in nicely with the existing panel-himax-hx83102 driver. Hence,
> we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
> Chage since V6:
>
> - Add hx83102_enable_extended_cmds(&dsi_ctx, false) at end of inital cmds=
.
>
> V5: https://lore.kernel.org/all/20240509015207.3271370-8-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V5:
>
> - Adjust inital cmds indentation and check accum_err before calling mdela=
y in init().
> - Adjust somes inital cmds to Optimize gamma.
>
> V4: https://lore.kernel.org/all/20240507135234.1356855-8-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V4:
>
> - inital cmds use lowercasehex.
>
> V3: https://lore.kernel.org/all/20240424023010.2099949-8-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V3:
>
> - Depend Dous'series [1].
> [1]: https://lore.kernel.org/all/20240501154251.3302887-1-dianders@chromi=
um.org
>
> V2: https://lore.kernel.org/all/20240422090310.3311429-8-yangcong5@huaqin=
.corp-partner.google.com
>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 131 ++++++++++++++++++++
>  1 file changed, 131 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

