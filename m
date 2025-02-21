Return-Path: <devicetree+bounces-149273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02537A3EF34
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:54:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 218151882EF5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D352F20103B;
	Fri, 21 Feb 2025 08:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jelLMFNa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF640200BB8
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740128007; cv=none; b=IJOXHlBDxQxzk7DANP37ll1QnCdODftHG2yWdHZVQcePoGGsvf+yo9uEgd5NoxXjufTt7eIiAIOvvV/ZO5vb+XJbgXrac+xOGricymuoB67YhOELqgR3NoVsaBK8Q67jLF0Xe9auQPAITFpkmhMLS9RGeCvPgwFKy6L50/Ca2ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740128007; c=relaxed/simple;
	bh=ufq+kuK2QPpM9XRYBH5cQn88jzhhfzY0KIE8Rzn3xX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sKJY0yyRZWl/UfJNbYqFrU1toC0R3EBlTobrRQQXzSk7EioGcjQ9zTELdkrGu9/GrGKKlvnJCq4SWfgpNw8WDQbTZ7WWEcaozpQdCDn/hRh+6EMQR1LPT1C7QnZdS4tmhIlCYMsJKHb5YRpD0I+GMPVkEiQ91x3cO/nWsg93dwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jelLMFNa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86E0C4CED6;
	Fri, 21 Feb 2025 08:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740128007;
	bh=ufq+kuK2QPpM9XRYBH5cQn88jzhhfzY0KIE8Rzn3xX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jelLMFNawHIat9A4axKk0DaD9fj0A5irPaULDIOlSnl86np4L7NbKsDViDughdkFe
	 /jUKKAkNBMjgppVRACdScUngAFrr8XAjJcpD5ib+2wWRJg1Zh+MfztwRJjMkniCUhc
	 MGhgX5Lt8xDdm49JVFojPYFtkk/jzsyMnTKpmCnGUTHl4XyODIyr0xzsM4NqhXZYTV
	 YKX52fKnqJz32QC8NovJbq5DU6Wpl/nvYjWMUMu9DU/bv8qF8Q8X44LkhRLn56tfty
	 blOEBSxtK42HLkFIjwULmDHm2wQ+FedVQ5ErwIw7AdcmPZMU9awAl4RCfvT3nXzEsS
	 3khLWcex6CdFg==
Date: Fri, 21 Feb 2025 09:53:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrew@codeconstruct.com.au, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: hwmon: ucd90320: Add additional
 compatible strings
Message-ID: <20250221-determined-prophetic-perch-a8cad4@krzk-bin>
References: <20250220205948.1777200-1-eajames@linux.ibm.com>
 <20250220205948.1777200-3-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250220205948.1777200-3-eajames@linux.ibm.com>

On Thu, Feb 20, 2025 at 02:59:47PM -0600, Eddie James wrote:
> The device driver for the UCD90XXX chips supports several more chips
> than just the 90320, so document them.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
> Changes since v1:
>  - Add all supported devices
> 
>  .../devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
> index e8feee38c76c8..3cfcbf6b58f2e 100644
> --- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
> @@ -23,7 +23,13 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - ti,ucd90000
> +      - ti,ucd90120
> +      - ti,ucd90124
> +      - ti,ucd90160
>        - ti,ucd90320
> +      - ti,ucd90910
> +      - ti,ucd9090

Last two have mismatched order. What's interesting, driver has it
correct.

With order fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


