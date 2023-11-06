Return-Path: <devicetree+bounces-14079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE36B7E1FA1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57220B23374
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E0318AE4;
	Mon,  6 Nov 2023 11:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAiBlpRe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FFC1862D
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A99BDC433C7;
	Mon,  6 Nov 2023 11:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699269010;
	bh=Bw6MnMTTrDr7uSxkR5WanV+zHgmO66ylaD0/WXM95VQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dAiBlpReuCecGSGvVCXXIv3WzDStlrN6NBjeVSBpjKCsZhXBczwrwqFYQ3v4NCDFQ
	 velTv7qtQ2gjJfdY3nxVMVjZTBuBjG1AB88+jHq/qTvALkmSYZuD89arf0i3zhXbRG
	 ll3eBoJFf9EOneOswnTb+s2RrINRnd5G7c9pais1+/FRhMEbGv42oG2e4kWh0U0807
	 EuyZK/sAFLGBlAGbx3dxeimO4sx9/b92cEzfXrRDeUk5r0lOdkdExa2DEKOKXLcf2o
	 ASoCJt2e8faoGt1kz0UjVRybQPaYdWpv7zXi8FqQNl6/qkxT3ExaC4w8iau0wmWnc8
	 lG9G2otmx5MIQ==
Date: Mon, 6 Nov 2023 11:10:05 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Ana-Maria Cusco <anamaria.cuscoo@gmail.com>
Cc: Ana-Maria Cusco <ana-maria.cusco@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add ADRF5740 driver
Message-ID: <20231106111005.6fd278fd@jic23-huawei>
In-Reply-To: <20231103150130.1090246-1-anamaria.cuscoo@gmail.com>
References: <20231103150130.1090246-1-anamaria.cuscoo@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri,  3 Nov 2023 17:01:28 +0200
Ana-Maria Cusco <anamaria.cuscoo@gmail.com> wrote:

> From: Ana-Maria Cusco <ana-maria.cusco@analog.com>
Hi Ana-Maria,

If you do a v2, then make it clear in the title that this is adding support
to an additional driver rather than a whole new one.


> 
> This patch series adds support for ADRF5740 Attenuator.
> 
> The ADRF5740 is a silicon, 4-bit digital attenuator with 22 dB
> attenuation control range in 2 dB steps.
> It offers parallel control mode through four digitally controlled inputs.
> 
> Ana-Maria Cusco (2):
>   iio: amplifiers: adrf5740: Add Support ADRF5740 4-bit Attenuator
>   dt-bindings: iio: hmc425a: add entry for ADRF5740
> 
>  .../bindings/iio/amplifiers/adi,hmc425a.yaml  |  4 ++++
>  drivers/iio/amplifiers/hmc425a.c              | 23 +++++++++++++++++++
>  2 files changed, 27 insertions(+)
> 



