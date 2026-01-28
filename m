Return-Path: <devicetree+bounces-260179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCGUDjt8eWldxQEAu9opvQ
	(envelope-from <devicetree+bounces-260179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 04:02:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1E09C736
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 04:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17891300AB26
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8181B26F296;
	Wed, 28 Jan 2026 03:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEK4aTxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2DD78F2B;
	Wed, 28 Jan 2026 03:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769569336; cv=none; b=SIWIK+ZHttyQOvv6n/xHysXG9i3NbA8Dhi0lM04x0sPsoYn6LuXJ9ozsoWGL8XClIWyBH24eTf8hDNm+sFCcmD6VEXfHMNksuSdCIItjOqWHSPmXg8kdsBj9hF0RLvWasBUZ/1OVJAVsB0Ck6Rda0str2eqwJu316VxFJCHPVnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769569336; c=relaxed/simple;
	bh=i0/csCwZU0v5d+zAzQkM4cSs7zUQWkjnC/H7rL+YtSo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bOUCTS58DJqCIRhG/t5NW/TQMXRHfBVsRQRtM/G4rn8wqkg1Ham2Zrp2NJV7u1nI3T295Yg6I2MQthj4qGTItpSaTgfl/fgTXETEqHhDXtWWSuohG6ue8AiC2KPqxmRHC4TXzOOe1vL8nRk2DzEi+vaducRHGda+LIHfMGFVZLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEK4aTxJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9E8DC116C6;
	Wed, 28 Jan 2026 03:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769569336;
	bh=i0/csCwZU0v5d+zAzQkM4cSs7zUQWkjnC/H7rL+YtSo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=SEK4aTxJAdkH8SyjzWKmABDtsz0stSBCdthsCALme8UvCk/GoSLBvbL36/0OFY1dU
	 RF/5q8H70kJBqVapBYJ7W6K4kzPqh2c9TnMd3/EIChExsfU5V4bG5y4AxjrFAqv+W8
	 rIs+e8fVIThjD6m2A2PoTynujyeBIxbICAuzPb/RgME48DfnObUMUOw7woHea9N4++
	 1fc5IT1HkRh9jZom0LP3uUDWp5DzepIX0FhMFZSwT2qvVmsKrLlP6i9A5Rxkv/ae5F
	 0iDTGj7ISTgeaCuguRFJgz/WLZNNYImV/p9Pl2C+WX8z7lOhCn8B2M2PFJTaXXiEFy
	 qjBMQbcj835nw==
From: Mark Brown <broonie@kernel.org>
To: shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com, 
 nicoleotsuka@gmail.com, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, 
 linux-sound@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, kernel@pengutronix.de, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, Shengjiu Wang <shengjiu.wang@nxp.com>
In-Reply-To: <20260123082501.4050296-1-shengjiu.wang@nxp.com>
References: <20260123082501.4050296-1-shengjiu.wang@nxp.com>
Subject: Re: [PATCH v3 0/4] ASoC: fsl_audmix: Support the i.MX952 platform
Message-Id: <176956933264.1515833.4946244987105746224.b4-ty@kernel.org>
Date: Wed, 28 Jan 2026 03:02:12 +0000
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
	TAGGED_FROM(0.00)[bounces-260179-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,kernel.org,pengutronix.de,lists.linux.dev,lists.infradead.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7E1E09C736
X-Rspamd-Action: no action

On Fri, 23 Jan 2026 16:24:57 +0800, Shengjiu Wang wrote:
> Enable AUDMIX on i.MX952 platform, update dt binding document and
> driver.
> 
> SAI is connected to AUDMIX, and the AUDMIX can be bypassed, so
> add 'fsl,sai-amix-mode' property in SAI binding document for this
> case.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: dt-bindings: fsl,audmix: Add support for i.MX952 platform
      commit: 7550d6263b9b2015a806f66bf7ad356b6f25d050
[2/4] ASoC: dt-bindings: fsl,sai: Add AUDMIX mode support on i.MX952
      commit: 4d3b56b8a3504dab98d5f9a91ed9091431749863
[3/4] ASoC: fsl_audmix: Add support for i.MX952 platform
      commit: 291f2f908823832e932582500816ad614631d568
[4/4] ASoC: fsl_sai: Add AUDMIX mode support on i.MX952
      commit: 19b08fd23b20593ebe43708308dbddb02507877d

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


