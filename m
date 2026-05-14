Return-Path: <devicetree+bounces-297468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAZwMF2wBWppZwIAu9opvQ
	(envelope-from <devicetree+bounces-297468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 13:22:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75B540EBD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 13:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BC3D301BCF6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 11:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15613C063F;
	Thu, 14 May 2026 11:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWkcDoiF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD733B7B71
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 11:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778757600; cv=none; b=a/ZiiaPG+Gt2ltXPcTRVKla322BSOTNYRONegHs6iP7iiQU5cGJjIBKzE2OiDaKEjST/eRWUdwnFzRm0yLDgfkVE/QVeC0ifxSJYrlNL4ELFO+6AnDQBrrpf31Wsbc30ee1npeVKAguCTeBeqEgU8qEuLMwfzi9rM0Sj9nOD9Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778757600; c=relaxed/simple;
	bh=yqmWAg0M0vVKH/mxrZ4wxRzgmMv9BXrFiD1arIhKIN8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SndwhoeDZd5Dc+YAdRJnP27xKlav8GIaSatFs5bgAHz31S325h9m6rcQkR8rudpy2kZfhXgItILG7jjd1/M7Xt2Ls6oAeYWAL23JE/f5dM70oDDXKW8PI2poKNfsDJrB8EomuvKkEOxvekIC1ECykBURT7sVvaIBEKTTsCpVW3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWkcDoiF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD9F2C2BCB3;
	Thu, 14 May 2026 11:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778757600;
	bh=yqmWAg0M0vVKH/mxrZ4wxRzgmMv9BXrFiD1arIhKIN8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=hWkcDoiFsIddPSlEaSXnJHl9hevHsSYFzhXlBfjLyLQhE3T04vlNbdTGf25ekhZZk
	 uYk/WhzHqGIwXFXhfxPjVjTLn9WXIg1zNcIKp5kxPqFOeqB0RdSnnr1OY3wjCXLcf/
	 O7jt7+Yyw/Ln7D3JQMpyyvyjzBsUQD+q4Yk3Sog2MBtacvXqy7rpLa57fdYcplEPIq
	 MqU7s1WX/ngezdZnnQ+VFquEhSfQl9aKlukjRztdT87rnx+KW9TYoEX5O1TsFF2f18
	 s9AOtYTjhOTYuZkfa6MQGejOtCmVDgWUE0U+twD9nha0DtuWPv7HRq79b6mnMgKbhc
	 BBFan4Vgrs1Zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 14/16] arm64: dts: ti: k3-am62p-j722s-common-main:
 Make main_conf a syscon
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260513-beagley-ai-display-v2-14-9e9bcefde6bc@ideasonboard.com>
References: <20260513-beagley-ai-display-v2-14-9e9bcefde6bc@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 11:19:59 +0000
Message-Id: <20260514111959.DD9F2C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1C75B540EBD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297468-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,ideasonboard.com:email,0.1.134.160:email,0.27.197.96:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Adding the generic 'syscon' compatible without an SoC-specific i=
dentifier violates the syscon devicetree bindings.
--

commit d90ed1b8cacb6fc6ff7bf1ad93349b9fab13ace3
Author: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

arm64: dts: ti: k3-am62p-j722s-common-main: Make main_conf a syscon

This commit changes the main_conf block to include the "syscon" compatible=
=20
string. This allows drivers for various devices to access specific register=
s=20
they need within the CTRL_MMR block.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arc=
h/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> index f130c7cb998d7..5e8eb9f2fe243 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> @@ -40,7 +40,7 @@ gic_its: msi-controller@1820000 {
>  	};
> =20
>  	main_conf: bus@100000 {
> -		compatible =3D "simple-bus";
> +		compatible =3D "simple-bus", "syscon";

Does adding the generic "syscon" compatible without an SoC-specific identif=
ier
violate the syscon devicetree bindings?

According to Documentation/devicetree/bindings/mfd/syscon.yaml, any node
including the "syscon" compatible must also define a hardware-specific
compatible string (e.g., "ti,am62p-system-controller" or "ti,am62p-main-con=
f")
before the generic "syscon" string.

Modifying the property to exactly compatible =3D "simple-bus", "syscon"; mi=
ght
result in dtbs_check validation errors. Should a proper SoC-specific
compatible be introduced to satisfy the binding?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-beagley-ai=
-display-v2-0-9e9bcefde6bc@ideasonboard.com?part=3D14

