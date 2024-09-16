Return-Path: <devicetree+bounces-103299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8624B97A4FE
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 17:13:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8A251C20E1C
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 15:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D115157E6B;
	Mon, 16 Sep 2024 15:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDs9tp3y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388CC15747A
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 15:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726499601; cv=none; b=FN1ANxP7kMHPFo066ZWwr+alEKNPWHQz2HaXQahYST9/24Or8BADuVmqW/oONf82QSTXdePk/sZTmEf79fisSa7nElQh+a0FH43e+nUiY3XGGc9ulGdTxtipddxDsqU/9OUqlij4htK8uSBc+D9tb9alzoEP/NY9vqKRKJDxhVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726499601; c=relaxed/simple;
	bh=CFLSNqEb3eRYSlISQHOFEIlAv1RcGAJZypSfg7PWiPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CUq0vxOaZsXoIz5CaUBzwljAokwYNQiWVxZNSZDiQlG+D3aDvGOwyv1F9mLNyW+ahMYvBIfjXWueXbIxwj9FGmwagTdgMiwEy0lQlNmifQPxTAPM1kS9T7z5s50ee/BldmuxvJYkYDJs3gw55kbdxy4y7ZIZH41NHJPU0EJTyuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDs9tp3y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5A52C4CEC4;
	Mon, 16 Sep 2024 15:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726499600;
	bh=CFLSNqEb3eRYSlISQHOFEIlAv1RcGAJZypSfg7PWiPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aDs9tp3ycEiiMdpqsgVXlt5apXmtuFQUYLvqoqg9KbHOW74VpKBAC8WFER8XVNpIz
	 TI3XEuWeV/3fD87DNfaSr2SUe7vubIxvy+T5JvGYmYezsu6V2PLLF6GgwW51V5Xl/r
	 vRpbd1lhEZlPmgDR1ZI/jqdd5iC0MB47WgOUipHQZfegFExcEqklAivpCtfuGdVeLl
	 VrCk3mSJbi0Y6Y0ojbidh2qPzjKbs+WKQ6S1YeuQO/6MOO8X6/2d9p+qJ7duAeF8z/
	 XHjiQJ0B6YXYJtVtrg/WXGv4zHYHGC+0dB7MdGcm5G4p7uAJBP5tquB/F7DpF1GzKl
	 H9TqwynNX6fpA==
Date: Mon, 16 Sep 2024 17:13:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, otavio@ossystems.com.br
Subject: Re: [PATCH v2] dt-bindings: display: elgin,jg10309-01: Add own
 binding
Message-ID: <bwrt2hx5pkby7hvbjd63rankz4hmhkl5fiai7nnmjwk4aso3l6@zdm4otqgwcoa>
References: <20240911180004.1080029-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240911180004.1080029-1-festevam@gmail.com>

On Wed, Sep 11, 2024 at 03:00:04PM -0300, Fabio Estevam wrote:
> Currently, the compatible 'elgin,jg10309-01' is documented inside
> trivial-devices.yaml, but it does not fit well there as it requires
> extra properties such as spi-max-frequency, spi-cpha, and spi-cpol.
> 
> This causes the following dt-schema warnings:
> 
> make CHECK_DTBS=y rockchip/rv1108-elgin-r1.dtb -j12
> 
>   DTC [C] arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb
> rv1108-elgin-r1.dtb:display@0: 'spi-cpha', 'spi-cpol' do not match any of the regexes:
> ...
> 
> Fix this problem by introducing a specific binding for the Elgin
> JG10309-01 SPI-controlled display.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - None. Sent it to Mark as per Rob's suggestion.
>


Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


