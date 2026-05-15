Return-Path: <devicetree+bounces-297984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFt1G/bUBmomoQIAu9opvQ
	(envelope-from <devicetree+bounces-297984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:10:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEC054B14C
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36E79307022A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858893FADE0;
	Fri, 15 May 2026 08:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPsx+p5m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ADC3FA5DF
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 08:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832448; cv=none; b=ND5B3jA9um6JupTizhWtaLc4xN5+QrQQxA1E4vCc4SkMHwmmB7gBc/8pIEpXDu0FDmFp8m//lSwncseR8bMDr9CzaS63pMSJguYCXWVaCcpTiFKku9iDLsBFclG6ArMTP+3l0vNmbLsakX0cTJoR4jJRQjHCwkoiphshPFZ2/i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832448; c=relaxed/simple;
	bh=FWEZ6zmtCgVhUVIfIhpxRAe3MC0K98sdNAHniA2jUhE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hGDmW2/aRqQpSCEA3YjJ5j/EbkPu58+oVjrHpwzaUPlcAuMr0SGv7TvqEO7ux+YXVMuD15K2wYW5RjNOF79xpxY5pnK+koEkx9givozPCfsJpe/YMLArnLciI0hThHBWCIQQWPoHgZQ9kbTezv9rhgJ5c0tIN5re+lyINz7swFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPsx+p5m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD5CDC2BCB0;
	Fri, 15 May 2026 08:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832448;
	bh=FWEZ6zmtCgVhUVIfIhpxRAe3MC0K98sdNAHniA2jUhE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jPsx+p5mUr0PSGW+7ywjb4k0MANtr6FYx3a3YeI4lATZzD+zCNApPSK1FLan8MZEu
	 PKFKiWtJ/XWBNJx60As3//NeP4/UiS/sw75GsR2yLvi9Cw8sfv0I1BIHW8hG3wzNkL
	 6JJhneDHzsoBvk+HWL9BWcjXWbDUrq5xLA/W4tq6VLK2abdP9ys8LYi4Cw7Hj33j8s
	 tsVwDXzmfexNkaEgVLGjDON/o6hP5/KW2cuYR5s2c3v33k16szIDbc7cafpizjpjWx
	 x49xrnYQzt/MkWMVPIjGtgm+4OurcVDcNTGbmqSa85jnc34I8VEevGPfWqIs+Zci6M
	 73wjVC05DPJKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: iio: adc: Convert xilinx-xadc
 bindings to YAML schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pramod Maurya" <pramod.nexgen@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260515075736.172172-2-pramod.nexgen@gmail.com>
References: <20260515075736.172172-2-pramod.nexgen@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 08:07:27 +0000
Message-Id: <20260515080727.BD5CDC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: DDEC054B14C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297984-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The channel subnode 'reg' property is missing the 'items' constr=
aint block to restrict the valid channel numbers, contradicting the commit =
message.
--

commit fd4f54c07b6e4f122c96ac428cd51a740a0e5ca2
Author: Pramod Maurya <pramod.nexgen@gmail.com>

dt-bindings: iio: adc: Convert xilinx-xadc bindings to YAML schema

Convert the Xilinx XADC and UltraScale System Monitor device tree binding
from the legacy plain-text format to a YAML schema, enabling automated
validation with dt-schema.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml b/D=
ocumentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> new file mode 100644
> index 0000000000000..06a0ce4983523
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
[ ... ]
> +    patternProperties:
> +      "^channel@([0-9a-f]|10)$":
> +        type: object
> +        description:
> +          Represents an external channel connected to the ADC.
> +
> +        properties:
> +          reg:
> +            description: |
> +              Pair of pins the channel is connected to.
> +                0: VP/VN
> +                1: VAUXP[0]/VAUXN[0]
> +                2: VAUXP[1]/VAUXN[1]
> +                ...
> +                16: VAUXP[15]/VAUXN[15]
> +            maxItems: 1

The commit message states: "Fix reg constraints inside channel subnodes to =
use
maxItems and an items block rather than bare minimum/maximum keywords which
are silently ignored on array types."

Is the items block missing from this property? Without an items constraint
defining the minimum and maximum limits, the schema might accept invalid
out-of-range hardware pin mappings. Could an items block be included here to
enforce the 0 to 16 limits?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515075736.1721=
72-1-pramod.nexgen@gmail.com?part=3D1

