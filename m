Return-Path: <devicetree+bounces-176741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FCBAB55DB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF8B77A7253
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF41528EA46;
	Tue, 13 May 2025 13:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g7+h+o3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF2E28E612
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142461; cv=none; b=ixYbPxyznVURvtrkeDCt/No2pzJLviC+hx/c1uER5II+gyHkWhZbUnFNM51ZpgMhXWLDAHI1k9HRmTixpdjUN9SWMEVnvjpMTNZo9oG49Azjbg/GKbYQhItwyaX+evr+mgXkspJdcv3/x7qFFuv5S523YHvCZtNAuGSUEB3o5E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142461; c=relaxed/simple;
	bh=a07HNvK2s/ifER9xOGcNCCEiUl0FR+rf5Vx8rLmQK6M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M1A3gHfoIReAJa0HHUq3oxJyhsGSlYmkrHuyJ9b6rAOxk2kwDGhBda0RIHpjVvYlo1qJR6nONGRXmhjNMRCbBD3mr8ZeU6f6CzQcSUtLEXkJa1oUxDazrV5MLHRpFNgUiPf+ziDCI8DUhGjwlCs+Vs8E+rW/LK4XfBtNdEh7bmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g7+h+o3t; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54fc61b3ccaso5865445e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747142458; x=1747747258; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a07HNvK2s/ifER9xOGcNCCEiUl0FR+rf5Vx8rLmQK6M=;
        b=g7+h+o3teH0r1X4KOJVtZq8+gUr+VICHsaqiR5FoISDLP6PHQNnFpu/F8jFmVdGKEM
         T1XEoZOnRd0IOcFoSRJsNNQiEGFWaHuM23Zaka68/N8SX7B5NRrIO4/7ItCKMyNdvfuq
         dn7w+Oqxssf2HjZPIsuAgDRO7sM46IBlYYzx3wbY2ENG/7WmcjQZKTW5TPxjEZ0wY9hx
         kEKd16lb9q2+42gqe3p4HPpbLAnL83VUoY8d4fYlU2XJXtmL9e/TjLm9XeYtcbSL3e7Y
         ++LvoT3k07h/NniGzARU4hviKSj8cs/t8zjDmFTMxA+G5HcXUlzHP3Qny5f5gy7gXp5T
         k39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747142458; x=1747747258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a07HNvK2s/ifER9xOGcNCCEiUl0FR+rf5Vx8rLmQK6M=;
        b=QaXXA54F0xBErZpDw+OeQnDPpta87Q55XahyWwp+T4OXg4MHV8HyOX6HzVyn8DHy1m
         L/oBR8KfNp34mcJvUTwbqTzgyfPmj4DJyYC5gckc56BUI5xvH44RJZrvzLMOMzPFXOKj
         kSNcI8h/oxQlJ1HhPNl0IcL8d9o+r0Sa0TW+lIoKDxfsNuNXbEodBK36CcywA7FGmFWb
         FqUWN7sG6AayvCnhEYrkad473/gJGgHVcRIMxWiXKg2rKkutiKwz+Advp2vu1hSGh9Ga
         QCfYaCEwi1Scg7i/0i1P4m68El7jJPrhDkeWz4T0wc4WIMPRR1xh8Fo5heudCRqDqjxa
         aAcg==
X-Forwarded-Encrypted: i=1; AJvYcCXsMRZFskN+GpHVkhZu4eLHQ2L9z2Ycs3qdSzCd8Hb+SBmrShhrHUJ7IY/R/7zOwTMbaQ/iTCSrad+R@vger.kernel.org
X-Gm-Message-State: AOJu0YzE379vh6gkJpQCJ7pDzYswG7tndGZaRHJrwOVvrn21mQqa9OuE
	0WyrWhyzLGR8gBMVKRnDKyMJ5SJ7Eg8wHVPvbcjjEHuqiUlE8A9UZB1pk8Mo4N/AwKtmjHH765K
	N63c4x8uuMHFqBKZsf15v5QE7JEKXcY6kviiPZQ==
X-Gm-Gg: ASbGnctrg5UeyE/lw/cPYZkHxdUb/KnnL/a/apJ8JROlJyD+dvPt1PRU+YsMrfn8vxY
	5qwEND2xUZ27fKyDuMO2gDr3B9K6z8VLUlUYwmaHqRoYhzFJP2k+zyJKWcCfW4X26BUcGe3PW0u
	7sZGWajlQbnyFhjYuqoMbHtNpEMoJIQAk9
X-Google-Smtp-Source: AGHT+IGEAON4CqeWB7MIriXflZ3TKRdVPaHoB+BTW6X7JW4SlMZJHvBn+KzxohMwhUgzM+6fwnKvwVBVuufnBpAzy7A=
X-Received: by 2002:a05:6512:3b88:b0:54f:c66b:8b78 with SMTP id
 2adb3069b0e04-54fc67ecebbmr5256122e87.49.1747142457796; Tue, 13 May 2025
 06:20:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250512-pin-v1-0-d9f1555a55ad@nxp.com> <20250512-pin-v1-1-d9f1555a55ad@nxp.com>
 <20250512-mongoose-vacation-f81a56dd6c5d@spud> <20250513075532.GB14572@nxa18884-linux>
In-Reply-To: <20250513075532.GB14572@nxa18884-linux>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 15:20:44 +0200
X-Gm-Features: AX0GCFuZNXL7sad4G9E3lsfZTN1DW6pieeaGbeQGotqOwvfnEpDnUcCktC-com4
Message-ID: <CACRpkdYmupji8a0np0xzogjcvJ8YFstAgg_XwdxNczhQjBZOPg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: firmware: nxp,imx95-scmi-pinctrl:
 Introduce nxp,iomuxc-daisy-off
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 8:46=E2=80=AFAM Peng Fan <peng.fan@oss.nxp.com> wro=
te:

> >Same comment here as was left on the driver.
> >I also don't get why there's a property being introduced from something
> >you can determine based on the soc.

I agree with Conor's observation.

> we are targeting a common pinctrl driver for i.MX SCMI based SoC.
> So that means pinctrl-imx-scmi.c needs support i.MX95, i.MX94 and i.MX9[X=
].
>
> Each time we support a new SoC, we need to hardcode the register offset i=
n
> the driver. But if using DT here, no need to update the pinctrl driver an=
ymore
> when supporting a new i.MX SoC.

I understand that it is convenient, but that doesn't mean it is the right
thing to do.

I would advice you to keep this in the driver and use the SoC compatible
to determine the offset, just as is done today.

If information can be deduced from what is already present in the
device tree it is redundant to add stuff like this, and it inevitably
will create copy-paste errors where the wrong offset is used
with the wrong SoC.

Yours,
Linus Walleij

