Return-Path: <devicetree+bounces-157518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6DA60EA4
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:22:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3A1F3ACE68
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A825F1F3BAE;
	Fri, 14 Mar 2025 10:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p9zQ3ft0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063541EB5D4
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741947719; cv=none; b=Z8hP3J5wkJAO9XxXGoaFu5bt96pJD4ZCs4MjIVQ+iZv2O8ZIet/W0Jm5Eut5CiOquBc0i4mNcyIkxB1Uc6NElyB30BZgf2of9oGEU3VQU80xfMORIJkxewtmbUapu5tWNWbLrV54CD3815VH6/0m6cFOLIMwtA6O2pFC498Rv8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741947719; c=relaxed/simple;
	bh=xTpZTX6AMxu3+qazJFqKIwM9kTorD9hdWCEh54oD/yY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TC/ISpkDff1BgtfhoGw0282XuJyC6xCWbQkozBnG1ghH4cujMYjABPfkhaMBwed5OuALXhFc8cNufAiMBFpyV7HJpC3VeVegs4BLa5ULvvoNt/IMtAwNk4LTnwk2O0oHrO79kuekpjrsixamdXNy93rbk/MdBelw7j829DpmqSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p9zQ3ft0; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5498c742661so2138252e87.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741947715; x=1742552515; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTpZTX6AMxu3+qazJFqKIwM9kTorD9hdWCEh54oD/yY=;
        b=p9zQ3ft0WTocuto3kxkJdZvK8WPT9p0aKQQAxmKEeEhxOfmQMgVSf0WYouq2RNtnDZ
         nz+yP1Epw6b136sAePYsDMbo7ZfBWCV898YfqtD4tmE3Guhtz0zr6avLivv9OGMGOzch
         nFG7Eo0X3COKdmeFB3I2JCqiPxnx69KlVzg4uCEN8pALQplNC3dfBeLdCE+PAusxtQMD
         v/kMktGMAMG0YKXNuafxPmdDNq0y4kMzgIZ0s9hMg9tWhou/fo12OEHnGVzq9AzbvlYS
         hELu1wvIyxLtFtNgSphQnXx0ozfRY2z2xBKSS0M+yfRlmTT1mtp+Vrz9w48Fd/YNIh15
         Adow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741947715; x=1742552515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xTpZTX6AMxu3+qazJFqKIwM9kTorD9hdWCEh54oD/yY=;
        b=Y3Rdnfds1eHkNiJ5wwUhuRZbdk+FF8bvrlPZaFojnQh9RHnxvHFuuhRqSVUka+j1x6
         LBV1tKCaEL3STq7LYm403g6iWRL9vleMiC1VLKmdsEimgclr6+ZYxN64zHHUiO82ZKXi
         IgtUB/15vSUJcmn6Akmvw/XMmiGUQIuM87Hw/NZOwpy46/4aA7IxAPpWdNe+1NNM1yhP
         UDr3Sz5iGETD3K6G6JklnegbAPscCihNNphXS/lrrhSnEDObDW6c17RjE7VNVeDK0yqj
         HYDHlUA0k6gBKMm5VgRwVEiPibiyfBTPAKCDkSSPjaDBj2cl+b+seFgidp/zFhlAK8Kd
         TZ9w==
X-Forwarded-Encrypted: i=1; AJvYcCU6EnUTea/HUAPYBdmgss1slz4BkqSH4Ohrd1Q1h3YnMDsB/lET016tPEVi/G7OF+ty4mIHIJ1o+Wf9@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRx32lt4CPdMABIitQ9UtwT4/mjsSSGGDNmxf/sBJNr8gogUh
	gNqHvCstZMukJ6dlI+Ip6nKi3pMJaEC5BwFcziiWPrfH7eZdmlOh/yJsOpk+khcsN/43tvLteXq
	TVOlUshaVb4tsbfAfloNzSqkuJ6UssVkPYAhEfA==
X-Gm-Gg: ASbGnctLDCdmCSoXf9ZrRdO/Jd0ZdW3WA3Yf0dWfxteKESDRIl3xGyWr5loA15boKOr
	ZFu860QHkkAWxxRUc+sTWklRRiPMiVksN31IvP7C8LcQZEowWHvmYbGJopPRl8fvPIBX8prCbvM
	w/N7xLwuOjSavWVSFQqM56ZR6po0t5sl5mtQ==
X-Google-Smtp-Source: AGHT+IEUDgH4hKI/VlqsNxuCaInPD1IYUYUxnK5o+/fyx5ELv/o0sS9qDolaum2DK5go96TmMf3VW3HeNPG9uPpiEA8=
X-Received: by 2002:a05:6512:b94:b0:545:c1e:65fb with SMTP id
 2adb3069b0e04-549c38fbccdmr686124e87.18.1741947715080; Fri, 14 Mar 2025
 03:21:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250307124841.23777-1-darren.ye@mediatek.com> <20250307124841.23777-7-darren.ye@mediatek.com>
In-Reply-To: <20250307124841.23777-7-darren.ye@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:21:44 +0100
X-Gm-Features: AQ5f1JoRI9uPFODrP-kekoqBVTf1T6TLHgkeo343GHaQMulDksI11fRwjUXLOnA
Message-ID: <CACRpkdZ=a0mbir=D3dCSPns1TC_OVWMMTXJKcTYOJeNy7aQ7NQ@mail.gmail.com>
Subject: Re: [PATCH 06/14] ASoC: mediatek: mt8196: support audio GPIO control
To: "Darren.Ye" <darren.ye@mediatek.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

thanks for your patch!

On Fri, Mar 7, 2025 at 1:49=E2=80=AFPM Darren.Ye <darren.ye@mediatek.com> w=
rote:

> From: Darren Ye <darren.ye@mediatek.com>
>
> Implement mode switching for audio GPIO.
>
> Signed-off-by: Darren Ye <darren.ye@mediatek.com>

> +#include <linux/gpio.h>

Please don't include this legacy header. I don't think you even need it,
you are not using any gpio_ symbols at all.

> +#include <linux/pinctrl/consumer.h>

You don't seem to use anything from this include either.

Find more specific headers if you need the code to compile.

I think you should drop both, the name "GPIO" in this file is a bit confusi=
ng
because it's not very generic but dealing with audio IO routing. But I gues=
s
it is what Mediatek calls it.

Yours,
Linus Walleij

