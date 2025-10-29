Return-Path: <devicetree+bounces-232757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B1DC1B916
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:12:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D57E0585496
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9912B2641C6;
	Wed, 29 Oct 2025 14:21:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1522725179A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761747685; cv=none; b=dHw8MsneKCutSlzo1MSXnJqEVlAlDuUeBoqpYSou938g7owBxYLlhsHnWzWAixK2RGffIQu4Min52/pL2GctxRlbqo6w4XFOnKsy2taLTog0Y55J7tOiPcbUmTIEosCac4XGDCKsWbqn3x7x0iIN+tOnJmkRaOIXHCol4nJgqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761747685; c=relaxed/simple;
	bh=ibKGRxpsOOl2loLMD6bCBKnAklZf3fN8KaAmPERTqpk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PjhB7rbJvH2b3YfOzOyxLb9jpB1NqEzI73+GoyjTlRogC8jNJxcXii2ewpkDllnBAA/i/FSqU5kuHSgzxsGxo5gpD86obzBTfclb1PVb0nPC4tvAPPjG5z8MunWbuCVA9LGomjB03u7S95fYR9UmDCCf1ximIhbOBWpquXuz0pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-934fb15ee9dso130155241.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761747683; x=1762352483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kyBzuS5uu50decQRlhVuBsPB9Un8V1UaO7gxw+OVEYo=;
        b=MrJPNzcfXCuvmZNaUr1WqtCsJQVT0yY25+FM4h1l6Bh+cY22Mu5nJvScG9x2evgJaX
         YDJEj1sZiTl02LNFCX1bl8X7iEVvcb/qJaFivpNzxP3G6sFRI/xSnHsKWcmCZwfQCM3r
         DgioHniVjdyAOGjoG+S0j+qTqna/fD+m9Bg/s6ALKG9AwBOvaifi2fkuEsqjDdmJTbxF
         3DQCT4NyOwIphZfDw1NpIDTdanWjgwKtJRYfthX9ML5vQpKFdZDsQIUnq2dmXZwal1QU
         7c6xb7f+EL6KRLr4+KmtZ07b588a2ykRh8JsAZelQmUKXMyjF/duIu2VfDfeQeWJPIMp
         WD+A==
X-Forwarded-Encrypted: i=1; AJvYcCXhamGN3Bd7qio9Mhy8jxx/zbzx8zwtHZT3FnnjQJllkbsUByBzdKAuSpXLTOCTIivVj5NL10FxLGmC@vger.kernel.org
X-Gm-Message-State: AOJu0YyV8Q6PpKAvpCOSFGVjk3Xgrx6k0XEqmNUo2/h34Ymu7X9C9wre
	Ac5bCPcCOCo8MTJoblM/x/5UoimuxkPOtBdqOWNIkO8bYsAd6HU+tLl7l9TS3+n7
X-Gm-Gg: ASbGncs93SZNKk5pMQL01ElhxUyLBVVMizvCifcOl4XiQCuqOXX16i1mV9Vp1QvT+7y
	op0lChAVsbP8ImoWSMgyC4rySoyfn92WxlCpMHmmqtriLWO14nIa9SnGK1D0tZxDb+wThfi5S4f
	QDkDODok70t4KKcw2GIQCz0CjAMnNwooouJIjLSyyh4MqQhCa5X57URwK/B3GUEDTDOp0dqgPqn
	J3kBsJVK+Xcl9Mit+EeJoH1+MpJjqmOvsozSqu9s8J5WAE4eiFPei4dT/t3zZWHit12G5vkqYZa
	7CziMRssLM4z1kjBMmtDT4X1lh+2Yk1Qw8njOv/IhYWc4VNcXaWtwoQsg/yK3nza+biSm25sDGW
	x8vkhNILPM1PejURihr9mNGJpJEw5f61kvJhKi8N45k7ocLomlFVqR1KztqjIN1wTqaEwsaIzri
	hDE2Ud+Xag18RXXuqIx8pD6U4PcMw9MOaKrQhl8Pv8HHDHfQNQRChu
X-Google-Smtp-Source: AGHT+IHOplPcA+5Xe3pCG7LyPk8Szlm8k3SZie8WvqRcdLGn0Rko6q/JfXPyIfCtOqjSTpOKnKLyRw==
X-Received: by 2002:a05:6102:50a3:b0:5d6:18cc:6087 with SMTP id ada2fe7eead31-5db9067e5d2mr781263137.30.1761747682690;
        Wed, 29 Oct 2025 07:21:22 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934c3f152cfsm5107732241.4.2025.10.29.07.21.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:21:22 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5db37a935f1so2960164137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:21:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4j2b//0iNIR2UQdSzksUvLMENCvpYFbZMgDHM5NLEjxxpY7YPJ/u8pDhzVBWQF8yymgXG4fEXKECf@vger.kernel.org
X-Received: by 2002:a05:6102:2926:b0:5db:33f9:adce with SMTP id
 ada2fe7eead31-5db9069da51mr902689137.41.1761747681523; Wed, 29 Oct 2025
 07:21:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027184604.34550-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027184604.34550-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:21:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW2sn09MQoV6ktBwd+JF-5M_c7jdW_e68xEGYsovqOr+A@mail.gmail.com>
X-Gm-Features: AWmQ_blJcp5ae8kH23TjMg-NYbqTJRrYgHltFldOLdMifDYWeLy3Gz7jK56UcE0
Message-ID: <CAMuHMdW2sn09MQoV6ktBwd+JF-5M_c7jdW_e68xEGYsovqOr+A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: Fix full-size DP
 connector node name and labels
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 19:46, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> The DisplayPort connector on Retronix R-Car V4H Sparrow Hawk board
> is a full-size DisplayPort connector. Fix the copy-paste error and
> update the DT node name and labels accordingly. No functional change.
>
> Fixes: a719915e76f2 ("arm64: dts: renesas: r8a779g3: Add Retronix R-Car V4H Sparrow Hawk board support")
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

