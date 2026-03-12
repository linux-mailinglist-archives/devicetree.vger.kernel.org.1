Return-Path: <devicetree+bounces-274601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C2tLGDBsmmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:36:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56014272B43
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:36:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C4F103070B24
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A543C73E3;
	Thu, 12 Mar 2026 13:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdO42dxM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E732A3C73C4;
	Thu, 12 Mar 2026 13:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773322325; cv=none; b=fV4HdpEak2u/LC5ALCoslyJX8frLT4tQvHJUQ/ZNeHc596XG/C7m3uXkH5yc3Hk5g4LTyvv0fegjpPS12Qqgx4a/IS+CaarsyJ7MoOPIOj+1kC9FztWW5K111dmrVGPpmT11nI3QIJapwcSU3n6N/c4oc2cCCAM6qydYz8ImXjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773322325; c=relaxed/simple;
	bh=0EHfu8EBkTO2BFs0c4rn2ZmgflDAWNcNC/ordDOgUMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NemNO1CVjNnSqguVaWw+z+TuizOONB/egOnVEA9V4cmPyCDNbTu8uESlJwHGFuQcyJuzaWJWRd/1zQTuWScUqX5E40i623tPC2lM06N8ZujqBc9MS5Jd1Sgp/LNsqeZcGhFMHNMW7J9V4JrB3EQkUc10rLD6HB7oBq9dUZU3Cs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdO42dxM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 828FBC19424;
	Thu, 12 Mar 2026 13:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773322324;
	bh=0EHfu8EBkTO2BFs0c4rn2ZmgflDAWNcNC/ordDOgUMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jdO42dxM9tJSPv75IZsQjLk7V2acXzgKUIYacc2U9uJRnuqP64Er6Yf+NmHYXsOSd
	 1qS+VbkhydnE9v+dg5/9+fQ9t8TTQA7D28of2GlZBmuWXKrjVh9NflaH4zYe3bvlw8
	 cuWEJGsQFGrb6Z0d66mcMAdNcbEv41HplkqUuX4dT7WtAiWPWWcAHBAyKHngXso8+1
	 URWUETSK/ZK5iywoo1yilhqD7+qevv1udKSXwUAmuiQ/XWxOT8v2I6DH2q662j3x8Y
	 60MMJZIs7uVWD5ZmOOzSZySwplK87JYoEBd9gKcJyFAf7UYx9qdhRsyXWXfLWQbkHi
	 vjBej2itOnGBw==
Date: Thu, 12 Mar 2026 08:32:03 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
	frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org,
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/5] dt-bindings: PCI: imx6q-pcie: Add i.MX94 and
 i.MX943 PCIe compatible strings
Message-ID: <20260312133203.GA2768492-robh@kernel.org>
References: <20260312092745.295578-1-hongxing.zhu@nxp.com>
 <20260312092745.295578-3-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312092745.295578-3-hongxing.zhu@nxp.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-274601-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 56014272B43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 05:27:42PM +0800, Richard Zhu wrote:
> Add i.MX94 and i.MX943 PCIe compatible strings and fallback to
> i.MX95 PCIe compatible string.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/pci/fsl,imx6q-pcie-ep.yaml       |  6 ++++
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 28 ++++++++++++-------
>  2 files changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> index 0b3526de1d62..323ed3105d33 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> @@ -24,6 +24,8 @@ properties:
>        - fsl,imx8mp-pcie-ep
>        - fsl,imx8q-pcie-ep
>        - fsl,imx95-pcie-ep
> +      - fsl,imx94-pcie-ep
> +      - fsl,imx943-pcie-ep

How is it that the RC is compatible with imx95, but the EP is not? It's 
the same h/w.

>  
>    clocks:
>      minItems: 3
> @@ -94,6 +96,8 @@ allOf:
>          compatible:
>            enum:
>              - fsl,imx95-pcie-ep
> +            - fsl,imx94-pcie-ep
> +            - fsl,imx943-pcie-ep
>      then:
>        properties:
>          reg:
> @@ -114,6 +118,8 @@ allOf:
>            enum:
>              - fsl,imx8mq-pcie-ep
>              - fsl,imx95-pcie-ep
> +            - fsl,imx94-pcie-ep
> +            - fsl,imx943-pcie-ep
>      then:
>        properties:
>          clocks:
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 7fe1e0e9b565..46c1fabcd070 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -21,16 +21,24 @@ description: |+
>  
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx6q-pcie
> -      - fsl,imx6sx-pcie
> -      - fsl,imx6qp-pcie
> -      - fsl,imx7d-pcie
> -      - fsl,imx8mq-pcie
> -      - fsl,imx8mm-pcie
> -      - fsl,imx8mp-pcie
> -      - fsl,imx95-pcie
> -      - fsl,imx8q-pcie
> +    oneOf:
> +      - enum:
> +          - fsl,imx6q-pcie
> +          - fsl,imx6sx-pcie
> +          - fsl,imx6qp-pcie
> +          - fsl,imx7d-pcie
> +          - fsl,imx8mq-pcie
> +          - fsl,imx8mm-pcie
> +          - fsl,imx8mp-pcie
> +          - fsl,imx95-pcie
> +          - fsl,imx8q-pcie
> +          - fsl,imx94-pcie
> +          - fsl,imx943-pcie
> +      - items:
> +          - enum:
> +            - fsl,imx94-pcie
> +            - fsl,imx943-pcie
> +          - const: fsl,imx95-pcie
>  
>    clocks:
>      minItems: 3
> -- 
> 2.37.1
> 

