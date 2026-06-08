Return-Path: <devicetree+bounces-308329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lFmEC//NJmpikwIAu9opvQ
	(envelope-from <devicetree+bounces-308329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:13:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 952AA65701A
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:13:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="nB/zxlzI";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308329-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308329-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03D0D3005E8B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69F323C2797;
	Mon,  8 Jun 2026 14:01:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6325E78F39
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:01:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780927319; cv=none; b=F8PpDZbL/5Rrb/+qLNVNLfFFMZrgnaaRum0hqhpKYyUKtTs8rRn1mzGZUnrYwF+pUgmdulx53eywvRzvdmDm2GOLpdkfAa/VEe6GwEKfLrlkzlyV2YUmeg+b26MfQI28t8DaQF80G//PyKGP0rfaZdXbZaepPZJLX4gEvBndRLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780927319; c=relaxed/simple;
	bh=GTMVdGI1xpvoUNvNPcV6rxR0thM5MbxsV8eBponbFY4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NUtJgAmAwdkn5D9eNMFvvpXVklXv06gw3TE9/naRbxDUuj7icMb7G/y5gkJGv3yCvMcPB1Cw3ICTchSAXXbijnZnNR+rxEEcCEEb8rNOBXHzWjaHIYk1v3DYeQaTibFh8N7ZaDJgO+HPfFebANjXL0pns4xKkuNAXbpiqEgxYZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB/zxlzI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C38A81F00893;
	Mon,  8 Jun 2026 14:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780927318;
	bh=Pxn0AYNETLXETnw8RDsdRddUMaRYYLmIeOVzUwb1LZ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nB/zxlzIIsyXaj0l4mxSVtSVr5cxCELw+ZN5NQOn9S0GiiNwQ3z+zW+5PkPWsPiFz
	 d3NBFYNhSUNPoXD8p1CCdt6HkXzXDOsY6bjoXhuB0/Bge3rIeVGhp1/AqRTxZOCc+2
	 Sw14a5l5P4kxOh98KMY1O94UqGs6IHnvGuBLdHx/VrW6ygGH/UrKxKIUq183Tk2gEp
	 Ex73oOuCbUW4VJvHb/+wACqupwCc5fOZ130BMTAwmy//g+k6/oYUHezxqz4kS8zGv2
	 uQWMWD6npfVCncVSSygYO+Oj1S17KDO1yP/Sm3/rILroiZSd9ljzq72ut4bECbQ6AQ
	 A3+DEqUtkt7iQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: mfd: syscon: Drop custom select for
 older dtschema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v2-3-0203e6c249dc@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v2-3-0203e6c249dc@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 14:01:57 +0000
Message-Id: <20260608140157.C38A81F00893@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308329-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 952AA65701A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removal of the custom `select` block breaks device tree validati=
on for `dtschema` versions older than 2024.02, which are still permitted by=
 the kernel build system.
--

commit f0ac964d90c2fab365a733b219f9d7ce636b7fb6
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: mfd: syscon: Drop custom select for older dtschema

This commit removes a custom select block from the syscon binding that was
previously required for compatibility with dtschema versions older than
2024.02. The change aims to reduce duplication and prevent errors when addi=
ng
new compatible strings.

> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Document=
ation/devicetree/bindings/mfd/syscon.yaml
> index e228670880631..fe882d3f828b1 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -19,122 +19,6 @@ description: |
>  maintainers:
>    - Lee Jones <lee@kernel.org>
> =20
> -# Need a select with all compatibles listed for compatibility with older
> -# dtschema (<2024.02), so this will not be selected for other schemas ha=
ving
> -# syscon fallback.
> -select:
> -  properties:

[Severity: Medium]
Will removing this select block break schema validation for toolchain
versions that are still officially permitted?

Looking at Documentation/devicetree/bindings/Makefile, the minimum
supported version is currently explicitly maintained as:

DT_SCHEMA_MIN_VERSION =3D 2023.9

Since the kernel build system still officially supports dtschema versions
between 2023.9 and 2024.01, wouldn't dropping this select cause syscon.yaml
to erroneously apply to all syscon nodes and generate false-positive
schema validation failures for users on those older versions?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-n-dt-bindi=
ngs-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com?part=3D3

