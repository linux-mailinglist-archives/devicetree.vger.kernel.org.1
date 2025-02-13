Return-Path: <devicetree+bounces-146469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A08FFA35081
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 22:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D7331890B44
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 21:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D352661B2;
	Thu, 13 Feb 2025 21:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="LmNghaiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D21487FA
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 21:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739482368; cv=none; b=W+DobuxGNQsmrIlYLdFdRoRx4PKNFpPhlQMtIeGGojYYum9selT0osI+tHKvChpNHWfiNPg1NRd7Z6OgLgOiSJk8GDdsCuBPW46pKNBTKdsd8ThLaHwuk+LHg+iSuzo1Yq2o7Rnx8u4Ganyb7nnpCc4q0SBiLJ1248pOcP6O1Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739482368; c=relaxed/simple;
	bh=fHyM7qs+fM0V9XKBYiBwjzIu4xyYyLnJ9YjK5FgeIzo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tCwufau35Hnw+e2NNnXIxMdWuHj0AJxP+FNpB4jw34Jcd+ECEFDNU5kC8/Dtk28jyjKoFe+wQUwa3aX8HEb21DsI2kzNK1OTBFmlhjYj810ayNV85ASKQIc8P/yNFsLazet5iXgS3PW8ybkytypASXL1G6wN+3NJqxReSrxuOkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=LmNghaiK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4395a06cf43so9125115e9.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1739482364; x=1740087164; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E9Cksr5sI5tujPp8b/uuWc+Q85liEnv8iPKnjQVPTio=;
        b=LmNghaiK1ByYmv8Fagl6cYWSyFuxlYjmSuyH/Q42VCWsZcW67qQXnrfFz0e+KIcPZH
         /DpsMsWbJx8LKFdO9f0u+Ag0PiAQ99Fy3lhL1VGyd0kVt9bKGX606ie4tnbVR7VfXvyh
         TRhF1P2z+XS6xB1+E4IhnQsg3S+zDWennsTUg5vvkWTgefY4VblWI1F7exIFsPTgJw5m
         Ar9aVJiqg7psbUdGQCl9D1zdDtqeZeqLzuWFBdcE6VWAgKs4tMAZ7yUx6v6LVhJ8PcPP
         PAEPygZv8TCDUehoJfYKph3+hXwNHyKBefUF2jwXNhDUDoCwpgx12vfDjoNUKBQwBP6L
         3Yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739482364; x=1740087164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9Cksr5sI5tujPp8b/uuWc+Q85liEnv8iPKnjQVPTio=;
        b=wpcEk5d7j1TgRynaeIMG3RA8MqlcBOcmBF8m12gCr/jCV0oDHxPExXRWSBBfP65OP1
         fW95fA2YKCIOthesoVgMqrBVCntzGGXDCuWjDJIpRQmqbjh47LWe0NYzvFlXuv1pVJcs
         CLzWZ/1LzHTY1sdQ2AV0WibaSVJLs8vND9Tay1UozDML0fZgwGQgtbVUbOR7H29CltWF
         ZYt87WmRPHas8TrySqOCAe6aTrua2WuzxfcUBZtel1YsnVVw1EllTdcLx6ObqLUYlgM6
         h0ITSKwF2Sr9WSqCiW/oNP5UzOMsgmQsf+W4uzLo2mS2pUd3jAjdWmbMHWvg3GgY25H7
         OIOA==
X-Forwarded-Encrypted: i=1; AJvYcCXNgCg4DSXGBkvgSsASthyPHIBQtvGlPESWCq+FFTxgbOqImtvy33PzvERNRuCIhasKgCH9afsSlNyP@vger.kernel.org
X-Gm-Message-State: AOJu0YzKOJDf8FV3i09WlojRUAb36ldxXX1Qdag1C2cwb+br7FdjjQFQ
	Yhhm8aocZXON3GVMIzo2jvSHTo1J5YYkCVNDJvm59nlM3cy+885bu24rGXXLsKM=
X-Gm-Gg: ASbGncsd//H2QbxsdwKXaEF6RiEICCje2lyZyvsmoIk5qLKbdFyHQsTr6pCN7mkQ5Sa
	SzgKLpW/r0K9XJ8mUsajURnhVJKM8d+2L4yO504iSL8zo5Si03ZdT4YOXLj01rW4dcj0KSPPaKW
	bRXRf4aXt+PGXvS5L6VeiB+sDU9hJtuHaPLo5CX5PI7SmLwcY5XQUAMog4T7lve638dmiKU9FgO
	R/YNe+9SjjeA8pXB+GW+RNfJEN/jRDwQn6w7wmHE3W0ylCHItzlINsF8D16FTU2X5qxny6xYEuM
	hZzmuUjp3gU73Cxx8pMaba0G9hR+VkmHNLhT61Y3M1r834a9RerQkUoRkuqa5sLoEjeaQUJ9cA=
	=
X-Google-Smtp-Source: AGHT+IHeCTtwq1iNXSF1fUZIaS/4CGI5trwsdX8zzJ/YF5He2ktcc89iauHD10dC77CQia9erjfZIA==
X-Received: by 2002:a05:600c:46cc:b0:439:31e0:d9a2 with SMTP id 5b1f17b1804b1-43960169738mr60413745e9.3.1739482364316;
        Thu, 13 Feb 2025 13:32:44 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1aa7d2sm59583405e9.25.2025.02.13.13.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 13:32:43 -0800 (PST)
Date: Thu, 13 Feb 2025 21:32:41 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Pavel Machek <pavel@ucw.cz>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: mfd: Document TI LM3533 MFD
Message-ID: <Z65k-fi78DnKVN1K@aspen.lan>
References: <20250212075845.11338-1-clamor95@gmail.com>
 <20250212075845.11338-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212075845.11338-2-clamor95@gmail.com>

On Wed, Feb 12, 2025 at 09:58:41AM +0200, Svyatoslav Ryhel wrote:
> Add bindings for the LM3533 - a complete power source for
> backlight, keypad, and indicator LEDs in smartphone handsets.
> The high-voltage inductive boost converter provides the
> power for two series LED strings display backlight and keypad
> functions.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../devicetree/bindings/mfd/ti,lm3533.yaml    | 221 ++++++++++++++++++
>  include/dt-bindings/mfd/lm3533.h              |  19 ++
>  2 files changed, 240 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,lm3533.yaml
>  create mode 100644 include/dt-bindings/mfd/lm3533.h
>
> diff --git a/Documentation/devicetree/bindings/mfd/ti,lm3533.yaml b/Documentation/devicetree/bindings/mfd/ti,lm3533.yaml
> new file mode 100644
> index 000000000000..d0307e5894f8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,lm3533.yaml
> @@ -0,0 +1,221 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ti,lm3533.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI LM3533 Complete Lighting Power Solution
> +
> +description: |
> +  The LM3533 is a complete power source for backlight,
> +  keypad, and indicator LEDs in smartphone handsets. The
> +  high-voltage inductive boost converter provides the
> +  power for two series LED strings display backlight and
> +  keypad functions.
> +  https://www.ti.com/product/LM3533
> +
> +maintainers:
> +  - Johan Hovold <jhovold@gmail.com>

This looks like it has been copied from the lm3533 driver. Did Johan
agree to this?


Daniel.

