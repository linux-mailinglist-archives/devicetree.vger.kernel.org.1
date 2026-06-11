Return-Path: <devicetree+bounces-310071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4w1sDNEqKmoNjgMAu9opvQ
	(envelope-from <devicetree+bounces-310071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:26:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B761666DF92
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:26:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ZE3aSQ7/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310071-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310071-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32FD6301091B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 03:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05A730DD00;
	Thu, 11 Jun 2026 03:26:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D4625F7B9
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 03:26:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781148365; cv=none; b=lPy+msDdm1ZEJf+2sII2+90a1WVDD83KjI7kjgbkmU+DUiz6c6F6BL0UM/CjAZUSnI0KVdYFU6Htmiy7uoqjmaKoKCH3fhNplgNhk6/4DSfC5sk+nphuHYY4E1RmC5U84UuAiz/wL0JYFb/TKAvy+mMEmZsgy9AxSbGBC/SOF6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781148365; c=relaxed/simple;
	bh=vKdXiqNQUrTJnLPiZlwDDA3fAHSSAxJjB/aac4p3WgQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ry4HjpYhtZFQaXoZx4RiZWXMbXtjdy7YD9Jp8WiZOoQo6bH1Jlrl32RAMnHgKW3TDG3vbk5DO/7jaZV0IsBF8mTJhbuDN6BDK0OoEngVrUm69BvCG1yS5kpmjVeB0S4dBU7Zby8FEAqT+CENg+TIJ1IwYWesZxgGep/5naHNzoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE3aSQ7/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B04A1F00893;
	Thu, 11 Jun 2026 03:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781148364;
	bh=bAEZv8DaeXD+3OFfBsUHm78w6UMq48pZfc+Q4lwwbDk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZE3aSQ7/tfiw54lc22qEhFc1YHf2VX1S7C9woqr4VS8+fGUjeK36eN9cDq20DJahG
	 51L9no6f2N4lzGgVTF6BWCR9AL5VpvsTJEhOO+SVIQ7P/BPZl/W58v98m4RM5od4Q7
	 Mqqn0dBTOzEoIuqt0SF03tOhSzEJ2uhcTxWi31CO9XYoItXCrqqMkAv3HQPTVlWlE9
	 is93O3hXEa07PMpwLUh1+8O14tUJWhTEof8HQ//1REVM20yuqIjnDPufK9CzDoJ7Vg
	 9CljRTI8dERbe2iGUJ9xNdSsxhp4uV5kSku1W5OmY748srJvfOi9lzt2GMBlrhOPIk
	 /2YtptCfHOSRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 5/7] ASoC: codecs: ES8389: Modify the initial
 configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611031824.4628-6-zhangyi@everest-semi.com>
References: <20260611031824.4628-6-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 03:26:03 +0000
Message-Id: <20260611032604.3B04A1F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310071-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B761666DF92

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The return values of multiple `regmap_read()` calls are ignored, l=
eading to the use of uninitialized stack variables.
--

commit eeca5823fe9bef5ffe179596ec0a3aab2d9ba07a
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify the initial configuration

Modify the initial configuration.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 647d9d62820e6..284eb707f9f7f 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -793,7 +793,7 @@ static void es8389_init(struct snd_soc_component *com=
ponent)
> =20
>  	regmap_read(es8389->regmap, ES8389_MAX_REGISTER, &reg);
>  	es8389->version =3D reg;

[Severity: High]
This isn't a bug introduced by this patch, but I noticed the return value of
regmap_read() is ignored here. If the read fails, 'reg' will remain
uninitialized, and es8389->version will be corrupted with stack garbage.

Could this also cause unpredictable behavior in other parts of the driver?
Similar unchecked regmap_read() calls seem to exist in:
- es8389_pcm_hw_params() (corrupting dmic_enable)
- es8389_mute() (triggering spurious state changes)
- es8389_resume() (potentially triggering es8389_init() erroneously)

> -	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0x00);
> +	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0x56);
>  	regmap_write(es8389->regmap, ES8389_RESET, 0x7E);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611031824.4628=
-1-zhangyi@everest-semi.com?part=3D5

