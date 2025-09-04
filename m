Return-Path: <devicetree+bounces-213002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B413FB4461F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CB84A44B2F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66B425B1D2;
	Thu,  4 Sep 2025 19:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kUixMibm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C27253B67
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757012795; cv=none; b=glydb5xSYn0A7Yib1L02VS9RJ1bH3AWeGDP7FzsZcVq5wNErRHo/dV1jom4XAeHBKuP+E3MzcNvMWlZfT67w0EoC+gBDK1U7YHk1ALHbsSTqeU+kknkc1B0Kx14nYVBcSzrV2fZ6V7wB6rRphsWqGYbnLU3P28vi9NjO4mUYjzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757012795; c=relaxed/simple;
	bh=Tuz+KFsMOAKrrmksXSyxy7IQp79UcY5kj9LoG8AjN6Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IRYg+UmNHxbXyXjFMcHgN0Ab4LM1glJltXE3OsXDbIDfKbL6NTRMu2Uz80u8CT8bNHk9AaB9JF/23VYFjDBh/mxriF9oqWFR4tyRsPSKYTANPxrSG/luiuPxcdwKt1P6CrWcqcOni0+DO33hFubaCwVxQEhd96yXU8GcFJJCY/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kUixMibm; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-336b071e7e5so11925251fa.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757012791; x=1757617591; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8MjxXtUVklH0dAHWxRN1vQ8ydXwrQhADRfamwWuTLM=;
        b=kUixMibmAxDIV/NfIpEHxFJCLuabMg1h7wUKcxQMLoWYQEzlDrPlMVq5U8N7w1E/HO
         +wno/+lPnOu06aifkAiclLCQmkBX20wOzvTBMGBWOsfaSt/atC5cfxdP4mxVIq1Q8rnF
         MguEuw3RPxvv3mGwrwKaGe3Vi6jw0ywnZ5K+Pl9ERTYlSL5GYjviB15ALeBEJd58yzcG
         2JNHti1zpMp3wr1yICrRPUq/PcUQeIr+U7Pg25yngJGLu59mGM4xGZK2KDGTW6WzZEar
         B12gT8TZFI2FWi0AIP15qJ8gK3+5rwCnuA4qjeDLADU/LmXl1pNdwjP1g3RUmwiNdsw9
         2C0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757012791; x=1757617591;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O8MjxXtUVklH0dAHWxRN1vQ8ydXwrQhADRfamwWuTLM=;
        b=k13dq1Zb0zzxk2xa3lGLj/d0gu5L4+W3Sv3niIvBHBlMkji0Kve/0iRJsQKJZVRtf4
         t/h4qPOfx88UIlDD81Gzetd+XjTeaBHkJBspk5xPwS6tIfcI0C7BqrbVvBCFojjzIrRP
         kNQ40Dewh9QKtjn6AgAQKpdy2qlYIQXAZGA7bAbOGnXmLx0DTkZ4uBWWPrTnWT/1c7Tw
         2DcCXaog7Enp9gDqbvWsm0LLW2lXdhsIQrwKVMOBQsoQ+oP8Ey7AbgP0YM2/0QwHgYeq
         mFR+MSzh9jO8gN25UaYuS+7sykK95THxYkJRC9n8GKJrm6T9ZNfg2KnqY851j2HAWQuK
         euZA==
X-Forwarded-Encrypted: i=1; AJvYcCVmV4JR7rNaHGlVd+f4BKdnXJlevSNq+HMbKd9pVIj8r9LF+FrZCz60uC+tYl72nCODGMKOFbeRfNyM@vger.kernel.org
X-Gm-Message-State: AOJu0YxJOZ/4yYgCviSAT6IAgqtLrbRClEM3hPcZ8aX8nMlWfCNsufa4
	BaFHuGy0vXRrYPbvnAwlp02P5xRjCcj2u53kmD9rsZTQqk0Wn5ToqrQTR6fKPP7+mEBjZxJkg6Y
	qntIRJfWYb5CN72NQ4Dy1FID77bp+1Wf60z5vajaghw==
X-Gm-Gg: ASbGncuv7GJkk/XTThFKn+j0MljDnXR6xIecCipeKToTF0ukeQ1dtbNs0wChLIVzdpr
	f2liWpj5Zn6OE/mN8gDyoZrbFRKWq4p3ItOJQ56pDS30UofdseBpO7X2vS40vOtMe5Vdmqe3O4D
	IrZPs8LBa5MbjGf6k9IiBFhsO6pdsTnJ6s+860r8DdcoLkCshgj1wireKbhT1tXga5SR8v/bd0M
	AYY9G8=
X-Google-Smtp-Source: AGHT+IGQH/PqV73GnQj1gc78jLR55x1NcYKC9gSDDsK05XB+udjTt+5qVTTdpbxwzQgx75sT54Y3S3UlxUpqsaEdbyw=
X-Received: by 2002:a05:651c:30b:b0:332:57b8:92e1 with SMTP id
 38308e7fff4ca-336ca91f4b7mr45915291fa.11.1757012790724; Thu, 04 Sep 2025
 12:06:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com> <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
In-Reply-To: <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:06:19 +0200
X-Gm-Features: Ac12FXxjoi1bttOCqRb5EV_-cdL8742aaHKH_Qm1fm-mp06Nu2uHA3wUPt3kP7M
Message-ID: <CACRpkdY82ohgX_7YP16DJrzDvxMHcSu3rW+UtEmrP0AQiD_Exg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Andrea della Porta <andrea.porta@suse.com>, Peter Robinson <pbrobinson@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> From: "Ivan T. Ivanov" <iivanov@suse.de>
>
> This driver provide pin muxing and configuration functionality
> for BCM2712 SoC used by RPi5. According to [1] this chip is an
> instance of the one used in Broadcom STB  product line.
>
> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@bro=
adcom.com/
>
> Cc: Jonathan Bell <jonathan@raspberrypi.com>
> Cc: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Patch applied!

> +config PINCTRL_BRCMSTB
> +        tristate "Broadcom STB product line pin controller driver"
> +        depends on OF && (ARCH_BRCMSTB || COMPILE_TEST)

I changed this to (ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST)
because Peter Robinson told me the Pi5 needs this driver too.
See commit 1d99f92f71b6b4b2eee776562c991428490f71ef for details.

Yours,
Linus Walleij

