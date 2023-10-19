Return-Path: <devicetree+bounces-10006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 203B67CF552
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:29:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 502D21C20B28
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38531863C;
	Thu, 19 Oct 2023 10:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXzj+37h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A644668D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3197FC433C8;
	Thu, 19 Oct 2023 10:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697711390;
	bh=yqtfTXin7HKdqdcd8Cdk8vhzxiHzQgV3bZzfYAgIZDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iXzj+37hOTHesLIU0vdPIKRzAbhnzkSeiB99HJjfqqjx//t7aQxRMjK/KovjwYceR
	 A31TmG7RV77PXJ9wPx1m3lpMKoeYUeJVgHJiJ55TrcUj7SMjkYmsvjBYp/jB8f2nel
	 HggyhUgNmzufjA9ORfsGrG6rW7MVe2JtVoo3+2O027Ff2v7+eva3oOzV+fU/m3WKgy
	 vb3ADHqVViGDFDc5lB4G8bQIRlpCfGmup5g1AIQHiYAh7cHC4Krj2KFl7nVBZpO9Ez
	 FGbP67j5ou2K846SN5+DWY2DgIbXrE9VRJUpTsRHmnjB41boFHbvOmrGQKbkpZDPCi
	 PVddKvtzgs89A==
Date: Thu, 19 Oct 2023 11:29:45 +0100
From: Lee Jones <lee@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019102945.GA2424087@google.com>
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

On Tue, 10 Oct 2023, Ondřej Jirman wrote:

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

I don't see anything wrong with it.

It would be nice to have a DT Ack though.

-- 
Lee Jones [李琼斯]

