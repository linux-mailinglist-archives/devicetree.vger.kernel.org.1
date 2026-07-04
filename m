Return-Path: <devicetree+bounces-320494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E/O6LxZBSWrHzgAAu9opvQ
	(envelope-from <devicetree+bounces-320494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:21:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D36D708114
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:21:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WmefqTZL;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320494-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320494-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8BF33008778
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 17:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212D9356751;
	Sat,  4 Jul 2026 17:21:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B762EB874;
	Sat,  4 Jul 2026 17:21:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783185684; cv=none; b=DVWBRyud0Bj9L9VYKScwKa2+zFAeeKmSWkkbU7Y2AEk1BqwA9qS+qdHqNgTDIcspx5kR4FnB8pjHt6icxgrMKFnlmHKUIY11eDY92NlrqodeSDxtrbzPgUn1JwOSweY2xxXS+lAMXodO0lJbu7ISUAY1RHbjkwAy2fhshv0Ii/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783185684; c=relaxed/simple;
	bh=N+D4bS9j8lbS0oMPsCfIPJwNlZb6TGwY6qjvrMsTvIM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m097nEDeb4kDbzc4SJKRJSgFxWc5bCW1Ntv80SOukqh53qUdbFrHVEFI1CkaVMtomHyxcyqTyrIrcT+btgdDzyxRNdIShKV21sSr9pMGKPit6Mt8i8VsdAu06t9ebhqDvt3LT82Xb0SWmAAIFhFhEW3m/4VvEuu77RfqemhS/vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmefqTZL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 473761F000E9;
	Sat,  4 Jul 2026 17:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783185682;
	bh=FHODrm9rZPE03hq9bh47KMUuto6L5StMM3+j+YIYpQ4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WmefqTZLEL5YXm2f5sE9Bl779Pm/0TEoD8O51bqnxlXAj7xj6yrmdcvsr5kKeeAXd
	 9ICTg7gLhMu58/RzG9HWiT95ADb6LhR6rCfosPmM5GQjWdNzoH/ETfFjqoky6KmTqN
	 qzuutHbZ+9RPJQeWgSpxXO32ZyBcwPuBoy6NgckvbF5FqwtuDVGfAG8jRCG9/1Lq0G
	 KGggK8rN+/YLR+DOQ76ir0BvGVUirmo4Slt+FhZUhsLLr4nz+EQso0ZzUa5j/6yxBi
	 w95AIzkRqBrBKPD+DDl8qLIn7ceSToDAkgNNq8OBE5oXZYQuG+mDtGk1VW/1Qfuy/r
	 EpoKdJvn4ZYZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/5] arm64: dts: allwinner: sun55i: add thermal
 sensors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikhail Kalashnikov" <iuncuim@gmail.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260704171411.1413349-6-iuncuim@gmail.com>
References: <20260704171411.1413349-1-iuncuim@gmail.com>
 <20260704171411.1413349-6-iuncuim@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 17:21:21 +0000
Message-Id: <20260704172122.473761F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320494-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:iuncuim@gmail.com,m:devicetree@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D36D708114

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The GPU thermal zone incorrectly names its trip points node 'gpu-t=
rips' instead of 'trips', causing the thermal core to silently ignore all G=
PU trip points.
--

commit 2bc13bc055e98065b94ef6b295284d00ab1541b4
Author: Mikhail Kalashnikov <iuncuim@gmail.com>

arm64: dts: allwinner: sun55i: add thermal sensors

This commit adds thermal sensor configuration and thermal zones for the A523
processor, including THS0 and THS1 sensors. It defines trip temperatures,
polling delays, and cooling maps for the CPUs, GPU, and DDR.

> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> index 5afa8d92acbfb..07ff74a955441 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
[ ... ]
> +		gpu-thermal {
> +			polling-delay-passive =3D <100>;
> +			polling-delay =3D <1000>;
> +			thermal-sensors =3D <&ths1 2>;
> +			sustainable-power =3D <2400>;
> +
> +			gpu-trips {

[Severity: High]
Will this node name cause the thermal OF framework to skip parsing the GPU
trip points?

Looking at thermal_of_trips_init() in drivers/thermal/thermal_of.c, it
specifically looks for a child node named exactly "trips" using
of_get_child_by_name(np, "trips").

Because this is named "gpu-trips", it appears the GPU trip points will be
silently ignored by the parser. This could leave the GPU without thermal
protection, including the 110-degree critical shutdown threshold. Should
this be renamed to "trips"?

> +				gpu_temp_threshold: gpu-trip-0 {
> +					temperature =3D <60000>;
> +					type =3D "passive";
> +					hysteresis =3D <0>;
> +				};
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260704171411.1413=
349-1-iuncuim@gmail.com?part=3D5

