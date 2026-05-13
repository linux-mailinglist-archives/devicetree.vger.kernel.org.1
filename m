Return-Path: <devicetree+bounces-296544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id c63/IYXEA2ob+gEAu9opvQ
	(envelope-from <devicetree+bounces-296544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:23:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E8752B867
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FFF73012C60
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297CF1A2C04;
	Wed, 13 May 2026 00:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfHorSEP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0738419C542
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 00:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778631810; cv=none; b=hWxyykA6P8Dfp6/NH5bn1sOCvfbLOPOASCTQmLrxFJWfbfeBlOArmqsddenX7ham/2r6itwH/KHhp+keC9lB9/8RV9xRzMbtx/sDlYdy4uzJfMoEndLASwQH54iIzVy3TGILOxcKUCtDs8tI+PNNn25y95qbZzohq7gNfMAhTcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778631810; c=relaxed/simple;
	bh=NmtzeEdZBMEYedzDkMcvxtCLQNqrewsv9WxUUOy1esY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uEWDfX6OG+H00z6IyqWxA65+993dAsgXR5Z1EB7hSsDCwx5MCEUBuHfuSNZrHnH+W5DUhEKixvPGUQSTBF+rc61QRfOJyd0JdxE2UIA0RVPDof/Gbtuae/8ZCViUoc242sNYQERjt6nTpywXTVhNKQbx/6l+ViqZ3Gopg8A7tZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfHorSEP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CDBC2BCB0;
	Wed, 13 May 2026 00:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778631809;
	bh=NmtzeEdZBMEYedzDkMcvxtCLQNqrewsv9WxUUOy1esY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=CfHorSEPZAn0peKA3pFWpI+f5GzfNZweSdxNmbDcBu/mZ+8Y2CvGPMA0t1cY7f+hc
	 3Y+YSMR4lvmi5yc546EEooyJGlzYZWmZ0kW1cd7371hX452B/TitdjkDW9epO7wa3h
	 IPBYzSnfC+1rCjFUs+3tq235LsltVmYDg47MBIpak/DyC4puIrZ89SMZ7/39nQ5GCz
	 nJqKglVHgT2msUpdqCUxWNqKanCGrVoGbSB/mOS/3u1dLA7RMLhM60CfNiK3u/8rPX
	 gIWVMs+KJXCGSyMdnOimwz0cIZFY4c3eGYFs2YMS4L1opaNzAbLcN0xi3c6nlkUjLx
	 BSjSApJAQqKIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/9] dt-bindings: mmc: cdns,sdhci: add SD6HC support
 and PHY properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tanmay Kathpalia" <tanmay.kathpalia@altera.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511202132.5597-3-tanmay.kathpalia@altera.com>
References: <20260511202132.5597-3-tanmay.kathpalia@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 00:23:28 +0000
Message-Id: <20260513002329.67CDBC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D2E8752B867
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296544-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] clock-names and reset-names are defined exclusively inside the if:t=
hen: conditional block instead of the top-level properties block.
--

commit f399abc006829d70cb476a2bacc2fc4f092408b9
Author: Tanmay Kathpalia <tanmay.kathpalia@altera.com>

dt-bindings: mmc: cdns,sdhci: add SD6HC support and PHY properties

Extend the Cadence SDHCI binding to support the sixth-generation SD6HC
controller. Add new compatible strings, properties, and per-variant
conditional blocks to enforce hardware constraints.

> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Docu=
mentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml

[ ... ]

> @@ -141,6 +173,61 @@ allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: cdns,sd6hc
> +    then:
> +      description: SD6HC variant - use IO-cell and delay element propert=
ies
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: ciu
> +            - const: biu
> +        resets:
> +          minItems: 3
> +          maxItems: 3
> +        reset-names:
> +          items:
> +            - const: sdhc-reset
> +            - const: combophy
> +            - const: sdmmc-ocp

This isn't a functional bug, but does defining these properties directly
inside the conditional block violate the device tree writing schema
guidelines?

The documentation in writing-schema.rst typically requires properties to be
declared with their broadest constraints in the top-level properties block,
rather than exclusively inside an if:then: block.

Should clock-names and reset-names be added to the top-level properties
dictionary before narrowing their constraints here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511202132.5597=
-1-tanmay.kathpalia@altera.com?part=3D2

