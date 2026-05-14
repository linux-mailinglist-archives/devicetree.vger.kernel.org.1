Return-Path: <devicetree+bounces-297319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE+eLmBjBWqOVwIAu9opvQ
	(envelope-from <devicetree+bounces-297319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:53:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2253953E1F0
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9EAA301CA67
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCD736A35C;
	Thu, 14 May 2026 05:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+fDQvq6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A1C349CDA
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 05:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778738014; cv=none; b=gNe3orQailCE7GHQJd4J6cg3asXiFajA9Qlm4GVGpu8ZVCcRKJwYukUwmCoEFyvFK8kPOxYzzO02N8B7ramdXzeUmIIp8ZgzVymYMsaP6MfMA/ww1P66QLhs8+DqdAAoM7a8YvjV8VnqI4ofS/U434ysXjfc2tSr9+kCeafEzoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778738014; c=relaxed/simple;
	bh=v6cTISb2HWzz99hmf+ZuNc3LjNWrvMsZQdXYkVpwWyM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MVqqGiGgQK9SjSUMZzv498tNlQufspoBr8Ip+KfZiNFjbLRjq7zGYbt0C+xHg5KCDkIrlZB/jUyfmlthYX2CXyZdLXq9FclGMZ5nziV8p+UQSbixklXz7GqIhAFfjJIRQReJuh2y8bv0brMshgxDOHRgbRgH+4d86MF0lDOnP5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+fDQvq6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A29B8C2BCB7;
	Thu, 14 May 2026 05:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778738013;
	bh=v6cTISb2HWzz99hmf+ZuNc3LjNWrvMsZQdXYkVpwWyM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=I+fDQvq6xZmhOnhesORfzWuAs1pZYG99PekTIpHlgdi4kJN+NWaFKqH3awMq7YHcx
	 r/Tbz/3OoeDAyqT2JPl+U/NHqdQp67euITU7+4OKZAgZsWt/KkFioebiDtWcncv54H
	 SiRJLLFjAUQ+MmC8rC4zlSXJtD0Eshg+o3GHUnxG5ZX31hWuc61r/C1NpX5v1jfPmO
	 DqDN2cHBPuYBuZaHJUvwfkZAn6VOAu+beznq4VCe56uFTy2YCXtq6nNDcR2GPn1icI
	 X50cs979hNWK71TRLCR/0WU72DciYQqs3AMaU6KqD2hcmycpYdm/ePUGkQZBw7HiA9
	 XN4wEgCwQZZtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v7 1/3] dt-bindings: timer: mips,p8700-gcru
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aleksa Paunovic via B4 Relay" <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260513-riscv-time-mmio-v7-1-f8925ffc226b@htecgroup.com>
References: <20260513-riscv-time-mmio-v7-1-f8925ffc226b@htecgroup.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 05:53:33 +0000
Message-Id: <20260514055333.A29B8C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2253953E1F0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297319-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,aleksa.paunovic.htecgroup.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The unit-address in the example node name does not match the first =
address in the 'reg' property.
--

commit 0fc6965163fbf81e3cf1b47f4dd36f18d5ee7201
Author: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>

dt-bindings: timer: mips,p8700-gcru

This commit adds dt-bindings for the GCR.U memory mapped timer device for
RISC-V platforms. The GCR.U memory region contains shadow copies of the
mtime and hrtime registers.

> diff --git a/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml=
 b/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml
> new file mode 100644
> index 0000000000000..3498255762cce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml

[ ... ]

> +examples:
> +  - |
> +    timer@1617f000 {

This isn't a bug, but does the unit-address in the node name need to match
the first address in the reg property?

> +        compatible =3D "mips,p8700-gcru";
> +        reg =3D <0x1617f050 0x8>,

The node is named timer@1617f000, but the first address specified in the
reg property is 0x1617f050. This mismatch might trigger a unit_address_vs_r=
eg
warning when running make dt_binding_check.

> +              <0x1617f090 0x8>;
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-riscv-time=
-mmio-v7-0-f8925ffc226b@htecgroup.com?part=3D1

