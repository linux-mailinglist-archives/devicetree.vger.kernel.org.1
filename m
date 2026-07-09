Return-Path: <devicetree+bounces-323322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IIG6Lrc2T2r2cAIAu9opvQ
	(envelope-from <devicetree+bounces-323322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:50:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB78672CE45
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:50:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MH7QksTF;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323322-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323322-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD57E300AD4A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91563A9616;
	Thu,  9 Jul 2026 05:50:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D003A7858;
	Thu,  9 Jul 2026 05:50:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783576240; cv=none; b=bjdJccJ8sJNfq7Kr/GSG5Au/E6V/XN0tj3BA0Mq0gPKhMEcKrrbHgi/i+8wb/ZO5qb7WQYp8D85E7Va9u5T2fGcT6jWgYcadnGL+qMXlXjohoEj27QaeKeJAjWFexikOZPF2XRZAh0a1l1p8BY055v9J6Ln9gPA8tC7DA14v8Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783576240; c=relaxed/simple;
	bh=FX7whN65jVrE20PvneALpRHqPhH6kmMEfSszGNbBOJY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dOgvBD78OiWSJPNGs+7Lm8eZyESzR06K8JEbGt5AP/7FIrTbgtpm73GvrmDuJfULIoUmdn6RH//Tpcv2g6awhUi+PTOcf1Kw/B/EXscWqk9auNDvsbLHV7AO83DrCaexBzRn8wZ8EK60cNuI7wCiMEIzgRR+ytWO018s+WNDvfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MH7QksTF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF1E61F000E9;
	Thu,  9 Jul 2026 05:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783576239;
	bh=YNn6ISIEjfzZs3npYxuLbY/ckJbGgqpqaTejrCtmRcE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MH7QksTFDL1iM/bByvrapR8cbRQxfcdXy6oHlU3Xl38gEpJPxLVaOdwaWt4Dd/PmU
	 FHw9Pfddpbmg8OIaXVLf0dWGiBZ6h9gawbZ5EWJ2cQhWeSVb5ZeBE2PjBc4Uo3aggr
	 luyncI9IFV2JLU5LorSKC3La1Z8eYAacCB/hbwd1O3ai+eJ0jMdbgSGIxOv0jbSQ1J
	 UiUdqE1hYlqPZ6WngGTzRRmKRjqzk4z31ouXlf4vGiX3pbZcbGrs8GWUQrz4Vn8tlq
	 YVgpj27Y2voMkzgkbFx3n1lgX7SoB8+T6cRH/TY27YsN4N6HgEkyL4OOZTVdZ74krI
	 5Zu0s+/3k+CNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: thermal: imx: Document calibration
 offset property
Reply-To: sashiko-reviews@lists.linux.dev
To: "HaoNing Cheng" <Haoning.CHENG@cn.bosch.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-1-00f88f42930b@cn.bosch.com>
References: <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-0-00f88f42930b@cn.bosch.com>
 <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-1-00f88f42930b@cn.bosch.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:50:38 +0000
Message-Id: <20260709055038.BF1E61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323322-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bosch.com:email,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Haoning.CHENG@cn.bosch.com,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB78672CE45

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Inconsistent indentation in the device tree example for the newly a=
dded property.
--

--- Patch [1]: [PATCH 1/2] dt-bindings: thermal: imx: Document calibration =
offset property ---
commit 1a75813b8a61f5ee87309553dc49a0dab98ae1c1
Author: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>

dt-bindings: thermal: imx: Document calibration offset property

This commit documents a new optional property,
fsl,temp-calibration-offset-millicelsius, to align the reported CPU
temperature with board-level measurements. The binding example is also
updated to demonstrate its usage.

> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b=
/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> --- a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml

[ ... ]

> @@ -109,6 +116,7 @@ examples:
>              nvmem-cells =3D <&tempmon_calib>, <&tempmon_temp_grade>;
>              nvmem-cell-names =3D "calib", "temp_grade";
>              clocks =3D <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> +             fsl,temp-calibration-offset-millicelsius =3D <(-6400)>;

[Severity: Low]
This isn't a bug, but does this line have an extra leading space? It appears
to be indented with 13 spaces instead of 12, misaligning it slightly with t=
he
surrounding properties in the example.

>              #thermal-sensor-cells =3D <0>;
>          };
>      };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-b4-symana2=
1-11221-imx-thermal-support-upstream-6-18-v1-0-00f88f42930b@cn.bosch.com?pa=
rt=3D1

