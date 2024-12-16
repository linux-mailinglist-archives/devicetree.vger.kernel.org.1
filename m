Return-Path: <devicetree+bounces-131429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DA09F32F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 15:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B27D18839B1
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8347B206F34;
	Mon, 16 Dec 2024 14:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s0ITHNvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A23205AC0
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 14:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734358576; cv=none; b=OyL+Raf3pd2nsJGxQmCARnmMuDwIVNJflW4QQQF1oJn6i7AsV2a74d0jasypRNt59rNRZdCqv1RPKat5VpsbyZrITKNE9zU25XOD9Yp7QQVPgWksuB3W1LY5MUrhCB5Gqto9YASFvPX3dT4utqbxBhq2plMEzqcWHwhAAip/x+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734358576; c=relaxed/simple;
	bh=9F8Sq5ILmO/gzqNtjAPdIn6tThxcdWj/OBrH8RrPyDg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sCj+TpRj5nnkv3VuPZ3+m8XkM0epAbCi7J1aty4y0uT2CQctlfILkdLXlDg0eM8tEiJX8Xu26iiLvj1LsTl/c8XDyDFnJiIlA1GKPZPpH/OQyrOUBWubjytqxJR13lXvmROp4NvkgeH96gb+7TRpY3TrgfkALQ9529L46FH4k1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s0ITHNvc; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so5952666e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 06:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734358571; x=1734963371; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9F8Sq5ILmO/gzqNtjAPdIn6tThxcdWj/OBrH8RrPyDg=;
        b=s0ITHNvcy7ZbVHfgZ+/hNGxetKPcYSjLKyHRGOuHA13RJc71cAxaZ4fbJQt13+KR0f
         wqh1cnMA6Yn71bzZ+xcZw9sVOXiCmL3SNsb0cDNTEJABuy1Qu5RxwdE0TRlUHLPa0oeC
         d1hb2FJO4GoRmucnFRvZf69+k4+nHBksgHOO/RYuJ2tIlmac9dbX5giGWT0TU+4zRfVm
         qmSu93fa/vcKeIWse9V3l/HpBEitGOjz2TFX3mb/35l6oPVCHbaMgFYKxWTwpiA1nDD+
         NRcZv6lqWpb1OtsgFtF+5+pQfHAkmHci0Uu/cK9TGyPhpiicg2m/v88pwg7YGSdZRmQl
         ROdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734358571; x=1734963371;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9F8Sq5ILmO/gzqNtjAPdIn6tThxcdWj/OBrH8RrPyDg=;
        b=Qecet84Y9NN2qqe7h5rB1nV+Zb9Vt1tqtgXskmT9cl++5cDlXe2t8QWAD480z3gJeQ
         99/oIGekIx7WliisXT9Fdzi4yK9yy41LWtMbJZQ0gSY6GjUqPxD6WIlw6nKu9zERoROG
         lUUVGzedmQKkOG1M/h8pPRUm/UUo5umK6od/UDbL1SHJeKG0BFDs1J6gBHEZrH3Nu8Dx
         r3TRSymNVxN/NxTio4BjB2/xEt1xTECnaN8Yq5eZiAFSOAyK5XG8UhZ+fkvBi3pw1aDO
         8hdPK06BfSdm8I38888CAAcrz2J14VM2vMyhE5CInhkunty5oHX2dJUHPnJsHRRkN2Zx
         /hew==
X-Forwarded-Encrypted: i=1; AJvYcCX8uO3I2U06LHcSauKslxHMHalAmdcFaidOcuuLQSKJysv2gJjYEvmgZ7tikht6zSgq/mYxGwi29U+b@vger.kernel.org
X-Gm-Message-State: AOJu0YyxIsuOO5ha/43tNXSBkpEzdKycfQj3DCxow6coNpJk+81utdom
	XTECuvIHd0qA3hnJG17EU9LxS3/ldxgsxgbuBlwvG8d+4HPgxdQP/mLo/EFOejZaN1YvFdZECEu
	vbCI9vwApPOPgUbaFal9NgcVKfXzyY9SdpwxkUA==
X-Gm-Gg: ASbGncuAFdfbz9SqDmugKgvA74j7lEMyDdupotqhoRfYUv8r0XB8/wc36YR0l/5tnyf
	AMc6PSuYa3T0gj7aDh0ZfgLlBPaLw2Wf9ha0/
X-Google-Smtp-Source: AGHT+IHrQd48Xs7QoUHIoEZ8phO8rM8S7YX0SBFWBJmTRPojYCc8OVEoWykulhJ01DH0iWUq+AcjAkdRGx/EZIl7tsM=
X-Received: by 2002:a05:6512:318b:b0:53e:3a79:1ad2 with SMTP id
 2adb3069b0e04-540917cb6a0mr4002662e87.40.1734358571463; Mon, 16 Dec 2024
 06:16:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org> <20241215-msm8917-v9-3-bacaa26f3eef@mainlining.org>
In-Reply-To: <20241215-msm8917-v9-3-bacaa26f3eef@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2024 15:16:00 +0100
Message-ID: <CACRpkdbKrf=AXGT1PmjQ6=HFKZ-8qCy7eG6fQ2NVUUK3gJoVTw@mail.gmail.com>
Subject: Re: [PATCH v9 3/8] pinctrl: qcom: Add MSM8917 tlmm pinctrl driver
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
	=?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2024 at 12:15=E2=80=AFPM Barnab=C3=A1s Cz=C3=A9m=C3=A1n
<barnabas.czeman@mainlining.org> wrote:

> From: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
>
> It is based on MSM8916 driver with the pinctrl definitions from
> Qualcomm's downstream MSM8917 driver.
>
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Barnab=C3=A1s Cz=C3=A9m=C3=A1n <barnabas.czeman@mainlining=
.org>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

