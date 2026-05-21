Return-Path: <devicetree+bounces-301494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tht4Cb5oD2qKLAYAu9opvQ
	(envelope-from <devicetree+bounces-301494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:19:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 720BC5ABB28
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95A253005753
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDF730567F;
	Thu, 21 May 2026 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiBUZzhr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A592DC791;
	Thu, 21 May 2026 20:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779394746; cv=none; b=JJLgG4WnQ51XZXdnoIlPT9mO38UYqYPVV8FCUC//PkZjCKezkMdbPOTeN9jCjge0Os5gteYitFDzQJ98+AJkQt9M1tCCr3IH1UL/nani5oOPtpFpVlhgY6VJPpji6RLVRkAt23/nWwgfJAK3SoqgDCkVkSnGTU1c1t2dCZEcMA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779394746; c=relaxed/simple;
	bh=zRB1qJUM4PPTiLgOmqpMVvuYHwF1Aq24x/5ryUYGavs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IQu7oeqBRkXxayMRRokEoS886flhOWrJBDYy3teTgYKAtJVR5pW1Y9WGJf3XOgbW0/YRTvHHKE3S0kfHHKTnKk6iQXMDT9aCVHdUBrOrq8v0JF1MTlM6OGCazP+bfBeZdBHe0Dc6c7jEXM4MGt2aHyehdBndG8Zt03VvCpeF1g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiBUZzhr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5448F1F000E9;
	Thu, 21 May 2026 20:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779394745;
	bh=Yr6pOLk+P3KE0ZdwxTD8T2MlVFOvXh1Ki3WYnx2mc8I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HiBUZzhr33ILXJcxb8n8U2/Ql91B3/pSpQVbqJ1ly6YHUJWwzwwJmM7DriwBlzh1m
	 FKoH0RbCKcuFttfpo6gjPaFREeCW2mRqRmihdX1K8+bOPdpXSbMLnTH8mT8tQVJUux
	 +CgVIYd3raEEicHUddun1ROnCQXAZxLRS9zgwNlrff5kJX2CyF3mdBMD3CZC463LTV
	 evZ8M6BJY7Y7VLz0Mo6XXA6RwWnYT/alXfZ5feow1Eo8GfoKFnHnKCwGhnELpHVie/
	 MW+4DVwb1jBUlXEqacUqFfegiroEmDZyW6SjBYpeLOnQFxbAbSKCUfaWNR3zLpi0E6
	 zYWDaOHK73ISg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/6] ARM: dts: imx: remove redundant bus-width for
 video-mux
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260521-imx25_dts_simple_warning_2-v2-2-c6557df516a9@nxp.com>
References: <20260521-imx25_dts_simple_warning_2-v2-2-c6557df516a9@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 20:19:01 +0000
Message-Id: <20260521201903.5448F1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,i.mx:url,nxp.com:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-301494-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 720BC5ABB28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch removes the `bus-width` property from IPU CSI endpoints (=
e.g., `&ipu1_csi1_from_ipu1_csi1_mux`) without documenting this change in t=
he commit message, which only mentions `video-mux` endpoints. Additionally,=
 this removal leaves behind completely empty node overrides (e.g., `&ipu1_c=
si1_from_ipu1_csi1_mux {}`) which should be removed entirely to prevent unn=
ecessary clutter.
--

commit 9fb698028cc05d2c61d201637e9e7246e95e81d5
Author: Frank Li <Frank.Li@nxp.com>

ARM: dts: imx: remove redundant bus-width for video-mux

This commit removes redundant bus-width properties from various i.MX device
tree files to resolve dtbs_check warnings. The bus-width is already
specified at the remote endpoint.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-gw52xx.dts b/arch/arm/boot/=
dts/nxp/imx/imx6dl-gw52xx.dts
> index 9ea23dd54f3ce..62b05fe70cd97 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6dl-gw52xx.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx6dl-gw52xx.dts
> @@ -32,12 +32,10 @@ adv7180_to_ipu1_csi1_mux: endpoint {
>  };
> =20
>  &ipu1_csi1_from_ipu1_csi1_mux {
> -	bus-width =3D <8>;
>  };

[Severity: Low]
This isn't a bug, but removing the bus-width property here leaves behind a
completely empty node override. Should these empty node overrides be removed
entirely to prevent unnecessary clutter?

Additionally, the commit message only mentions video-mux endpoints, but this
removes the property from IPU CSI endpoints as well. Could the commit messa=
ge
be updated to reflect the full scope of the changes?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-imx25_dts_=
simple_warning_2-v2-0-c6557df516a9@nxp.com?part=3D2

