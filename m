Return-Path: <devicetree+bounces-325865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id riaoDPzCVWpLsgAAu9opvQ
	(envelope-from <devicetree+bounces-325865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:02:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7495675100E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:02:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KKHjCBjm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325865-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325865-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE68F30578A3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD690286D7D;
	Tue, 14 Jul 2026 05:01:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1AD2DA757
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:01:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784005295; cv=none; b=FUFve+wsQ5kZ8xYc/asmwWZQeeFvegoUKIJUKx964+jnAfVa3jI7BrAzYyPP0B6Um+IP3lbW9juwFXYJrrLpqfwivOVghkmSINpspTue9HgV0pRHPLmHYE97andcshBO0KPjzP1txWWxH0PbB/C3H9t0DLK3eUKNEQ8SpZU3LMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784005295; c=relaxed/simple;
	bh=eAj4C/UmOFvjJHibxpMpZrzK7cZ/Cx0RRbGIpb+W+MY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ihJ9NALDyHuosUVBV+n0R/gB+pcvU3DiNxfoLMYWIrWT+jOpEmbB+sEClUY9Iymhz5l+asjESFmOm9xvQHF6YKLPj/PvXAIAUxO4sFJsCHyryPiw9IuU3kKSS7yOea5Yo3SDtKCiim6k764eaCy3XL2whFxvg2tobFC9lEZVm1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKHjCBjm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D84BC1F00A3A;
	Tue, 14 Jul 2026 05:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784005294;
	bh=flQs53v06qj41mn5ERKaiQITHH+2AnFNTeEYkZSGEF4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KKHjCBjmQ5r/SfHVIQ/9IBAm55atLl6I/s6/bLZqewPMe549FFSpkgSxUZddiGpDp
	 7wXZ6FC66bRYoQO3gfbcvxICYjenoNoQnboTf2uIPGBVWpe1wdKcrCzpGRkhDWufZG
	 yWziwK698XScfcixwVq4a47VzdxMfy0UoGNYmkZtspTtA0xf1UPD6QpjzLW0wtdtkB
	 88K715ft1uqXmhL0g5IozOHgqkEmSwNsU0SAmpyleK/n/K/HRgmYelN8k5cCALhuPF
	 IVMc781IS1lV7w3p6+46T0y5TJ4vM1yauWU4nZjnBARyfoXY5sab7imrt2w7KkH25i
	 80MLuf7CFQdOA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq9574: enable the PCIe support
 on RDP454
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-pcie_move_to_new_binding-v1-5-6bb25887a0dc@oss.qualcomm.com>
References: <20260714-pcie_move_to_new_binding-v1-0-6bb25887a0dc@oss.qualcomm.com>
 <20260714-pcie_move_to_new_binding-v1-5-6bb25887a0dc@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 05:01:33 +0000
Message-Id: <20260714050133.D84BC1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325865-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7495675100E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Mismatched and unsafe default bias for the active-low PERST# (re=
set) pin on PCIe0, causing premature reset de-assertion.
--

--- Patch [5]: [PATCH 5/5] arm64: dts: qcom: ipq9574: enable the PCIe suppo=
rt on RDP454 ---
commit 52495aceaf771805ada229c324028601d793b505
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

arm64: dts: qcom: ipq9574: enable the PCIe support on RDP454

This commit enables the PCIe0 and PCIe2 instances on the IPQ9574 RDP454
board to connect QCN92xx Wi-Fi cards.

> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts b/arch/arm64/boo=
t/dts/qcom/ipq9574-rdp454.dts
> index f2334b9e0ed49..146422aede7db 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts

[ ... ]

> +	pcie0_default: pcie0-default-state {
> +		clkreq-n-pins {
> +			pins =3D "gpio22";
> +			function =3D "pcie0_clk";
> +			drive-strength =3D <6>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins =3D "gpio23";
> +			function =3D "gpio";
> +			drive-strength =3D <8>;
> +			bias-pull-up;
                        ^^^^^^^^^^^^

[Severity: Medium]
Will this prematurely de-assert the reset for the QCN92xx Wi-Fi endpoint?

Because reset-gpios is active-low, configuring the default state with
bias-pull-up pulls the PERST# pin high before the PCIe host driver probes.
This can violate PCIe timing requirements if power and clocks are still
stabilizing, potentially causing link training failures or device
unresponsiveness.

Is it intentional that pcie0_default uses bias-pull-up here, while
pcie2_default correctly uses bias-pull-down for its perst-n-pins?

> +		};
> +
> +		wake-n-pins {
> +			pins =3D "gpio24";
> +			function =3D "pcie0_wake";
> +			drive-strength =3D <6>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie2_default: pcie2-default-state {

[ ... ]

> +		perst-n-pins {
> +			pins =3D "gpio29";
> +			function =3D "gpio";
> +			drive-strength =3D <8>;
> +			bias-pull-down;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-pcie_move_=
to_new_binding-v1-0-6bb25887a0dc@oss.qualcomm.com?part=3D5

