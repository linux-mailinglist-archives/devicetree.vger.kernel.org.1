Return-Path: <devicetree+bounces-111854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B839A0272
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:24:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C67D91C26202
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F32871B3923;
	Wed, 16 Oct 2024 07:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI5j12QZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00A9165EF8
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729063489; cv=none; b=rD0bJ0QA58W+GIpi1y66WVAsh1p8lPBGw0r9vvqxlmbt5RbZ4Qs2ZoTGDScrANen4cIPdoeSN6MJc5tusUCuRauIb1bEGaJGRe6nCfVQlT13nIIPSj9kK9dwJ+N7NoT6Q/ZpK4PUeVrkesaMVtaaGcShXaW3uS2ICdqFsEXbyW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729063489; c=relaxed/simple;
	bh=Iyb1TkAUPKJ81Bq0LZz//YKK4SVfac9T1Vhy7dS8gVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gwpa03BNnydSY4m7LW4RZb290QxVEaNRNx28W/NMKRbh7c4Wczm1mXyOXQvE5ujhFpzTL2+m6kHTMGo6jKFBbEDLOOxFgwJaCQCbTEwOwJytJ/6MV/CjHCXljC+UP3SEwxn0YfBp9sNxfZILeGrvlWHYJ11ilqJvhoLFRB7MpJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI5j12QZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AB70C4CEC5;
	Wed, 16 Oct 2024 07:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729063489;
	bh=Iyb1TkAUPKJ81Bq0LZz//YKK4SVfac9T1Vhy7dS8gVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RI5j12QZd05MQnfg8ic+YYlNi1YyUEXX86ZRasgMAvQyRGObuwFmRBjvxw9zRlBhp
	 Eke2xlma7teqSUkC4CGNLQsnGFeHb9X/zUfVxtPbplGvpvz3lHKabeLN7rqgBdbp94
	 Yz0uLcnHMf1gU4O41EkZhOcyuruJV401kLl1mdYwY6vZFfNerN9SHTwgVeR6WdLx3O
	 JTOzXArZSY0SdCpLXGjJUZS6yLE0UQey0W8MfNTPZ9iYGqX/fOUl1eEG+3AMXz5/7i
	 6nUjXg2ZQkTqk5JhbpI2gv987FHHmi23inwiTD9bPc66MmSpXT32F0h5HeJhn8HyUs
	 4EOimLrMUwGYw==
Date: Wed, 16 Oct 2024 09:24:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Tim Harvey <tharvey@gateworks.com>, kernel@dh-electronics.com
Subject: Re: [PATCH] dt-bindings: regulator: lltc,ltc3676: convert to YAML
Message-ID: <oif3padobl4laflhuqyw3hdqnf4rdwlzh2twllieoelyxcgtdk@fulczljt7hwq>
References: <20241015224343.94302-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241015224343.94302-1-marex@denx.de>

On Wed, Oct 16, 2024 at 12:42:51AM +0200, Marek Vasut wrote:
> Convert Linear Technology LTC3676 8-output I2C voltage regulator IC
> DT bindings to YAML DT. Add missing interrupts: property as this IC
> does have interrupt line and it is used in existing DTs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Tim Harvey <tharvey@gateworks.com>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> ---
>  .../bindings/regulator/lltc,ltc3676.yaml      | 171 ++++++++++++++++++
>  .../devicetree/bindings/regulator/ltc3676.txt |  94 ----------
>  2 files changed, 171 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/ltc3676.txt
> 
> diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
> new file mode 100644
> index 0000000000000..ec9ce856a944d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Linear Technology LTC3676 8-output regulators
> +
> +maintainers:
> +  - Tim Harvey <tharvey@gateworks.com>
> +
> +description: |
> +  LTC3676 contains eight regulators, 4 switching SW1..SW4 and four LDO1..4 .
> +
> +properties:
> +  compatible:
> +    const: lltc,ltc3676
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object

Move the additionalProperties:false here.

> +    description: |
> +      List of regulators provided by this controller, must be named
> +      after their hardware counterparts (SW|LDO)[1-4].
> +
> +    patternProperties:
> +      "^(sw[1-4]|ldo[24])$":
> +        type: object
> +        $ref: regulator.yaml#

Move the unevaluatedProperties here, ditto in other places.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


