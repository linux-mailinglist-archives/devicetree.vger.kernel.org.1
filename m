Return-Path: <devicetree+bounces-7296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD477BFEEB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1563A2817F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9823124C8F;
	Tue, 10 Oct 2023 14:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvrmVv6s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772CC24C8A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2A73C433C8;
	Tue, 10 Oct 2023 14:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947464;
	bh=0uqXFpVu4xMd/m4hEO1AB1o5xxHqn9bBpK0vECkb/vE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvrmVv6spV6Gc04pzXp+ZXDo39SMDSuAiyargrd3zHWfVezi6KUVnJ+7cTwHlVPv9
	 RcT5QogpVfhySDASUvSXSc6FwVFUPWyi0x9RYzxx853U9xP5E5Ewf6emGZcN3GX5lj
	 4RQimH6z8DI3ldy8ImQZvKCSreTzPW2stx4hMnqPtJZQ8/uE0OnLy0LVOfuZdkImAP
	 nzox6ZGmBwWdn78zKtTInhY9QNUQoHQwLxf3bxsRoYd00q54rGm5HcWTt2EDmdHiMT
	 ID3Yx8kWCUWP90DZ1ST1IRPVjt4of5LpnQK8xmjWRl3x6wuQI1ZkGZq/n0/ZR0uoSk
	 mvoGsZpUJpoTA==
Received: (nullmailer pid 803567 invoked by uid 1000);
	Tue, 10 Oct 2023 14:17:41 -0000
Date: Tue, 10 Oct 2023 09:17:41 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andy.shevchenko@gmail.com, kernel@sberdevices.ru, rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, George Stark <gnstark@salutedevices.com>
Subject: Re: [PATCH v1 11/11] dt-bindings: leds: Add binding for AW20108 led
 driver
Message-ID: <20231010141741.GA779946-robh@kernel.org>
References: <20231006160437.15627-1-ddrokosov@salutedevices.com>
 <20231006160437.15627-12-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006160437.15627-12-ddrokosov@salutedevices.com>

On Fri, Oct 06, 2023 at 07:04:37PM +0300, Dmitry Rokosov wrote:
> From: George Stark <gnstark@salutedevices.com>
> 
> Add aw20108 compatible in devicetree binding for aw200xx led driver.

Binding is for the hardware, not a driver.

For the subject: dt-bindings: leds: awinic,aw200xx: Add AW20108 device

> 
> Signed-off-by: George Stark <gnstark@salutedevices.com>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  .../devicetree/bindings/leds/awinic,aw200xx.yaml          | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index 5cd167ab0f04..c3abb0f7ded3 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -10,15 +10,16 @@ maintainers:
>    - Martin Kurbanov <mmkurbanov@sberdevices.ru>
>  
>  description: |
> -  This controller is present on AW20036/AW20054/AW20072.
> -  It is a 3x12/6x9/6x12 matrix LED programmed via
> -  an I2C interface, up to 36/54/72 LEDs or 12/18/24 RGBs,
> +  This controller is present on AW20036/AW20054/AW20072/AW20108.
> +  It is a 3x12/6x9/6x12/9x12 matrix LED programmed via
> +  an I2C interface, up to 36/54/72/108 LEDs or 12/18/24/36 RGBs,
>    3 pattern controllers for auto breathing or group dimming control.
>  
>    For more product information please see the link below:
>    aw20036 - https://www.awinic.com/en/productDetail/AW20036QNR#tech-docs
>    aw20054 - https://www.awinic.com/en/productDetail/AW20054QNR#tech-docs
>    aw20072 - https://www.awinic.com/en/productDetail/AW20072QNR#tech-docs
> +  aw20108 - https://www.awinic.com/en/productDetail/AW20108QNR#tech-docs
>  
>  properties:
>    compatible:
> @@ -26,6 +27,7 @@ properties:
>        - awinic,aw20036
>        - awinic,aw20054
>        - awinic,aw20072
> +      - awinic,aw20108
>  
>    reg:
>      maxItems: 1
> -- 
> 2.36.0
> 

