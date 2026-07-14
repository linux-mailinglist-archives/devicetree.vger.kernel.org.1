Return-Path: <devicetree+bounces-326309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dQtCHJJGVmrA2gAAu9opvQ
	(envelope-from <devicetree+bounces-326309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:24:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEDD755C20
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:24:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="IC0u/FP4";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326309-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326309-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05CB2313F0E6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D648E2FDC30;
	Tue, 14 Jul 2026 14:13:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C6824113D;
	Tue, 14 Jul 2026 14:12:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784038380; cv=none; b=pAIOK7Xc1fQynp3AQ1WRi2mI5/TyMSXgWWyfBXVCiLo7M9iGq0TEKWD7OXgZ0T1UmZRX0IPJO8qbwCZOYk8AKThQjZy1KnpZFqzeV+c+ga8cU8l8Fmgy3Rla96DaFlHw5DSwAZRod6BuqLwfd+9NuA2t4XPTk71bt37xuux7Vh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784038380; c=relaxed/simple;
	bh=Uvtc5Kt/ZLzgfNqbiSp2Gl+7P1kruH63ep/bKLAkKCQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SRF2ZWaFmFWqKluNcdf6PRlfGlb9IVeDlJlMFgUBTmF1xtfurZvmNOZ7f53Am+VYaZMkQwFb4zwtZRh5XDUUsoZUqiUAbYuQu9xbGS9cRpQnUNwU74hgzvf3UvE/hdMjLrezGZnTcGw3VTMbMj/4HzpAE3pd2S+vNZFIrNuKJvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC0u/FP4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB5AC1F000E9;
	Tue, 14 Jul 2026 14:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784038379;
	bh=tTelE+LX0LyalTMqiSGcV6UnczGM3go5jLYPkEyCmWw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IC0u/FP4rip6VZdQuJKoYH7NSIq73DpEh1kyWVDlFW7qacdeaJVbef55qFHrSUShX
	 +lXN77pvkioZEZxzhmZ7DdRISY+BxAjHfOIwI5jJUqsQkCywc32KMKRPgLCNcJpT65
	 LawETDx48d9yvyz4iNAp0X2W592QXlnspHxDwZYT0zDnFGBtrf6aMO8TP2jl6+29Fh
	 hC1gdIK7XwE1ONTDfFQigHUV0VbSKD0YaAaOMKCIwqc3RKCTHffbT9GVFlLagKdl3I
	 ZYkCjQdOPgxdRzuf4ApjMaX8hi4jOHFlpSsTnxQ/dASiQy5JHstJCrbDqrCP6/QQmQ
	 efZ1Qng51pmGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: lcdif: add compatible string for
 i.MX8QXP and i.MX8DXL
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260714-dxl_lcdif-v1-1-6761a8a6592b@nxp.com>
References: <20260714-dxl_lcdif-v1-0-6761a8a6592b@nxp.com>
 <20260714-dxl_lcdif-v1-1-6761a8a6592b@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:12:58 +0000
Message-Id: <20260714141258.CB5AC1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326309-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBEDD755C20

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `power-domains` requirement for the newly added `fsl,imx=
8dxl-lcdif` and `fsl,imx8qxp-lcdif` compatible strings.
--

--- Patch [1]: [PATCH 1/6] dt-bindings: lcdif: add compatible string for i.=
MX8QXP and i.MX8DXL ---
commit 684d2e523ad2d6b2b8e88a7b19f827e3689efd97
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: lcdif: add compatible string for i.MX8QXP and i.MX8DXL

i.MX8QXP and i.MX8DXL have lcdif, which back compatible with i.MX6SX. Add
front compatible string "fsl,imx8dxl-lcdif" and "fsl,imx8qxp-lcdif", which
fallback to "fsl,imx6sx-lcdif".

> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/D=
ocumentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 2dd0411ec6516..121c1b220e698 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -28,9 +28,11 @@ properties:
>                - fsl,imx6sll-lcdif
>                - fsl,imx6ul-lcdif
>                - fsl,imx7d-lcdif
> +              - fsl,imx8dxl-lcdif
>                - fsl,imx8mm-lcdif
>                - fsl,imx8mn-lcdif
>                - fsl,imx8mq-lcdif
> +              - fsl,imx8qxp-lcdif
>            - const: fsl,imx6sx-lcdif

[Severity: Medium]
Will these newly added compatible strings also need to be included in the
conditional block enforcing the power-domains property?

Since these are SCU-based platforms that strictly require power domains (li=
ke
IMX_SC_R_LCD_0), a device tree missing the power-domains property would
silently pass validation but fail to power up at runtime.

The existing schema enforces power domains via this allOf block, which does
not match the new compatible strings:

allOf:
  ...
  - if:
      properties:
        compatible:
          contains:
            enum:
              - fsl,imx6sl-lcdif
              - fsl,imx8mm-lcdif
              - fsl,imx8mn-lcdif
              - fsl,imx8mp-lcdif
              - fsl,imx93-lcdif
    then:
      required:
        - power-domains

Because the new compatible strings are paired with the fsl,imx6sx-lcdif
fallback as an array, they will also bypass the const: fsl,imx6sx-lcdif che=
ck
found earlier in the file.=20

Should fsl,imx8dxl-lcdif and fsl,imx8qxp-lcdif be added to the enum above so
the requirement is properly enforced?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-dxl_lcdif-=
v1-0-6761a8a6592b@nxp.com?part=3D1

