Return-Path: <devicetree+bounces-294854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vxR0JfsL/2lI1gAAu9opvQ
	(envelope-from <devicetree+bounces-294854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 12:27:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D12884FF396
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 12:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B35630071E2
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 10:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E125634DCD7;
	Sat,  9 May 2026 10:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJUPKZ4J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2FA2773CC
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 10:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778322423; cv=none; b=E/RzUT0M+jwwDhdZd76ySH3DGnMjZBRlU5PKdUmuvCAuHAnlD+iqsoFQ3Wa2gPihxeWXkI+3Jz61avCqqIsQTFNw6BI1GpzZPGNYSnB7FlAIfgYc2ae93roTnurwGqTKQrRgv37Qb5npr3298/THGtyraLDh22rWXpreOaZ+I5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778322423; c=relaxed/simple;
	bh=Q4cFMalpjbMCfSHG+/8Xi37dppXXzMJDHNhnxkNaLDQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J9hnLAxtI48GBnw765TiC0LhRBjIl0DTG/rS1BUDfJ1SdLjA/qS0Gl00fHCISyQSpNGyOrXDYrqp4T6T917XZdRbhVk1xr84+ytMR4ZCPlE1tbY+nQy6lEhxO1YRYATmu5D3Efcey1LLkmKh+ijTaJeccbM9lkVW1nJKqTy5bCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJUPKZ4J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33ED1C2BCB2;
	Sat,  9 May 2026 10:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778322423;
	bh=Q4cFMalpjbMCfSHG+/8Xi37dppXXzMJDHNhnxkNaLDQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=nJUPKZ4JBebp1ZFcRKtHQzwaKSCJJPBz7HZWGJSrFej7j/BAvtG8HvbliYWGr0+PQ
	 XO274WNI4F9fzbe4lm2GJKn/jl1DSriKzQI0nBSw3uYzPY5AE+C9bx0fVP4EcP9MoJ
	 FS5YqyVji65CaurprsLRg/pCYb2RC9nD/TDk5DDcG4oGix+2k8XrNSaFdu910KqEzc
	 GHTJ5npdp+fMMehqG20M2TzfXAo9viFEeXrssuckOBbAMsBDQTD8g3iaORNBbq6uch
	 VgisZeK7qk/mcnXE167PAjHlDLsEWS2zBSK+dteQDNz+WeQRY4ZvCaFKNC7SNDO47P
	 6upFfvSQA+avQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: rtc: epson,rx6110: Convert to DT Schema
Reply-To: sashiko@lists.linux.dev
To: "Udaya Kiran Challa" <challauday369@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260509095713.5818-1-challauday369@gmail.com>
References: <20260509095713.5818-1-challauday369@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 10:27:02 +0000
Message-Id: <20260509102703.33ED1C2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D12884FF396
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The YAML binding omits a reference to the core RTC subsystem sch=
ema (`rtc.yaml`).
- [Medium] The strict requirement for SPI-specific properties was lost duri=
ng the schema conversion.
--

commit 83ad9493a42cbad1f11db8ac3498c9be50a357d1
Author: Udaya Kiran Challa <challauday369@gmail.com>

dt-bindings: rtc: epson,rx6110: Convert to DT Schema

This commit converts the Epson RX6110 Real Time Clock devicetree binding
from the legacy text format to DT schema.

> diff --git a/Documentation/devicetree/bindings/rtc/epson,rx6110.yaml b/Do=
cumentation/devicetree/bindings/rtc/epson,rx6110.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/epson,rx6110.yaml
[ ... ]
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#

Should this also include a reference to rtc.yaml# in the allOf block?
Without it, since unevaluatedProperties is false, won't valid standard RTC
properties like start-year or aux-voltage-chargeable cause validation
errors? This omission appears to introduce a functional regression by
bypassing the standard nodename checks provided by the core schema.

[ ... ]
> +  spi-cpha: true
> +  spi-cpol: true
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false

The legacy text binding listed spi-cs-high, spi-cpha, and spi-cpol as
mandatory required properties when the device operates in SPI mode.

Because they are omitted from the required list to support I2C mode, won't
misconfigured SPI nodes missing these hardware configuration flags now
silently pass validation? Would adding a conditional allOf/if block be
appropriate to enforce these properties for SPI configurations and avoid
this regression?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509095713.5818=
-1-challauday369@gmail.com?part=3D1

