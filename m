Return-Path: <devicetree+bounces-274527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE7yOcKfsmkOOQAAu9opvQ
	(envelope-from <devicetree+bounces-274527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:13:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF6270AF8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8792D30B8E65
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6091639BFFA;
	Thu, 12 Mar 2026 11:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFOe83pc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1AA2D8793;
	Thu, 12 Mar 2026 11:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773313964; cv=none; b=Xoi3zsCS5Gy51f5DBTR3rTl/ecM+unT80q7miOsSGbjigEGtw7msiS2CUQ9eg57fHgEAknOR3/GPBgU0oEGuVeJQzlaeL8DDDx2cjWCeM13RrtV5f5gsuj4u5iEYqqH5qeUw8/ujEgkS+NQTxfwgym/76N7MyH8TtiLJUyRyqyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773313964; c=relaxed/simple;
	bh=gO49vUt7RxyJAj+yNJ6NoGLoyBMrqludEpRniqTT35Q=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mF6A9I2PdCh+ce9wlq9nD1mdXjMXr3SqzvT5KAz9JzBfE2ulMihGHt8msNJkft80gCEQo5gYhCaPT4eii/3F7vkAhJD4Z7QB1ehXBhuzyD3XOQQOyF/QIqoK9ne8rKcEyFtnrZ562zf9xnEeAUrxWVcJAvKtHgwoqOl/LJeCwAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFOe83pc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B84A7C19424;
	Thu, 12 Mar 2026 11:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773313964;
	bh=gO49vUt7RxyJAj+yNJ6NoGLoyBMrqludEpRniqTT35Q=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=VFOe83pcxpVUE5kI1Kdm+JtRH5jYV/qjj52z6TcIdlG0dwNruM7RO8GHSeye0f1xw
	 RdxX3VfrYaWoKKCayMKCd2uMlkUhmn6xzTgiqImKMRvrxd6+Tp+8UF7A7z9wL5N+U9
	 qL9L+wXU2F0UgzUdmRe9vRi65GST+hpetWKaYCO24l9NLeoAC4R37BK+uytyGwcXtr
	 gL2zLAeKunuV5D16ox4F/wu1/5sSC+9LGTvxZlTHU2qvfa+gMt7x51utjBHiJfqsq6
	 swb0r/BzxiPQOoe4ezXWn468ZNvHArLuP704PxXuSZ92pYATa2zhjsQI99PAHJriKP
	 lVGUwhwiErVuA==
From: Mark Brown <broonie@kernel.org>
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, 
 Baojun Xu <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shi Fu <shifu0704@thundersoft.com>, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260311153548.94265-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260311153548.94265-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] ASoC: dt-bindings: ti,tas2770: Switch to undeprecated
 reset-gpios
Message-Id: <177331396147.9483.11109855374275797178.b4-ty@kernel.org>
Date: Thu, 12 Mar 2026 11:12:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-68380
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274527-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ti.com,gmail.com,kernel.org,thundersoft.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 50BF6270AF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 16:35:49 +0100, Krzysztof Kozlowski wrote:
> GPIOs with "gpio" suffix were long time ago deprecated, thus
> "reset-gpios" should be used.  Linux kernel supports both, thus this
> only documents desired choice of ABI.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: ti,tas2770: Switch to undeprecated reset-gpios
      commit: 46b87c37ca4f54a630d988cb24a1aa9a2e5ba1dc

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


