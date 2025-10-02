Return-Path: <devicetree+bounces-223392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C667FBB3E99
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:40:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 859B53C109B
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FDBF537E9;
	Thu,  2 Oct 2025 12:40:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA9030CD84
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759408802; cv=none; b=CK/jkE9PySvj2w/B2VZeuluKQStuqWviqT803oB8AmMtWTiMNiojDWRD8P3+0akuEmpTVlPwmlJ//+xo6gPdlHK51gA9Dx18Dl8rVs8sc706BCLjJL3OEz4DNcIrndEN+bEetktLAf978QmvfKFC0WTcmOEAKjnpvDTS8Aw3aOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759408802; c=relaxed/simple;
	bh=7O8Q6H/V342Hk9kSuK7PF1mqEQCZDCjvYkaJgb/FMnA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uou3dubJrsO1qdiND7qsPpa8Ow3lECFQRfHAAxg1noqObgYCryfY8T7vlCMu5Z6n6xnwbaxETqC72TqAzB05NmF0HuBDeFBj+QMJj9iPItpliVXKXRR1QgUkLi0OOgvcn9kAN65/ngmWovKwdbz4a/A47yCi32iBRs+euky8JKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5a7b2a6b13bso922426137.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759408799; x=1760013599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rJG7Pi+JGjs1abvLn2qtglQhq0wRNhthICu3ohkXyqQ=;
        b=ev9WoRnEfRx+iz61Ru9yZHyXZZHd2qMA3fVNGq1D52qqRN/RwHtzy5awgV90nVOM03
         2cOBrqvwD06b9jXl/lEeHyCaazDHSTq4dfKN7TIbjI0REeSR5c8axn0GNnzrcVsOZUd2
         OogR/Xjf8NnkUhwW5GL4Cn1W1+VUgvJF3EDQTTVKrskaYSBFOeE4nKLVrzQ1LOr4Bnhc
         J1xEYV/OSjpZsLcFhdor2DpvhyR+ZgcRAflz3ltvFyMCXR+B8hypMu5gnIdMQiCm8GLe
         i9KgCR6L8YOPLR3BUXX1pejRKcLtrq/v0saHFH9iOvU66r3/BuE+uAGzdQjMQNwmBygo
         Y29A==
X-Forwarded-Encrypted: i=1; AJvYcCWjsaR/PByHg4J/oWYmi4z28bOooQTKQil9Z7LwHsRAiXbWN2bE9Ngz4l7tuLd26OL9KOaWE80MSZh/@vger.kernel.org
X-Gm-Message-State: AOJu0YyTMjKJnLElSFeP/RlbFlGVRwq8lukpLLVoELVdvmpecQDbkTV9
	C69rCjDEuyI7VaaEwltdxyhvEC816fcXxT2YtxE9a0Qkx9rbbrbzZTG50r+piQr+Z2s=
X-Gm-Gg: ASbGncs9xzvrtPhqlWDb02IOoZrMdwFCHzyhVKoVSORnhVFxV3pxUiL1+uK5FVehKaq
	gtzdZBHwElQZVOzHhYx/wv1CIFA3Io+ne3jyFOpARFyPnCPyEj01kk/3txIZkp/o7q+oXrJkutP
	46lG/fO6bTSHytrIeq2dITBgETi+Xr3w0KGSLGXSH9xl8JXGPIkD8HavceviF5MyNs4KP/tnAcn
	jrh5XjIJ7fYDxn5nYZno/eyZqG/GK9dh516hTdrox20iH79IlKvMlAXX4fuTzNE+6Fu4evvOdOj
	7FzkOoM6xPXMEBUo2i6sAdOgb5p9IJAorVYzSgtGg79NiH8IkHBEoOO+OhzqpDW48lvZI6idjx/
	nQVo95WMrilrBZKKjFntAAzUPrSC1h5ZwLq7EX6kJ4LxAcb9QDzmSz4MFTVyBghmWepZh3jX/iG
	sE5coGA0fVUMYKiEcDQJo=
X-Google-Smtp-Source: AGHT+IEwJTWdOKU4hNQs2k9Q+BYBzYUGN3LG5k3or3uF+ORaFkCt0c9fFgKkUP8QVehJs81AOYOWAQ==
X-Received: by 2002:a05:6102:290d:b0:534:1aae:2d7b with SMTP id ada2fe7eead31-5d3fe6be0camr2724953137.24.1759408799241;
        Thu, 02 Oct 2025 05:39:59 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4d83c45sm453430241.4.2025.10.02.05.39.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:39:58 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5a7b2a6b13bso922413137.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:39:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWWZRTo9IeeBosQc2tA3bWzO29IZ5RmxqRkBG2L1Tz1ER8MfY0UL3ZDTepdHRF7bHsmIteoOf/Of7hh@vger.kernel.org
X-Received: by 2002:a05:6102:390c:b0:529:b446:1749 with SMTP id
 ada2fe7eead31-5d3fe5260edmr3028987137.15.1759408798147; Thu, 02 Oct 2025
 05:39:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-7-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-7-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:39:47 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX1kbS-KvD0mFXHiApd7K6K1scm94WBg-84MQPtN__h3A@mail.gmail.com>
X-Gm-Features: AS18NWB_Zolx4Yi5Ewsp7mWBmwmwJ9vX5Skmzp6rXOAIB3SYIXAxIWXsQiZ4XoY
Message-ID: <CAMuHMdX1kbS-KvD0mFXHiApd7K6K1scm94WBg-84MQPtN__h3A@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] arm64: dts: renesas: rzt2h/rzn2h-evk: enable ADCs
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The ADCs on RZ/T2H and RZ/N2H are exposed on the evaluation kit boards.
>
> Enable them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

