Return-Path: <devicetree+bounces-305003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMrGKjNMHWphYgkAu9opvQ
	(envelope-from <devicetree+bounces-305003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:09:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B2B61C221
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24AEF305D131
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3967C38E8DB;
	Mon,  1 Jun 2026 09:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeXvw+01"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D9838D41F
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780304537; cv=none; b=Jk9WURu/Vw4dEqNizfVGiXcCqMCGWDXqMEotVFIJi1Hzr28Oc/4rwKmnpYjvu9waowtuhs5MDlzBv1JHSI4R19OE+mpIwTm/VDjRi1EhbGkHORcrsnwNZqezSuzhd4rf9orOvAPYoIzdbnRBrp3KsM8ZHqV/9mH1EbJVqrbQ46o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780304537; c=relaxed/simple;
	bh=DIpaAbiF3tQWSelXeHhiuIDw3bxsmxjj2veCVJQ9Tog=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GIjvP2OSCdr/P4QqddFuTGt/doXI6WnhevtbPPg/ZIdU4oX/M0NjjHsUAy/ph3AntRjnwf97NzZbTslHgYVH/CnSJ59zikdQgcmNyLTFQoP7wZW7AMKbVxQL41FXdiwjjCost3Q2lJGzOHb8kq1bfO9ivP02b8NHcsdjPwGhNOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeXvw+01; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6D1B1F00893;
	Mon,  1 Jun 2026 09:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780304535;
	bh=Q1GY1i/k9FLxeP+DmQXdWFHBytVwH7RbpJMXtgzAq1E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IeXvw+01rZOjrT/mVgkHzU1MgGsHaALWQJ3bLVY3DXv6ybqoJA7M95fwb0leJZ+/b
	 9kKd65iyt3ksJ0vuPj5a0uIyVlDpJ9cCirsPLeK3ahtFMr84/7mIfjnBD+evvRctJy
	 WITcpoH/ngNqfTzkbLCEUmsrwLWB3l7CViPNRrofS5RP9QTNpsWAnNvU4EUgdJODKe
	 W/xt3SP22hZwXdcISmtLqM2gT/EnDF4WHssqM9m3XFfHXmMDckLI4a9CMn/ZC21MAZ
	 wZLfuDWdeAMJX5fPRS3W4XshmdeX+0Rk4Ngw450v0vgs2Vvr0sqhSHSK9r9jeL40/X
	 o2+4/Yq5QJYjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/10] ARM: dts: qcom: msm8960: add SMSM & SPS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Antony Kurniawan Soemardi via B4 Relay" <devnull+linux.smankusors.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-msm8960-wifi-v3-8-fec6ac8dba02@smankusors.com>
References: <20260601-msm8960-wifi-v3-8-fec6ac8dba02@smankusors.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:02:15 +0000
Message-Id: <20260601090215.A6D1B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305003-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,linux.smankusors.com,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smankusors.com:email,0.61.9.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.184.161.160:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 96B2B61C221
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `sps_sic_non_secure` node is incorrectly named `interrupt-contr=
oller@12100000` without providing the required interrupt-controller propert=
ies.
--

commit 4a8cbafd47f1d161899adf92654dd133fdf9107f
Author: Antony Kurniawan Soemardi <linux@smankusors.com>

ARM: dts: qcom: msm8960: add SMSM & SPS

Add the Shared Memory State Machine node to coordinate state transitions
between the Applications processor and the Riva subsystem.

> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts=
/qcom/qcom-msm8960.dtsi
> index cb7199d0366ee..662e2e45bbb80 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi

[ ... ]

> @@ -459,6 +484,11 @@ clock-controller@4000000 {
>  				      "hdmipll";
>  		};
> =20
> +		sps_sic_non_secure: interrupt-controller@12100000 {

[Severity: Low]
Does this node name cause devicetree validation warnings? Devicetree tooling
expects nodes named 'interrupt-controller' to act as interrupt providers and
contain properties like the 'interrupt-controller' boolean and
'#interrupt-cells'.

Since this node acts purely as a syscon, should its name reflect its generic
function, such as 'syscon@12100000', rather than 'interrupt-controller'?

> +			compatible =3D "qcom,msm8960-sps-sic", "syscon";
> +			reg =3D <0x12100000 0x10000>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-msm8960-wi=
fi-v3-0-fec6ac8dba02@smankusors.com?part=3D8

