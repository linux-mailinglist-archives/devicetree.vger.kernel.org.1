Return-Path: <devicetree+bounces-6582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E416A7BBE1E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21C851C2093C
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED723418A;
	Fri,  6 Oct 2023 17:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExVRjuA7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44061170C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:56:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AAFC433C8;
	Fri,  6 Oct 2023 17:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696615017;
	bh=M7cM0uzrZk4lKMKjA93C2oMjoATI9WLt5iEp4Pa0My4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ExVRjuA7T/H0LaeJ0jyf3NZMtrc0lM6wOK+ekvS3Hq8ZCLXMYeoBcRONIckkYnR9e
	 R9KWM6wDzcE5q6jwvZF8lMhKkQ1lgD5XgMAmF7JJPxu8HLrXCruZvJdtW+N4EFMC/7
	 +MgEyPdqIsG0GVwqs1Zo00lHWuag9pWExwjTRXjr6/1rfLAWPo85X4OULjN1ooa7MU
	 QE2wvKipHSHuTUa2DvBuP+DGUrlVwrPA7dr5beW5tSBoKlXJNaQzu4hKecZwWebxPT
	 cSOeYmHLA64elgkUGOYkMirnChTWEZcTn5lG+t94KgeZRNsGwZCdyYGcGdRGZ4Z1JF
	 KS5ex2P3lOVhA==
Received: (nullmailer pid 70487 invoked by uid 1000);
	Fri, 06 Oct 2023 17:56:54 -0000
Date: Fri, 6 Oct 2023 12:56:54 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Kaiser <martin@kaiser.cx>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: pinctrl: st,stm32: fix phandle-array warning
Message-ID: <169661501435.70432.16755877986670034633.robh@kernel.org>
References: <20231006082247.3830719-1-martin@kaiser.cx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006082247.3830719-1-martin@kaiser.cx>


On Fri, 06 Oct 2023 10:22:48 +0200, Martin Kaiser wrote:
> make CHECK_DTBS=y st/stm32f469-disco.dtb
> 
> brings up a warning about a missing argument:
> 
> stm32f469-disco.dtb: pinctrl@40020000: st,syscfg:0: [21, 8] is too short
> 
> The description of the third entry indicates that this entry is optional.
> The code in stm32_pctrl_dt_setup_irq parses st,syscfg and treats the third
> entry as optional. It defaults to 0xf if not present in the devicetree.
> 
> Update the schema to require at least two entries, use the same syntax as
> the description of renesas,ipmmu-main in
> Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml.
> 
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
> 
> I tested the following cases, all of them returned the expected result:
> 
>    st,syscfg = <&syscfg>;              (too short)
>    st,syscfg = <&syscfg 0x8>;          (ok)
>    st,syscfg = <&syscfg 0x8 0x0>;      (ok)
>    st,syscfg = <&syscfg 0x8 0x0 0x0>;  (too long)
> 
>  .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


