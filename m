Return-Path: <devicetree+bounces-237609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 162CDC5250D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 799E43AC640
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B0E33509B;
	Wed, 12 Nov 2025 12:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uxo36mmt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44425309F03
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762951428; cv=none; b=WYpFp5NHcdtf8VkuFUOq2mgtm6ZYIlpi/6+iaPwXS7jnNh23vrLgJfYfYpn0xyoUexCApUurhVjEz9cQIFFpvnvAsYgu5RnzehQatuCBRlxxcd0IvKmXbzbck98w3kzys+wXgp+6Pn2hQ161MAhd2NQVqRaBA7KkCg9PMmSik0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762951428; c=relaxed/simple;
	bh=oDG71wLkZH6zNZ8BBmCy1cYzzKvLo2hY7GqxG8NdDxk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oXootcz+Tku8ViUE9DwYiZlQrzkvT1d2hygYnRlzD43teAG/hPcbDzhNZQBAEBdlQxUjxqmBTnfcXQ0E8IoAr6BJ8uaXunwMJgishy+N7qnlKt7bnFzh0YRkUspBgyx7BKRQKaC5Go99yMM73UF3u/1VOv3n2SUOQNnFH+7ZmW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uxo36mmt; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-594476f218fso561064e87.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 04:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762951423; x=1763556223; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oDG71wLkZH6zNZ8BBmCy1cYzzKvLo2hY7GqxG8NdDxk=;
        b=uxo36mmtj8Hh+wII3sTWzpG8uou1bkkJCbYDvyvOcxOOpzOUM7cmRMlItxiPTpT3lA
         0G3JQ0olpAdjQaaMDHrN4TDKa9GjJx7tk6u6pd3Mc2Txjn7ROQuK4pSzF8Gq7fX4YyOk
         MZjPar6m400HZLMhAqlqqVEBOJxUwcjMmfTtUkAK9CMhlolvzTw3+2VH+L4mzl1GdxMZ
         qr8/FIgPcanmRg1Oen4DdUs9Iryg673YXkKnJj6U2FDyOB0MPjflGMfZpKyT9PHjSijc
         u+lPz5943ICxpmNykEHYHxTVJeIAbR2JReXirkb5hro76hxAHTHg91ciWg2dX/tjksOM
         AkWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762951423; x=1763556223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oDG71wLkZH6zNZ8BBmCy1cYzzKvLo2hY7GqxG8NdDxk=;
        b=QmeNnkgmf5z4EYkH7yFKpQ5QCDbUfl/mCr9cAiHxkDu/gXNg2mffJnbYGBL1MU2W5j
         jVKSmFaKVzaOjNpfx5a3uedK05DLryrmj2FoiGbgnrarQGAN012zx3MSrYa9Mhtkjym2
         7aGiUOU1MvWrfXWDVgyET/9YG/CWgwkqGw57r9aBiefsDSF9ISyKurwhF5AUbTyM1V6s
         UXe87h1/vjQpevTBC6ojEbfVEAXjwQldHwsqgaqs5fMsRnYDxc02R6hgongb057S9Sua
         4NCYhO7W8V6o/zt+lIQ4K0EnsGzpETdbF4KlkqriGcsmpzc4qIIJ5Bp6qfiAbj12WHKY
         +3lg==
X-Forwarded-Encrypted: i=1; AJvYcCXnQWHHKJXUP2p25u6yR5QkrZkqVZv7YmQTTNWRnFMOdjzstBCzSQ4XmHwobBIIgkHuteIoBA2gdSQg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0QwVGV1R/TniL+Ye4Q/DatD9vb1ndHcsaZtZpafhlzmPDPvvI
	eLSPOONlwboNct0VW2R1+JgniYGOhLrmu/ipy6ugC9/LTPTOmhB5NFgzuKkGy5/2+B+6025nJ2y
	tsT6RqCqT3+zYdhU8+UlFbn8r7E/PBtUWfbIiqUOgJg==
X-Gm-Gg: ASbGncsZ1RK3hPwm9203/LvlM1E2CiTMYjB6PndbSZSyONrIlIsz4/CzvKK0iO9n8fP
	Q6egz8g9q8mTUkg91uLkGD1S16eIdnofDGu07ugYKd4ivTtIbZn5jHqvC+1Boe59ePr+rjwjCFv
	XRivc+LRbQq+y6ltMNql+gy0RUMLaMIP4EuOJpq9jOjrMPMEIcCcHuQuNH8cHHxTM2SGNJKZ0Hp
	wqhFpZXYozpMryX6xD/9RW4/YxU5jX4+4t+etv9OooUnnbPMajA+9Ontv0I
X-Google-Smtp-Source: AGHT+IFKrAN2G2zTZh4SCpeU6gZa9GThIvhb7rVDTGkR/MLZ+R0xImuA8WoUYuizes16PmjbOY9KlVCaKR3Fm5qO6C8=
X-Received: by 2002:a05:6512:b9d:b0:595:7e01:6b3a with SMTP id
 2adb3069b0e04-5957e016e6emr28072e87.14.1762951423456; Wed, 12 Nov 2025
 04:43:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com> <20251110101043.2108414-3-praveen.talari@oss.qualcomm.com>
In-Reply-To: <20251110101043.2108414-3-praveen.talari@oss.qualcomm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Nov 2025 13:43:30 +0100
X-Gm-Features: AWmQ_blw_0zZEbC2wTIU0HIhaE3Pg5Px5M6V4b6IhL47o7V7zMZgJkY7fz-LNV8
Message-ID: <CACRpkdYEbxtjoi8KQxS5fY6xr3UZwQmG-yKvT3L8fRcCXDaAwQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] pinctrl: qcom: msm: Fix potential deadlock in
 pinmux configuration
To: Praveen Talari <praveen.talari@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, 
	alexey.klimov@linaro.org, krzk@kernel.org, bryan.odonoghue@linaro.org, 
	jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, psodagud@quicinc.com, djaggi@quicinc.com, 
	quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com, 
	quic_arandive@quicinc.com, quic_shazhuss@quicinc.com, 
	quic_cchiluve@quicinc.com, Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Praveen,

thanks for your patch!

On Mon, Nov 10, 2025 at 11:11=E2=80=AFAM Praveen Talari
<praveen.talari@oss.qualcomm.com> wrote:

> Replace disable_irq() with disable_irq_nosync() in msm_pinmux_set_mux()
> to prevent potential deadlock when wakeup IRQ is triggered on the same
> GPIO being reconfigured.
>
> The issue occurs when a wakeup IRQ is triggered on a GPIO and the IRQ
> handler attempts to reconfigure the same GPIO's pinmux. In this scenario,
> msm_pinmux_set_mux() calls disable_irq() which waits for the currently
> running IRQ handler to complete, creating a circular dependency that
> results in deadlock.
>
> Using disable_irq_nosync() avoids waiting for the IRQ handler to
> complete, preventing the deadlock condition while still properly
> disabling the interrupt during pinmux reconfiguration.
>
> Suggested-by: Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>

I applied this patch 2/4 to the pin control tree for fixes.

I removed the word "potential" from subject and text so as to
reflect what Bjorn is saying: it's a very real issue.

Thanks for fixing this!
Linus Walleij

