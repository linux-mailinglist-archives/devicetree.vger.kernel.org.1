Return-Path: <devicetree+bounces-318392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hiY/H5H3RGra4AoAu9opvQ
	(envelope-from <devicetree+bounces-318392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C296ECB31
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k3O+BfnA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318392-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318392-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31428304C6F3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B529E40BCCE;
	Wed,  1 Jul 2026 11:11:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE663B8413
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 11:11:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904312; cv=none; b=HSJd3Od4yC2lQktzU0J4RvAcjgXMtn2WM5U379QBcTyFjP8P9WSdPjcsZUazNb3SUziaJnoRxSVkJDxvJqyMEhzbhO0BqMk9wHhFqKL09SyriQT4r9TdnAvO0qQoXmfurfwV8efcKSA3eTgRQ+/IYtQXjRFrpHzRSwKgFmYE6YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904312; c=relaxed/simple;
	bh=kdKlm209uggF1d1Lh0Md/xiRiak/i8Ndm7B7rBvEWjs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lbDpCh+3LbM0H3qYVtFnAMQm3FCJTVCd8rrVouBYFCrVkgHS5mUJHWLpxNpSXvSEdH+qewotNb7PSuJtRPpDj1A79UOCGbQb0OYUN1tGZ6uOKFSuYDyBKZqztb15gKJXPLW2aKFcea8/AVDSDPNESd2dswC6+o6+tAXy9BCXfa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3O+BfnA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA7881F000E9;
	Wed,  1 Jul 2026 11:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904311;
	bh=wkpvHpsCFM/2HKg/R8ikCMXyxDreVV9u3CDWnK6M/JY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k3O+BfnAinxenm0SJkCNW7OLr4ZQgI9RhIMhit4wLFz2QpkNUyBas0whiw+sjAntB
	 x1B8+YHZPBWbrFoOIu42PzY0VL9ZibSyTkYKP4vBZEXMRrP6mhmEqn8GjKTyMlV6NI
	 3uWtkuywVOTxFUaUSu8QdNrUkZS4yysMc0cWPcbplaNiuKKCfvxREldA6JKQ2OduYT
	 WddQPoT2TIPk6EiwGHrKPmxDjrmWpBLnNuWxCaK3pqLIR2H0FjiA+cZgjoFfKsvI7h
	 oAzvrxC2+bhKhxhxu2YVAdlu0OCOdvXDxSyXH4dTTdep3eT1xWAjjNnSlIJv36p6m5
	 IrJY6IWkGcTwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/11] ASoC: qcom: Add generic of_xlate_dai_name
 helper and use it in lpass-cpu and qaif-cpu
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701105757.2779738-7-harendra.gautam@oss.qualcomm.com>
References: <20260701105757.2779738-1-harendra.gautam@oss.qualcomm.com>
 <20260701105757.2779738-7-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:11:50 +0000
Message-Id: <20260701111150.EA7881F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318392-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39C296ECB31

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The LPASS CPU driver Kconfig definition does not select SND_SOC_QC=
OM_COMMON, leading to unresolved symbol linker errors.
--

commit dca5be39355006f21c78c040f2fe69d7f59b9741
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

ASoC: qcom: Add generic of_xlate_dai_name helper and use it in lpass-cpu an=
d qaif-cpu

This patch extracts common logic to resolve a sound-dai phandle argument
into a DAI name, placing it into common.c as asoc_qcom_of_xlate_dai_name().
It updates lpass-cpu and qaif-cpu to use this shared helper instead of their
private implementations.

> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index 242bc16da36da..0c84964bafdcd 100644
> --- a/sound/soc/qcom/lpass-cpu.c
> +++ b/sound/soc/qcom/lpass-cpu.c

[ ... ]

> @@ -458,30 +459,20 @@ const struct snd_soc_dai_ops asoc_qcom_lpass_cpu_da=
i_ops2 =3D {
>  };
>  EXPORT_SYMBOL_GPL(asoc_qcom_lpass_cpu_dai_ops2);
> =20
> -static int asoc_qcom_of_xlate_dai_name(struct snd_soc_component *compone=
nt,
> -				   const struct of_phandle_args *args,
> -				   const char **dai_name)
> +static int lpass_cpu_of_xlate_dai_name(struct snd_soc_component *compone=
nt,
> +				       const struct of_phandle_args *args,
> +				       const char **dai_name)
>  {
>  	struct lpass_data *drvdata =3D snd_soc_component_get_drvdata(component);
>  	const struct lpass_variant *variant =3D drvdata->variant;
> -	int id =3D args->args[0];
> -	int ret =3D -EINVAL;
> -	int i;
> =20
> -	for (i =3D 0; i  < variant->num_dai; i++) {
> -		if (variant->dai_driver[i].id =3D=3D id) {
> -			*dai_name =3D variant->dai_driver[i].name;
> -			ret =3D 0;
> -			break;
> -		}
> -	}
> -
> -	return ret;
> +	return asoc_qcom_of_xlate_dai_name(variant->dai_driver,
> +					   variant->num_dai, args, dai_name);

[Severity: High]
Since this uses a function exported from common.c, does SND_SOC_LPASS_CPU n=
eed
to select SND_SOC_QCOM_COMMON in Kconfig?

Without updating the Kconfig definition to select SND_SOC_QCOM_COMMON, this
can lead to unresolved symbol linker errors if a configuration enables an L=
PASS
machine driver but not the common components, or if SND_SOC_LPASS_CPU=3Dy w=
hile
SND_SOC_QCOM_COMMON=3Dm.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105757.2779=
738-1-harendra.gautam@oss.qualcomm.com?part=3D6

