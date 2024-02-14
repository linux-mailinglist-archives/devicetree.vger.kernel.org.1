Return-Path: <devicetree+bounces-41499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B985410C
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 02:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6639D281EB6
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 01:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A7C4683;
	Wed, 14 Feb 2024 01:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bveaKCvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3348265C
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 01:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707873475; cv=none; b=fJ4fvsoRXbqh9aBVk6uSK5D82Bz2zxrsmKf6IkLr+lZX4PITiFmHPppdmki7aSshhjUjvSO3nmK9ItH+hw4O1bRmyGdWUXiOW9kpB+Kz46KR502+Exq/uLbwZnVx71qmCRgtlK2Fx80WmBFXtQxbeHjVPjcGbHTU5dptFnLr99U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707873475; c=relaxed/simple;
	bh=rBM05EwNb5zPmJZsUcrviXxJFm4T/Pw0l7QiMDppS5M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sT1qHKoGwv/l1R/H4e+pJu4eFKbt1awFGZnpdAHbodCg9ILxNxcPK8btZhXDNHs06f0Xz/UOoAi8nJswKxuhzn4zBfUinaqa4j/e7itE8DQU5z2uWMGk/UKup+/KxSobftIBlMKkkqpPErtk8wKV4NgmyaWOMajGpOif5iZrSrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bveaKCvz; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-560e9c7a094so6480594a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707873471; x=1708478271; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBM05EwNb5zPmJZsUcrviXxJFm4T/Pw0l7QiMDppS5M=;
        b=bveaKCvzlrMd0vxaArv+rLMs218PWPG20i6R9TfycTGArfIY0YqptaMqeW5BvYmo4o
         uyxGH+QFPrlk2LsZqT/vULXQNDJn8Yp/jrNG/iWRFN62vmu/FNkVUhbHu/FcC+QdijKF
         qP1INmSb6kmfrT8Swj3O7y308E5gWHQkneoHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707873471; x=1708478271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBM05EwNb5zPmJZsUcrviXxJFm4T/Pw0l7QiMDppS5M=;
        b=Nbos2STAe7Hlq+toQ4qQleX5eILd/J79OOwM6Vea5CG/DzQUIsOADGxS4SOSCL9GJD
         lx4IWlGjlcdahKKN7qEuf69W0/wPs9xgya4+9+xMZQ7iDhImvDaQDJTiRvcwBjB4wP5J
         vIbWG081uTfoO3PWEBVsDZAVJ0MpYJww7DM45EH+rYDlFouTR9NYsvzforYaPLUHixhh
         ObKFB/3uEmsLicrE56IDlRwsDmZZWsXKvyXQ/bdEw8YOcuf3nL1SAhJeBtbidLW1VKFo
         RCO7sT5K+/PBNBKQfEMY50BwY2AA0myeLWHQmKhntubV0ldyFYdV0ahNarnF4qGvb7u7
         ux2w==
X-Forwarded-Encrypted: i=1; AJvYcCUQ0ul4z5izrHxFghiOSTDBVpLKNTnPpYTaXA1XhDjgtimiclk9JJWkVXjbarwadozEw4l7i3tDvZ36QF/PBJdhw8WjW8UGMmrwfg==
X-Gm-Message-State: AOJu0YyF9XfRivaCogUNW3Y6UClRlcw+Kjvs+ajlV7NGoI3Ybr9z3HiQ
	iA3kR/iZHNIAdIOImFVa04KuvUrmryWIF+dHruCeAYZunZyXUsdzansrG7IZgcTciDnLCLYey4d
	b72RZ
X-Google-Smtp-Source: AGHT+IFhptBPD4mcmp+WhYIrA1x8e+QkfCbzbtwEv3jzvs85nbCkbnX/AGJ7iuOnbljChpQVuobfnA==
X-Received: by 2002:a17:906:1d0f:b0:a3d:4c26:abcb with SMTP id n15-20020a1709061d0f00b00a3d4c26abcbmr30326ejh.56.1707873471162;
        Tue, 13 Feb 2024 17:17:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXmUBZAaDzHitQtlu7Fk5odd281e3XQDFhhWEmu2KtvulIuz5HHg2j8bxD9Nui0aNuWVhNtnPGVE8nIw6wRsYsS2oF0HTnLb0MMJQ==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id a15-20020a170906190f00b00a3d412959e0sm133316eje.144.2024.02.13.17.17.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 17:17:50 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-410c9f17c9eso104135e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:17:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWfQQc47V9hhs8vITCEe8cE1EUZUz2IF+xCnyCuydRlCCRryNXX12edISrKJCT9y1l1wQYm12GznQyb56ntdZ/EMwQnaTZnrThMyQ==
X-Received: by 2002:a05:600c:4e4d:b0:411:62c:b4ae with SMTP id
 e13-20020a05600c4e4d00b00411062cb4aemr75039wmq.7.1707873469959; Tue, 13 Feb
 2024 17:17:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-19-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-19-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Feb 2024 17:17:34 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WE4bgwTWTKjPbQR9RCt-SEVZXfQtXoaXAjvTiZiMr=wA@mail.gmail.com>
Message-ID: <CAD=FV=WE4bgwTWTKjPbQR9RCt-SEVZXfQtXoaXAjvTiZiMr=wA@mail.gmail.com>
Subject: Re: [PATCH 18/22] dt-bindings: chrome: Add binding for ChromeOS Pogo
 pin connector
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Feb 9, 2024 at 11:10=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> Describe the set of pins used to connect the detachable keyboard on
> detachable ChromeOS devices. The set of pins is called the "pogo pins".
> It's basically USB 2.0 with an extra pin for base detection. We expect
> to find a keyboard on the other side of this connector with a specific
> vid/pid, so describe that as a child device at the port of the usb
> device connected upstream.

Can you remind me what the side effects would be if a different
VID/PID shows up there? I know it's not an end-user scenario, but I
have a pre-production "coachz" keyboard that's actually programmed
incorrectly and shows up as the wrong PID. Presumably I could either
throw the old hardware away or figure out a way to re-program it and
it's really not a big deal, but just curious what happens...


-Doug

