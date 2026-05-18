Return-Path: <devicetree+bounces-299145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEY3B4u6CmoB6QQAu9opvQ
	(envelope-from <devicetree+bounces-299145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 09:06:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 741DD567292
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 09:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F34573007AED
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39184253B73;
	Mon, 18 May 2026 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOT+DYOu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9F63DA7CA
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 07:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779087983; cv=none; b=uTAwo65tjkTmENjH16Gi+LjSdD6f9+QmhZ103fffda2HU9vGjZb6RZVmGA9vuUDYpMOmxyV/4Q/vnZ7XEAB8bytKNXsg7IY1qDVdnRUuscXP17JYVJ+qpdudttfL6Wv4hyOhYOvTKkuci754Vd6bzBjQn+LLF6jseK/J2A3uwBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779087983; c=relaxed/simple;
	bh=Ze9sujFqZQof+cSLdpAMr4jOM79ZkrmErllLeveRkbQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oFbWBf3YrfXNe0aM5vhCoj17zj0JLi1hRYbqEALLC/OeP11Fxt++SHCQDCRBwreB5i/7D94ITTeBE/0zociaWmQ+TxTLsbVlmhK+13TLEMRgF6J3pG+20937EH2Yvojler4tzWbT2LfU3KjXyHCfKzIXCsjvrsbPPzuA/bIcDU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOT+DYOu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 446D9C2BCB7;
	Mon, 18 May 2026 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779087982;
	bh=Ze9sujFqZQof+cSLdpAMr4jOM79ZkrmErllLeveRkbQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YOT+DYOuuqtlN7ABOvHmaWUqtLZB0FIxPAarZB5o2j9s8BX0vVq4tblKPVfk2fTec
	 APG/LR5p6mhGXulqF0trYutL3rGLy3hGILE5r1rtcgFu4+/ZaosmzIH2ror76U045V
	 LFupZuBEJXRD8FmnsphjnqfWycVPqgE8yn2M8cxNN1YFpgW5Kl654h+LUxcsggLtM6
	 jTfFu7maVU4b4KRWtjCGmmi2j5oDa3zWPrk2vpAiZ9N5AOciU4L+aeDXnS5H+FZ0c1
	 daUkuG8fwCanqpnseZEpm229xi+9LlN5nWjgk3myfv2RaFLuUG6l5hWMkDsAZOVOlM
	 CFBz+c+gkgf6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: Add bindings for StarFive JHB100
 SoC trng controller
Reply-To: sashiko-reviews@lists.linux.dev
To: lianfeng.ouyang <lianfeng.ouyang@starfivetech.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260518065243.20865-2-lianfeng.ouyang@starfivetech.com>
References: <20260518065243.20865-2-lianfeng.ouyang@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 07:06:21 +0000
Message-Id: <20260518070622.446D9C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 741DD567292
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299145-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,starfivetech.com:email,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removing the existing 'starfive,jh8100-trng' compatible string b=
reaks backwards compatibility.
--

commit 847e83dc6a2024f6cb7a70fd0453035b2808bedb
Author: Lianfeng Ouyang <lianfeng.ouyang@starfivetech.com>

dt-bindings: Add bindings for StarFive JHB100 SoC trng controller

This commit adds device tree bindings for the StarFive JHB100 SoC TRNG
controller, updates the maintainer, and removes the JH8100 compatible
string.

> diff --git a/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.y=
aml b/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml
> index 4639247e9e510..d21769b7d54e6 100644
> --- a/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml
> +++ b/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml

[ ... ]

>  properties:
>    compatible:
> -    oneOf:
> -      - items:
> -          - const: starfive,jh8100-trng
> -          - const: starfive,jh7110-trng
> -      - const: starfive,jh7110-trng
> +    enum:
> +      - starfive,jh7110-trng
> +      - starfive,jhb100-trng

Does removing the existing "starfive,jh8100-trng" compatible string break
backwards compatibility?

Device tree bindings represent a stable ABI, and removing the previously
merged "starfive,jh8100-trng" string breaks dt-schema validation for any
existing or downstream device trees that used it. Even if the hardware is
no longer supported, the standard practice is to retain such strings,
perhaps optionally adding "deprecated: true", rather than deleting them
outright.

> =20
>    reg:
>      maxItems: 1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518065243.2086=
5-1-lianfeng.ouyang@starfivetech.com?part=3D1

