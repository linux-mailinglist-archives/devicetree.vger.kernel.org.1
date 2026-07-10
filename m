Return-Path: <devicetree+bounces-324329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rq+DCODBUGpy4gIAu9opvQ
	(envelope-from <devicetree+bounces-324329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:56:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 174D5739507
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:56:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RZVci02s;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324329-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324329-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 13DEB3004078
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5C73DB96B;
	Fri, 10 Jul 2026 09:37:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4CA395AE6
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:37:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676236; cv=none; b=TgDUpBmYsAb/Usrl9nS3EmWH5plz7dQ2tHoixj6VDgWIaV8bhC31q/WbJezTgWxqujNl8blaUUEemqOG8KuHh7uZdo24LztW3crXHSWPgjCO1B00eh6+OqqRC2zEGiscSAyyjMffydn6OF2fezZCBLo6xKRKbZ4SmMT5cIPva4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676236; c=relaxed/simple;
	bh=EjOQVVSJfAD0kphK/x0VeZzVZRWtIFDua9OmDIfNRe4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=F5IcAXg/mhPf9AhlGk9NqycS+BjczVv7B+rzDvPY8ZZ3xTLMs5yK77o3bvR18Akm1Wh+srlhDKaMm48s0OJF4nhGiIBcHqE3wgepReRRoL8DZRJhvPv5jP7qM5d6KE+ir2zeXfIDvE1gEI3q5PiNET8tDSblR2p84i8gZ3LOG2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZVci02s; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 175431F000E9;
	Fri, 10 Jul 2026 09:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783676235;
	bh=wGjyppKkpgrBkChxl7Kj2cnptRgBFa0mc9YJRyf8MfA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RZVci02sMEgZOoOehHHwEUPl02j/mVbXTjrFiyWC+8YcJDTMVKnkWr1Ga1n35vCG1
	 0QCrJWaL6npCdxOeThOYSe23w87N8IDl5D1aHXie53DtXHPgY20AjJ6/mEfalWNYi+
	 NQHVZxiRVW3WC8B3yrwEOs+bK4dQnyRnw4Pu6lhLLNloXpD5U7qhzNlZXlaWVuTcI2
	 NJckTO4oUZNEQvW9ZrqS/uM0osd2zjbjsfu8iJ71y2yIEC0BLrxv3JdPJTSJPWtpOL
	 XhbNs8Gj4gMWj6USULsZrgFaKVLYeqL5PQPFVlCUY6QyHtup49S7xDFTSXZ8Zhkcoz
	 t8QSrhU4qiIpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: milos: add CPU interconnect
 properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Weiss" <luca.weiss@fairphone.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-milos-cpu-opp-v1-3-ae7f4b09bc77@fairphone.com>
References: <20260710-milos-cpu-opp-v1-0-ae7f4b09bc77@fairphone.com>
 <20260710-milos-cpu-opp-v1-3-ae7f4b09bc77@fairphone.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 09:37:14 +0000
Message-Id: <20260710093715.175431F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324329-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,fairphone.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 174D5739507

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Adding `interconnects` properties to the CPU nodes without providi=
ng an `operating-points-v2` table causes the interconnect paths to be reque=
sted but never scaled, potentially hanging the system when sync_state drops=
 the boot bandwidth to 0.
--

--- Patch [3]: [PATCH 3/4] arm64: dts: qcom: milos: add CPU interconnect pr=
operties ---
commit dee7f3bb2bc8dddd64b4e3fb79a167672d8b6301
Author: Luca Weiss <luca.weiss@fairphone.com>

arm64: dts: qcom: milos: add CPU interconnect properties

This commit adds the interconnect entries for each CPU. It defines two
different paths: CPU to DDR, and L3 Cache from CPU to DDR interface.

> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qc=
om/milos.dtsi
> index 243210e6cb6eb..63dbd03512975 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi

[ ... ]

> @@ -65,6 +66,11 @@ cpu0: cpu@0 {
> =20
>  			qcom,freq-domain =3D <&cpufreq_hw 0>;
> =20
> +			interconnects =3D <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS
> +					 &epss_l3 SLAVE_EPSS_L3_SHARED>;
> +

[Severity: High]
Will this cause the system to hang when the interconnect driver's sync_state
callback is executed?

Since there is no operating-points-v2 table defined for the CPU nodes in th=
is
device tree, qcom-cpufreq-hw will fail dev_pm_opp_of_add_table() with -ENOD=
EV
and will not enable interconnect scaling.

However, because the interconnects property is present, a Device Link is
created that defers the interconnect provider's sync_state until
qcom-cpufreq-hw probes. Once it probes successfully without ever making a
bandwidth vote, sync_state will run and drop the initial boot bandwidth to =
0.

Does this inadvertently throttle or disable the CPU interconnects by enforc=
ing
a 0 vote on the CPU-to-DDR and L3 paths?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-milos-cpu-=
opp-v1-0-ae7f4b09bc77@fairphone.com?part=3D3

