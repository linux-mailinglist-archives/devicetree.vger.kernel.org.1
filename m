Return-Path: <devicetree+bounces-84032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1592AB97
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 00:00:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 002E4B21625
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 22:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D4614F122;
	Mon,  8 Jul 2024 22:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A6xyNBxI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B32414D28A
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 21:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720476001; cv=none; b=ICvkBQrSfnhsz+05UJLh9XS1P03g408JehzPnxYtGmBu9rpIucNnWK49Opu1L/BTojInZKLHhHOEhcLQ/FdfAbiWqr4c75bguAHY5LYIe8Cci07o3oXEghdRIbOCr6KIcKAekSfhbBgvkQhmYu244taESppv8WBhXzV2cHTSdmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720476001; c=relaxed/simple;
	bh=UbiKeenkHpA93IwWe8dre1vCfdfXO9qWWUZTNjWd0nk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YTuw9hBJASSAQ/d015g0t7VAipkAf7fW+un/PuiKmTYz6Ss3eWVN7cZiGgvxIutOTbpnpzvKugdgFwRhsGzB/kGgojztYdy9dypgGg34IxYZ2WxM+pHXDk5RIfoDuSjZgXSo0kezETYvYua0up9PHEzS4wFVRjE0CrcSo/Nm86U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A6xyNBxI; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-58b447c51bfso5493708a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 14:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720475995; x=1721080795; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltrpJ3wpWcI1Lsx4DkbvbSmrXoLvEHXjwbwXRsoboiM=;
        b=A6xyNBxIBIJ4wIFdE39w1Rv1R9IcBoLLli0ba2tT66kzjs+QzNtb6J5c7De/esivO8
         ZsOrU7danHmCWNwKgMcl1+rb2YYgim0G07f0WSNTlzvmXNMniodXdNzOL+1jkK7HIpBI
         EVuKnz5QejV0XX0C1K9W3pemUQkcRDycW2ABs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720475995; x=1721080795;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ltrpJ3wpWcI1Lsx4DkbvbSmrXoLvEHXjwbwXRsoboiM=;
        b=dEZV1W5EJwaQHCKJuZfplBJ8I5tzDFnFc98SBUls/q5YQ3uVBzT3tZGGl4vjVA1j+z
         iuzo0Zc9c0fXIL3+NouoVoTf4pVNsUE/EgHcuP76jNBKpBFkOtp3M1GQTqnBHTaZA77i
         o6zrHDllcqI+ml6OIqQL1c+cM4co3TOOcQWp2v4H/6cIlGO/qsUuKSJ6n2ATNvClidAs
         EfM4UoA9a7k7PeFZHo7+cQL3GOpC0HkZ/ueV+QnohPFNBTgsjWOXjhV0uKggWojsOsaV
         B56YXG3Nquhnkayr2WExTtzhFe3iXOAc/UxZxeMg6GsotEgQbcS9iLhXjROE8SMsQLxI
         MhEA==
X-Forwarded-Encrypted: i=1; AJvYcCWJdaAbe8N4NxHNqXerKO6qcc2238w5GtqjD7flUn2bj6la0LdmTgil8TFiX9Y0c5p9+hc21S+TGWmp6eexQpWWN5i3CDVwQAHqeg==
X-Gm-Message-State: AOJu0Yz7pOJz9IpWnGFcKM48efQMTVcxVBRpleQv7Q+3Mvnjo63i0S0p
	6Rj6LBmgXqI+BhVYH3ms1pnOLnceIsXRq813FhHM/bwoSUf77WPVAKEO1ISzdEICAFMB3BTdOdc
	8Pw==
X-Google-Smtp-Source: AGHT+IGpDjnnG+HUir+VOV2r0QnDAbQVII8dTXFmRp36QkshqakZ3JakqRFvKP3wzq8VhWZUEO1TTg==
X-Received: by 2002:a50:eac6:0:b0:578:6c19:4801 with SMTP id 4fb4d7f45d1cf-594bb5807a2mr424761a12.22.1720475995114;
        Mon, 08 Jul 2024 14:59:55 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bda30b18sm281195a12.95.2024.07.08.14.59.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 14:59:54 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266edcc54cso28485e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 14:59:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUdsnH4ylKNAEeB1DCHfyqDB0y2ncGwveAjk+z/usbqTIx/5lfyrcMBpTcvNnm0GRTrxryW/EgHBGrkMk9gJInMeZlY7V0I6Zv4jQ==
X-Received: by 2002:a05:600c:4f53:b0:426:66a0:6df6 with SMTP id
 5b1f17b1804b1-4267189fe44mr730175e9.0.1720475993130; Mon, 08 Jul 2024
 14:59:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
 <20240704045017.2781991-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240704045017.2781991-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Jul 2024 14:59:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WLVC8OkP-MqNmzpU3_O7bPv_qJUpG2MVActGT14fP4Jw@mail.gmail.com>
Message-ID: <CAD=FV=WLVC8OkP-MqNmzpU3_O7bPv_qJUpG2MVActGT14fP4Jw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/panel: jd9365da: Support for Melfas
 lmfbx101117480 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, swboyd@chromium.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, 
	lvzhaoxiong@huaqin.corp-partner.google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 3, 2024 at 9:50=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The Melfas lmfbx101117480 is a 10.1" WXGA TFT-LCD panel, use jd9365da
> controller, which fits in nicely with the existing panel-jadard-jd9365da-=
h3
> driver. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 246 ++++++++++++++++++
>  1 file changed, 246 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

