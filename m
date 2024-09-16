Return-Path: <devicetree+bounces-103360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB36797A7FA
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 21:53:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED6491C25ADF
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 19:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB03315B10A;
	Mon, 16 Sep 2024 19:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QoXPggEi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129832E659
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 19:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726516395; cv=none; b=bLsIZadGLjnXzUEb3xDvPUO2LiGry3fnhP2glaEiPxKewXuQQmziPjwgMdqaNiPIel6Cn+TBd0iGH2c0lmYUG5763NKy1Z/2G5Z018p8aHM9lSmF8OLCNpXeaOTFcJOed2yIckV80IVqNUCAkrYaaDOcmodxfuJm8999HBllWG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726516395; c=relaxed/simple;
	bh=uqqd628+uhGIMEaT7YU8Q0Fz08LP/o11gVqgxOVy/sA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VUiCNUVrokEAyRDnBO9w+1Oacxpfm9oAYStfZ38qTX3lw2Kc65rGbfmzMrzkCLvUh9iei9Qj0qLWp7v1iltmJa0onxPuiqn7HIG0daN2G5q3D1UJrcrq6q0gd5inBBWcI1UlQEj4J8i1QPVkgX3xBH+Nc8lIs2vSnkHSaCoDJok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QoXPggEi; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e0719668e8so1800421b6e.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 12:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726516393; x=1727121193; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c6Q5LEk25O3rZqtoMXlikB22Q5jTShRdeCQOQJhpac=;
        b=QoXPggEiO/9BJ5/Q5QdmHjDfm+vEG8r6nCZnwA4sRYWKsjouw8PZNazhxGRScPxOjK
         asOS1H1XaXfJ4NMggPUuG/1yUlwpTCGIgE1Du0cBUN2V4YBPZS58BP39WE84m8OMSG2e
         Y63ihCFIqnK8MPuUKPnbnxvss25aSEfLk170N2x1yxw+RQ8AMn+8nDLIr9LIrfmePEUM
         8NyV/yi3iOdfemR9T3InP3M9WMw73tVwkCLumd2IdulCeNDm0sds3/JVVTnpSjWktmYn
         dP66DMa5cNSYlQ1AhZxLH/IkLW+PU0gj8wfmO4gf8M+s9GPUu306LssI7anPAX5QA61m
         kzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726516393; x=1727121193;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c6Q5LEk25O3rZqtoMXlikB22Q5jTShRdeCQOQJhpac=;
        b=kwLd3s0q1+2yznGnhHWh21y6jCx6LmyXpHOJ0VBtPfrM44Mel31wB5BtwYeivQIvJf
         HR+83tUY5EnMCmkn9oPTAVxSDrCpMslYRjeHJM0WMtozoXnLLHDWcGCw6Q1ebg20ZYs5
         q+M1JZD6y+5cnk0zeCpC+XeEMUCg3bnKVb9JSSjfABZ2v8RF5/cu5+4R+5aqoFMYcSEm
         4pZ5nYSuXoJrRsIaMH5EivgUdcwcRxhfaSn1UkqDow1eAH1pf8lc0qliZgu2UK38W7iq
         nIxSH/nXztvD3J+Ii/ACAjAZjANrINSY5sOssgMvUnDexnz7Tjtb6jpr4QSzsNa4mdir
         CEkg==
X-Forwarded-Encrypted: i=1; AJvYcCX08RIXjGlPzGsdu5bAevcf6iK0xF6yuX0w1+2hoRUw7UEMPqIDgjPZ4NszSrYoUjZBm+9aOkn1itwr@vger.kernel.org
X-Gm-Message-State: AOJu0YwROyx39CDvxs3mNHnShcdJBJJ1E0XwstCy/Obuw8AEEQnIkpww
	/zrSQ1m3myw8Z1u3tfKkXrXubHYI1l1DWPG6tPlpQW+BabTkwEAgfRX90IQ5280DsdUpSEbG7Xv
	X3PhP9s4yxvMKI4Kj6L/UE2pGMeStDxvT/YnG9A==
X-Google-Smtp-Source: AGHT+IFZ2fxbquHr0hJBxa/3ohWhGc6eo3RAx6RxYU89o1TqmSkYcWIeJ1zwgOdMVbqCUmNvRnX3BuMtsfCnt0r4VPE=
X-Received: by 2002:a05:6808:210f:b0:3e0:4cf4:d948 with SMTP id
 5614622812f47-3e071b0dc53mr11129092b6e.38.1726516393181; Mon, 16 Sep 2024
 12:53:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240916-max20339-v1-0-b04ce8e8c471@linaro.org> <20240916-max20339-v1-1-b04ce8e8c471@linaro.org>
In-Reply-To: <20240916-max20339-v1-1-b04ce8e8c471@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 16 Sep 2024 20:53:02 +0100
Message-ID: <CADrjBPp1Esr_y7nuMgEiknDQbDzW7bKu5UKaoRQ7jGYRAFr_Uw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: regulator: add max20339 binding
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Walle <mwalle@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 16 Sept 2024 at 17:48, Andr=C3=A9 Draszik <andre.draszik@linaro.org=
> wrote:
>
> Add device tree binding for Maxim MAX20339 overvoltage protector with
> load switches.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
>  .../bindings/regulator/maxim,max20339.yaml         | 171 +++++++++++++++=
++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 177 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/regulator/maxim,max20339.y=
aml b/Documentation/devicetree/bindings/regulator/maxim,max20339.yaml
> new file mode 100644
> index 000000000000..ef6490cf5a6b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/maxim,max20339.yaml
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/maxim,max20339.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim Integrated MAX20339 overvoltage protector with load switche=
s
> +
> +maintainers:
> +  - Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> +
> +description: |
> +  The MAX20339 is an overvoltage protection (OVP) device with integrated=
 load
> +  switches and ESD Protection for USB Type-C applications. It protects l=
ow
> +  voltage systems against voltage faults and surges. It also integrates =
two
> +  load switches with current limiting, configurable by hard- and softwar=
e.

[nit]: what does "hard-" mean? should this say hardware?

Peter

