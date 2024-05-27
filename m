Return-Path: <devicetree+bounces-69542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F07188D01E5
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FD771F280C4
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1799415F3E1;
	Mon, 27 May 2024 13:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KOnIKTNj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C10515EFAA
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716817160; cv=none; b=dzfJ1bkbqMAB+x2xdv5844SeAXrir7PyJI9X2ZCRh+5RIBe9LuMSRF3ave9Rg7WonPmJXsKXHI+aDo+5NTb8NIuIfjknxLuynKLB7prQJNnZbJO5YK5TdX6H7ZM4RVoLzoQWnpUQE+dTHjFeyUr+tJaQ22mqQuTGyh/v22cK+2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716817160; c=relaxed/simple;
	bh=Q0QJSfZ51BjlCjV1fzHNY8jwcshLWXrd/Y3XqvZCfeY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p8WubCJsTrdDh9L+Y4GaUqbroMn/x6hVayfgRNI+e7aW8stNAnL9nmbykJaZSyADz13AuEg1bGdJ3k2Xj8Vhu3flCrxSHFiTgnVkWqIRlA6T++ipTKeZAeJZ6bIX7kUDkHoyUK1RhslZ8wazBTq/SdoBDLdS3cu5bSD7+Vosi5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KOnIKTNj; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-df7719583d0so3422001276.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 06:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716817157; x=1717421957; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q0QJSfZ51BjlCjV1fzHNY8jwcshLWXrd/Y3XqvZCfeY=;
        b=KOnIKTNjBXSL4sXJB2DG3Utd4EPV6UXPpNtvQkN+GYrjgA3h5QiMDJMfYjK83v1m/P
         SVpf5HywWLSvSuh3Tjzf6x76F9B2byAmMwV4k65B9ZpcmU2s+GVvcFpHolxMhTdRPrX4
         RWotj1b+PSBs3P4uCGTtIexf2z2fNsC3R1ipvmObb/RsV/3dgMTCT+7wAM9ldthiWEPP
         r3GgbFrrnDJdRfJczwWHnVqcUxO5JGBG0BY9YcF3Nghcox1+PbsqENHOlSyoygI4cSPd
         aPBUHvcXQ1rYTPToxbu0sxN0ynq/tqwbFC9ErL/VJWPIGDUniUSHruAJR80+YWn7vnXS
         fu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716817157; x=1717421957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q0QJSfZ51BjlCjV1fzHNY8jwcshLWXrd/Y3XqvZCfeY=;
        b=FX6xgI1DPxQ0S3tSPF+OOI1+2M+0saRL5s/AQmDDuAReUOcbns7s/PyKQRlR0wJkrD
         a8oSQAt6no/9g381oWoEVnBoujGOsxHz+I6GJwUIa6F9E1+WEQ+pwt0w5qknuxKlocP9
         KdTBCvbZn109Lsz2HgSK+BK4aaD9Y4aOseyL7jbewSazkaI2UTfiKL/ThnXPpkzN+UGN
         kAvlI7lpZFQK4NNqGPjZcIlg4+3cAo63iYmILEqQwO9Nd8oUO+yoIN9QrHf7TI97N0py
         v1Qj8zIIcHSGH0UE45Is5u5CO4yGm2ILTK5vcw7SusoDbg27lYODI5q87wEVfLTeC0m6
         nDLA==
X-Forwarded-Encrypted: i=1; AJvYcCXDITLkUTBIzx6DCE0NOTaqyl38V9wF/ADnaa0k8wm7fDoZuEgocY5XvafAvUTBmGwUThirugujRMLQu5H6tZecHRy/kdqH2YzgjA==
X-Gm-Message-State: AOJu0Yz2l1MOcVQfXYqqv5j90WQ/tCdrwG+53EbK0EGtWOGmwsM1WL79
	UH7tmKBRKl0UvWN5vWLiGGoJHod4Bu74fyVuwKXDRjgOA2YoStCIqcoGFOa5LGSHvHrA6p1cKcQ
	5OWbrJBnJvu+laHKKKJIFK/x2FB9X3lubS/IxZw==
X-Google-Smtp-Source: AGHT+IFc+duNcD3dnl5PlfSWaeU543iVanFJg7u8zsI0JSvx+fv5ZxRzO7wGY0GpKjQer78ULichDeY/NaieOEgzTKI=
X-Received: by 2002:a25:b11c:0:b0:de5:1553:4351 with SMTP id
 3f1490d57ef6-df77218b217mr9183346276.15.1716817157481; Mon, 27 May 2024
 06:39:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-4-johan+linaro@kernel.org>
In-Reply-To: <20240506150830.23709-4-johan+linaro@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 15:39:06 +0200
Message-ID: <CACRpkdZrTPyv_4LuN7VNhL7VFqoNzPq_WcooJLzELfmCBaF_jA@mail.gmail.com>
Subject: Re: [PATCH 03/13] mfd: pm8008: deassert reset on probe
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 6, 2024 at 5:10=E2=80=AFPM Johan Hovold <johan+linaro@kernel.or=
g> wrote:

> Request and deassert any (optional) reset gpio during probe in case it
> has been left asserted by the boot firmware.
>
> Note the reset line is not asserted to avoid reverting to the default
> I2C address in case the firmware has configured an alternate address.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

