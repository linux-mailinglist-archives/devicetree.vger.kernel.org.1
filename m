Return-Path: <devicetree+bounces-207718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A40B30905
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 00:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 777B118835CE
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405392EBBA8;
	Thu, 21 Aug 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yIaeyN4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC6F2E040E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755814733; cv=none; b=hGW/qCfNQyGls1uVHJ4CDUW0aY9OBKUY0MnAAYL2/AKbuOftU1rJ3co+LNr60nMc78ZCRi8jR6HQEdJTCZhr+yW7HCzvXVyikS4s957w80CtvuaI1EPAElwzPbAAabf7jwPl3Vt9sKGPAIaT+lcENzUvCi79U4BUIQ+QaRYL2To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755814733; c=relaxed/simple;
	bh=scDUFRtT56c4lGpfWuR+4hgZjMvH2DXiLmpfUNZTmfk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJxr9++90+rLKl6vMGBRP+R3E1+zkbVKUIhSexeKlOFUB2PYqX1QoirLzIZspRKQPU4+xbJESq34DL0B6/uCEoThC6dYqF4o23xre16L5HSMjly2wQJqWNaRoq6SgCr5hYRy64D6iKo3KdWpYJIF1cj2RFsk/geiSZmRr/+j6ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yIaeyN4D; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-333f8f5ca72so11592481fa.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 15:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755814730; x=1756419530; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=scDUFRtT56c4lGpfWuR+4hgZjMvH2DXiLmpfUNZTmfk=;
        b=yIaeyN4DTBXgzWZ2254SVr4t8tV8JOOUzkp63OIXvy1Y6JZlB2pP+bKhfkI6tcDmeZ
         2f7bPPAMNMw2LezTfll/F32Ew0ybERmAQPKsygYJ09GlwDWQXxS4e46OmTzPj7d+N6dN
         m3nRrkTCBEthccmF2E8Mbja7sJUimPsQTvE2y/1aC5BcFJink7RLnF9nnhfJMFmnQLkg
         ErZ/uG1UTe3rp+rWFKurAL5bkGFT5rJwFzRIltIfAnEhwRGeetyYO17ClZ3uGpav3rDo
         6DqLU3pVEbJimKqfPhtw7oUN2zpHk6Y3im7kiCqWs90b6T1zjgA0tZC8MhsU1R+QV1WW
         zW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755814730; x=1756419530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=scDUFRtT56c4lGpfWuR+4hgZjMvH2DXiLmpfUNZTmfk=;
        b=KBx20vfDYQQm0BWMo9byxyIITqzA2qKyb7LUB+A9Xvg84n0Z5FKCey6IfZ5UtZ7h93
         7Cc66A/gqUmA2Vm0gZpSwOF1ezUNS98uSJq+pgAoCXl5eQhCHEvWLYyeiZb/E7QwngiP
         IH8YqH7oeXMUgYLaehyuUl6Tvj/Ebel5noXQ30Qz5H8kIv01QWMt7eb9uVlUn3eVxw7C
         OpnXFGBarSj48DYeZd74OHgLfjvVTjxXEfypjhll9eM/FZecsDvBbW+nQfPz9vMQawGo
         seSE5y1oLG43F4y1feQLKatutXfxFv3KCjEGDfYVp6QBj8DLiDhf6ivDxixu9xHzeoPC
         dqGA==
X-Forwarded-Encrypted: i=1; AJvYcCWIGsDChzHAo/LjmDNLYucHKUMCX2qsO3XxDzZMtCxMsUf+q83d/HEta6vEC0Fv+RZQGiga8F6a/bBq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzp8Me5ZGK/P8Vrn6p+s2mQM1ElyJiFRuaIMeTeI3qe43ZFsFj
	maPwexw5FAVgrtndm/Np6GCAtAj8UGMg60KWV4bCt98eMcBpMBHT58ZtYO50KlhjOEC1mu4vqQe
	36rBUtAjtE7hZWiaXvczTUWTZUMmcbZSvX87Gq6+GrA==
X-Gm-Gg: ASbGncto+JKI1ExegQ6d9Xc8EcQdGJvIq2tuFdJSFG2YaGzGthYnX8NOxRuoAwmEfMv
	prGVHa17SkX/zOPr+kHkgeOJGH6jF25OzB3u+WXndGAMYC3FnFXlEDxNvpwHZfLCV3VXO+aAGdQ
	a2FPxTOUEXc6EB5azmRBfemGNOerUbPmsCdzWx5p0zth5yGbZZJojx3Uj4INg/xQUe/aK9Z+cRu
	ZYZBeg=
X-Google-Smtp-Source: AGHT+IHAuxKCdlR84mtO5drg2+gxJgeAL9QNmrcJAdYu2O7QcZlAuNtYHawQsJ5k3qx7cU6iNw0w7kfx2Two9+P/wtA=
X-Received: by 2002:a2e:b88d:0:b0:335:4478:171e with SMTP id
 38308e7fff4ca-33650fc2879mr2148671fa.44.1755814729566; Thu, 21 Aug 2025
 15:18:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821215703.869628-1-robh@kernel.org> <20250821215703.869628-2-robh@kernel.org>
In-Reply-To: <20250821215703.869628-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 00:18:38 +0200
X-Gm-Features: Ac12FXz-tpmz6Jl-OSCUAHGGbihqCF22CiiIXs30ksnT0lLjvQKZD3uLJLa_EZQ
Message-ID: <CACRpkdaG38-0-RsMm9zxhADBgVg6z3V5vOY0D1pR81Depfk32w@mail.gmail.com>
Subject: Re: [PATCH 2/2] rtc: x1205: Fix Xicor X1205 vendor prefix
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 11:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> The vendor for the X1205 RTC is not Xircom, but Xicor which was acquired
> by Intersil. Since the I2C subsystem drops the vendor prefix for driver
> matching, the vendor prefix hasn't mattered.
>
> Fixes: 6875404fdb44 ("rtc: x1205: Add DT probing support")
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

