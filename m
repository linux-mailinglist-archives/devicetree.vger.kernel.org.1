Return-Path: <devicetree+bounces-238791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0046C5E00F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 225A74A28AA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34EAE32E692;
	Fri, 14 Nov 2025 15:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRV5vQif"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B08832E141;
	Fri, 14 Nov 2025 15:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134087; cv=none; b=VlT5XXg0+4nZ5H8W5YZswAj3cP5GoippWWj9u4qEI6Yz4vxRxQPyUzC6xF6Gxqel26aFhK1EvA3tYawaOHofJRD0N33UD/hew/AlG0Qxl48QafBPWz236qVOx4m/d3QAmgL/WmKzYi43odFqZTTEwkLKzHBGHFwM2QzVtwohuYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134087; c=relaxed/simple;
	bh=RUXK/5/a9yTgVDsERyD/jo/GSpkGjV+60oQqDcr23xM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hwWgg5ZWwKK60Fknh64Zd9yT0ETY7WTQrNnLhuNhYVLQkkxfY43mtUSsppWyGycpnnSKEfLNf9PqREnuwudI4Mrw+MJ5m7J+hxvTKAVoysBLcOsfeDA4GyIBV9qh3fenddPzNP/fyOOxOAC2v6pZ9p6yQkjrsXMrv8qYRL4Q6Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRV5vQif; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CD9FC4CEF5;
	Fri, 14 Nov 2025 15:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763134086;
	bh=RUXK/5/a9yTgVDsERyD/jo/GSpkGjV+60oQqDcr23xM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=TRV5vQifUz6xPCpUSRevekxF/6ZE1DedvLG3eIvTyIQwRLd6se05fxbws6atQjr1B
	 ZybOAAU95xIPj/EJ6W2V7hEyagLopJPXII8xUvQVuoZn+tOvn79FEcyHPxgmTW+RO7
	 Pwa3pzD7AdajkZ74iMq+a+FS3ov+d1146XU/oQFM3duP3+EncsRJK+ZgeAn2tdZdpB
	 sAlwpFzcuC/Q2VFLydIXrJqa+azFffbAZQjNcnXL0s5QteIDRj0YR2DMB+4eMNWmIT
	 tdnutihf+Sm/36Lk8tVe7UYHFSd+W/JpdCz+TYVhlreklNBntYlOt7p5bZ1T3Z1h1b
	 Y16TPyQOISC4Q==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJviX-000000000fs-1V6R;
	Fri, 14 Nov 2025 16:28:05 +0100
Date: Fri, 14 Nov 2025 16:28:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alejandro Enrique <alejandroe1@geotab.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gnss: u-blox: use open-drain reset and
 safeboot in example
Message-ID: <aRdKhWvsK7xHou0-@hovoldconsulting.com>
References: <20251114150335.357-1-johan@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114150335.357-1-johan@kernel.org>

On Fri, Nov 14, 2025 at 04:03:35PM +0100, Johan Hovold wrote:
> The RESET_N and SAFEBOOT_N pins should typically be left open and only
> be connected to ground in rare cases where a device is misbehaving.
> 
> Switch to using GPIO_OPEN_DRAIN in the example as this is what should
> generally be used.
>
> Note that the current Linux driver implementation depends on these pins
> being declared open-drain so that they are not driven while the main
> supply is off.
> 
> Signed-off-by: Johan Hovold <johan@kernel.org>
> ---
>  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> index 9f14cfe7efd1..e8b696986bb7 100644
> --- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> @@ -67,7 +67,7 @@ examples:
>              compatible = "u-blox,neo-8";
>              v-bckp-supply = <&gnss_v_bckp_reg>;
>              vcc-supply = <&gnss_vcc_reg>;
> -            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
> -            safeboot-gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
> +            reset-gpios = <&gpio 1 GPIO_OPEN_DRAIN>;
> +            safeboot-gpios = <&gpio 2 GPIO_OPEN_DRAIN>;

Bah, I forgot about the ABI breakage introduced a few years ago which
means that we now need to specify both open-drain and active-low:

	https://lore.kernel.org/all/20170719131640.GA2533@localhost/

Will fix in a v2.

Johan

