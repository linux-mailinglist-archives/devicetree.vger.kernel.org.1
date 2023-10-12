Return-Path: <devicetree+bounces-8143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 579377C6D7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10B732827EA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F911250F0;
	Thu, 12 Oct 2023 11:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdQJMtI+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FA124A1C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:57:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 300FDC433C7;
	Thu, 12 Oct 2023 11:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697111840;
	bh=Yf+t1wmcZJPPp71FZpye5Mrtw06k0sUl2+puVNH65to=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LdQJMtI+s6l+ttGP71rwDlSIwflkOWvGT9hE80ZkA/LvyoR4dWP811j5H2/Hj9Zyz
	 OOYVh+8anWRvoaKb4D0RX3Z7CoEV3X1SMMFkmH56EQBinl/nhL6w6bssrBemx128Yy
	 uDsbs0cAPi+Q0HDYerLF4sZUXy6CuWeHuRkp5ifmfxIEQZF7vV/9ExsZs6nhvKuSQ6
	 tsNjYav2Bamrx5bkWLdnmTXXKoa6CZofeTw8E6zn40d+NK8xfEafBicgiv4TcKe3C5
	 IQuhofnx7JhyVwrNMIpg9IbmR7pbzkJF/Fy4KrbAq+tt5M0PNVbqH+zsmxElYjvU+s
	 XVk4Vgt2nzzrw==
Received: (nullmailer pid 293856 invoked by uid 1000);
	Thu, 12 Oct 2023 11:57:19 -0000
Date: Thu, 12 Oct 2023 06:57:19 -0500
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>, Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write
 lockable page
Message-ID: <20231012115719.GA291445-robh@kernel.org>
References: <20231010190926.57674-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010190926.57674-1-marex@denx.de>

On Tue, Oct 10, 2023 at 09:09:25PM +0200, Marek Vasut wrote:
> The ST M24C32-D behaves as a regular M24C32, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Document
> compatible string for it, so users can describe that page in DT. Note
> that users still have to describe the main M24C32 area separately as
> that is on separate I2C address from this page.

So 2 nodes for 1 device? Wouldn't it make more sense for the 1 node to 
have 2 addresses?

> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
> index 98139489d4b5c..7be127e9b2507 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -67,6 +67,8 @@ properties:
>                    pattern: cs16$
>                - items:
>                    pattern: c32$
> +              - items:
> +                  pattern: c32d-wl$
>                - items:
>                    pattern: cs32$
>                - items:
> -- 
> 2.40.1
> 

