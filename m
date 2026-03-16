Return-Path: <devicetree+bounces-275885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB9fKn9gt2nZQQEAu9opvQ
	(envelope-from <devicetree+bounces-275885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:44:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F33E2938EA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:44:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F16A30698C2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676032D3A7B;
	Mon, 16 Mar 2026 01:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H04WNcOF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB226B75B;
	Mon, 16 Mar 2026 01:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773625130; cv=none; b=iGgsxkQ1sDShjFJ97hE97WkGNCtvglpPsovkCs0L4vRpKPL8Q+YxunTxiDOVdelLW7dm/KCtn6/Bf6214kxRW7LWlCgbF3hiVCUNtKUzn5GezzE9l5LCvwtiaKBoa9voZ4R/255mR15PhzuJKD3AeUFgNfJD/M/DUhj/bzwB7ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773625130; c=relaxed/simple;
	bh=RCZ9tGynYH2k4hmRD7aUYSxVh5bOHoU7eNssy+Q3mAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UMVcjYAqbgVo5XydCXEVRmY+O1nvkmxSRg/neh94u1yTEWmTXC5vgKPQDP0hTGBy8ep135Y0zBlUaY1Wxw6gTchGOyWCc0wuAuQSCjyLiSzsBY/jtAZVGu49nCylKxliuZ2lTWiYoLSbqTNGc8J8gZ8swPnT2uFoGfDSituJ4Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H04WNcOF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7E88C4CEF7;
	Mon, 16 Mar 2026 01:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773625130;
	bh=RCZ9tGynYH2k4hmRD7aUYSxVh5bOHoU7eNssy+Q3mAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=H04WNcOF+lOVqjKorxjuyGqeUPXorFtBTamlv0ynDq6tvnURclei/GZY196j/aKkx
	 oyReX+GPWQMW9bmG6084NDUN7SuOjnaKZWhY+2A2zvCIpq6Cs6Cqum5yB7KJH79jHb
	 +R/HXNIAWtud0hJqeLhpOFH4e3nKoXWZR1q+q+Uo88KrOTi1jWZBmMvybBUeuSgMzo
	 brPn4T9yi03fchG3NUIDbwiQIPIIA1TDHR4B7De2MQBGrruBcl3x5EpPErJOLRNnL9
	 5UZmw4RBEsBIN38ktm56j5U0lGCpa8naqVdN3C3PDBx5iLHZ/JFmc7exLNHeZeKtNt
	 xnS87HJeO//Dw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Weidong Wang <wangweidong.a@awinic.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Aaron Kling <webgeek1234@gmail.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
In-Reply-To: <20260311-aw88166-fw-v2-1-8ef30dae3657@gmail.com>
References: <20260311-aw88166-fw-v2-1-8ef30dae3657@gmail.com>
Subject: Re: [PATCH v2] ASoC: codecs: aw88166: Support device specific
 firmware
Message-Id: <177362039449.177614.5997272118945419405.b4-ty@kernel.org>
Date: Mon, 16 Mar 2026 00:19:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-5154a
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; i=broonie@kernel.org;
 h=from:subject:message-id; bh=RCZ9tGynYH2k4hmRD7aUYSxVh5bOHoU7eNssy+Q3mAo=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBpt18mu2WxG7Lxpw6eIHkPQ5sC6Lv7kvQfJNQi+
 9XjFFxusqeJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCabdfJgAKCRAk1otyXVSH
 0MUSB/9Zfzpf2yaKKSqCY6WYFdCd45y+MGhPlBWKq7cE7VGR1Buoj3A6DAsayLAAZpNW3qK9GDK
 NUK5lnAP62FqOYY82umAahWXjv2C7ZoFqZQWMGgUee2SZfxKa9Pys9HYltlIrzZSBwmpXIWQKzN
 S/zQokCbG7uyOLsV8sXf2QDuPRs6PcVjKBsZaKGljdzFgfHVyYYwtETJKKroAeppChoQMk93Yjp
 4AvBkuyb7zhat0AoXWRXfGJtLeDgyVChHuLTvOED1J0sGz7qen2+2BWufbw/2SwG25qv5iC2w/T
 jRPmFXnipr3txszDz1D4NH0OruQxGc3Z/62DHxjnN6dEE3n0
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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
	TAGGED_FROM(0.00)[bounces-275885-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,awinic.com,perex.cz,suse.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F33E2938EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 12:41:20 -0500, Aaron Kling wrote:
> ASoC: codecs: aw88166: Support device specific firmware

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.1

Thanks!

[1/1] ASoC: codecs: aw88166: Support device specific firmware
      https://git.kernel.org/broonie/sound/c/eea7fb790cc3

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


