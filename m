Return-Path: <devicetree+bounces-298856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPppKNyFCWq2dwQAu9opvQ
	(envelope-from <devicetree+bounces-298856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 11:09:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0197756011C
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 11:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3754D3009FA9
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC56B307AC7;
	Sun, 17 May 2026 09:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdRpB6+m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C982819644B
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 09:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779008984; cv=none; b=ir3WRHaF7fu/qfR7HfirRIqymNqaLPtkUNmDkkR3UTF72k7CDjM161EyxsMkUDmwQ3+tlLhFyt75YMFXo4sOSuR5AdCODrANCdfI3SryEDBko3darhXAUGM50fE+HK31sVVgaN6KCKyyO5tQ62mz+3r8dzitWBpvnaYPVDdj2Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779008984; c=relaxed/simple;
	bh=VBnwNIfGy+6slWIApSBORAqjDFnt290zhn1HBy4S5WM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V+mUD0Hghw0d6kgf8Y0y9W33wHEwLnTh9GbSAPzUoSp95LIcXJ+RFs6VMBIvKxSR6anRAzH2J88IJ7OgXNh/kyk+2hRKNu7Pt/uo8Kr1e/x1XdrYo7MmZdTHdvaon0DGzbS2EgpSz2ebo1mu2zg/JeNQofvfs8CJulEM4Lfr4s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdRpB6+m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37B1DC2BCB0;
	Sun, 17 May 2026 09:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779008984;
	bh=VBnwNIfGy+6slWIApSBORAqjDFnt290zhn1HBy4S5WM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=MdRpB6+mkX2tP66+6xa7DmeCGYo+S36noH/x9xs+cXjqkNoRid4Jt4SIEhA9h19de
	 juTeXFBSsd3xVm21BBD1YmDbzepVQXonHv5iTiyxSHt4G6yi/rGhUXPRXQ+ZIdDziv
	 k0NM43cemdw9oIJdtznYSsZn1LeFz9sA3KV4yg6hALtFEtIShygbj/EmIEFr7IXboy
	 /i/Y3INoF0DKWW+6TeFi5wA4BafSPsnjrsffuqySE2v5fmUyu6HTNc39Bp0XeoExBv
	 99mWCxJ2ysC8Hzq+dIDdgchtTPhmcaQPyjI8asyFUtWfhJLCtsmDK+3X6fTkfS/Jc9
	 Zlgu73G5BWtBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 4/6] mfd: lm3533: set DMA mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260517074306.30937-5-clamor95@gmail.com>
References: <20260517074306.30937-5-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 09:09:43 +0000
Message-Id: <20260517090944.37B1DC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0197756011C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298856-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Bypassing the kernel DMA API by directly modifying 'dev.dma_mask=
' and 'dev.coherent_dma_mask' to fake a 0-bit DMA mask.
--

commit e60afe532ed2b9233017faa2b381f88d84566aea
Author: Svyatoslav Ryhel <clamor95@gmail.com>

mfd: lm3533: set DMA mask

This commit explicitly sets the dma_mask and coherent_dma_mask of the i2c
client device to zero. This is done to suppress a "DMA mask not set"
platform warning, as the device and its children do not use DMA.

> diff --git a/drivers/mfd/lm3533-core.c b/drivers/mfd/lm3533-core.c
> index 131eb1a1c8eba..c7914afd564cf 100644
> --- a/drivers/mfd/lm3533-core.c
> +++ b/drivers/mfd/lm3533-core.c
[ ... ]
> @@ -499,6 +499,10 @@ static int lm3533_i2c_probe(struct i2c_client *i2c)
>  			lm3533->have_leds =3D true;
>  	}
> =20
> +	/* Parent I2C controller uses DMA, LM3533 and child devices do not */
> +	i2c->dev.coherent_dma_mask =3D 0;
> +	i2c->dev.dma_mask =3D &i2c->dev.coherent_dma_mask;

Are we bypassing the kernel DMA API here by manually modifying the struct
device fields instead of using a helper like dma_coerce_mask_and_coherent()?

Directly assigning to dev.dma_mask and dev.coherent_dma_mask circumvents
architecture-specific DMA validation.

Additionally, is a 0-bit DMA mask conceptually valid? Standard validation
functions might reject a zero mask. Bypassing the API to inject an invalid
mask solely to silence a subsystem warning could misrepresent hardware
capabilities and violate architectural layering.

> +
>  	return lm3533_device_init(lm3533);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517074306.3093=
7-1-clamor95@gmail.com?part=3D4

