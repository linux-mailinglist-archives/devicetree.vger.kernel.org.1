Return-Path: <devicetree+bounces-156859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7976A5DB62
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9D461770DC
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1B2E241CA8;
	Wed, 12 Mar 2025 11:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ye1Hz2TS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318BA24169E
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778708; cv=none; b=SG5+zj8ERDEh1Fu4mfDK/p60ZMHhUS7ipQcSNaUFQqtUTUXeQR8RtGLbJEGtdwMspC5hOpvEelN9FJZokXKeF/Vojyh470NBi7sBnnRayLSR5Mlp7ChHjTpQ1LcL8LvIv5L6McWQKS6y9YvVCYfeBmjrB4QBYyW9L+RYqKJczpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778708; c=relaxed/simple;
	bh=wnrZUyN7rJg6I8awpfItZW2DiMpfPTr02Csnc2Gy5rg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DwAPOQVjT5cdpYXCm4dJP3879eYMT/oGTylCzhCVr91zZ62Qy9cFE0F/JRxFxIL8S9Iw4HmYP61Mq8Wg7QtLU+V2WrTDTCPg6UR5hyIHx5bNmGMzrPY9j53oFKyB3eU+Hnz0fT/LUhtpmT16Py8dhPvyJiFJQQL86SEo1xCb27M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ye1Hz2TS; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6fedefb1c9cso30672847b3.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778706; x=1742383506; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SlllDyrG0fYSws8ZDTJ9/6dg1cf1e/vrQ7JEAgapZYk=;
        b=Ye1Hz2TSSHciHdEPDu0gETTCr9JD2Ui63nZ34eXhWzNTAfaw4cXJjR3A75pURY2rMo
         moKsEjO3Ic0ERvOe3ZAxdFKv+Fsy5Q25+HM7K3Jzwmm3hEm0RM2pRD7FSMz5WQwVmxEU
         iVM+/ooqavH2rWMYaCXH6OutvBRgi5JxKIZnkpaezo00mylu8vnQN6c/WxYLKk3N3f1S
         oDCDuHYnLGHug/rT0FMQ1Jvi7tmR4rZQ1U3pwsAxflckFr6UfYHC23rYa9gH6zEaQ5cF
         X4sVM0zapUZGLRBqftTgakeHSNr95rx5aRYYsClBZW23i4Jg9Jk/KjFrgcbM4SO0jxiX
         O2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778706; x=1742383506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SlllDyrG0fYSws8ZDTJ9/6dg1cf1e/vrQ7JEAgapZYk=;
        b=K/qegKV0ZcAMpaKT1kFE7PiAI33EdWPbnJkWHIw+h0nHsw6kZycWJrvoFiqd6iAnDE
         KFiMMRJ4F2QoNIqVWPv7gU3VnhkxY8a/Bfm036Ro4HSoEbd1DfyR5974ZYO/UeaJLHTs
         iRZQmltF4Cqr11HYYE2YpDkmx3OrxcV5eNYtUqYISeOR5tWUW83kkpaNPeTqDTEAa+J1
         gMV84A/RMlmZYEhmIAIMCYhZ7IRpAPqe6ikKOZ63ZEoPmzG4OoIGmpPha5VqBnFK3G9y
         JLIAYarM+ZhGpbLsRicTHhL2We7TO7iwdLrx7pcZe/C5l1BAIbQS4d5q02HNY53zDRHN
         f2Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVf9L4dyTmR+k4+jB51iYgkDxY04ZkkubJoMpetjierN7SjOwJGFpRyg4a8R+oFAFrOG58+6gNWU7FW@vger.kernel.org
X-Gm-Message-State: AOJu0YxzBh7wj8Pnpy7z7Z2uMWiNS45hMPhOWo5Qi58IHE2JV1sd2zaE
	xcr4vblobdAaEhncjSzt7xhga3gGMvmiew4Y8GzL/6wNdM4/01adw9SUNhtsD11UbvhP+uHJun9
	FOwcfFNMHqRK1BJe8KujXOJuv76UXpHopNLnbMw==
X-Gm-Gg: ASbGncuPt7JJmHkUjkBdVPl2rPJ02x/+7G6pt70nTyfTV9NKj+/X+CuJIBHFbflmf8k
	XIKl8lac//zEeT3OJDoggkT9noo8IoDUgAn5I2f6taeWB0bwmOYyAbZA3qnmbUeAeHyCi/2oXcU
	0s52ZtbGg3I1FPFkEP51jtlvLL+ac=
X-Google-Smtp-Source: AGHT+IGzzYKZqQnzo4/TkxVRdAG+iFIbj58CZgUDRSBl5yXeaKcuRHZ3DsF7Iz2ZDi/kqew08vFq+RA7yevcdns+/6o=
X-Received: by 2002:a05:690c:3603:b0:6f9:aeee:8f1b with SMTP id
 00721157ae682-6febf3e0495mr303639797b3.31.1741778706131; Wed, 12 Mar 2025
 04:25:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224-mmc-slot-v4-0-231620a31e88@microchip.com>
In-Reply-To: <20250224-mmc-slot-v4-0-231620a31e88@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:30 +0100
X-Gm-Features: AQ5f1JpKdBqCJY0FuHEmcwF7hCaSqNRMMWLNVMGY2ucMSaeEfL0rXnlSWP-UCcI
Message-ID: <CAPDyKFriZ8xaS0EjO8axVpv7e-8D2Yg9Fm0APCK6M-WYe87_9Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] dt-bindings: mmc: Fix the mmc-slot and Convert
 atmel,hsmci to json schema
To: Dharma Balasubiramani <dharma.b@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 24 Feb 2025 at 03:53, Dharma Balasubiramani
<dharma.b@microchip.com> wrote:
>
> This patch series modifies the property status of "compatible"
> (required/optional).
>
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>

The series applied for next, thanks!

Kind regards
Uffe


> ---
> Changes in v4:
> - Rewrapped the commit message with textwidth=75
> - Allow slot pattern property to match only 0 to 2 as per reg.
> - Add Reviewed-by tags from Rob.
> - Link to v3: https://lore.kernel.org/r/20250212-mmc-slot-v3-0-2bf288207040@microchip.com
>
> Changes in v3:
> - Add compatible as required property in meson binding.
> - Include the dependent patch that converts txt to yaml for clarity in patch series.
> - Refer the mmc-slot binding in the hsmci binding.
> - Explain "why" the property is made optional in commit description.
> - Link to v2: https://lore.kernel.org/r/20250205-mmc-slot-v2-1-da3c5f30e2d9@microchip.com
>
> Changes in v2:
> - Instead of moving the compatible string to the other binding, just make it
>   optional (remove from required list).
> - Link to v1: https://lore.kernel.org/r/20241219-mmc-slot-v1-1-dfc747a3d3fb@microchip.com
>
> ---
> Dharma Balasubiramani (2):
>       dt-bindings: mmc: mmc-slot: Make compatible property optional
>       dt-bindings: mmc: atmel,hsmci: Convert to json schema
>
>  .../bindings/mmc/amlogic,meson-mx-sdio.yaml        |   3 +
>  .../devicetree/bindings/mmc/atmel,hsmci.yaml       | 106 +++++++++++++++++++++
>  .../devicetree/bindings/mmc/atmel-hsmci.txt        |  73 --------------
>  .../devicetree/bindings/mmc/mmc-slot.yaml          |   1 -
>  4 files changed, 109 insertions(+), 74 deletions(-)
> ---
> base-commit: d4b0fd87ff0d4338b259dc79b2b3c6f7e70e8afa
> change-id: 20241219-mmc-slot-0574889daea3
>
> Best regards,
> --
> Dharma Balasubiramani <dharma.b@microchip.com>
>

