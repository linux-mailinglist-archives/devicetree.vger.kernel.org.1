Return-Path: <devicetree+bounces-134300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5635B9FD258
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00AAF1635EB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36751155A59;
	Fri, 27 Dec 2024 08:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJPsqtSj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F027156228;
	Fri, 27 Dec 2024 08:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735289968; cv=none; b=pKo97aJIDoXhFUDEm2g4V3DXqbZB4+oTP75povS05LVei1n6t1y6nDqauASh/396+MjkP5ZGnrmFuYqLXhM4V4lstqGutO4uN9/px+HNeLKC4IuNyAoKqW3NPrLT+YEOWdtcQfM6QiimAUymkrSHsMasSrkmyiU5MB9Z2GKCkh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735289968; c=relaxed/simple;
	bh=MsEyQkHLXLf/JnBqgmJeJTfFqqMERbxMGqu8n1OLFxI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d5n+ziVWR0Af/buBJuDHu9vVOIbHxT67LjFdsNFovS1QF88RcV1PzmRyogp5NVftzOMfTcSWQyxJg64F+/3PtogaSjwzKJF6GrNFZIgYW8VNhcU/H7gTZ+Q/NjStPiHcVw/RlNN/sJHrk84+FWurMsJjzbi+NHYnI4ba5GECgpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJPsqtSj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF63C4CEDD;
	Fri, 27 Dec 2024 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289967;
	bh=MsEyQkHLXLf/JnBqgmJeJTfFqqMERbxMGqu8n1OLFxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eJPsqtSjGiTF6ifyH+l9LUgEb065c7UgKsk3TnaY9T2pwVmzysscMSrmXtkJfpqSR
	 fbd8vUfmygHv1wxWv06EFEgmHLDDrt3rRhIB+T44ktnWBqMH/hJmZnhJgz0/hvVDLg
	 wCRShUfa+/eiWOj+vv53hVyHE1Q+IsYN1dPQ7fN7MVmKxXqrgmi1ycoghHjV5aV6fO
	 LxhRodMaxYOUZOmnQbO2sjo3TEruJ5R1Gn9cpfzabz1XeTGLTplBFj3btmuiwIDXlJ
	 TUGc1tcIDxqJwCjA+0wGy8kyE+5nfhXOewbfoKpvZDM4BU1YoEG9ZNeAyx75N0lq3W
	 kp0qPjWSU52QQ==
Date: Fri, 27 Dec 2024 09:59:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
Message-ID: <eyl7xqtfsdby53p2t5ub24nj4223hzbsazbuxxshnyk7xx6nrx@gzbcyqs4pjfc>
References: <20241224094153.3816923-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224094153.3816923-1-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:41:51PM +0800, Kever Yang wrote:
> +
>    - if:
>        properties:
>          compatible:
> @@ -78,6 +107,12 @@ allOf:
>        properties:
>          clocks:
>            minItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>          resets:
>            minItems: 3

missing maxItems, probably in many other places as well.

Best regards,
Krzysztof


