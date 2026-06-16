Return-Path: <devicetree+bounces-312656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MS9FDGyQMWpmmwUAu9opvQ
	(envelope-from <devicetree+bounces-312656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:05:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B584693CB3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:05:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FzyQdPv3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312656-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312656-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94C9E3077613
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DC43CF97E;
	Tue, 16 Jun 2026 18:05:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A23CEBBD
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 18:05:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781633130; cv=none; b=ojRMj1yXkqtOmykw9ToDeVQuFeNbgkfUkJpGHu9dO/ywBIBRrfAJprtnTcIAK9RAHqJRGKpEtXrxzXyZ+zcj7ZlmKob26kguJy/dKDis9CnYDcRY4x4jWdW14c7916xtJ9MvyVjXmBqSOwYCXLfpqOSdYJFB8SUZx3zrJ5CX0uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781633130; c=relaxed/simple;
	bh=vC275wkz7A3TtrxSk/vbSinC4faZOUe4reQSkpi1P+E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FLKZmL4Utlrqhx6M/5CzJl7GWQwxsDKgdFfnjAytSqMTYgfeWPvbHrkAruT1a4ak2HtAnWBYdHFm19SgJInaRVJqlTVQ8rMRWDhmpHOmdV1CeKqf6erVEPPOaqdBvb2wUbNw2RU9JoEi2f51dRYUqYkTAzvMN4PY2IYbQ4M2kxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzyQdPv3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C54B21F00A3A;
	Tue, 16 Jun 2026 18:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781633128;
	bh=MmlrOJIvPBzMHeS2Du1IJ56VJHSY/6nqteZkRL7SEo4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FzyQdPv3REDJHiZoTbVHWzcfJ4KyXxBfvvzreCj+r0DsRXVCHa/h4G7atw++RkFVs
	 wYUw+ok5qEfI/K2QtTOGOxd4WsJH4MdWMBf++b3VA844SYqY4fO/MmXTE+BkWu4oIf
	 3GsOl9Y4zw/oMU3LQi8FNdviTEM5p0etVb/Vl+r2WhkitgbhuvIhyQLj7PWq3H4vIg
	 N2oH/WNTTIq3T4hWZ6PBee7YBQp0mFTI2fOUCb9KxVMSq81ec3hMoMFyVICTEjI/gQ
	 jSXDgGr/Lw4/N/nL0PC+ueWe163nIc1TcZcyjp2So+Bly6eX6Y+cd29OMysQIkJdA3
	 0F6MHNhNPyRmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: gpu: img,powervr-rogue: Document
 GE8300 GPU in Renesas R-Car D3
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260616175835.2109336-2-niklas.soderlund+renesas@ragnatech.se>
References: <20260616175835.2109336-2-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 18:05:27 +0000
Message-Id: <20260616180527.C54B21F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-312656-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ragnatech.se:email,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:niklas.soderlund@ragnatech.se,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B584693CB3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect use of `enum:` instead of `contains: enum:` in an `if`=
 block breaks schema matching for `compatible` arrays, bypassing power doma=
in validation.
--

commit 911441282d51eed161459bbab16231d9b1fcbca8
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

dt-bindings: gpu: img, powervr-rogue: Document GE8300 GPU in Renesas R-Car =
D3

This commit documents the GE8300 GPU present in the Renesas R-Car R8A77995 =
D3
SoCs. It also updates the power domain constraints to account for the D3
having only one power domain that is always on.

> diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml=
 b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> index a1f54dbae3f31..b93f49f1fa0a6 100644
> --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml

[ ... ]

> @@ -159,14 +165,14 @@ allOf:
>    - if:
>        properties:
>          compatible:
> -          contains:
> -            const: thead,th1520-gpu
> +          enum:
> +            - renesas,r8a77995-gpu
> +            - thead,th1520-gpu

[Severity: Medium]
Does this change break the schema matching for these compatible strings?

In Device Tree bindings, the compatible property evaluates as an array of
strings. Using "enum:" directly on the compatible array checks if the entire
array itself equals one of the scalar string values, which will always
evaluate to false.

Should this use "contains:" along with "enum:"? By dropping the "contains:"
keyword during the transition from a single const to an enum, this condition
might silently fail to match both the newly added renesas,r8a77995-gpu and
the preexisting thead,th1520-gpu strings. This would bypass the power domain
validation constraints intended by the block.

>      then:
>        properties:
>          power-domains:
>            items:
> -            - description: The single, unified power domain for the GPU =
on the
> -                TH1520 SoC, integrating all internal IP power domains.
> +            - description: The single, unified power domain for the GPU.
>          power-domain-names: false
>        required:
>          - power-domains

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616175835.2109=
336-1-niklas.soderlund+renesas@ragnatech.se?part=3D1

