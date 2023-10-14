Return-Path: <devicetree+bounces-8641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBAB7C9547
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 18:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B959DB20B87
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 16:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DD513AF9;
	Sat, 14 Oct 2023 16:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENAysTNx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5A313AD5
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 16:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E75CC433C9;
	Sat, 14 Oct 2023 16:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697300043;
	bh=T+Ckd8zWYYhSedCQa0VE1OhK/ZgzZAoqKinofheowtY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ENAysTNx0uQ5O3vtXV418DXtYa/4RTkPcISF2LNwi7HyjghwFD2a1g8/cnubY4v+O
	 NJmorzLKS3C5udWAc6arcv+g1umwhVYKVb1Uu+8epkBhEI955NwqhZVcjwRzCatd3A
	 tL2DO3Of1ph0NsnmOMxIU+cYClH4NAaWhKLJVIxYwQF1loPB6yEXoEvYYxH2gFnfbP
	 aMn1CcE2MEK7uAfJbaSjNHFjFOF8Hy+wbpRvVaNSl9XuhWz8Jt/qcaRl6WYbb2HAZ4
	 eRe1poNd1+d7+OIytemw6WGiHTMlljlPIGefr2qFu1w9dlo56gdHV42vPrUBHLxVzV
	 mg8zbLzccuINg==
Date: Sat, 14 Oct 2023 17:14:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] iio: Add device tree support for silabs,si7005
Message-ID: <20231014171417.3a3448a1@jic23-huawei>
In-Reply-To: <20231012-topic-si7005_devicetree-v1-0-6c8a6fa7b3ec@gmail.com>
References: <20231012-topic-si7005_devicetree-v1-0-6c8a6fa7b3ec@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Oct 2023 22:07:06 +0200
Javier Carrasco <javier.carrasco.cruz@gmail.com> wrote:

> This series adds device tree support for the IIO humidity sensor si7005
> and extends the trivial-devices binding to document the addition.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
> ---
> Javier Carrasco (2):
>       iio: si7005: Add device tree support
>       dt-bindings: trivial-devices: add silabs,si7005
> 
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  drivers/iio/humidity/si7005.c                          | 7 +++++++
>  2 files changed, 9 insertions(+)
> ---
> base-commit: 401644852d0b2a278811de38081be23f74b5bb04
> change-id: 20231012-topic-si7005_devicetree-644b61b62178
> 
> Best regards,

Applied to the togreg branch of iiog.it and pushed out as testing for
0-day to take a look at it.

I'll note though that I would expect the fallback path for i2c bindings
to have worked here in which it matches the 'device' bit of the compatible
(ignoring the vendor) with entries in the i2c_device_id table.

I prefer explicit support like you have added here though as that
avoids clashes when different manufacturers use the same part number etc.

Thanks,

Jonathan

