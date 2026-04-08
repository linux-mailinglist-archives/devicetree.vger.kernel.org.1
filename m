Return-Path: <devicetree+bounces-285592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D22GsMD1mnbAQgAu9opvQ
	(envelope-from <devicetree+bounces-285592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:29:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D813B8326
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23A39303CE75
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F9C38F649;
	Wed,  8 Apr 2026 07:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYuepcQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2870238F636;
	Wed,  8 Apr 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775633195; cv=none; b=hHW4Ksq/VyPjIJ8+NJ1b77LomfPmkiRkNUI5fI6PpPClWsnQ6a87Y7hvmiPTH8pwQocy97gBdkHAWV2PzSmIskacfO0WMcw2RKG9R1e72fHguombgpVtT6Ld32VX57PrYaUmM6qQJmtsnB2PSd0hzH1Ys7ftwPAqWGw3xRTVNWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775633195; c=relaxed/simple;
	bh=4NBiShZ/h2rEvYcdoJUt8l7NgOqvM6MCvXi49uixGEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F8hFXLa7d1goqxgw+uwt8aT/Hn6q3Cigfqsnwy0i2vPuoGUj0uYgJjHCyzm80VKZKqp4ztITKDhyMQpBD3oDT5wcTPwwFuNHfDWH/hErr00eG8/AUaeRunef2AdbMJZYM1TuQW9jwXgRNxqD8FCtWUgMAF566IkMwiuIHoH+jgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYuepcQZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEFFDC2BCF4;
	Wed,  8 Apr 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775633194;
	bh=4NBiShZ/h2rEvYcdoJUt8l7NgOqvM6MCvXi49uixGEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SYuepcQZ742GyG0hrBPFyelTumZcGebfmbMOMSmRgwvaxAoGV7Pz7f/3QvWrITbvf
	 Z75LEspRe5aAFdTE7UAEJFP4BPO/HUeZ9nj1GSBag0gieYJWuyLnvFz0QLsXgEUovn
	 Hh4zcCoGv2VH0fXSnIdSntbVZSlXoxgNY+zjiD9pSAYD27s/B8d49WT1GEe4ku570q
	 MEBoyFv7Ne7Ae7lTVVQTY7/cfU3KNLGRqFKru4wxsqbPWybxThwimfpeSm6/4STcAs
	 zgry+KTGZBIuCu1QJMCTLK6v10y5iUaKREQlzRVT/lwPYqIgdd2h8imiNvPV3ChfyA
	 H6VHyRahyEDbA==
Date: Wed, 8 Apr 2026 09:26:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Biju <biju.das.au@gmail.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: spi: renesas,rzv2h-rspi: Document
 RZ/G3L SoC
Message-ID: <20260408-outgoing-provocative-quokka-8dc4a1@quoll>
References: <20260407145753.101840-1-biju.das.jz@bp.renesas.com>
 <20260407145753.101840-2-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407145753.101840-2-biju.das.jz@bp.renesas.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285592-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,glider.be,gmail.com,bp.renesas.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 03D813B8326
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 03:57:50PM +0100, Biju wrote:
>        - items:
> @@ -90,6 +91,33 @@ required:
>  
>  allOf:
>    - $ref: spi-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r9a08g046-rspi
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: pclk
> +            - const: tclk

Blank line here, but no need to resend just for that.

> +        dmas:
> +          maxItems: 2

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


