Return-Path: <devicetree+bounces-311362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h8yMG82VLWrlhgQAu9opvQ
	(envelope-from <devicetree+bounces-311362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:39:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6460C67F2F5
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:39:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ogrgEV4+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311362-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311362-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8092C3001FBC
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 17:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A282331EA5;
	Sat, 13 Jun 2026 17:39:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490521B85F8;
	Sat, 13 Jun 2026 17:39:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781372360; cv=none; b=XXTKgJ8iFKuZNJ7Y9NQSeClld3FiuApFRtGkHv68nodVhEnMX8zcpTPrULELbyzXzxen8q+kiQT/gUyXFShc/72OoCa+/53j0oXXSext5gxcF7aEPiOgmWfXBOpCZZ9M9pfn2GTynx+2CTjYwJMRhRsqPD/1AMg/x/oy6chcPdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781372360; c=relaxed/simple;
	bh=bsemIgA80QN1Net2rL2KliKucnd3bqSpPpy6z3xhHVU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ppWqzy9k8dTJ7eUhP5TmvUc5U6kyynrun8kMU1KEs8M1mvv7tQXSWEtd5+sc9y2/fXHQtjdO+ao3XlHvK28EGWsQaRM/T1SV8yEsn93kvvQeUZNxJLOl9s6wLTvU+gOqItLec46FwtO4mq5IHMHH+e0IrYAVTDaJFfCbbUh4tZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogrgEV4+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DBD1F000E9;
	Sat, 13 Jun 2026 17:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781372359;
	bh=8EzOUDMBGmw4x/8LM30psbSMzM7LJDnVG/eNTZr3kEM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ogrgEV4+X1XWWEeO3pukkUNTR9B77Vn4CuvFRmrEjzKaROns3SYDNnwS71D0cf1tJ
	 HJ2SWobXTWqkQV8TI2lFsrDbUcHXIu3UdA8u5E64PfoY2Bapkeyf7SKRWA1/TV/yzt
	 hI2oihbyb1y1mCAi4F57vxp/KN4nyWW7SdMErGmJ/QZin9CnVKwQPQsWOuUlDNjIib
	 GImzti4SrihhPxtLTKsWHwvwqLHISpuWzWSgQW1VJ+o9z+vSkPpFr7uMUhVJPW4FTN
	 PmPg2OdgsUlMefNNUFBUFkPULB6LeLamEX28N7W9YbJC/LLt8T0hwcN98RmW7vTppK
	 oPyNJ2FEVJlFw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 6/6] ARM: dts: sun8i: v3s: Add support for the ISP
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Kocialkowski" <paulk@sys-base.io>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260613152655.212490-7-paulk@sys-base.io>
References: <20260613152655.212490-7-paulk@sys-base.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 17:39:18 +0000
Message-Id: <20260613173918.E4DBD1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311362-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:paulk@sys-base.io,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6460C67F2F5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree nodes `isp` and `csi0` include `interconnects` and =
`interconnect-names` properties that are not documented in their respective=
 YAML binding schemas (`Documentation/devicetree/bindings/media/allwinner,s=
un6i-a31-isp.yaml` and `Documentation/devicetree/bindings/media/allwinner,s=
un6i-a31-csi.yaml`). Because these schemas specify `additionalProperties: f=
alse`, this causes schema validation failures during `make dtbs_check`.
--

commit 299a0d91b22100c87010de21ec5908b8fed75e39
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

ARM: dts: sun8i: v3s: Add support for the ISP
   =20
This commit adds support for the ISP on V3s and related platforms by
introducing a dedicated compatible string and device tree node. It links the
ISP to the CSI bus, module and ram clocks, resets, and adds a port connecti=
on
to CSI0. The interconnects property is also used to inherit the proper DMA
offset.

> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/d=
ts/allwinner/sun8i-v3s.dtsi
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi

[ ... ]

> @@ -755,5 +763,32 @@ csi1: camera@1cb4000 {
>  			resets =3D <&ccu RST_BUS_CSI>;
>  			status =3D "disabled";
>  		};
> +
> +		isp: isp@1cb8000 {
> +			compatible =3D "allwinner,sun8i-v3s-isp";
> +			reg =3D <0x01cb8000 0x1000>;

[ ... ]

> +			resets =3D <&ccu RST_BUS_CSI>;
> +			interconnects =3D <&mbus 5>;
> +			interconnect-names =3D "dma-mem";

[Severity: Low]
Are these interconnect properties documented in the corresponding YAML bind=
ing
schemas (like Documentation/devicetree/bindings/media/allwinner,sun6i-a31-i=
sp.yaml
and similarly for csi0)?

Since device tree schemas typically specify additionalProperties: false,=20
leaving interconnects and interconnect-names undocumented will cause=20
make dtbs_check to report schema validation failures for these nodes.

> +			status =3D "disabled";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613152655.2124=
90-1-paulk@sys-base.io?part=3D6

