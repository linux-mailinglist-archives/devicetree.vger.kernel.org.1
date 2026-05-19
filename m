Return-Path: <devicetree+bounces-299878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMI5DLYfDGqoWgUAu9opvQ
	(envelope-from <devicetree+bounces-299878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:30:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D7957A117
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C9CB230C5647
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9EC3E0C44;
	Tue, 19 May 2026 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knIv5Blw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A75D30E84F
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779178710; cv=none; b=LGB8+uU1Q7kvMur0RoP8KPavqStlmP5AaNaEwyuPnLjCxd66Lb8N2uMvEaqs7BcMaxK128esh7mixWksEHNEEuAcFQL2huJWg4ITWggZIb4dkuiJ/Mg6eO33ygA1zGRl/74w266iYFeRzyOugkMtXo6fVUz0beycvjiXmPiepdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779178710; c=relaxed/simple;
	bh=ocsUQLPhHfcwrNAkbwLNIUBTV5ulGfSRXMMWfnPvUTU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gZmeSVyHTQLJyYXNjWxJAOGkxkAKBEoj43l2+agasELzZwtr8CW00+24EgeUcZwf9a3xvhJWGQAwjsXS1Q8ExPTYvawvdghnDthCcXk5hM7gBFLPSjKQulgij/bxQO0gry2TALA7ZlqydN95Tzg/E4Tk8LIe9NKOPUt0/LOBwW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knIv5Blw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B1B7C2BCB3;
	Tue, 19 May 2026 08:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779178710;
	bh=ocsUQLPhHfcwrNAkbwLNIUBTV5ulGfSRXMMWfnPvUTU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=knIv5BlwHx2tdufsB6kb3lTneOVaD9wy948Cpl9Vo8wJKE5EO6j346sV5pU8D3OhC
	 R8U4nyyq1aqyUDyQDQvrwx+hXM7V3BBZCd0g00nekrNYYnH8TLZp4GTeSh3GKDXJqT
	 vdhHuLgDLNpGzM93GQ4yznX3BNYoEviaJZbqR+oxD5kBdp6j5TJkIawai2MErm+4v/
	 ot2K+bb3KzyCsDMP1rkBNovimI9Ffm95wOu+hJs3Q9rIrLBZEIPaII/VfAFAKLhNCr
	 wCz+Bhf2UjK6mtu8J/V6nhJdSZvu5iZ9XvlnVZ9xR60Po6DPPtJJBToVxFT3WaEVvi
	 fdjbSgb588gDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: display: panel: document the
 Renesas R63419 based dual-DSI video mode Display Panels
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-topic-sm8650-ayaneo-pocket-s2-r63419-v4-1-b8929af5e951@linaro.org>
References: <20260519-topic-sm8650-ayaneo-pocket-s2-r63419-v4-1-b8929af5e951@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:18:28 +0000
Message-Id: <20260519081829.6B1B7C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299878-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 31D7957A117
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The `reg` property is omitted from the `required` list.
- [Medium] Schema validation bypass for dual-DSI ports structure.
- [Medium] Flipped positive/negative voltage regulator assignments in the d=
t-binding example.
--

commit b7585613be27a07063e2837b4b237f47e298a1f5
Author: Neil Armstrong <neil.armstrong@linaro.org>

dt-bindings: display: panel: document the Renesas R63419 based dual-DSI vid=
eo mode Display Panels

This commit documents the Renesas R63419 generic DDIC used to control
dual-DSI LCD panels, specifically for the Ayaneo gaming handheld devices.

> diff --git a/Documentation/devicetree/bindings/display/panel/renesas,r634=
19.yaml b/Documentation/devicetree/bindings/display/panel/renesas,r63419.ya=
ml
> new file mode 100644
> index 0000000000000..e4db01f88302c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/renesas,r63419.yaml

[ ... ]

> +description:
> +  The Renesas R63419 is a generic DDIC used to control dual-DSI LCD pane=
ls.
> +
> +allOf:
> +  - $ref: panel-common.yaml#

Since this documents a dual-DSI panel, should this reference
panel-common-dual.yaml# instead?

Referencing panel-common-dual.yaml# would correctly enforce the dual-DSI
topology constraints and validate the ports structure for dual-link DSI
panels.

[ ... ]

> +required:
> +  - compatible
> +  - vdd-supply
> +  - vddio-supply
> +  - vsp-supply
> +  - vsn-supply
> +  - vci-supply
> +  - backlight
> +  - reset-gpios
> +  - ports

Should reg be included in this required list?=20

The Renesas R63419 is a DSI peripheral and must be instantiated as a child
node under a DSI controller bus, which inherently requires a reg property f=
or
its virtual channel. Omitting it from the required list allows incomplete
nodes to pass validation.

[ ... ]

> +            reset-gpios =3D <&gpio 176 GPIO_ACTIVE_LOW>;
> +
> +            vdd-supply =3D <&vdd_3v0_lcd>;
> +            vddio-supply =3D <&vdd_1v8_io>;
> +            vsn-supply =3D <&vdd_5v0_pos>;
> +            vsp-supply =3D <&vdd_5v0_neg>;

Are the voltage regulator assignments flipped in this example?

It looks like vsn-supply (Voltage Supply Negative) is mapped to the positive
regulator, while vsp-supply (Voltage Supply Positive) is mapped to the
negative one.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-topic-sm86=
50-ayaneo-pocket-s2-r63419-v4-0-b8929af5e951@linaro.org?part=3D1

