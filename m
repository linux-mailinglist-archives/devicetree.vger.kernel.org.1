Return-Path: <devicetree+bounces-260180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EhWD358eWldxQEAu9opvQ
	(envelope-from <devicetree+bounces-260180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 04:03:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 908769C75D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 04:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69A76300CE77
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D523A2C0F78;
	Wed, 28 Jan 2026 03:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITr7fV16"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B038626F296;
	Wed, 28 Jan 2026 03:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769569344; cv=none; b=gNaChB6EWGCH2uzL9jQOkS4Z830m/OekBzSbskP0wk0Q0XaOK2kt9tIX3tA6c85vLqqTLdYvTFlziLxGvHngFt0/cXzLrNq4NTV675wmFW59saG9x65ysW8KMuyAEZRe4o6qnHX+4IdozBthMbpTbXhaX6f0f7B+lXAmZuPEezc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769569344; c=relaxed/simple;
	bh=vy/UE9A9BMbPd2nc8TS14tBcJbUev8wXdiGs01SglGA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dOC1bpwsLCrGASIC+xOTeZhKeQZmlzgv8Vd2V1asc64Ap11Cvwpki67ab4w7An9fbA0ot7xLIhlRDvWT9rduJvZ4zxhtFj54XhSloUOGFHAB0BsKnUeMpZVsu1nGBrLiFFG3RpYuy+7ZdVtm7guk1wgsm4eEZNqETc40yDuEFQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITr7fV16; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5376CC116D0;
	Wed, 28 Jan 2026 03:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769569344;
	bh=vy/UE9A9BMbPd2nc8TS14tBcJbUev8wXdiGs01SglGA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ITr7fV16/dcjWvaMnYJHFPWUa6ks7KJXURpOV+4G9nvrPCSamjRy0ts/tA4TKL/Bp
	 KtTlwni1Ksj9eIXqWl6NYgLyZQIJQEdB+Tq9ruLXFJ/efpQrttKRfl82dzQN3lHlyH
	 VVN4OfG5MUM5ODoaYxuSpWh315OmpVk/EnPaEcG/6sAQ2gV0eb19W4PeP0qv6oEOP7
	 CRTYhyHptiCbbTfk093j31WJkQRIPLkjcoT7K+lMMcUlW5iZEm82nrfCrr9SwE1lxG
	 qfh5XrJTlbkQhBkfVffJcJ+SGQbVMP1TNRLUscWR/e6dnYotxfKOiwe+O2lRuj6eCR
	 Gfi4U6SJABWVg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
In-Reply-To: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
Subject: Re: (subset) [PATCH v4 0/6] ASoC: sophgo: add CV1800 I2S
 controllers support
Message-Id: <176956934109.1515833.13689411651637089276.b4-ty@kernel.org>
Date: Wed, 28 Jan 2026 03:02:21 +0000
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260180-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 908769C75D
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 23:06:02 +0400, Anton D. Stavinskii wrote:
> This patch series adds basic audio support for Sophgo CV1800B,
> as used on boards such as the Milk-V Duo.
> The series introduces the I2S controller driver,
> the DAC and ADC codec drivers, corresponding DT bindings,
> and DTS updates to wire the components together.
> 
> The implementation is based on vendor documentation
> and testing on real hardware.  This series relies on
> recent fixes in the DesignWare AXI DMA support;
> in particular, correct operation depends on
> the DMA changes discussed at:
> https://lore.kernel.org/all/20251214224601.598358-1-inochiama@gmail.com/
> The current driver implementation supports a fixed audio configuration
> of 48 kHz sample rate and only I2S protocol which is used in codecs.
> The series has been tested on the Milk-V Duo 256M board using
> the Sophgo SG2002 SoC. The implementation is expected to also work on
> Milk-V Duo and Milk-V Module boards based on the SG2000 SoC,
> as the audio and DMA blocks are closely related.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/6] ASoC: dt-bindings: sophgo,cv1800b: add I2S/TDM controller
      commit: ad50e1f63873e5d1f2f421bbd11387a0a1d0ca54
[2/6] ASoC: sophgo: add CV1800B I2S/TDM controller driver
      commit: ea0fb91c02c14748ae525dd547ede7b4a6535d09
[3/6] ASoC: dt-bindings: sophgo,cv1800b: add ADC/DAC codec
      commit: c294aafe474bbbd7a7476773f56f6191742a39e1
[4/6] ASoC: sophgo: add CV1800B internal ADC codec driver
      commit: 4cf8752a03e67b2927d137a47c4eca4d516b4838
[5/6] ASoC: sophgo: add CV1800B internal DAC codec driver
      commit: b3eb755e2db07d85c30e8ff4043ffb9a14b4ece7

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


