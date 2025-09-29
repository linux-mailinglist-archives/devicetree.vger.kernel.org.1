Return-Path: <devicetree+bounces-222421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5395FBA9027
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:27:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14E5B3C3BD1
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656753002C5;
	Mon, 29 Sep 2025 11:27:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C382FFFA2
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145265; cv=none; b=N9QcTYJu8gEUvBksQivR3Z2R6cuVGFXLSHk28VjyvvVzUmj7YNNB2xit1gGWZ4PK/ngOXSrNCO+Shlh81uHu/McwFf8bRV0NKFudGA+v0twf24SyLr5BKLzTTr/LitwOF8HBOdZIMqPZ3habzep+LMxlxnYntf8vYVEiLQvUvKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145265; c=relaxed/simple;
	bh=rmWlDx8/WnTcn1dhj2ug2PQJyxzNzRBfLIGobT30KUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gVz7Co3DYQmbCirPqRMEzB7HssTO7TxZtakniQ2T0ZlW9m13KXfNInPfc3v51NJ85RvlrLi9a5qT9wo3fab+D4sPgQ1vm8eqLx2w5We3TGg/ShzRVHX69NC0bMTeWifPIOhmmybLkg5BzEN4M0OKET3TW27GU+q1aeNXZlOwNH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5997f407c85so1581281137.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:27:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145262; x=1759750062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3p5ZyLrRZH5goQlwa/vwelLSKRvjTSePuKZhRKGtt3c=;
        b=RLnWoMuXvb54zWOeMWg7hJJ6ULw0f/Sq0WBlQxDgUTUCCiYMhUtstlqd2sHDBQdmGY
         T9CvLLsqsEJKjyZd8g7wbBoqoXh3RVEut20Wg5rmMbu2nM5G5RSA0UvzY6KW/KTrYcUT
         DMgPNKOqDbgc2V4fWmpGHAgx9YnTzf55bNRmNzhM6JcnrjbMibsCRhpRZPfpDB0orcm4
         G1PmKQMDX43w+ymCmDuuQbVJaclgZFc0Hs/F/WY61mW+raA4MrDbZXbfpUvNA6CYDfCn
         RSM3uTYpsEfyt/JR81mVs51pMIkSNbmVsqP1MFXK9O8imuH+oJxgba61iP73SjXhj9v7
         hIJw==
X-Forwarded-Encrypted: i=1; AJvYcCW3o5fUzBsW9oHbLr+D8l26yMtNsimpqc/TFv6b2YRTGflvFHAl/5vtI7xGlQCe0+TIMFDmKXcxOQaC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1LLEfFTe6H+0UErz1vPMVyZ4GfCNEyXkt/vlQWyz+/cH1leL3
	9AV74VJLA/ifxr7MPEHbNqlH11DvusdSXJQRI8EYusuP2IbW2rfgyCyj2t+GvE5r
X-Gm-Gg: ASbGncumuL6Fq3mJt5uRa1m92TBi02BsDOAyY5YVj6+e3ArRpZdwHC2KFFu5Y7CV9Y7
	FiP8AeP58x0FU6rovOlal1tVlOOQxwpLxGgwmQ7JG0HA/vKzuhm70mXzawWMR0oJyQ6dE7NRRBN
	2ap1upAnnRZY6NVhZtEAUK7KbWZM89hBOh83oz+zCXtOti0fzxAIK9+SngKdB/LZUSswW/ZIwn/
	dLuRHhPXaP7nUt86372iEoM9omn+nyqO4aAxEWj13+mClPMgh0dNT0qZRpigugweQndBGM5lzfu
	n943UkzYVl9DB+IHCBS4/RsQrAQTR3pzdTkN0QTNpiVsE27NXxakJiVg4pz7whJmacgJpFTdLSa
	uCYkmfgqh9uQOJGvqL+d9d+nlFZc/55NCf+JuhdzInXDDUU0nNAY5y8meYw7HiCb3Dp6+uPc=
X-Google-Smtp-Source: AGHT+IGzBrLUOGdwVg5/C3ZQO2B2xI6lQLp6v3hYZ7ushR+0g3gb8h2LvOXLwXNqUtuPgrhD0xcpSA==
X-Received: by 2002:a05:6102:cce:b0:59d:ad3:e1ed with SMTP id ada2fe7eead31-5acc4638ae3mr6065998137.7.1759145262421;
        Mon, 29 Sep 2025 04:27:42 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d2948cb7sm2347160241.9.2025.09.29.04.27.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:27:41 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5997f407c85so1581268137.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:27:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVc2zDGBbKFSo4rRuyKEjdDpIbh4clX/EjqAXJUcvHtH+MBAYW6IWoP7Pf2Iwh9xXanbi+2NsWgOyYL@vger.kernel.org
X-Received: by 2002:a05:6102:442c:b0:521:7afa:3b95 with SMTP id
 ada2fe7eead31-5acd046d9damr5432533137.30.1759145260742; Mon, 29 Sep 2025
 04:27:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925224013.2146983-1-cosmin-gabriel.tanislav.xa@renesas.com> <20250925224013.2146983-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20250925224013.2146983-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:27:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUytaS3P9UrK-bpFSP-z8ys4w37d0BWCJ6c5idnM4iNTg@mail.gmail.com>
X-Gm-Features: AS18NWB5KjkQR6-4iBJ8hPH8oU_cNUXGPtBKbJx7p1IFxsy7u1OLZLpvVydcc3k
Message-ID: <CAMuHMdUytaS3P9UrK-bpFSP-z8ys4w37d0BWCJ6c5idnM4iNTg@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] dt-bindings: iio: adc: document RZ/T2H and RZ/N2H ADC
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 26 Sept 2025 at 00:41, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Document the A/D 12-Bit successive approximation converters found in the
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
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

