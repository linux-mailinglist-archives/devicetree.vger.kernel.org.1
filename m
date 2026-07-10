Return-Path: <devicetree+bounces-324319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qQNTA7G8UGpm4QIAu9opvQ
	(envelope-from <devicetree+bounces-324319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:34:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D1C7391CF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:34:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WT9Ej5Rt;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324319-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324319-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 577D5300D149
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84063BFAE2;
	Fri, 10 Jul 2026 09:28:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C48738AC83
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:28:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783675721; cv=none; b=JndnzopWdP9fca1Sv8+fhgPnMwBbuRWJe47eVPlnymjPAPs7Jqj9A8ul0E/x/djl6Q/IZ+Vcp+w78KHo5rNpy0tmV3C2nFdaChQ23+GvSyfmhoU2JbGVYWSMZn99mzG/baVf0CIlSxX4WlnchyMtxowelA5jgPOLW7LHwXeupOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783675721; c=relaxed/simple;
	bh=HoVVxq6/HksWs7+PW6hooBJQWkOOjzRNwJHZo1B2p4M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NpY+rrCv02RoLGnHzwDXgXO5evFMqauZdd9mbdQ3ACE/wlHE1pefX00iCamb6yvQWiyEhWOmqthdyRD4UDP7NFxWTahTnDuFElDwYaOeGDR3Rz2AefjFiPxKAyqyy92D5A2k9tl5FxtR8NhvKM9VuOnno2tgFoJLGKT7Nb+Z3Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WT9Ej5Rt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048541F000E9;
	Fri, 10 Jul 2026 09:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783675720;
	bh=LMgDLp3D7h+9+VTwEWSGuoQNH7pyk/IZGonYb4AQD4Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WT9Ej5Rt3uxk0l/OvHZ1rdEqUrOOwmB0G3VEZTdgn3DBf98PnjlXj5SOloZ7FaUnp
	 Re7wE/v95JaM/lxq2Y/GpmysKog5rZ6aP03dtUPV82t341vVL7pA9JHpOMnI2Mo7m+
	 KSK1vCjU7MKzwVk4GWY/E7JlkPPUPa2rQiVg+n7ptLaoyPRjeUpkcOi4+p4lX2keWc
	 DCwbtJSlAsbqX+1sv4F8fy/LsJiRWJwUil4xlY/w+cVx/8Wp1kRgDC3QNvL1TeYlZy
	 K9VXs6JW0/Oy/yItYHvaDskBoM0L6ItFTRZI3fMp1vbTKAN8A1ZzGParr7WdKxWhJY
	 9wl4pYIkPGU4Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: milos: add CPU OPP table with DDR
 & L3 bandwidths
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Weiss" <luca.weiss@fairphone.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-milos-cpu-opp-v1-4-ae7f4b09bc77@fairphone.com>
References: <20260710-milos-cpu-opp-v1-0-ae7f4b09bc77@fairphone.com>
 <20260710-milos-cpu-opp-v1-4-ae7f4b09bc77@fairphone.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 09:28:39 +0000
Message-Id: <20260710092840.048541F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324319-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:luca.weiss@fairphone.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42D1C7391CF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Hardcoded memory bandwidths for LPDDR5 in the SoC DTSI without a=
ccommodating LPDDR4 variants.
--

--- Patch [4]: [PATCH 4/4] arm64: dts: qcom: milos: add CPU OPP table with =
DDR & L3 bandwidths ---
commit a003f8c1742072e3a4def9c84f16252b9b3b93fb
Author: Luca Weiss <luca.weiss@fairphone.com>

arm64: dts: qcom: milos: add CPU OPP table with DDR & L3 bandwidths

This commit adds the OPP tables for each CPU cluster to permit scaling
the DDR and L3 cache frequency. The bandwidth requests are aggregated
across CPU cores based on their current OPP configuration.

> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qc=
om/milos.dtsi
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
[ ... ]
> +	cpu0_opp_table: opp-table-cpu0 {
> +		compatible =3D "operating-points-v2";
> +		opp-shared;
[ ... ]
> +		opp-1497600000 {
> +			opp-hz =3D /bits/ 64 <1497600000>;
> +			opp-peak-kBps =3D <(768000 * 4) (1363200 * 32)>;
> +		};
> +
> +		opp-1593600000 {
> +			opp-hz =3D /bits/ 64 <1593600000>;
> +			/* TODO: ddr4 =3D 1017000, ddr5 =3D 1555000 */
> +			opp-peak-kBps =3D <(1555000 * 4) (1363200 * 32)>;
> +		};

[Severity: Medium]
Will hardcoding the LPDDR5 bandwidths here in the shared SoC device tree
cause issues for boards equipped with LPDDR4 memory?

Since this explicitly sets the higher LPDDR5 values and leaves the LPDDR4
values as an unresolved TODO, could this lead to LPDDR4-equipped boards
requesting out-of-spec bandwidths?

This might result in increased power consumption or interconnect configurat=
ion
errors when LPDDR4 devices attempt to scale frequencies based on these OPPs.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-milos-cpu-=
opp-v1-0-ae7f4b09bc77@fairphone.com?part=3D4

