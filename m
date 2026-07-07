Return-Path: <devicetree+bounces-321789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ySRmLAOyTGoroQEAu9opvQ
	(envelope-from <devicetree+bounces-321789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:00:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 222FA718CC3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:00:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LnCEf3jh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321789-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321789-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26BD0301B934
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BDBF37D10E;
	Tue,  7 Jul 2026 07:55:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528DD372045
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 07:55:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783410956; cv=none; b=dERREt407BX1vaP1fga0P7RWIwMbt77VnD8vnx0BM/4KiJkWTd0p+4zzS4iLifNsHknCrAeNUzsNTg5NhjJk7In2lIPVzVLoPyMRAYg4OXfcIuKtSK0qDUwfxra+84TrDjwix3u1DFs4z4GFSFkbr4QXrv+v4IuDdHyEKU0ii74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783410956; c=relaxed/simple;
	bh=cf2ilN7eLatU+SF8wBU9/5ekZQIujExaJD0tPFadOVA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MhyZBteVFD/9rgn5e3WcLqnj1lFPvNtNZrADp5T7NvdUhzHqnS5JcaapkC9aZ2C+jmjQwKDwnmTaZ4yFydkfS/RBVNBPtgJl7AHk5fizUcqYxf9gpb9l1n0/CzcxKZugGaYLZPlsr1OVjGuiq+y24yYaH62XsbaB3ZL9DjeMprw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnCEf3jh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB8E41F000E9;
	Tue,  7 Jul 2026 07:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783410955;
	bh=gDAbgYizi7UaAVjp/HG1Kw4ncBOHvNrlzxzupxaDBpc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LnCEf3jhRnmd5x/5+dwVo1hXZN8MvcijBcIPP9lmWHU2wUTqj6KNPy6MFGuVuzcLW
	 9uIu8AZJl/ZH1Y5xMozBrV8WACFjgdSXThSav7EfBzKzVs3lBI9be6ubTDq4YspSRp
	 noC+JR9t0sTfFapdk3gxZxQ47EW9CwJrVlC799acGZgFcX4KRzgvNA+YMzdVaUYDuS
	 4pvM5RlUTpTa3xHcKrWjvSPsMeXb9J8UW4qo8bi+jooHkx0ZeGSDnVpSNWlbLXnz0s
	 1Hwh7e42HErCgCul6QVSOG+tjJsvUVHwx/gIveEiUoWLoQm5Zuz/WU7KL5g9/x0Cjg
	 4dD1PovhJgo1Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 1/2] arm64: dts: qcom: kodiak: enable inline crypto
 engine for SDHC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kuldeep Singh" <kuldeep.singh@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707-ice_emmc_support-v9-1-701c86f3c25b@oss.qualcomm.com>
References: <20260707-ice_emmc_support-v9-0-701c86f3c25b@oss.qualcomm.com>
 <20260707-ice_emmc_support-v9-1-701c86f3c25b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 07:55:54 +0000
Message-Id: <20260707075554.BB8E41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321789-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kuldeep.singh@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 222FA718CC3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `qcom,ice` property is added to the SDHC controller node (`sdhc=
_1`) but is completely missing from the `qcom,sdhci-msm.yaml` device tree b=
inding schema.
--

--- Patch [1]: [PATCH v9 1/2] arm64: dts: qcom: kodiak: enable inline crypt=
o engine for SDHC ---
commit d2f9d6d523de87c6105a372982b5405f3d09ebde
Author: Neeraj Soni <neeraj.soni@oss.qualcomm.com>

arm64: dts: qcom: kodiak: enable inline crypto engine for SDHC

This commit adds a dedicated inline crypto engine (ICE) node for kodiak and
references it from the SDHC controller via the qcom,ice property. It also
sets up the necessary power domains and clocks.

> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/q=
com/kodiak.dtsi
> index 90e50c245c0cb..3692be65cc21b 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
[ ... ]
> @@ -1050,6 +1050,8 @@ sdhc_1: mmc@7c4000 {
>  			qcom,dll-config =3D <0x0007642c>;
>  			qcom,ddr-config =3D <0x80040868>;
> =20
> +			qcom,ice =3D <&sdhc_ice>;

[Severity: Low]
Does this new property trigger a dtbs_check validation error?

The Documentation/devicetree/bindings/mmc/qcom,sdhci-msm.yaml schema uses
unevaluatedProperties: false. Because the qcom,ice property is not
currently documented in that schema, adding it to the SDHC controller node
here causes make dtbs_check to report a validation failure.

Should the binding schema be updated to include qcom,ice alongside this
device tree change?

> +
>  			mmc-ddr-1_8v;
>  			mmc-hs200-1_8v;
>  			mmc-hs400-1_8v;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-ice_emmc_s=
upport-v9-0-701c86f3c25b@oss.qualcomm.com?part=3D1

