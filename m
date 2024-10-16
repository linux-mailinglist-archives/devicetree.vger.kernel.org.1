Return-Path: <devicetree+bounces-112107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4782F9A109A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 19:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E633B1F21765
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8EE20C487;
	Wed, 16 Oct 2024 17:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0abOOeb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7800B14F135;
	Wed, 16 Oct 2024 17:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729099700; cv=none; b=urPbKoE+QMkyEIVD8r0stGIuOMEcHylc/p4xl5m1pePKEwpN+yab0Dlsk2/FOvYOHQkUxHXShFKd4BR5Fi25l1q6Q7Q7cKj/uFIb7SABlEg/sLFah4ocQuN8Vr3/eeNLFbvd49RU0LApxZgmsyaZUwOTxrKk6Y5NlkaXSwdXKfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729099700; c=relaxed/simple;
	bh=LjDcX667/F9Hi+2Io56Vk5FjxxOv458dsz9pGrGc0d8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G+osu4Cjp0AEGumzzZN32mwrz1XrgrZ72JA6BhuiojoAmmyafSn+kZMaXgMT12Q5EccxioPafyLVF85wtJBYTkBqr7y/uRp7AYVTBHjqSCJvh3NKLV7O+W5aMfY2ggvfcpvfpbGx/STgohlYQJ5UhJrGr8tvXsZWXEYiNJIBVek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0abOOeb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CDD2C4CECE;
	Wed, 16 Oct 2024 17:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729099700;
	bh=LjDcX667/F9Hi+2Io56Vk5FjxxOv458dsz9pGrGc0d8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0abOOeb75W+adAf3te2gfQWfgHXvgw9M6rDuHYd1w8O669wIlY1JIULTC0fyiJw1
	 RolzVYSpQXzlnwaY5Kgcs69+ZAfL00by4ByPDcZeEFxrBJ2hc+fFu3YHswoUBHZIId
	 O32DMc/m2qNUpDZnRI5qY2J96fV0xEjr9NhRDS6fQ2IMv1kH8C9WG2KiHKapwBVeWA
	 IFasGt/yWuceRLy7a78f+pprMDOZ+rZTrTS4aX9YJPRjEKhpYt1XJiYewC9O3NyTlD
	 I3cVYo1MPMyjsRh/Y4MizUvBtiU+a8Yr2pxZ/ObB2YibKB+G/FEC25tVzhgjFnpyV4
	 EELVvOElIUUOA==
Date: Wed, 16 Oct 2024 12:28:19 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, krzk+dt@kernel.org, kishon@kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, vkoul@kernel.org,
	devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org, william.wu@rock-chips.com,
	heiko@sntech.de, tim.chen@rock-chips.com
Subject: Re: [PATCH v6 2/4] dt-bindings: soc: rockchip: add rk3576 usb2phy
 syscon
Message-ID: <172909969920.2069526.212963099055166502.robh@kernel.org>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
 <20241016073713.14133-2-frawang.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241016073713.14133-2-frawang.cn@gmail.com>


On Wed, 16 Oct 2024 15:37:11 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> The usb2phy is accessible via a syscon registers on RK3576, similar
> to RK3588.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v6:
>  - This is a new patch adds rk3576-usb2phy-grf syscon.
> 
> v1-v5:
>  - none
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


