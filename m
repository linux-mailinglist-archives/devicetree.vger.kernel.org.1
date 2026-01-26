Return-Path: <devicetree+bounces-259613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNLRKla2d2n3kQEAu9opvQ
	(envelope-from <devicetree+bounces-259613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:45:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D3E8C2F9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 222743018C24
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD1321B185;
	Mon, 26 Jan 2026 18:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdOTid0K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711119A2A3;
	Mon, 26 Jan 2026 18:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769453138; cv=none; b=rjyZKP4dY/7yO1jZprNybnR1rFC1xHypyFSbOLLNIj0OnJgbWMO+K37gydyiU/CVvFKy3Ki4fhLjwUe+zJqcu9+0dMDHUnbiO23BLMJ9yNJZKI8Vk5IRHxs+HdDF11GWLNGKQBST75hgHGinDuqExXabtSdbhiZiH+FaJSSJai0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769453138; c=relaxed/simple;
	bh=7wYtCd5ZqmWUGeltWIXEhE03P6pAWm4MmjmrdHrKDro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MShuzHK2RYbuW8BIgXD6cPcOUAzloeFvtW6koiSRqO1InkxP30aVw9GY6Y/EQcth8EP/KxcjIMeMYChHIilcf9KiPrm6uImN/SFuEBqs56gs7heDgIc/q+CEDVwIiDPAaA/qisK5+NYwf2QIZUcUq96bGYhJewhoGYX0qMR7U6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdOTid0K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C20C116C6;
	Mon, 26 Jan 2026 18:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769453137;
	bh=7wYtCd5ZqmWUGeltWIXEhE03P6pAWm4MmjmrdHrKDro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MdOTid0KIYgf/g2F/PAGUu+RfhgU7iDkwtt+YyFyhrMhZNE63TCCFaw92f6FnU4+9
	 QlOXZHXiGXxzWRBaSCRekjYuJh30u5u+j7g6bc17yOTt19B5TjRMP5DGcAGgSld3Az
	 8UQ+jDo9BBd74zk3gDYP6XHQ8ClWd/z0AQ8rYJowFDSIX0AMLQPc3Q9cN90wFC17YN
	 Gq/G/+sxD9LQT5iK0TkBOvkzTsiT8EByCoavtZ2HmAdZ1d/bx7aKhhIJXqSqspJl9W
	 mvRtVotvkXxdCAlYE87M3GGHFOepa2TqE4fO4Jfd5p0ppsVrkURbqaXNNk17PxGyZk
	 /iooD6637tfTg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260121235757.370920-1-robh@kernel.org>
References: <20260121235757.370920-1-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: Convert ti,tas2552 to DT schema
Message-Id: <176945313576.769345.1126214237939485232.b4-ty@kernel.org>
Date: Mon, 26 Jan 2026 18:45:35 +0000
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
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259613-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ti.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 31D3E8C2F9
X-Rspamd-Action: no action

On Wed, 21 Jan 2026 17:57:56 -0600, Rob Herring (Arm) wrote:
> Convert the TI TAS2552 codec binding to DT schema format. It's a
> straight-forward conversion.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: Convert ti,tas2552 to DT schema
      commit: 506e0825a4c9b251d141f0f31c6cde1bdc2983ff

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


