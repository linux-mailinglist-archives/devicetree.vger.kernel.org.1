Return-Path: <devicetree+bounces-27288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA801819D47
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 11:48:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E925D1C25996
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 10:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24ED120B0B;
	Wed, 20 Dec 2023 10:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C1gjLa+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5BA20DCC
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 10:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-db99bad7745so4739596276.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 02:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703069282; x=1703674082; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMnhogAJ5TBsWqLBjRWdOEdn5tLvSkqIXkY34xtolk8=;
        b=C1gjLa+NaNYUuCqGThGARe5wDVLpxmw4fHIYY4HfKUNi6W8hrGhzUsyTM0o17Se6o3
         hPutrm+IpNdHz5oVDTT8TzmFo8VfSSMAUxfG8KakAKVoINqI4LUsdyH5Ff57szZFWEAb
         DmZFw72mDKroyVDYi85dTuN0xt99sLUWNNXvoRLMx/7+Fs6ZXUbwEaknPchbC+7dueQB
         fG8ShOvDKxJfae92jC+Ax5cdWf/CMJ+WSPJn4JRn7PfZsI0fpwLTtbkKj3whaHjm6TJh
         BKp8DyHV8fUlv3UJUKpA60uCA55h6SWoPmA2yqE5lxfWKSMsOJ4gxtgJAF0/DwsQ0mhW
         KoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703069282; x=1703674082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qMnhogAJ5TBsWqLBjRWdOEdn5tLvSkqIXkY34xtolk8=;
        b=NvUXEp9+lY17Qoe4SIWmF+CUOCQnGbF8DDY5+hPC40ekS4bVrETXeWMBwsAMcLlv/P
         WCMZbGePftLSBZPDshrkjS8KUSDwKdwL8ZB6PL2X4s/0zw02BLXQldyu/kl6wfeveJCW
         guYz7mVN2K+TKDvx0/LW5TVjgYev85mlQV2UTK8u2cmvhPAdXkCjm5faIwABLplVd5nV
         gUHBrdzp7SCJVOdMpKreBJiCAe7zXqiJ3xvRbbqhRtzGk1O6aHyHLVNb1K7vfPDnUI9A
         0O76IC30rQ5kLT9QvPJWoDz3e2nEtqXJEIEodCCfnOLArAEug+qLfJovF0JZXNeKTZOM
         EfEQ==
X-Gm-Message-State: AOJu0Yx+g8QvUclqOTTPEctQFwQBfMIfIvEwnQ9sbPWAJm53NU4zLQJ5
	ENkqq9KmvAVuSf/JABQLKv8i2T6Xvv5pPOm0PRnL3Q==
X-Google-Smtp-Source: AGHT+IGYRq8+DNsxwVIrAOVvUPSQcI4YnkGr/ON41SKcXrqS0crfkla2Ki2q/G3D/M1BL/nW1R8hhvgf5T+fUsYD0nM=
X-Received: by 2002:a25:4155:0:b0:dbc:df05:9157 with SMTP id
 o82-20020a254155000000b00dbcdf059157mr6525037yba.69.1703069282394; Wed, 20
 Dec 2023 02:48:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130172834.12653-1-johan+linaro@kernel.org> <ZYG-Fr9FfIQUup_r@hovoldconsulting.com>
In-Reply-To: <ZYG-Fr9FfIQUup_r@hovoldconsulting.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Dec 2023 11:47:50 +0100
Message-ID: <CACRpkdb8ObMaMT+kuvs85QydbeqbChsMEnGTkW27C5iOGLuEww@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,pmic-mpp: clean up example
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 19, 2023 at 5:00=E2=80=AFPM Johan Hovold <johan@kernel.org> wro=
te:

> Hi Linus,
>
> On Thu, Nov 30, 2023 at 06:28:34PM +0100, Johan Hovold wrote:
> > The Multi-Purpose Pin controller block is part of an SPMI PMIC (which i=
n
> > turns sits on an SPMI bus) and uses a single value for the register
> > property that corresponds to its base address.
> >
> > Clean up the example by adding a parent PMIC node with proper
> > '#address-cells' and '#size-cells' properties, dropping the incorrect
> > second register value, adding some newline separators and increasing th=
e
> > indentation to four spaces.
> >
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>
> Can you pick this one up for 6.8?

OK, patch applied!

Yours,
Linus Walleij

