Return-Path: <devicetree+bounces-41481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB29E854029
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 00:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8EE61C219E4
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 23:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC5A63105;
	Tue, 13 Feb 2024 23:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Gm407KeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5B8849C
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 23:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707867298; cv=none; b=ZQv3QjqbmTs+ark3f3sUmLMUMxf+jNMQkzxIZ441R3l/3bjxFVAaw3jeA/g+ECz1abRCelykM/A+ZuILLbhva8owB6wLPWzMLQ9YnRe8QzGt1sNHaP2wTTU6xvmfaY64PYj4zoxGxvCHfSntNjV59rM3N3cKPEzqngPYwu7l7lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707867298; c=relaxed/simple;
	bh=hZDX0moxKA2jr0nQXnCCS4aPrBUL93MmvQjXD7Vlbz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d3V9ZLV40SnAYzEajfHWhWA2U9/OdHbTwkgX+6z4LxBaXCKByJk67S55h7nUGnJu94U+HSo4rGsGg0TRNKR89u9MlR4Mi8uBygahSCHqb8qrfIyV6vKp70H92mpekTo691o0dpoVFQNdigiawB6yiDhmr7Bl76aBbQDW4J0t5gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Gm407KeP; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a293f2280c7so691788766b.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707867295; x=1708472095; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egLJA3w8XbBkzhBhvJeKiOGztHliZVh9q//fDQHtqjA=;
        b=Gm407KePlEHJbzz8jj9wmfPmLN9Ea52bH6QixqNjzqn+wu8uXQDMfR6TPjUpe8/cx4
         JkcHPcC8yJFXc9N6OKOXgh6h2B4N53jxJ58USHwL8Ac0SSddpTAZQ/oeY4zbZ9ZSh05E
         qW6Pkc7LQsfxDO+xODb/lAxYhmsaqx0W09AhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707867295; x=1708472095;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=egLJA3w8XbBkzhBhvJeKiOGztHliZVh9q//fDQHtqjA=;
        b=OXNnynEjlHLhyAksLo9oSLcGGpy8jwGZ49FtAxkvi/ZGvrL1EsId0Md0FoBYqEnYMl
         JrDqECw9+m2hmfsGwJx9tsmT/Ro4DGWgo8GWtUE+e7GCzpWB3VJFSgVU7mgk1uIk3/2x
         oB3dMXCiC3jUZbDAD8j9oekfb3v0Aj+/H4OJl39uOXJKUL13AE46nApsaeY3OCOu3dGM
         cGQ0Dcu3lwYbmG8IL0TFT6LUzljbudIXSc67/Mh92qVQjVBhwYGEp8s/GuSCTKRhYjsY
         3HzUYWdYoVUxr5hmSk+DA+zP3Mb76cgjhzUPeEec3nxQReTyNqNLRpgDDPfSfRnZ2G9u
         thhQ==
X-Forwarded-Encrypted: i=1; AJvYcCW94MfOeLH+9iKFucI4dmz5iTk5mtoJYWD2owaUPR032+3TQU3NlN/4jIJHMFz5uT28pCdJa9P8h+KLRLzEWxcH3fNfpkw6VCwq7w==
X-Gm-Message-State: AOJu0YxTIYA65oT6ai63K9zbXXWdaP7jFY3Gc2+EdbfHgcHoahnblqEv
	/mrCpjzOoo1VV9BH5uiwJT4ri8/wyOXbwE3Fa5NIeEU6VztSDItC5RW2XzfzP9gDZdBfctTEy4D
	ZBhiC
X-Google-Smtp-Source: AGHT+IFEWnc0WsILO+AC5vQQU1sO+086rSgdtvQVtayLsVCbbv3iiCpUy42yI67hGjoYtK4CUfl6rw==
X-Received: by 2002:a17:906:ce4b:b0:a3c:2da5:78f3 with SMTP id se11-20020a170906ce4b00b00a3c2da578f3mr599997ejb.65.1707867294808;
        Tue, 13 Feb 2024 15:34:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVPTPiMPlg+iK9ri4oEMjAa8/vF7fBKKDdlru9XeN7d0zpPAZPDIW5sY3+jjGAryw7lgvcIavT1coYhUxNsQYmt1sLf3509TwoX7Q==
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id h2-20020a1709063c0200b00a3d1ea6134dsm607965ejg.197.2024.02.13.15.34.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 15:34:54 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-410acf9e776so97225e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:34:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUn8o9j3doK23IGoYmZUubOOdWKWlldAZC0rJGr2OK/x2gq4I1si9KYqnSarYdF9/bobVUNjwMWKhker5is2TM+twnRNypArP25+w==
X-Received: by 2002:a05:600c:a01a:b0:411:e72d:e5c9 with SMTP id
 jg26-20020a05600ca01a00b00411e72de5c9mr9514wmb.5.1707867294378; Tue, 13 Feb
 2024 15:34:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-22-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-22-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Feb 2024 15:34:38 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WovmtKFiG0OMzpus9=z8UJ+Ev3TrwsVia8pSegvjwUiw@mail.gmail.com>
Message-ID: <CAD=FV=WovmtKFiG0OMzpus9=z8UJ+Ev3TrwsVia8pSegvjwUiw@mail.gmail.com>
Subject: Re: [PATCH 21/22] arm64: dts: qcom: sc7180-trogdor: Make
 clamshell/detachable fragments
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Pin-yen Lin <treapking@chromium.org>, cros-qcom-dts-watchers@chromium.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Feb 9, 2024 at 11:10=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi b/arc=
h/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
> new file mode 100644
> index 000000000000..bcf3df463f80
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Trogdor dts framgent for clamshells

s/framgent/fragment


> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi b/ar=
ch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi
> new file mode 100644
> index 000000000000..ab0f30288871
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Trogdor dts framgent for detachables

s/framgent/fragment


> + * Copyright 2024 Google LLC.
> + */
> +

Tiny nit: should this file have a comment like "/* This file must be
included after sc7180-trogdor.dtsi */" like the clamshell file?


> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/ar=
m64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> index e9f213d27711..c3fd6760de7a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> @@ -5,8 +5,7 @@
>   * Copyright 2020 Google LLC.
>   */
>
> -/* This file must be included after sc7180-trogdor.dtsi */
> -#include <arm/cros-ec-keyboard.dtsi>
> +#include "sc7180-trogdor-clamshell.dtsi"

nit: Not that it was terribly consistent before, but in lazor you
remove the "This file must be included after sc7180-trogdor.dtsi"
because (I guess) it moved to the clamshell file. However, in other
dts files you don't remove it. pazquel has the exact same comment and
it's not removed. Pompom has a slight variant of the comment where it
explains the reason (to modify cros_ec) and it's not removed. Could
make it more consistent...


Everything above is either tiny typos or nits, so happy enough with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

