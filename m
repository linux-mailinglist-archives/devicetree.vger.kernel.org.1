Return-Path: <devicetree+bounces-317008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8nkdNnJmQmpu6QkAu9opvQ
	(envelope-from <devicetree+bounces-317008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:34:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 762646DA4BD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:34:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gb1zRgy8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317008-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317008-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C486E302177B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF45423156;
	Mon, 29 Jun 2026 12:25:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2B6423160
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:25:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782735929; cv=none; b=DSr1vlQhdAUm0lLP2ZS2dCMI1yG/DF8knfTx2xSFRcSuxleLKoh+0EIULZwFT0IpB07VbyJNARUCAmb34CuD+Mh/OUN2MNHuYj0zfifEj5FqL9OcjcDW2DHVDij3bAcZ8hurYYgSCbTSoThf/NIMO0+qcJgrkAdEtLOWQbSuQag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782735929; c=relaxed/simple;
	bh=x8MM4Vij8UVS2L4dzWDPxWnrGL8KF64f5uSnO3c8IZc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iof1l7obNiTAD15keNWHIN+GXD2wXLNqsQSO0WUh2IZ7oPHBURaPERDMWUoBza8QxFD9/0IrDBm/XJN1Qnorntt9co8/bsfnDiL7vsUDrWUws2vF2+aR+4JV7kMdbwkr36X68DleoAkfwFc+SFI8HPWBlIrQhpSi4nHso/Dife8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb1zRgy8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE3D1F000E9;
	Mon, 29 Jun 2026 12:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782735925;
	bh=oZq3HzBoE6H84O/7Xc4mXuUkH5xcueVnN1SS21e9Nig=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gb1zRgy8E001F1aGXXpwrwF9OnyOHrazAH+DSp1V2pUzQyTV2Lx7aU14l/5a1k72P
	 CzVQKp3mZQ8aG4okyTYwgpI3q/RiUBBkk4N2memcivjvWKTh+SYesSzv6j+rDg9OoA
	 7wb7xzoDt+dDdhPKu68jbhSno3mZqwTJ+IpZHBWAQhNiQGyr0OxSEqjIORpjKjmG74
	 LXNtHLgCrGd3NgeFifkvVT3/c6N5Mdiq232W66DTprBwVHLpG+lmQQ6TPURTz72/QJ
	 w0oYaJiCAUUiOirBz1dbWvxGhowb5HeQ1LOW92tZqlRWE53J1VpZN/iL4qpH+UPFKJ
	 BsmoCPNRvbKMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: media: qcom: Add JPEG encoder
 binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atanas Filipov" <atanas.filipov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260629121750.3469292-3-atanas.filipov@oss.qualcomm.com>
References: <20260629121750.3469292-1-atanas.filipov@oss.qualcomm.com>
 <20260629121750.3469292-3-atanas.filipov@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 12:25:23 +0000
Message-Id: <20260629122525.4CE3D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317008-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atanas.filipov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 762646DA4BD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Device tree schema validation failure: the example uses an incom=
plete and schema-violating parent `camss` node.
--

commit 862ed8809d046c435b4cc946e8aea64e3ff8a893
Author: Atanas Filipov <atanas.filipov@oss.qualcomm.com>

dt-bindings: media: qcom: Add JPEG encoder binding

This commit adds the device tree binding for the Qualcomm JPEG encoder
hardware block found on SM8250 SoCs. It defines the required properties,
clocks, and interconnects for the memory-to-memory standalone IP.

> diff --git a/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.ya=
ml b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
> new file mode 100644
> index 0000000000000..c8b4808054cb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
[ ... ]
> +examples:
> +  - |
[ ... ]
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        camss@ac6a000 {
> +            compatible =3D "qcom,sm8250-camss";
> +            reg =3D <0 0x0ac6a000 0 0x2000>;
> +            #address-cells =3D <2>;
> +            #size-cells =3D <2>;
> +            ranges;
> +
> +            jpeg-encoder@ac53000 {

[Severity: Medium]
Will this example cause a schema validation failure during make dt_binding_=
check?

The parent node uses the "qcom,sm8250-camss" compatible string, which means
it will be validated against the existing camss schema. Since the camss
schema enforces additionalProperties: false and does not permit
#address-cells, #size-cells, ranges, or child nodes, the validation will fa=
il.

The example node also appears to be missing other required properties for t=
he
camss binding, such as clocks and interrupts.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629121750.3469=
292-1-atanas.filipov@oss.qualcomm.com?part=3D2

