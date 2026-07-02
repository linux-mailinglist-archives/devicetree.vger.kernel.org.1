Return-Path: <devicetree+bounces-319170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b3yqGpwzRmrALgsAu9opvQ
	(envelope-from <devicetree+bounces-319170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:47:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A83F6F5777
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:47:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hQF3SWr6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319170-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319170-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4FE25312BD7D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0183DA5A1;
	Thu,  2 Jul 2026 09:06:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC783EB7FE
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:06:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983215; cv=none; b=eP7DXxy0aKe5GBoe4QL2IQwcLcoJIOs/O4wmOBfvCKy5pcInQA0bKLK+qWrG5DGYpmS48CSPQr0BvbYjYsmuiQPCziwsT/QwemxI4qNfiG4qIXhQw0RD/ScnJihPnmOc/vjkoDuvMtFA19our3Yv4TQn3rXeXp2xTxgf4uFMC0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983215; c=relaxed/simple;
	bh=m3ZoRQ8XFi4O6c2bDok1nUQhJbi/sIGxJLPW4WcGgz0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Joy985jZCPVVZKVJXYs3jWYCjlbZ7kHVKwQ3Xk7Fu6fn42gpFuWpp0l2oLHusG6J40B+mjC/O6y7Qk2QmiSw3lVvvD/PWrDRNxIZJvTH6BT0n1wUHRtgoOU2cI7W9SUh+PbqzH+y5aXc/8rrI+0cs5+xhl3Ct8mFExKBWBgnS9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQF3SWr6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 297201F00A3D;
	Thu,  2 Jul 2026 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782983212;
	bh=qPzmLDX3QxQ4GdsnHCWxejMVlk9a6dOmUOtu2sWT4oQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hQF3SWr6Bw2ii+KN9MLhChWH6WFvITesXMIk8xoirQhhUV+rehaz9aenfCcM5P0ap
	 B50G/j8kApZfLDRnq/mIy46PKTz+hKl3NHKoj5oKojC83j+v9aMuBsmysbcFVjxXJW
	 Y2Agi1IK6v3pbmWDgxECaTbTXCI4FmPOD4Mc2Mp7g4D61QrSpbuio4d/HRgGEZ50P+
	 ADL0ieScwwDJFeAD5Q6vweaxVDu7ZGhBNATL8Q6oTGnbaqm/IVFS2rbuP7i1FRc9do
	 yg/UY642PW/Ka3Kt9zwitOXBZBlSdpdZrtOkivPQXPbGYzdvv+s3L6Bo5/MDeh8HDm
	 tCnOG4zpfVzWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 3/3] arm64: dts: renesas: r8a779g0: Add gPTP
 node
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org
In-Reply-To: <20260701090607.1108208-4-niklas.soderlund+renesas@ragnatech.se>
References: <20260701090607.1108208-1-niklas.soderlund+renesas@ragnatech.se>
 <20260701090607.1108208-4-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:06:51 +0000
Message-Id: <20260702090652.297201F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A83F6F5777

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly added `gptp` node claims the exact same memory and reset=
 resources as the existing `tsn0` node, leading to `-EBUSY` probe failures =
and hardware state corruption if both are enabled.
--

commit c52da814d390d81d618c033aea857f507bdb9ae0
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

arm64: dts: renesas: r8a779g0: Add gPTP node

This commit adds a new gPTP module node to the r8a779g0 device tree, sharing
the hardware between the RAVB and RTSN Ethernet devices.

> diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/=
dts/renesas/r8a779g0.dtsi
> index 82a7278836e57..b9b860ef70351 100644
> --- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -589,6 +589,15 @@ tmu4: timer@ffc00000 {
>  			status =3D "disabled";
>  		};
> =20
> +		gptp: ptp@e6449000 {
> +			compatible =3D "renesas,r8a779g0-gptp", "renesas,rcar-gen4-gptp";
> +			reg =3D <0 0xe6449000 0 0x500>;
> +			clocks =3D <&cpg CPG_MOD 2723>;
> +			power-domains =3D <&sysc R8A779G0_PD_ALWAYS_ON>;
> +			resets =3D <&cpg 2723>;
> +			status =3D "disabled";
> +		};
> +

[Severity: High]
Does adding this gptp node cause resource conflicts with the existing tsn0
node?

The new gptp node claims the 0xe6449000 memory region and the 2723 reset li=
ne.
However, looking at the existing tsn0 node right below it, tsn0 also claims
the exact same memory region and reset line.

If both nodes are enabled in a board device tree, this will lead to probe
failures when the drivers request exclusive access to the 0xe6449000 MMIO
region. Whichever driver probes second will receive an -EBUSY error.

Additionally, the rtsn driver explicitly asserts the 2723 reset line during
interface bring-up via rtsn_reset(), which would silently wipe the hardware
registers configured by the gptp driver.

Should the tsn0 node be updated to drop its gptp memory region and reset li=
ne
to safely extract the shared module?

>  		tsn0: ethernet@e6460000 {
>  			compatible =3D "renesas,r8a779g0-ethertsn", "renesas,rcar-gen4-ethert=
sn";
>  			reg =3D <0 0xe6460000 0 0x7000>,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701090607.1108=
208-1-niklas.soderlund+renesas@ragnatech.se?part=3D3

