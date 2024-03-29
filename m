Return-Path: <devicetree+bounces-54686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 690D0892387
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 19:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2386C2882A7
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 18:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC683B293;
	Fri, 29 Mar 2024 18:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sVKf/BcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503841C0DC0
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 18:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711738002; cv=none; b=k6oBp4AagFJzpTj+zlbnkzgp70SIqTF1v7n5Ds8D96bP8y7ckROIfjTVCt4QxWwb3nKDnKvrCyIXaU6qR9Whd1NMhs3ArQ15FUcHye0dXQe8/ANOhrK8wLWhKxwE3VoP3YWity5A5cZ10B1Q1cHGjHPRVerx0H+pm0GS4ye+X5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711738002; c=relaxed/simple;
	bh=fLdwg5/kYGnqYoTOPcCQrikYSENgl4VEwWpSLB0myKM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RnfmRFItRJByQviwlxzOjSo29vYyma1PPGmf50Pdtl0R8IbuiUWSVn36hy9+pxSfCdxY46cUQr1oA4U+Aw0zObVLb+WttDMPvSudzvE/15Qg4jGv1jKza53aFs/rPljanP0trS2QxpqpxU1GYU9+YQJNDsjHLTBl/gGCtaBw4Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sVKf/BcA; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d476d7972aso32420651fa.1
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 11:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711737997; x=1712342797; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6RQUrxE1f9enhKzqzUdkBOu6yfB2EQLb8/3NiRW95js=;
        b=sVKf/BcAOzO6e0SzwvY98QYNSx3hJJfE+RQSTBSJ0bgLpQioFcfqqAHm8GKkh0Fgy7
         tkvZhHFMG/IwT5BY4mHhPwrChtVH0C43WX0vdBxffBd57wh8j8d+UOMhMUykfxJ0rrLG
         hfFe2y1yAh/yBRXDl1BcFsE9dbVd9AzXTuz50OgA8sAg5SNIUfxwbXPELkQDcASpDLtB
         1CR7L5Tlz1HClIPTvnZgOv1UQGpUmZqPAY1e0bC4U755WlhiW/0KzidvXPpU2yC+ix4L
         NQo9FtaY+P1aXwvl27QM+nVQZqrgIiEB0A9Qyyjpb6tcIGrSLqI5vuy88C/CL1H1Eq3J
         sjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711737997; x=1712342797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6RQUrxE1f9enhKzqzUdkBOu6yfB2EQLb8/3NiRW95js=;
        b=Fk8TNopReIHdBCxqTx6C1As94AHnUpAwA1LP9WRTC67GN8uGZ9TPs41Uus2+NyTdyO
         y4Z8Zhqryjld9Rr0qf7gaDVVPkjPkvfyE5AVJSimoWQoIdpNWIjKdXFepZL/lWUjp9Yr
         6eAcVUW45Dx/y2Z7xIaJnX9vkFomZOeN2OMuOOIicsZOs7Jjj1Q/X0MnWcgXd+46B8tk
         iB9GgxbNOEyM0RNHaFJb1pH7AdE4HA0Hzw1RZvk1e8XBzrvAd2VJ45AHvTQQsWIuK6FE
         sYcgqsP/Ssx6wKri1IuHmz0bnfd0jNOndoS6n2svfmw7s7IY52UbZDSIEzAjikIW+mKa
         8vTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDM70tyapPCQ4iQaiKZe2g9pv9FVME+3ax02IQdiuVJIwqbPEh0KesHi6b0anmOzpFGjIRJA91N+wLo2zExqz+py/QXMC8obzPxw==
X-Gm-Message-State: AOJu0YyrBHbbWx/ZS4dAQmBQT5vu0WXqWLWlzzXkvUs7xALFgDEaUuAT
	fJzzY4VIiRe1HNqW7RdSf9nM/EjrUt+kYeJDTfMS2Hh9Tzppk0vdYF2uYbGQy8GZRHEc3ZzhwC1
	1gPfiuP8mfGW6+/zEn2NYpT6cnSuKsyo+YBwkLg==
X-Google-Smtp-Source: AGHT+IGEY/kTYMuiwO+szp5RwzPpBzYSADfPNKomLO0lBh/Bnj3/ySiOLnflqYNWH/8V9ipR0jtcKh7g9YNWrtsDlhQ=
X-Received: by 2002:a05:651c:221f:b0:2d6:ee88:6d02 with SMTP id
 y31-20020a05651c221f00b002d6ee886d02mr2357259ljq.11.1711737997149; Fri, 29
 Mar 2024 11:46:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328-iio-backend-axi-dac-v1-0-afc808b3fde3@analog.com> <20240328-iio-backend-axi-dac-v1-6-afc808b3fde3@analog.com>
In-Reply-To: <20240328-iio-backend-axi-dac-v1-6-afc808b3fde3@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 29 Mar 2024 13:46:26 -0500
Message-ID: <CAMknhBHKcy9KO=8vuAvF0twY4x14sFq3FLW4ygORMn2G5k7WSg@mail.gmail.com>
Subject: Re: [PATCH 06/10] dt-bindings: iio: dac: add bindings doc for AXI DAC driver
To: nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Dragos Bogdan <dragos.bogdan@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 28, 2024 at 8:22=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>
> This adds the bindings documentation for the AXI DAC driver.
>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 62 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 69 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b=
/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> new file mode 100644
> index 000000000000..1018fd274f04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/dac/adi,axi-dac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AXI DAC IP core
> +
> +maintainers:
> +  - Nuno Sa <nuno.sa@analog.com>
> +
> +description: |
> +  Analog Devices Generic AXI DAC IP core for interfacing a DAC device
> +  with a high speed serial (JESD204B/C) or source synchronous parallel
> +  interface (LVDS/CMOS).
> +  Usually, some other interface type (i.e SPI) is used as a control
> +  interface for the actual DAC, while this IP core will interface
> +  to the data-lines of the DAC and handle the streaming of data into
> +  memory via DMA.

Isn't it the other way around for DAC, from memory to hardware?

