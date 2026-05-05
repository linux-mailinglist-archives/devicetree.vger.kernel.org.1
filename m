Return-Path: <devicetree+bounces-293168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG/3GIoS+mkWJAMAu9opvQ
	(envelope-from <devicetree+bounces-293168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:53:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 579B94D0AA0
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB1663073717
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 15:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D557148A2BD;
	Tue,  5 May 2026 15:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZItYsX40"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B133C481FD3;
	Tue,  5 May 2026 15:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777995852; cv=none; b=QBKOo8RknOolDPYxBbzlRWfuU8bx+g9zP7wSc/TppBo9VpHTHEAZaPuhsrFB4e2SGqXFw4F4Bf60+T51cd/+sNrL1SVEd/ZoSTI8Bz5uyG/Dro83hlkvEfkiKmRGoVbduDQkU3ffuOck7SRKwryBY7ivg6r1kcDzUgZkwhveQDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777995852; c=relaxed/simple;
	bh=bCfTXkwP7yBiyRfwzj60VulBmDVM9WEMccCuTjm8a+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oD+IWbsLhU6qr1w48VtB1HQPv6HciGkQgnlEJg8AReASBN5LwP9sT7uAcz3r0kUnXJXjhFGkb+J2065oENI/G58mGlTmCSmoJr+2xzm6HjvQX2n/O26MF2YK7chXoiL1OF3cpWwrhu0fA04cyUCQ4K9/0GJYUW34eyhWyTlRihQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZItYsX40; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F875C4DDFD;
	Tue,  5 May 2026 15:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777995852;
	bh=bCfTXkwP7yBiyRfwzj60VulBmDVM9WEMccCuTjm8a+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZItYsX404FwWlF0T8mi9a5gwpg1xS41MfCS9MNaiGaB2WjaQsjD3dfU6iyll1hJV1
	 iE3Y0c/oCc/l/ZdDFpvgdQiVc7ZvSPMCRVaN8snLZQWqfShFEOQvkkQtjcMiOuWdzd
	 N/NG3vthwJ2EAX2ZqVXUjIe4AHv9HVNKY5VoAFPh0JSEz8sceIzornRjw151FFfXHh
	 WOH15wrp6LvGmPgcB+XS/l2acxvKxxTcq/8GZM7xfwPqFor+XCNn9KSDjLVOnE8q4q
	 BjzoDFMCTNtn52QKhSo4KtP+uADnPkFo9mwz8YuFKyFoRAshHQiFgF570WPgEEE2az
	 0qgmDcLEIIvZg==
Date: Tue, 5 May 2026 10:44:10 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 01/16] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Message-ID: <20260505154410.GA2973821-robh@kernel.org>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-1-7775671ece22@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-1-7775671ece22@collabora.com>
X-Rspamd-Queue-Id: 579B94D0AA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293168-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,sntech.de,rock-chips.com,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	NEURAL_SPAM(0.00)[0.102];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.3:email,0.0.0.0:email,0.0.0.1:email]

On Tue, Apr 28, 2026 at 06:13:40PM +0200, Sebastian Reichel wrote:
> Currently the Rockchip USBDP PHY is missing a documented port scheme.
> Meanwhile upstream RK3588 DTS files are a bit messy and use different
> port schemes. The upstream USBDP PHY Linux kernel driver does not yet
> parse the ports at all and thus does not create any implicit ABI either.
> 
> But with the current mess it is not possible to properly support USB-C
> DP AltMode. Thus this introduces a proper port scheme following roughly
> the ports design of the Qualcomm QMP USB4-USB3-DP PHY controller binding
> with a slight difference that there is an additional port for the
> USB-C SBU port as the Rockchip USB-DP PHY also contains the SBU mux.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Missing my tag.

> ---
>  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 8b7059d5b182..f728acf057e4 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -114,6 +114,29 @@ properties:
>        A port node to link the PHY to a TypeC controller for the purpose of
>        handling orientation switching.
>  
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
> +          mode), which should point to the superspeed port of a USB connector.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the DisplayPort controller
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for DP, which should either point to the
> +          SBU port of a USB-C connector or a DisplayPort connector input port.
> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.53.0
> 

