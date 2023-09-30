Return-Path: <devicetree+bounces-4902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C0F7B42C4
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9DFB91C2093E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A85182C2;
	Sat, 30 Sep 2023 17:33:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146A21775B
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68BC6C433C7;
	Sat, 30 Sep 2023 17:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696095186;
	bh=wfe2jZDfRl3xOtOaf/KeGCUyo4RmUvmbixP/hqEpGHk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HBvyHVEQ6nHs0YSsMfCuYnDqp1A4CSmRIYN/HudBTZbbfIDR515k4pNotLi2gnFxl
	 4vGrhn9paUQ6qjAU/OxRHl3TrtV60MAeg3a+8hqfIJ5VaNqQLiNuk1VrZZIbQiqgso
	 X4Gy/trGhiKySx02sdfU4jWpwJ86pJjaAK82DPyvImWvz/ZikuBhTRXEOJaC0ow1ow
	 Z6fdUJjX7sMItjxdeyn2VVRZfvoZRonkwRwrSkiJQ+rKQfH/TrIplxsRjU3WvkxCtX
	 AXHAoSHnwFvaqJT2DUWbb9s8BR7bAS8KN79wTnlqOm+Fd+U1UYZbxUGI3A7e0LkXuD
	 5zUfWztelAkVA==
Date: Sat, 30 Sep 2023 18:33:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Mehdi Djait <mehdi.djait.k@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Support ROHM KX132ACR-LBZ Accelerometer
Message-ID: <20230930183305.51622a49@jic23-huawei>
In-Reply-To: <cover.1695879676.git.mazziesaccount@gmail.com>
References: <cover.1695879676.git.mazziesaccount@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 28 Sep 2023 11:45:00 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> The ROHM KX132ACR-LBZ is an accelerometer for industrial applications.
> It has a subset of KX022A (NOTE: Not KX132-1211) functionalities, dropping
> support for tap, free fall and tilt detection engines. Also, the register
> interface is an exact subset of what is found on KX022A (except the
> WHO_AM_I register value).
> 
> This series adds own DT compatible for the KX132ACR-LBZ and also own
> chip-info in driver to allow handling the different 'WHO_AM_I' value.
> The separation of the Kionix KX022A and ROHM KX132ACR-LBZ does also
> allow adding support for the KX022A tilt/free fall/tap engines which are
> not present on KX132ACR-LBZ.
> 
> Revision history:
> v1 => v2:
>  - Add KX132ACR-LBZ into list of the supported ICs in Kconfig
Series applied to the togreg branch of iio.git and pushed out as testing.

Thanks,
Jonathan

> 
> Matti Vaittinen (2):
>   dt-bindings: iio: Add KX132ACR-LBZ accelerometer
>   iio: kx022a: Support ROHM KX132ACR-LBZ
> 
>  .../bindings/iio/accel/kionix,kx022a.yaml     | 10 +++---
>  drivers/iio/accel/Kconfig                     |  4 +--
>  drivers/iio/accel/kionix-kx022a-i2c.c         |  4 ++-
>  drivers/iio/accel/kionix-kx022a-spi.c         |  4 ++-
>  drivers/iio/accel/kionix-kx022a.c             | 34 ++++++++++++++++++-
>  drivers/iio/accel/kionix-kx022a.h             |  2 ++
>  6 files changed, 49 insertions(+), 9 deletions(-)
> 
> 
> base-commit: 5e99f692d4e32e3250ab18d511894ca797407aec


