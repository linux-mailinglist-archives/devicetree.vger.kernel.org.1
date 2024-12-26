Return-Path: <devicetree+bounces-133980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 101E89FC6F9
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 01:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 974F0188272D
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 00:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65115139E;
	Thu, 26 Dec 2024 00:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="yVrgVqVt"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BC7749A;
	Thu, 26 Dec 2024 00:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735173424; cv=none; b=kBQzXmPMRv75A2B/CBPw2YdnZV654H+h8UlIEVbihvCD6CrqmoVhzk2r0PoBGKqodiMZk2O3/l49tqo08dudNNBfLQ39yTfmM8UN99CfIKwzutSWjI2HpLT818eo3ZNLGgcUR8KW3URpIbj6jhV/yyf6akljvaaLCu3T76wscVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735173424; c=relaxed/simple;
	bh=rVwUGNg1LtaVEQ7pWlros5yO/puSwCoAPdND1JThAYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cye6c43RRbnuwO4s20y2wpXutWWVktEUWxgqsVteJ5/Q/HauLbDhfNw8nwU46W803ryw47Csp1gxnM3CVTDV4U9dZkU9VXBvAIyD31qslHGC2QwQzJs5leoezN4c2oAfFOeCCx/jQojFYwfhMAqHYpf1QOSZVOxmnbeEi4KFvlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=yVrgVqVt; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DVUOoOUpQeEBvO1qM1vAdUojdFi2eQVCv9h2wfb1gxI=; b=yVrgVqVtiEsk2Tkyc+rsnt/Hen
	yCi4FLQ8oVMgOiDPim2Il7tZiIz+qGghrhZPZYABpCU3oeaH00uEFpBEklmTr9kLZ60A0IHKlrSis
	4TmMs4TzoxHaMkWaKPRVpYqSINWhzEakQkhmKwqBIBwXFOGtu3v413WD3xKUbkGPwBAkEq3CjRVD5
	a85JxnpxJoOEZr7U6GwjRySPN3+nbAnSb2z64C7w+56YU3wujx1XP+A/mi6xPC8nINFDm77YvRxMI
	HnmoDls9+lGwH5OEc1pZERIzYDb9ZgRr3B/YogeFlYLV56ORknuu8srEkNOUkFMvuUdLUAFwvhJ7M
	qOb3JBPw==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQbs4-0004IU-C9; Thu, 26 Dec 2024 01:37:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>,
 Rob Herring <robh@kernel.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>
Subject:
 Re: [PATCH v2 04/17] dt-bindings: power: rockchip: Add bindings for rk3562
Date: Thu, 26 Dec 2024 01:36:59 +0100
Message-ID: <2102620.tdWV9SEqCh@phil>
In-Reply-To: <20241224094920.3821861-5-kever.yang@rock-chips.com>
References:
 <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-5-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 24. Dezember 2024, 10:49:07 CET schrieb Kever Yang:
> Add the compatible string for rk3562 SoC.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
> Changes in v2: None
> 
>  .../devicetree/bindings/power/rockchip,power-controller.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 650dc0aae6f5..79b948518f0c 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -40,6 +40,7 @@ properties:
>        - rockchip,rk3366-power-controller
>        - rockchip,rk3368-power-controller
>        - rockchip,rk3399-power-controller
> +      - rockchip,rk3562-power-controller
>        - rockchip,rk3568-power-controller
>        - rockchip,rk3576-power-controller
>        - rockchip,rk3588-power-controller
> 





