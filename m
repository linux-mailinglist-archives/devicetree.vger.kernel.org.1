Return-Path: <devicetree+bounces-321228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S770Bpe2S2o0ZAEAu9opvQ
	(envelope-from <devicetree+bounces-321228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:07:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 799D6711BB0
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:07:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DdyG7bB+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321228-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321228-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 498EB30BA2AD
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 13:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C995A369D67;
	Mon,  6 Jul 2026 13:34:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84318348C79
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 13:34:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783344870; cv=none; b=VJLy13Fu4Sj1QEUOS5MrKtzxH/xKl+oc4aS9FBitz6EEx3/5xL4XgWomFVSk9gdDdN3QZgcERmL4bZ8E83d4YXor2V2+q5CuKPtb73EDRAq9dMgkML6G51Z9SDcqvRWTs9BOo4ugohSCwIeypfeYMSP2x0+LzFeNsvJaA5xJ6yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783344870; c=relaxed/simple;
	bh=FHygDnzo2+eYpLeX/iyTZJtYIDrWTqPdXnHhvUdOTjI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M2mRZkI59n89C1sBZAh8ALe7kdnYXEm7z2bY9SoRI+LDm6LxIWdpJDEk2Tcv1KJRJNiX2OgRBJfnEtP0/wwzjidjPukpYF0Y75sLY1jDT8EKZoyK0YUQ+qGemLWCMf05vRNCUMn3bgvc/R0lyXI8sC5Khr8FvzGt4iQUm5Nn59c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdyG7bB+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8138E1F00A3A;
	Mon,  6 Jul 2026 13:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783344869;
	bh=Kr4kSFYjMhQ6AAY+gs21hAYIw30FDeYewXmGCFK1JlU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DdyG7bB+gS/tqsiJTR/PQP6i5IKc2URVMDlylf4e2K2eY694Qp52gr5/dDcbv7nQV
	 0Q+NHQ8QyI9BCjL9dpilRpg+TVEg1w52PRVnFNwQwY1eIOFgGLNg9Gy6G33s643gJM
	 yqvhufHnksncaKSazH55xZ9lan8YEUGWFVsIU0fshVchijEIB8yoTfeHb3LeIadpg3
	 sLXqWlmmuWBAYzUuux223TKN0oFxzbsEP+ESPC0QhzN9ItpV7oKcO3aSYeJiTD7fAi
	 3QoRglIEeF5ogqHGLFuBPCNtYHsQffBh/RM37s12ts0rNLuBrkj1Ow3rKA8OCNJgQJ
	 zEjsyHxtz615A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] ASoC: qcom: sc8280xp: ASoC: qcom: sc8280xp:
 enhance machine driver for board-specific config
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706132009.1496321-4-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260706132009.1496321-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260706132009.1496321-4-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 13:34:27 +0000
Message-Id: <20260706133428.8138E1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-321228-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 799D6711BB0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Backend DAI operations are erroneously attached to DPCM Frontend l=
inks due to a flawed `link->num_codecs > 0` condition.
- [Low] Board-specific `snd_soc_common` match data structures are missing t=
he `const` qualifier.
--

commit a4f95b828cd79a0224347fb7462baf2aac9d444d
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Subject: ASoC: qcom: sc8280xp: ASoC: qcom: sc8280xp: enhance machine driver=
 for board-specific config

The sc8280xp machine driver is currently written with a largely SoC-centric
view and assumes a uniform audio topology across all boards. This change
enhances the driver to support board-specific configuration such as allowing
each board variant to provide its own DAPM widgets and routes.

> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 7925aa3f63ba0..b13f39dc5afc2 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c

[ ... ]

> @@ -127,7 +245,7 @@ static void sc8280xp_add_be_ops(struct snd_soc_card *=
card)
>  	int i;
> =20
>  	for_each_card_prelinks(card, i, link) {
> -		if (link->no_pcm =3D=3D 1) {
> +		if (link->no_pcm =3D=3D 1 || link->num_codecs > 0) {

[Severity: High]
Does this unintentionally match DPCM frontend links as well?

Looking at qcom_snd_parse_of(), it explicitly assigns a dummy codec and sets
link->num_codecs =3D 1 for all DPCM frontend links:

sound/soc/qcom/common.c:qcom_snd_parse_of() {
    ...
		if (codec) {
			...
		} else {
			/* DPCM frontend */
			link->codecs	 =3D &snd_soc_dummy_dlc;
			link->num_codecs =3D 1;
			link->dynamic =3D 1;
		}
    ...
}

This means link->num_codecs > 0 will evaluate to true for every link on the
card, attaching sc8280xp_be_ops and sc8280xp_snd_init to frontend links. If
sc8280xp_snd_prepare() is then invoked for frontend links, it will index the
data->stream_prepared array using frontend CPU DAI IDs. Could this result in
state corruption or out-of-bounds memory accesses if these IDs exceed
AFE_PORT_MAX?

Should this condition check !link->dynamic to safely exclude frontend links?

>  			link->init =3D sc8280xp_snd_init;
>  			link->be_hw_params_fixup =3D sc8280xp_be_hw_params_fixup;
>  			link->ops =3D &sc8280xp_be_ops;

[ ... ]

> @@ -145,37 +263,124 @@ static int sc8280xp_platform_probe(struct platform=
_device *pdev)
>  	card =3D devm_kzalloc(dev, sizeof(*card), GFP_KERNEL);
>  	if (!card)
>  		return -ENOMEM;
> -	card->owner =3D THIS_MODULE;
> +
>  	/* Allocate the private data */
>  	data =3D devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
> =20
> +	data->snd_soc_common_priv =3D (struct snd_soc_common *)of_device_get_ma=
tch_data(dev);

[Severity: Low]
This isn't a bug, but can we avoid this explicit cast by declaring the priv=
ate
data structures as const?

The of_device_get_match_data() function returns a const void *. Since the
matched data structures are not modified at runtime, could we declare them =
as
static const and update the snd_soc_common_priv pointer in sc8280xp_snd_data
to be const as well?

> +	if (!data->snd_soc_common_priv)
> +		return -ENODEV;
> +
> +	card->owner =3D THIS_MODULE;

[ ... ]

> +static struct snd_soc_common kaanapali_priv_data =3D {

[Severity: Low]
This isn't a bug, but should this and the other snd_soc_common match data
structures introduced below be declared as static const to place them in the
read-only .rodata section?

> +	.driver_name =3D "kaanapali",
> +	.dapm_widgets =3D sc8280xp_dapm_widgets,
> +	.num_dapm_widgets =3D ARRAY_SIZE(sc8280xp_dapm_widgets),
> +	.wcd_jack =3D true,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706132009.1496=
321-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D3

