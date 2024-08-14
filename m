Return-Path: <devicetree+bounces-93611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9159519E6
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 13:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D28FB1C212E1
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC46D1AE874;
	Wed, 14 Aug 2024 11:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AsdCN/X7"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BA51AED39
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 11:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723635059; cv=none; b=gQ2jtGzFjloZJhN9m1tEeUBhLPdIjunD4MYE7K0/yXfoXz5VXNMozMBJkiHemThp7V1jr2JoQwo74ZVkH41E8GWPYKHqAbfaoImMPQoB3p4rhfMxh1pJQNVxcLwZ6/GMVSVgw3R5biMY1PyynQ48n4H1rVV/PoHXdblwvxq2UI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723635059; c=relaxed/simple;
	bh=FzBVU01NR9qmpielKBfVWYVoXueXEMP5BWgu/fsENNo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IpXwGvioUjgjlBoMErI4pYQRMJf6FUAn4DJFQfHKdSYThKs/NLrszZRQxIpoQ510VdbcguA1yxMP1SYOqMQxmibGWzTUVeB4xBh/9vxc64GREa7xpD4HZ6CG7U5jB27G79jchbtE8w5E4B+0T2Cv14fpmQysM1GRsSNWyFNPWLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AsdCN/X7; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1vJ/c7is/oxKwfCZwRETqtSm9eSiB8Og7CBk6i5XZAs=; b=AsdCN/X7W60B8c7+rpiEsdzWe0
	niFgyLf5WuqicpCX5WV+jR7aX3MQtXk7bdDxw3aZxDjxqlT3iC7vr38JuaX1fGcFVF6wxH1rNgmQt
	XULkukUaMY7NASlAS7TsNaI67U5SXOaGttGjJS8KGnnjrYdXXSHqkcydTukjnD4HoxlnyC8BsOBqB
	v/PUUyFw7JeePGHIaTGibSHYbr/R0Jrh9QgDBbtP1JUPqutsnG8wJiAdE3OWXXxGdXHEpiKKytOz3
	uHnmWZ8FkeWTK+eZ/LT9f508R1lRKR0/yy0tGtj1AItHGg0+HoOhyLO6L7dy5Og/GXksDduBBeTnt
	ZSwesKNw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seCDH-0002iV-Uj; Wed, 14 Aug 2024 13:30:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 13:30:46 +0200
Message-ID: <9908246.lRi8OiJO2u@diego>
In-Reply-To: <20240814095727.1662908-1-naoki@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - update compatible string for OpenWrt
> - drop A-b tag
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2ad835f4068e..1d426d4e1928 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -790,6 +790,11 @@ properties:
>            - const: radxa,rockpi-e
>            - const: rockchip,rk3328
>  
> +      - description: Radxa ROCK Pi E v3.0
> +        items:
> +          - const: radxa,rock-pi-e-v3
> +          - const: rockchip,rk3328
> +

Please don't add a separate entry for the simple updated version.
Instead group it with the original Rock Pi e above.

For how to do it, look at the Radxa Zero 3w/3e .



