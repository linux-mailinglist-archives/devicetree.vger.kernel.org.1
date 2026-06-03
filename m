Return-Path: <devicetree+bounces-305952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OcybKcfBH2oTpgAAu9opvQ
	(envelope-from <devicetree+bounces-305952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:55:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5C76346F4
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:55:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N2X1t0Xr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305952-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305952-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26D92301D319
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 05:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473E33DC4AF;
	Wed,  3 Jun 2026 05:55:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3E0314B8F
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 05:55:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780466116; cv=none; b=OVxAJYZGLJ9bLlRM4pDcv1jFcpA9PcVX0wVsIIGKff5FEZf0Vd4+I+MlXZwCpYQ5cfG6uvLJtSh9q5LMo87d7jffqo5q307ecWUhLf6TjvAAKu1pMsQvUoHt35MX8ps43iU1JAOMz5pu2ArXKnlbmQpUhzSo7ODzkRWn2ox7I8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780466116; c=relaxed/simple;
	bh=h4FuU5eF2zPKSTUJ1x+8cUuejYFnNjiEBaNZyXeC45s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XGcCi54NudXLe+if6qDWzNHl+MwemSKIiICIrCKRiaRcNTDeIGzE3cFD2pbc4azngiwYrsT5pYuDjnRk+6bO4LTVYn562gDChmUIIywR89czMfKZHxUq7XEgdnWxzF+inSbFM5R9Ae8gUCh9D/6w9gm3+Yu8Eii8XL6VTDZyArA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2X1t0Xr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DBDE1F008A1;
	Wed,  3 Jun 2026 05:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780466114;
	bh=m72tQO36EozvSScd6gBkhrOXXAJ3yAsNeXVOSlp17nQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N2X1t0Xrij37jLSzIK2Pv2l4cU4OKBkuoP8yMiTXCE1sTlBsrYssqZi55WilgvlpI
	 B5zjaYhWtUDtmoBANZpSCPf5ORRI2TAJ/iZGI/vLpCeSv/zeQhlWQVjX0MKJEaKT1d
	 BMJuXyfL76JLKqg/eTOClH0xLtz+8E2QFvfaSiLRiOmasxAVE1cFqddpNgT/zeBWtH
	 CHEZqsc83+6/MIFl/zot6UNGOWu5idPQxrn1qTio1gXiC+WApyj6uExd6mb8zHMzRV
	 QlRrUVrmePhfVDbR0oXHcUn56GMhSYYumv6n0tWVnPmG0ppvhKmcNhr0H9VEi+XVJ1
	 DS+3N6Ocs4NYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260603054809.565723-2-github.com@herrie.org>
References: <20260603054809.565723-2-github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 05:55:14 +0000
Message-Id: <20260603055514.7DBDE1F008A1@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305952-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,herrie.org:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D5C76346F4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `qcom,vendor-init-seq` property uses a flat `uint8-array` type =
instead of `uint8-matrix`, preventing dt-schema from enforcing its required=
 address-value pair structure.
--

commit c31501f8d171d100ea82c554966b30fc82a8bc2c
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: phy: qcom,usb-hs-phy: add qcom,vendor-init-seq

This commit introduces the qcom,vendor-init-seq property to the Qualcomm
USB HS PHY binding. It allows passing raw ULPI (address, value) pairs to
be written after PHY reset, targeting the standard ULPI vendor register
range for MSM8x60-class hardware configuration.

> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b=
/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index e03b516c698cc..b9eca670419a8 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -85,6 +85,20 @@ properties:
>              the address is offset from the ULPI_EXT_VENDOR_SPECIFIC addr=
ess
>          - description: value
> =20
> +  qcom,vendor-init-seq:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array

[Severity: Low]
Since the sequence consists of (address, value) pairs, should this use
/schemas/types.yaml#/definitions/uint8-matrix instead of uint8-array?

Using a uint8-matrix with an inner items list would allow the dt-schema
validation tool to statically catch malformed properties that do not have
an even number of bytes. This would structurally enforce the two-byte tuple
layout before runtime, similar to the existing qcom,init-seq property.

> +    description: >
> +      Flat sequence of raw ULPI address/value byte pairs written after
> +      the PHY reset. Each pair is two consecutive bytes:
> +      [addr0, val0, addr1, val1, ...]. Total length must be even and
> +      no more than 64 bytes (32 pairs). Unlike qcom,init-seq the
> +      address field is not offset by ULPI_EXT_VENDOR_SPECIFIC, so this
> +      property can reach the standard ULPI vendor range (0x30-0x3f) =E2=
=80=94
> +      used on MSM8x60-class hardware to program pre-emphasis, HS
> +      driver slope and CDR auto-reset bits the legacy msm_otg driver
> +      used to set via platform data.
> +    maxItems: 64
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603054809.5657=
23-1-github.com@herrie.org?part=3D1

