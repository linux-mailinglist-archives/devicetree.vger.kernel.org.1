Return-Path: <devicetree+bounces-287378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMafCdVs3mncEAAAu9opvQ
	(envelope-from <devicetree+bounces-287378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:35:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC3A3FCA2C
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04EE430D63BE
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 16:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5E93EE1C7;
	Tue, 14 Apr 2026 16:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LziYeHPl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A50673EDAAF;
	Tue, 14 Apr 2026 16:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776184125; cv=none; b=BHDz6eGpuFwJlBysZdQMAlptdOzVgCSViiRvsgXATYcwGRGaxk4/ZUPjQMw4nM6CCzh6HS+kfNFXRDYvhu1QJgG9PcixPNdAGHRJCXVHIvVMBjJ9btjxu1LfT7AY6pL+zIlzTVH6RPrBPa2IjRQD9piK0km235Tnm6b27S1oB4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776184125; c=relaxed/simple;
	bh=Mggsd45BOuF7z5Qpnp0qPeoHMC8tgvTDOCmBzGY1Lq4=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gzrtRshaJ5/6dP7VWKBy0TNuoLsIkUldU13edfpEkxt1Sf7PvvSaoMixKwF4vB7ps2Z6DablrjC6yyRAWiZ9OPE9FWfNL80RHavfPTCS7rNvR8Sg9M+y7DEiRfSPa/B/gM20LKTJIH121+KxbpUrUstXMeBsTyI+uhJGwjBUdfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LziYeHPl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E19C19425;
	Tue, 14 Apr 2026 16:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776184125;
	bh=Mggsd45BOuF7z5Qpnp0qPeoHMC8tgvTDOCmBzGY1Lq4=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=LziYeHPl3pHv+jtr48/imD5K/3banYxg6o+qnu5MPCWuUUqJC/bVpVv9yB3ElNRs5
	 SqYen9Es9neATM/ueirlmQAcudLbzdNUYSm8muMyLRJfGC/Jca+paZDH/3BxRn0WB5
	 8YW6bboNECnP6M8ihmOpwN7Jlrqws3ggKNHOJFhcPm40qth+mo0+0bux5UwRWGib/W
	 HltzkYchxn8YylDBti418EzQoKreRgG2GRusO++FPHmoLg3hFSMzcnfWGzEFX2032T
	 sFa3AozHIDg7ax++NdKU0nKTSv/K58pj5KVIjtzz44hu1iMysMvtums36wpQgz8l47
	 EqQLSoANjGdkw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>, 
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260413085947.51047-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260413085947.51047-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] spi: dt-bindings: fsl: Correct GPIO flags in the
 example
Message-Id: <177616776505.46569.15306620039784890400.b4-ty@b4>
Date: Tue, 14 Apr 2026 12:56:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1133; i=broonie@kernel.org;
 h=from:subject:message-id; bh=Mggsd45BOuF7z5Qpnp0qPeoHMC8tgvTDOCmBzGY1Lq4=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBp3ms6PKLjG4tiCTm5dYe1BmApEp/loysYEdz1o
 +QCp9FRa8uJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCad5rOgAKCRAk1otyXVSH
 0PZpB/0Z6das+jWUG2R7XRM8y4d5DZPOqI7x7czgqE6LPDthWkFWRvdIbx3Kv5i65Fq4BX8b2xQ
 XehxLzNcf+i6F2UJI/810WU2CLmFDvx9a3oOUKsy/M3Z7n031Mzg42TZ4DmvJZwI6j2uporsD0x
 S+X1WuXp9CPMqMpeTtNZSE6zZbw5byM1SWCrLYQTmjW1MTjJeZCZWlVzY1Q0CcIl97q6RfyNtaL
 aWrImRpq5ebvjnrMJ4L5ELfWyHwEu7vFTLh7cWIcddn7yvDOX2LUXL8ZvW/QczUQIhBPRzxlns2
 nf/oXqbNvr/Xw9wXXi6kLHKAHcc0jHlgNvuWkiY8TlMfOVlA
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287378-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8DC3A3FCA2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026 10:59:48 +0200, Krzysztof Kozlowski wrote:
> spi: dt-bindings: fsl: Correct GPIO flags in the example

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.1

Thanks!

[1/1] spi: dt-bindings: fsl: Correct GPIO flags in the example
      https://git.kernel.org/broonie/spi/c/ebeef57b7ba9

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


