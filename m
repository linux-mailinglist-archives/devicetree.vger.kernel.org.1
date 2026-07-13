Return-Path: <devicetree+bounces-325388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iRMBOru8VGpuqQMAu9opvQ
	(envelope-from <devicetree+bounces-325388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:23:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 561B8749BFF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:23:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D4zAOOJp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325388-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325388-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B371830391F0
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCBC13E7BC7;
	Mon, 13 Jul 2026 10:23:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2063E3E6DC8
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:23:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938190; cv=none; b=XVD3QCPuadXeFvO/7XcyXh/MhaCKrvX+xki+yssyvhniUSOFl+hHEzrxsAVWnZMnzy1g8/UOvnUeP97/PV0rVFr0IMfxC2fRoeEO2lXqPbRHcgT5IiFiNZUOoNIUnJL6iEhxEhfR4fbr5r+LhUUJOpV4Yx39fpi4rPZQ4aMYOhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938190; c=relaxed/simple;
	bh=zHAn2PvI8wgHipTsxP1AJv88oqXiQvZa1HEEftis8yA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B9oKDPH12Jeq6ZPaggEBWh3bZoefLFvBbWl5SLv7gkH3CnPcbui1FSdTCsnkQ+ia23F1mRPrOazv6MQp6hXwhYetMq4YVryaQL9YUQ3vaqIpQkK+qEufvAJ9ksH7TGeNXbyKYQ8gOdg+Dhzo3DUzMJuyse+iWIs71C6hkZWvrmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4zAOOJp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B961F000E9;
	Mon, 13 Jul 2026 10:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938183;
	bh=O4pFbY3sHD35vNUh03hA6PVgcanumjvglL4prHYJS54=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D4zAOOJpJ3HRzS6StXQSWrN4sBtu6+4EhL6/CGoLj1oeOW244nKM5SnQ3KMxyajVz
	 reCAMlJCBqO1B+JcIzFiVqZlpu6NEksG882AbktSH9hAtY8FSzX2ATper5nPFhYiis
	 ktE4CdvEnoWp0G7dJWYf+qsaikrkj27GacBZrla8fr/1dqvx7oziAmQZjgTNXSlncH
	 bwVrzBwGSCIE1nbodKTebh+O+j9bS3E8m0n7f+zL3zVVtwrIYpcXGcijCsDzjj5J0r
	 1uqfgr6QGiMxO/NDJoZg9DinqKh4RmVEE7xpSn9N2JFDqx/X+006GyZ/FSKFErMVR+
	 NuRc4jBntJVSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/10] dt-bindings: display: mediatek: wdma: Add
 compatibles for more SoCs
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713095837.16590-10-angelogioacchino.delregno@collabora.com>
References: <20260713095837.16590-1-angelogioacchino.delregno@collabora.com>
 <20260713095837.16590-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:23:03 +0000
Message-Id: <20260713102303.71B961F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325388-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 561B8749BFF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The mediatek,mt6893-disp-wdma compatible string is incorrectly p=
laced in the standalone enum block, preventing it from using the mediatek,m=
t8173-disp-wdma fallback.
--

--- Patch [9]: [PATCH v2 09/10] dt-bindings: display: mediatek: wdma: Add c=
ompatibles for more SoCs ---
commit f57f0fa27efb2b4a343645baf41ff18e654a1717
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs

This commit adds missing device tree compatible strings for the Write DMA
hardware on several MediaTek SoCs. It specifically targets the Dimensity 12=
00
and the Kompanio 500/520/820/1200 series.

> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdm=
a.yaml
> index 97d052b0fb614..c3ed867d058d9 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.ya=
ml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.ya=
ml
> @@ -22,11 +22,16 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - mediatek,mt6893-disp-wdma

[Severity: Medium]
Is mediatek,mt6893-disp-wdma incorrectly placed in this standalone enum blo=
ck?

Placing it here prevents it from using the mediatek,mt8173-disp-wdma
fallback string. Because the MediaTek DRM driver only matches
mediatek,mt8173-disp-wdma, Device Trees for the MT6893 will either break
driver probing if they follow this schema strictly, or fail validation
if they include the fallback string to allow the driver to probe.

Should this compatible string be placed in the items block below with the
other SoCs instead?

>            - mediatek,mt8173-disp-wdma
>        - items:
>            - enum:
>                - mediatek,mt6795-disp-wdma
>                - mediatek,mt8167-disp-wdma
> +              - mediatek,mt8183-disp-wdma
> +              - mediatek,mt8186-disp-wdma
> +              - mediatek,mt8192-disp-wdma
> +              - mediatek,mt8195-disp-wdma
>            - const: mediatek,mt8173-disp-wdma

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713095837.1659=
0-1-angelogioacchino.delregno@collabora.com?part=3D9

