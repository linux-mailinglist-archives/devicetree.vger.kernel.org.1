Return-Path: <devicetree+bounces-322799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WVfMLQZDTmpmJwIAu9opvQ
	(envelope-from <devicetree+bounces-322799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:31:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BEF72651A
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:31:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ay1zj8vZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322799-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322799-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24B4730156F6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8023042B731;
	Wed,  8 Jul 2026 12:31:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645383FFAA6
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 12:30:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783513860; cv=none; b=YX//bMtfewPAPc653bSw2ULPHBLmt9LqoIqV1IXz7iIwinAJwAhQD4mfa6xmPd5c+YFaB5INx7QUAWfEfvbYW84pPTPDSe6sV1R07M5JoS6HU4pQOHa681T2lpnJzZyMJFRGeH9hg3EjN7QadtKr1zKM5xkOImeo2fWCiTldAxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783513860; c=relaxed/simple;
	bh=M3MSOtvVshAXs53n51GfAYLh4uYgUHaD6Amk/OKTUDM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mte3C1deYFEub5QnNpRpMUSghbwvHyo1DHke79qqJiOPBEmNd8GLt1db8jR/WsHNr8wDNWh758tRvFOOzSsykAXF8Q1jO2rRBDGvAtky09W/vPRGKoqlgUyhq+02WMmNxUxw43Tf0lr+lonI7rCqK2a4TYZFBa3mNIm3EdV+Adw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ay1zj8vZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887D01F000E9;
	Wed,  8 Jul 2026 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783513859;
	bh=IlRUXPFk2vbTLOIm+kuVmkj1sw5VqyQ4MktpZxd7404=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ay1zj8vZYSav8wjcQ6wosWFhTht8HqV4gL9USLz0d5pLvF5Fbytqzd6zGF7Tt7YuY
	 oUaq8w5bH9DW6RTd/GLtT1o2AHSWbUTPGfzAF6sVHIkX7ZjF5kOvWmBWeQK34TQSLy
	 rsDsf3wLalkYLy0nSt+O64v9Wm2iUY35FeKPEv5eLdsmqm9uZU0+W41psOjRg2rtu1
	 Rr7rdTOHYPq63vmLlRl03MR5NDBZ87+/on/ipWIJDtYSQKyBbGnzvPXY9Le3r3uJoP
	 o6uN0/zmZ93CZdSzVhcA/QKE51JpjA5/XkOc3avCtdlxDDw8/Yqiku7OmbpXqeFiwY
	 sDW3znjm/MGpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM
 platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260708-shikra-dt-v7-4-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
 <20260708-shikra-dt-v7-4-977b65a300c1@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 12:30:58 +0000
Message-Id: <20260708123058.887D01F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322799-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[sashiko.dev:server fail,lists.linux.dev:server fail,tor.lore.kernel.org:server fail,smtp.kernel.org:server fail,vger.kernel.org:server fail,qualcomm.com:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:komal.bajaj@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18BEF72651A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The top-level GPIO keys node is incorrectly named `gpio-key` instea=
d of the standard `gpio-keys`.
--

--- Patch [4]: [PATCH v7 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM plat=
form ---
commit e39fa2dd470c78fd482e4061f2bce87250dda523
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

arm64: dts: qcom: Add Shikra IQ2390S SoM platform

This commit adds the device tree include for the IQ2390S variant of the
Shikra System-on-Module. It includes the common shikra.dtsi and adds
PM8150 PMIC regulator definitions specific to this variant.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi b/arch/arm64/bo=
ot/dts/qcom/shikra-iqs-som.dtsi
> new file mode 100644
> index 0000000000000..73945bf42112d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
> @@ -0,0 +1,170 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +
> +#include "shikra.dtsi"
> +#include "pm8150.dtsi"
> +
> +/ {
> +	gpio-key {
> +		compatible =3D "gpio-keys";

[Severity: Low]
This isn't a bug, but is this top-level node named correctly? Devicetree
conventions typically use standard generic names like gpio-keys across the
subsystem rather than the singular gpio-key.=20

> +		label =3D "gpio-keys";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&vol_up_n>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-shikra-dt-=
v7-0-977b65a300c1@oss.qualcomm.com?part=3D4

