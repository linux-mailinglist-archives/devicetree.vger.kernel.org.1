Return-Path: <devicetree+bounces-223002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3893EBB0381
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77FD52A3A49
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6A82DE6E3;
	Wed,  1 Oct 2025 11:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iGBIcqZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7100C2DE202
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318892; cv=none; b=YqMVdxLXbELxcgoJnTaId846AibXQY0fUhYbo9meT1WAGMS+vGIchn3FkU1nSuDwEcrqtksza7BteqmSu+PduKHOqPrOt42ebiRuGzAo4+EFnQQfUOcXrvTgGAjKXMPTqllNIV4EhbgpYNCCu4GZeSX2gD/e7DxQFoM0Z4TYXWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318892; c=relaxed/simple;
	bh=XNoirN2YmXOb9e+cUQx56jMaIQh+gAJtYRQuQbyuBGo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZIsC0sRUlsi4/CKmVodDpFntmQmzOPmh5L/yYDBViRoI+Z13Hg5Ed15s0eyXDECa33i25XIRswtyKCJj7D7x2siHXNq40KobhDciqvF7d3V20m/a2bA8G2cQx/7Twc8t/TFJzXeV1Gf6WQhJkbPCuobyEaNDqGtmOpV2Uk5fv4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iGBIcqZ+; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5818de29d15so9375093e87.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 04:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759318888; x=1759923688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qctZSXMhs2xeiqfjqCMk0nsDO98tXumKc7sHsixp5Vw=;
        b=iGBIcqZ+9TycTKvNSiWZkouV7Wmik5N8GdkyJAC5jTLxIaSIKYFTZi6hylI1+nEutf
         Le2gXxMVkShPUGDqrR62j3Wf4YYeLomcJHuBTiM+BOcj6v8iXlsWcIZNjXJ5iq1SdoSi
         Fx/lrm3zTbQh9wWIhEi/en0CvPk1lLCebQV/b12O8mF/7tuvRxt+undkh6RCOlOJvnMz
         jBxu2ImwUKRwNGIbGFNAPr+HFkesPrzEHSlMXmPil/JiySkXwh3vc4dgktqfuuwhnZga
         Nvt0WkU9UpLB7pyoLRHtvi1Ie1Rnzx/ofigjjRUsgSm02AZwHd9Wd3DlfGkS8au0LNek
         sEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759318888; x=1759923688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qctZSXMhs2xeiqfjqCMk0nsDO98tXumKc7sHsixp5Vw=;
        b=H1S1kiMKn0xx/ljwnQHjxTbY/XJNoaVOUCR6XTj8Tm9JTacAHxYfZRyvvnit7+oDM5
         ZZSU+5/gxtPph3sfMGoJi/LTYxlYs35NertQjOiqgekIrDPDCHc1mEuf6sj0ds8I0SSj
         DSS0TVjUNhAOiKXW/LUjgmonqij9iHUOtNHZ44SKLfIRGDapBE+CgP3rGI4i5sL1C25a
         Hh/SWoCbZLYJGDP9NI8ZtEb5g37qVw8gGAq22cB0K393ronPGXDeLVcUs5I1tdihT8ys
         Gvn6HsHhbthKwT07XYCAtN2MG275EqGV5/WPeNk28oEmX80ENgSLC3/+QDE93419RJ1H
         LNxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl01atsBNT0WbLfXz32z2PUSRKT9AelCM6zxygxzCPwJyQXQw+jlhP5Mom+FVQo8h24FECyuK7o5rJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxH+t+dzQI6CNfEn9J5oxrwv8PxhgLOkJf/DFUZSi4oDy/hrofX
	ItckGrP91At1pB7A9KmFcBGyc2vsTvnOJU0trK1xe2oOy/bSOLF38z67lv5ONbRujhqOUpm5v7p
	lcw+CjcGl6GPgguUvx+M1ZzTXekyGoukNuu1HzcsgCw==
X-Gm-Gg: ASbGncsdGCqGeVoSyLgD2z9oxiNatQrdSCiC6yysheOgA4GaijkO9MXW/2dpwrOK1vv
	wAS499szUb0HnmezteXhW/lS7ii0/NCTLXwlkLbRI8+qnRpgcKana3eYtploR9TyUBJNjpUSBIX
	4AUJ6xJKLz1D+h4ZWAOwR/pSHEbRN6Ch3C84abXQm1x/jEmoek35utf+vDOgqaGEKbBo0wIODvo
	A7giKtT5gR2o6P0lTDFHj+t/1nhUb8=
X-Google-Smtp-Source: AGHT+IGh0WRelayFPhpsyMTnu/QogCxki2FOJNlaiws2mA6RsyILjodYZSp8V+kDGxU8+sBc5yZrKN2O5uWz8LJyuPc=
X-Received: by 2002:a05:6512:b12:b0:581:75eb:cb0b with SMTP id
 2adb3069b0e04-58af9f4df8fmr956846e87.48.1759318888565; Wed, 01 Oct 2025
 04:41:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250927-rda8810pl-gpio-fix-v3-0-3641cdcf6c1e@mainlining.org> <20250927-rda8810pl-gpio-fix-v3-1-3641cdcf6c1e@mainlining.org>
In-Reply-To: <20250927-rda8810pl-gpio-fix-v3-1-3641cdcf6c1e@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 13:41:17 +0200
X-Gm-Features: AS18NWBXAbHjbTdnQXpt6IR8KxMLhgGpEzULsJ3KqRHyjfQNnQcsJ6eT4En0sws
Message-ID: <CACRpkdZD+QFsFSTL0c6HbPp_4op2axjpZRL=y-KEMw_rNpxgqA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpio: rda: Make interrupts optional
To: Dang Huynh <dang.huynh@mainlining.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-unisoc@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dang,

thanks for your patch!

On Sat, Sep 27, 2025 at 7:02=E2=80=AFAM Dang Huynh <dang.huynh@mainlining.o=
rg> wrote:

> The GPIO controller from the modem does not have an interrupt.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Dang Huynh <dang.huynh@mainlining.org>

If the GPIO controllers are so different, should they not have different
compatible strings?

Maybe add rda,8810pl-modem-gpio compatible for the modem
GPIO then?

 +++ b/Documentation/devicetree/bindings/gpio/gpio-rda.yaml
> @@ -41,9 +41,6 @@ required:
>    - gpio-controller
>    - "#gpio-cells"
>    - ngpios
> -  - interrupt-controller
> -  - "#interrupt-cells"
> -  - interrupts

Then this can be conditional using an if:-statement such that
it is only mandatory for rda,8810pl-gpio and not for
rda,8810pl-modem-gpio.

Yours,
Linus Walleij

