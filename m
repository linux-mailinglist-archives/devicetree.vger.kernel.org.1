Return-Path: <devicetree+bounces-307334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sCsFJF2qImosbwEAu9opvQ
	(envelope-from <devicetree+bounces-307334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:52:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0460B647871
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:52:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BZP9I8u7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307334-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307334-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52DDD301105F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D634C6F11;
	Fri,  5 Jun 2026 10:48:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F26C3E5EF8
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 10:48:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656519; cv=none; b=nZq3WavgPHbqIL7T4/Bwu/7iyltGEmq/7cTRy2RpKsJqhztxkzIbCPzopKQ1QER3caVpzk3CEjIZ1ecNYrutaUVu7+B8dohLscYU+qvbesvpPI8ZBdvaAMiBRVwnB7NUSxH8vZRUhGm3f7+rHcoRLADA1JiODVYQhjj4WJNaqf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656519; c=relaxed/simple;
	bh=JQzxY8eogRt8+6ENdxRVDs8TWldkGbGlwslhx0mOdeQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mgPmByY+ZWfXTBSkc2Wn1vN0LGA9Frhu54uPgys6iRPajB9DO1tJ+MDwcDfleWGrnTdp/gKre6PzBv18NyQYARACeWnupdiHqqXQF6dMW3lC8UhXFxNrkFoSD/yzHeiNtyFkKZvXyc4LxoQ0unZ9tFrqGehe8dtUvgXO8UEVSEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZP9I8u7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39341F00893;
	Fri,  5 Jun 2026 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780656516;
	bh=wz7Lvr55Wvf5pc38s3oOAaC5rxxXP3MJWaKZsQSVSEc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BZP9I8u73HehYtFXkFkh5k1A6SHlv5sSqiSRVe9z/2aqgYtS9NxMly3eWcHKAe41Y
	 vIV8qRh7zVsdhbBGnvZ+ldzHfIKqQHrMaA5pHxkAj38m9RGKsoe2Hx1Fv5yuBESPyG
	 7O0ncFEa7I9VJbxYIGmVGB4dpT50axmfgXlyC9QisJVzvUZgXZQwqaLttSLhSApBwu
	 CQISkFQ8z2PKM8ozzR/3bmcPfwqpl1+t0lz1q3taXwS0h65aku1Tri8RF0X5o0WI8E
	 ACiLmuq9v+hdqIaZcbmDhTbzzgA4fQtg3eLSVtg25b5Fmk22apQeFvomUB/ohj9+I1
	 vJp/sJjbkkoHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 8/13] ASoC: qcom: Add generic of_xlate_dai_name helper
 to common
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605103739.3557573-9-harendra.gautam@oss.qualcomm.com>
References: <20260605103739.3557573-9-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 10:48:36 +0000
Message-Id: <20260605104836.A39341F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307334-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0460B647871

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Compilation failure due to conflicting static and non-static declar=
ations of `asoc_qcom_of_xlate_dai_name`.
--

commit 49b02ad6fd90538b16f9ce1c7f6c4b2db0f7936f
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

ASoC: qcom: Add generic of_xlate_dai_name helper to common

Multiple Qualcomm ASoC CPU DAI drivers need to resolve a sound-dai phandle
argument to a DAI name. This commit extracts the common logic into
asoc_qcom_of_xlate_dai_name() in common.c so it can be shared.

[ ... ]
> diff --git a/sound/soc/qcom/common.h b/sound/soc/qcom/common.h
> index ee6662885593c..5baf51a39c975 100644
> --- a/sound/soc/qcom/common.h
> +++ b/sound/soc/qcom/common.h
[ ... ]
> @@ -15,5 +16,9 @@ int qcom_snd_wcd_jack_setup(struct snd_soc_pcm_runtime =
*rtd,
>  int qcom_snd_dp_jack_setup(struct snd_soc_pcm_runtime *rtd,
>  			   struct snd_soc_jack *dp_jack, int id);
> =20
> +int asoc_qcom_of_xlate_dai_name(const struct snd_soc_dai_driver *dai_drv,
> +				int num_dai,
> +				const struct of_phandle_args *args,
> +				const char **dai_name);
> =20
>  #endif

[Severity: Low]
Does this new declaration break the build when included by lpass-cpu.c?

There is an existing static function in sound/soc/qcom/lpass-cpu.c with the
exact same name but a different signature:

static int asoc_qcom_of_xlate_dai_name(struct snd_soc_component *component,
                                       const struct of_phandle_args *args,
                                       const char **dai_name)

Since lpass-cpu.c indirectly includes common.h, the compiler will see the
non-static declaration followed by the static definition, resulting in a
conflicting types error.=20

While this is fixed later in the series by commit 761cbeeaa59f ("ASoC: qcom:
lpass-cpu: Use asoc_qcom_of_xlate_dai_name helper"), could we avoid the
conflict in this patch to keep the commit history bisectable?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605103739.3557=
573-1-harendra.gautam@oss.qualcomm.com?part=3D8

