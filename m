Return-Path: <devicetree+bounces-266269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB9DIZfAlGkXHgIAu9opvQ
	(envelope-from <devicetree+bounces-266269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:25:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2E114F992
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:25:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83C323051290
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9AD12C3768;
	Tue, 17 Feb 2026 19:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQhnJnmr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803EE264A97;
	Tue, 17 Feb 2026 19:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771356284; cv=none; b=URtj66BMQVamAh16JV9Gtll6ryCtl+pHeQo505LC6ae7aH8c7iT7d2F/+xcjOqIUm4vihlLaxu7X1+bxgNHA1VAgf3PkzEDGJFvN3wtUmYTQDwJPpPxVQhcB97l7IXuLLWnDtt3soiTY8cmJjFgD+utZiOLlJGAY0inA9lvI+1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771356284; c=relaxed/simple;
	bh=UBdePPv19uaL81ASanxtUzA/Qh7h0X8+eypdZNRQKxY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ARNvnbtFg6UOIgz6wbOedm+dLK88Qt0wnNw8cuC+T+6+Ar4E8bjt9s275CumS9GM3lUpmCNLdLfmnMOm7SloLCahSZGYZIqQZPzHHhYRNvkXkXjZUpuy/xdXPLCrxQGKXYweW8chQLgphBxCiS3VksSDzZJsew+xMkLIlBATUqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQhnJnmr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB3CC4CEF7;
	Tue, 17 Feb 2026 19:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771356284;
	bh=UBdePPv19uaL81ASanxtUzA/Qh7h0X8+eypdZNRQKxY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uQhnJnmrSJtJy9aCZlD96gakRwyp06O7fm39QS/5A/vGVQnv/fHdSFOHOQA2BfHd3
	 L1K4V/pzqAH0kt7hpB4QIuZlHj8yUeTX3qsHZca3UKFN9T8vlSuUAFfjRACNTbEN3O
	 yP3ESHuRlKG76ApVYycPOgdOafsZBMeWE+iXHAFkglrh7vrmdzNExKBtTu4RUOzFm7
	 T06/KeQGeLzqHxZXN6ioyUSAoRkYPtHiOkSdd2LhaCegnEC548B7nbajX0lwZnxn9g
	 Zq+VvyZuwvpSDjV50xHr5rFcOknPCxUNktqsewhfLaQPO3n2PclraJ+sjZ0801hBQl
	 ra6xoR+RAVVVA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Weidong Wang <wangweidong.a@awinic.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Ferrieux <alexandre.ferrieux@orange.com>, 
 Bhushan Shah <bhushan.shah@machinesoul.in>, 
 Bharadwaj Raju <bharadwaj.raju@machinesoul.in>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
References: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
Subject: Re: (subset) [PATCH 0/3] Bitmask logic fix and firmware-name
 support for AW88261 amplifier driver
Message-Id: <177135628111.310944.13830467532641718835.b4-ty@kernel.org>
Date: Tue, 17 Feb 2026 19:24:41 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266269-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,awinic.com,kernel.org,orange.com,machinesoul.in,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF2E114F992
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 11:27:31 +0100, Luca Weiss wrote:
> First a patch which fixes a logic error in the aw88261 driver. And then
> we add "firmware-name" support for that driver to support loading
> the device-specific firmware properly.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: codecs: aw88261: Fix erroneous bitmask logic in Awinic init
      commit: b82fa9b0c26eeb2fde6017f7de2c3c544484efef

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


