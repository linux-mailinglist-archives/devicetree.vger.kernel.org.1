Return-Path: <devicetree+bounces-6244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6097BA653
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1E1B11C2098E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B334428E16;
	Thu,  5 Oct 2023 16:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpJ3bSN/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F64358B5
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:33:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AD29C433C8;
	Thu,  5 Oct 2023 16:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696523616;
	bh=92i/dDQFaWw8S5/sMockWYxE/2EZSoQ+HpHXSad9lQM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XpJ3bSN/h3vFh1AubrRy39koqaT6CCX4DLnx4BQspvt0sLQ0P5hQ5oiPEQNmFveos
	 od7VhHc4VBsAXy7XI2Jjk+1BWPhE6OvqoTv8lY5lr3J2y/eVJn/uc2Gi0uZTse6MQ+
	 jlTlCcZhMNy4xdxekOQZDLnw/pWLiOoJGNyir/nAQKls5bPLoRE/Z4YBXyZUYLV0sR
	 IokyO/mgJd+Kx+5IBB3je0OJOePGyhn8F59n2ju74pyQZnSNnILX2V+jswf6bnemTe
	 zpLbkHj7ymEJbOlNUv4kHiSSC7aAsiy71YwxEytQCzUi77rNmkIXLW/50H6Ds6DRI4
	 TTlukLXri838A==
Date: Thu, 5 Oct 2023 17:33:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH 0/2] mxc4005/mxc6655 OF improvements
Message-ID: <20231005173340.70c05991@jic23-huawei>
In-Reply-To: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
References: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 04 Oct 2023 18:39:26 +0200
Luca Ceresoli <luca.ceresoli@bootlin.com> wrote:

> This small series fixes the compatible string of MXC4005 in the bindings
> and adds support for OF-based autoloading of the mxc4005 driver.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
> Luca Ceresoli (2):
>       dt-bindings: trivial-devices: Fix MEMSIC MXC4005 compatible string
>       iio: accel: mxc4005: allow module autoloading via OF compatible
> 
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 +-
>  drivers/iio/accel/mxc4005.c                            | 8 ++++++++
>  2 files changed, 9 insertions(+), 1 deletion(-)
> ---
> base-commit: 8a749fd1a8720d4619c91c8b6e7528c0a355c0aa
> change-id: 20231004-mxc4005-device-tree-support-40ae517a42e9
> 
> Best regards,

Series applied to the togreg branch of iio.git and pushed out as testing
so 0-day can see if it can find anything we missed.

Thanks,

Jonathan

