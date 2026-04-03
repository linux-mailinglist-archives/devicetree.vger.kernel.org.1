Return-Path: <devicetree+bounces-284454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPmmNM/Jz2lH0QYAu9opvQ
	(envelope-from <devicetree+bounces-284454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:08:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D46BE394F84
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:08:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5C4E63020FD5
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 14:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD063C2779;
	Fri,  3 Apr 2026 14:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvb5Dtyw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C62341AB6;
	Fri,  3 Apr 2026 14:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775225262; cv=none; b=s6jS8WJqk2DqRDkzJMp21kBaIOt6eW96IqSwqsYO0Q6p38Fj+LL4HiY0ynrLCAequ4JgakPlya4Yl77wjzHTYclaMvCO+3Jh9pW8KopC5gi58zeXfLBSWY2cP+nkha8a7MK8Mqk0waQ118ym2L8HXEKSP5DjF6uyHpsc5CP+pP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775225262; c=relaxed/simple;
	bh=a2TS+0Xfo8n1MstX8wwPTJdm1SUZfSXTS9UW49apjSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ft9kGPjzdWhKyMxQk/1Pw+5tbdHjAtzGefZw20PM8Jl39MsvKC86U7vTdcboB9Evt1AP5Isf0zM5wBCmCaxpSISsPGSRjZ/c1hto5i33aQFlpVQrEKJYDfF+jzt3KxUdkkO5VXQ3uA6ZvR4ap3maZXRUDQX2eIWsLLOzdLyaggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvb5Dtyw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E292C4CEF7;
	Fri,  3 Apr 2026 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775225261;
	bh=a2TS+0Xfo8n1MstX8wwPTJdm1SUZfSXTS9UW49apjSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvb5DtywGd+oDPYR/6Gj4ugzAgY+fAdrliFvpCAX9F4uBTc9Q4ivzfS6n/HRMFr2d
	 VGK8z56/+t1o4IED7oCxN8kmucO8nSTAdtXleGFiH6dbGP9bfwxlnhtJRDk8KacfUW
	 iH82Kjdp/BZW/bTgcRuX36a2BaqMfcbZ27A0pSvAxxPphzwNBQLmRdoJfDiT3xyA59
	 EX4sdJ5xG9XVfmE2XHWrIIFj1z3alUlGX23XpPqiBbTX4Dww8ehQNonz2yCTB0lWDV
	 9tt6SlGmRyoPURY2NxPgcpwmYtffPcX2pUYNmGs6vkr/AKfHk7vrunWIfBW+qMz0Wa
	 pqcRBg6aJbB5Q==
Date: Fri, 3 Apr 2026 15:07:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Cyril Chao <Cyril.Chao@mediatek.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	Darren Ye <darren.ye@mediatek.com>
Subject: Re: [PATCH v8 08/10] ASoC: mediatek: mt8196: add platform driver
Message-ID: <892468cc-7eb4-411e-b91b-f14789d8da0c@sirena.org.uk>
References: <20260324015719.17543-1-Cyril.Chao@mediatek.com>
 <20260324015719.17543-9-Cyril.Chao@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z/xr10pR1+37JRYr"
Content-Disposition: inline
In-Reply-To: <20260324015719.17543-9-Cyril.Chao@mediatek.com>
X-Cookie: The Korean War must have been fun.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284454-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,collabora.com,perex.cz,suse.com,vger.kernel.org,lists.infradead.org,mediatek.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D46BE394F84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--z/xr10pR1+37JRYr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 24, 2026 at 09:56:49AM +0800, Cyril Chao wrote:

> +static int mt8196_set_cm(struct mtk_base_afe *afe, int id,
> +			 bool update, bool swap, unsigned int ch)
> +{
> +	struct mt8196_afe_private *afe_priv = afe->platform_priv;
> +	unsigned int rate = afe_priv->cm_rate[id];
> +	unsigned int rate_val = mt8196_rate_transform(afe->dev, rate);
> +	unsigned int update_val = update ? ((((26000000 / rate) - 10) / (ch / 2)) - 1) : 0x64;
> +	int reg = AFE_CM0_CON0 + 0x10 * id;

The driver looks like it supports mono so won't this trigger divide by
zero?

Also please write normal conditional statements, it's much more
leigible.

--z/xr10pR1+37JRYr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnPyacACgkQJNaLcl1U
h9B3tgf/eTqWV5PjbeaYZPgBsewKX76WoqNQZFyKYRA9EQvOScDPQp/1KWLV2E4l
MVxmqWYJVC5Ps+dqV+2BeEJjGicyucgzXGTTpuEPqDwMalGwC9ou9Jx5ehVzryYM
oV4xrTotyMS0QYVxR80JkLCMf5M2WJ0dCbHUtyTkYwwCfPMDKp9Su4WoRtvXQu8u
sRH/X5F2TkXMSNWU7HdgrAqt6CfzJsJU6i5LP3Da74l5coFNV/CcxIEjfTCDTxX9
g/tJo8ltV3Z2coWCOEwYKos4dZGsv+1zVtWz7m8970gyDyHQrRWE8Z/wzfPdnIya
MAkqBgCkDQBaG8cMW1KFb1v6Q+fnkQ==
=HwHw
-----END PGP SIGNATURE-----

--z/xr10pR1+37JRYr--

