Return-Path: <devicetree+bounces-297152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKspATHwBGr7QQIAu9opvQ
	(envelope-from <devicetree+bounces-297152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:42:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB9353B23A
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA1F7302428D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534BF3BED7A;
	Wed, 13 May 2026 21:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfn5gwqm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3109E3BC68D
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 21:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778708525; cv=none; b=H8eYXTndm4JmQZ37Eohtip3bvOXC2XjPhlSZLcH3IQ1k28XcIfT66/lui60UvuPYzzxoHlEgpJpGk01tCL8BUZ1NVCAr4oZ8Y3f/A62IOdHfiugAAD+6i7ya4rwT3FfcpoZeeQc7JCOlps7Az5yx/1cI7eqjr2oLFTdKYMhjJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778708525; c=relaxed/simple;
	bh=XawclTxOGS7jlTgXDoKV3KDC+UQnxgsILXZ1rYTqd3Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b5zOxRU461UmT5FJoNLY/E5Cr9T1y0cY46RctWib8i4ZEvAGt/tdc5q/YCh13nv3mBwq2G9iqsje6AhrZwldhqIdAuGuWctvdi2EhYnp4p7FWZS7QYr4mnQ8CahgyoTAz5QPaInpTr2vLyoB1KXybb/vsZfYlm6irtU3HWzzbgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfn5gwqm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD77C2BCB8;
	Wed, 13 May 2026 21:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778708524;
	bh=XawclTxOGS7jlTgXDoKV3KDC+UQnxgsILXZ1rYTqd3Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=kfn5gwqm+Bc/cJAWDmR9LYHFGUsxyWH8MixnfCCrUhYkns3PVT/cxhXLeQK6i8iMG
	 Rq6w5tBGfVir8INzAIHpU+0o+frQsTLpQC9yBASLCkPjq4FuVVCC/Onw0aQ7UzNSty
	 8qDrSA60u14xHLW3FNKpcB4EDaFN8GzZCqX2VKJ/TEr9PIsNGq4kHMKoUDiCXFXl3Y
	 l2saxBrilAQWms2eXKxvZwCA/81RYe07v9BuFNEZ24kUrG8EriWgiXhqAAkLKDK6ip
	 tiWiqR9VqTGolrwP9XphZBaElvvpMwDn+9kBR3/wFkfkmm/XU94at0Uv8/hvJWuWU0
	 FLHpGAjaddbNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: sm8250: sort out Iris power
 domains
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512-iris-venus-fix-sm8250-v6-1-51856dbef83c@oss.qualcomm.com>
References: <20260512-iris-venus-fix-sm8250-v6-1-51856dbef83c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 21:42:03 +0000
Message-Id: <20260513214204.7BD77C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6DB9353B23A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297152-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The Venus driver ignores the newly added 'mmcx' power domain, prev=
enting its voltage levels from being scaled or enabled.
- [Low] The addition of a fourth power domain violates the existing device =
tree binding schema for the Venus node.
- [Low] Duplicate phandles to the same OPP table in `required-opps` violate=
 the `opp-v2` device tree binding schema.
--

commit b2dff816f619c94b6f1db957c2bb928b6d9248f2
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

arm64: dts: qcom: sm8250: sort out Iris power domains

This commit adds the MMCX power domain to the Iris device node on SM8250
to support MMCX voltage levels. It updates the power-domains,
power-domain-names, and required-opps properties.

> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/q=
com/sm8250.dtsi
> index 7076720413ab2..1fcbd400a3be3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -4326,8 +4326,12 @@ venus: video-codec@aa00000 {
>  			interrupts =3D <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains =3D <&videocc MVS0C_GDSC>,
>  					<&videocc MVS0_GDSC>,
> -					<&rpmhpd RPMHPD_MX>;
> -			power-domain-names =3D "venus", "vcodec0", "mx";
> +					<&rpmhpd RPMHPD_MX>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			power-domain-names =3D "venus",
> +					     "vcodec0",
> +					     "mx",
> +					     "mmcx";

Does this addition cause a device tree schema regression? The schema in
Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml currently
enforces maxItems: 3 for power-domains and restricts power-domain-names
to exactly "venus", "vcodec0", and "mx".

Will the qcom/venus driver actually attach to this new mmcx power domain?
Looking at drivers/media/platform/qcom/venus/pm_helpers.c,
vcodec_domains_get() initializes opp_pd_data with num_pd_names =3D 1, and t=
he
hardware resource struct sm8250_res.opp_pmdomain in core.c only lists
{ "mx" }.

Since "mmcx" is not in this array, devm_pm_domain_attach_list() will only
attach "mx". This would cause opp_table->required_devs[1] to remain NULL,
and the OPP core might silently skip setting the performance state for MMCX.
Does the driver need an update to properly manage the MMCX rail?

[ ... ]

> @@ -4353,22 +4357,26 @@ venus_opp_table: opp-table {
> =20
>  				opp-720000000 {
>  					opp-hz =3D /bits/ 64 <720000000>;
> -					required-opps =3D <&rpmhpd_opp_low_svs>;
> +					required-opps =3D <&rpmhpd_opp_low_svs>,
> +							<&rpmhpd_opp_low_svs>;

Could these duplicate phandles cause a schema validation regression?
The opp-v2 bindings in Documentation/devicetree/bindings/opp/opp-v2-base.ya=
ml
explicitly state that required-opps should not contain multiple phandles to
the OPP nodes in the same OPP table.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-iris-venus=
-fix-sm8250-v6-0-51856dbef83c@oss.qualcomm.com?part=3D1

