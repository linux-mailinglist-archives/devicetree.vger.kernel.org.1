Return-Path: <devicetree+bounces-112471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D59779A237D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 15:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A2F728AD6A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 13:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351D81DE8B4;
	Thu, 17 Oct 2024 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aftDWt84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167081DDC35
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 13:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729171065; cv=none; b=pgpQmtmPcBrr/E53c3qAywBUXzh1jQgYZ0Pgqh70HCEvkguF1ltntQ3cL1mlb7LNUmC8VtlmjktoyBc+FMI+D7d8J+tkjIT27RuAZ+73PzNEJKbMIHr0aMWjHTIW5Y/mSOfKaXkzoltKXFTQ2kbCL9nxA2V/P7dFmK9+xxki5tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729171065; c=relaxed/simple;
	bh=M80KJaUJhwYjKgSWSRxGEkNHoJKkVbBVNZbxQNfoSa4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KRhAQBkukI5pqZD0yBOnqTGWrV3oZXbK25XmXtf37nvVDJbyZA5kFj0h9ORR/rbfO1fZXEosHJ1QGAyVpGHcP4+aZappjCMFHX66kd8BgTa1f5e3xIf15uulmEBjOXdWpvmDttUxn1cWImXL7D/yYJUI0KslxZQGTdKHYRiJUX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aftDWt84; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e297cc4b134so886018276.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 06:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729171060; x=1729775860; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M80KJaUJhwYjKgSWSRxGEkNHoJKkVbBVNZbxQNfoSa4=;
        b=aftDWt84hAC7wHUkZm6vXgWrflNsT5qLxnO+/kzev8dLjsLbYYLiCYOCrxmQhYlV2I
         /zsrk/m9d+T/KOeGxpqno2I9KKD67npTA41WPw9302GFBguOj1zzhqRmxVsx8JGkUqP1
         93RHUinqlekrq5EdIAeUmaaM/sqgG2WdMpvUWVaWANSJcQmdynRxamLBWf8Jnk9ZHLoA
         qbYAyB7HlvQXrvnm70I6t7wEQt32iY30dhUDVfE1P0P2BvMoKfhUm5OstlYbTV9mWEEt
         3J5p0gqexfTFpDyLU0XhXpkvTMLQnDRvE751oNEblttODwhHbs7A+hifTI5x5sw3KtyK
         ibMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729171060; x=1729775860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M80KJaUJhwYjKgSWSRxGEkNHoJKkVbBVNZbxQNfoSa4=;
        b=nFcXpWmu9FuWyfriKoiRf30b3xPLKdjOmMabMIHN+2iamDUfDWPStv/WQDzbN0Nk7R
         +4Hvf6aIWLFq7Bno8tj4O5hZtibm0O6kwoL9lrsnQTOGN8BC2DHf+/l+rRaJUlTCc0R2
         5uGgCUFkK952r7cJuSq4AWfWO5SglaEYensbqpiV8Y8/jGGLPdo27V2mTwgyPytFCi7D
         Twr4uPjH+HGWVg2dMb1VH/sYoM6qvlvA7ZwtKmxYzQLbMu3qelqpFgRnl3jteX/eRiTP
         /AnTWoZQKK3SM/07wRrLPYnwJs4YOTCqDdRoLhv01S9ZjX804gZr0HsOYkrJSdrl8Mz+
         npbA==
X-Forwarded-Encrypted: i=1; AJvYcCVw364e+XODavSxheJtz4wU6za/9IS/p8ruUTc8VLOtawZQiYQigfc66lHYpgw4A0t5geB28kVTPAkw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9wrGkYYX/ysr27GwALsBS/NCWK5Mw3kDUz1WevGrzhAWbuL1/
	Wso0kgxCfkqCO9CNoIfN1mWChSCfoEkcxmtXZlSR9NtEH2N7ouESqnyVWGaPzriRn/Xc/OLPy0w
	4rM/7aRxGEe3hpTFadQcX0+zXj7sdu2/2IjdJTA==
X-Google-Smtp-Source: AGHT+IHQyuuZiFyiR/8CqgHZ3Ze1mX3TGpRXO2WJHrKDNOMyyMzBPjljeY9XOAQRYtgoHlWy6njYbOGztV57jWUiMbI=
X-Received: by 2002:a05:690c:6408:b0:6e2:a129:1623 with SMTP id
 00721157ae682-6e3644d2f53mr155636427b3.38.1729171060105; Thu, 17 Oct 2024
 06:17:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017113942.139712-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20241017113942.139712-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20241017113942.139712-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 17 Oct 2024 15:17:28 +0200
Message-ID: <CACRpkdaTT1DDi1qVXJ8OBBrfQM_BxpESRuSx2repL=vjhJd8WQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] pinctrl: pinmux: Introduce API to check if a pin is requested
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 1:39=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:

> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Introduce `pin_requested` API to check if a pin is currently requested.
> This API allows pinctrl drivers to verify whether a pin is requested or
> not by checking if the pin is owned by either `gpio_owner` or `mux_owner`=
.
>
> GPIO pins used as interrupts through the `interrupts` DT property do not
> follow the usual `gpio_request`/`pin_request` path, unlike GPIO pins used
> as interrupts via the `gpios` property. As a result, such pins were
> reported as `UNCLAIMED` in the `pinmux-pins` sysfs file, even though they
> were in use as interrupts.
>
> With the newly introduced API, pinctrl drivers can check if a pin is
> already requested by the pinctrl core and ensure that pin is requested
> during when using as irq. This helps to ensure that the `pinmux-pins`
> sysfs file reflects the correct status of the pin.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Provided that Geert applies 7/7:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

