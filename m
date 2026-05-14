Return-Path: <devicetree+bounces-297828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1+nKOJdBBmophQIAu9opvQ
	(envelope-from <devicetree+bounces-297828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 23:41:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7A15471FD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 23:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D834300B04F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D503AFAE1;
	Thu, 14 May 2026 21:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMseM+P+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA1346E4A
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 21:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778794900; cv=none; b=h8gQ2iiVuCX8yWB1C8GI9eEGuP5cPg9nJ9XTXCLHTJmswtQdUorIj0O71tLKn/C+S87IS0TZsY0ghcEuCLTS7K9Nfez5CNm0KIOVrPh8355aG+GZ63/mq+qbV92dmzKxnG57bffNyOhHRGeohV8qJif3yZcucjd58EJhMitDDsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778794900; c=relaxed/simple;
	bh=C873b8PTXsoyNELTeex0qQEmy1WuxymsKC0eErximdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aXD90s64RRxbYTE1lE5Z90erLCyEjXEgM0EiptL7Ozzdb3C719/zKAAnhIsSePT2h1KUc0iwkPwScrOqwCOR5ynqp6r3cfGzdBkf8QCa7JYIE9mptc2MGjHwnckknvX4znfMqWtOvEPmATrn0+bJNcegH3XGFy70ZeSBR/Dd6cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMseM+P+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041E6C2BCB3;
	Thu, 14 May 2026 21:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778794899;
	bh=C873b8PTXsoyNELTeex0qQEmy1WuxymsKC0eErximdE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=pMseM+P+Y2oYfo78Z+glfVy5KNjKUgZwb2YdudSdQWpVnC/N+q6wu5LXT7mWUJW1a
	 cn9rIGIW5Uy1irCA5UqVZwV+JJyuMOEFQxxz9025TXW3ErFW3vO/dGtAB70cV0RWJE
	 RLwbwnMiZYZqWrsCzfRtADcYR9a6khcqBlhaKO982bkg0OR8VsZ+4NQX+knO6fMfOX
	 T7FfMWDcww4Ti5wUmNUsk9gM0krEsXg4OCWDSp8PJ01NnWrV0u6liFFAjF9l5jp7UF
	 ABrUZhXAHyw0c7CVMDQOveB5pSxD5eQ+iPXdjwWC1/5lDhZySGBiigNomDi+LlhmtQ
	 xf+QkFnVN89oQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 08/10] ARM: dts: qcom: msm8960: add SMSM & SPS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Antony Kurniawan Soemardi via B4 Relay" <devnull+linux.smankusors.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514-msm8960-wifi-v2-8-7cbae45dab5e@smankusors.com>
References: <20260514-msm8960-wifi-v2-8-7cbae45dab5e@smankusors.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 21:41:38 +0000
Message-Id: <20260514214139.041E6C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2D7A15471FD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-297828-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,0.61.9.0:email,0.185.218.32:email];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.184.161.160:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,linux.smankusors.com,dt];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The `sps_sic_non_secure` node is named `interrupt-controller@121000=
00` but lacks the required `interrupt-controller` property.
- [Low] The newly added `smsm` node uses deprecated `qcom,ipc-X` properties.
--

commit 8d6a970313bb462414684a54e064e3c213cf7869
Author: Antony Kurniawan Soemardi <linux@smankusors.com>

ARM: dts: qcom: msm8960: add SMSM & SPS

This commit adds the Shared Memory State Machine node to coordinate state
transitions between the Applications processor and the Riva subsystem. It a=
lso
adds the SPS SIC non-secure node.

> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts=
/qcom/qcom-msm8960.dtsi
> index e215d8809f288..fdc060df45449 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -109,6 +109,31 @@ smem {
>  		hwlocks =3D <&sfpb_mutex 3>;
>  	};
> =20
> +	smsm {
> +		compatible =3D "qcom,smsm";
> +
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		qcom,ipc-1 =3D <&l2cc 8 4>;
> +		qcom,ipc-2 =3D <&l2cc 8 14>;
> +		qcom,ipc-3 =3D <&l2cc 8 23>;
> +		qcom,ipc-4 =3D <&sps_sic_non_secure 0x4094 0>;

This isn't a bug, but the device tree binding schema for qcom,smsm marks
qcom,ipc-1 through qcom,ipc-4 as deprecated.

Is it possible to use the modern mboxes property here instead to model
the cross-processor hardware signaling?

[ ... ]

> @@ -459,6 +484,11 @@ clock-controller@4000000 {
>  				      "hdmipll";
>  		};
> =20
> +		sps_sic_non_secure: interrupt-controller@12100000 {

Since this node lacks the interrupt-controller property and acts as a sysco=
n,
naming it interrupt-controller@12100000 will trigger dtbs_check warnings.

Should this be renamed to a generic name like syscon@12100000?

> +			compatible =3D "qcom,msm8960-sps-sic", "syscon";
> +			reg =3D <0x12100000 0x10000>;
> +		};
> +
>  		sdcc3: mmc@12180000 {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-msm8960-wi=
fi-v2-0-7cbae45dab5e@smankusors.com?part=3D8

