Return-Path: <devicetree+bounces-319291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a/V9B9A9Rmp5MgsAu9opvQ
	(envelope-from <devicetree+bounces-319291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:30:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 685246F5EE4
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:30:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SqDG+etC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319291-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319291-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55CBB3259EE7
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C21B47AF71;
	Thu,  2 Jul 2026 10:16:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CF847CC70
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:16:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782987377; cv=none; b=UfQZBYr603eXi4EZG8o0zv441/FD5AD+AqRossBlsbEQNNmU0Bf0p2yP5pB1zqV0XDxJLDfNux9XZc7mHbRWxOctsInw7pynUQdq1Nn+62w3qrJiFqupiDT7Cbmfh+rCHFd/Tj0PmiUmQOdaf9Fyl374wO0K7VSrg7SLjOXhslA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782987377; c=relaxed/simple;
	bh=+gyMFDd3UGCiQVMjZG64h9pWiJy6JoobOQgBOqWr6sk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hPYCLZIhG0oX36pjZ8WP8qbzUp2ynBrtGACxlyvv5skaiYPo32BkYPEf0Vb0VC/aQ9RlM0s3e381igAbeFGxA+bC8RDVuFfXS7f0bdUybcvSzmBAT2exWKoydMS4CcTuARo75yfhxTWKbuCuZFqaOKWQ0egNJLLgovc9tmCLeNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqDG+etC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 609071F000E9;
	Thu,  2 Jul 2026 10:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782987375;
	bh=EbsHyjYE10IPTU26pbLUdZjkxeU3qQmsQ8bvUK7agwc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SqDG+etCU/bZ1m80th7MS6/nU9QTbpIjOSHC2gYT6XhdJpPN0GGW8djhqyykZFM0u
	 YDEqRbwCozKfrjT5TcyClx09twP5O2PuxGrYW8Ppu/frU/tUlarwjY8vZ0AjECMRK0
	 60ujeMA5WYYLekoxDRKH7JA9I16ByC2Ydnn44OgE4IQiPgSyQdyyS2s6UwHVkkedpL
	 oZSkh2ysHYYNvvtR4iMTEDtRFbVOLNCple9Xs86Gk+glLl3vZW4ZyglXGr9fh929GQ
	 jYbS8trd2jeZRLzHvdg1f8fyrlD0VLa9p/sci358mMCRIwGBppzGCJUr0Y7XYfbA9E
	 zqepNFevoT+fQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/5] arm64: dts: qcom: sm8550-qrd: add SPMI ADC
 channels and thermal nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-topic-sm8x50-adc5-gen3-v5-2-8169953634ad@linaro.org>
References: <20260702-topic-sm8x50-adc5-gen3-v5-0-8169953634ad@linaro.org>
 <20260702-topic-sm8x50-adc5-gen3-v5-2-8169953634ad@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 10:16:14 +0000
Message-Id: <20260702101615.609071F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319291-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 685246F5EE4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch relies on a missing device tree header file `qcom-adc5-ge=
n3.h` and undefined parameterized macros for ADC channel definitions, causi=
ng a dtc syntax error and total build breakage.
--

commit 3bfb4c69433bbdcc629b30cb68184ebf16919c26
Author: Neil Armstrong <neil.armstrong@linaro.org>

arm64: dts: qcom: sm8550-qrd: add SPMI ADC channels and thermal nodes

Add the SPMI ADC channels on the PMK8550 SPMI5 ADC3 for the other PMICS
on the system. The thermal nodes are sorted by the sensor channel to be
coherent with the system thermal nodes ordering.

> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dt=
s/qcom/sm8550-qrd.dts
> index 2fb2e0be5e4c6..6812e45d65e78 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
[ ... ]
> @@ -997,27 +1083,218 @@ led@3 {
>  	};
>  };
> =20
> +&pm8550_temp_alarm {
> +	io-channels =3D <&pmk8550_vadc ADC5_GEN3_DIE_TEMP(1)>;

[Severity: Low]
Does this rely on a missing device tree header file (qcom-adc5-gen3.h) and
undefined parameterized macros for the ADC channel definitions?

If the build falls back to a kernel-internal header where ADC5_GEN3_DIE_TEMP
is defined as a constant, this expands to something like 0x03(1), causing
a dtc syntax error and breaking the build.

> +	io-channel-names =3D "thermal";
> +};
> +
[ ... ]
> +	channel@701 {
> +		reg =3D <ADC5_GEN3_1P25VREF(7)>;
> +		label =3D "pm8550b_vref_1p25";
> +		qcom,pre-scaling =3D <1 1>;
> +	};
> +
> +	channel@703 {
> +		reg =3D <ADC5_GEN3_DIE_TEMP(7)>;

[Severity: Low]
Is this another instance where a missing parameterized macro is used to
calculate the ADC channel register, causing a dtc syntax error?

> +		label =3D "pm8550b_die_temp";
> +		qcom,pre-scaling =3D <1 1>;
> +	};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-topic-sm8x=
50-adc5-gen3-v5-0-8169953634ad@linaro.org?part=3D2

