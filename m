Return-Path: <devicetree+bounces-268638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CAOKkj3n2nkfAQAu9opvQ
	(envelope-from <devicetree+bounces-268638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:33:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B60E1A1E1A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C1E0301E6ED
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CA6316180;
	Thu, 26 Feb 2026 07:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3n0/lSX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41C923ABB9;
	Thu, 26 Feb 2026 07:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091138; cv=none; b=c5xgvB314P9RTonJBDW/X8DdtXCIYKZtLOIc+Dw//U+h1EYheTgt/89DwEMEDiGk2wGJQem1Hew+M4FBAQr3veVaFEWAt5YyLFfMsDMaH23rT1OM0bFx5wJv4UzcNKIbD0OvywsX9KZWwDG39VXHDjmN6MTtfE5zH2AyKVc6deE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091138; c=relaxed/simple;
	bh=zL14adUa/DsnYa4rgWsBjQbPFunEtFNT2bExglmLGaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XIudJE8rS8SCEBsCTK62V0njZ6hYHF85Sk8iCbwmJYWxBw/IrYRVcReMYQKyiPxS1fH+L2wpW5Y9lDwAfGFQycJkQkR+bRMJVYYlSR8urhtyqpb+Ce5W3/OhS9xLX+uOSDGKwZdRGsfvYa6ZcE64EZ7y+2RRgN1LuuPslCf7agw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3n0/lSX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA96C19422;
	Thu, 26 Feb 2026 07:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091138;
	bh=zL14adUa/DsnYa4rgWsBjQbPFunEtFNT2bExglmLGaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b3n0/lSXd9m7viw+A9FUsH1klGLdW5/pKS/bLOjjKFJLH4XWELAF2C+zWvd2JbH7S
	 KGEshbHaynvtB73FOGbiuKUiCWVvmn5WIyfXrZaTS+5RLNbkBuh5l+Xvctaf2XebeK
	 Duu1vSej1g+LJVr1HE381Z3pxZ1G1PpH2eyrZxJxnIOlcfFWeqmmK74DVKOT+jp5bY
	 IBS7P0eRNtREnepIaA7wrahB1OaJrRxu7utWB05GMhptX890cpDphJfUw0f8Nj12LR
	 wqaNYO0QwJSFKptTKiiA2kxrhnzEKK31Uk/LyVAgoDzaGUF6zCUlgi07NZPx4yB13D
	 5SQMbvqBuh13w==
Date: Thu, 26 Feb 2026 08:32:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Gleixner <tglx@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lucas Stach <l.stach@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, s32@nxp.com, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, 
	Larisa Grigore <larisa.grigore@nxp.com>
Subject: Re: [PATCH v2 3/7] dt-bindings: arm: fsl: Add NXP S32N79 SoC and RDB
 board
Message-ID: <20260226-sly-fuzzy-parakeet-ea9fb2@quoll>
References: <20260225133858.8026-1-ciprianmarian.costea@oss.nxp.com>
 <20260225133858.8026-4-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260225133858.8026-4-ciprianmarian.costea@oss.nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268638-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0B60E1A1E1A
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 02:38:54PM +0100, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Add device tree binding documentation for the NXP S32N79 automotive SoC
> and the S32N79 Reference Design Board (S32N79-RDB).
> 
> The S32N79 is an automotive-grade SoC featuring eight ARM Cortex-A78AE
> cores organized for high-performance networking and gateway applications
> in vehicles.
> 
> Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 5716d701292c..415081423a30 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1827,6 +1827,12 @@ properties:
>                - fsl,s32v234-evb           # S32V234-EVB2 Customer Evaluation Board
>            - const: fsl,s32v234
>  
> +      - description: S32N79 based Boards
> +        items:
> +          - enum:
> +              - nxp,s32n79-rdb
> +          - const: nxp,s32n79

I believe these are ordered by fallback, so s32v > s32n.

> +
>        - description: Traverse LS1088A based Boards
>          items:
>            - enum:
> -- 
> 2.43.0
> 

