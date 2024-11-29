Return-Path: <devicetree+bounces-125484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 121AB9DC15C
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:22:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3863164352
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B95F175D5A;
	Fri, 29 Nov 2024 09:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ifAlznO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2884B14F135
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732872154; cv=none; b=cQ5BuvKiJkHYyZR3Bu1vHBcjCuRE5JaVC3g0DgfktS+zNgUGB5Kpxbh7WcBm56VYf7ia3hWPqUO5s+oG5RHh/ZopOtURiTKcqm8xi/DGUbGk6/6w+aapST+8/nxTqYz+7nQOAeunKhKTalCo3bplOD0BvG24NtEihSos/d29Dac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732872154; c=relaxed/simple;
	bh=JiIfkNNTfG2wLwCrL8SHt4I5iayU11reYKOyFG1OMt8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YnY9mDQW9w6EaLEeji/RJxtHqFiRFnXpZqc1klT11wchJOEf0ts3HMPewoktXW2RwPP3CL3UAVgyedHu3RGppmPgAKvCvlnVhtBjzYgF0NvidZYE5qvIrPfLWl2GNhasLlVqHbvPfWrpuyLkiHUk7U0dKgvp8vQoUr7Rrm1JoLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ifAlznO0; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2967af48248so935205fac.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 01:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732872151; x=1733476951; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JiIfkNNTfG2wLwCrL8SHt4I5iayU11reYKOyFG1OMt8=;
        b=ifAlznO0BahjWOJe/7uZG4FdNjrvuq4ZUvuQKDhjAceh+MDt1cI3hkMNzlApRTkfot
         I2wtTjzvla0yf0oLpr5exaSFBbBjuL6ZVEc1QthglX1/JqJQ7cZ18CWK7a0swuO9DKDd
         Dd4yOcSA469hD+PPUzZit8NgDwjQnnBKonpYQMTRF/kAc3Gu3ykpSVAStfbUwtcDh3GL
         tnLPrNm4y+I0tK7oHKP/WsID3u9lbqYIHv1R4MoU2UEDl8iAdtNc36iliiMKDqvSXcuA
         Cw7ydtWGR1W886MYoYJQVv2ukIYEcxE6bMYxD9GdEjCaXhyQueE89r9BKp1ui4R4bnXM
         1kKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732872151; x=1733476951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JiIfkNNTfG2wLwCrL8SHt4I5iayU11reYKOyFG1OMt8=;
        b=Elt7QgY5yvALKeGt++8Zv7Xrb4EiNjS8F5rr/ik3MLsfd1XuHibUiOejACR81VfCPJ
         F3LyL6DmnhSYIEk7Kj1lMk5RGiREtbY4HvP4LO8TQqo9K1vDiLbFRbmwBJHo8qlEZYBF
         /GH/kgRQls07PbL3iTmkCv6FYfAo9gK9GC/nY9WxE5ZSycUA8AlE0N3hAN8ZrC53LJt5
         b0MvzkXus8N9kr3zc3fOyTvZCKjziaNkz49MZNrV8eKN7kPTqn79YAPOWB8Bk3RvjVrH
         +cRSqvKT+DfsZTAkXFQn4sEZvH9h7/MiYSSoNXSKbdNQQ3VW7NwPJc2rtyHsZSiA628D
         jVKg==
X-Forwarded-Encrypted: i=1; AJvYcCUdBZIs6s7bCe40lfnOBpUjBh+YbdeQUE4M+KImxd0JVTkMpIxJp5ia3vI64khNmbn0y/YIcP6JzdbU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6m9WnFB3HGRgHCZf3cpFecAxpjFCqGrsVyfLG7aAKkhOBH5up
	KdLscxlgfxjO8aS4Pr4S5PyCDxSBt6UtbsN2logoc+2TC04710+7ZRws6ELC723W/AKPLO8LWR7
	mX5mHA2mV06902PQfcCKZK2L35M9OkS/Ugx23Rg==
X-Gm-Gg: ASbGncvsYU1E5eaMpJcFZ4c0qxPcvCjDn6bn85LurGh3JZfMbdg6NCQYZucEzku3K85
	C6l6YlkyKLlkYOYcPrrD4eyYeeRwZFv8k
X-Google-Smtp-Source: AGHT+IFjSIqaNaKVZ3/NuPe/UxWWplbF+FKubgmNFJXh3rXD7HgOiYLcq/AbS7MVH0EyqYNXM/cmA1yMxrA0FbnycFY=
X-Received: by 2002:a05:6870:7d13:b0:278:2c82:e056 with SMTP id
 586e51a60fabf-29dc4199014mr6752255fac.23.1732872151330; Fri, 29 Nov 2024
 01:22:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-5-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-5-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:22:20 +0000
Message-ID: <CADrjBPqUUXxjKapaSdWQz2PL8MsYVr74HCP_OqZZSG4w58_U1Q@mail.gmail.com>
Subject: Re: [PATCH 5/9] phy: exynos5-usbdrd: fix EDS distribution tuning (gs101)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> This code's intention is to configure lane0 and lane2 tunings, but for
> lane2 there is a typo and it ends up tuning something else.
>
> Fix the typo, as it doesn't appear to make sense to apply different
> tunings for lane0 vs lane2.
>
> The same typo appears to exist in the bootloader, hence we restore the
> original value in the typo'd registers as well. This can be removed
> once / if the bootloader is updated.
>
> Note that this is incorrect in the downstream driver as well - the
> values had been copied from there.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Validated that a super-speed USB link is established between Pixel 6
phone and my laptop with this patch applied and that adb works.

regards,

Peter

