Return-Path: <devicetree+bounces-292367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFWPELU592kIdwIAu9opvQ
	(envelope-from <devicetree+bounces-292367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:04:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD194B571E
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:04:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93AE53008A5D
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 12:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30193A5E6D;
	Sun,  3 May 2026 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOJX/FAn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF72B39BFFE;
	Sun,  3 May 2026 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777809840; cv=none; b=DI79viKhf0WVFyOhzCInPQ+Wj9N4s2FiuD84jMm4+Dwem1RRo0N6MYLUpCpkCGGS/Y49wvOUXPLSAIvyVWDdxRQS3lJW+81K4n/eFeW4uTr5zKC5zkY7qjmcs4/eU3yFvgLP+d6gYc+9PRxNzGUOHLrbMMOFu1sivSq3OOJzXnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777809840; c=relaxed/simple;
	bh=eVnyWQFbsB7KzGskUtRfRN8z+c96n/+XlZV66LwJbOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ky5Ya+ccfuGkbJmS+JWNk45DCkSvC+EbfdasHUzQTHWBs9yFVPDXGCXZK+LvdWfrkrR0ZQKCMVoWkRvSrwQvmF+QpRFJw0DjYKHx3JwtA+swpWB0K0MspgPxsUyb+ZsFQJ6YM9vdHNYU2CqA8n6BfsFT1iZ6deeTsbOKWxBOuDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOJX/FAn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8EEAC2BCB4;
	Sun,  3 May 2026 12:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777809840;
	bh=eVnyWQFbsB7KzGskUtRfRN8z+c96n/+XlZV66LwJbOo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mOJX/FAncCRAAHItHEVRwtr90qs2qwPuDpUPa5jorzXyPsGXEeyqQSxX75V/rQ5gw
	 QhL/ndT7dPUyaRohXMNvwPMKOABoF3eYsFP5PUM22ogqlC9sYJnDXr79z0uuqb2rRV
	 0vnUDtTSILBIrm+9v49VQCjTbun4wEkKzuhRiZMrWDG0sIqRv3j/uyhPVisgshaisv
	 LmCxF10KlA5psh1RaHTd4Hy4tpEK0GTVviD7J74ZJ2MzxxTAtXDgoQoaiXGx/7dyYk
	 JYtggvyRzNf7lPPtViS9bEkWK9iaccrwpqviLYPI4JjBocNeTiB/U4aCYg1nESty+g
	 LnYwwG9rh6huQ==
Date: Sun, 3 May 2026 14:03:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: hehuan1@eswincomputing.com
Cc: linux@roeck-us.net, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, luyulin@eswincomputing.com
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: Add Eswin EIC7700 PVT sensor
Message-ID: <20260503-brave-bullfinch-of-innovation-942914@quoll>
References: <20260430064107.1598-1-hehuan1@eswincomputing.com>
 <20260430064444.1615-1-hehuan1@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260430064444.1615-1-hehuan1@eswincomputing.com>
X-Rspamd-Queue-Id: 8BD194B571E
X-Rspamd-Action: no action
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
	TAGGED_FROM(0.00)[bounces-292367-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13]

On Thu, Apr 30, 2026 at 02:44:44PM +0800, hehuan1@eswincomputing.com wrote:
> +
> +  label:
> +    enum:
> +      - pvt0
> +      - pvt1

No, label is user-visible name. Can be whatever user decides.

Please read writing bindings - instance IDs are not allowed.

> +
> +  resets:
> +    maxItems: 1
> +
> +  '#thermal-sensor-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - label
> +  - resets
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    pvt@50b00000 {


Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
If you cannot find a name matching your device, please check in kernel
sources for similar cases or you can grow the spec (via pull request to
DT spec repo).

Best regards,
Krzysztof


