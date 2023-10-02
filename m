Return-Path: <devicetree+bounces-5190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3567B58B2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2CCE7282B43
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACEE1DDFB;
	Mon,  2 Oct 2023 17:20:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9141DDE1
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8534FC433C8;
	Mon,  2 Oct 2023 17:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696267225;
	bh=Kv4fB7qSfaekw9eYfeovDld/AAw6t2uVKyOZDgT3d+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AeTPGaKjPcFv6C5Sc/XRNaMaDyjXQ35Ni8CYIbj1/Dnpr+XC6nNMWSCf+i6pqAwOW
	 H9sTIV0hzvKOZhQRaY+MsdnnXG84dVpv/sjH879P50ahxbzJmdzxbZllnucBlCqolW
	 8JaOvTXoV3LYBMcKUWDk/0d9sJn/S3PfzVpiCJOPsMYmmZyIAsDpVtOjjqqrECxFfA
	 KdjB7T8pcdH0ZDN+iwq0ixYm2rCBLYBqYbXBphgwoqdUucFU+w1W+bDsNe5CiFkQMr
	 p5FAiQJIIpT5+QpLg7S3EZJ4p6K/xp6qYBhYfn5CCR/irBpeUmkX9FOQtl3o/+VAaL
	 xP4ylxeEbsuYQ==
Received: (nullmailer pid 2035950 invoked by uid 1000);
	Mon, 02 Oct 2023 17:20:23 -0000
Date: Mon, 2 Oct 2023 12:20:23 -0500
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Ninad Malwade <nmalwade@nvidia.com>, Rob Herring <robh+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH V5 2/4] dt-bindings: hwmon: ina3221: Add
 ti,summation-disable
Message-ID: <169626722278.2035896.8671218369009022609.robh@kernel.org>
References: <20230929103650.86074-1-jonathanh@nvidia.com>
 <20230929103650.86074-3-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929103650.86074-3-jonathanh@nvidia.com>


On Fri, 29 Sep 2023 11:36:48 +0100, Jon Hunter wrote:
> The INA3221 has a critical alert pin that can be controlled by the
> summation control function. This function adds the single
> shunt-voltage conversions for the desired channels in order to
> compare the combined sum to the programmed limit. The Shunt-Voltage
> Sum Limit register contains the programmed value that is compared
> to the value in the Shunt-Voltage Sum register in order to
> determine if the total summed limit is exceeded. If the
> shunt-voltage sum limit value is exceeded, the critical alert pin
> pulls low.
> 
> For the summation limit to have a meaningful value, it is necessary
> to use the same shunt-resistor value on all included channels. Add a new
> vendor specific property, 'ti,summation-disable', to allow specific
> channels to be excluded from the summation control function if the shunt
> resistor is different to other channels or the channel should not be
> considered for triggering the critical alert pin.
> 
> Note that the ina3221 has always supported summing the various input
> channels and summation is enabled by default if the shunt-resistor
> values are the same. This change simply provides a way to exclude
> inputs from the summation. If this property is not populated, then the
> functionality of the driver does not change.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> Signed-off-by: Ninad Malwade <nmalwade@nvidia.com>
> ---
>  .../devicetree/bindings/hwmon/ti,ina3221.yaml | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


