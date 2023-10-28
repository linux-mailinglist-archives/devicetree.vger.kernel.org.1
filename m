Return-Path: <devicetree+bounces-12613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 633367DA7C5
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 17:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2F57B20EDC
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 15:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088FE156F4;
	Sat, 28 Oct 2023 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO+Y4f5T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88BCC129
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 15:23:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 815ACC433C8;
	Sat, 28 Oct 2023 15:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698506632;
	bh=DfA14lJV5fCHDlTRV9h2PoOcI7/ngGn2Ntb0yXI7Urk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CO+Y4f5T7gTsX618YlDV3vWfgHW3+gp8LfOaz19r5Ua6TD3X7XyhXe/dDZNfOpzZI
	 dhHYHS3kIpeU0aXZIZxsKB7A4dEPN0gMQelz1Two+6C8Y1PdtymcHj+PeDucTrB1Cs
	 zxqs9uEx4WsOD9ACCTQDD1lYML1IXmS9u37r1kSBlrAuTJB+ZQoXbJnSZ83tqfN8Pm
	 H8qpc7dVg7pKT6Gq/t3L2IcdX+QuKHciJZDmxXzU6Su/6aNLipFCtfJ0DmSg0BLsia
	 VOmAZ8lh1H5cdXUHwjxNRFLNQZVTc/uJbo66lmZ2VOZz+eiUl5iRP+Ct6jgh0x29KZ
	 fq5QHS4jqfZ6A==
Date: Sat, 28 Oct 2023 16:23:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ramona Gradinariu <ramona.gradinariu@analog.com>
Cc: <nuno.sa@analog.com>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 0/3] iio: imu: adis: Use spi cs inactive delay
Message-ID: <20231028162313.5babf107@jic23-huawei>
In-Reply-To: <20231027140358.328699-1-ramona.gradinariu@analog.com>
References: <20231027140358.328699-1-ramona.gradinariu@analog.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 27 Oct 2023 17:03:55 +0300
Ramona Gradinariu <ramona.gradinariu@analog.com> wrote:

> A delay is needed each time the chip selected becomes inactive,
> even after burst data readings are performed.
> Currently, there is no delay added after a burst reading
> and in case a new SPI transfer is performed before
> the needed delay, the adis device becomes unresponsive until
> reset.
> 
> This commit is adding the needed delay directly to the spi driver,
> using the cs_inactive parameter, in case it is not set and is
> removing the additional chip select change delay present in adis
> APIs to remove the double delay.

Series applied.

I'm a bit confused though as this one is turning up in patchwork.
Meh, maybe a delay and it will show up soon.

Jonathan

> 
> Ramona Gradinariu (3):
>   iio: imu: adis: Use spi cs inactive delay
>   dt-bindings: adis16475: Add 'spi-cs-inactive-delay-ns' property
>   dt-bindings: adis16460: Add 'spi-cs-inactive-delay-ns' property
> 
>  .../bindings/iio/imu/adi,adis16460.yaml        |  4 ++++
>  .../bindings/iio/imu/adi,adis16475.yaml        |  4 ++++
>  drivers/iio/imu/adis.c                         | 18 ++++++------------
>  3 files changed, 14 insertions(+), 12 deletions(-)
> 
> --
> 2.34.1
> 


