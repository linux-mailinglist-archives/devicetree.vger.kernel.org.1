Return-Path: <devicetree+bounces-302836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHV/BHInFWpcTAcAu9opvQ
	(envelope-from <devicetree+bounces-302836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 06:54:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 597515D0B7C
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 06:54:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F5EF3007E34
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 04:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64CA9381AF0;
	Tue, 26 May 2026 04:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYjHUlGW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB191A9F96
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 04:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779771247; cv=none; b=ab6sSKaOOYMsleqqIlsb0fm9V1GmqVHyaIUTQagstfCepDsD1Si5eWz+5Uk52iJPDXgnBOAyCeFLwkJ2fiq/dDWieWf6rl87bLhFVFx7rTqYhMv3DKhIVwNLSOS7jp6u7cSPe4PMf53FkB2WIoudea72FOhVmTqLQCjE4RWLOqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779771247; c=relaxed/simple;
	bh=iNbxCK4YfP+/2q7agusT83LuMztXCPIw1GcaAPeubkU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ld3UFCSADpi49itfhEsTJF4QHk71L9LFKG2yxJdjKFl+X9Tg4pYcMEAWm844fBlu0WEkzqEf476cRhOe8snGTAGYPGW+YPUSM267aBkoVxbvQ4YTAftFqycTz/uzuG0wX6FrTjUgHEMp9xagrNZGTC61CoHORajb3ddKwwRCDXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYjHUlGW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AE641F000E9;
	Tue, 26 May 2026 04:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779771245;
	bh=sBRkpYFlLmjT89sUV+VfzaydpY6MrD7lMJkq3WUKIiE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nYjHUlGWxycVnHsOlZ4Q29KR81Stf9OkJqwpzJbEkwavrGUa+VtRlZmXSvjc+eBJA
	 aTmxe6KR5h7Oj+cRjldWimWytgatJ6eFncN5OJD2tqZ5Lxx2vxIivHYTpSULXV69kW
	 CMIu3LuX6GgL32SCGTlM172PNufVU+dDyNpi/H1dvlgq6vvZpBdt4679ax28U3kP/i
	 ylulRQA80Fb4ukhY5MKWvH1cKVE/CMBJ7vwZeUG/avqBe3J7iBINgzye9ZXNJkzlRI
	 EN3NOoReNJ/EnLowkWWlhJWY9kQkgPcGZ9gxb/JyHBL2MYjUOK73w6L9+gUq9v2ynn
	 dT6PBvgDy/rhg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add device tree for SA8797P
 Ride board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260526034557.1669007-6-shengchao.guo@oss.qualcomm.com>
References: <20260526034557.1669007-6-shengchao.guo@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 04:54:05 +0000
Message-Id: <20260526045405.9AE641F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302836-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 597515D0B7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Thermal zones lack 'critical' trip points, disabling emergency the=
rmal shutdown and risking hardware damage or data corruption.
--

commit aa64a0535c6c55bb78850bd4e6509abadf2cf760
Author: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>

arm64: dts: qcom: Add device tree for SA8797P Ride board

This commit adds the initial device tree for the Qualcomm SA8797P Ride
reference board. It configures primary and secondary UART consoles,
enables UFS storage support, and defines thermal zones for PMIC dies,
UFS, and SDRAM sensors.

> diff --git a/arch/arm64/boot/dts/qcom/sa8797p-ride.dts b/arch/arm64/boot/=
dts/qcom/sa8797p-ride.dts
> new file mode 100644
> index 0000000000000..d429de313f248
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sa8797p-ride.dts
[ ... ]
> +&thermal_zones {
> +	pm_kobra_thermal: pm-a-die-thermal {
> +		polling-delay-passive =3D <100>;
> +		polling-delay =3D <0>;
> +		thermal-sensors =3D <&scmi23_sensor 3>;
> +
> +		trips {
> +			trip0 {
> +				temperature =3D <115000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";
> +			};
> +
> +			trip1 {
> +				temperature =3D <135000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";

[Severity: High]
Should this upper trip point be configured as a critical trip instead
of a passive one?

Since all thermal zones in this file use passive for their maximum
temperature thresholds and omit cooling maps, the thermal framework
will not trigger any mitigations.=20

Missing a critical trip also prevents the kernel from performing an orderly
thermal shutdown when these high temperatures are reached. Even if the
underlying hardware or SCMI firmware implements an abrupt hard cutoff,
defining a critical trip point allows the operating system to shut down
cleanly and prevents potential filesystem corruption.

> +			};
> +		};
> +	};
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526034557.1669=
007-1-shengchao.guo@oss.qualcomm.com?part=3D5

