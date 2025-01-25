Return-Path: <devicetree+bounces-140909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C9698A1C399
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 14:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2D721889E9A
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 13:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A517920898D;
	Sat, 25 Jan 2025 13:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="V5tHekW3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E54E1DA60D
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 13:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737811287; cv=none; b=WvVNyhpm4SZireflSq4sgMh5Xw9QrC/yRyuAg6rQ2iGiXmKfapw5enEw7JmqKuEjSyRyu9Y6KwC335w7JNAGW2N9ecEWzEDq+7NoRCkhtI21bnWWh09+iarpezQwm6nzCOSm/ZRaMNupOSx3n0mW9z90nZaQLMom6sERFtifd2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737811287; c=relaxed/simple;
	bh=rqQlkYxYh5YiVxFjsX2QaXZvcKyx1dpoVsF7zYYgoA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J5FLt/qIQDhj5Xs7WSRgMH9iXngbRpY6AIeKQ7qsXdk1PDN1FUfm+V/9P3fe+R7hU7OHAfGErJplaX5usjBSdGpzsDPfQlSdHAW9xbyXzA/zMfo8a+tsTolrgFrjTl8517JXUGgNp3jkQgyuR6HuU/BXwFzm97m0D00RU4i9zOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=V5tHekW3; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e53a5ff2233so5523303276.3
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 05:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737811283; x=1738416083; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqQlkYxYh5YiVxFjsX2QaXZvcKyx1dpoVsF7zYYgoA4=;
        b=V5tHekW399w2KB/CZ5EmIr/jHO72JUiSIYq7DHlM5CHdnR8E1Nlp56UgJnGaxCPtMG
         skdQf+EpEjnYp8FbBl9pJcGgExuUXQkm1YogMw1j4xLd12yZxZbDd7tJkNGPlmO2+Ktq
         vhWrf6ZH1+x5bSetTHcgdO5TT2Gx810hqtQBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737811283; x=1738416083;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rqQlkYxYh5YiVxFjsX2QaXZvcKyx1dpoVsF7zYYgoA4=;
        b=KIvyB8uVT0xYJf9riaqD/uwxi+OMhn31CkcKfXiJHjeTRD4DRX/WPxzcBxXcu8VzGL
         FKYHDOsrgS919gkXQ5kVZ+I0gDxFCE/WAxaIxRhc/q8oZpjHWnqXfvzKX209Tal2d8WU
         +WwD7sMz8cxTgufg45nAJA/80BvFbbjbpBfRN5IV0ViJgfbZNxQcC8sLX9faTNlSlSRM
         8yvpACcJdRMtgcPlHU+eOK7GD7/yMWyEb3bQ0jPA15NQSbHE9F7G3yr6/Fs9QbFNAP1k
         wlDadvFcCtCx/Rq/ICTlXaVcLAIUiusl7L8AgLoAiUfwOHEXchI8YLPaTlM5D3PyINWd
         cNiA==
X-Forwarded-Encrypted: i=1; AJvYcCVpcfj6NzK3duCStfMj8P/vRLcX2wdkzwCsGNXM2iczg6uEjg9AdBxkDs6k7Po+zNoxsu4LKhM47n9v@vger.kernel.org
X-Gm-Message-State: AOJu0YyeIp9QcN8s5xV2//l8YeI8kFgwf1B/Sjgd6D2ADQWKvhBTBH8e
	c3bmzW2hqLw35YFYo9ueTz3QqyRDIpX+nuOTWmWrlHXtYqd/Onr+L+4uPHCmbV5PItFceHZEMmV
	53ArciaacTEOUlfZ1SLLHM/s/RpP1uJ0/LGJ5aA==
X-Gm-Gg: ASbGnct3Q3LwOrMaRc1fKt9jGd0Rz9WRUh/tM0a51TU17bqAmvlCgHb8k3VW2zsLPG2
	U0FRDvNjRXrEGxdqB5OVl5ys6mE5gEsPqjHdN+asDdX7ti/gk5N70Eae6OacL
X-Google-Smtp-Source: AGHT+IEC66mHyu/T69Up/dX022TugdsmD0uulT2kpXSasOG+om+qGGY/LBwo1LfOlHcKiAvuEQ7Oi2p0ts4rAblyPzI=
X-Received: by 2002:a05:690c:25c7:b0:6ef:6c57:ddc6 with SMTP id
 00721157ae682-6f6eb937ac1mr261166397b3.34.1737811283560; Sat, 25 Jan 2025
 05:21:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114182021.670435-1-dario.binacchi@amarulasolutions.com>
 <20250114182021.670435-3-dario.binacchi@amarulasolutions.com>
 <73ad1336d9fbfa020ba666eef340f784.sboyd@kernel.org> <47865ef4-fb8c-4ba5-82d8-eed1f292bf4d@kernel.org>
In-Reply-To: <47865ef4-fb8c-4ba5-82d8-eed1f292bf4d@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Sat, 25 Jan 2025 14:21:13 +0100
X-Gm-Features: AWEUYZn9YZy8Owehe6KhYJIuvjU2tyrCD5F9XaUX2lhI1_Zpu924GXyOjD3iZ7A
Message-ID: <CABGWkvpeOyrzcU64pNxSYC7n-VOsjSEL-iD-_YqmCveGsrH-hg@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: clock: st,stm32-rcc: support spread
 spectrum clocking
To: Krzysztof Kozlowski <krzk@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 24, 2025 at 2:45=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 16/01/2025 00:22, Stephen Boyd wrote:
> > Quoting Dario Binacchi (2025-01-14 10:19:47)
> >> The addition of DT bindings for enabling and tuning spread spectrum
> >> clocking generation is available only for the main PLL of stm32f{4,7}
> >> platforms.
> >>
> >> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> ---
> >
> > Applied to clk-next
>
> Unlucky timing. NXP just sent this:
>
> https://github.com/devicetree-org/dt-schema/pull/154
>
> which makes these bindings obsolete.
>

Why have the DT bindings already become obsolete even though the PR
has not yet been accepted? The series has already been merged into
the kernel. Please let me know if and when I need to make the changes.
This is the first time I find myself in such a situation.

Thanks and regards,
Dario

> Best regards,
> Krzysztof



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

