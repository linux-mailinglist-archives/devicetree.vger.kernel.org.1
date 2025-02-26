Return-Path: <devicetree+bounces-151517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B7CA46145
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:49:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 833D73AEA40
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 13:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0E62206AC;
	Wed, 26 Feb 2025 13:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb/lfgXn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D260822068D;
	Wed, 26 Feb 2025 13:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740577764; cv=none; b=cZy7tZaciHqkU7VR2gs4xTMSyqx8QFzvIxiWexiO9Sa6UMlEPmOsJ02rPkE2YAo8GUxq+LIuqszQ5MfBuc0/L6d19sf+80jNwPnaSJThy7eWSbpSZD6qjyseREQPlm8CTjLFny3VbTjB3nKBY5Cd0gpaKbmKMZlBtnJQmLgcxM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740577764; c=relaxed/simple;
	bh=iwnFlQXPzvqt3KqH1XYum3mc1ibw9gsyhtEmVkpvA08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rc0bVRYV8DtXSygvR6TGxM/kfthfjMsKjWsGlprotWFmdKToSC1Kz1O1Au+ZepQMYKCE2rmWwCRynXO9Q1YSUyVJr/2RGy+RnjzeUYFCAEdVU6kxbZVX+VJj/9SWKTo4LVkVK7jEPVtv7rUFNGiB1q2Ek7kLXoksPhYAZPVmABo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb/lfgXn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26474C4CEE9;
	Wed, 26 Feb 2025 13:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740577764;
	bh=iwnFlQXPzvqt3KqH1XYum3mc1ibw9gsyhtEmVkpvA08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kb/lfgXnYYUetr0GVJXTWLcTqDiXl4RfEROoykWblUoSs+jYmaSGWoIzkSRC+7tae
	 +c9ZeApRiPUgvFvRMT32wVAIvR/OQkdKk99CTh3RotB7bKEp5KAFu3XhK+5UtX1+pL
	 yIgKXFZffMeQdMcUiAgcXSe2Hd9kG9ZbIsJa64ZRsJ3bqgoEW2nvJotcoep9h8eTbc
	 kIs2RJ5Xv7rmBkHviD8U1VJq6WIF53IBb8WzaAl0VAsRv4FnRDY6Z5a4Ju9g7nvIcp
	 X4sSFMTS70v8FdtOs7WHKRyVOezUw3Mw8mRL+dVPhj6MK6s9NxzT5dAC2fJBSBx8Lp
	 ufVvMyALa5ouw==
Date: Wed, 26 Feb 2025 07:49:22 -0600
From: Rob Herring <robh@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: amc6821: add PWM polarity
Message-ID: <20250226134922.GA1944823-robh@kernel.org>
References: <20250224180801.128685-1-francesco@dolcini.it>
 <20250224180801.128685-2-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224180801.128685-2-francesco@dolcini.it>

On Mon, Feb 24, 2025 at 07:08:00PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add property to describe the PWM-Out pin polarity.

Why doesn't the invert support in the pwm binding work for you? Yes, I 
read the discussion, but don't remember the conclusion and you need to 
justify it here.

> 
> Link: https://www.ti.com/lit/gpn/amc6821
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
> v2: no changes
> v1: https://lore.kernel.org/all/20250218165633.106867-2-francesco@dolcini.it/
> ---
>  Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml b/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml
> index 5d33f1a23d03..11604aa41b3e 100644
> --- a/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml
> @@ -28,6 +28,14 @@ properties:
>    i2c-mux:
>      type: object
>  
> +  ti,pwm-inverted:
> +    type: boolean
> +    description:
> +      Set to make the PWM-Out pin go high (with an external pull-up resistor)
> +      for 100% duty cycle (suitable for driving the fan using a NMOS device),
> +      when not set the PWM-Out pin goes low for 100% duty cycle (suitable for
> +      driving the fan using a PMOS device).
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.39.5
> 

