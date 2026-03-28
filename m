Return-Path: <devicetree+bounces-281966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNXLKP3ex2kfeAUAu9opvQ
	(envelope-from <devicetree+bounces-281966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 15:00:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F50934E9AB
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 15:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF57A3003805
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 14:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D8B14B950;
	Sat, 28 Mar 2026 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pdw7szfI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34E9148850;
	Sat, 28 Mar 2026 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774706423; cv=none; b=dDxMZ6UoGilEypndly34Safc1d9UnbYAzsQFWf6ggqQBx/8LZhhFafTm9iZPk9JkFsPga5K0RiKtbFZQbrFNbZUalbs+3jfldvtqPdAbuO2Qw8cFis1DtryvJfL5XMatApNJB6H2U3ItMYFRMiSlrAI0t562AmqPR3u8BdIIDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774706423; c=relaxed/simple;
	bh=JHRgANjYlG59Tmy8JU0d+EGviW+veg92wQFCjbKyeYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rx69fVOcghh6YSzYEP7pumz6jzn4FYqkwVPFj+28c47PTse5WwNzIEHZHnWpfMEiAwHXWQkOTx4vKI4+5o2nCp42lVIgE8daaDJK2vQIwuk+rVWhq7Fo4Ig5K/1u2kmIwReeWlzHUHEuNsr3q4NMOOmr0bxYpLP/+GbjgEy7PKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pdw7szfI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7746C4CEF7;
	Sat, 28 Mar 2026 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774706423;
	bh=JHRgANjYlG59Tmy8JU0d+EGviW+veg92wQFCjbKyeYQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pdw7szfIMilLBa1KjFEH+K9moemQQBZavrASwgl665i90dRNijfVFBx2RizqEzE6q
	 EWVSCxBgIDoUmvwVvkE4qJi/iiZs9DWTGoZAT5sVz+Nq6SmzrUJq+vUTycjsuysfck
	 Xwa2pT0Wa4KWfOGRpCpXbXhbOOFACtIyxmqNFRn7eg+JV7eK46xyUN9Vf7Yc7mTvyy
	 gXfeOTha0qX8Ljg542bIxd7PrSEBLpCfNhFO+81v57Yf/cC7ti7svwPsDjO/pjh/V5
	 7PtVgyPYhERs2hnlF0Jl1e+23CCfxJrneaE47ILWl2yi9dilMEioCRedIkRX9H+2zf
	 KfnNDjzUAz6Ig==
Date: Sat, 28 Mar 2026 15:00:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: hpe,gxp: Add HPE GSC platform
 compatible
Message-ID: <20260328-chirpy-sturdy-emu-9eb0cb@quoll>
References: <20260327174445.3275835-1-nick.hawkins@hpe.com>
 <20260327174445.3275835-2-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260327174445.3275835-2-nick.hawkins@hpe.com>
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
	TAGGED_FROM(0.00)[bounces-281966-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url]
X-Rspamd-Queue-Id: 9F50934E9AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 12:44:43PM -0500, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the HPE GSC ARM64 BMC SoC compatibles to the existing
> hpe,gxp.yaml binding.
> 
> The initial board compatible is hpe,gsc-dl340gen12 for the DL340 Gen12
> server platform.
> 
> Add the arm64 DTS path to the existing ARM/HPE GXP MAINTAINERS entry,
> renamed to ARM/HPE GXP/GSC ARCHITECTURE.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  Documentation/devicetree/bindings/arm/hpe,gxp.yaml | 7 ++++++-
>  MAINTAINERS                                        | 3 ++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/hpe,gxp.yaml b/Documentation/devicetree/bindings/arm/hpe,gxp.yaml
> index 224bbcb93f95..6f057cd58571 100644
> --- a/Documentation/devicetree/bindings/arm/hpe,gxp.yaml
> +++ b/Documentation/devicetree/bindings/arm/hpe,gxp.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/arm/hpe,gxp.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: HPE BMC GXP platforms
> +title: HPE BMC GXP and GSC platforms
>  
>  maintainers:
>    - Nick Hawkins <nick.hawkins@hpe.com>
> @@ -18,6 +18,11 @@ properties:
>            - enum:
>                - hpe,gxp-dl360gen10
>            - const: hpe,gxp
> +      - description: GSC Based Boards
> +        items:
> +          - enum:
> +              - hpe,gsc-dl340gen12
> +          - const: hpe,gsc

What sort of ordering are you going to use in this file? Usual choice is
the fallback compatible, but I see you have chosen something else. That
is fine, just keep that else sorting in the future instead of adding to
the end.

Best regards,
Krzysztof


