Return-Path: <devicetree+bounces-8277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F62B7C7786
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:00:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A0AD282BD3
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66FB13C6A5;
	Thu, 12 Oct 2023 20:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beG45CD8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DD13B7BD
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 289D2C433C7;
	Thu, 12 Oct 2023 20:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697140816;
	bh=KulONfLpFgFQJp7aWrFsumT42afdZSEXNtonZr8Mfd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=beG45CD8DfSEjlYkqsP6ys4fZ667u1xB0TjdnwyO8rLL7l6NtklO+19Dm4VLqiQCn
	 vhRDb0AFNvgaN3w2hXlpCL7JvgDGoL1dEgRguLVgrE0o2PbpgRlKfiSM117T/oPiKP
	 9+SCU35Al81a/UoQHzi1JX3OpnLcM0DdiSsH5jpqav2A9g3b3EJIgmTW3WqwMcbz1V
	 8bAzQWCEZhHob1pjBzGOoIZVzDRvgjDI5gP/4ZIvY2TtxnfaLzzHJoEmxk9s64Cs2Q
	 b+J1xAuvg16M4fQTNsnElblYsYVwe02yio4hF+UpRbxyeABPS+UI7WdML6pZYxqAKe
	 ISQfwmcYbC4bg==
Received: (nullmailer pid 1587586 invoked by uid 1000);
	Thu, 12 Oct 2023 20:00:14 -0000
Date: Thu, 12 Oct 2023 15:00:14 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <169714081353.1587536.2767150298208259976.robh@kernel.org>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010174138.1888396-2-megi@xff.cz>


On Tue, 10 Oct 2023 19:41:16 +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> Deprecate support for this property in favor of standard
> system-power-controller one.
> 
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---
>  Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
>  Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
>  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
>  Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
>  5 files changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


