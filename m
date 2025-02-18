Return-Path: <devicetree+bounces-147765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D9FA3956A
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03CD218836F0
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 08:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF5E22B5B9;
	Tue, 18 Feb 2025 08:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYvWgY7c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F5E22B5A4;
	Tue, 18 Feb 2025 08:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739867406; cv=none; b=KfUqZv1QPR1HTvREK/KDNSAA6iQIPOgdfy1GC1BotPYR6gfeI3gwpB9e0cjWzEtZNKtCET6GuFnuUAppF+mqaI3EqXxhenEg96wevXLLzmziw2A4mWyGr9l52woBYyB9UK6T1lEN6SkGDQpzlySPz9QiIxNHpfXatPeKfoABblA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739867406; c=relaxed/simple;
	bh=RJzuFaLWPOeQw2qL9MsXD0LyNRhkVMROTAKrQrtwjPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b0IrCSypWBGSptrQsJNaJfj0OAhc/95qBEzjpj7ysMvxsRfrSdZeKOUxOVdI8brDYtM3othbbxDkpLcZQt7UHaoSoTC6Shadoo3BX5G3lDWhqtekKx+0mPRudHUS2+RYh9bQAhLLh1lxBI4pEnzT9cKXt/c5scYvSUQDgw1LCW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYvWgY7c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24172C4CEE2;
	Tue, 18 Feb 2025 08:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739867405;
	bh=RJzuFaLWPOeQw2qL9MsXD0LyNRhkVMROTAKrQrtwjPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FYvWgY7cR1jjhqGVrvPJPYiflGXgdBYUr/Ys8Yg2BiiP/5zVTBa09mBwE1BHDIJHO
	 7irbvR0iVpzIFlkvdrnk9E25pn7tPQHE6Bh6DhRkgngrJbhX4l9mBXI3iKg7J5ymNx
	 tqeSKdzV+VxoXaPsqoM4WCmuJhkg7OCGmVNz9gsK2+jQlddFoLmtxj26+zzVGPxK6d
	 P9gadQvj7aOFNeisylwtfCX/nsfWZ6R37+wAC1RJ++5wlXT1n6y8dVClS45JicUPDh
	 AU1on5lt/fBN48MnzpJbh+TgPhy3BQynkSWF2ePLkekEtScXA8FpdnanuS9UNiL6T9
	 6/4dDPwX4yHWw==
Date: Tue, 18 Feb 2025 09:30:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Matthew Majewski <mattwmajewski@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	"Dr. David Alan Gilbert" <linux@treblig.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>, Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, 
	devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] media: dt-bindings: Add dt bindings for
 m2m-deinterlace device
Message-ID: <20250218-eggplant-skylark-of-swiftness-dcf6ba@krzk-bin>
References: <20250214231759.119481-1-mattwmajewski@gmail.com>
 <20250214231759.119481-2-mattwmajewski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250214231759.119481-2-mattwmajewski@gmail.com>

On Fri, Feb 14, 2025 at 06:17:58PM -0500, Matthew Majewski wrote:
> Create a new yaml schema file to describe the device tree bindings for
> generic m2m-deinterlace device.
> 
> This device is supported on any hardware that provides a MEM_TO_MEM

Which device? I don't see here any device name/model.

I asked to provide here some examples of devices.

> capable dma channel with interleaved trasfer support. Device tree
> bindings are for providing appropriate dma channel to device.

Don't describe what DT is, but the hardware.

> 
> Signed-off-by: Matthew Majewski <mattwmajewski@gmail.com>
> ---
>  .../bindings/media/m2m-deinterlace.yaml       | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/m2m-deinterlace.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/m2m-deinterlace.yaml b/Documentation/devicetree/bindings/media/m2m-deinterlace.yaml
> new file mode 100644
> index 000000000000..e39599d7d07b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/m2m-deinterlace.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/m2m-deinterlace.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M2M Deinterlacer
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab@kernel.org>
> +
> +description: |-
> +  A generic memory2memory device for deinterlacing video using dmaengine. It can
> +  convert between interlaced buffer formats and can convert interlaced to
> +  progressive using a simple line-doubling algorithm. This device can be used on
> +  any hardware that provides a MEM_TO_MEM capable dma controller that supports
> +  interleaved transfers.

And how do you program that device to deinterlace? How do you signal end
of frame/data when writing to the memory?

It still looks all this is for driver :/

Best regards,
Krzysztof


