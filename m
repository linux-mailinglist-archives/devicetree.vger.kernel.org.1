Return-Path: <devicetree+bounces-308319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /kNxC7TJJmo6kgIAu9opvQ
	(envelope-from <devicetree+bounces-308319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:55:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFD9656D3E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:54:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=blYCQWsY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308319-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308319-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A677301902D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 13:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259473BE659;
	Mon,  8 Jun 2026 13:54:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A61F35C19D;
	Mon,  8 Jun 2026 13:54:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780926881; cv=none; b=a8EZB2xBeyLrZ/yOIkooFQGHY/03hbUNuBaFRhuKF5zUf8l/ILd0+WS6Y1SjHu9Glqr5Sc3nrCOkjMk+kiU5Auq6sLA1sRs09LwvGzVgm8phwzy/WA7jCEfGmz1lPjZ+f0i0a0ITn9zSfi73J+ZxpWfOwaOVWWBV2ZBoGm+d9Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780926881; c=relaxed/simple;
	bh=L9staRYHSkW9jzdbzui2ZA4DQDKVLZCgSBnee2Cwo0U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bBREjYb6ul7TqRa+ZmZrchrMmBBXUsC11SaXX47tR/oZUxlqAu2IRRvFOgHNuIVsXxSSH3ldTF4YfQ2tHSRGjU+IHTojNISHljAoZ4gtrckc3DCBwEqozyUf6X6ui2nKEbl+LnliKww8u+y/Hb373seMgxPtRhr79IQ4FRfAr7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blYCQWsY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 835DB1F00893;
	Mon,  8 Jun 2026 13:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780926879;
	bh=3cQphqP9JS/kBWYtn7n6EIUZyWsbWxZdu3/deJXfVnc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=blYCQWsY6mRdKMRmfbNvNIfVMIUbnOOKlnDJDm0Cfx1PMTkJCHKLOqq798x4lLhaG
	 nnqoKoMZRvQ8tgMrW97lozd2Ivp8eX7KtszU5r/GoFEm/pa8yTBItAJAGUP4W4TZmJ
	 li8wRFiTZF5PRcEE8XoR3TNCmS4woQPHjZ1QycSMadYdvmgocY6U6Y5ri6si98sN1K
	 crTQ/6FyOWuX8LQydjhuLMl+FA2a4/v3C/x/bmty0Jy+CXDCjXCkKt+IR0wq5aArr7
	 rUa3wfgNKr4blsATIKTwsK1svPcqM3Ve8XM6MEtWcDJGj/vm9ZpHlp6oRBRxpFQv9P
	 JlPj5G0JSaPrQ==
From: Mark Brown <broonie@kernel.org>
To: Max Filippov <jcmvbkbc@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260421085635.4490-1-chaitanya.msabnis@gmail.com>
References: <20260421085635.4490-1-chaitanya.msabnis@gmail.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: cdns,xtfpga-i2s: Convert to
 dt-schema
Message-Id: <178092409502.121051.15910146751063527340.b4-ty@b4>
Date: Mon, 08 Jun 2026 14:08:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1134; i=broonie@kernel.org;
 h=from:subject:message-id; bh=L9staRYHSkW9jzdbzui2ZA4DQDKVLZCgSBnee2Cwo0U=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqJsmcLz6My2x/yt9Lz3w8SN4Ioq5Q4f7+/bViZ
 dU2QBcHQZqJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaibJnAAKCRAk1otyXVSH
 0KnpB/9WDQUdR8LaWnQBOb25ntRzTH6+T9k9U3bRMbmLHOLATMB4fALQn19l9j8ryU+7iJLWrxm
 i/IZs1GL3OoM60bm4/V/1fKwbTM5STjOcLBM+itIaHpvYZpxqgKEqCuCgRpTQMTRuPzla85aaGg
 qqXm+hvILFfoiZpU42Hmef5EGwmN0TCEmgRhWvlTYG5A34SAl51OkWsWoyEAsMZDpT6cSp7m0vH
 yjltYBclSjRl8jGX1P5MSueVp6UH/qJ/w6w9luCGHn91xnj53UwPM2lGZVor8q7TC/TvkYMfJDI
 iRW/pguPzcnf1TK3/poLM+d867M5K3n82umOB6TAs4lG3RI6
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jcmvbkbc@gmail.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chaitanya.msabnis@gmail.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:chaitanyamsabnis@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-308319-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAFD9656D3E

On Tue, 21 Apr 2026 14:26:34 +0530, Chaitanya Sabnis wrote:
> ASoC: dt-bindings: cdns,xtfpga-i2s: Convert to dt-schema

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/1] ASoC: dt-bindings: cdns,xtfpga-i2s: Convert to dt-schema
      https://git.kernel.org/broonie/sound/c/f88580407f99

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


