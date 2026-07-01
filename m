Return-Path: <devicetree+bounces-318388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id toAXN/n4RGpC4QoAu9opvQ
	(envelope-from <devicetree+bounces-318388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:24:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D89EE6ECC6C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:24:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NYzN8StL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318388-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-318388-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6925130508DF
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F35243CEF2;
	Wed,  1 Jul 2026 11:09:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003FA3B5F50
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 11:09:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904192; cv=none; b=GMTfTMmgyx3eB1x0svEdM0ZW3FTZrq7+PKS1JV50YXexqM2csMyLMhJgvmn+mpxkaE1RTREagxGGSDqzAiA3N00F7abBFBY7mg0/GLGiP1E1qNOMVuNdRbKQyqNyt7czD3+95clgSXq5zeYsQ5rU1kUL/MmzP3Jgsk8pHELF494=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904192; c=relaxed/simple;
	bh=mkBS/OmEDL82MbTqmdphmxwCZ1FNQtp8lv1yZlhg+0M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NX/lg/puCVIeLQU5Q444Lp8eU2P2oHSSjloklpvLZFgV+nG2d2XHcXYMi/vd7NeycKCsJvw0UQ8fLkZ/cGCFo8+dOJgSakbhCNxVB3lV2BlBi0ugQmwuAFdzjhFWcuXUg3dwLXbLLkNIGZnMyRJlDM2mvr4WS4kGHQvD2Kpsl6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYzN8StL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D9411F000E9;
	Wed,  1 Jul 2026 11:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904190;
	bh=SqQ2noCgWs4tUeyJ4a6mo2LZa8fayl/9WL0xG/H0qm8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NYzN8StLMWhP25Tr5akPtzc+p6U+xaPrFpkv1iQfYkn7yTc8HVMj2fNM1hYCe36KZ
	 CzTXQOASQLBcDPmIfp2yaqcSp0HRTaULThokHGO4SuzZBXmzTIRdegchdUs3tFqG7A
	 BhSB+i9LwhLjYfk3CX0ldYsEaeg0woSkom7n0SD+FisFZuodSt5wCJKr6rLtzFYtJG
	 C63SPFXD8nv83cjnZIXDhzaQnmFviwrxe8KxSYNiybaZCredEZqkTM1+2V6sOYvKiJ
	 YMrmdw+HQt02nv2KIk13KmIwYvcdmdK+ijlpB160skQk87w2YHqYPwAhtjuV4rxODm
	 EfwKRsZvsRPmQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/11] ASoC: qcom: Add QAIF CIF (CDC DMA) DAI ops
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701105757.2779738-5-harendra.gautam@oss.qualcomm.com>
References: <20260701105757.2779738-1-harendra.gautam@oss.qualcomm.com>
 <20260701105757.2779738-5-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:09:49 +0000
Message-Id: <20260701110950.5D9411F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318388-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D89EE6ECC6C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] DAI callbacks fetch the DAI ID from the 0-th CPU DAI in the ALSA r=
untime link instead of using the provided `dai` parameter.
--

commit 32d00a3e9dcf1c7105fbcf435a7ab50e4e85ba7b
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

    ASoC: qcom: Add QAIF CIF (CDC DMA) DAI ops
   =20
    Add DAI operations for the QAIF Codec Interface (CIF), which connects t=
he
    QAIF DMA engine to the internal Bolero digital codec.

> diff --git a/sound/soc/qcom/qaif-cpu.c b/sound/soc/qcom/qaif-cpu.c
> new file mode 100644
> index 0000000000000..072c1bec078aa
> --- /dev/null
> +++ b/sound/soc/qcom/qaif-cpu.c
> @@ -0,0 +1,321 @@
[ ... ]
> +static struct qaif_cdc_intfctl *qaif_get_cif_intfctl_handle(struct snd_p=
cm_substream *substream,
> +							    struct snd_soc_dai *dai)
> +{
> +	struct snd_soc_pcm_runtime *soc_runtime =3D snd_soc_substream_to_rtd(su=
bstream);
> +	struct snd_soc_dai *cpu_dai =3D snd_soc_rtd_to_cpu(soc_runtime, 0);
> +	struct qaif_drv_data *drvdata =3D snd_soc_dai_get_drvdata(dai);
> +	const struct qaif_variant *v =3D drvdata->variant;
> +	unsigned int dai_id =3D cpu_dai->driver->id;

[Severity: High]
Does this code fetch the incorrect DAI ID in multi-CPU DAI ALSA topologies?

By using snd_soc_rtd_to_cpu(soc_runtime, 0), the DAI ID is derived from the
hardcoded index 0 CPU DAI instead of the dai parameter passed to the functi=
on.

Could this cause mismatched data lookups and leave subsequent target DAIs
uninitialized?

[ ... ]
> +static int qaif_cif_daiops_hw_params(struct snd_pcm_substream *substream,
> +				     struct snd_pcm_hw_params *params,
> +				     struct snd_soc_dai *dai)
> +{
> +	struct snd_soc_pcm_runtime *soc_runtime =3D snd_soc_substream_to_rtd(su=
bstream);
> +	struct snd_soc_dai *cpu_dai =3D snd_soc_rtd_to_cpu(soc_runtime, 0);
> +	struct qaif_drv_data *drvdata =3D snd_soc_dai_get_drvdata(dai);
> +	const struct qaif_variant *v =3D drvdata->variant;
> +	struct qaif_cdc_intfctl *intfctl =3D NULL;
> +	unsigned int dai_id =3D cpu_dai->driver->id;

[Severity: High]
Will deriving dai_id from the hardcoded index 0 CPU DAI configure the wrong
DMA channel for subsequent DAIs during hw_params() callbacks?

[ ... ]
> +static int qaif_cif_daiops_trigger(struct snd_pcm_substream *substream,
> +				   int cmd,
> +				   struct snd_soc_dai *dai)
> +{
> +	struct snd_soc_pcm_runtime *soc_runtime =3D snd_soc_substream_to_rtd(su=
bstream);
> +	struct snd_soc_dai *cpu_dai =3D snd_soc_rtd_to_cpu(soc_runtime, 0);
> +	struct qaif_drv_data *drvdata =3D snd_soc_dai_get_drvdata(dai);
> +	const struct qaif_variant *v =3D drvdata->variant;
> +	unsigned int dai_id =3D cpu_dai->driver->id;

[Severity: High]
Can fetching dai_id via snd_soc_rtd_to_cpu(soc_runtime, 0) resolve the wrong
index during stream start/stop trigger events?

This could apply stream hardware configurations to the first CPU DAI
repeatedly instead of configuring the current dai, corrupting the DMA state
of the first DAI and leaving others uninitialized.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105757.2779=
738-1-harendra.gautam@oss.qualcomm.com?part=3D4

