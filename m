Return-Path: <devicetree+bounces-315900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HY6CGTLmPWpb7wgAu9opvQ
	(envelope-from <devicetree+bounces-315900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E4A6C9D52
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mbDcdjzY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315900-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315900-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79C213029E45
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD65C376A08;
	Fri, 26 Jun 2026 02:38:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB514390C8E
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 02:38:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441519; cv=none; b=mLWoeDYZ8tkStCZMaSAOPg/DKPc/y+Tzms3LLaNGpRVBGGL1Pgg/QmA/EZqJFTNSO1+mlKHu1GaFKV0rJvrMgJCc3Y2o+gCFba68LY0n4lWpFZVFamA1/Jl2AofKkq14ndj6EIHiQzvW6EsAi+jS4eYInyu0HEXSXF/Wmjo7I+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441519; c=relaxed/simple;
	bh=X5splIcy0GuCQtfmPA3InAlf+z2ZI0wKvk+URkjXHw4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OVnpBqtaICwEjznZLZITXCDxLch7j+b8aXXeo0b1dssOZacMD+SWmqlbvx1PJN08WPE9rQonuBdZ3Qhhdezmjs61WI4yNEh/S5KUqCxTLRVaAn8qs32zQeMThqTMk5o+EUs9Q27e1EGdPH0dcwsyrmQwE9iB+F9FepBrFDk9EPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbDcdjzY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E9081F000E9;
	Fri, 26 Jun 2026 02:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782441517;
	bh=a/LDu1elJuq5ZpneWEEUcv0fCbFFJ4wFbEX5gTt4A2s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mbDcdjzYhpAz901yI2t3U53etk2Mb04szJWOx4rTvh+89XNaoNDESiJClWbegTbBl
	 Tb5F4tnruTmYhnvGS9uKNwzdbRI+vROYeFdxlUxAxUksG0Leh0cEiAo/H9KjS+pX9S
	 WGGyzhU23/1MdLIoLAkAPUTPTAnZIQpfzHJJ2jpyR2ivPKLBCCQHOr8KiysCMa/8P6
	 GrWLrOGprER8Srw5qknz20kyEQ0OphShIN06wyEEo3vuFbYRJXoWiNrd6NB5rr8Wd3
	 KQAtXbZVDsNLp4wWNGNv/JjqhKFdsGrwr0uLjN+3Ph3AarsCS2UqMZQ++eD0TW10I1
	 QcJnaXbaQA71g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/9] ASoC: loongson: Add Loongson-2K0300 CTCISZ
 Forever Pi sound card support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Binbin Zhou" <zhoubinbin@loongson.cn>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <ed1314e1d3275fd20aff47397345a88fad6e9368.1782439646.git.zhoubinbin@loongson.cn>
References: <cover.1782439646.git.zhoubinbin@loongson.cn>
 <ed1314e1d3275fd20aff47397345a88fad6e9368.1782439646.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 02:38:36 +0000
Message-Id: <20260626023837.2E9081F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315900-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,loongson.cn:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6E4A6C9D52

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] DAI format configuration is entirely bypassed if `mclk-fs` is 0.
--

commit 00af2efc83640c13d13fd25311896531fc01a8e7
Author: Binbin Zhou <zhoubinbin@loongson.cn>

ASoC: loongson: Add Loongson-2K0300 CTCISZ Forever Pi sound card support

The Loongson-2K0300 audio card uses a different DAI format compared to
existing Loongson platforms. Move the dai_fmt setting from the static
DAI link to runtime hw_params via snd_soc_runtime_set_dai_fmt(), and pass
the correct format through driver match data.

> diff --git a/sound/soc/loongson/loongson_card.c b/sound/soc/loongson/loon=
gson_card.c
> index ea895fe6b5e97..0e63cbcad57ac 100644
> --- a/sound/soc/loongson/loongson_card.c
> +++ b/sound/soc/loongson/loongson_card.c
[ ... ]
> @@ -45,7 +59,7 @@ static int loongson_card_hw_params(struct snd_pcm_subst=
ream *substream,
>  		return ret;
>  	}
> =20
> -	return 0;
> +	return snd_soc_runtime_set_dai_fmt(rtd, ls_card->cfg->fmt);
>  }

[Severity: Medium]
If a platform's firmware explicitly sets the mclk-fs property to 0,
loongson_card_hw_params() will exit early:

	if (!ls_card->mclk_fs)
		return 0;

By moving the format configuration to the end of this function, will
the CPU and CODEC DAIs fail to be configured with the correct format when
mclk-fs is 0, since the early return bypasses this new call?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782439646.gi=
t.zhoubinbin@loongson.cn?part=3D6

