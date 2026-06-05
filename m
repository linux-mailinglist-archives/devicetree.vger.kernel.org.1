Return-Path: <devicetree+bounces-307336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3A5OAeKqImpObwEAu9opvQ
	(envelope-from <devicetree+bounces-307336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:54:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9203C647899
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:54:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SsDbU2uq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307336-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307336-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C4053041C6B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FCE4C77CC;
	Fri,  5 Jun 2026 10:51:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CD24C77CA
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 10:51:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656675; cv=none; b=KRc4nGBubsjMmxILTyYpwwtOp5jqe7CQhcYP0S4TKBOqYRE3UtbrmVuukzVwZsqnMpkDGpMUkmj5DFnVL1XB/uhHUOel7DkJD0oa7kq7zCLkr/ueaYqUxXk8bSDl3iaqGUgeXj6yfgWmcFefais7g2vjQVo1obe0lHYebnW4KoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656675; c=relaxed/simple;
	bh=v+iwWOZGqlz6fQAfwVCpAH4GkvpgNZO1dXiI43bRPuE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YyJ0jqmrcX57VZeRkwrA2vGRUQvlq8ScvY3kkSRplcaFQlKpba2wVUY1YcPBq6gV4hnEFfZmSlcibOKAcd8WlrNBSKyALdwJ8qIL7VP/qVeYSAI07rRJuLb/yYWTAc+vuYL4T9/j0MQ21Z1uKkSr4IZSfOh8A5knGjIpWbW9o4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsDbU2uq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF50E1F00893;
	Fri,  5 Jun 2026 10:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780656674;
	bh=u69b+8P836SfTLFLO/DOQtW6zGDzMZYgG4hIswjZqeo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SsDbU2uqxTof3qUhgnVj+sIdNOj/a9QFV5DmsdM39YR/MDbRKHktr/OYCICgyqpbz
	 eyMr97s0yg9ntxsRFV3iyb+p1DLhVgmouKolROTQHVknxtc/YZeN06r2+3UW4GDaBA
	 rjsVALArGWESTrql5mYbGotiN8FMdwqfFbch8y8NknyNa/ZTgjVc85/Z+CTxNdCpFi
	 Qw26sdLhYoByyyyUqJKF+hU4eO5pQrghNV7gdyCTI9L9FEJMFd8V6omC7rLgGU0DLS
	 hEEZoKfSRv+33AGcyAkEGHu+qbrdMoTYcnwiU8/mIMY15jg3bi9kjbTJrVP75zxVoG
	 OpaROKmVhc2rQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 9/13] ASoC: qcom: lpass-cpu: Use
 asoc_qcom_of_xlate_dai_name helper
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605103739.3557573-10-harendra.gautam@oss.qualcomm.com>
References: <20260605103739.3557573-10-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 10:51:13 +0000
Message-Id: <20260605105113.EF50E1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307336-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9203C647899

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch introduces an undefined reference linker error by using `=
asoc_qcom_of_xlate_dai_name` in `lpass-cpu.c` without ensuring that `CONFIG=
_SND_SOC_QCOM_COMMON` is selected in Kconfig.
--

commit 761cbeeaa59f428cdcde069e9ee4303793623ed7
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

ASoC: qcom: lpass-cpu: Use asoc_qcom_of_xlate_dai_name helper
   =20
This commit replaces the private static asoc_qcom_of_xlate_dai_name()
implementation in lpass-cpu.c with a wrapper that calls the shared helper
from common.c.

> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index 242bc16da36da..35c2c80300242 100644
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
> +static int lpass_cpu_of_xlate_dai_name(struct snd_soc_component *compone=
nt,
>  				   const struct of_phandle_args *args,
>  				   const char **dai_name)
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

[Severity: Low]
Does this introduce a build failure if CONFIG_SND_SOC_QCOM_COMMON is not
enabled?

Because SND_SOC_LPASS_CPU does not appear to select SND_SOC_QCOM_COMMON in
sound/soc/qcom/Kconfig, using the shared helper here might lead to an
undefined reference linker error (such as modpost: asoc_qcom_of_xlate_dai_n=
ame
undefined) when the kernel is configured with only this driver.

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605103739.3557=
573-1-harendra.gautam@oss.qualcomm.com?part=3D9

