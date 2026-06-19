Return-Path: <devicetree+bounces-313847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HGAWKjtgNWrHuQYAu9opvQ
	(envelope-from <devicetree+bounces-313847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:28:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 046BA6A6AD4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:28:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=n91EoPl1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313847-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313847-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86A573021E84
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D153ABD9D;
	Fri, 19 Jun 2026 15:28:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CD8396579
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 15:28:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781882937; cv=none; b=nJPoTVimz69ZbDiDuclwVuqjjyRxfmiEkplO91p0p0HuEBOHkYm15/o0iPWmtNqYvfdxYb9h8vKeBzat0/CclbB3AUXu8xA3oArVn8pT282ZSDqvDPiLVBdYs+6Yg8TZVl3NChsc8zH3GO6a7kHbwHo+kGkjlJnBJKBj+4TJV58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781882937; c=relaxed/simple;
	bh=GKw68cnmyDXYtkcglFObx6T2nfKn6oeKuFMIYWcNHJ0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IEFD7uBEhrGSsgB1LVsC6rZqgQGSC7bOguyaDs3SMq6NSidoJ7UJbmHTRxS5gPSWiXoSdVnvsGaW/liRCKyUiOK7WmqzwHPBJ52eNikncMiGDvogEvQQcFA0/xK2qWbiBcr/SE9h6+jekv4Npt5+wSkNrZo5ILeD96i35tBliiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n91EoPl1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5B721F000E9;
	Fri, 19 Jun 2026 15:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781882935;
	bh=FmgIDUtYYmvZir76ggvDWCMY7v4oAhr9ErlwbyAUwaE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n91EoPl1aWR23ieTI/uGO3UP1U9JaKed2nrVjmb6QiEMiACKBzK07u5k8j6/j+jwz
	 b8m/EXBYYtdXuKU9heTUfCsoFpr3hbsN4apHIDTCfCGX6caISGkaBnkyVz0MVyHj+N
	 thMCeWGDpcTw8UiQQOzyl3Q5wmyUcYQpzmLs1hsbiNVTwDPSI8LwvhNPwuNPHY266s
	 WVT1gwXGjI2+f4Gcgby/16vMyanRHvgrlm9Use4blADoCP1/oTXztAjkWS8xUbwPeV
	 F5359ERGugjsG6OqFbgocHRyIMIp+Rh3vrXHc4mOocCUGx0pvO6nxwQNfQLnhPtff+
	 vlclucfF1Pvvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] spi: dt-bindings: snps,dw-apb-ssi: Add
 starfive,jhb100-spi
Reply-To: sashiko-reviews@lists.linux.dev
To: "Changhuang Liang" <changhuang.liang@starfivetech.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260619143443.22267-2-changhuang.liang@starfivetech.com>
References: <20260619143443.22267-1-changhuang.liang@starfivetech.com>
 <20260619143443.22267-2-changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:28:55 +0000
Message-Id: <20260619152855.A5B721F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313847-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:changhuang.liang@starfivetech.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[starfivetech.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 046BA6A6AD4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch introduces 'snps,dwc-ssi-2.00a' as a fallback compatib=
le string but does not document it as a standalone generic compatible.
--

commit a0b5bdaa0ec7a10bb2b844ee5ff0f01be111deee
Author: Changhuang Liang <changhuang.liang@starfivetech.com>

spi: dt-bindings: snps,dw-apb-ssi: Add starfive,jhb100-spi

Add a new compatible string "starfive,jhb100-spi" for the StarFive
JHB100 SPI, it based on the Synopsys DesignWare SSI version 2.00a,
uses snps,dwc-ssi-2.00a as the primary fallback and snps,dwc-ssi-1.01a
as the secondary fallback.

> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b=
/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index 8ebebcebca160..4458316326fc4 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -54,6 +54,12 @@ properties:
>                - sophgo,sg2042-spi
>                - thead,th1520-spi
>            - const: snps,dw-apb-ssi
> +      - description: Vendor controllers which use snps,dwc-ssi-2.00a as =
fallback
> +        items:
> +          - enum:
> +              - starfive,jhb100-spi
> +          - const: snps,dwc-ssi-2.00a
> +          - const: snps,dwc-ssi-1.01a

[Severity: Medium]
Since snps,dwc-ssi-2.00a is introduced as a fallback here, should it also be
added as a valid standalone string under the "Generic DW SPI Controller" en=
um
list earlier in properties:compatible:oneOf?

If it is omitted from the generic enum list, any future device tree nodes
that use the generic Synopsys 2.00a IP core without a vendor prefix might
fail schema validation.

For context, the existing generic list only contains snps,dwc-ssi-1.01a and
snps,dw-apb-ssi:

  compatible:
    oneOf:
      - description: Generic DW SPI Controller
        enum:
          - snps,dw-apb-ssi
          - snps,dwc-ssi-1.01a

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619143443.2226=
7-1-changhuang.liang@starfivetech.com?part=3D1

