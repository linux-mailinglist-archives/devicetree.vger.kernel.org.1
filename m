Return-Path: <devicetree+bounces-5188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 179097B58AD
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:19:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 38AEF1C20825
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA591DDEB;
	Mon,  2 Oct 2023 17:19:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DD41A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A34AC433C8;
	Mon,  2 Oct 2023 17:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696267144;
	bh=88t4OjXZc51C0kAFUiyZuz+p9QqkBW4TTymGySGL8hM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mZz/G8G2cCmjBjDTxvwY+v3UITEye5iTWR1oqlw9njlUvHnWLgapUCUZ/T4BGRwD6
	 zRPyXEbo97/QPyAbgdmexwg0XWm3w/J9asAnDT+w9+jjTI3hPSYFkgR8/2NN5ECOEH
	 DEP24KdlohfaKrIiwmDA1v0iGIFbvGh9wA+BRxJK77vWG25NzZkLWGUA3rt+qR5ImK
	 gt8pKhBAMRX41g/ueZCgj+83h6KHOpvFAIgW+O8ed3qx8uimmu+xrOhpJlvoD8hSwu
	 eMkWPwddT7e78qqoYoBpw2iXqy6Xx+qKUlcOPQWjZxpHdwexi6kARHO1EG0/hNAZLU
	 LEPsHkxk04PzA==
Received: (nullmailer pid 2034391 invoked by uid 1000);
	Mon, 02 Oct 2023 17:19:01 -0000
Date: Mon, 2 Oct 2023 12:19:01 -0500
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Thierry Reding <treding@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>, Ninad Malwade <nmalwade@nvidia.com>, Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org, devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH V5 1/4] dt-bindings: hwmon: ina3221: Convert to
 json-schema
Message-ID: <169626714151.2034330.4248654905752564697.robh@kernel.org>
References: <20230929103650.86074-1-jonathanh@nvidia.com>
 <20230929103650.86074-2-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929103650.86074-2-jonathanh@nvidia.com>


On Fri, 29 Sep 2023 11:36:47 +0100, Jon Hunter wrote:
> From: Ninad Malwade <nmalwade@nvidia.com>
> 
> Convert the TI INA3221 bindings from the free-form text format to
> json-schema.
> 
> Note that the INA3221 input channels default to enabled in the chip.
> Unless channels are explicitly disabled in device-tree, input
> channels will be enabled.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Ninad Malwade <nmalwade@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  .../devicetree/bindings/hwmon/ina3221.txt     |  54 ----------
>  .../devicetree/bindings/hwmon/ti,ina3221.yaml | 102 ++++++++++++++++++
>  2 files changed, 102 insertions(+), 54 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/ina3221.txt
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ti,ina3221.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


