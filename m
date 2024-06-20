Return-Path: <devicetree+bounces-78182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDDD911524
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 23:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 287CB2824EC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 21:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39609139CEC;
	Thu, 20 Jun 2024 21:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5auG+h1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A153C8663A
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 21:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718920323; cv=none; b=biGh7vdI51HUMo/lWXEsEcKtZ8Ymbv2rpIaFSRhFKMcqrlkpwL4sDPKouxWxESTfWeh2LrBXerH4zvdmPBWFpDUGaEqBd+BFpvCm4YwXExTzi6f+p+pFxFNdA1ntPfaJ9/shg4iPPTExOSiU8KiRxN44NQtEdR5c00VbHyMBnuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718920323; c=relaxed/simple;
	bh=IDGHQeVi/J99Ud0h98ztO9JyZxnoDSj89IWh+m4Qijg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LMYdEFoM3aToJoVdcUmn+879sMG6PLV5VWSEaig3Ojha8k3FDecy16lddXaLvDjN1jzOkcokH6lo+4aCaxUHvWLPvgJw90zDvBKcDEIr/7mBVXMEeR6ApCf1/Svm5vZEmhjdjGOHClRy1P4JMlR1ot/bFF9+YJz+jKzkLe4BDms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5auG+h1; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e02b605bca2so1870857276.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 14:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718920320; x=1719525120; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5TRSOhA8iGH1R60np2uoqVbWEYsCAZsWtQBh11sRns=;
        b=D5auG+h1GKzv+9RcwYa7bi/7IqQ9PufT+M1bZ5jJ2jm25xD1SoHBYNHVt4B2YPfNWG
         W0HJ7bITl0TLbsuGpcL0nb+8+gHnqhYAc6lQ66X8oPIWhbbb5vO/hS+jWwx3UzGWM2FA
         11TzlXpd0h4gTvV0DuxXzYiYbD24/YE4hxV+krecm98YrRlCsbrL9JgvXT16Wt2Qwngo
         98kPBvu17nx+rWyqptx+2UdDOch2+wE80gc56bBdAjHwP/7H7yj/qwPOpTjgdzcPxyce
         m9Nz8gEituRbOP9RWaSI5orXOtD7uba/+3N2Nah6FKRe6rHTOAu7cjMyVs+GcjF6fnVR
         /FNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718920320; x=1719525120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S5TRSOhA8iGH1R60np2uoqVbWEYsCAZsWtQBh11sRns=;
        b=slcAeMcMtycEuUczdrjNrMnpdxdF3B3zG52Qbm5xnOqzDJfunEYUigccnE67mFJW31
         MbfVzNO0X84KsDcKaJJpF+L1JkSKNT1l95r2tLa1WQU2LoE5zqcNajEtb57BVB+146rL
         vTg1PTejw6F+pI9fkgqXdV7JSFTLXeFfjHO1/9bnpgB+u2CI36KdqA4uouNMIK9vhaqD
         3RmsYqy3JIPhQ66LVIhJJaoBbyMDNZkTTj4+eTKkVH+8nI6+gIgOSaAtngd+nrXLS+zM
         Rxyce2hjWLImOqb214nePqideLeE8smbeOjxwYC+DtNDhbipjlkTZLos0hX/XhnsZoLN
         6OAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXQkPeJ+5de6yBoQIyfeuiX6Wphdbv1LQacWv9viSPFw2WWlTqZWlL8RTXDihd/VImUaPF1CdKz0A6xzKKZ/ngaXBTXMRIcKq+YA==
X-Gm-Message-State: AOJu0YxaYbvtISmrzEP8IU3vndXfz3T6Rg8lHfGiMIlHXtCGUI4Z17Tu
	2ro6YNxMpLdsNZhd/CbiWgL3Ri+r/LLpYzn4Pu2za5sbAVXKvMkKMMEq4igDYshYGYFdfbENd2j
	qpMXbcmIJOykAspwHKZlTVscQYexJkzTKXuvNS4wsSBrVylJY
X-Google-Smtp-Source: AGHT+IFWhs1oHnCwYtIqEUDb3GYs2ctlTMeXUy+SHit8M9zRZ1POT9JRHWWKif58A0sP7XezyP4BsfWsLr49BttIR4Y=
X-Received: by 2002:a25:800b:0:b0:e02:bc74:522f with SMTP id
 3f1490d57ef6-e02bc7454f5mr5257999276.30.1718920320565; Thu, 20 Jun 2024
 14:52:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240618204523.9563-1-semen.protsenko@linaro.org>
 <20240618204523.9563-8-semen.protsenko@linaro.org> <6e4e78f7-9d94-4c4e-9098-02522dee29a2@kernel.org>
In-Reply-To: <6e4e78f7-9d94-4c4e-9098-02522dee29a2@kernel.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 20 Jun 2024 16:51:49 -0500
Message-ID: <CAPLW+4n_x9dBwuSOyAn4fNA61vHPRCSMVzTs3p3Oa94NCOhDFQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: exynos850: Enable TRNG
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Moon <linux.amoon@gmail.com>, Olivia Mackall <olivia@selenic.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-samsung-soc@vger.kernel.org, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 2:31=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 18/06/2024 22:45, Sam Protsenko wrote:
> > Add True Random Number Generator (TRNG) node to Exynos850 SoC dtsi.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> > Changes in v2:
> >   - (no changes)
> >
>
> That's a patch for Samsung soc. I'll take it once binding is accepted.
> If you send any new version of the patchset, please do not include DTS,
> so the crypto maintainer could apply entire set easier.
>

Thanks, Krzysztof! I'm going to send v3 soon, so I'll remove this
patch from the series.

> Best regards,
> Krzysztof
>

