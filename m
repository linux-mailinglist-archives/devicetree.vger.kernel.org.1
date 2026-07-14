Return-Path: <devicetree+bounces-326544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tBfUJvOoVmph/wAAu9opvQ
	(envelope-from <devicetree+bounces-326544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 23:24:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D222758F5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 23:24:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aHUcFRUx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326544-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326544-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9DC32300230E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A83BB426EA8;
	Tue, 14 Jul 2026 21:23:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AE940D590;
	Tue, 14 Jul 2026 21:23:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784064239; cv=none; b=sNm6gbXu704+RnLLedHRQXP65zl8n5q6uvC1kKKvmyORZC6z+bIpuE1KFRUd4p14FwnjuzOWELtZObpDa42yJYv5zECRePFsdZLnSx3MoAO7G6oTw9YMOMgarXrdMlWm0o0obyZzONVuFln+mRlnlo5CG8pccx0bgKuCub846C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784064239; c=relaxed/simple;
	bh=yYxJXTxhaaQyRSn8NksEr8C19bj4QNr6+gLFsSI9u3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=plto0N54X962pIp35qXI9VdZuqUXXx+E1z4bP6ou5brTZNHBozXGiiBSHlMARmN4n6JQcYKFhE4pzLJQd3sAAeXsozi1kJqDePUJ8uf3KOa/si1BeTpB6hf2ThRpFT/5Ew5etC7Ldh9AbRK2hKNtNGYCViZzrE2yr6kA/ruMpcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHUcFRUx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA521F000E9;
	Tue, 14 Jul 2026 21:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784064238;
	bh=jHird4lTGKKujgL5cT6Qpafb/+B6Eck4ummSsIgsDwM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=aHUcFRUxeDZAawLZGPJexmH6w7sd7RuSnzHwwRhBC+4YQsjsaGwe/rUlgQzHnqVMA
	 uzb8NrFU8y3LFZQYhRAoZupivh53DaPs1Q18cPmwSMEXI1tvTmraxduJAAEq0AXlQ0
	 aFU8vAFMHkgsLYQDy4iCNOHYszhQHfPJAD0dLbWaQ+YefYAZ82TehrIJ741FUoj7Q/
	 BneVHnaFupGJGnCkxPs84d+ZRJX03riSpUGSBVFworYVtQmS4MGfzNovwRaJ7T0C9E
	 ixrXj2IuxrATyrBCAYI+OMXyNgT8ju+y96rTKD1pvRq5YQ9ahaAHOWQSNyMifa6YwU
	 5ISJyl+7W18qw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
In-Reply-To: <20260512224544.1223283-1-Frank.Li@nxp.com>
References: <20260512224544.1223283-1-Frank.Li@nxp.com>
Subject: Re: [PATCH 1/1] dt-bindings: regulator: convert ltc3589 to yaml
 format
Message-Id: <178402792058.7661.255387093870553422.b4-ty@b4>
Date: Tue, 14 Jul 2026 12:18:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1130; i=broonie@kernel.org;
 h=from:subject:message-id; bh=yYxJXTxhaaQyRSn8NksEr8C19bj4QNr6+gLFsSI9u3Y=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqVqjre36tpOXUHUcoJmenjFTDn8F0L1Mm4PQ2X
 apTWOrGmOeJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCalao6wAKCRAk1otyXVSH
 0LvmB/9E7wHiah4E0N/B3Mg6ZyV1c1O6bnWXUT1L7k6tZ9bDDZ0ENEvaDSil8ZhXwYBpkQLmYoK
 p5WiuvL7MCRwQ4JTAVU4zeW9E2WT4Xx4+Db4FHODzBG4hUa3E0fvymYnjfIZT0DX4mWr5ddmT85
 os/desmkfuNFSWu0lw8N/nfuJl8/lCfXTDbgx8+mNnWB/wACmHA5Dui5f9K+8gS43Qlg5QBFHKQ
 dKad9m17Q8UhcyHIWOw8XLTCmVdQeVlbhSTt+IFHAbhk+iYbHfCFKiNn63Uol9+689ld9F4NRRO
 MlVLSbN5zSDHiocKPKXUcG8uzrHMR2zi04R1+0NPXswLN3cd
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@nxp.com,m:imx@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org,nxp.com];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326544-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D222758F5D

On Tue, 12 May 2026 18:45:42 -0400, Frank Li wrote:
> dt-bindings: regulator: convert ltc3589 to yaml format

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.3

Thanks!

[1/1] dt-bindings: regulator: convert ltc3589 to yaml format
      https://git.kernel.org/broonie/regulator/c/c9b256e7900f

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


