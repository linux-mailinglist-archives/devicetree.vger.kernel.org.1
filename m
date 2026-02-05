Return-Path: <devicetree+bounces-262976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPnwAlZ5hGlU3AMAu9opvQ
	(envelope-from <devicetree+bounces-262976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:04:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A639DF1A21
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F2FD3005AAF
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 11:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123843A9D96;
	Thu,  5 Feb 2026 11:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr/rEvfV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E287A284895;
	Thu,  5 Feb 2026 11:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770289490; cv=none; b=GQkyXscAy4QviTNZeWmZC7If6YLdxrm6imH3C4THL8mP4GzgYENnFpvHJOhLPU5wTi+JVijzWfQKHfvuZNQFZG9R/8I+osUIUQDMLXMcSOFjheZocjmHZhB/wO6GYgu2WozVJXr5PZw28hRhVFOHcJqcKrc7X5xm1v3H6o3iVvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770289490; c=relaxed/simple;
	bh=5bA4mw/7EiceL2xvM6nNasIs9ieQ44H7t4GmXZEZOkc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kJq3dm0ecdUkEfBKzsSigWbcPJ1+uvKTuBBMZrK36f3HzFl7+34JlrLHqm8hZmoRAYCZVcfdKlaxCNJ6yTYCDEexjnKm9fW1Lrz+/LvyvyTeM6uWhgy8FyUeQLx6T3JrDSNS9nqxKt7cTW5H6FWlOhFkRQuxrJIrrHpkufKglRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr/rEvfV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FEE9C4CEF7;
	Thu,  5 Feb 2026 11:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770289489;
	bh=5bA4mw/7EiceL2xvM6nNasIs9ieQ44H7t4GmXZEZOkc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Wr/rEvfVF6ovp/wt+QDYdoFJ+x1FbkPPPtAnubQAxytakCAnr/dUyNTjnZy93cwNe
	 p9OG7/WpWPh7VpFckANi3iPlyArEvsVasOrqa3Uz5nE8yqN/zXZqavJU7LDisVD4hP
	 Xac71+iEJ36mPOOU1SZf5t4qxVhiDdCOQaJ3SukR/xyFHnfrSbffXCKkt2VcAhYQ4q
	 qJu5iu4afB2u3U5dFi7oIKu8ZnEiC95VCM1vkzFcvBtzdV8H8Lb+ogMQ6vU5QJZ7O0
	 uVh+pFkizQzgaD2cTybPUL0AwA3R8iX1reYVxehG5rOzyOu/86zXbZRTqbs3UgOR40
	 phDBiOpOCiLCg==
From: Mark Brown <broonie@kernel.org>
To: peter.ujfalusi@gmail.com, lgirdwood@gmail.com, perex@perex.cz, 
 tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260130051045.1898892-1-sen@ti.com>
References: <20260130051045.1898892-1-sen@ti.com>
Subject: Re: [PATCH 0/4] ASoC: ti: davinci-mcasp: Add asynchronous mode
 support for McASP
Message-Id: <177028948712.8656.1900067099871753843.b4-ty@kernel.org>
Date: Thu, 05 Feb 2026 11:04:47 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,kernel.org,ti.com];
	TAGGED_FROM(0.00)[bounces-262976-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A639DF1A21
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 23:10:40 -0600, Sen Wang wrote:
> This series adds asynchronous mode support to the McASP driver, which
> enables independent configuration of bitclocks, frame sync, and audio
> configurations between tx(playback) and rx(record). And achieves
> simultaneous playback & record using different audio configurations.
> 
> It also adds two clean up patches to the McASP driver that disambiguate
> and simplifies the logic which avoids the async enhancement from being
> too convoluted to review and analyze.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] dt-bindings: sound: davinci-mcasp: Add optional properties for asynchronous mode
      (no commit info)
[2/4] ASoC: ti: davinci-mcasp: Disambiguate mcasp_is_synchronous function
      commit: e683cb088fdcbdc86fc30008319312cc0bb80226
[3/4] ASoC: ti: davinci-mcasp: Streamline pdir behavior across rx & tx streams
      commit: 016efcaa470cdbc658df46d968d875f6a1cf9a78
[4/4] ASoC: ti: davinci-mcasp: Add asynchronous mode support
      commit: 9db327083f7e0da702e2ec0169f8a34f3576f371

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


