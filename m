Return-Path: <devicetree+bounces-132282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFDD9F65BB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:18:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBE1C188E64B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245D51A23A2;
	Wed, 18 Dec 2024 12:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXJmc7+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D0C1A2381
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 12:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734524257; cv=none; b=uT+WOKF+rhORek4A9CuST7ZVkvZAcHzvW3U8689/WBULy+WYKPGSkhBKuHD8iabr1kMKe+rWcQo+Ec0QcOliHnWjfJM59XGNpDitD8rl14rCirYLMlmU+zGfsiTudIoy3vbZK1jrubvdujnjSk+qPiKeG7f9wS0QOsFLO8t7pzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734524257; c=relaxed/simple;
	bh=utk/X6JnLeKqbQF2r9hM41s5ZSPb6bu5oZ1ZGKH0t4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mVvxRTXRA3MQ33musG7TfdavnsxUmF88FYCP5hQaEk4uriNevfsFEdXiZcAOUOQQdaXw5M9V2B9m8B/D1sbUS4jphnwTfN2btiQhxQG9pwm201N/timZNm+FiXujNi8ui3BZrHpgzAhm0yOdGekiJjVUTvs5Omlz67CcC8nVRuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dXJmc7+X; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71e15d9629bso1463028a34.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 04:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734524254; x=1735129054; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2vh/xwZF5apT8bu19SqSmXzYYa1+FrHmeqyI4yFkWo=;
        b=dXJmc7+XHbiggIlTCm6XyqBPoHQGCnNgWG1jfg2zU2JEdIKAnSwB/nYPrBhqYcnIV1
         atYp8eVzZ1k3hM2Zng0zHrBEMEsn29xErgFyybNCNCPqhoyP7Gg20UZFXlXCB6I6HD4J
         /9v5xeUc7WhDIB/PBtz/CBWRLRstlacDKVZj1CJuk8tEpJRbRTJHHVMOLEyMrDDNaL+s
         CBafeK46LitFPOAy78Y3iEt0noDxMWFLRz3A4B+rvcC6oLfn9Oy5wRUnND7NtRs+dvMu
         QpNtgFlbrrVufTuAIOqjzW/HAKjC7lykADqrdsNwNrUJPXLOepJtUcK2QgJPCCsVOu+9
         ivlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734524254; x=1735129054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2vh/xwZF5apT8bu19SqSmXzYYa1+FrHmeqyI4yFkWo=;
        b=kzKJJLOrs5MXYCO8VPDHUviD5VfGKtMYv0Eg3epPxlacK13yE5vx9uDKUIKSCQamwJ
         OlMnis1Oe1bQcCvRdViHzwmlLqm90pRgdpeaQNd+vZr2eLtHnFEwybiBf/Gm538Fklx/
         3wYpe8MgAo36IVKbg6d0Vp//W5FmMLh0ugFc0QN54J/Zt6BFIVwHDLYUjpgguSmbwR3S
         GBbxw5lPpOQWroLQsx799rys7/yURrEujeZOBe7+FVU49np6UjrpfHrRFj8HUsC0rtC+
         /nS7kjqKXnlcck1wmm3U6vfkYJSZy97OztEB0Ts1I4H6GMeMNHzz47e0dNcellN6mdv4
         PEEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiAZ7dEU+GnoHY8Zl53za3nGWedwU3/vFlCCmd1izmV7fpQbVTCg5+w8203t5aF5WQUQyVTorzKwgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwRckDdQwI/9Jf4/hv0rdiL4eu3e9UZl7k0jyYZy4hYtQ4TsFMk
	tHED0gf4tyAfgf9sMSpdbOQcFek7ffvs9S/VBJNrECMH8lDfzNWbdv7ykYvKxNzstiOn3uVTgbk
	uJcsBh1vqtuEq/sUC5iZaLkTl7xbPAo8cTzNFGg==
X-Gm-Gg: ASbGncvOt2e1kHgykRBGJ4FrbQxu14Ro/HQElp6SfTexXjuhQCqsWhI+sXIhTKOH7Z6
	GW/XaLpEsLh9artVhnfbZEIHfxF5vtLRkV3WCzVc=
X-Google-Smtp-Source: AGHT+IEojA6LnlTVG9PHZZVxfH/TlVwW+tBtuepHbLJd8n0q39aSKwMleaTiWWO3skHqftkc2ID9Y5fPiPCYVBpN7G4=
X-Received: by 2002:a05:6830:6e83:b0:718:7c3:f86a with SMTP id
 46e09a7af769-71fb75731acmr1512698a34.6.1734524254625; Wed, 18 Dec 2024
 04:17:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org> <20241216-gs101-simplefb-v1-2-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-2-8ccad1830281@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 12:17:23 +0000
Message-ID: <CADrjBPq4hH+kiuObXCkJXf6Ft-zEDnSVM5HuYNd=xMvaLicryg@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andre

On Mon, 16 Dec 2024 at 13:06, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> The bootloader configures the display hardware for a framebuffer at the
> given address, let's add a simple-framebuffer node here until we get a
> proper DRM driver.
>
> This has several benefits since it's an OLED display:
> * energy consumption goes down significantly, as it changes from white
>   (as left by bootloader) to black (linux console), and we generally
>   don't run out of battery anymore when plugged into a USB port
> * less of a burn-in effect I assume
> * phone stays cooler due to reduced energy consumption by display
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Tested on Oriole device, with latest initramfs and framebuffer was function=
al.

regards,

Peter

