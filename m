Return-Path: <devicetree+bounces-6839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CAC7BD0DB
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 00:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55A901C208A5
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 22:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680C818AF6;
	Sun,  8 Oct 2023 22:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWZ5lJ1P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB26FC04
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 22:25:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A6F5C433C7;
	Sun,  8 Oct 2023 22:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696803900;
	bh=VXitWHqq4leNa1/V/OcVVi+BEGZhzWw0cZ6hmoOcQMQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CWZ5lJ1PFWizHfcrPeU727vpdOlmvFuhXbiMXMETd5787gXM8KBsPJnIo16SQafAK
	 54Kx+jIPC3M3FMHb9Dsj5esfScadzWYXJafsXimSK09/aLsUNBc/HVkEAJcJAbnLiN
	 Mb4tOttbrpFjBpCZXskrX/mmtSRvqgegio6/ZgJaeXASVoyPPszZQbckGDiDoZ8TlW
	 cVBCoPl1wM5GwbXeOTa0yk1g3d9aUVipM6WlBAKlDIfYLCttcACLJ7jsVoB7gCcvv8
	 DO+YEqbQ4NfVkqf1UV/MzEqujRmGkdHBHC5cgkkhUHUGrbtp9HIVsa+lO9QojnE1X+
	 GJwXPDNjCBkUw==
Message-ID: <6be92f71-f023-32df-a787-1ee3da37107b@kernel.org>
Date: Mon, 9 Oct 2023 07:24:56 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-23-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-23-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> SoCs the rk3588 has four interrupts (one for each channel) instead of
> only one, so increase the number of allowed interrupts to four.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> 
> Notes:
>     Changes since v4:
>     - new patch
>     
>     Changes since v5:
>     - drop interrupt-names property
>     
>     Changes since v4:
>     - new patch
> 
>  .../devicetree/bindings/devfreq/event/rockchip,dfi.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index e8b64494ee8bd..50d3fabe958d5 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3588-dfi
>  
>    clocks:
>      maxItems: 1
> @@ -23,7 +24,8 @@ properties:
>        - const: pclk_ddr_mon
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>  
>    reg:
>      maxItems: 1

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


