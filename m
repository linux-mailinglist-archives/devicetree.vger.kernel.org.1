Return-Path: <devicetree+bounces-297231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBKgNZIVBWoUSQIAu9opvQ
	(envelope-from <devicetree+bounces-297231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:21:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC52D53C4DE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29F583015C8B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5695C2459E1;
	Thu, 14 May 2026 00:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrFpg7g1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F95175A68
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 00:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778718095; cv=none; b=obP8MTfK9rI+I0i4kf2kN5vgd4KHb5WbVmX5LZjE4qh9dBo5DVf8P2YyZ9pX/PVBRY+75FoIj0OlopvV1ggFw5MHM6T7g804/WM38MPsj9ABv2nA/C1j/KZA/bOvGjo1/wciHaVH+z6ZO87XxzvMgK9rEV95BNonIFtZjeAc+9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778718095; c=relaxed/simple;
	bh=y+v7AmWKij+hD8tte6wJPllmgzRQh2t7b4s3wX2biI4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kMo4X3VE3DaZO19YIFt5q1zZM8m0/2hLNfbQ82eU8eebw1Wi8M4OFAYquI9dSrfZwOLnlUVkVf5pKx8gQIj48dd69vV60CRz3OVu3gEkcGFhXEAJpLRAUKOgx2ECPNNGTTuD7iLaVBFlwabL3Pu7YkPGYpy7v+05xVn0q6eLYAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrFpg7g1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98973C19425;
	Thu, 14 May 2026 00:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778718094;
	bh=y+v7AmWKij+hD8tte6wJPllmgzRQh2t7b4s3wX2biI4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DrFpg7g1ui4GlXIeVkDkLvEIxZwGb7aOIxKjlw2jQ1PpfpZTGs7Q0jspGMZE5+Pnm
	 fFuIpfmpuYCaSKrIDNPFK0xPe8JLBpMcr2eNdKDbPgcdRBJcP7sMDoh8mFq94QZb0k
	 01lK9NBPbqriKndEEHHp10/f3wyyGB+ocXdBE2L4gOgts+F6q2l95r6WPaXuFI0ibH
	 zVHeH/XhKuRZSdvFIirfSHMLjA7uN+CbeCGNtD8yr2PrxAp5J7U4wLdBDBJmJD9QoT
	 vlXdMbW4vtDv2MRaPbFyMy9oScoVj4iV7y4LMyw39sIYV614dI6cdeTiyJhFJbbv77
	 SFCQGHi/OQ7Rw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: firmware: google,gs101-acpm-ipc:
 document Exynos850 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexey Klimov" <alexey.klimov@linaro.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-exynos850-acpm-firmware-support-v1-1-3858d097e433@linaro.org>
References: <20260513-exynos850-acpm-firmware-support-v1-1-3858d097e433@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:21:34 +0000
Message-Id: <20260514002134.98973C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CC52D53C4DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297231-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree binding schema incorrectly applies GS101-specifi=
c PMIC constraints to the Exynos850 compatible string, preventing Exynos850=
 from legally defining its own PMIC child nodes.
--

commit 2c572cafffcf509acd05fb4e87547a118f399795
Author: Alexey Klimov <alexey.klimov@linaro.org>

dt-bindings: firmware: google,gs101-acpm-ipc: document Exynos850 compatible

This commit adds a new compatible string, samsung,exynos850-acpm-ipc, to the
ACPM IPC binding for the Exynos850 SoC. The hardware block requires a dedic=
ated
compatible string due to differences in the initialization data base offset.

> diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm=
-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ip=
c.yaml
> index e68f9c3ca5e26..511c873280fed 100644
> --- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.ya=
ml
> +++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.ya=
ml
> @@ -22,7 +22,9 @@ description: |
> =20
>  properties:
>    compatible:
> -    const: google,gs101-acpm-ipc
> +    enum:
> +      - google,gs101-acpm-ipc
> +      - samsung,exynos850-acpm-ipc

Does this introduce a regression by unintentionally applying GS101-specific
PMIC constraints to the Exynos850 hardware?

Looking at the rest of the binding schema, pmic-1 is constrained to
samsung,s2mpg10-pmic and pmic-2 is constrained to samsung,s2mpg11-pmic. With
additionalProperties set to false at the top level and no conditional blocks
to distinguish between compatible strings, an Exynos850 device tree cannot
legally define its own hardware-specific PMIC child nodes without failing
schema validation.

Should there be conditional blocks to ensure the GS101 PMIC constraints only
apply when google,gs101-acpm-ipc is used?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-exynos850-=
acpm-firmware-support-v1-0-3858d097e433@linaro.org?part=3D1

