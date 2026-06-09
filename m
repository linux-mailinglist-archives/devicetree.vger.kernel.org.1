Return-Path: <devicetree+bounces-309246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S+fqHplLKGoOBwMAu9opvQ
	(envelope-from <devicetree+bounces-309246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:21:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1AB662E1C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:21:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tfzt8fbj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309246-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7EF7306473F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F21492526;
	Tue,  9 Jun 2026 16:50:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E13B19AE
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:50:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023851; cv=none; b=SgR6sDbRrePLJuuKUdfGjWfntapmTl24QbFEgMSA+Y/pI0OTlJNN0ua5SnegiqfpCE4vqutu/+hFUgA2hUCamDKBCATLSTUfWXiaaoJP4XoXVSVmU/mKXG6hfFlAtolW3OvaTu+YOBaBtgFrgilhjtINQGeMopKSI8UJArA5r8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023851; c=relaxed/simple;
	bh=f6MprqR7SEkgmk02uPPaE16BEF+f47PjxsKFyZPuMfc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rbkIs/2phOaFGU1U+eYNaUO9SN81rwLw3saVyKl/HhYUPu77JdB/cCUfRZ1EkbDV2nO4ic3B+QgGvk4QTiROD8g/4SyYZ2txqxkfjaLICbAe+j7y+eMlYw0CYUOArQ8AfRpkvFL12Ulm1D0CfFP0N583d3QLkv61MuAFg60/vDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tfzt8fbj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7948F1F00893;
	Tue,  9 Jun 2026 16:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781023849;
	bh=jbomtYNiSGKE3fZSp8hTn6EdZa3GeJhAvCdjHfRHSYM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tfzt8fbjSlj6QHNZ455xgQiMlW0u6Q8EfzYpAkWJKBlZNaPmK34KKMqXd2H1Laqhg
	 bY66NgHd2SaDBglJyTIEzTau7+Oly6T9QGfO3uMNDHejCJf/yarC7JdbyZyxOTzhWh
	 i7OfmufwZ5Egz6YyYlnroTnKtwH06+FKrwxgwcUPyrqGzVVayXc3A8gBT2NBu/Xmzn
	 cNzDe3gkugvrbCX3nAKRV5vw3b3mxD16QQ0c04SlWroHBPX/vg/JCkzRa0fOuQsReW
	 Ez/5wEofKSxgw2x9ctMqt3Kx/bSPfF9EySfUImlfqAUKuRt0s/yoFBecAmEWblqvoa
	 zsZU6+/UxtQJQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 06/15] ASoC: qdsp6: q6dsp-lpass-ports: add support
 for lpi mi2s ports 5-6
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Acayan" <mailingradian@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609162255.31074-7-mailingradian@gmail.com>
References: <20260609162255.31074-7-mailingradian@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 16:50:49 +0000
Message-Id: <20260609165049.7948F1F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309246-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mailingradian@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE1AB662E1C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Global singleton DAI array `q6dsp_audio_fe_dais` is unsafely modif=
ied, leading to cross-driver type confusion if multiple front-ends probe.
--

commit 4aa03981f3bbeea9a8f5b00fc98ab94eec2d0492
Author: Richard Acayan <mailingradian@gmail.com>

ASoC: qdsp6: q6dsp-lpass-ports: add support for lpi mi2s ports 5-6

Add the extra LPI MI2S ports used for internal MI2S on SDM660.

Link: https://android.googlesource.com/kernel/msm-extra/+/530cffa4cc977a348=
753831b163eb9d3302b954a/asoc/msm-dai-q6-v2.c#4597

> diff --git a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c b/sound/soc/qcom/qd=
sp6/q6dsp-lpass-ports.c
> index e5cd82f77b552..c3d8116ad5035 100644
> --- a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
> +++ b/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c

[ ... ]

> @@ -712,6 +716,7 @@ struct snd_soc_dai_driver *q6dsp_audio_ports_set_conf=
ig(struct device *dev,
>  		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
>  		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
>  		case LPI_MI2S_RX_0 ... LPI_MI2S_TX_4:
> +		case LPI_MI2S_RX_5 ... LPI_MI2S_TX_6:
>  			q6dsp_audio_fe_dais[i].ops =3D cfg->q6i2s_ops;

[Severity: High]
This is a pre-existing issue, but adding new ports to this switch block
highlights a potential problem with how q6dsp_audio_fe_dais is handled.

Since q6dsp_audio_ports_set_config() modifies the ops pointers of the
global static q6dsp_audio_fe_dais array in-place, does this create a risk
if multiple audio components that use this shared library probe on the
same system?

If a second component probes, wouldn't it overwrite the ops pointers for
all DAIs globally? Because ALSA stores a direct pointer to elements of
this array during component registration via devm_snd_soc_register_componen=
t(),
it seems the DAI callbacks for the first component could end up being
executed by the second component's driver.

Could this cause cross-driver type confusion where a callback casts
dev_get_drvdata(dai->dev) to its own driver data struct, but actually
operates on the other component's data (like expecting q6apm_lpass_dai_data
but getting q6afe_dai_data), potentially leading to memory corruption?

>  			break;
>  		case PRIMARY_TDM_RX_0 ... QUINARY_TDM_TX_7:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609162255.3107=
4-1-mailingradian@gmail.com?part=3D6

