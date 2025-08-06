Return-Path: <devicetree+bounces-202319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64897B1CEFF
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 00:07:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9009B171E50
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 22:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CDF1230BFD;
	Wed,  6 Aug 2025 22:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLXrorsU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD63820A5EC
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754518057; cv=none; b=lKQ6b5MqG0Ie3YF0onYnJWY/6+/U7EB/x/3rFJZyoASBRMld8LMKp4erHl+14Tv6Kg8EScameuyu3ATQupMQQFUNLGSP5apX/0tKZde5Pd05plQo0OqpkUCaUsFBPoF+oXfiayZySI1TffAVSYsT7MQo98h2QKxDEdzMpUShHGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754518057; c=relaxed/simple;
	bh=YqPG0QxXPo+6OmTx4iQfLkX9tF9vhfC4FJR2x4SFd00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KDpl0DMNJp9vV3BCvut9ebbWiEnrvZWNGU3TL8IQWkm8sMP8aGvi9FY4Bt+lgCQUstPtA6FsZ9uacZJlQnTFZ6ZB3CBu3AbP0Sh1A8VGXEmdMP+dOzPmpMpS52VWTLpJjIbH9D3YOmxiCuERz5jZO3ZNaVrDVdmfEY6zzLh2OtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLXrorsU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99AE7C4CEE7;
	Wed,  6 Aug 2025 22:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754518057;
	bh=YqPG0QxXPo+6OmTx4iQfLkX9tF9vhfC4FJR2x4SFd00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FLXrorsUM/3HSBQJstMyrR5dWeK61mJA/gb8apoU9151r4rfBOx+SOu9koS/yGBcE
	 lwETwLzO6g3kxDmWXSs5+BVkzchLO00B2B2U0HWk2RBnjfS7kcbAL70DD6igi/5bVH
	 9PRHOP4GLjliRPoYPK5jMLL0PcMK/Dy9CmI7Jmqfbvqw/k1GRTLrfHtRDJY9woWunU
	 6eLZFdRcT6zTQ4fSCyBcehrwOPNPfiGjWf87cn8iZq/HvJQAe8bLaG0VOZvGDFJ29L
	 N+4ogElwlAWHG7YDU73MZ9C/6EQs+OJGYFrzzSyE13N8j2dhyDTFfxNDSEJXhUU1LA
	 cNan2h3/2t6cw==
Date: Wed, 6 Aug 2025 17:07:36 -0500
From: Rob Herring <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
	andrew@codeconstruct.com.au, conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: iio: Add Infineon DPS310 sensor
 documentation
Message-ID: <20250806220736.GA1741133-robh@kernel.org>
References: <20250806184711.1882725-1-eajames@linux.ibm.com>
 <20250806184711.1882725-3-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806184711.1882725-3-eajames@linux.ibm.com>

On Wed, Aug 06, 2025 at 01:47:09PM -0500, Eddie James wrote:
> The DPS310 is a barometric pressure and temperature sensor with
> an I2C interface. Remove it from trivial-devices.yaml and add it's

its

> own documentation.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../iio/pressure/infineon,dps310.yaml         | 44 +++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |  2 -
>  MAINTAINERS                                   |  1 +
>  3 files changed, 45 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml b/Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
> new file mode 100644
> index 000000000000..3c2d807e4939
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/pressure/infineon,dps310.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Infineon DPS310 barometric pressure and temperature sensor
> +
> +maintainers:
> +  - Eddie James <eajames@linux.ibm.com>
> +
> +description: |

Don't need '|' here.

With those fixed,

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

> +  The DPS310 is a barometric pressure and temperature sensor with an I2C
> +  interface.

