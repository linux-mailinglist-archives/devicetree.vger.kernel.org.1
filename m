Return-Path: <devicetree+bounces-319527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WtvgCZKoRmqvbAsAu9opvQ
	(envelope-from <devicetree+bounces-319527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A786FBD55
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=L+pwfVxT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319527-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319527-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D65883018D21
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55E6394E93;
	Thu,  2 Jul 2026 18:06:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8313832937A
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:06:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015567; cv=none; b=UFIjtLn13z+KrOquzBLQ5NKTruTebrvD7MmmphpzR1bhg8xDyEJfJSRuVH9UFeNU5WYQzdtld4PiXEP5Nuq7g8AePho9Hx9UiBJW0Ua6r0LA2qioKGg2c+XEUzw7IGqGYNv4vKUTOHuC+LcdAoMCmk4jKOP/M2k1fbTq7i+zwQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015567; c=relaxed/simple;
	bh=zXz7y9c5yaXKU5ej2pyJ4BiUu9mA6w/10zAF5BVG9IQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=F/I49nWuPu6h1HDOwMLME7DXLPNsX/gKOLYV6KzT1JV+gCPyCCVmMndx03hYy7ZB5y3lmQKzEEftuxQIqW4Csmra/EQ6Mz4CA6iEeyRq1h/XuVk9HKALkPCyWNAjZJJbOVwxgkvsyFmeu1Fu4eVYsgLWQL2PJOGz0zeLa/RVVuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+pwfVxT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFDD61F00A3D;
	Thu,  2 Jul 2026 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783015566;
	bh=gm5e3Sd3Nef/gaCtRlesPRV+Kj0gHwaSDxMUaBUi9f8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L+pwfVxTbmWtR9Dw91HuWujVH+lhvjCc6Mit2q+EoF+E3m4sV9jglqZuPsK7gSdMc
	 M9l8J6jD+4b/S9XFPbAIrZ4JnKB8ldaSjSGLoUf+xLJ3+E61GfU5anZsXIQVusJUc4
	 nbhk73dTpHyxCIb+1X5nXwfvzLVSRjSoXtnuBrHsYbgzcpBGQBtbDIi3gbVnXtaYwm
	 EFJEp6PVlwO6x7uuoHJfUO+S2GveOvPTOVxPOB3wYTenJsYDlIJGc4KGVSwWtqJHxn
	 gXfKrbVV9Ntxj4iJRlGSMwdN+DzXbH2X5K/MbyXdrbTQ7UE2ys+jiQgfAFFCBE9nnE
	 7tAyp2tQAJ7iw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/15] dt-bindings: clock: mediatek: regroup MT8188
 dt-bindings into MT8186
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-mt8189-clocks-system-base-v1-2-2b048feea50a@collabora.com>
References: <20260701-mt8189-clocks-system-base-v1-0-2b048feea50a@collabora.com>
 <20260701-mt8189-clocks-system-base-v1-2-2b048feea50a@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 18:06:05 +0000
Message-Id: <20260702180605.EFDD61F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319527-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 71A786FBD55

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Schema validation bypass due to missing `contains:` keyword in c=
onditional blocks for the `compatible` property.
- [Medium] Schema constraint typo (`reset-cells` instead of `#reset-cells`)=
 fails to forbid the property on non-provider devices.
--

commit df2142379daed191855d2325fce7ca8b5c551906
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

dt-bindings: clock: mediatek: regroup MT8188 dt-bindings into MT8186

Regroup the MT8188 clock and system clock dt-bindings into MT8186 ones
to ease maintainability and have common files for several currently
supported SoC or new future ones.

> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt8186-cloc=
k.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml
> index 37e1d7487ab4c..28e05b5fb23bb 100644
> --- a/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml

[ ... ]

> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - mediatek,mt8188-adsp-audio26m
> +            - mediatek,mt8188-camsys

[Severity: Medium]
Does this if condition fail to match the compatible strings?

The compatible property in Device Tree schemas is always parsed as a JSON
array of strings. Because this attempts to match the array directly against
a scalar string enum without using contains:, it evaluates to false for all
items and silently fails to enforce the #clock-cells requirement.

The correct syntax (contains: enum:) was used successfully in the=20
mediatek,mt8186-sys-clock.yaml changes later in this patch.

[ ... ]

> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - mediatek,mt8188-camsys-rawa
> +            - mediatek,mt8188-camsys-rawb

[Severity: Medium]
Does this also skip #reset-cells enforcement by missing the contains: keywo=
rd
before the enum?

[ ... ]

> +            - mediatek,mt8188-ipesys
> +    then:
> +      required:
> +        - '#reset-cells'
> +    else:
> +      properties:
> +        reset-cells: false

[Severity: Medium]
Should this be '#reset-cells' instead of reset-cells?

Because '#reset-cells': const: 1 was added globally to the file to support
MT8188 providers, missing the # prefix (and quotes) means the fallback
constraint is applied to a non-existent property. This allows
non-reset-provider devices to erroneously define #reset-cells in their
device tree nodes without triggering schema validation errors.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-mt8189-clo=
cks-system-base-v1-0-2b048feea50a@collabora.com?part=3D2

