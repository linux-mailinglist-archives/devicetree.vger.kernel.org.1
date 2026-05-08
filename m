Return-Path: <devicetree+bounces-294610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBLEKw0a/mmQmwAAu9opvQ
	(envelope-from <devicetree+bounces-294610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 19:14:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C7E4F9D67
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 19:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B7AD630055BB
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 17:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB8F3F787F;
	Fri,  8 May 2026 17:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERLt8GJd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC19E3ED103
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 17:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778260492; cv=none; b=ePH5lyWXkEeT8sSOfrcpFr/CnAZvqII8p3l9Sl03y9WRwULPzhLP3ac6xBN3EbxGiYzGGKjNOZXlhZsYe5c7dzTTKtHjM/9N6UzJ8jIsqxybjbXN8krUUiQRAkkETgeOO8glElZDVcJWQ5+vQsQ6IBQWmgnrDlPA2sn7CcC5gMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778260492; c=relaxed/simple;
	bh=EBHlR2F6xylFu01LxMkiEDytAytCgwEoO1eSyDjYG+8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jp94VMhSe37Fya/gP7PHlsJ7NBDioGtCwk8xNtYPKBb2I5GNX7membnAhfKipan/cckHVBcITUw3GOmzCQgTqpUtxi3Li+M5FhJfCXvZPHt+hLVBi3MnMQq+mypwybug9IDUAonS5luxf14xpY+lNtK9ew2vQVnCiJtAE2XpHWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERLt8GJd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62106C2BCB0;
	Fri,  8 May 2026 17:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778260491;
	bh=EBHlR2F6xylFu01LxMkiEDytAytCgwEoO1eSyDjYG+8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ERLt8GJdVirF/1Ez1g8bcOb2/zdq9iQbjun8VsNuHdxYsB1mg4cZ+xpwXN5i5Ziov
	 sQbNDJxhp/SOPcFynfAmf2is2AYOSAEZh8Y86dHrYo9FYcHnzcG7p3PvTeP3L1JoWW
	 ZOi5Kz4obXZjcUGAviqW33bYYF0kqMgLUCduxhly3WRbsVgaC+Hlrpcb+rMQ+g/ejF
	 eWick5ntQBGaIOGenCKaSnxbhzoMXMmlsIXSqbe0SjGC6KvYuUS+VExKdtehptEMv5
	 +xJDHuKDePw72eE203PlbTH2oumrvlwzyvEHKl2FePZCsaA965xwNLfGu2RQ7ZBhlI
	 O5y+84JUZl8ug==
From: sashiko-bot@kernel.org
Subject: Re: [net-next v3 3/5] dt-bindings: net: starfive,jh7110-dwmac: Add
 jhb100 sgmii rx clk
Reply-To: sashiko@lists.linux.dev
To: "Minda Chen" <minda.chen@starfivetech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260507094115.8355-4-minda.chen@starfivetech.com>
References: <20260507094115.8355-4-minda.chen@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 17:14:50 +0000
Message-Id: <20260508171451.62106C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 55C7E4F9D67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294610-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The patch erroneously relaxes clock constraints for the base `st=
arfive,jh7110-dwmac` hardware, incorrectly allowing it to specify 6 clocks.
- [Low] Replacing the global `items` array for `clock-names` with duplicate=
d conditional blocks is a binding anti-pattern.
--

commit 868beb354c5de56282a3dbb82e7d79b8745d272e
Author: Minda Chen <minda.chen@starfivetech.com>

dt-bindings: net: starfive,jh7110-dwmac: Add jhb100 sgmii rx clk

This commit updates the starfive,jh7110-dwmac binding to support the jhb100
SGMII interface. It adds a 6th clock for the new SGMII interface while
noting that existing RMII/RGMII interfaces still use 5 clocks.

> --- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> @@ -39,20 +39,18 @@ properties:
[ ... ]
>    clock-names:
> -    items:
> -      - const: stmmaceth
> -      - const: pclk
> -      - const: ptp_ref
> -      - const: tx
> -      - const: gtx
> +    minItems: 5
> +    maxItems: 6

This isn't a bug, but does it make sense to keep the full 6-element list
defined here at the top level and rely purely on minItems and maxItems
overrides inside the conditional blocks?

Standard device tree binding practice usually defines the complete items ar=
ray
once at the top level. By removing the items array here and moving it into
the conditionals, the string constants are duplicated across multiple block=
s.

[ ... ]
> @@ -111,6 +121,26 @@ allOf:
>            contains:
>              const: starfive,jh7110-dwmac
>      then:
> +      properties:
> +        clocks:
> +          minItems: 5
> +          maxItems: 6
> +
> +        clock-names:
> +          oneOf:
> +            - items:
> +                - const: stmmaceth
> +                - const: pclk
> +                - const: ptp_ref
> +                - const: tx
> +                - const: gtx
> +            - items:
> +                - const: stmmaceth
> +                - const: pclk
> +                - const: ptp_ref
> +                - const: tx
> +                - const: gtx
> +                - const: sgmii_rx

Does this inadvertently relax the clock constraints for the base
starfive,jh7110-dwmac hardware?

The commit message explicitly states that the 6th clock is a requirement
only for the new jhb100 SGMII interface, while other interfaces use 5 clock=
s.

Since jhb100 uses starfive,jh7110-dwmac as a fallback, this outer then
block applies to both hardware variants. Because there is no inner else
block for the pure starfive,jh7110-dwmac to restrict maxItems back to 5,
will a pure jh7110 device tree now be erroneously permitted to specify 6
clocks and silently pass schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260507094115.8355=
-1-minda.chen@starfivetech.com?part=3D3

