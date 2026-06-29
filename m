Return-Path: <devicetree+bounces-317684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VmHqJaKoQ2qveQoAu9opvQ
	(envelope-from <devicetree+bounces-317684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:29:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7996E399B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:29:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="UNSA3/+D";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317684-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317684-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 477EE30DD1BD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E31404BCF;
	Tue, 30 Jun 2026 11:16:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FE73ED134;
	Tue, 30 Jun 2026 11:16:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818216; cv=none; b=hxhAjobioVQfARU24/jh8qInOPcdkOapKZjcCAxDkAsDFaKuYZYmsw6mX1d8ymFgkL+vhUOYPt9ByrfplHvJyx7AhoELgyNoffP88ic3pS7fMA4OrO1TIkpRGN/dSsmtx34fmF5mZyrPwzucqm/cKNQwXNvZyKhYtnBipZXZ7zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818216; c=relaxed/simple;
	bh=sWHuPdL4V7aEh8FugrGqBsjNaOpEn9LSPJKhiXzoATk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Fa9rKDAAdSHIB8YAHb3PXcCxRgktzq8GyCRNt2fYMEYagnAAw++xEOJSvg5+YiDcw7YS9CDY3ZbKoWfdm3lWPjg1NXQap5zfHXpcuTHU5HS/LQDGoqCvl0KsgbhjSt5STsGgoZe3ru/Yn0hNJP+AAkJ1rU9+NAzOCjEaNIv2KDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNSA3/+D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90D9C1F00A3D;
	Tue, 30 Jun 2026 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782818214;
	bh=dhzauwQZPbpylpGr4WGE9mMiIv1Y0Ir+oeoCGGiZuDg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=UNSA3/+D4r4cXAUAKPFvhYTv+69PZbKlTh/NF3TZEpJ79O3McYU/fwKvHa8S7Au8X
	 tX+y9qFmH6BPicNXjYYrlg/+j9DkBZTOmp5fDfF82aSx1rwaLaKKhHCs08Y9W1rNfi
	 5Ztpl705/j5PzUbR/AowX4vMebYvQ0Xr3oTbEGjJBru5MDRRY9r6W1fMoP5Vynuukf
	 rEq/9ouifH2RwckH0jfh6hQdqbxSSqLI992u/HezAKa/rBMHmvSyv+1x6CI8TRgk/E
	 1Glrnw2PT127SjjgnMl8/IQ4lmL66DAjjfg1DyFlGzz0gA6ifGxBa8bG9MbsCGMIN/
	 k9fB3VhenjZEw==
From: Mark Brown <broonie@kernel.org>
To: linux-mediatek@lists.infradead.org, 
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260615185810.11804-1-l.scorcia@gmail.com>
References: <20260615185810.11804-1-l.scorcia@gmail.com>
Subject: Re: [PATCH v4] ASoC: dt-bindings: mtk-btcvsd-snd: Convert to DT
 Schema
Message-Id: <178275431870.47562.12564836681670805353.b4-ty@b4>
Date: Mon, 29 Jun 2026 18:31:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1137; i=broonie@kernel.org;
 h=from:subject:message-id; bh=sWHuPdL4V7aEh8FugrGqBsjNaOpEn9LSPJKhiXzoATk=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqQ6WjLm2GfsXw6NKD5XVY0W5AtH6+Er1DxKMlP
 fHioa7fM6WJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCakOlowAKCRAk1otyXVSH
 0LmmB/9aq99s/+8+af6mipyDDgGfYxlP702UF2VGKCa6ALZ7GWzOw8XxmiNG9hYfUhlcXMHJ5tF
 GQlTZvXT6Sp7YyFnWHOqvKkoQafpEkiWL9d7+G1Tm73WSTgHmYFucxwOWf6KTTfdxy3ePy5q0yC
 kB3LfDbjrhgEaO3T4VE2dZd8oc3Qw9uf7kxrYzh5BByuYO0knHFu2PLZC5AYqe2hX7qZFN+gfCF
 IooPHITfNjS6eKssJdyR2qUzl6NGzvweMWn27In54iB5sbm/C8ZomO9s9TTti3ntJi5nMK1kVAT
 mYJLbo8Th01HOax++kLQSM9Kvy6GUiwBhvLAcAwNgFY3R/br
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-mediatek@lists.infradead.org,m:l.scorcia@gmail.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:lscorcia@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317684-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B7996E399B

On Mon, 15 Jun 2026 20:57:50 +0200, Luca Leonardo Scorcia wrote:
> ASoC: dt-bindings: mtk-btcvsd-snd: Convert to DT Schema

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.3

Thanks!

[1/1] ASoC: dt-bindings: mtk-btcvsd-snd: Convert to DT Schema
      https://git.kernel.org/broonie/sound/c/012dfa0c45ec

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


