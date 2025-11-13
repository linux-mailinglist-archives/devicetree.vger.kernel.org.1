Return-Path: <devicetree+bounces-238181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC166C5862F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 16:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 755BA420BFA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05D82F0C63;
	Thu, 13 Nov 2025 15:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF722F0C70
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763046334; cv=none; b=KLC2AR3GNScIx81sgnxNyrj2F52rmK4AS4QOvH4Su1vSaDB03U0RFP+4pA0MpGh6t9PNxgBtiJdCUAVQREV3oDl5mS2C+j5NMR2gXndlFghno+Jck3PzyvjNlMyz9xi2bb3z77DBv1O6IA7qAUK1MYv8WY2GjfnWXi8zKkVuvjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763046334; c=relaxed/simple;
	bh=OulVxmqHukNU8jDi3wbWx/yy4OfpnoJmnUbmnzZwvDg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ql1z9iOrnVGJdCvjqCOaggzV+wDJ9o9DAyBfyJcSWdJVnkzGROlb9cvhmMOxc5oYeokkhuTlLWoBRO5zNvlHCVfKl1GWw5n/1jdx0cw78ddm5lYZZtIvy35VuDAr/ksGAndsFbZOO5B7W24GIcz0UXYOX2nEJy7WXJ5/uVdaINw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93723104137so288074241.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:05:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763046331; x=1763651131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwlUmhYLedxffSiGPT0olVCco0Fmu8rqsu17IPvjiOY=;
        b=m+b0xvGb5nPI93czOOVG8iWp/TClZM+wq4mdOwSiAaZ6+yJvQboAGCIOFNhtNMhig3
         nLFiVqNK5sIb34wAkN0YKsJYPe2lh/ExFqkZuStwO8afFJJXGm2t6s5RvEtfSVn2ZRTz
         A0tc3Ruo2xtRkJTUhGkIV9J9rk/XbxVCVgwXzvvbEYcwb7x7LbpX1pUrEsONTdIkNcQN
         veRMoJ/OPuk6iGA8iI4trVzRWtVCOLcsRL/ebO7oeX7UyHm5xum60XLXXfCE20Wbme6j
         DoVYt5gUO73vbL18aEhPGoqlvSAT3tx8O4HkZnnf90sLS2V8aGGpSSEvMGHc/LL+yVFh
         pB4A==
X-Forwarded-Encrypted: i=1; AJvYcCWP4YAx0lhDmdVa1jlfhTDwQuFhKRJXdJyxn4pUKOdF/0RNpGkME+2q5l046AdVVHXY8+5GXa86JTyU@vger.kernel.org
X-Gm-Message-State: AOJu0YzKdmWXGCFSmdT0Mx/CLOU+sKGt7nyacHnbp7zQZqvf+Ne7EWPI
	0ArDBa2xG2vrRIaE1TQvE1m5D6jNJDoLDYgsbbj1YuZ2oFT7m210qtO/fsMTfBNnBBk=
X-Gm-Gg: ASbGncvMwW4+qVJB+vp65ldoTHiZjvLcZ1niRUEZDpijJUkBsFjFmNMAlNChmoRGlRM
	Dp8uDUBOnQC0JezFMkiB25oB3dhrwr8xE8h4H6c30Hi9mRUF64ni98OjLN3FeDa5oCt267T3Qz/
	j9vruWH6geqqv117SfIrabBP0FtNipiL1z3Wptybd8IiUt+oMdFJSa7AGglC/vNh/UZdNSv+vbS
	yoJmESaMJh/S02qY3Z79KFYYt+6+nkzH2ITYydsXHIwuPjbhs/plkeYF7c/Swl6yvh7T61aDIez
	ZiresdUmb0nSLzWX0Fbr55HyIK7n1yMhQ9cX7aQDXibKb69fRjFbG9YFZ57zJXU0TeJ2o/w4L1l
	Vn21ab7PpXxZ/s89IeIuF4rarrrPyA5vryncE0aGzKIMdFH5jvXpvtSO9omFij5YOD92CmMYAsy
	yiZCUmA2oRmIPKPGL0V+NqTPmyWyTmSFg6XmlinA==
X-Google-Smtp-Source: AGHT+IEZPwIU8t98zJv802FRgM+5/KXzz0WB4aPw3TYUsg50R1DJltQLwSuOE39B+3kEfTbOTDhfjw==
X-Received: by 2002:a05:6122:2020:b0:559:67df:5889 with SMTP id 71dfb90a1353d-559e7c67654mr2615453e0c.6.1763046330482;
        Thu, 13 Nov 2025 07:05:30 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f35a6d9sm753063e0c.7.2025.11.13.07.05.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:05:29 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-9352980a4f2so300278241.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:05:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVGoiiughQzQx9yegGooHPZ6r4XTW27tUxgZumxehcidzcwkvkxnlKqpcsNdIZ+HaBMIgUDhsLAjzR+@vger.kernel.org
X-Received: by 2002:a05:6102:498:b0:5df:8f4:61e6 with SMTP id
 ada2fe7eead31-5df098d049amr1727150137.32.1763046328910; Thu, 13 Nov 2025
 07:05:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 16:05:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVaB15yLcGObzF_zuNKSqioE4ktD_u4xkJ-YJuQiD4fdw@mail.gmail.com>
X-Gm-Features: AWmQ_blisT-axhMgcAs5oMipnI2iYyBHU5ygZXj2OjcwlBET81JTXEQGhpMKWtU
Message-ID: <CAMuHMdVaB15yLcGObzF_zuNKSqioE4ktD_u4xkJ-YJuQiD4fdw@mail.gmail.com>
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable USB support (host, device, USB PHYs).
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

