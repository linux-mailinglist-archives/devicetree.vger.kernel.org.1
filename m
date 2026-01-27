Return-Path: <devicetree+bounces-259871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OZ5Mw+reGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:09:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE55940D8
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A615B303294A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FA733E34E;
	Tue, 27 Jan 2026 12:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHL5SY2V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E25B33C19E;
	Tue, 27 Jan 2026 12:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515749; cv=none; b=DNr6h5ZPEaGzV740xTwe7F5RrTjAHRNvsvaTslLiB3lVXR0rdWMS+vsYEXHF0mTlmLLvV84YMttojmaNYxRZZriiQ4QGcZH4yFss+vilcQV09/CbIDJlbp7qSB29/ZSjJyeKlrTmGc+99iSOIQYYd/dVzMU2dojCCkZvrjuIT0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515749; c=relaxed/simple;
	bh=+zruV0gDKWApjNTlJT7dgyYGbAZ9dVb3+dt9ei8uAN0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=s+kAZ7awzlOunR1RBDF5EhWPALNxf07JKf1FNrXLL7zF3o/EzKJvK1Fec0+vq4vgmVhyDvS02MVjC0Z1ojuGhm5k3DUqDWjWSpWVKrtWOr2I1A6mhC+NVWB8NnWR1klEepRIS12KIV9JquH+B92UfM5EsHw9JPFnLxWhkPOIMfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHL5SY2V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2A93C2BC87;
	Tue, 27 Jan 2026 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769515748;
	bh=+zruV0gDKWApjNTlJT7dgyYGbAZ9dVb3+dt9ei8uAN0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jHL5SY2VgWzFxw8WQ0QgYC7bxRlseY3GJjdBU+RdFC3yik/IwyGFqFcQGX6ntHQ0m
	 QyoxIrfGY07O/wjSh7A+HxjN/ne2V4ps4/n4TIJ6bH3l+/fHFsXRJI9/SLvN0ZhXup
	 Gfp2A56AqqEYL//iPS+Pw6xTgQmdS3zHHB26G5Oj9Ju5a8Ogo6DVyCX0u34gtidFZQ
	 q9FtU/P3NGkrn6BQYtQOte1gV3NCL6ZIcuaCRN4Iw+z130UOpMyjMnHtB4PFbpi04j
	 5i7jRhsJ/E6h2Df05nU3pSycPCDGOTfBufe6Ck/Wwp2wkL0uXM8IzroehdMjLI2J1H
	 YpfJXmYWDiLnQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Chancel Liu <chancel.liu@nxp.com>, 
 Frank Li <Frank.Li@nxp.com>, 
 Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
References: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
Subject: Re: (subset) [PATCH v2 0/2] Enable AONMIX MQS for IMX95-15x15-FRDM
 board
Message-Id: <176951574553.80702.13998029904704503397.b4-ty@kernel.org>
Date: Tue, 27 Jan 2026 12:09:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259871-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6AE55940D8
X-Rspamd-Action: no action

On Mon, 26 Jan 2026 06:55:35 -0800, Laurentiu Mihalcea wrote:
> This series enables AONMIX MQS (i.e. MQS1) for the IMX95-15x15-FRDM board.
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: fsl,mqs: make gpr optional for SM-based SoCs
      commit: f80bee70b1938f904d0b12783044d5eebcc6879b

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


