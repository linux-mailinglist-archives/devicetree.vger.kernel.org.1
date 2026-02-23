Return-Path: <devicetree+bounces-267480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIfPBt1onGlnGAQAu9opvQ
	(envelope-from <devicetree+bounces-267480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:49:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A00961783F5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:49:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B66B3036054
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096B91C5D5E;
	Mon, 23 Feb 2026 14:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me/OJi+z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB02913D638;
	Mon, 23 Feb 2026 14:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857975; cv=none; b=PtepxyrhzEbjNJmxi7dTfnNOZqYmFnSlbc7KEWKZ+b0Pbe3sQuFVvc4WYrRhQfWg+9ixCRTGGKpvXqfwlOfExqnOQhpOIy9ESImtOjOiI68dagTvBpthaNi9HlGl/LYn3QNVYSEfUR7sL2PpykA4LPgY3nc1JzR6eHZlB9mctA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857975; c=relaxed/simple;
	bh=teNVBJErbdtcUWBxBqB1OQagnnRI/zPyGSOOwMdkUNY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=W0lWYGZyHR+ZgyPcPHVBjyZ5dckmFeGnoY1p2uU2VCa9a1pQfBetM8yw0Uha/uNiRHdpTmq23sBaeYH3248XLkxCvu7REDaVPR0tGgDVj6jEXZ+iUaQoEwB8oNnYFFQtiq46gcWYTysPMxFPIJPt4X2d2tfGFVfEM/cfD9tz+nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me/OJi+z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52568C116C6;
	Mon, 23 Feb 2026 14:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771857975;
	bh=teNVBJErbdtcUWBxBqB1OQagnnRI/zPyGSOOwMdkUNY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=me/OJi+zmeH2vkjG9b4f82FAl9EM1UZzt69iajB21pITCljyf6YEPK2ufDGBErn4p
	 GR3d5GxDZgTOn5eKSUrJfw8oZm3p3FEIdIW/ZL93xuaWEc+H1ZasIO1WFzEOiViaQI
	 YKzQMNCr/6XWrALZ6/nIH7ZT2eDLpMs38KVXnSsgO3SIUihqNm9dYr/JUiXogqWCqz
	 SpetGQ0CYqs9mnyEtmQ8FKCHW1kfoWksIWv36oiEjtoQ4o1AN6pEoeTltDd7C8yixO
	 AJudpKBdPHE1ZIlmo5pUANfHzHi0370aqsAnoadrKeByTumiYPq//B5x/XxEtz0dEV
	 Cy8rYDgAEu6Uw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, 
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
Subject: Re: (subset) [PATCH 0/2] arm64: dts: mediatek: mt6359: give
 regulators unique names
Message-Id: <177185797303.229167.4225970079951259515.b4-ty@kernel.org>
Date: Mon, 23 Feb 2026 14:46:13 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267480-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A00961783F5
X-Rspamd-Action: no action

On Thu, 19 Feb 2026 16:55:28 -0600, David Lechner wrote:
> While working on this regulator in U-Boot, I noticed that the regulator
> names were not unique. This is considered an error in U-Boot and we get
> the following error messages:
> 
> mt6359_regulator ldo_vrfck_1: 'regulator-name' has nonunique value: 'vrfck
> mt6359_regulator ldo_vemc_1: 'regulator-name' has nonunique value: 'vemc
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[2/2] dt-bindings: regulator: mt6359: make regulator names unique
      commit: be704107e79696e855aa41e901a926039b6d2410

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


