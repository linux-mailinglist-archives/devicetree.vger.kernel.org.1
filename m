Return-Path: <devicetree+bounces-324796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6+YuJHNAUmq5NgMAu9opvQ
	(envelope-from <devicetree+bounces-324796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:09:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AA47419DE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:09:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GR4RGMgi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324796-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324796-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C83F03015A59
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231823C73D9;
	Sat, 11 Jul 2026 13:09:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F1D3C8C49
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 13:09:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783775345; cv=none; b=WrKeqlEhh69xXz48nhGCFyAAEiEE4GZ+ZTpd2+6UXK5oyPqH2EGmB3CVaun1madv9d6WrTYXiRCLy1QIUF/sUnGKu8gjT2yDkzchBDoJRjKQ0AiP3gJBC4NM6nq4oPOfB8DecT5r/XEPoG34u/zEjLXdTbXrnJv06NCeDfecO0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783775345; c=relaxed/simple;
	bh=05lIXGdPEYWVoTiPWpq9t2/YNOQVKYVTxHAYQKcxMEY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G8Pdl+Q4FmKYimrHnZs1x5aSF+ihk8aQIB+5Os4mCOWtMKfMk0drTxFdbNUGI3VbV7lhHgdt+AFrjNpbKPtCym/NgDYutqvyCw8myczd8SG/Wqd8mNG2gBsVoc6ECC8f3uTasz0J8jUTlDzD3ANYctrew5F5a2lji5Fo57OFyoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR4RGMgi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA95A1F000E9;
	Sat, 11 Jul 2026 13:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783775342;
	bh=vwCVt2b0k6avDINyapmGh1bHqM9CF12rikDSn6hn190=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GR4RGMgi6kwwzlp771vUf6wnlVBm0c+R7KU8jgi94Qm7wRHJhIdwNHmMwutwCqPBB
	 09hgXKQvQzdDm1YhZazlgCZT0GMgvp1Oa/pmAzmcXEs59u7P/2LIoGRG3aCt/28AJ7
	 PsbI2ORYmgNPl/L5h8pGDMlEhYOEg4CskBZVz8PAwXnqrdeSQp6PeuSfRMSUf+A2iH
	 L1+3t7e3uE+yEV1NaE8b5WPOBrIwKhXOexz9/tpq6tYQYh27aVvW3mUnuJKQG4Me3J
	 XZDohtKneGNrTKOjh+H6QFjSeXRwij8WrPjnj+fShXkBKbEkXFsFZkjqUERhbcGT51
	 O+ZAY3QxKb05g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] ASoC: qcom: q6apm-lpass-dais: Add MI2S clock
 control
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260711125740.3083236-3-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260711125740.3083236-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260711125740.3083236-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 13:09:01 +0000
Message-Id: <20260711130901.BA95A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324796-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5AA47419DE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Premature destruction of clocks due to inverted devm teardown orde=
r causes hardware lockups.
- [Medium] Passing an error pointer to clk_put() during probe deferral trig=
gers a kernel warning.
--

--- Patch [2]: [PATCH v4 2/3] ASoC: qcom: q6apm-lpass-dais: Add MI2S clock =
control ---
commit 6c55573f944d5c7be58034df873c5691188ba0f2
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

ASoC: qcom: q6apm-lpass-dais: Add MI2S clock control

This commit adds MI2S clock control within q6apm-lpass DAIs, including
handling of MCLK, BCLK, and ECLK via the DAI .set_sysclk callback.
Each MI2S port now retrieves its clock handles from the device tree,
allowing per-port clock configuration and proper enable/disable during
startup and shutdown.

> diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qds=
p6/q6apm-lpass-dais.c
> index 006b283484d9e..5743586ffda1e 100644
> --- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
> +++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
[ ... ]
> @@ -297,6 +409,65 @@ static const struct snd_soc_component_driver q6apm_l=
pass_dai_component =3D {
>  	.remove_order   =3D SND_SOC_COMP_ORDER_FIRST,
>  };
> =20
> +static int of_q6apm_parse_dai_data(struct device *dev,
> +				   struct q6apm_lpass_dai_data *data)
> +{
> +	int ret;
> +
> +	for_each_child_of_node_scoped(dev->of_node, node) {
> +		struct q6apm_dai_priv_data *priv;
> +		int id;
> +
> +		ret =3D of_property_read_u32(node, "reg", &id);
> +		if (ret || id < 0 || id >=3D APM_PORT_MAX) {
> +			dev_err(dev, "valid dai id not found:%d\n", ret);
> +			continue;
> +		}
> +
> +		switch (id) {
> +		/* MI2S specific properties */
> +		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
> +		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
> +		case SENARY_MI2S_RX ... SENARY_MI2S_TX:
> +			priv =3D &data->priv[id];
> +			priv->mclk =3D of_clk_get_by_name(node, "mclk");
> +			if (IS_ERR(priv->mclk)) {
> +				if (PTR_ERR(priv->mclk) =3D=3D -EPROBE_DEFER) {
> +					q6apm_lpass_dai_put_clocks(data);

[Severity: Medium]
Will this pass an error pointer to clk_put() during probe deferral?

If of_clk_get_by_name() returns -EPROBE_DEFER, the error pointer is stored
in priv->mclk. When q6apm_lpass_dai_put_clocks() is immediately called for
cleanup, it iterates over all ports and calls clk_put() on any non-NULL
clock pointer:

q6apm_lpass_dai_put_clocks() {
	...
	if (dai_data->priv[i].mclk) {
		clk_put(dai_data->priv[i].mclk);
	...
}

Since an ERR_PTR evaluates as true, clk_put() is called with the error
pointer, which will trigger a WARN_ON_ONCE(IS_ERR(clk)) in the core clock
code.

> +					return dev_err_probe(dev, PTR_ERR(priv->mclk),
> +							     "unable to get mi2s mclk\n");
> +				}
> +				priv->mclk =3D NULL;
> +			}
[ ... ]
> @@ -317,7 +492,18 @@ static int q6apm_lpass_dai_dev_probe(struct platform=
_device *pdev)
>  	cfg.q6hdmi_ops =3D &q6hdmi_ops;
>  	dais =3D q6dsp_audio_ports_set_config(dev, &cfg, &num_dais);
> =20
> -	return devm_snd_soc_register_component(dev, &q6apm_lpass_dai_component,=
 dais, num_dais);
> +	ret =3D devm_snd_soc_register_component(dev, &q6apm_lpass_dai_component=
, dais, num_dais);
> +	if (ret)
> +		q6apm_lpass_dai_put_clocks(dai_data);
> +
> +	return ret;
> +}
> +
> +static void q6apm_lpass_dai_dev_remove(struct platform_device *pdev)
> +{
> +	struct q6apm_lpass_dai_data *dai_data =3D dev_get_drvdata(&pdev->dev);
> +
> +	q6apm_lpass_dai_put_clocks(dai_data);

[Severity: High]
Does this premature destruction of clocks due to an inverted devm teardown
order cause hardware lockups?

Because the ALSA component is registered using
devm_snd_soc_register_component(), its unregistration is deferred to the
devres cleanup phase, which runs after this .remove() callback returns.

If the driver is unbound while audio is actively streaming, .remove()
manually invokes q6apm_lpass_dai_put_clocks(), which turns off and frees
the MI2S clocks while the DSP is actively executing a graph on the bus.

The ALSA component attempts to cleanly stop the DSP graph only during
devres cleanup, but by then the physical clocks are already cut, which
can lead to DSP crashes or NOC (Network-on-Chip) errors.

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711125740.3083=
236-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D2

