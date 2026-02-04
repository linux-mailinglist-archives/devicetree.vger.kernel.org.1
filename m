Return-Path: <devicetree+bounces-262638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKZNIcVDg2nqkgMAu9opvQ
	(envelope-from <devicetree+bounces-262638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:04:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE590E6256
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:04:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81EC03015895
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A6640B6C2;
	Wed,  4 Feb 2026 13:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQV8esa3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF87F3D3CF8;
	Wed,  4 Feb 2026 13:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770210185; cv=none; b=n2yGTrM4ctUSKDXx290pistXJjhhGFFnySGQh64iJFQU/oid7TKIXhzgeAYM6ZRx+7mRV65Y9vlMLNAqwrmTYPer96emwKI2NXnDmYHuQ6OU5Ii/oChqWfa15qkKx8EptEzuBlD/xHDAZoeSw4lO+UwzbWPA8zu88j3DIDYUYOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770210185; c=relaxed/simple;
	bh=3QItHXqUoMzeyKXRZJNCFPiV1VMKX3sZfql7qazHHg0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CsDfWxhL+EhtEADfJpixcn4BPXZH1gp5aiZpjc+S65p5bQdlZUxchWierM2CaIMKvij+911pULWHX0OlcvT7hgNbDdVC5Thu7Df0ew1PA4pVTzeh/IEiO8mDYFZM2JN9948tHlU/evb/LsIiHPw7sR1FwWRBaIWwTF490Kz+ac4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQV8esa3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48DCDC4CEF7;
	Wed,  4 Feb 2026 13:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770210185;
	bh=3QItHXqUoMzeyKXRZJNCFPiV1VMKX3sZfql7qazHHg0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QQV8esa3dwBSlM95uObtmKPh31g2dEvhcqWLG4q3SlEDTc3vReOpuxdXmeTsxvOTu
	 9Rc1pnuydsFzOQXNS+VC6Ucdb7ICCURP8D0WqbJ0NNJbK3hSO0qBatOCpl/2ZYwUU3
	 3XD0LhpCJNXebMmXE+vEKx4mgZ6lm2VMz+MXkm+hCa9muXHBgl3h8XFZDh0vLbb3Jz
	 7N71WHWAp3aVPKhXnC6w2AHS4b3a2D0DVvYNX/xn0c5CtWJSyTdYP3FzNyB3Ziwkk3
	 I5h+72qsNvCGcL72A91pUBGgm9pwz102oBwoJZVuDLYedAso5bzR3Gw+QKYIxRLDRQ
	 Syo796qICsyPA==
From: Mark Brown <broonie@kernel.org>
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, 
 Baojun Xu <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jai Luthra <jai.luthra@linux.dev>, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
In-Reply-To: <20260202205758.3044617-1-Frank.Li@nxp.com>
References: <20260202205758.3044617-1-Frank.Li@nxp.com>
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: ti,tlv320aic3x: Add compatible
 string ti,tlv320aic23
Message-Id: <177021018303.97050.14618898724597505877.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 13:03:03 +0000
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262638-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ti.com,gmail.com,kernel.org,linux.dev,vger.kernel.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DE590E6256
X-Rspamd-Action: no action

On Mon, 02 Feb 2026 15:57:57 -0500, Frank Li wrote:
> Add compatible string ti,tlv320aic23 to fix below CHECK_DTB warning:
> arch/arm/boot/dts/nxp/imx/imx35-eukrea-mbimxsd35-baseboard.dtb:
>     /soc/bus@43f00000/i2c@43f80000/codec@1a: failed to match any schema with compatible: ['ti,tlv320aic23']
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: ti,tlv320aic3x: Add compatible string ti,tlv320aic23
      commit: 85352e59de4ce09de8322b2591a26f515fbde9c0

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


