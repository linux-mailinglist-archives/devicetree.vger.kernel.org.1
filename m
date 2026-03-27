Return-Path: <devicetree+bounces-281829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EUpIVrrxmloQAUAu9opvQ
	(envelope-from <devicetree+bounces-281829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 21:40:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4134B252
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 21:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1020A303A1F8
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 20:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1ACD37FF46;
	Fri, 27 Mar 2026 20:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH/aPUBo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF7332F742;
	Fri, 27 Mar 2026 20:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774644054; cv=none; b=iq4ctCx38USpxOc6HCaGcQGtqowncfmJFExWTbWOuKftxtBIQHbMFs3Qb15+Jp8MDLpYGVasnTPZN7UTL8BuztD3vVrYQVlfciFOZmKZriNZM0BCLMYE2wpprnejktzkvZczJcoRs654MAqiwunZMnrp4O/C/CH1HWUaRe+XT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774644054; c=relaxed/simple;
	bh=/ezLVy3GZhWlSKa9nvaADKtZcRVrgEC0HxqJGqIEYPI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jBhuo2FYfqkKm/vsuvZT7547noLbkdmIJX4Y5O3aQGPOJzwyKlO2GRluT6vAaIaWUWInaznX/oOZuI6U77k77U7RXbDDqFYrf4qf+5XjN57oYxq/3zWiYeKXudpYUeRc/BcNECY0MjqqP/VFLF9BGxLkkDJdXTr5n3Tu9Xy2ltY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH/aPUBo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D77BC19423;
	Fri, 27 Mar 2026 20:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774644054;
	bh=/ezLVy3GZhWlSKa9nvaADKtZcRVrgEC0HxqJGqIEYPI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AH/aPUBoSJkiBjQqZR1M6QyALe0uK7mtVJbkfe5WbAc8tLRZeZszZGkw5GyORtBu/
	 aCp3LTusO3OWa6o+DuMd0x8Ho/5QEP8HtcytdEyXWAHIdkcQcZb8W0o6AHkBHA8z/l
	 8QhNFi+2AXcsL+Qy+HRXq/aWh8+OgG1vCaDSE6cXFDpSC2mDKKJv2l4QVg9Nr1jgtM
	 NELrstPWDB+mNeAW3d0ors/S1PVCF2d6P/XkUTs2Z9uIZyrTjWgI47GQ+fQpz/U84O
	 1TyUWOafJ1jj4ZSURVgQJsaZwa7o3pTAkAdY0+uW6KFzjMr/442jGvewl0mp5qwjx8
	 OJG/yIwqS8CNQ==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, Khushal Chitturi <khushalchitturi@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 koro.chen@mediatek.com, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20260327134649.31376-1-khushalchitturi@gmail.com>
References: <20260327134649.31376-1-khushalchitturi@gmail.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: mediatek,mt8173-rt5650-rt5514:
 convert to DT schema
Message-Id: <177463208948.777262.1614314585663974285.b4-ty@b4>
Date: Fri, 27 Mar 2026 17:21:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev-ad80c
X-Developer-Signature: v=1; a=openpgp-sha256; l=1162; i=broonie@kernel.org;
 h=from:subject:message-id; bh=/ezLVy3GZhWlSKa9nvaADKtZcRVrgEC0HxqJGqIEYPI=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBpxutS/ovJb6SR3kEuiSgzP/pmOBz6pkYdq+zg9
 iprs81yeHyJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCacbrUgAKCRAk1otyXVSH
 0GfPB/4noaJ7sEbVurq/yn/pmLXMIIFv71dC4eCXNY0lKVQ4/RrySFl9c5SlyzNWkXnFhwJS78n
 9YSaNciI+oAulSjz3X4l+xphTRs5Z8C3KZX4YYVtuAKF3Y5zz3VaD0iFLRQ6PuLG/CH2HFU37EE
 keIL+HHQhapJQiPZbP+5DRLuMgSFc6nrUvf8HXPFteCG12wGQX4Az9e1OWj1wS7JeK0wrrrVIp5
 FQ+e5TsNXP5ZMR2qe7SviG2gyy7OTH7YYI5khdn2qk9X2ZkojV8I1LTVqB9TWG7FPsrgy/wJ1a1
 zxS/56xv3po9EB4VD4PASwcqiNypZIdjrEyEpR8CC+wsVumr
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281829-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46C4134B252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 27 Mar 2026 19:16:49 +0530, Khushal Chitturi wrote:
> ASoC: dt-bindings: mediatek,mt8173-rt5650-rt5514: convert to DT schema

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.1

Thanks!

[1/1] ASoC: dt-bindings: mediatek,mt8173-rt5650-rt5514: convert to DT schema
      https://git.kernel.org/broonie/sound/c/472d77bdc511

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


