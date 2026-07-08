Return-Path: <devicetree+bounces-323156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ELFHgq2TmpMSwIAu9opvQ
	(envelope-from <devicetree+bounces-323156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:41:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B965A72A476
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:41:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QfTzSeLv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323156-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323156-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3720B301CA6C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 20:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF553E00BD;
	Wed,  8 Jul 2026 20:37:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C753D6473;
	Wed,  8 Jul 2026 20:37:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783543025; cv=none; b=aSQuLPekSNBWCV2Y2VsFFaKJ+kNkVIn95QI56jA+VW3Bsj6M9iwx9hXv4tIr6rG5FGAtoLfeeSLIOpwoUueqHz4KFdboAikqtxViqMkks6imIH7vTJh6Tm930JcXwYAsaWxmwBsj3VwUzRf3GoBLH6XoNGqbLfmBu4aSqCKTwJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783543025; c=relaxed/simple;
	bh=Yw5dHL5Qdg6R0VcVsoQUOhgmE51f1J21LgY0LzNAcFc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LylkJVc9HhlGxSYnqu3wF6BOjCf0ChrLR53xRsUNWGA6trnEzXu/YpVFYo6ibdrENmVGYbFyl6xEgUBTPi/qYsNZRmC06thJctu5C/Uzk3KLrCaMwc5/Br6PiMvnG/hLmDnEIn3Kufq54EFqI/j4NZb2raozcfiUKDu9a41frME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfTzSeLv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5AA31F000E9;
	Wed,  8 Jul 2026 20:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783543024;
	bh=POo4reXuXxtUEoTC99UPcPEYcy1S5WLVHZGqNrq6pzM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QfTzSeLvprOD2MYJA0oqudKCFJFDaNcsPUkAmzPYBBAIuF+cKjSlDID8ls9lHCfZa
	 yLXtBKpDkZhoa2Yczk9l3w0HVUq35H/9mOpWN/GVzU7EwH1o+wMZ2/CL0APFwNrC3R
	 jN/XpERbGlz+BkVpbHX6NuP5VMvHitoB4ImAZtbwUFr4o0smaW4yl+Oj6250YbPjqN
	 gpALmRT3wYPbOGCf6m/sHX4thFq7kNBkjDjuYdr4B3+U1vxspaUt86y6CYRM+4RYd4
	 pqI3k8aCDoGxBpvgG5S8TYrEKK3t40+j4xagBTiqJdBKGzyU9YUyyHS590gpgz3ESE
	 15WBOTIJ7KDlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: display: lcdif: Allow display0 child
 node for i.MX6UL
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-arm_dts_ldb-v1-3-4f5579b85797@nxp.com>
References: <20260708-arm_dts_ldb-v1-0-4f5579b85797@nxp.com>
 <20260708-arm_dts_ldb-v1-3-4f5579b85797@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 20:37:03 +0000
Message-Id: <20260708203703.E5AA31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323156-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B965A72A476

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema inadvertently allows `dmas` and `dma-names` propertie=
s for the `fsl,imx6ul-lcdif` compatible string.
--

--- Patch [3]: [PATCH 3/4] dt-bindings: display: lcdif: Allow display0 chil=
d node for i.MX6UL ---
commit 4b641f03375f74e811e7a58ce3d750c19709f1d5
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: display: lcdif: Allow display0 child node for i.MX6UL

The legacy i.MX6UL LCDIF binding uses a display0 child node to describe
the attached display. This commit updates the binding schema to allow
this child node for fsl,imx6ul-lcdif.

> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/D=
ocumentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 2dd0411ec6516..2b123ddf06841 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -182,6 +182,7 @@ allOf:
>              contains:
>                enum:
>                  - fsl,imx28-lcdif
> +                - fsl,imx6ul-lcdif
>      then:
>        properties:
>          dmas: false

[Severity: Medium]
Does this inadvertently allow dmas and dma-names properties for the
fsl,imx6ul-lcdif compatible string?

By adding fsl,imx6ul-lcdif to this combined exemption block, it appears to
successfully bypass the legacy display restrictions to allow display0, but
it also exempts the i.MX6UL from the dmas restrictions which were correctly
applied prior to this patch.

If a device tree incorrectly defines dmas properties on an fsl,imx6ul-lcdif
node, dtbs_check might now silently pass without triggering a schema
violation warning.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-arm_dts_ld=
b-v1-0-4f5579b85797@nxp.com?part=3D3

