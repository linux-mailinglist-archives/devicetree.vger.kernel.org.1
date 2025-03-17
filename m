Return-Path: <devicetree+bounces-157963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C92A63858
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 01:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4D013AD4A7
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 00:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AF48462;
	Mon, 17 Mar 2025 00:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="IitJPctN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC56379D2
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 00:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742169667; cv=none; b=d8XLsVnBNq26zBXRfBIEcYu79Vf0L/RPCPMaxX4SxXXLi7Y8kp8y7X+woYmU7Tug8LcKGnp8DhSNyCGDkbxBKr/tci+YyVRQuOYSOHhNjb7U24SzScFOm/xgg5//5PAAQmq/Wn4tsMwVQ83zC2yiqvbX8tPWgfQTgmFzAlGbCSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742169667; c=relaxed/simple;
	bh=cnFJNhH84Gb8/znmfxKllhZ0GdAFxKJgOkSATHH1bh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IDX0FNUNG1o0MBy3N2ryepUUdxfr6AfojEpvJ3Duq0nwUg9LIZDTaMDxSy9A2vPl67VtezBgsLmkEuzPQJUqxtB2WGhi/1exCH7BwI0gXu6fSmdaCVnokVEXYrblfjg0vtDa3V0OfnmTsj3Knv2Mke6VGYrH1E3FxPKCHacCzkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=IitJPctN; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742169656;
 bh=fAGt0LGgvh2CTmO4opasnT3lsd36sdAL3KaucUM6oTQ=;
 b=IitJPctNBpwzQ/eSB4M2kaRZRYPX1DoBCwazOZG5d1D9no75OyacmbxI40OeoCZLm+ws2QcL0
 htEie1YZ7wawmQ4QXPXXlezTDkLR98rM7pAvExljM397pretfemcdQgVOXUUPWrDaicJ3W+gNEs
 mKXKCXKHIRBDRIo/aWv8WIXIfydQsW9MwcCVUe7oONt9xNkTX/QvY25rAL4yS5o31wU3ZaxpjCc
 zX/09cMGNMb7uYN0QfDMNhu/1Ly8QkOnbOXEbGhwwpm3iiXqrjCQ4Mc3Uq5Tu/uNzjAXYzlAxYM
 RX0ACULVOstB1nNfzas1RYKWzkafsufwJKgIemZcEGdw==
X-Forward-Email-ID: 67d76630255865abb78c04f1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <05ddd536-cf14-4ae0-b092-51a0c536f16e@kwiboo.se>
Date: Mon, 17 Mar 2025 01:00:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Kever,

On 2025-02-27 12:08, Kever Yang wrote:
> Add compatible entry for the otp controller in rk3562 and rk3568, add schema
> for different clock names for new entry.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Update the commit message and add maxItems in schema.
> 
>  .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> index a44d44b32809..7572f4a1d73b 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> @@ -14,6 +14,8 @@ properties:
>      enum:
>        - rockchip,px30-otp
>        - rockchip,rk3308-otp
> +      - rockchip,rk3562-otp
> +      - rockchip,rk3568-otp
>        - rockchip,rk3588-otp
>  
>    reg:
> @@ -25,19 +27,15 @@ properties:
>  
>    clock-names:
>      minItems: 3
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> -      - const: arb
> +    maxItems: 4
>  
>    resets:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>  
>    reset-names:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4

For clock-names above and reset-names we could possible skip the
min/max-items, e.g. something like:

  clock-names: true
  reset-names: true

and then only keep the items prop in the different conditions below.

>  
>  required:
>    - compatible
> @@ -62,12 +60,45 @@ allOf:
>        properties:
>          clocks:
>            maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
>          resets:
>            maxItems: 1
>          reset-names:
>            items:
>              - const: phy
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3562-otp
> +              - rockchip,rk3568-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: usr

Why do we not use the name "otp" here ? For px30 and rk3308 the clock is
named clk_otp_usr and we still use the "otp" name.

> +            - const: sbpi
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          minItems: 4
> +          maxItems: 4
> +        reset-names:
> +          items:
> +            - const: usr

Same here.

This needs to be rebased to also include rk3576 clock-names.

I prepared a FIXUP commit at [1] with the suggested changes, feel free
to squash any changes you agree with in a v3.

I am planing to send out a OTP series for RK3528, and that will depend
on next revision of this series :-)

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250314-rk3528/

Regards,
Jonas

> +            - const: sbpi
> +            - const: apb
> +            - const: phy
> +
>    - if:
>        properties:
>          compatible:
> @@ -78,8 +109,16 @@ allOf:
>        properties:
>          clocks:
>            minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>          resets:
>            minItems: 3
> +          maxItems: 3
>          reset-names:
>            items:
>              - const: otp


