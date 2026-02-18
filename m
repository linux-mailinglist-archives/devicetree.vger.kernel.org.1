Return-Path: <devicetree+bounces-266547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIyAFbZMlmlUdgIAu9opvQ
	(envelope-from <devicetree+bounces-266547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 00:35:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D064815AF42
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 00:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB38F304A313
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 23:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAEE33ADB5;
	Wed, 18 Feb 2026 23:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jl69D+Do"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398482F49EB;
	Wed, 18 Feb 2026 23:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771457691; cv=none; b=mdKWBmXgdLSy+4xUJZqi8HSvccjE3ARh/wtUBnpmE6quhOqSjT8KoJlF2FdiyHr1CyTYrIw5Mpw0GC1ZE+cxy2x2T1GRbroBrZ8U/ZZF10OpsPbz3/HQK7TPm/HYgSK5eiomfl8wGl7xUEfny+IGA8gI4tbfX1YhwZx4AKHyUQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771457691; c=relaxed/simple;
	bh=qpmummim78gKeegZYCtVyp5iwX18vKvMYjnNgD8l0OE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YoTmNdzHBtq1orxbaB+xgtrI3QQxn4To+unaMvwtPxh1Oex3OPXBET0N5wSBMe/jjvRMEZ2ViI5w1W7MgTqZYIlOgqnecKI6ElCNQMS3IATC4mjlx1R//Ns9WTSM7sGd//PMxlvUT/8B1e2xxjp6rAyIoavlqvRtkItMYLKnofg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jl69D+Do; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE38C19421;
	Wed, 18 Feb 2026 23:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771457690;
	bh=qpmummim78gKeegZYCtVyp5iwX18vKvMYjnNgD8l0OE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jl69D+DoZkStaY2t47YypxsCLd3CevtFy84xk5J11X5goiW4pR06Zk98qjsQIzhHT
	 lB60HhAP9YpZDXVUv93WB5kYWUNymt15kRzZACjvy85H0eBN6ulLruWNNiHFPvpxIm
	 dEH4wf8e0wn1RNN1NZrOj0bMd3TS5IiM2AXuxo9WrBz81wNfWMwsMCYQHoeajlUYzl
	 s3pycgZ4DZFZkySQlJNMJXdS8hCFFYLiVE4PTkGli1+FYsAsmGxytpDLAyZzH68gje
	 TRKmtmkdzxENsS9XcKLk961MRaRgwdbugP2qHHUNOoyTwjtNEQFdvKcm9/yaQINW9D
	 LR/ukAqzLNF4w==
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
Subject: Re: [PATCH 0/3] Bitmask logic fix and firmware-name support for
 AW88261 amplifier driver
Message-Id: <177145768781.2257280.10716165868413631584.b4-ty@kernel.org>
Date: Wed, 18 Feb 2026 23:34:47 +0000
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
	TAGGED_FROM(0.00)[bounces-266547-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,awinic.com,kernel.org,orange.com,machinesoul.in,fairphone.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D064815AF42
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
[2/3] ASoC: dt-bindings: awinic,aw88395: Document firmware-name property
      (no commit info)
[3/3] ASoC: codecs: aw88261: Add firmware-name support
      (no commit info)

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


