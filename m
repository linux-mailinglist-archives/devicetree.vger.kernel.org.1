Return-Path: <devicetree+bounces-125472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2E59DC107
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D77022822D1
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCD31714B2;
	Fri, 29 Nov 2024 09:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R3V8E2/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB4F170A1A
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732871009; cv=none; b=Pga9zFKtJ9T74t4drycd4AFZP98FhLtuC+C4iBwNN05gK24XY7d1R1Yv3fDYA77dl5M48YHzkjsijIZhcy5frVRdC1XT6tUp1WD97lAcsHQXR6JqW55HLneGCLnz5ON5/GBh0UmVg0HVXPIkWaRphMPV5QVQtl4FrBnNLtiX6+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732871009; c=relaxed/simple;
	bh=wW1UPfI2pZbnJAJq8B5Y02AKlDZ/ksTo9I5RBhqTvuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AcZWLAQxUw2OIoMALw+8gRTPQa22k5guGqyBYKdYzzK7C5AQAqPT/5DRPWr9enpZ+rS5i9ZLGrqTzw+zlzmu2+NA+vZKAb/05slLjdDEVs58UXaDpaQEM0J9mfK0eByqiMoA9QflRgHdSO55fbElHef7Tt+QBItIDSgftusAKUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R3V8E2/k; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-296252514c2so1783495fac.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 01:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732871007; x=1733475807; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wW1UPfI2pZbnJAJq8B5Y02AKlDZ/ksTo9I5RBhqTvuI=;
        b=R3V8E2/kw9eOTTCF15X9Gph5mh24F0GkbGtFO0dNLnPJnBPY7Iq/kExGi6J6l+gp7C
         oIwvzU2bjDqU7n5m4K/NJW2pXOIlDvIuM0hjgDVSyBo0+FayvXzdmAtLPlvSRpa+Hxno
         ZPVQBcOBNwCdItc/oZvUDMcDr/5MSZoylQMvVaErk/4A78JEMQgy66WXsAT4RckqWtV1
         3GPPq9X0B1WxkLIMGCHidGgGCeo0GbDqOdCZS8dUB+gK/hRcWEzO+EvoHhwP/V5/uvFf
         9jVwCd35X4zc4T12W2NQWXPlJquAiqD6yp/AWSPrDN6Xq+tv/f5To/7M4nBtFDEuCzsE
         aHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732871007; x=1733475807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wW1UPfI2pZbnJAJq8B5Y02AKlDZ/ksTo9I5RBhqTvuI=;
        b=NdwOpBNnDk5udb2m930ZNsFe4yuo8JldAC3Nn+c1ZQQe/Y1YWkttZsxi2zjqeA9BZW
         SHq6QiWzVHR8lsYbaBq7CWSk5byoapkeyHaI2i2QZYd22qePYO3u88T3tnDPxSjQ6kXT
         VcpCBEuEeQoQGy8iKkSGJXu+oa7H51l0vpXcFUutN9sxky6bsXtnJ8e6CsAceHC8Iczr
         UNMYI6lA2YGMqm/JFI2ki+8qetYhQPb7Z/XEa8Olz8Oo1Qs1HsOrWKiihUwcRKOOYULB
         YJTzZlKqncESuk/wfx1cm4FqlaVBAmqb/n7/VA/6b3btTbiOuUg7ILp1xCqEbj5Alr5X
         4mBA==
X-Forwarded-Encrypted: i=1; AJvYcCWP52yInGsgMPoA3AXFE+dmTvFGHtuHkVFxvLvMHxgZWYZYcQsbvi1foDS5a0CA+ATEJRjt7dZ8DmlR@vger.kernel.org
X-Gm-Message-State: AOJu0YxCgLEgNXAFUVKYWPeWSJDgXqo/QGKdxr5HCt1J36aNtuFWDhS9
	hGOoPffMtnUUYLBnYsI51T92y8N+DNUa8X/TMv3F8Maz7aK3Pmu2iN13sk2tJpgsGdXmZe2NkKz
	ZbtakOaRmA2+TSW8LTP+DMt0sUEyxswOP4kWXow==
X-Gm-Gg: ASbGncu7zXxTPvgfF0+KLPMRp/HW+t2fVpusyGcyVzle9bsCmWi1HhPgMMwRxEGejKq
	0nL0FIuZhGKw6yzmQplUdMzXa52fa44b0
X-Google-Smtp-Source: AGHT+IERoPgZEiqiqez2SpbM2z9r3e17P7M26vSOjg5eYLpH30rXYi96JJOb9xGSNWtscEvyPnFpElGY/PMRwNHOdqA=
X-Received: by 2002:a05:6870:948b:b0:288:a953:a5c7 with SMTP id
 586e51a60fabf-29dc4033a56mr9209530fac.14.1732871007224; Fri, 29 Nov 2024
 01:03:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-1-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-1-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:03:16 +0000
Message-ID: <CADrjBPopeTk5d0irJ3UDBBG2=gJF4F7hKWbaGP80x9F+p2jhUg@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: samsung,usb3-drd-phy: align to
 universal style
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> In [1], Rob pointed out that we should really be separating properties
> with blank lines in between, which is universal style. Only where
> properties are booleans, empty lines are not required.
>
> Do so.
>
> Link: https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.or=
g/ [1]
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards.,

Peter

