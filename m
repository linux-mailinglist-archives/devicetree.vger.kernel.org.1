Return-Path: <devicetree+bounces-308827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ytCCO6fTJ2r+2wIAu9opvQ
	(envelope-from <devicetree+bounces-308827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:49:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 814CC65DF5F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:49:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Fe8MB+2/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308827-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87EF2304B27D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAB73939AE;
	Tue,  9 Jun 2026 08:41:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3623F1643;
	Tue,  9 Jun 2026 08:41:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780994485; cv=none; b=aS4C4M7iKpiBzz0dwFS9NsxPN5OyMS6b17X/L2+4pSE2jeKitptSWdT671GL0XdqttuANeZfMlqiMr9YnyZZG7Q6Hzn8wIAAdLRZi8j9XcGHVwrfYtGPb+HkOYjk6fZBRodwDpkYdDxET0HVdqHHyODICGBRb+6f1c0b2CNLzac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780994485; c=relaxed/simple;
	bh=LMU2WKBRsY9qnKg0AFjIH68qrwlYZLrtmayrpsY+iT4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=vGwCnWct924Oth20fmJyhTBGUCUmuHsH4RaOixyZKQutc9i7FJSE/o7M2e/HslkfUXFuOKV6df8QxnB2o1mU1TZPIpsJWtZoR0Ok4S9/lRjsg9M2hYwstAojQc6naW8FB4D8s3tS1Ii1BIj9kY7Y4g5D2LB2SAdYWWCz6p0e0eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fe8MB+2/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2DEF1F00893;
	Tue,  9 Jun 2026 08:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780994481;
	bh=uJTUmbk8J8QkjyaTbAHKRJ7XTqDvz+ngwJDthoeODuw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Fe8MB+2/RsDHwPkgyBSTLH2hrffmGOPYlRuuxqtqh0H4+SobUdqwH+j15mYytRbxX
	 bJ81CDa23VCgfjHQSOZbdwvPDGptAmfX9zTlcYfycEtUcbpk8AcyGu52eTeZ6p/gG6
	 wiHp3dCSPL65rpW7/MF8o04ptkU80Aw3wIvqW7rfYmo46NfJgzdPlYak3lCuXO4Bc2
	 xlbUoyMNwkI4NdFNd39jHvoLxl6y1bKS4S1Z11Qefy2Y6vJfLXhZTMUR54CPCV/RN4
	 bP0Kba9LwJ1R/ZR+Er4V+XLCbqNFtZvKVGnQ/RXqYUiYVykiOpwYfWCyjz+X960hwH
	 ZtVIzXBHgix3w==
From: Mark Brown <broonie@kernel.org>
To: tiwai@suse.de, Baojun Xu <baojun.xu@ti.com>
Cc: andriy.shevchenko@linux.intel.com, 13916275206@139.com, 
 shenghao-ding@ti.com, linux-sound@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 k-yi@ti.com, henry.lo@ti.com, robinchen@ti.com, will-wang@ti.com, 
 jim.shil@goertek.com, toastcheng@google.com, chinkaiting@google.com, 
 riyo@ti.com, a0393308@india.ti.com
In-Reply-To: <20260602100532.6463-1-baojun.xu@ti.com>
References: <20260602100532.6463-1-baojun.xu@ti.com>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: ti,tas2781: Add TAS2573
 support
Message-Id: <178094167780.20828.2747027030132997875.b4-ty@b4>
Date: Mon, 08 Jun 2026 19:01:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1216; i=broonie@kernel.org;
 h=from:subject:message-id; bh=LMU2WKBRsY9qnKg0AFjIH68qrwlYZLrtmayrpsY+iT4=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqJ9Gr/GXIG3DoSxiQQFN85fGaKwad+XHuaynQ7
 iPqjnEFYZGJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaifRqwAKCRAk1otyXVSH
 0Fo6B/9+s/FoIIdgyDgYwnjdzjEnJfTpONGXdaBkblnHrkR2frk8sHEitTf+0JNPuS/1edqpRGT
 K7VQFZjE8ti045ee4yP3fJ275SwjX+xSamhSO7UAABrxorbazGBxSqIVxwu9JKu6TuLjmcf1+i5
 AnL14Oz6AA+vZuWPhKLna17lnNRqp+Fi1+rbbg2HWvVJOSl8GpMV/iuFtND923muOWm03wVIQvF
 AStUZbVznzegg0Da4jZKKc4N7BmYMKM9tZ+/PPcQsBNDSt9KZ8ORbhl20zyfPV9bDFwyHTqvvvm
 z9Otw8dYk5wupu1L85r+sMspRtGXumNcV8mqTocLWYWgTi3K
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308827-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tiwai@suse.de,m:baojun.xu@ti.com,m:andriy.shevchenko@linux.intel.com,m:13916275206@139.com,m:shenghao-ding@ti.com,m:linux-sound@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:k-yi@ti.com,m:henry.lo@ti.com,m:robinchen@ti.com,m:will-wang@ti.com,m:jim.shil@goertek.com,m:toastcheng@google.com,m:chinkaiting@google.com,m:riyo@ti.com,m:a0393308@india.ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.intel.com,139.com,ti.com,vger.kernel.org,gmail.com,kernel.org,goertek.com,google.com,india.ti.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 814CC65DF5F

On Tue, 02 Jun 2026 18:05:31 +0800, Baojun Xu wrote:
> ASoC: dt-bindings: ti,tas2781: Add TAS2573 support

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/2] ASoC: dt-bindings: ti,tas2781: Add TAS2573 support
      https://git.kernel.org/broonie/sound/c/a0cecbfc1545
[2/2] ASoC: tas2781: Add TAS2573 support
      https://git.kernel.org/broonie/sound/c/06ff6ffec2f7

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


