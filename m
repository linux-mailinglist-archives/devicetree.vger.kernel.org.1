Return-Path: <devicetree+bounces-291293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cF+3HoCH8WmchgEAu9opvQ
	(envelope-from <devicetree+bounces-291293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 06:22:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D197748F1CE
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 06:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B2093040211
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29DC3890F6;
	Wed, 29 Apr 2026 04:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtLnoFDX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6CD3859E2;
	Wed, 29 Apr 2026 04:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777436408; cv=none; b=Huq181k3v0mcczvgQweB4bsHwvCVkTXs/qs+2k8to+wpUyt7KsXuZfWbBHXzKn9DLDzAqwRWY3H+sDDDpdu1AO0WMkQgjxPnN1KG92PWw8a71JqD+pHF7tc0g7TRUdcql186tOr5uAVB7RmFRWdMTAuq5I9tRFnMEvAFIt6mXsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777436408; c=relaxed/simple;
	bh=Y3TadPI+Uk+0lcra2ukxy7a1jSLDUZdGEsO0a8IaOuM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=e7znOLc5Q2QguHmAKUWmt0Z0nZTFZQ2e5kPfxHI2qDXe3pz4D/WzC/WO2Z/8Xj7cUpWzXA6OjPLSHvXzx92bCJP9kEHOjMNYvRJUjX/hrUfvA9GisMisJmPmh6uP3Lpu8ZpVaVGQgvXZSHE70PMGK2GFmiLBD7yOl7zF2SfFsxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtLnoFDX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10462C2BCB4;
	Wed, 29 Apr 2026 04:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777436408;
	bh=Y3TadPI+Uk+0lcra2ukxy7a1jSLDUZdGEsO0a8IaOuM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KtLnoFDX/LmckW/QlstZ6bfDZxf1oto3yy2sVCHBbWDmtY9LuVjn+O7QtJcerlfZP
	 aVBxPB4fOZ/WzwQmcvhAkJjZgxhEC5cO3uDlLnvzCRIwcMAva7msvwDS6MflfjJ0FR
	 4AgqhJxlJ8qKZeHTxRH9k09GbMeDhqsh9OKxkbBHPUc+MQuhTYsLU/+NcUdnrngBK5
	 N5/qM9+E5Z0Z3wK0z6igY9Q9S/D1LqsKaw5+iE0dPovpGe48vtHhyt9Ko0nfyYSHPO
	 8MQl9RAUiBhHQEBaNOEMOcEQD4HJsSb3hZ8KwSq3SSUKUs1S+ZOLtL1z+mY4MxgqzG
	 r3k++/wyxliCw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Yixun Lan <dlan@kernel.org>, 
 Jinmei Wei <weijinmei@linux.spacemit.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: linux-sound@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20260429-k3-i2s-v1-0-2fe99db11ecb@linux.spacemit.com>
References: <20260429-k3-i2s-v1-0-2fe99db11ecb@linux.spacemit.com>
Subject: Re: (subset) [PATCH 0/7] ASoC: spacemit: bug fixes, refactoring,
 and K3 SoC support
Message-Id: <177743049537.363516.3431185859758571339.b4-ty@b4>
Date: Wed, 29 Apr 2026 11:41:35 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1706; i=broonie@kernel.org;
 h=from:subject:message-id; bh=Y3TadPI+Uk+0lcra2ukxy7a1jSLDUZdGEsO0a8IaOuM=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBp8Yb0K+ucIi3HDtgy/2P9jyTHgZHvTNgpG3lfC
 rcwtX3nqkeJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCafGG9AAKCRAk1otyXVSH
 0HsGB/0SR87C+jiNlh2idBxBsVbfTMnM51S9G6GDqaJKpv/Q0igZROaqjIOgR+7rgwkxtu/APtK
 roW2rPY+7xkz8uYz9wQb+Y28UuChQFbDcPEcrgIzT6Y7uSxzg9kU0Z2N4MGmf5/uaHAPw81iyy/
 bYcX2K0Q6OTTGHeR+9xT3hqSupM8HaGMX0ZCHGi+D5h4dPoMWcRaiQ7297iT4x64WngNvviymse
 yi0pcZRFCp8/QCQ3ll3FugTOHRVdsLE83t0trkfDzgO2uidRU/D6qtbE5xawG8lmzZxbFB3MDoV
 fECtrWN6f3zAS/C+LisSWJobTUle1BCnFLz6FfkJY7GK8uWR
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Queue-Id: D197748F1CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,kernel.org,linux.spacemit.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291293-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Wed, 29 Apr 2026 09:38:45 +0800, Troy Mitchell wrote:
> ASoC: spacemit: bug fixes, refactoring, and K3 SoC support
> 
> This series fixes bugs and adds K3 SoC support for the SpacemiT I2S
> controller driver (sound/soc/spacemit/).
> 
> Patches 1-3 are bug fixes and refactoring for the existing K1 I2S driver:
>   - Fix RX DMA params not being set when TX is already running
>   - Move hw constraints from hw_params to startup where they belong
>   - Adjust FIFO trigger threshold to half FIFO size for better DMA
>     efficiency
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.1

Thanks!

[2/7] ASoC: spacemit: move hw constraints from hw_params to startup
      https://git.kernel.org/broonie/sound/c/6b4afbaaa342
[3/7] ASoC: spacemit: adjust FIFO trigger threshold to half FIFO size
      https://git.kernel.org/broonie/sound/c/03dcb5b68a96

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


