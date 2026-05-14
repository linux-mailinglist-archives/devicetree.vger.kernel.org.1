Return-Path: <devicetree+bounces-297228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLpvH6ATBWpoSAIAu9opvQ
	(envelope-from <devicetree+bounces-297228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:13:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 763FA53C467
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8A550300B526
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481011D6195;
	Thu, 14 May 2026 00:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7O00zJ4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F38CA5A;
	Thu, 14 May 2026 00:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778717595; cv=none; b=G3VtzQFdiOVwU9R6fpA6bqa8LxIPVW+2Fy+47ptJKgL9wnS8Y/OlSlLi9uidaxlproRv7bazD7IqAi4lqrPUiiNFYTomb0GP19Cw+G8NRvbWHg72iewf6e97n4PO/w6+LdpAjxjWIkK6xsvSeb3SRix7q5jJm0kSqs8PD7U3K4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778717595; c=relaxed/simple;
	bh=BCqfcNlIh76PwxmR4FmkOrE0wSlAD+JUt6orQn0vQZo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=phqdFLRbYyruwlOjKNxG/upkM7u2j4a46i4WlPjxfbL2Qvs3BwQ7+Ed9qCrBojnUyZfw/wxdkQHsOj8WOO2esxw6A7ShBNWvMInuB2hAcoS8rbA5XZZ+J/7xQfzAceKx82gefoU0KROoMvEBuk55pW7/ChDPdQRRVIg5zzH9/fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7O00zJ4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D66C19425;
	Thu, 14 May 2026 00:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778717594;
	bh=BCqfcNlIh76PwxmR4FmkOrE0wSlAD+JUt6orQn0vQZo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=T7O00zJ4SVosI/Oh9flU1uvJGnFKtOCiamdsLXLDwf+f12ubQAjTZRuNo+jkHaApr
	 OtQ5/9bN48f9QHvQgwkVn4k2/lMHuUGl6t3FTx99Wo39DS5tmDJ0TS/3/Pa7fR1Gpp
	 M2xGjmwBjFHJ+hBg4QVt6OcCA7Y7wIsP7dOC2MeydrBsKGU2ikdseq9AsfBPTT1yF/
	 O+KZGePdeLK8wZaA1DcxlaCHwjAa/gnpcuB78aebpLYk/IFA6qGReTYfrVHTCe0pBv
	 ncgPG5SeS49CFFGWaFo3dgTdc0tkazdVgPXL4V0HxGebxrZlLYcK3CBYTDS8zg0BJb
	 tQW6v16JbCJvQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: display: imx: Add television encoder
 (TVE) for imx53
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li" <Frank.Li@nxp.com>
Cc: krzk+dt@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512223137.1190096-1-Frank.Li@nxp.com>
References: <20260512223137.1190096-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:13:13 +0000
Message-Id: <20260514001314.68D66C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 763FA53C467
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297228-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing conditional constraints for VGA mode sync pins.
- [Low] The `fsl,tve-mode` property lacks a defined default and is not requ=
ired.
--

commit 18cf39d8e659ce17f310f753763d63085e707e24
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: display: imx: Add television encoder (TVE) for imx53

This commit adds the device tree binding schema for the Freescale i.MX53
Television Encoder (TVE). It documents properties required to configure
the TVE module, which converts digital video to analog TV signals.

> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx53-tve.=
yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx53-tve.yaml
> new file mode 100644
> index 0000000000000..a7c971be1959b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx53-tve.yaml
> @@ -0,0 +1,102 @@

[ ... ]

> +  fsl,tve-mode:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      TVE output mode selection.
> +    enum:
> +      - ntsc
> +      - pal
> +      - vga

Since fsl,tve-mode is not listed in the required properties, should it have
a default value defined to clarify what output mode the device assumes when
this property is absent?

> +
> +  fsl,hsync-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Pin number for horizontal sync signal in VGA mode.
> +    minimum: 0
> +    maximum: 8
> +
> +  fsl,vsync-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Pin number for vertical sync signal in VGA mode.
> +    minimum: 0
> +    maximum: 8

Is it necessary to add an allOf conditional block to enforce the dependency
between these sync pins and VGA mode?

Without it, device trees could pass validation while specifying these pins
for incompatible modes like NTSC or PAL, or they might omit them entirely
when VGA mode is selected.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512223137.1190=
096-1-Frank.Li@nxp.com?part=3D1

