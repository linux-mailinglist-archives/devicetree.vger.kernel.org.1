Return-Path: <devicetree+bounces-326344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uzgnGjFZVmoV3wAAu9opvQ
	(envelope-from <devicetree+bounces-326344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:43:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6B97568B9
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:43:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CcpxwEyN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326344-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326344-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0DE130854DE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58D4494A03;
	Tue, 14 Jul 2026 15:42:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FF2D48B362;
	Tue, 14 Jul 2026 15:42:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784043747; cv=none; b=UeCAK+zHSG7u9CiOH1RGQjJzXdvZVBHnm6UUZ92CCf4Z7XolRUQUZN7jl4VMFiRXOvFKkUyz5nt/WSS5pR3CBWkmVJIBJR8CleNf5mCDvNYMYuLVy0uuacJsIZE6A4Xkpxo712KWgeEvQLPRyNPVRaalwiKkeXtn7IOUWR33G9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784043747; c=relaxed/simple;
	bh=/pelhpvu6dO0IIGQCST7m4gb+zKnR/dT/i7j5BaCT84=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aSepeqG6PAQezUFFjBwfmYsbTQW2t3u7XOTt8dUveK0Yj0YVmYaKG1B1y/xciQYwML9x6XNr/Sz9apr12OP9J1ULNIX9S3UurMGhAaKYt4lNkkQHgW911gAT3Qrsi+TPXX6lOafR0JMM87uX+oaOlNIxHZTCieC0BpTWVU7nlro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcpxwEyN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CDF1F00A3E;
	Tue, 14 Jul 2026 15:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784043746;
	bh=h1jl/MaLKetDl0dySqCl9UjmTtIv8JQ09lo0H+A0TRI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CcpxwEyN5N71uxm4ski6Paen3vGnwsiFeLe1Gpv69NEjR6oNgmnOeBpGDw7oMQow9
	 eJeqpHKvF15i3bKhEU43VWbPAV2J2wAqHPMmeZSXpvteI24pOgIEDQFSHZoQ09cLSa
	 TtEun4vp6UFZtuBIVXkVdEdGQQePjfvrlvhOco0t1hwxwnhCpuPeRxv9Hg5kdDslSO
	 6oSw6c/DjXWigmc9TkkbnzkorklzfMc9pzxSFj6NZTtM6Ee6l3afWOYPVOMSes4eiR
	 /D1Z7hwj30LWITysMFZGX/Brm+Phvh73uIrqXcrKZldUFcnWNZZunhTsrbglGXwczZ
	 /0PABbAE8U4iQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v13 04/10] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: imx@lists.linux.dev, linux-amlogic@lists.infradead.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, wsa+renesas@sang-engineering.com, neil.armstrong@linaro.org
In-Reply-To: <20260713-qcom-sa8255p-emac-v13-4-119f8699ef8e@oss.qualcomm.com>
References: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
 <20260713-qcom-sa8255p-emac-v13-4-119f8699ef8e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 15:42:25 +0000
Message-Id: <20260714154226.09CDF1F00A3E@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326344-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:imx@lists.linux.dev,m:linux-amlogic@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:wsa+renesas@sang-engineering.com,m:neil.armstrong@linaro.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F6B97568B9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Two bindings referencing snps,dwmac.yaml were missed when updati=
ng existing bindings with the `maxItems: 1` constraint for `power-domains`,=
 unintentionally relaxing their validation bounds.
--

--- Patch [4]: [PATCH net-next v13 04/10] dt-bindings: net: qcom: document =
the ethqos device for SCMI-based systems ---
commit f14d5198abd1c0f54fbb8e9d86982b940a5a6bc0
Author: Bartosz Golaszewski <brgl@kernel.org>

dt-bindings: net: qcom: document the ethqos device for SCMI-based systems

Describe the firmware-managed variant of the QCom DesignWare MAC in a separ=
ate
file. This also updates the maximum number of power domains in snps,dwmac.y=
aml
and limits maxItems to 1 for existing bindings referencing it.

> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Docu=
mentation/devicetree/bindings/net/snps,dwmac.yaml
> index 2449311c6d28e..d3aff1df3070d 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
[ ... ]
> @@ -185,7 +186,8 @@ properties:
>            - const: ahb
> =20
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

[Severity: Medium]
The commit message mentions updating existing bindings referencing
snps,dwmac.yaml to limit their power-domains maxItems to 1. However, it loo=
ks
like nuvoton,ma35d1-dwmac.yaml and spacemit,k3-dwmac.yaml were missed.

Because they rely on snps,dwmac.yaml and lack an explicit power-domains
definition, do they now unintentionally inherit this newly relaxed maxItems=
: 2
limit?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-qcom-sa825=
5p-emac-v13-0-119f8699ef8e@oss.qualcomm.com?part=3D4

