Return-Path: <devicetree+bounces-258526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNo8LglYcmkpiwAAu9opvQ
	(envelope-from <devicetree+bounces-258526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:02:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1FE6A9F0
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A63E0304C070
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89075279DB3;
	Thu, 22 Jan 2026 16:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxrbaC9M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9069E3D9F2E;
	Thu, 22 Jan 2026 16:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769098262; cv=none; b=ncgphvyGYWDdL+2H/lxJKCLzXaZ2koNLYZqjDihPQK1xWygDiH1ERe5gXaMJMC8Ugq2h0O49Zu8HdCUZgt3gNYy4w5yhS7A5t35QmmoNr/J69oL43wlfmT5AW+AT2v4uxCTSepQ+4NKqMfV6R+HcfGoYeiWeF3lD1dC4hEY1zcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769098262; c=relaxed/simple;
	bh=uoqbFu6fxFkaCay7ZwtoJ4iqA5ISMgbyw8FPHXxPkkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZAE7LAW0nJhcDHDChAp7bSoOvPn+Ym+lTri83cSf2cXEiIUKtn+B3ifKE/Xuw57C3N4B8l1KkIcTm5GdNCWtQbDMYR8DRgbtgQg+cVtWZhUgr5HR5PIxK+Tdz5WWwqyn5wCtrWHv1PUySFR8VI8oGim44ZRrnIlzyQFzHX3/oFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxrbaC9M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F05DC116C6;
	Thu, 22 Jan 2026 16:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769098261;
	bh=uoqbFu6fxFkaCay7ZwtoJ4iqA5ISMgbyw8FPHXxPkkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nxrbaC9Mmy9pTQ41SpNxEXBFfoMqh0SU9nEyyy1ejW4wVjwlSFOwDN+3/LjwzKuIa
	 ErzfhrUSqImoma0lpuss7mDupHosQJlVXM2LUZxiA4IetsGFJ5jJP3wnsp/WhHDBi2
	 tQpusZm0xJi0/Vn4V0x9JRmByGKcxJXKrtE0T70UTrm+JIC1X3XEtYUA/4ZsWTdeIj
	 xsYpauoh/sQVwLyHF25GTGE2F6v79kB7L+XvbRXaLK2yyZj1cNnrtTyZIKRjEVy2CI
	 gaXrAEskKAqaFm6HYwNxYjlg8YPzEvoaUSp7AUGX6L+GDFor81cpJM2ZEoTMwYe+HR
	 tDXw3TtE5p10Q==
Date: Thu, 22 Jan 2026 10:11:00 -0600
From: Rob Herring <robh@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>,
	Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
Message-ID: <20260122161100.GA2223008-robh@kernel.org>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-258526-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF1FE6A9F0
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 05:43:43PM +0800, Guodong Xu wrote:
> Add supply properties that match the P1 PMIC's actual hardware topology
> where each buck converter has its own VIN pin and LDO groups share
> common input pins. Supply names are defined according to the pinout
> names in the P1 datasheet.
> 
> This allows different boards to describe their actual
> power tree connections in devicetree rather than hardcoding supply
> relationships in the driver.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
>  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 58 +++++++++++++++++++++-
>  1 file changed, 56 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> index c6593ac6ef6adb72fc48af570dc13fc9edf77ccb..abdc93b9a67b1872c8fe6955abd950622a0b69e8 100644
> --- a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> +++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> @@ -27,8 +27,41 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> -  vin-supply:
> -    description: Input supply phandle.
> +  vin1-supply:
> +    description:
> +      Power supply for BUCK1. Required if BUCK1 is defined.
> +
> +  vin2-supply:
> +    description:
> +      Power supply for BUCK2. Required if BUCK2 is defined.
> +
> +  vin3-supply:
> +    description:
> +      Power supply for BUCK3. Required if BUCK3 is defined.
> +
> +  vin4-supply:
> +    description:
> +      Power supply for BUCK4. Required if BUCK4 is defined.
> +
> +  vin5-supply:
> +    description:
> +      Power supply for BUCK5. Required if BUCK5 is defined.
> +
> +  vin6-supply:
> +    description:
> +      Power supply for BUCK6. Required if BUCK6 is defined.
> +
> +  aldoin-supply:
> +    description:
> +      Power supply for ALDO1-4. Required if any are defined.
> +
> +  dldoin1-supply:
> +    description:
> +      Power supply for DLDO1-4. Required if any are defined.
> +
> +  dldoin2-supply:
> +    description:
> +      Power supply for DLDO5-7. Required if any are defined.
>  
>    regulators:
>      type: object
> @@ -50,6 +83,15 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> +    / {
> +        reg_vcc_5v: regulator-vcc-5v {
> +            compatible = "regulator-fixed";
> +            regulator-name = "vcc_5v";
> +            regulator-min-microvolt = <5000000>;
> +            regulator-max-microvolt = <5000000>;
> +        };
> +    };

Don't put providers into the examples of consumers.

Rob

