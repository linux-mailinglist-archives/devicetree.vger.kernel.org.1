Return-Path: <devicetree+bounces-225954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 701DCBD2794
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132C03A26D8
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829172FE594;
	Mon, 13 Oct 2025 10:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DjsrcUe+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6612FE570
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350148; cv=none; b=beL0D1skGLOHapCez7r3bj7rJqDTwRSMeXodniamLN90K9YhArhW7T6lkS8XRiWljV1pMTBzbkJqIMMZNiZrp9A34sIXYlxcGWukvcfftxHNYReUEhsmsFYfx+n4ibRe74PyNM9sZGckUrrG++J90sy9yOh2gNuO74W7An4FNUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350148; c=relaxed/simple;
	bh=BziZsaJ29p2j7+qiYkwkwh65tBbEFmB0tndDU4KHhFE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d2EiZfMuR9IeL89eVXKLmeo9zpg6z5KOe8bD4l2OzbNYb1SE9o7G5rHweX9q9qZ7Dx+uY9XAsnOtxGEuYDZGXEZqLSdIZx1C2FcDqNUaV6T0AuLNWgv3y/yi437ylh97afqK5Gm1K3EzvwgilEnHtJY0Fjb3575GeWTG2U2+U10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DjsrcUe+; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-36a6a3974fdso43399891fa.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760350142; x=1760954942; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sdoaiosx8DP44wjr+FKhiex7U2OYK/4Wfm7paNeyJNs=;
        b=DjsrcUe+143ghk582CASiL3M0tTr3lNi/MVxGGQWoDxtntew3wLey6tTHfH5EIVdSk
         Hsw1rjIIbUefcE5YNTwy/XenXF23Usez/ELTaWjBsgvyldnl6mDDu4BXLwCMCJPScdRL
         zn7qG1PG6/Kjs5sgMllzn9+NnsIv0nNdXXJd8eNlPeVxZiGmH/qtNPj7gku7gikaSwyq
         vgdpURq2KyJWnV9TdqWu1aRDIErqP7TkWNms3BHgq7vGD2JBI4OUaJyb9LOh5JDCcQIb
         0NZbjwf6s25DtHvmk7R1eVnBWguBj7P/8L6I0Ifmmcw4FYjAiFkoQLT6P6Go2rq+zRl7
         o77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350142; x=1760954942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sdoaiosx8DP44wjr+FKhiex7U2OYK/4Wfm7paNeyJNs=;
        b=PT7c+9YkfX6krCSpQ0mmctn4rHT0+dN0OfnEoVrkOS1OPhoKTCdCoMaiLJc8GP1q1U
         7IZV4+u5TuR8vYXdXZQlfoHMCIN/RAXrTTqFHssSfyZ3uSaABCkvT+AkfhcxFh+2gmRW
         0QbgK3J55lLAEpBf7dyY0DBhfaZhFVtCZ/RRrmqZXaO1A5q2uXK1edBtq2yY6Cyh7AO3
         3UjsZozbdCPeJsFIgyB1tA/wbKOWORRhQ1kpyidmNKRzexKzTpcAQrhU9Gs3sdZobjV/
         vj9LIio/9PZHRGljtOQX4MaDsV6WLL2hociajVJIJEPy7maJvoFHj13J4usOu+izMx2B
         lbJw==
X-Forwarded-Encrypted: i=1; AJvYcCV6RucwZ0XICLduWHxrjHG1U69ngPpLLx1eXDgEeH+ZKCQ2/xCLr1+zWNdYdnRUVzT31qqy+bi85UXY@vger.kernel.org
X-Gm-Message-State: AOJu0YwCdXZL5DDL7SUk26GCdNVjKJb+8PAfefX6k+kQ7hHCaruWCr9u
	T1FQ/v7mBGytr9UKFs7lIU22VWuuQXsOzD07PtWRZ+CMpV4IxSBOUe7GNqelodg9pPjp55clttC
	5KN0I7kJVFMdvl3O0IGYBblPhBWpiYY8QVkTfukX01g==
X-Gm-Gg: ASbGncu6tUulpf09VB5Nxeq6huuojYEesfCh4AA+5NpkSQAIEygDXhfo3zcCpUrtnYp
	TEpXeCvgeUY1FVAv4OtKkT3mpkxnbwlRgpL8uyRSuVVLABvcH6FTg5zcRehfypmNaF3O9IPgPfx
	M7gKEdqRI9OUOH9WAoMSLr+m4ehhCiY6knqZo+xjPS2UGlwKY++c0VpieD+v7h8AvFK2CfUEnGC
	N56oA7v186xjSqVTA71uOHgRCzd0cZDTzizi2AJ
X-Google-Smtp-Source: AGHT+IGw5FBPHMZY98OuHAGpmxfzqUBjohFZCP4Y+3ye7G2Bxk75SIlnTIXF/kp1jPOVfGXssHiDF3M9kkzcVBZy+WM=
X-Received: by 2002:a05:651c:4385:20b0:376:41f5:a709 with SMTP id
 38308e7fff4ca-37641f5d53dmr17660371fa.48.1760350141633; Mon, 13 Oct 2025
 03:09:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915-mt6878-pinctrl-support-v3-0-593cc007d4cf@mentallysanemainliners.org>
In-Reply-To: <20250915-mt6878-pinctrl-support-v3-0-593cc007d4cf@mentallysanemainliners.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:08:49 +0200
X-Gm-Features: AS18NWBxwqEgY4X_LszokVA-g-bopo-7ZyTrk7rGuaWxNocfJ07lm54aMEbkhdM
Message-ID: <CACRpkdbvTfJOBKOaEjje9dhnnjMXr1NqWpVBspe4Y8_WphaPSQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Add support for mt6878 pinctrl
To: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Igor,

thanks for your patches!

On Mon, Sep 15, 2025 at 2:46=E2=80=AFPM Igor Belwon
<igor.belwon@mentallysanemainliners.org> wrote:

> Igor Belwon (4):
>       dt-bindings: pinctrl: mediatek: Document MT6878 pin controller bind=
ings
>       pinctrl: mediatek: Add debounce times for MT6878
>       pinctrl: mediatek: Add support for MT6878 pinctrl

These three applied to the pin control tree!

>       arm64: dts: mediatek: Add MT6878 pinmux macro header file

Please funnel this patch through the SoC tree.
Acked-by: Linus Walleij <linus.walleij@linaro.org>
FWIW.

Yours,
Linus Walleij

