Return-Path: <devicetree+bounces-268637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM71JNT2n2nkfAQAu9opvQ
	(envelope-from <devicetree+bounces-268637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:31:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1381A1DBD
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C020F304F208
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0397E29AAF7;
	Thu, 26 Feb 2026 07:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSrPivD2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AF81DF74F;
	Thu, 26 Feb 2026 07:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091086; cv=none; b=kewC5xlS4cF7wqZ5Giwr2ob5HNO9MPNfvNgi5OQQm2PnX0PGlitOGQd+6lhZQWlmDcfm99m2v3jI1piAQTX4wmyV8/9V4+Q+HRtymbI9Qnn5sKRkL3OcvauqRvZDVq5Q+IXddRzHjuVi6dr2ZsCObdjdBWju0qC6kvKjuVPgU+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091086; c=relaxed/simple;
	bh=9IZ0Ru3ONraj9lwI3xmbHNYYyo2HE6QKxe5G+TySMiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q9gYUUdYjeM54+5MeeTzlBAKxrjJRYdJa5iUdf2bcuEtuEx5L+L3FkCE0DBch00BelrRMgMEcWOrImEtgE6xkAkTenfdKQ2KV+u2vEal6BhNfrQzP/TM7kUZWMRugK9+LwVghkXWcTpuocwAhDFXAUNlx0omlqvZrLGZnfghWPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSrPivD2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2FF1C19422;
	Thu, 26 Feb 2026 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091086;
	bh=9IZ0Ru3ONraj9lwI3xmbHNYYyo2HE6QKxe5G+TySMiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LSrPivD2rNDa5UBdHMii/B4FzAa6gdK8GLro+MyczmENoFUrU1u3nEFj+LaG/wAt/
	 lrZlhFl9tVVE8i8S3+PhimZK8h6WvSL1rWc4mF3mJ37NRnhUPhZiHATq7MNDCpt9ph
	 FYachLfnJE4QyWKSRYJ0AbO6hRAFTdXW3B+bE2f9C15bk7FzZeQfSE9xroXIZOYgYQ
	 Q+9e2jti294AaqS+6CabYsQGzAA++hj1OdBPdCeQfXO9oG83BOHEc0On4+2282m+Dj
	 5U5uGRRnAecRkc+r30B89PrqSILHuBZu8IZqp6XURw2VbV8haakl+U0oTXZCYAuD1e
	 9lNYZ74RzCIIg==
Date: Thu, 26 Feb 2026 08:31:24 +0100
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
Subject: Re: [PATCH v2 1/7] dt-bindings: interrupt-controller: fsl,irqsteer:
 add S32N79 support
Message-ID: <20260226-ingenious-shiny-axolotl-e0e6d2@quoll>
References: <20260225133858.8026-1-ciprianmarian.costea@oss.nxp.com>
 <20260225133858.8026-2-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260225133858.8026-2-ciprianmarian.costea@oss.nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268637-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EA1381A1DBD
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 02:38:52PM +0100, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Add compatible string for the interrupt steering controller used in NXP
> S32N79 SoC.
> 
> The S32N79 SoC differs from the i.MX version by not implementing the
> CHANCTRL register, but otherwise maintains the same programming model and
> register layout.
> 
> Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> ---
>  .../devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
> index 5c768c1e159c..caf3e4a1f26f 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
> @@ -22,6 +22,7 @@ properties:
>                - fsl,imx94-irqsteer
>                - fsl,imx95-irqsteer
>            - const: fsl,imx-irqsteer
> +      - const: nxp,s32n79-irqsteer

So that should be part of enum with the first entry.

Best regards,
Krzysztof


