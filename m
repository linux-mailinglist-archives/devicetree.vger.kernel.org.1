Return-Path: <devicetree+bounces-265056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE9dDbnAjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:59:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1316212D388
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B42830074F7
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5B13502BD;
	Thu, 12 Feb 2026 11:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFPz8nfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170D335028E;
	Thu, 12 Feb 2026 11:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897588; cv=none; b=szUmyEfj8D9kxLX7lVXwl/emPz8CJ6X5MroqYCjoedhQGlDbhUhzGS2iSzIjPb0/bZq7oeEmN6vJN73WSIIFKDqYiPWisgncApAfMUyX5w3jwdc5taJ5lc/X5+cl7+couFzT42WC3lGjtHus3uGRz3lTcMrE75IFkhdRyIeRcrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897588; c=relaxed/simple;
	bh=R71KCEJDUZuGn7kGA07hXLI6qMBz9BJ/iU0RPei12o8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jeZBMwlCURO2lctklWeOARdH92kSmId5WS0psY/ykiFHcpCSQr2qhwl2sZVI7BvBvQQxO38Y2qBCz21kqno2VKsHl80489hvjlPDX8/ERw7gf0rvZWgzmuezwI8yZeG7ENB5CbOhNUCdYa19CgoXjMpYzGYXpCnZNE/UtZG+VpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFPz8nfZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07E6BC4CEF7;
	Thu, 12 Feb 2026 11:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897587;
	bh=R71KCEJDUZuGn7kGA07hXLI6qMBz9BJ/iU0RPei12o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LFPz8nfZZN79zdBVmChBfVoLXPyes+319N9HsVQO3+ItKp+ooqpCet44o818vz9w3
	 NDHRrBjmmCPc4i414hL+KC2T8Ct2UEE+wCSkXf6b5yIycprfKO9EQybXtj4KJDdaE9
	 ov4juPepYoz10EhF2AKxg2Ykt3Fv+VaX4OxMrVxYJ5kRy/tRMX46ACiXJcr9+YPKA4
	 iwgjdZDqU8cfNdW7aatCG+3cXYH4b173j3zV6M/V/SDfQU7AQqXVRAwjwpFMd3kuRb
	 CMjcAUAs7BsFd+Z3sLGMzx03T0O0C2EKkebshNWgnPmTgV9owgOL8dYMbPIHDJgmbf
	 j1PQUiEgRmd4g==
Date: Thu, 12 Feb 2026 12:59:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: soc: imx: add fsl,aipi-bus and
 fsl,emi-bus
Message-ID: <20260212-divergent-gazelle-of-patience-0dd85c@quoll>
References: <20260211221937.3752048-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260211221937.3752048-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265056-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1316212D388
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 05:19:35PM -0500, Frank Li wrote:
> Add fsl,aipi-bus and fsl,emi-bus for i.MX1, i.MX2*.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml b/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml
> index 00bbde203f598..4808065fc9115 100644
> --- a/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml
> +++ b/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml
> @@ -26,8 +26,10 @@ select:
>      compatible:
>        contains:
>          enum:
> +          - fsl,aipi-bus
>            - fsl,aips
>            - fsl,emi
> +          - fsl,emi-bus
>            - fsl,spba-bus
>    required:
>      - compatible
> @@ -39,8 +41,10 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - fsl,aipi-bus
>            - fsl,aips
>            - fsl,emi
> +          - fsl,emi-bus

Why exactly? There is already emi, although not in my next, so don't do
it per one compatible.

https://lore.kernel.org/all/20260201011913.2419626-1-Frank.Li@nxp.com/

>            - fsl,spba-bus
>        - const: simple-bus
>  
> -- 
> 2.43.0
> 

