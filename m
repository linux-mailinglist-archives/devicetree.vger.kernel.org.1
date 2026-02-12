Return-Path: <devicetree+bounces-264919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHdKLWyCjWkw3gAAu9opvQ
	(envelope-from <devicetree+bounces-264919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:34:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D31F012AF58
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 21F97300F1EC
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93265275844;
	Thu, 12 Feb 2026 07:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6Veu8Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6953C4C81;
	Thu, 12 Feb 2026 07:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770881639; cv=none; b=tnYXyPjeGx9lnAEewsIXhdDfkzTE7JhtiY6a2n0dSqVRNi0NLo0B59VnzHN0seqm+25m8UxcT81mwH658LS9hIcIbojvxAJO2833v4sRVQqL0S/kCgrxWeOIbpJ1l7vDaBosiORgPqTUMDm0jOxvPwYYJqvQCKuKL2iac6ZIYBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770881639; c=relaxed/simple;
	bh=RjZLQwqHGUM3fe6f8/YcpBJlzL94xf9Sua0ZtzxuMRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=be/q3LfCMfPjg/13jUh9BLXz3oMnstbqy3fjrsScHtUXx/Qiweyi1sg10gTOzJhL76p7/+mpl5LLerLAy60wFJ7SKnwuqs/dVT+UFDwC1TiRAQi57S3SCkf9RT+BL+ItfkcZlbX/88++OmCg7UIyXtdyzOcuUsJ4W+TuZ4cv+/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6Veu8Xg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62747C4CEF7;
	Thu, 12 Feb 2026 07:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770881638;
	bh=RjZLQwqHGUM3fe6f8/YcpBJlzL94xf9Sua0ZtzxuMRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L6Veu8Xgpcigo7tkvuLV1NZppBh/7mOViq82pStgY/f1BARcv/o5rLl6rZShnl+m8
	 5DkxZGlWfUrLUrUssmMmXfaKCtjIjNd1qPvmPxCUDCohgoRcEezFsk1tiTR8NgVaBA
	 RoFlGtcvE4ccg5Qy0Kp58PLeD8TZ8BVAt0gsTE3yqPsRaOivE/p0t5FKtFGWE+7YuQ
	 lI9mw6AtLbXzCVyNZ+zX9PuPyKIfRiVbL4pPlq/+Z4k7eSWSHSLqNzP4dQGg61/QzR
	 umkfaAccgGQidB6X8tDaosWBF+z4Rv1FqvVOm9KsRWrdW84k1FJUWzSP4IC5mh/AcD
	 /MZr2tDMOYcPw==
Date: Thu, 12 Feb 2026 08:33:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>, Pablo Martin-Gomez <pmartin-gomez@freebox.fr>, 
	Tianling Shen <cnsztl@gmail.com>, Pratyush Yadav <pratyush@kernel.org>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alvinzhou@mxic.com.tw, Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v5 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
Message-ID: <20260212-white-numbat-of-variation-cde4ae@quoll>
References: <20260211100553.907585-1-linchengming884@gmail.com>
 <20260211100553.907585-2-linchengming884@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260211100553.907585-2-linchengming884@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264919-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[bootlin.com,nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D31F012AF58
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 06:05:51PM +0800, Cheng Ming Lin wrote:
> diff --git a/Documentation/devicetree/bindings/mtd/nand-chip.yaml b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> index 609d4a4ddd80..2fcbc4b73e95 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> @@ -67,6 +67,14 @@ properties:
>        the secure regions present.
>      $ref: /schemas/types.yaml#/definitions/uint64-matrix
>  
> +  nand-randomizer-enable:
> +    description: Enable the randomizer feature.
> +    type: boolean
> +
> +  nand-randomizer-disable:
> +    description: Disable the randomizer feature.
> +    type: boolean

Read again feedback from Miquel - two EXCLUSIVE properties. You miss
"not" with "required":
https://lore.kernel.org/all/20230118163208.GA117919-robh@kernel.org/

Best regards,
Krzysztof


