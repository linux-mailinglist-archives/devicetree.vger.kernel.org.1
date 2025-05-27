Return-Path: <devicetree+bounces-180859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35825AC50FD
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 16:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F2EA1BA1AA6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 14:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F152798F4;
	Tue, 27 May 2025 14:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xvPqjRMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4B02798F3
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748356541; cv=none; b=BW023JWjTeAZ0I4pITxMINSN59W3WrbKLJthMLQjBs/Tw1kHyCf7PjZmFK3sWCCEI04x84YpwK2IyxUaZWHxMpPKAabwwjGg7DVN1a6oLfLSU5rQCgrINTS7YVLPnCo5Vk5ghygznU6nMWD1FCUz367xXhwrf7w1El0N320DeaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748356541; c=relaxed/simple;
	bh=cja1fI2Ef3oVRN3ln1uZZNmEEcLeGhxoGld828CPx80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EvRlQ8LNogw6WVVgnEhOKkETlBOvCSZMJS0epLc10vU4CAug78r2DaY/fjCiXx5iNq6+1l2cqoAwuvno+6CxShI5NkMKr+atbzv9BVRo1TWPzzDiMLMo0qeh2BxCeNzuJdil38H6ltzjBrtP7O+A5AATWOtlCDHVQKu9uS/PIcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xvPqjRMn; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e731a56e111so2559870276.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 07:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748356539; x=1748961339; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yj61DsrMeMWCwZPL0JbzQgDWQkQXCn/QcX+T8FgoNzQ=;
        b=xvPqjRMndl8VaAuVu28EhZ3fiuY1ORRfSQL0nHxMFtK1z/+H19fDl3DxJ5xWXeogld
         RLwlB2hUdcNGLyafkf/Jv4SEtLYkU7oOdGKG3EUZLiqMxN6ssGaJMbwWXm7Ig8lVCJN2
         7hDiKkLS1+cBo2J/01XBPXB1TTTxECskge+1IQjnNdzysbu6vPlFksSoIz04GjCQrpyM
         59TDBOlGjYWt6drZFxxqGTH4ci+9UdBpXT36qtk0jFetQNyieOsQBeHyh885eX1xUnPH
         bzDG3+Si3d2PlruJA89w3byT2BQe6wwcWp5TOpJK2PblyliJn6xSADqATpSC0jYcsdWX
         vMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748356539; x=1748961339;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yj61DsrMeMWCwZPL0JbzQgDWQkQXCn/QcX+T8FgoNzQ=;
        b=TvJmzMLUSmjjL+0aPy2KJnAMbtKL8h/yEPBzPT35mqkZoF88IkINF4cNbLV9fZL2iv
         btPackrJS4JBPMFQVbWNGzfGOV00fSvDzWza+zqsEEGcOTDXvJ9aEwrX1yagZL1pRfE5
         BWUKBpR76bTnzPZwvW5vyoLtI+81A9HecQHdC/tj6XYmi/BJILyAI4j1JJ1Fvu7zfLKy
         /JGn5It8l3tyUK67DTFtb4r9zsBmKjPx+Zjl7IJuxjvc20rUhkQRvm1sGRqzZtT4/cO1
         Zye6QmW2wBed7bTXb67k1qJ/GsUNYLwzbw0CQVJZF2M002cHp83Vca521RXiZNyR7ym9
         YO3w==
X-Forwarded-Encrypted: i=1; AJvYcCVzrxjGd921iuYmYpa3wq38AWmCwUcM8jt82NbWKv9ORdWJuNW9+3frw/rCAGieQxmEFvGWNDoGTrKt@vger.kernel.org
X-Gm-Message-State: AOJu0YwZAVOXUshOKMBr3lbBYj1jTvrJ+DmE9qbKRYcSXs91gWCmuHOF
	/55u1AiQfh6KlU17dox/qG0wtf3SDEXP7i8fjnwTxsrM096jAuGj5q4RxC+g0vOZfpDartg6Oii
	BStup0IuiwvvTW0k9zclbNbSZEMJMbgR9Z60YqVYh0A==
X-Gm-Gg: ASbGncvXSGT775WZSKcZ+VZVlVeZh+ttO18brF4GREXRHwdQ2q7wNL/bZFCaqKyBGk9
	gWujCzB0wFNWom5Ft8Q4QggS1uV7NataFnAM58wxbT/U2RUdPBYWuuP0VggudSURNiSM0kBMHXU
	xVpElVlW/TOV7FpwKrChZ7hjis5YcS992LIA==
X-Google-Smtp-Source: AGHT+IEza78A9ENnR5O8Dofyx/Pw9tLHJHiZMGvlW4NPAPac1rNHq3hR3Ihr49/HMPreqV7/1zrs+KoKNzJJUGDnh9A=
X-Received: by 2002:a05:6902:100f:b0:e7d:c9f4:ed80 with SMTP id
 3f1490d57ef6-e7dc9f4ef2bmr2892226276.34.1748356538436; Tue, 27 May 2025
 07:35:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523105745.6210-1-quic_sartgarg@quicinc.com> <d0d3c2c0-d5ab-484d-835b-3a76055cad55@oss.qualcomm.com>
In-Reply-To: <d0d3c2c0-d5ab-484d-835b-3a76055cad55@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 May 2025 16:35:02 +0200
X-Gm-Features: AX0GCFuCVqmDKFBGxj-r9MWTg0HcX-1n2QZgpIUWBloETdc9Q6k3WIWR9wYHE2g
Message-ID: <CAPDyKFoKh6KLtn6-Rvttt9zKh2fk7T28t_jC7KC8peYE+RkL5Q@mail.gmail.com>
Subject: Re: [PATCH V2 0/3] Add level shifter support for qualcomm SOC's
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Sarthak Garg <quic_sartgarg@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com, 
	quic_rampraka@quicinc.com, quic_pragalla@quicinc.com, 
	quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_bhaskarv@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 23 May 2025 at 20:25, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 5/23/25 12:57 PM, Sarthak Garg wrote:
> > Add level shifter support for qualcomm SOC's.
> >
> > - Changed from v1
> >     - As suggested by Krzysztof Kozlowski redesigned logic to use
> >     compatible property for adding this level shifter support.
> >     - Addressed Adrian Hunter comments on V1 with resepect to
> >       checkpatch.
> >     - Cleared the bits first and then set bits in
> >       sdhci_msm_execute_tuning as suggested by Adrian Hunter.
> >     - Upated the if condition logic in msm_set_clock_rate_for_bus_mode
> >       as suggested by Adrian Hunter.
>
> During internal review I suggested we could introduce a generic quirk,
> perhaps called "max-hs-frequency" which would update this
> currently-constant value:
>
> ---------------- drivers/mmc/core/sd.c ----------------
> if (status[13] & SD_MODE_HIGH_SPEED)
>         card->sw_caps.hs_max_dtr = HIGH_SPEED_MAX_DTR;
> -------------------------------------------------------
>
> (50 MHz)
>
> which I believe is where it comes from

I agree that a DT property for the mmc controller would make sense.

Although, this seems limited to SD UHS-I speed modes, so perhaps
"max-sd-uhs-frequency" would be a better name for it?

Kind regards
Uffe

