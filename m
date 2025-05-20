Return-Path: <devicetree+bounces-179019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B9ABE6BF
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 00:09:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CAA44C1AEA
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7E425D1E7;
	Tue, 20 May 2025 22:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kXxQds9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEE225C817
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 22:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778961; cv=none; b=sDKaFTuTmqznRq8HX7S6Pjirqa5FUEyVbOLxksSVEHSG+iLPT6XIeoJlf/aR5vM+vC/dxkx9/V/sYZJxLLLJj+wRtaquVE5pNf59tv84KnZKglf4YcfavNaWiqgkBWrPUE1mOgiv7EHZKoXIXDS40qdw7Wh+v5xm1bTKuUaybXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778961; c=relaxed/simple;
	bh=ratdE9jXoB0SJ0Y0w3wsjguEzkshW/vmeLVeCaT31+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xrbqt3GSDGwyt+zDXIhqbeeLL4ngvAdW0MdAhCJpSncVO71k18KI8XVhWg7Q2yDshmSAae0wl6UDPoPCudpacd2fsa60DTTdtoft9lGxzSH8f7KaL16ofIhVpdKSUJOfit/t6k8XU+w+kbZ7L4WE5IrzAjqG2rjz2o69zVJYTTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kXxQds9W; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-310447fe59aso62300931fa.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747778957; x=1748383757; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ratdE9jXoB0SJ0Y0w3wsjguEzkshW/vmeLVeCaT31+I=;
        b=kXxQds9WJE5ExFVqwoDfR2GDf6QmPSyRr2o5LlJd4431twbWsr86m523JEQAppzsA3
         HB3lHzmVD7oGKUXV17UntYDhSqYW+BBMr/Wx07HwH8fJLniKqtKeISFbtDlbRLqExHkj
         MzhkERe6mSLNmp33IbTI1W7Zgp8ItpmHPfe33U1wwSLHE6DCkGUIAPSPqLhAXtvwu48G
         2xnKNy269clSO3A3OzpFRiKLhrCEtFtr93WR3SiSnjKsNdPhTqg4y/Yzra1MEEeqtVuv
         9ZmF/LSIKsBJF73v6eBRXyR3T3LRCUfDiQzdL6x/T0WgUZagwUBAW/kcqKqO6OnF0Y70
         cgWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747778957; x=1748383757;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ratdE9jXoB0SJ0Y0w3wsjguEzkshW/vmeLVeCaT31+I=;
        b=QhT0e2W7QYql4A0v6gCUZ/jqS0t3vhSGwWLFM34qXNFnh/jgjSKeh4DbgG3ISU4m3U
         gYOEoodnmwp9iWdwuqk8vddHJEQhdmKdQq57Wtip5g5SdYLtt6h6xcu95P9xjbM6gpt1
         7H9eJb6sB5UhGO5TdAKjZSm9/baL0pmqRgyIvb2D3CH3Cd+4EEjJDzhBd6cI4Ta1EmYj
         jQ44IQe/xA4C8kBH4yseErA/1Lq5ylEFXAG2WvnPsPhXvgDW9/g1FBQUGpt51cju4Xu5
         aadG7aCG05pqAV2nqunihU8qmocrK9y4s1+MWqF8c34Ie3MLl3HPb0B84yCpBLdfyN3U
         DKjg==
X-Forwarded-Encrypted: i=1; AJvYcCVqDj/nnu+ST7FQvbfkNFCVV41ecHShi9i2Z0oDCplTJYqoILiMh7SL3SdVsRHlCsGD1v+bHPOr7FWO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7jyXp+x5VPXunA6ssScqzcko42BTmpRAv7fcB8ALtufNwKIuy
	KobysFS8uM7H/ZWs1+wjn9bh/WoVl4sc+aa+I2kopA4dwAjiwnB6So9kI5pzwfPzph/17aNO3Pj
	huugCfIqTVVrtRT218UCAHZMEtWwoLl1HP8t6+8usaA==
X-Gm-Gg: ASbGnctJrTaGoh1YnC6kJiycz5fsbmK0QBZQQRq0R1J8PDsSTN+VciB/P6jP96jhsvl
	nVAzFVvXQ6n7pQUmuHN/TMY0SSYbF5qkENmf3BsdhNWLtF3HIn/sJp6X4D3geGT1ttUfvf9WGFZ
	Zrue18WsAqfOgri3UG/EfRL+VDzQfkJ1n+vRpaDGg7bpo=
X-Google-Smtp-Source: AGHT+IHDDQJhnWX2kmTO5v1Pk0nimoh123FoAZWbqbQl+FUgai9VCQfwTjo/Tn4PNUMetJyi+2gPAW5SomZT1SLUvWQ=
X-Received: by 2002:a2e:8a87:0:b0:30b:d05a:c103 with SMTP id
 38308e7fff4ca-328077a2e75mr64717311fa.29.1747778957098; Tue, 20 May 2025
 15:09:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-gpio-dts-v3-0-04771c6cf325@nxp.com>
In-Reply-To: <20250520-gpio-dts-v3-0-04771c6cf325@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 May 2025 00:09:05 +0200
X-Gm-Features: AX0GCFuwZ5Uj2GFu8v9SUCd9XbxxK9oH9Hmv5mkp9JeCnQEfeHNWxb9r3Wl8bto
Message-ID: <CACRpkda6D_OayG2DDFG6+sQ5vyYCrTojHs2H1ZVUMw4rpbuC9g@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add 'ngpios' and 'gpio-reserved-ranges' for
 vf610-gpio driver
To: Haibo Chen <haibo.chen@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Stefan Agner <stefan@agner.ch>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, peng.fan@nxp.com, wahrenst@gmx.net, 
	conor@kernel.org, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 20, 2025 at 5:44=E2=80=AFAM Haibo Chen <haibo.chen@nxp.com> wro=
te:

> Not all GPIO ports have 32 pads, so add 'ngpios' property to specify
> the number. This can save some memory when alloc bitmap for GPIO,
> besides GPIO tools like gpioinfo will show the correct information.
>
> Some GPIO ports even more special, e.g. GPIO7 on imx94, it only support
> IO0~IO9 and IO16~IO27, so add 'gpio-reserved-ranges' property.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

