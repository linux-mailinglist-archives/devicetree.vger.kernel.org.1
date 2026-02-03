Return-Path: <devicetree+bounces-262224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBI2MAfmgWl0LwMAu9opvQ
	(envelope-from <devicetree+bounces-262224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:11:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64423D8D7C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A1DD30E7949
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E5C33DEC9;
	Tue,  3 Feb 2026 12:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icHe28pz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0636533B945;
	Tue,  3 Feb 2026 12:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120325; cv=none; b=UN2yT38X2PXeDdWJPYGcAh/g2AFxiGgtHX0jN8EAERvtKjbMlVlaqIS0XKwpwXePJPtqZRTto5nMFi6aii46cXaZUmBBBImIvwB8dVstmYutsUXo/VW1iMTnzgM+PgipkB/tJ5TeEM3PAjQQ/uXcXpgCfsqeQ4AS43KGcF7/ApQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120325; c=relaxed/simple;
	bh=kao7TbUlacMJNZsS+k0rXkPVIuTTFly/b1SFR9FwuYo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=f5U7Ao2LELkQL2FUaeEq3U7oYQ4d+XHDmDUtjmcfnqYxNI66xabG4VD5QHkahDztjCmcZx3dg+3TCo74zJ3zIiPOiSHjpJ7ePQfo/zQZsvMcjXqzIzQReAiAYtZdVufFpEe2b4sLQxACGirYVLxsc7JsfH1qu5LboznqA1Ye9T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icHe28pz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E334C2BC87;
	Tue,  3 Feb 2026 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770120324;
	bh=kao7TbUlacMJNZsS+k0rXkPVIuTTFly/b1SFR9FwuYo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=icHe28pzwl5/c2wAhmSHrTWGl/6O+r2a/PRrs/NiuDYb4ozYspISsafQzO00aBqcl
	 ET24NflbQKZ9cZWBFZDL3MftVomlunmOmco0A7EeoVKxRJXDvM9TN9+LEyA1RXqnWW
	 Sd/03pefvaLjjnAduq15OlICl7kPb4sLDrsAxiVnFhy1hWp7JFyWwUweWsoixODTgg
	 QZPndtIe9r9nGuyuJ6Bc6qHNw/+owbRpfP/cKlc+9E2zHJ5XpB56ngQBSRFFbvbcrz
	 k4vdneIMOnzaZs8xP8h+B/W312xvgYzgVpQcaLmB7UWBUpVF5QNc+iHfo0L+fV9HCu
	 A5v3xiDYrJPxw==
From: Mark Brown <broonie@kernel.org>
To: linux-sound@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, wangweidong.a@awinic.com, tiwai@suse.com, 
 perex@perex.cz, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
 lgirdwood@gmail.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Message-Id: <177012032197.85387.2083007353460643930.b4-ty@kernel.org>
Date: Tue, 03 Feb 2026 12:05:21 +0000
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
	TAGGED_FROM(0.00)[bounces-262224-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,sntech.de,lists.infradead.org,hotmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 64423D8D7C
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 11:46:05 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
> RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
> manufacturer did not provide a firmware file, only a sequence of
> register writes to each device to enable and disable them.
> 
> Add support for this *specific* configuration in the AW87390 driver.
> Since we are relying on a device specific sequence I am using a
> device specific compatible string. This driver does not currently
> support the aw87391 for any other device as I have none to test
> with valid firmware. Attempts to create firmware with the AwinicSCPv4
> have not been successful.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
      commit: c26d6cdade6c2a96049f24fac64a8e3734188703
[2/3] ASoC: codecs: aw87390: Add Anbernic RG-DS amp driver
      commit: a145cfd0ffe7bd7d61ce25839cec737c449b0d2c

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


