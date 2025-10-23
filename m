Return-Path: <devicetree+bounces-230292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4A3C014E7
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:16:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C681E507B06
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A134531E101;
	Thu, 23 Oct 2025 13:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTmywmVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4185C31AF22
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761225250; cv=none; b=isX62KOjP5YBxb2q1NgpISex+wgvZRTz4ZHD/egvUdtaoTbDrOD7A8g+ps+1hj4pKlIuyaBUQy4EG3qMbHgH+HwxcI4B8aEUerNaustYRBac55O8oW93Wa/ghIXmv74kGtW14dxu915bs22y/g3auEsItmfLghhjAfhe3hv4Pxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761225250; c=relaxed/simple;
	bh=rCgZQMvhqpJkSPW5CDm4P/9du6BfJf0oWn2sB/mg4js=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oPohz5F1NVinWDDX0w1ylcP47/gPE2sdeQW3Uat9t43qXQlSgxHLZftUL1HT7bt8bUWFU10RHKrmlQorhCjtCEQHIJwY6Bzqt0tmUBboBKT26SPruehHxWAnjkKfaJrNYotXN+MrHokZEWUBzAGmZtXsshRYoYf9FDwwqH4iB6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yTmywmVu; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3778144a440so8170391fa.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761225245; x=1761830045; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjHHHhlIwMyUNtV6qNO7lwTmbrTzq58N0AEeJA3rSmU=;
        b=yTmywmVuSScFS3RdPhtSge+WVKsWGnYEWKzlgM+s4T+Yit0f5qQBbmAO9UXkS0su9U
         /H2o1saHBzIL46cu+b0sNPguAdFS03ESxICuggmb5ZVHWUSxkF7NjOw0Dtge6n40J2wP
         y9UpToZ40YDelfX4etnFsgxIoULooQTRrMXzwSOKltzJ1uL058/I193olPJ0QPgo1YYY
         PiFBd4C+gHuBzEKYJQo7mHD73fdSTLV3NA/qNbQgEBL03MoS3Kj7RCDIqJzhqt+5BhBM
         obJYHHJQoQia1yjJfC+Y8tfuc9jEYFOqVpbLJ8ra2fqhlv6COfsOIVVXnyYIvk+H1BHT
         QP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761225245; x=1761830045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gjHHHhlIwMyUNtV6qNO7lwTmbrTzq58N0AEeJA3rSmU=;
        b=lKwilU7DNxjH3jCE6kbTAvCrIx048nFwX7m7yiM8GiG2li7mdUWg//YUBTCOmfQniw
         QsqrwETj716daXNmLyVGzRPpSjUaDF2/5n2HBx7uZqILnq89KkXsFQa6Mr75YUS+l8a0
         K3Y+1/QjreFP6GTOCrIWbBx1YL8cbdmU4Qz8pFR0Kx2i/oIXgS1oSiiNdnAvLwzHYyW1
         8ZKKBtIyrTDe4L3Zzk3DH3rkrCHJEGvSbrtPw6yDvuTtYkoR7AfrRD6pQ3XgeqAGTg45
         F4IJjOKPa1apOGoV3B+jgz5DWaMQeUKRQNcCgs8zUtT1YU9j4wcQv7VkLh9AhRAHwLnW
         Rapw==
X-Forwarded-Encrypted: i=1; AJvYcCX9n3qvyNw46tDxheqHOyvPytjnHYaMR0urikrM/m5AJ8YEIUwCfHEAp7tSWFxWWLWsdNLtF9smiPzD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5zuRqPiNXzhP8bqEY97QtIxhp8qKCZXDxlq2wsMHDL3R52F9P
	waWkhnWBnEiMzFGdBiK24S5U3+p24Wm6tuyTT5ZkDLaG1BT9CSUUH4rs2d8+asW5AI9Zo90nwe5
	A3aUqCpweDkqBJ/FVRvCYDrMeWQS5AgPW6Jdt6gVWAGY/wkIcbOci
X-Gm-Gg: ASbGncu6nYfQt8YaE/LCmOy+lWwRtiCghVh0kx7yfRWQPYi6gJQ5TyW6IM6X2I4O6aR
	je7uLv/ZYZWIMzrBujMy8RavShCDcbP8+qW8eEq3Tgu4q68JY6HUv9sSefwL3UR/fyLVuDbYds6
	Wcx7dOR0bYmPHx3KZLrwa5aDFGA0hsZQp1NinxqNsD/rDnTTB9s55pSgdw0AD0tbDiFWtHGY4/m
	vYgK4tdYiflgxNfImuiV+qu58NwFVQMpPay4QiCXv2g0tQWG17ulRqX0+R1
X-Google-Smtp-Source: AGHT+IG6Lx7X4nwjjCbscanhtEBxXyR+h33EgNAu+2QCvEvhHwb326NmDGLUdbF/Vt5osp1coGpMRs1m4S+7/7joI7g=
X-Received: by 2002:a2e:be03:0:b0:377:d151:c090 with SMTP id
 38308e7fff4ca-378cf8633c5mr16810071fa.1.1761225245249; Thu, 23 Oct 2025
 06:14:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Oct 2025 15:13:53 +0200
X-Gm-Features: AS18NWDfHk0wnb9yCffDQKbucYaZNvR_wj0zVimsSTgrxikTdx8n5aED-luAQ8o
Message-ID: <CACRpkdZnmMHMWihudwYYuzCm9H_jN_0ZU5+mmS5G4R5m9XkV=w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: toshiba,visconti: Fix number of
 items in groups
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
	Punit Agrawal <punit1.agrawal@toshiba.co.jp>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 3:34=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> The "groups" property can hold multiple entries (e.g.
> toshiba/tmpv7708-rm-mbrc.dts file), so allow that by dropping incorrect
> type (pinmux-node.yaml schema already defines that as string-array) and
> adding constraints for items.  This fixes dtbs_check warnings like:
>
>   toshiba/tmpv7708-rm-mbrc.dtb: pinctrl@24190000 (toshiba,tmpv7708-pinctr=
l):
>     pwm-pins:groups: ['pwm0_gpio16_grp', 'pwm1_gpio17_grp', 'pwm2_gpio18_=
grp', 'pwm3_gpio19_grp'] is too long
>
> Fixes: 1825c1fe0057 ("pinctrl: Add DT bindings for Toshiba Visconti TMPV7=
700 SoC")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied for fixes.

Yours,
Linus Walleij

