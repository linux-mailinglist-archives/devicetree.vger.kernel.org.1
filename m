Return-Path: <devicetree+bounces-292812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDuBAyBD+Wmw7QIAu9opvQ
	(envelope-from <devicetree+bounces-292812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 03:08:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6334C5A3A
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 03:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C23A300E4AC
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 01:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EA934C121;
	Tue,  5 May 2026 01:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV3BWpoz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF654282F13;
	Tue,  5 May 2026 01:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777943306; cv=none; b=cMQLYkFbdw7ErJ4B4UY5snNIk++lSpYkdzdJAyD7SLISKWuK3zUB6OK5lyXR/hQ+lEwqQBxpIRIxXasSyE86HVLVBVnTNRqcVSEhy0cle5uD0Kfsf6dKAkNkxNZfAVd8XSfjqI2VhT84bcbEQuGIuOWz9P6Eg4RFNy41PRr3ObE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777943306; c=relaxed/simple;
	bh=34SnF4ox1aSe/aAWyBq10Zp2YK6OXLutbpM5B9Kz1Fk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=m1KsdghYd8/vJMXKsmvSmxr5In/jGNN/hHkcSJthzKMEeRiO86FQsWDp7txMZOzEsXWu2RmAW2qmHncYTdXeFQoa0CxG+rwnuCHAziNDZAHDeuEP7FqoAT396xbPiiD/aAzYxBZBVYOCLB5YZiP47Fr7aYgrXUBJhP21wKZeNP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV3BWpoz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CAA2C2BCB9;
	Tue,  5 May 2026 01:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777943306;
	bh=34SnF4ox1aSe/aAWyBq10Zp2YK6OXLutbpM5B9Kz1Fk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rV3BWpozZVowYvmIDCLnek7p89rPqljYoRXbuiae4MeCwlJsvlYqlbUE8OHJffqGa
	 CTST4ddMbz439MtHCkhiY07YWmjqGg3ukxT1AQApfZLGRZ05k7NhC7POzAZCmuZCHk
	 gJhOTRuyogbwuEG9vTEejcGrgmNu/SRADKIEWaDnG39THAuUYozVuWvE5wi57TgbrY
	 HpRE1yNf4G4MrQI51zYPd12qxwaM9rD9Vb62qk8KdGSmeX2o5hArwqCPVweupInAW7
	 Mr1upzLC/xLiatfNVT3rU/aO8+PqbEAVWWBRIxrdMl1MyYwKpOUACeRuYygfini6vz
	 GSvScwC+PIoyw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Alex Elder <elder@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Guodong Xu <guodong@riscstar.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Alex Elder <elder@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Yixun Lan <dlan@kernel.org>
In-Reply-To: <20260502-spi-spacemit-k1-v10-0-f412e1ae8a34@riscstar.com>
References: <20260502-spi-spacemit-k1-v10-0-f412e1ae8a34@riscstar.com>
Subject: Re: (subset) [PATCH v10 0/3] spi: support the SpacemiT K1 SPI
 controller
Message-Id: <177790086504.458539.6865488467267899231.b4-ty@b4>
Date: Mon, 04 May 2026 22:21:05 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1588; i=broonie@kernel.org;
 h=from:subject:message-id; bh=34SnF4ox1aSe/aAWyBq10Zp2YK6OXLutbpM5B9Kz1Fk=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBp+UMFLHaHKQ85u2MfDU74qEc2lkM81xXRg/6Fw
 /dRLkjDwxGJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaflDBQAKCRAk1otyXVSH
 0CDgB/sHRRmGxal7lOmgd5I2zdzP4apuqC1J/pECcJjR3SW2mmOYq60tzTbpLsrkKTbhoXm/CZW
 hRDRMlMYUSCHv0UokFuRAZ/I5ttyVXrObmeCBfm8kPb0/mogWU+j9JBHjpZneiFINAeaBrWQGm0
 Yn8eoJ4L04nG8+zsjZHXK5iU5g3ko97yEea3tPqr4WMR40igylxHYDuvJCg0rF5swTE6maHZMf7
 vXtvSjYwrEdlMedy6EWVR3Z44cYpLYUGmNvKYrolVDDwOqt0iXmopU/ubu8xbIhsgIhX8liEp4L
 J6fO6rniE2F09IPCG28tZ4ePCFtEPlXPgqGwlMYu2OwX0Z5m
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Queue-Id: 1A6334C5A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292812-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[]

On Sat, 02 May 2026 21:30:50 -0400, Guodong Xu wrote:
> spi: support the SpacemiT K1 SPI controller
> 
> This series adds support for the SPI controller found in the SpacemiT
> K1 SoC.  The driver currently supports only master mode.  The controller
> has two 32-entry FIFOs and supports PIO and DMA for transfers.
> 
> Starting with v8, I am taking over from Alex Elder to shepherd this
> series upstream.  Alex developed versions 1 through 7.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.2

Thanks!

[1/3] spi: dt-bindings: add SpacemiT K1 SPI support
      https://git.kernel.org/broonie/spi/c/b610d5333c4b
[2/3] spi: spacemit: introduce SpacemiT K1 SPI controller driver
      https://git.kernel.org/broonie/spi/c/efcd8b9d1111

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


