Return-Path: <devicetree+bounces-220787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8D7B9A774
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F051F3A1B08
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3451430AABE;
	Wed, 24 Sep 2025 15:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb979cQf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF72DC344;
	Wed, 24 Sep 2025 15:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726338; cv=none; b=TuLVxS8iYVYE4x6MuTHBlVvnLpdAWcW2KanQKGJSkb3TuLGqY9BamzHJOYwD7zX1iPeQGl4DP10QuXUGDKKck9PXMyqUAgyCLN9Qt9Y3qXfBP/6AguXKicZKSxG9cFUV9dD61/FeGDP/0anNAW9S2SrH4wX8ziEDT2P6hhpLNjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726338; c=relaxed/simple;
	bh=K4A6zGP3BfvvldHzqYPCu0QqsPbrNHzID+x8GumfyHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sH1+8BTd7Mj2la9OPuv7F8NWNecP1Cz6Q4mEmwPCZg1YREnnKTDwa5BNpZwU3AkdvFQsaIIUvuIX3FZ9I8P7bfl3AYsM0pxKyC0dPQBNMxTfperxyO1exFCKO/gFPtYVYg2ZUalZCN+SRLh1trLQ9dfiUD2GPT6AR1nnz+XPgZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb979cQf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3F26C4CEE7;
	Wed, 24 Sep 2025 15:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758726337;
	bh=K4A6zGP3BfvvldHzqYPCu0QqsPbrNHzID+x8GumfyHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pb979cQf9HQXftkWVT5Y6GQdXGi5L23LivKOKQKZKUdsHsmf6bOTQxLIsoVTmYzSS
	 fHEpR6EaLcCLt30/uO50MXqSnt1Y5YZGkhj63URveSOPSU7qBCNcd8eAk7JL0Hp1sa
	 YbjihNfHU9SqW8BpkaNeLx9M7CVCMSSeHIxsuGvstZ9qoal/efTLa07zvWgya/pt+T
	 0gLxs7bfhR6QfA+/HVwSsSM0vCtzpaByXR37x6prkTrlXDnZIINWiR9ssp/TWMBm4K
	 SlrXTJPQfHBYpMry3qkyS+9Gik0uvK/Yt5kT/fI5XZ2Jj7E189Ex2LMIAGWy0Focp8
	 naaBFfYTFlbRw==
Date: Wed, 24 Sep 2025 10:05:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	Pawel Dembicki <paweldembicki@gmail.com>,
	Grant Peltier <grantpeltier93@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Naresh Solanki <naresh.solanki@9elements.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Wensheng Wang <wenswang@yeah.net>
Subject: Re: [2nd RESENT v3 1/1] dt-bindings: trivial-devices: Add compatible
 string synaptics,synaptics_i2c
Message-ID: <175872633057.1718747.5690564230165529710.robh@kernel.org>
References: <20250923204120.197796-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923204120.197796-1-Frank.Li@nxp.com>


On Tue, 23 Sep 2025 16:41:18 -0400, Frank Li wrote:
> Add compatible string synaptics,synaptics_i2c for synaptics touch pad. It
> match existed driver drivers/input/mouse/synaptics_i2c.c.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Resend v3 include Krzysztof Kozlowski's review tag
> 
> change in v3
> - fix order in vendor-prefixes
> change in v2
> - update vendor-prefixes
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
>  2 files changed, 5 insertions(+)
> 

Applied, thanks!


