Return-Path: <devicetree+bounces-280425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LsfHQbNw2lKuAQAu9opvQ
	(envelope-from <devicetree+bounces-280425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:54:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6370932444D
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 68C2230013A5
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB523CEB85;
	Wed, 25 Mar 2026 11:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj5B7Tex"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29292396D2E;
	Wed, 25 Mar 2026 11:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774438779; cv=none; b=I73I8kFwHsxIvmY65XEgW0ia7gKHsSE/N9nvmbRN1EBSZMpm8OALo0awDTGi61+qAffH2p6KGjktEL6VXGRohGvTCHYyI0Vdb2EzyTNYronuA7dhXZTdpNoXjaC+pvB4qD6y2Bs7X3Nngj7ZenTe2BBGbRFoRB4zG/JtfhpPpiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774438779; c=relaxed/simple;
	bh=HqQGah3jFHWYTLGI1EMdEZizLPIWFhT2k/UK9jothyA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jgUGe/awK5yGinfV+6IWXPHoMpkbUVEpi7qJ6JTh/cOri22meg+z6SNNJPG02gzLsMQ4ICqyiDuF/veYcKt54StQvu2jsjnZwLO8YN9U/U43eyVEH3dD46KH07QOyUf5LxNPyz2nUTjEFac+IjeX0G0brF6LfPMU9znll3QUPt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj5B7Tex; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D9AC4CEF7;
	Wed, 25 Mar 2026 11:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774438778;
	bh=HqQGah3jFHWYTLGI1EMdEZizLPIWFhT2k/UK9jothyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tj5B7Tex5cvNWBKZtG3QpU8cpmdYtpmXLMt4HRcNnU07dUfNKXpBcQmeiJN/Bh79C
	 KQCcMMQXIpjhFs7NRM/0wWxuPiDldulelCyHRLZGPo9sxgU6c0NiaKzNo36T+KAABh
	 Nu1Lhb5R9Q5FfYoJAusjE+Cqe2FhF2t9ysWlDDrHWHiW+vGtst2Ujrs8/eXOgtXXnT
	 VwE8tDjBhC7QlvpU4kfN3ENh3trlGqM2Em6TcL+/OxDxUWMhj6TfFLqfrVfG3B4CpC
	 M43XRdeNBeCYIuXIXz+AVbDWymzg7U6rFNyd0UOW9nnYsynd3uVxV1JvQJPXdqEPHI
	 88MUfs9a7zHWw==
Date: Wed, 25 Mar 2026 12:39:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gopi Krishna Menon <krishnagopi487@gmail.com>
Cc: sre@kernel.org, robh@kernel.org, krzk+dt@kernel.org, lee@kernel.org, 
	conor+dt@kernel.org, daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: reset: st: convert to dtschema
Message-ID: <20260325-speedy-amethyst-beaver-08a3a4@quoll>
References: <20260324155935.183952-1-krishnagopi487@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260324155935.183952-1-krishnagopi487@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280425-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: 6370932444D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 09:29:30PM +0530, Gopi Krishna Menon wrote:
> Convert the STiH4xx reset controller bindings to DT schema.
> 
> Suggested-by: Daniel Baluta <daniel.baluta@nxp.com>
> Suggested-by: Dhruva Gole <d-gole@ti.com>

Both suggested you to write this patch?

> Signed-off-by: Gopi Krishna Menon <krishnagopi487@gmail.com>
> ---
> Note:
> * This patch is part of the GSoC2026 application process for device tree bindings conversions
> * https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings
> 
>  .../power/reset/st,stih407-restart.yaml       | 31 +++++++++++++++++++
>  .../bindings/power/reset/st-reset.txt         | 11 -------
>  2 files changed, 31 insertions(+), 11 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
>  delete mode 100644 Documentation/devicetree/bindings/power/reset/st-reset.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml b/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
> new file mode 100644
> index 000000000000..d7adbc00f5c3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/st,stih407-restart.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/reset/st,stih407-restart.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ST SW reset controller
> +
> +maintainers:
> +  - Lee Jones <lee@kernel.org>
> +
> +properties:
> +  compatible:
> +    const: st,stih407-restart
> +
> +  st,syscfg:
> +    description: phandle of the syscfg node
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +required:
> +  - compatible
> +  - st,syscfg
> +
> +unevaluatedProperties: false

additionalProperties instead


Best regards,
Krzysztof


