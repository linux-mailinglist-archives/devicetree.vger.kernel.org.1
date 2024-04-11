Return-Path: <devicetree+bounces-58253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E368A1253
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EEA3281B66
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DB7146D4F;
	Thu, 11 Apr 2024 10:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BEOUjBIS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A9D146A8D
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712832979; cv=none; b=CH/qBHsNXeViKeNcbeRNCOpTpx9FJJSUqluX3WQbvMKFdqN1E8bwSW/5rJwds17jC3SHmcqizc9EYa2C7Rw38HsQWapgAz3E94pXo9OxpaugCnTedR38lGN8/wTIR162Q/jTH/UE1jCliHidUfTv0kyhGKGEsCPE1IBRMo0YbME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712832979; c=relaxed/simple;
	bh=Xq/0joFiXzYqUks+vVl32eEq//+gRKOhLkmx39S+mn8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AIHD+PxfKTALZNPGcqPai7TuiU+Ty6pAfQPIapkJ8cW220zkkKYUOZKuIvJOU/f1j5mw/U5cZC57ZfHaAe61swhhk9R92TdLJfEyMnjFeM54O1waVfScTFoaFoARBzd1+xofERqjPXpjZadnKxd7AuKZosuAoCRfsNzTMOZStRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BEOUjBIS; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso7259460276.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 03:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712832976; x=1713437776; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CGKOXnPZPzqd2pAhBq9S6tbEuJ6FZt58jgxu5zksa9E=;
        b=BEOUjBIS9K5AaucVXdaGZ1JcAgueDT2qS7i4UchwyFCyQqP/n4mx7kvDXyoR603Mmx
         XuF4tVJ+sXMMqg/6ZoUQ5/4WxcNxTs4Q3CdC3Li27/T+abVdzbtYe/9PmBVAPyR2duDQ
         VlvdQAiUnCfwvxyynA+LSM8OIk5Ole+WKqx10viOHraz57KTg9xH4WWpdSx7VJWQcC1T
         13EkngrIdTsV2/wgjglokJDqU2gTeLKFA7IHK17L41UqNudUXIyHVBypolYR0xLLYXNn
         XuqDhQEDk+dZ+09nq+5VU8a3bJ6wnvpwn0jdcXcQumZ2w8OLVogRZggkQumY4ioyleEW
         myRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712832976; x=1713437776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CGKOXnPZPzqd2pAhBq9S6tbEuJ6FZt58jgxu5zksa9E=;
        b=kQEBCQ8cWqUzvjJcvC0pIZYzhhho4fwUFMcH09M1EPYkAUVw8PulIaqKr0OE1RwGuf
         Q+Gy1mdz4Rz6xTOvu80eCiHEcR+erSoDKm1f+q9iP97kcMXalNERkypcWsXRF7G5nVHo
         HR/A7f9po4mRA+6h7AA/9UiqeKrfxujjON2QTdbmMvK2hFes2K+13VvWKQ4E599pbNB7
         17FRhhsWy7OqUOHActsgFaEWR/l/0NuvHvYkn/8bwK92lyqUO7Biy6gauH2ZAElthM9A
         MiqGfm88W/t4U5j21SliMI9d/gUtCCx3cZfNrZF2fitzYcE/FbTGQgDQhro5ilFUaVfL
         00vg==
X-Forwarded-Encrypted: i=1; AJvYcCVRMMXJ3AXoRxE5oMHcFvdK413EFiDtDjyj9G6q8jYkhIBw98CG8c8p6IcqsNfBNBguHP7ioYUg/aPKkpx4DaU6/WDafUUrBEmyDA==
X-Gm-Message-State: AOJu0YxakE3GUXD07qmiCv7cP8QjHSCVEMFYysk8fB7b/G/KPS/GPeu7
	qodvqz+t90fzIQpyRrRT9ODYxct7uWd1fbH9XnigjcGQVumwwhBHXdW+9R42SzREZWWFM9aKQUR
	KNY3wvqzvyvK04VIzpYzl+wXlJhcpsgqm2Q8Miw==
X-Google-Smtp-Source: AGHT+IEy/8KjCoNQ5WH3BkBtCMtmPO/YjIHT2vwc1O1J5P+X6YoGvSoNRhQvRNcLN0kV94Yiga/Z1ELGCrrfAyrGLFE=
X-Received: by 2002:a05:6902:102e:b0:de0:f74b:25f3 with SMTP id
 x14-20020a056902102e00b00de0f74b25f3mr6033843ybt.60.1712832976450; Thu, 11
 Apr 2024 03:56:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240411-pm8xxx-vibrator-new-design-v9-0-7bf56cb92b28@quicinc.com>
 <20240411-pm8xxx-vibrator-new-design-v9-1-7bf56cb92b28@quicinc.com>
In-Reply-To: <20240411-pm8xxx-vibrator-new-design-v9-1-7bf56cb92b28@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 11 Apr 2024 13:56:05 +0300
Message-ID: <CAA8EJpobbdUcpvycYYSWaJBmkywhUrPgo=N814ZipBEL9Z_azA@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] input: pm8xxx-vibrator: correct VIB_MAX_LEVELS calculation
To: quic_fenglinw@quicinc.com
Cc: kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 11 Apr 2024 at 11:32, Fenglin Wu via B4 Relay
<devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>
> The output voltage is inclusive hence the max level calculation is
> off-by-one-step. Correct it.
>
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
>  drivers/input/misc/pm8xxx-vibrator.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Fixes tag?

>
> diff --git a/drivers/input/misc/pm8xxx-vibrator.c b/drivers/input/misc/pm8xxx-vibrator.c
> index 04cb87efd799..89f0f1c810d8 100644
> --- a/drivers/input/misc/pm8xxx-vibrator.c
> +++ b/drivers/input/misc/pm8xxx-vibrator.c
> @@ -14,7 +14,8 @@
>
>  #define VIB_MAX_LEVEL_mV       (3100)
>  #define VIB_MIN_LEVEL_mV       (1200)
> -#define VIB_MAX_LEVELS         (VIB_MAX_LEVEL_mV - VIB_MIN_LEVEL_mV)
> +#define VIB_PER_STEP_mV        (100)
> +#define VIB_MAX_LEVELS         (VIB_MAX_LEVEL_mV - VIB_MIN_LEVEL_mV + VIB_PER_STEP_mV)
>
>  #define MAX_FF_SPEED           0xff
>
> @@ -118,10 +119,10 @@ static void pm8xxx_work_handler(struct work_struct *work)
>                 vib->active = true;
>                 vib->level = ((VIB_MAX_LEVELS * vib->speed) / MAX_FF_SPEED) +
>                                                 VIB_MIN_LEVEL_mV;
> -               vib->level /= 100;
> +               vib->level /= VIB_PER_STEP_mV;
>         } else {
>                 vib->active = false;
> -               vib->level = VIB_MIN_LEVEL_mV / 100;
> +               vib->level = VIB_MIN_LEVEL_mV / VIB_PER_STEP_mV;
>         }
>
>         pm8xxx_vib_set(vib, vib->active);
>
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

