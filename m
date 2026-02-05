Return-Path: <devicetree+bounces-262978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFyWDqZ5hGlU3AMAu9opvQ
	(envelope-from <devicetree+bounces-262978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:06:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AF11BF1A75
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AB2E3034311
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 11:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC103ACA6A;
	Thu,  5 Feb 2026 11:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7y8InbV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9930E3AA1AF;
	Thu,  5 Feb 2026 11:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770289501; cv=none; b=dP9CjT/lr2XAwOWZ8MD46e1n13OoMDasZ66ui5/VYENd+OEXSxJSY9npfs/8wWZdK/sQLPdyN4mo3r0g/63Gal5hb/l1kWsQQMupIsOcwWdfKuRJKZNjSvr/jVXCcvJxQoyaU93pzCrti8yMnVZXWzWrCC4yy7DX4keyNlUptaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770289501; c=relaxed/simple;
	bh=cvgfcVc9gU3b37VPRr96iaWieeqcbC0E0oA/LppwcvQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=d8Mt13Nk45eIkA6s3sBu91HrdaY+yTZjisY1Pab9mB/9ty/OyfVZaewulnp7OEL/T02wrNFBb9kLxUs9VasafwZxrbGjH8v0vDaJW6ZW31dDvimimg8zzxOiCX+3wy2yyIpIXBm7SBhUmlVxaHQs+A9imUYl+uF7HALVwxHscTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7y8InbV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41EF9C4CEF7;
	Thu,  5 Feb 2026 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770289501;
	bh=cvgfcVc9gU3b37VPRr96iaWieeqcbC0E0oA/LppwcvQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=V7y8InbVJqAtELuXLzBpWEko5WFUDc/6FrHLFypMzxsamGSK7oQfq0V2NJnFYEy8K
	 qxS3yc3RMMNFp2GQxs///gPnlyvAw0tD36AZu6e3FkTDE6E3RuHpltnM7kjRlpj3Re
	 TGdFTLzmDL9fAv4w9UWHy1TCz2l4Q28H5bClFeHt9k2xKEZnPTFaJyL3jWfPKe6h0t
	 UAZIkuWQhP0BL/2Pi9uZZUfAtKBvVJdhOkdmX3UCKdT73UM6pNimOuouJneQKhg1Rd
	 z0nrhmsd/MI4gjMWRXUAilbiP/RdLK5s/UhaYYeUd1x055/oImfE4IhQUETDnyIysI
	 /NRjnFwg/PCJw==
From: Mark Brown <broonie@kernel.org>
To: peter.ujfalusi@gmail.com, lgirdwood@gmail.com, perex@perex.cz, 
 tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260203003703.2334443-1-sen@ti.com>
References: <20260203003703.2334443-1-sen@ti.com>
Subject: Re: [PATCH v2 0/4] ASoC: ti: davinci-mcasp: Add asynchronous mode
 support for McASP
Message-Id: <177028949900.8656.5002268865840174084.b4-ty@kernel.org>
Date: Thu, 05 Feb 2026 11:04:59 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262978-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,kernel.org,ti.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF11BF1A75
X-Rspamd-Action: no action

On Mon, 02 Feb 2026 18:36:59 -0600, Sen Wang wrote:
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

[1/4] ASoC: dt-bindings: davinci-mcasp: Add properties for asynchronous mode
      commit: f1ef70a4a32042984d29b8d02bdf6167474373af
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


