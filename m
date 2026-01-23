Return-Path: <devicetree+bounces-258777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K9OCo8vc2mTswAAu9opvQ
	(envelope-from <devicetree+bounces-258777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:21:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 826DB72615
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC7E730137A8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA6E33B6E8;
	Fri, 23 Jan 2026 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnW4rwCy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B27F3382EB;
	Fri, 23 Jan 2026 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769156310; cv=none; b=g+HKi/IPpegdBZLjRItWtnSu/hIqPKtLYcyjrGy+Bvlt04oDS59klaSWIhiO8lpRc8g3q4FtLyCXceRxAwFm2w/n33Ys/8jx5dKE0d7Bfn5SJXhyx2wk5quV8fGAIN5TktqRlfQolTHuOvXfe3pgDMn0Vl88rFhh9qvNuqtjODM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769156310; c=relaxed/simple;
	bh=+y8AGNIIHzHrt7WpGcWS9I/hAHRjyxzk3d7N2WLe8hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dpr90CXRAcOw6/m2P2UT5ogL6HX4i2k6R2Guh2gGEpoeyrZTef6jfWqnHLitQj/eTZRxihgS13DWG7pOjuBNVzOKvvhtA3cbp3YrYcYcWqmicxWDBkgydD3OXNcwl2QkoCl2FV5T93Ngyg1Yk4q1vDtFgFINQ6PuhAz384eg/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnW4rwCy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F26C116D0;
	Fri, 23 Jan 2026 08:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769156310;
	bh=+y8AGNIIHzHrt7WpGcWS9I/hAHRjyxzk3d7N2WLe8hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PnW4rwCyM5RBADoRptzsPYfRTybn/TRTez25NwBwtOsQr6E7scZ9i9YnFwG3y8Iet
	 PCiFF6tdBUuI6Hzqt5I/+Jt7Em9aJLswe+pZ26gA5pUC7Pi4w8xSQcY6B9z744tfbY
	 muBKGJTo7uL7qTq4zz2ThBklFl98hfv6ajwqGsDfww7iQvTp4mgELzGzzsSj++spvH
	 ShW5dKUDGk6JRN7We+WUTbjoBZkgg/aqdGyRSORA99bCaJfKgCDn/oYN3iwbWhfcFB
	 3YWU4hRJllq3iD0LZ6HIA1cV06hwo+4LwXtdgswnCWBgptj+6Rv6lNc5SDpNlm7wni
	 cK6vcW9Gs7+mw==
Date: Fri, 23 Jan 2026 09:18:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, fenglin@eswincomputing.com
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
Message-ID: <20260123-quantum-beneficial-rat-acb17a@quoll>
References: <20260123024823.1612-1-luyulin@eswincomputing.com>
 <20260123024936.386-1-luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260123024936.386-1-luyulin@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258777-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 826DB72615
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 10:49:36AM +0800, Yulin Lu wrote:
> +  eswin,tx-amplitude-tuning:
> +    description: This adjusts the transmitter amplitude signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +        default: 0

I think defaults should be specified like this:
https://elixir.bootlin.com/linux/v6.19-rc5/source/Documentation/devicetree/bindings/sound/adi,adau7118.yaml#L54

> +
> +  eswin,tx-preemph-tuning:
> +    description: This adjusts the transmitter de-emphasis signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +        default: 0

Same here

Best regards,
Krzysztof


