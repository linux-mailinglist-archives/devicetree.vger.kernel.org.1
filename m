Return-Path: <devicetree+bounces-257781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAuwH/CIcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 101E8533D1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 76DDE521CF7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6912A335556;
	Wed, 21 Jan 2026 08:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ1vmbG+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299DF2DB7A8;
	Wed, 21 Jan 2026 08:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768982639; cv=none; b=rmNVYYbmexxxmxuQFmYBUyWE+kkBSiOUxT4mm1ht2byZdgqja4MehZaOikJkmfAqt52uh21o1CV9q6sJ+MiXzgkSQdAT3QTPQNF/AK10oNntqw+TcshJh8zQnHoxVKNtrUhWoSkrDsI99WNzoDfyZoHZz9Z2ULOZcupt4O5KTKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768982639; c=relaxed/simple;
	bh=PsqDsmtUvSMoAGPchw0ANb9blEgv2FuLIEh2Q6T95uo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwfRLIewEKqa6LNEbD1JMb8SySfAsrTWWUTpRjvqS8uIts5+ck5exdNW1lYQHavgwIu5qhJlPJ1C6klB1ln7gx66cu0CM/6tRDYLQ2Od4GE6nLu+Os0rNCVzbLKvlv6aHdEwLSbAzzI6xq039XRoLE39oNIjocnCGW0yJe3Rg8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ1vmbG+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E830C116D0;
	Wed, 21 Jan 2026 08:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982638;
	bh=PsqDsmtUvSMoAGPchw0ANb9blEgv2FuLIEh2Q6T95uo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nZ1vmbG+beB2iwfhyj3XVTL2l++mCmI6l5ZmExwsa68lW58lTMGsTDs6Xs+ZkM6oy
	 Og7ixvumC6seNlVkVoEBb/17yi/LiSgNvXmuCkRw6rtwKL+atFAfvaPCNZpzLog7q1
	 YDFBy3X69Liig5y8ZQy8ResbG6BcbU21IVgsfcLmDSjvmI/cQ3g02sqjxZpguNdKjC
	 OndH9JSnSqgOMh7/uw7/5d3igi6NzPxuluvUmUkxQQJyoKVrpR35g3GbSaDGQzOiFx
	 ItIpu/Qn7FJrpCpj+xKt7Xbhlkgk2ODhP6QDdS1xSDJeyfhExvHl77ubmICS9ntTE+
	 0pCtHucBM4DcA==
Date: Wed, 21 Jan 2026 09:03:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com, 
	nicoleotsuka@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, 
	tiwai@suse.com, linux-sound@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/4] ASoC: dt-bindings: fsl,sai: Add AUDMIX mode
 support on i.MX952
Message-ID: <20260121-careful-beige-iguana-c32bbd@quoll>
References: <20260120035210.1593742-1-shengjiu.wang@nxp.com>
 <20260120035210.1593742-3-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260120035210.1593742-3-shengjiu.wang@nxp.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257781-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 101E8533D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:52:08AM +0800, Shengjiu Wang wrote:
> The SAI can connect to AUDMIX, but AUDMIX can be bypassed or not on
> i.MX952, so add 'fsl,sai-amix-mode' property for this feature, with
> this property present, then SAI driver will try to config the setting,

I am still not sure this is hardware static property. You say "can be
bypassed", so I imagine same board could have it bypassed or not,
depending on use case (so mixers).

> fsl,sai-amix-mode = <0> is bypass mode, fsl,sai-amix-mode = <1> is
> the AUDMIX mode.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,sai.yaml       | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> index d838ee0b61cb..7808c324eebc 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> @@ -133,6 +133,13 @@ properties:
>          - description: dataline mask for 'rx'
>          - description: dataline mask for 'tx'
>  
> +  fsl,sai-amix-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Anyway, string is more readable.

> +    description:
> +      The audmix module is bypassed from hardware or not.
> +      Bypass AUDMIX(0), AUDMIX mode(1)

Drop last sentence and use enum [ bypass, mode-1-whatever-this-means ]

> +    enum: [0, 1]

What is the default? What is the meaning of lack of this property?

> +
>    fsl,sai-mclk-direction-output:
>      description: SAI will output the SAI MCLK clock.
>      type: boolean
> @@ -180,6 +187,15 @@ allOf:
>        properties:
>          fsl,sai-synchronous-rx: false
>  
> +  - if:
> +      required:
> +        - fsl,sai-amix-mode
> +    then:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx952-sai

There is no such compatible.

> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.34.1
> 

