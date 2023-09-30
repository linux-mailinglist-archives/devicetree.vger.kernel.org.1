Return-Path: <devicetree+bounces-4880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD877B424E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 18:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9ED04283164
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F43C2CA;
	Sat, 30 Sep 2023 16:46:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AC7AD43
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 16:46:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05BC1C433C8;
	Sat, 30 Sep 2023 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696092386;
	bh=+l7w1us2k4b4fXC2GPQ+SDUJDkw/7AzjXhg4En0HmSc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jEBB5dF6oBg1pw0t9b+SY8o2St/7j9GQI193IbUhLtVS4Mtwqb5Ov1rxCwkGHf3ha
	 vKqbd1gyfLxKFZy9M6Ldoefw9zTlJ8ZwNNe3ggbDgLov9HZ1HRDkU/io/R73s1hx7W
	 7eNnaGsBDtFvTzO2474mBNeJ6Pv4+dFvKaPygBaTWj/Ums35EUYWSfBiNQiJLVK55c
	 RsWVRuh782Gb6HlZSc6V8uuDaakr2Y4i53wvEGpZjHcXXIjJiq88nd5y9/cy3rfpwc
	 Z08M2GsesLIPYhgagao/eTV8HAqiUxD2fxa5D+Br4KCB+I+kyPkIo+NQpmG+7+ysmk
	 h1AzHq02iZyFA==
Date: Sat, 30 Sep 2023 17:46:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Marcelo Schmitt
 <marcelo.schmitt1@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: adi,ad7292: Fix
 additionalProperties on channel nodes
Message-ID: <20230930174626.2346dd36@jic23-huawei>
In-Reply-To: <20230926164357.100325-1-robh@kernel.org>
References: <20230926164357.100325-1-robh@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 26 Sep 2023 11:43:50 -0500
Rob Herring <robh@kernel.org> wrote:

> "additionalProperties: true" is only for incomplete schemas such as bus
> child nodes in a bus's schema. That doesn't apply to the "channel" nodes
> in the adi,ad7292 binding, so fix additionalProperties to be false.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
Oops.

Applied to the fixes-togreg branch of iio.git

Thanks,

Jonathan

> ---
>  Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
> index 7cc4ddc4e9b7..2aa1f4b063eb 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
> @@ -61,7 +61,7 @@ patternProperties:
>      required:
>        - reg
>  
> -    additionalProperties: true
> +    additionalProperties: false
>  
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#


