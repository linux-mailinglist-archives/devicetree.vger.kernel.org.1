Return-Path: <devicetree+bounces-315912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4BAwLi/2PWps9QgAu9opvQ
	(envelope-from <devicetree+bounces-315912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:46:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 157506C9F4C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:46:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="P/8rMWI9";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315912-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315912-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B566F302DB43
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 03:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3DF2C11FA;
	Fri, 26 Jun 2026 03:46:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13972233933
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 03:46:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782445613; cv=none; b=DvclbJEgXLCTY/+SElKBKIcvUP8h5fSB0qryDu01ETy+yApSKKLVYtXoj31yXdhsODuGHTYWdWSMgtHlrVXhH6AdEKiqMOoDF1KPcwsbLPRxUqKZXgm9Ymbqh6sPHfZPXFz3UtWiQomgxXXEUeYqUkwG8/u2TsgW07fd3EEIzaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782445613; c=relaxed/simple;
	bh=899/oUaXcc9U2Ebx0A6s41AGSAIZjPgBa1X5/qDLAiU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o4hWn+yZY0fbj9+yIYG1DY/9boDR4EDApMYI2o7pjJlu9S6lmnx7PddvkZYzaplByp1kPW9hJjVOrUE9+Qzrxeyn0AnMVlBBsMPd2tBWjCJMpV94KHXa4YupgeZ/o6/0uDqKEcvJ9bjyvDaopwADb9UlU/0sL1HVULF9sqYfFiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/8rMWI9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F4531F000E9;
	Fri, 26 Jun 2026 03:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782445611;
	bh=0a/TUHmP2Iy+GxN7hBSooai/jO+W2C0okv2wjd6ix2M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P/8rMWI9/NHxLRv9TCLcKI76Y00b11K5PQE7RSn7Pkndp0202zmmGMZWXbKsjjmHo
	 9ojcN4MVlUzSXl1ToeO9rPaXtFZLd3iyps9sAqFqfDoV9q6+u/xSYN72G6pJndMre1
	 KvKkKXpA83itnhiN+MDkE7V4erpDhkS6QoAhWP6ITlWBHKkZ1NWXZ1yDLveabzZV5Q
	 LLV2nJxyBeXHdbYyMa9HBl76w8k1nkOSAciEQ/VQMLL69VktkfFgVrl8UWx9AoLuRY
	 uksZL9I1KjNfOkppGYkDC2ANjg3Nx1jFB5o/X+reCSRLlsqDgsY7dM6CUjBE5Jj/rk
	 ao6KiE2+k0noA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] regulator: dt-bindings: rtq2208: Label
 mtp-sel-high property as deprecated
Reply-To: sashiko-reviews@lists.linux.dev
To: cy_huang@richtek.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <594ebe167b33ca885c040984624e4b5d1382c0e2.1782444299.git.cy_huang@richtek.com>
References: <cover.1782444299.git.cy_huang@richtek.com>
 <594ebe167b33ca885c040984624e4b5d1382c0e2.1782444299.git.cy_huang@richtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 03:46:51 +0000
Message-Id: <20260626034651.7F4531F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315912-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:cy_huang@richtek.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 157506C9F4C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing block scalar indicator (`|`) in the `description` property =
causes a fatal YAML parsing error.
--

commit 5c227b25d25e534f0fd83cfc25a3a064d6084614
Author: ChiYuan Huang <cy_huang@richtek.com>

regulator: dt-bindings: rtq2208: Label mtp-sel-high property as deprecated

This commit marks the richtek,mtp-sel-high property as deprecated in the
rtq2208 device tree binding schema. It adds the deprecated flag and updates
the description to indicate that the property can now be identified by a
hardware register.

> diff --git a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.=
yaml b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> --- a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> +++ b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> @@ -42,11 +42,14 @@ properties:
> =20
>    richtek,mtp-sel-high:
>      type: boolean
> +    deprecated: true
>      description:
>        vout register selection based on this boolean value.
>        false - Using DVS0 register setting to adjust vout
>        true - Using DVS1 register setting to adjust vout
> =20
> +      The property is now deprecated. Will be identified by RG HW regist=
er.

[Severity: Low]
Does the addition of this blank line break the YAML syntax?

Because the description field lacks a block scalar indicator (| or >), it is
parsed as a plain scalar. Plain scalars cannot contain blank lines, which
causes a parsing error during make dt_binding_check. Adding a block scalar
indicator to the description field would resolve the issue.

> +
>    regulators:
>      type: object
>      additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782444299.gi=
t.cy_huang@richtek.com?part=3D1

